/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptPCH.h"
#include "Vehicle.h"
#include "ScriptedEscortAI.h"

using namespace std;

/*######
##Quest 5441: Lazy Peons
##npc_lazy_peon
######*/

enum LazyPeonYells
{
    SAY_SPELL_HIT                                 = -1001900    //Ow! OK, I''ll get back to work, $N!'
};

enum LazyPeon
{
    QUEST_LAZY_PEONS                              = 5441,
    GO_LUMBERPILE                                 = 175784,
    SPELL_BUFF_SLEEP                              = 17743,
    SPELL_AWAKEN_PEON                             = 19938
};

class npc_lazy_peon : public CreatureScript
{
public:
    npc_lazy_peon() : CreatureScript("npc_lazy_peon") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lazy_peonAI(creature);
    }

    struct npc_lazy_peonAI : public ScriptedAI
    {
        npc_lazy_peonAI(Creature* c) : ScriptedAI(c) {}

        uint64 uiPlayerGUID;

        uint32 m_uiRebuffTimer;
        bool work;

        void Reset ()
        {
            uiPlayerGUID = 0;
            m_uiRebuffTimer = 0;
            work = false;
        }

        void MovementInform(uint32 /*type*/, uint32 id)
        {
            if (id == 1)
                work = true;
        }

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (spell->Id == SPELL_AWAKEN_PEON && caster->GetTypeId() == TYPEID_PLAYER
                && CAST_PLR(caster)->GetQuestStatus(QUEST_LAZY_PEONS) == QUEST_STATUS_INCOMPLETE)
            {
                caster->ToPlayer()->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
                DoScriptText(SAY_SPELL_HIT, me, caster);
                me->RemoveAllAuras();
                if (GameObject* Lumberpile = me->FindNearestGameObject(GO_LUMBERPILE, 20))
                    me->GetMotionMaster()->MovePoint(1, Lumberpile->GetPositionX()-1, Lumberpile->GetPositionY(), Lumberpile->GetPositionZ());
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (work == true)
                me->HandleEmoteCommand(466);
            if (m_uiRebuffTimer <= uiDiff)
            {
                DoCast(me, SPELL_BUFF_SLEEP);
                m_uiRebuffTimer = 300000;                 //Rebuff agian in 5 minutes
            }
            else
                m_uiRebuffTimer -= uiDiff;
            if (!UpdateVictim())
                return;
            DoMeleeAttackIfReady();
        }
    };
};

enum Texts
{
    // Tiger Matriarch Credit
    SAY_MATRIARCH_AGGRO     = 0,

    // Troll Volunteer
    SAY_VOLUNTEER_START     = 0,
    SAY_VOLUNTEER_END       = 1,
};

enum Spells
{
    // Tiger Matriarch Credit
    SPELL_SUMMON_MATRIARCH              = 75187,
    SPELL_NO_SUMMON_AURA                = 75213,
    SPELL_DETECT_INVIS                  = 75180,
    SPELL_SUMMON_ZENTABRA_TRIGGER       = 75212,

    // Tiger Matriarch
    SPELL_POUNCE                        = 61184,
    SPELL_FURIOUS_BITE                  = 75164,
    SPELL_SUMMON_ZENTABRA               = 75181,
    SPELL_SPIRIT_OF_THE_TIGER_RIDER     = 75166,
    SPELL_EJECT_PASSENGERS              = 50630,

    // Troll Volunteer
    SPELL_VOLUNTEER_AURA                = 75076,
    SPELL_PETACT_AURA                   = 74071,
    SPELL_QUEST_CREDIT                  = 75106,
    SPELL_MOUNTING_CHECK                = 75420,
    SPELL_TURNIN                        = 73953,
    SPELL_AOE_TURNIN                    = 75107,

    // Vol'jin War Drums
    SPELL_MOTIVATE_1                    = 75088,
    SPELL_MOTIVATE_2                    = 75086,
};

enum Creatures
{
    // Tiger Matriarch Credit
    NPC_TIGER_VEHICLE                   = 40305,

    // Troll Volunteer
    NPC_URUZIN                          = 40253,
    NPC_VOLUNTEER_1                     = 40264,
    NPC_VOLUNTEER_2                     = 40260,

    // Vol'jin War Drums
    NPC_CITIZEN_1                       = 40256,
    NPC_CITIZEN_2                       = 40257,
};

enum Events
{
    // Tiger Matriarch Credit
    EVENT_CHECK_SUMMON_AURA             = 1,

    // Tiger Matriarch
    EVENT_POUNCE                        = 2,
    EVENT_NOSUMMON                      = 3,
};

enum Points
{
    POINT_URUZIN                        = 4026400,
};

class npc_tiger_matriarch_credit : public CreatureScript
{
    public:
        npc_tiger_matriarch_credit() : CreatureScript("npc_tiger_matriarch_credit") {}

        struct npc_tiger_matriarch_creditAI : public Scripted_NoMovementAI
        {
           npc_tiger_matriarch_creditAI(Creature* creature) : Scripted_NoMovementAI(creature)
           {
               events.ScheduleEvent(EVENT_CHECK_SUMMON_AURA, 2000);
           }

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                if (events.ExecuteEvent() == EVENT_CHECK_SUMMON_AURA)
                {
                    std::list<Creature*> tigers;
                    GetCreatureListWithEntryInGrid(tigers, me, NPC_TIGER_VEHICLE, 15.0f);
                    if (!tigers.empty())
                    {
                        for (std::list<Creature*>::iterator itr = tigers.begin(); itr != tigers.end(); ++itr)
                        {
                            if (!(*itr)->isSummon())
                                continue;

                            if (Unit* summoner = (*itr)->ToTempSummon()->GetSummoner())
                                if (!summoner->HasAura(SPELL_NO_SUMMON_AURA) && !summoner->HasAura(SPELL_SUMMON_ZENTABRA_TRIGGER)
                                    && !summoner->isInCombat())
                                {
                                    me->AddAura(SPELL_NO_SUMMON_AURA, summoner);
                                    me->AddAura(SPELL_DETECT_INVIS, summoner);
                                    summoner->CastSpell(summoner, SPELL_SUMMON_MATRIARCH, true);
                                    Talk(SAY_MATRIARCH_AGGRO, summoner->GetGUID());
                                }
                        }
                    }

                    events.ScheduleEvent(EVENT_CHECK_SUMMON_AURA, 5000);
                }
            }

        private:
            EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_tiger_matriarch_creditAI(creature);
        }
};

class npc_tiger_matriarch : public CreatureScript
{
    public:
        npc_tiger_matriarch() : CreatureScript("npc_tiger_matriarch") {}

        struct npc_tiger_matriarchAI : public ScriptedAI
        {
            npc_tiger_matriarchAI(Creature* creature) : ScriptedAI(creature),
                _tiger(NULL)
            {
            }

            void IsSummonedBy(Unit* summoner)
            {
                if (summoner->GetTypeId() != TYPEID_PLAYER)
                    return;

                _tiger = summoner->GetVehicle()->GetBase();
                if (_tiger)
                {
                    me->AddThreat(_tiger, 500000.0f);
                    DoCast(me, SPELL_FURIOUS_BITE);
                    events.ScheduleEvent(EVENT_POUNCE, 100);
                    events.ScheduleEvent(EVENT_NOSUMMON, 50000);
                }
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() != TYPEID_UNIT || !victim->isSummon())
                    return;

                if (Unit* vehSummoner = victim->ToTempSummon()->GetSummoner())
                {
                    vehSummoner->RemoveAurasDueToSpell(SPELL_NO_SUMMON_AURA);
                    vehSummoner->RemoveAurasDueToSpell(SPELL_DETECT_INVIS);
                    vehSummoner->RemoveAurasDueToSpell(SPELL_SPIRIT_OF_THE_TIGER_RIDER);
                    vehSummoner->RemoveAurasDueToSpell(SPELL_SUMMON_ZENTABRA_TRIGGER);
                }
                me->ForcedDespawn();
            }

            void DamageTaken(Unit* attacker, uint32& damage)
            {
                if (!attacker->isSummon())
                    return;

                if (HealthBelowPct(20))
                {
                    damage = 0;
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    if (Unit* vehSummoner = attacker->ToTempSummon()->GetSummoner())
                    {
                        vehSummoner->AddAura(SPELL_SUMMON_ZENTABRA_TRIGGER, vehSummoner);
                        vehSummoner->CastSpell(vehSummoner, SPELL_SUMMON_ZENTABRA, true);
                        attacker->CastSpell(attacker, SPELL_EJECT_PASSENGERS, true);
                        vehSummoner->RemoveAurasDueToSpell(SPELL_NO_SUMMON_AURA);
                        vehSummoner->RemoveAurasDueToSpell(SPELL_DETECT_INVIS);
                        vehSummoner->RemoveAurasDueToSpell(SPELL_SPIRIT_OF_THE_TIGER_RIDER);
                        vehSummoner->RemoveAurasDueToSpell(SPELL_SUMMON_ZENTABRA_TRIGGER);
                    }

                    me->ForcedDespawn();
                }
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if (!_tiger)
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_POUNCE:
                            DoCastVictim(SPELL_POUNCE);
                            events.ScheduleEvent(EVENT_POUNCE, 30000);
                            break;
                        case EVENT_NOSUMMON: // Reapply SPELL_NO_SUMMON_AURA
                            if (_tiger && _tiger->isSummon())
                                if (Unit* vehSummoner = _tiger->ToTempSummon()->GetSummoner())
                                    me->AddAura(SPELL_NO_SUMMON_AURA, vehSummoner);
                            events.ScheduleEvent(EVENT_NOSUMMON, 50000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

        private:
            EventMap events;
            Unit* _tiger;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_tiger_matriarchAI(creature);
        }
};

// These models was found in sniff.
// TODO: generalize these models with race from dbc
uint32 const trollmodel[] =
{11665, 11734, 11750, 12037, 12038, 12042, 12049, 12849, 13529, 14759, 15570, 15701,
15702, 1882, 1897, 1976, 2025, 27286, 2734, 2735, 4084, 4085, 4087, 4089, 4231, 4357,
4358, 4360, 4361, 4362, 4363, 4370, 4532, 4537, 4540, 4610, 6839, 7037, 9767, 9768};

class npc_troll_volunteer : public CreatureScript
{
    public:
        npc_troll_volunteer() : CreatureScript("npc_troll_volunteer") { }

        struct npc_troll_volunteerAI : public ScriptedAI
        {
            npc_troll_volunteerAI(Creature* creature) : ScriptedAI(creature)
            {
                Reset();
                Player* player = me->GetOwner()->ToPlayer();

                switch (urand(1, 4))
                {
                    case 1:
                        _mountModel = 6471;
                        break;
                    case 2:
                        _mountModel = 6473;
                        break;
                    case 3:
                        _mountModel = 6469;
                        break;
                    case 4:
                        _mountModel = 6472;
                        break;
                }
                me->SetDisplayId(trollmodel[urand(0, 39)]);
                if (player)
                    me->GetMotionMaster()->MoveFollow(player, 5.0f, float(rand_norm() + 1.0f) * M_PI / 3.0f * 4.0f);
            }

            void Reset()
            {
                _complete = false;
                me->AddAura(SPELL_VOLUNTEER_AURA, me);
                me->AddAura(SPELL_MOUNTING_CHECK, me);
                DoCast(me, SPELL_PETACT_AURA);
                me->SetReactState(REACT_PASSIVE);
                Talk(SAY_VOLUNTEER_START);
            }

            // This is needed for mount check aura to know what mountmodel the npc got stored
            uint32 GetMountId()
            {
                return _mountModel;
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (type != POINT_MOTION_TYPE)
                    return;
                if (id == POINT_URUZIN)
                    me->DespawnOrUnsummon();
            }

            void SpellHit(Unit* caster, SpellInfo const* spell)
            {
                if (spell->Id == SPELL_AOE_TURNIN && caster->GetEntry() == NPC_URUZIN && !_complete)
                {
                    _complete = true;    // Preventing from giving credit twice
                    DoCast(me, SPELL_TURNIN);
                    DoCast(me, SPELL_QUEST_CREDIT);
                    me->RemoveAurasDueToSpell(SPELL_MOUNTING_CHECK);
                    me->Unmount();
                    Talk(SAY_VOLUNTEER_END);
                    me->GetMotionMaster()->MovePoint(POINT_URUZIN, caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ());
                }
            }

        private:
            uint32 _mountModel;
            bool _complete;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_troll_volunteerAI(creature);
        }
};

class spell_mount_check : public SpellScriptLoader
{
    public:
        spell_mount_check() : SpellScriptLoader("spell_mount_check") {}

        class spell_mount_check_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_mount_check_AuraScript)
            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_MOUNTING_CHECK))
                    return false;
                return true;
            }

            void HandleEffectPeriodic(AuraEffect const* /*aurEff*/)
            {
                Unit* target = GetTarget();
                Unit* owner = target->GetOwner();

                if (!owner)
                    return;

                if (owner->IsMounted() && !target->IsMounted())
                {
                    if (Creature* volunteer = target->ToCreature())
                        if (uint32 mountid = CAST_AI(npc_troll_volunteer::npc_troll_volunteerAI, volunteer->AI())->GetMountId())
                            target->Mount(mountid);
                }
                else if (!owner->IsMounted() && target->IsMounted())
                    target->Unmount();

                target->SetSpeed(MOVE_RUN, owner->GetSpeedRate(MOVE_RUN));
                target->SetSpeed(MOVE_WALK, owner->GetSpeedRate(MOVE_WALK));
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_mount_check_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_mount_check_AuraScript();
        }
};

class spell_voljin_war_drums : public SpellScriptLoader
{
    public:
        spell_voljin_war_drums() : SpellScriptLoader("spell_voljin_war_drums") {}

        class spell_voljin_war_drums_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_voljin_war_drums_SpellScript)
            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_MOTIVATE_1))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_MOTIVATE_2))
                    return false;
               return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetHitUnit())
                {
                    uint32 motivate = 0;
                    if (target->GetEntry() == NPC_CITIZEN_1)
                        motivate = SPELL_MOTIVATE_1;
                    else if (target->GetEntry() == NPC_CITIZEN_2)
                        motivate = SPELL_MOTIVATE_2;
                    if (motivate)
                        caster->CastSpell(target, motivate, true, NULL, NULL, caster->GetGUID());
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_voljin_war_drums_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_voljin_war_drums_SpellScript();
        }
};

enum VoodooSpells
{
    SPELL_BREW = 16712, // Special Brew
    SPELL_GHOSTLY = 16713, // Ghostly
    SPELL_HEX1 = 16707, // Hex
    SPELL_HEX2 = 16708, // Hex
    SPELL_HEX3 = 16709, // Hex
    SPELL_GROW = 16711, // Grow
    SPELL_LAUNCH = 16716, // Launch (Whee!)
};

// 17009
class spell_voodoo : public SpellScriptLoader
{
    public:
        spell_voodoo() : SpellScriptLoader("spell_voodoo") {}

        class spell_voodoo_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_voodoo_SpellScript)

            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_BREW) || !sSpellMgr->GetSpellInfo(SPELL_GHOSTLY) ||
                    !sSpellMgr->GetSpellInfo(SPELL_HEX1) || !sSpellMgr->GetSpellInfo(SPELL_HEX2) ||
                    !sSpellMgr->GetSpellInfo(SPELL_HEX3) || !sSpellMgr->GetSpellInfo(SPELL_GROW) ||
                    !sSpellMgr->GetSpellInfo(SPELL_LAUNCH))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetHitUnit())
                {
                    caster->CastSpell(target, RAND(SPELL_BREW, SPELL_GHOSTLY,
                            RAND(SPELL_HEX1, SPELL_HEX2, SPELL_HEX3),
                            SPELL_GROW, SPELL_LAUNCH), false);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_voodoo_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_voodoo_SpellScript();
        }
};

/*###############
##q-25165########
###############*/

enum emob_scorpid
{
    SPELL_EXTRACTION_TOTEM    = 73673,
	SPELL_ENVENOM             = 73672,
	SPELL_SUNDERING_CLEAVE	  = 79687,
	NPC_CLATTERING_SCORPID    = 3125
};

class mob_scorpid : public CreatureScript
{
public:
    mob_scorpid() : CreatureScript("mob_scorpid") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_scorpidAI(pCreature);
    }

    struct mob_scorpidAI : public ScriptedAI
    {
        mob_scorpidAI(Creature *c) : ScriptedAI(c) {}
		
		uint32 m_uiEnvenomTimer;
		uint32 m_uiSunderingCleaveTimer;
		
		uint64 uiPlayerGUID;

		void Reset ()
        {
            uiPlayerGUID = 0;   
			m_uiEnvenomTimer = 10000;
			m_uiSunderingCleaveTimer = 4500;
        }
		void UpdateAI(const uint32 diff)
		{
			if (m_uiEnvenomTimer <= diff)
            {   
                DoCast(me->getVictim(), SPELL_ENVENOM);
                m_uiEnvenomTimer = 10000;
            }
            else m_uiEnvenomTimer -= diff;

			if (m_uiSunderingCleaveTimer <= diff)
			{
				DoCast(me->getVictim(), SPELL_SUNDERING_CLEAVE);
				m_uiSunderingCleaveTimer = 4500;
			}
			else m_uiSunderingCleaveTimer -= diff;

			DoMeleeAttackIfReady();
		}

		void SpellHitTarget(Unit *pTarget, const SpellInfo *spell)
        {
			if (spell->Id == SPELL_ENVENOM)
			{
				if (pTarget->GetTypeId() == TYPEID_PLAYER)
				{
					if(pTarget->HasAura(SPELL_EXTRACTION_TOTEM))
					{
						if(Player* pPlayer = pTarget->GetCharmerOrOwnerPlayerOrPlayerItself())
						{
							pPlayer->KilledMonsterCredit(39236,NULL);
						}
					}
				}
			}
		}
	};
};
/*##############
Riding On 25171#
##############*/
class npc_riding_wolf : public CreatureScript
{
public:
    npc_riding_wolf() : CreatureScript("npc_riding_wolf") { }
 
    CreatureAI* GetAI(Creature* pCreature) const
    {
          return new npc_riding_wolfAI (pCreature);
    }
 
    struct npc_riding_wolfAI  : public ScriptedAI
    {
        npc_riding_wolfAI(Creature *c) : ScriptedAI(c) {}
 
        uint8 Phase;
        uint32 ToMoveTime;
        uint64 PlayerGuid;
 
        void Reset()
        {
            Phase = 0;
            ToMoveTime = 1500;
        }
 
        void UpdateAI(const uint32 diff)
        {
            if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
            {
                if(ToMoveTime < diff)
                {
                    switch(Phase)
                    {
                        case 0: pPlayer->EnterVehicle(me, 0); ToMoveTime = 500; Phase++; break;
                        case 1: me->GetMotionMaster()->MovePoint(1, -818.60f, -4884.27f, 19.24f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 2: me->GetMotionMaster()->MovePoint(2, -808.92f, -4876.20f, 18.93f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 3: me->GetMotionMaster()->MovePoint(3, -792.039f, -4857.87f, 19.20f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 4: me->GetMotionMaster()->MovePoint(4, -776.33f, -4843.75f, 18.26f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 5: me->GetMotionMaster()->MovePoint(5, -759.27f, -4832.24f, 18.54f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 6: me->GetMotionMaster()->MovePoint(6, -740.13f, -4816.08f, 22.00f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 500; break;
                        case 7: me->GetMotionMaster()->MovePoint(7, -720.55f, -4796.79f, 28.51f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 8: me->GetMotionMaster()->MovePoint(8, -705.14f, -4786.22f, 32.82f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 9: me->GetMotionMaster()->MovePoint(9, -684.015f, -4770.49f, 33.67f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 10: me->GetMotionMaster()->MovePoint(10, -645.72f, -4734.47f, 33.67f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 11: me->GetMotionMaster()->MovePoint(11, -629.901f, -4728.50f, 33.76f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 12: me->GetMotionMaster()->MovePoint(12, -599.945f, -4721.66f, 35.21f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 13: me->GetMotionMaster()->MovePoint(13, -592.965f, -4723.42f, 34.42f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 14: me->GetMotionMaster()->MovePoint(14, -557.31f, -4740.25f, 33.24f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 15: me->GetMotionMaster()->MovePoint(15, -526.007f, -4754.20f, 32.915f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 16: me->GetMotionMaster()->MovePoint(16, -488.64f, -4766.87f, 32.125f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 17: me->GetMotionMaster()->MovePoint(17, -446.43f, -4780.029f, 32.46f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 18: me->GetMotionMaster()->MovePoint(18, -403.832f, -4799.45f, 32.42f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 19: me->GetMotionMaster()->MovePoint(19, -374.065f, -4811.029f, 32.30f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 20: me->GetMotionMaster()->MovePoint(20, -346.57f, -4812.9f, 31.76f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 21: me->GetMotionMaster()->MovePoint(21, -312.26f, -4807.81f, 30.17f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 22: me->GetMotionMaster()->MovePoint(22, -244.21f, -4790.288f, 25.97f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 23: me->GetMotionMaster()->MovePoint(23, -205.061f, -4779.75f, 23.93f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 24: me->GetMotionMaster()->MovePoint(24, -161.684f, -4765.149f, 23.19f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 25: me->GetMotionMaster()->MovePoint(25, -125.93f, -4751.06f, 22.36f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 26: me->GetMotionMaster()->MovePoint(26, -76.73f, -4744.669f, 20.79f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 27: me->GetMotionMaster()->MovePoint(27, -26.78f, -4748.029f, 21.35f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 28: me->GetMotionMaster()->MovePoint(28, 15.791f, -4747.169f, 22.01f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 29: me->GetMotionMaster()->MovePoint(29, 65.38f, -4743.15f, 18.80f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 30: me->GetMotionMaster()->MovePoint(30, 94.027f, -4744.069f, 17.02f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 31: me->GetMotionMaster()->MovePoint(31, 118.38f, -4756.029f, 14.20f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 32: me->GetMotionMaster()->MovePoint(32, 139.112f, -4766.91f, 12.37f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 33: me->GetMotionMaster()->MovePoint(33, 191.75f, -4747.37f, 11.134f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 34: me->GetMotionMaster()->MovePoint(34, 214.50f, -4743.339f, 10.247f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 35: me->GetMotionMaster()->MovePoint(35, 244.218f, -4735.979f, 10.102f); pPlayer->SendMonsterMoveTransport(me); Phase++; ToMoveTime = 1500; break;
                        case 36: pPlayer->CastSpell(pPlayer, 93081, true); me->ForcedDespawn(2000); Phase++; break;
                        default: break;
                    }
                } else ToMoveTime -= diff;
            }
        }
    };
};

#define GOSSIP_RIDER_JHASH       "Can I catch a ride to Razor Hill?"
 
class npc_rider_jhash : public CreatureScript
{
public:
        npc_rider_jhash() : CreatureScript("npc_rider_jhash") { }
 
 
                bool OnGossipHello(Player* pPlayer, Creature* pCreature)
                {
                        if (pPlayer->GetQuestStatus(25171) == QUEST_STATUS_COMPLETE)
                                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_RIDER_JHASH, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
 
 
                                pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
 
                                return true;
                }
                
                bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
                {
                        pPlayer->PlayerTalkClass->ClearMenus();
                        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
                        {
                                if(Creature* pWolf = pPlayer->SummonCreature(39239,-820.77f, -4886.169f, 19.35f, 0.762f, TEMPSUMMON_CORPSE_DESPAWN, 0))
                                {
                                    CAST_AI(npc_riding_wolf::npc_riding_wolfAI, pWolf->AI())->PlayerGuid = pPlayer->GetGUID();
                                }

                                pPlayer->CLOSE_GOSSIP_MENU();
                        }
                        return true;
                }
   
};

/*######
##Quest 25194: Unbidden Visitors
##npc_waystrider
######*/


enum Waystrider
{
    QUEST_UNBIDDEN_VISITORS                              = 25194,
	SPELL_WATER_WALK									 = 73757, 
    NPC_STRIDER											 = 39337,
	GO_MARKER											 = 3001657
};

class npc_waystrider : public CreatureScript
{
public:
    npc_waystrider() : CreatureScript("npc_waystrider") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_waystriderAI(pCreature);
    }

    struct npc_waystriderAI : public ScriptedAI
    {
        npc_waystriderAI(Creature *c) : ScriptedAI(c) {}

		uint8 Phase;
        uint32 MoveTime;
        uint64 PlayerGuid;
	
		void Reset()
        {
            Phase = 0;
            MoveTime = 1500;
			me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }
 
        void UpdateAI(const uint32 diff)
        {
			ScriptedAI::UpdateAI(diff);
			
			DoMeleeAttackIfReady();

			if (HealthBelowPct(35))
			{
				me->CastSpell(me, 73757, true);
				me->CastSpell(me, 73758, true);
				me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_OOC_NOT_ATTACKABLE);
				Phase = 1;
			}
			if (MoveTime <= diff)
			{
				switch(Phase)
				{
					case 1: me->CombatStop(true); Phase = 2; MoveTime = 1000; break;
					case 2: 
						{
							if (GameObject* pTarget = me->FindNearestGameObject(GO_MARKER,200.0f))
							{	
								me->SetSpeed(MOVE_RUN, 3.0f);
								me->GetMotionMaster()->MovePoint(1,pTarget->GetPositionX(),pTarget->GetPositionY(),pTarget->GetPositionZ());
								MoveTime = 5000;
							}
							Phase = 3;
						}break;
					case 3:
						{
							me->ForcedDespawn(8000);
							
							 std::list<Player*> players;

                            Trinity::AnyPlayerInObjectRangeCheck checker(me, 200.0f);
                            Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
                            me->VisitNearbyWorldObject(200.0f, searcher);

                            for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                                (*itr)->KilledMonsterCredit(39336, NULL);
							
							
							Phase = 0;

						}break;
				}
			}else MoveTime -= diff;
		}
	};
};

/*##########
##npc_grand_tekla
##########*/

enum eTekla
{
	QUEST_SPIRITS_BE_PRAISED	= 25189,
	SPELL_WATER_WALKING			= 73887,
	SPELL_AIR_SPIRITS_BOON		= 73889,
	NPC_RAGGARAN				= 39326
};

class npc_grand_tekla : public CreatureScript
{
public:
    npc_grand_tekla() : CreatureScript("npc_grand_tekla") { }

    struct npc_grand_teklaAI : public npc_escortAI
    {
        npc_grand_teklaAI(Creature *c) : npc_escortAI(c) {}

        void WaypointReached(uint32 i)
        {
            Player* pPlayer = GetPlayerForEscort();

            if (!pPlayer)
                return;

			switch(i)
            {
            case 0:
				{
					me->SetStandState(UNIT_STAND_STATE_STAND);
					me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
				}break;
			case 9:
				{
					me->MonsterSay("I'm tired of wading in water. Let's make this a little bit easier on ourselves, shall we? Spirit of water, come to our aid!", 0, NULL);
					me->CastSpell(me,SPELL_WATER_WALKING,true);
				}break;
			case 10:
				{
					me->CastSpell(pPlayer,93395,true);
				}break;
			case 13:
				{
					me->MonsterSay("No! M-my ankle! I'm not sure I can make it... after we've come so far...", 0, NULL);	
				}break;
			case 14:
				{
					me->MonsterYell("Spirits of air! Come to my aid!", 0, NULL);
					me->CastSpell(me, SPELL_AIR_SPIRITS_BOON, true);
					me->AddUnitMovementFlag(MOVEMENTFLAG_FLYING);
				}break;
			case 15:
				{
					me->MonsterSay("We can continue now. I think. Let us press on.", 0, NULL);
				}break;
			case 22:
				{
					if (Creature* pRaggaran = me->FindNearestCreature(NPC_RAGGARAN,20.0f))
					{
						me->SetFacingToObject(pRaggaran);
						pRaggaran->SetFacingToObject(me);
						me->MonsterSay("Raggaran, I'm safe.", 0, NULL);
						pRaggaran->MonsterSay("Grandmatron... you're alive!.", 0, NULL);
					}
				}break;
			case 23:
				if (pPlayer && pPlayer->GetTypeId() == TYPEID_PLAYER)
                    CAST_PLR(pPlayer)->GroupEventHappens(QUEST_SPIRITS_BE_PRAISED,me);
                break;

			}
		}
	};

	void Reset()
        {} 
	
	bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_SPIRITS_BE_PRAISED)
        {
            pCreature->MonsterSay("Let us be off then. Take me to my grandson Raggaran.", 0, NULL);

            if (npc_escortAI* pEscortAI = CAST_AI(npc_grand_tekla::npc_grand_teklaAI, pCreature->AI()))
                pEscortAI->Start(true, false, pPlayer->GetGUID());
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_grand_teklaAI(pCreature);
    }
};

/*######
## npc_griswold_hanniston
######*/

enum eGriswold
{
	SPELL_FLURRY_OF_CLAWS		= 76490,
	QUEST_GRISWOLD_HANNISTON	= 25258
};

#define GOSSIP_HELLO_GRISWOLD "I'm here to challenge you in combat."

class npc_griswold_hanniston : public CreatureScript
{
public:
    npc_griswold_hanniston() : CreatureScript("npc_griswold_hanniston") { }
	
	CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_griswold_hannistonAI (pCreature);
    }

    struct npc_griswold_hannistonAI : public ScriptedAI
    {
		npc_griswold_hannistonAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Flurry_Timer;
		uint64 PlayerGUID;

		bool bReset;

		void Reset()
		{
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->getVictim())
            return;

			if (me->IsFriendlyTo(pAttacker))
            return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
        {
            if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
            {
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25258) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39353,PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(const uint32 diff)
        {
            if (bReset)
            {
				if (Reset_Timer <= diff)
                {
                    EnterEvadeMode();
                    bReset = false;
                    me->setFaction(190);               //neutral
                    return;
                }
				else Reset_Timer -= diff;
			}
			if (Flurry_Timer <= diff)
			{
				me->CastSpell(me,SPELL_FLURRY_OF_CLAWS,true);
				Flurry_Timer = 15000;
			}
			else Flurry_Timer -= diff;

			DoMeleeAttackIfReady();
		}
	};



    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        

        if (pPlayer->GetQuestStatus(QUEST_GRISWOLD_HANNISTON) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GRISWOLD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);	

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }
	
	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		
			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
## npc_ghislania
######*/

enum eGhislania
{
	SPELL_CHAIN_LIGHTNING		= 79913,
	SPELL_STATIC_BURST			= 76429,
	QUEST_GHISLANIA				= 25257
};

#define GOSSIP_HELLO_GHISLANIA "I'm here to challenge you in combat."

class npc_ghislania : public CreatureScript
{
public:
    npc_ghislania() : CreatureScript("npc_ghislania") { }
	
	CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_ghislaniaAI (pCreature);
    }

    struct npc_ghislaniaAI : public ScriptedAI
    {
		npc_ghislaniaAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Chain_Lightning_Timer;
		uint32 Static_Burst_Timer;
		uint64 PlayerGUID;

		bool bReset;

		void Reset()
		{
			Chain_Lightning_Timer = 6500;
			Static_Burst_Timer = 3000;
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->getVictim())
            return;

			if (me->IsFriendlyTo(pAttacker))
            return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
        {
            if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
            {
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25257) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39351,PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(const uint32 diff)
        {
            if (bReset)
            {
				if (Reset_Timer <= diff)
                {
                    EnterEvadeMode();
                    bReset = false;
                    me->setFaction(190);               //neutral
                    return;
                }
				else Reset_Timer -= diff;
			}
			if (Chain_Lightning_Timer <= diff)
			{
				me->CastSpell(me->getVictim(),SPELL_CHAIN_LIGHTNING,true);
				Chain_Lightning_Timer = 10000;
			}
			else Chain_Lightning_Timer -= diff;

			if (Static_Burst_Timer <= diff)
			{
				me->CastSpell(me->getVictim(),SPELL_STATIC_BURST,true);
				Static_Burst_Timer = 3000;
			}
			else Static_Burst_Timer -= diff;

			DoMeleeAttackIfReady();
		}
	};



    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        

        if (pPlayer->GetQuestStatus(QUEST_GHISLANIA) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GHISLANIA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);	

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }
	
	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		
			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
## npc_gaur_icehorn
######*/

enum eGaur
{
	SPELL_TAUNKA_RAGE			= 76423,
	QUEST_GAUR_ICEHORN			= 25259
};

#define GOSSIP_HELLO_GAUR "I'm here to challenge you in combat."

class npc_gaur_icehorn : public CreatureScript
{
public:
    npc_gaur_icehorn() : CreatureScript("npc_gaur_icehorn") { }
	
	CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_gaur_icehornAI (pCreature);
    }

    struct npc_gaur_icehornAI : public ScriptedAI
    {
		npc_gaur_icehornAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Rage_Timer;
		uint64 PlayerGUID;

		bool bReset;
		bool bCast;

		void Reset()
		{
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
			bCast = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->getVictim())
            return;

			if (me->IsFriendlyTo(pAttacker))
            return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
        {
            if(done_by->GetHealth() < 2)
                return;

            if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
            {
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25259) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39352,PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(const uint32 diff)
        {
            if (bReset)
            {
				if (Reset_Timer <= diff)
                {
                    EnterEvadeMode();
                    bReset = false;
                    me->setFaction(190);               //neutral
                    return;
                }
				else Reset_Timer -= diff;
			}
			if(HealthBelowPct(70))
			{
				if (!bCast)
				{
					me->CastSpell(me,SPELL_TAUNKA_RAGE,true);
					bCast = true;
				}
			}	

			DoMeleeAttackIfReady();
		}
	};



    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        

        if (pPlayer->GetQuestStatus(QUEST_GAUR_ICEHORN) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GAUR, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);	

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }
	
	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		
			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
##Quest 25236: Thunder Down Under
##npc_drowning_lizard
######*/


enum Lizard
{
    QUEST_THUNDER_DOWN_UNDER                             = 25236,
	SPELL_ATTACH_TETHER									 = 73945,
	SPELL_LIGHTNING_DISCHARGE							 = 73958,
    NPC_DROWNING_LIZARD									 = 39464
	
};

class npc_drowning_lizard : public CreatureScript
{
public:
    npc_drowning_lizard() : CreatureScript("npc_drowning_lizard") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_drowning_lizardAI(pCreature);
    }

    struct npc_drowning_lizardAI : public ScriptedAI
    {
        npc_drowning_lizardAI(Creature *c) : ScriptedAI(c) {}

		
        uint32 ChargeTimer;
        uint64 PlayerGUID;
	//	bool IsMoving;

		void Reset()
        {
            me->SetStandState(UNIT_STAND_STATE_SIT);
			me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
			PlayerGUID = 0;
			//IsMoving = false;
        }

		void SpellHit(Unit *Hitter, const SpellInfo *Spellkind)
        {
            if (Spellkind->Id == 73945)
            {
                float x = me->GetPositionX();
                float y = me->GetPositionY();
                float z = me->GetPositionZ();

				//me->RemoveStandFlags(UNIT_STAND_STATE_SIT);
				//me->RemoveFlag(UNIT_DYNAMIC_FLAGS,UNIT_DYNFLAG_DEAD);
                
				//me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
				//me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->GetMotionMaster()->MovePoint(0, x-1.0f, y+1.0f, z+20.0f);
				me->MonsterSay("Wole lezec",0,NULL);
            }
            return;
        }
	/*	void UpdateAI(const uint32 diff)
        {
			if (ChargeTimer <= diff)
            {
				if (!IsMoving)
				{
					me->CastSpell(me, SPELL_LIGHTNING_DISCHARGE, true);
					ChargeTimer = 10000;
				}
			}
		}*/
	};
};

/*######
## npc_fizzle
######*/

enum eFizzle
{
	SPELL_REMOVE_HAND			= 74024,
	QUEST_FIZZLED				= 25260
};

#define GOSSIP_HELLO_FIZZLE1 "<Attempt to remove the orb.>"
#define GOSSIP_HELLO_FIZZLE2 "<Attempt to remove Fizzle's Hand, then.>"
#define GOSSIP_HELLO_FIZZLE3 "<Give up.This is too scary.>"

class npc_fizzle : public CreatureScript
{
public:
    npc_fizzle() : CreatureScript("npc_fizzle") { }
	
	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pPlayer->GetQuestStatus(25260) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);	

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }

	void SendAction(Player* pPlayer, Creature* pCreature, uint32 uiAction)
    {
		switch(uiAction)
        {
			case GOSSIP_ACTION_INFO_DEF+1:
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE2, GOSSIP_SENDER_MAIN+1, GOSSIP_ACTION_INFO_DEF+2);
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE3, GOSSIP_SENDER_MAIN+2, GOSSIP_ACTION_INFO_DEF+3);
				pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
                break;
		}
	}
	
	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
		switch(uiSender)
        {
            case GOSSIP_SENDER_MAIN:
                SendAction(pPlayer, pCreature, uiAction);
                break;
			case GOSSIP_SENDER_MAIN+1:
                pPlayer->CastSpell(pPlayer, 74024, false);
                SendAction(pPlayer, pCreature, uiAction);
				pPlayer->CLOSE_GOSSIP_MENU();
                break;
            case GOSSIP_SENDER_MAIN+2:
				pPlayer->CLOSE_GOSSIP_MENU();
                SendAction(pPlayer, pCreature, uiAction);
                break;
		}

		return true;
	}
};

void AddSC_durotar()
{
    new npc_lazy_peon();
    new npc_tiger_matriarch_credit();
    new npc_tiger_matriarch();
    new npc_troll_volunteer();
    new spell_mount_check();
    new spell_voljin_war_drums();
    new spell_voodoo();
	new mob_scorpid();
	new npc_rider_jhash();
	new npc_riding_wolf();
	new npc_waystrider();
	new npc_grand_tekla();
	new npc_griswold_hanniston();
	new npc_ghislania();
	new npc_gaur_icehorn();
	new npc_drowning_lizard();
	new npc_fizzle();
}