/*
 * Copyright (C) 2011 Project Atlantiss <http://www.atlantiss.pl/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ScriptData
SDName: Elwynn_Forest
SD%Complete: 50
SDComment: Quest support: 1786
SDCategory: Elwynn Forest
EndScriptData */

/* ContentData
npc_henze_faulk
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_henze_faulk
######*/
enum eHenzeFaulkData
{
    SAY_HEAL = -1000187,
};

class npc_henze_faulk : public CreatureScript
{
public:
    npc_henze_faulk() : CreatureScript("npc_henze_faulk") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_henze_faulkAI (pCreature);
    }

    struct npc_henze_faulkAI : public ScriptedAI
    {
        uint32 lifeTimer;
        bool spellHit;

        npc_henze_faulkAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            lifeTimer = 120000;
            me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
            me->SetStandState(UNIT_STAND_STATE_DEAD);   // lay down
            spellHit = false;
        }

        void EnterCombat(Unit * /*who*/)
        {
        }

        void MoveInLineOfSight(Unit * /*who*/)
        {
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->IsStandState())
            {
                if (lifeTimer <= diff)
                {
                    EnterEvadeMode();
                    return;
                }
                else
                    lifeTimer -= diff;
            }
        }

        void SpellHit(Unit * /*Hitter*/, const SpellInfo *Spellkind)
        {
            if (Spellkind->Id == 8593 && !spellHit)
            {
                DoCast(me, 32343);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, 0);
                //me->RemoveAllAuras();
                DoScriptText(SAY_HEAL, me);
                spellHit = true;
            }
        }
    };
};

/*######
## npc_stormwind_infantry
######*/

enum Northshire
{
    NPC_BLACKROCK_BATTLE_WORG = 49871,
    NPC_STORMWIND_INFANTRY    = 49869,
    NPC_BROTHER_PAXTON        = 951,
    SAY_INFANTRY_NORMAL_1     = -1000001,
    SAY_INFANTRY_NORMAL_2     = -1000002,
    SAY_INFANTRY_NORMAL_3     = -1000003,
    SAY_INFANTRY_NORMAL_4     = -1000004,
    SAY_INFANTRY_NORMAL_5     = -1000005,
    SAY_INFANTRY_COMBAT_1     = -1000006,
    SAY_INFANTRY_COMBAT_2     = -1000007,
    SAY_INFANTRY_COMBAT_3     = -1000008,
    SAY_INFANTRY_COMBAT_4     = -1000009,
    SAY_PAXTON_NORMAL_1       = -1000010,
    SAY_PAXTON_NORMAL_2       = -1000011,
    SAY_PAXTON_NORMAL_3       = -1000012,
    SAY_PAXTON_NORMAL_4       = -1000013,
    SAY_PAXTON_NORMAL_5       = -1000014,
    SAY_BLACKROCK_COMBAT_1    = -1000015,
    SAY_BLACKROCK_COMBAT_2    = -1000016,
    SAY_BLACKROCK_COMBAT_3    = -1000017,
    SAY_BLACKROCK_COMBAT_4    = -1000018,
    SAY_BLACKROCK_COMBAT_5    = -1000019,
    SAY_ASSASSIN_COMBAT_1     = -1000020,
    SAY_ASSASSIN_COMBAT_2     = -1000021,
    SPELL_RENEW               = 93094,
    SPELL_PRAYER_OF_HEALING   = 93091,
    SPELL_FORTITUDE           = 13864,
    SPELL_PENANCE             = 47750,
    SPELL_FLASH_HEAL          = 17843,
    SPELL_SPYING              = 92857,
    SPELL_SNEAKING            = 93046,
    SPELL_SPYGLASS            = 80676,
};

class npc_stormwind_infantry : public CreatureScript
{
public:
    npc_stormwind_infantry() : CreatureScript("npc_stormwind_infantry") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_stormwind_infantryAI (pCreature);
    }

    struct npc_stormwind_infantryAI : public ScriptedAI
    {
        npc_stormwind_infantryAI(Creature *c) : ScriptedAI(c) {}

        uint32 uiSayNormalTimer;
        uint32 uiSayCombatTimer;
        uint32 uiCombatTimer;
        uint32 DamageCount;
        uint32 Attack1HTimer;

        void Reset()
        {
            uiSayNormalTimer = urand(50000, 90000);
            uiSayCombatTimer = urand(30000, 60000);
            uiCombatTimer = 500;
            DamageCount = 0;
            Attack1HTimer = 2000;
        }

        void EnterCombat(Unit * who)
        {
            if (!me->HasUnitState(UNIT_STAT_ROOT))
                me->AddUnitState(UNIT_STAT_ROOT);
        }

        void SetData(uint32 type, uint32 data)
        {
            if (Creature* Paxton = me->FindNearestCreature(NPC_BROTHER_PAXTON, 20, true))
            {
                bool Continue = false;

                switch(data)
                {
                    case 1:
                        if (me->GetDistance2d(-8807.426758f, -163.300751f) <= 2.0f)
                            Continue = true;
                        break;
                    case 2:
                        if (me->GetDistance2d(-8811.654297f, -151.384628f) <= 2.0f)
                            Continue = true;
                        break;
                    case 3:
                        if (me->GetDistance2d(-8820.900391f, -142.061005f) <= 2.0f)
                            Continue = true;
                        break;
                    case 4:
                        if (me->GetDistance2d(-8836.710938f, -143.393066f) <= 2.0f)
                            Continue = true;
                        break;
                }

                if (Continue == true)
                {
                    DoScriptText(RAND(SAY_INFANTRY_COMBAT_1, SAY_INFANTRY_COMBAT_2, SAY_INFANTRY_COMBAT_3, SAY_INFANTRY_COMBAT_4), me);
                    Paxton->SetOrientation(me->GetAngle(Paxton));
                    Paxton->SendMovementFlagUpdate();
                    DoScriptText(RAND(SAY_PAXTON_NORMAL_1, SAY_PAXTON_NORMAL_2, SAY_PAXTON_NORMAL_3, SAY_PAXTON_NORMAL_4, SAY_PAXTON_NORMAL_5), Paxton);
                    switch(type)
                    {
                        case 1:
                            Paxton->AI()->DoCast(me, SPELL_PRAYER_OF_HEALING);
                            break;
                        case 2:
                            Paxton->AI()->DoCast(me, SPELL_PENANCE);
                            break;
                        case 3:
                            Paxton->AI()->DoCast(me, SPELL_RENEW);
                            break;
                        case 4:
                            Paxton->AI()->DoCast(me, SPELL_FLASH_HEAL);
                            break;
                    }
                    Continue = false;
                }
                else
                    me->AI()->SetData(type, data);
            }
        }

        void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
        {
            if (target->GetEntry() == NPC_BLACKROCK_BATTLE_WORG)
                ++DamageCount;
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->isAlive())
                if (!me->isInCombat())
                {
                    if (me->GetDistance2d(me->GetHomePosition().GetPositionX(), me->GetHomePosition().GetPositionY()) <= 1.0f)
                        if (Creature* Worg = me->FindNearestCreature(NPC_BLACKROCK_BATTLE_WORG, 5.0f, true))
                            me->AI()->AttackStart(Worg);

                    if (uiSayNormalTimer <= diff)
                    {
                        DoScriptText(RAND(SAY_INFANTRY_NORMAL_1, SAY_INFANTRY_NORMAL_2, SAY_INFANTRY_NORMAL_3, SAY_INFANTRY_NORMAL_4, SAY_INFANTRY_NORMAL_5), me);
                        uiSayNormalTimer = urand(3000, 90000);
                    }else uiSayNormalTimer -= diff;

                    if (me->GetHomePosition().GetPositionX() != me->GetPositionX() && me->GetHomePosition().GetPositionY() != me->GetPositionX())
                    {
                        if (me->isMoving())
                            me->SetSpeed(MOVE_RUN, 2.0f);
                    }
                    else
                        me->SetSpeed(MOVE_WALK, 1.0f);
                }

            if (!UpdateVictim())
                return;

            if (DamageCount < 2)
                DoMeleeAttackIfReady();
            else
            {
                if (me->getVictim()->GetTypeId() == TYPEID_PLAYER)
                    DamageCount = 0;
                else
                {
                    if (me->getVictim()->isPet())
                        DamageCount = 0;
                }

                if (Attack1HTimer <= diff)
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK1H);
                    Attack1HTimer = 2000;
                }else Attack1HTimer -= diff;
            }

            if (HealthBelowPct(100))
            {
                if (uiSayCombatTimer <= diff)
                {
                    if (Creature* Paxton = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 20, true))
                    {
                        uint32 Random = urand(1, 5);
                        uint32 Mob = 0;

                        if (me->GetDistance2d(-8807.426758f, -163.300751f) <= 2.0f)
                            Mob = 1;
                        if (me->GetDistance2d(-8811.654297f, -151.384628f) <= 2.0f)
                            Mob = 2;
                        if (me->GetDistance2d(-8820.900391f, -142.061005f) <= 2.0f)
                            Mob = 3;
                        if (me->GetDistance2d(-8836.710938f, -143.393066f) <= 2.0f)
                            Mob = 4;

                        if (Mob != 0)
                            me->AI()->SetData(Random, Mob);
                        else
                            DoScriptText(RAND(SAY_INFANTRY_COMBAT_1, SAY_INFANTRY_COMBAT_2, SAY_INFANTRY_COMBAT_3, SAY_INFANTRY_COMBAT_4), me);
                    }
                    uiSayCombatTimer = urand(30000, 60000);
                }else uiSayCombatTimer -= diff;
            }

            if (uiCombatTimer <= diff)
            {
                if (me->HasUnitState(UNIT_STAT_ROOT))
                    me->ClearUnitState(UNIT_STAT_ROOT);

                uiCombatTimer = 500;
            }else uiCombatTimer -= diff;
        }
    };
};

/*######
## npc_brother_paxton
######*/

class npc_brother_paxton : public CreatureScript
{
public:
    npc_brother_paxton() : CreatureScript("npc_brother_paxton") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_brother_paxtonAI (pCreature);
    }

    struct npc_brother_paxtonAI : public ScriptedAI
    {
        npc_brother_paxtonAI(Creature *c) : ScriptedAI(c)
        {
            me->GetMotionMaster()->MovePath(951, true);
        }

        void Reset()
        {
            if (!me->HasAura(SPELL_FORTITUDE))
                if (!me->HasUnitState(UNIT_STAT_CASTING))
                    DoCast(me, SPELL_FORTITUDE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->HasUnitState(UNIT_STAT_CASTING) && me->isMoving())
                me->StopMoving();

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

/*######
## npc_blackrock_battle_worg
######*/

class npc_blackrock_battle_worg : public CreatureScript
{
public:
    npc_blackrock_battle_worg() : CreatureScript("npc_blackrock_battle_worg") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_blackrock_battle_worgAI (pCreature);
    }

    struct npc_blackrock_battle_worgAI : public ScriptedAI
    {
        npc_blackrock_battle_worgAI(Creature *c) : ScriptedAI(c) {}

        uint32 Attack1HTimer;
        uint32 DamageCount;

        void Reset()
        {
            Attack1HTimer = 2000;
            DamageCount = 0;
        }

        void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
        {
            if (target->GetEntry() == NPC_STORMWIND_INFANTRY)
                ++DamageCount;
        }

        void DamageTaken(Unit * pWho, uint32 &uiDamage)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                me->getThreatManager().resetAllAggro();
                pWho->AddThreat(me, 100000.0f);
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                DamageCount = 0;
            }
            else
            {
                if (pWho->isPet())
                {
                    me->AI()->AttackStart(pWho);
                    DamageCount = 0;
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (DamageCount < 2)
                DoMeleeAttackIfReady();
            else
            {
                if (me->getVictim()->GetTypeId() == TYPEID_PLAYER)
                    DamageCount = 0;
                else
                {
                    if (me->getVictim()->isPet())
                        DamageCount = 0;
                }

                if (Attack1HTimer <= diff)
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK1H);
                    Attack1HTimer = 2000;
                }else Attack1HTimer -= diff;
            }
        }
    };
};

/*######
## npc_blackrock_spy
######*/

class npc_blackrock_spy : public CreatureScript
{
public:
    npc_blackrock_spy() : CreatureScript("npc_blackrock_spy") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_blackrock_spyAI (pCreature);
    }

    struct npc_blackrock_spyAI : public ScriptedAI
    {
        npc_blackrock_spyAI(Creature *c) : ScriptedAI(c)
        {
            CastSpying();
        }

        void CastSpying()
        {
            GetCreature(-8868.88f, -99.1016f);
            GetCreature(-8936.5f, -246.743f);
            GetCreature(-8922.44f, -73.9883f);
            GetCreature(-8909.68f, -40.0247f);
            GetCreature(-8834.85f, -119.701f);
            GetCreature(-9022.08f, -163.965f);
            GetCreature(-8776.55f, -79.158f);
            GetCreature(-8960.08f, -63.767f);
            GetCreature(-8983.12f, -202.827f);
        }

        void GetCreature(float X, float Y)
        {
            if (me->GetHomePosition().GetPositionX() == X, me->GetHomePosition().GetPositionY() == Y)
                if (!me->isInCombat() && !me->HasAura(SPELL_SPYING))
                    DoCast(me, SPELL_SPYING);

            CastSpyglass();
        }

        void CastSpyglass()
        {
            Spyglass(-8868.88f, -99.1016f, -8936.5f, -246.743f, -8922.44f, -73.9883f, -8909.68f, -40.0247f, -8834.85f,
                -119.701f, -9022.08f, -163.965f, -8776.55f, -79.158f, -8960.08f, -63.767f, -8983.12f, -202.827f);
        }

        void Spyglass(float X1, float Y1, float X2, float Y2, float X3, float Y3, float X4, float Y4, float X5, float Y5,
            float X6, float Y6, float X7, float Y7, float X8, float Y8, float X9, float Y9)
        {
            if (me->GetHomePosition().GetPositionX() != X1, me->GetHomePosition().GetPositionY() != Y1)
            if (me->GetHomePosition().GetPositionX() != X2, me->GetHomePosition().GetPositionY() != Y2)
            if (me->GetHomePosition().GetPositionX() != X3, me->GetHomePosition().GetPositionY() != Y3)
            if (me->GetHomePosition().GetPositionX() != X4, me->GetHomePosition().GetPositionY() != Y4)
            if (me->GetHomePosition().GetPositionX() != X5, me->GetHomePosition().GetPositionY() != Y5)
            if (me->GetHomePosition().GetPositionX() != X6, me->GetHomePosition().GetPositionY() != Y6)
            if (me->GetHomePosition().GetPositionX() != X7, me->GetHomePosition().GetPositionY() != Y7)
            if (me->GetHomePosition().GetPositionX() != X8, me->GetHomePosition().GetPositionY() != Y8)
            if (me->GetHomePosition().GetPositionX() != X9, me->GetHomePosition().GetPositionY() != Y9)
                if (me->GetHomePosition().GetPositionX() == me->GetPositionX(), me->GetHomePosition().GetPositionY() == me->GetPositionY())
                    if (!me->isInCombat() && !me->HasAura(SPELL_SPYGLASS))
                        DoCast(me, SPELL_SPYGLASS);
        }

        void EnterCombat(Unit * who)
        {
            DoScriptText(RAND(SAY_BLACKROCK_COMBAT_1, SAY_BLACKROCK_COMBAT_2, SAY_BLACKROCK_COMBAT_3, SAY_BLACKROCK_COMBAT_4, SAY_BLACKROCK_COMBAT_5), me);
        }

        void UpdateAI(const uint32 diff)
        {
            CastSpyglass();

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

/*######
## npc_blackrock_invader
######*/

class npc_blackrock_invader : public CreatureScript
{
public:
    npc_blackrock_invader() : CreatureScript("npc_blackrock_invader") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_blackrock_invaderAI (pCreature);
    }

    struct npc_blackrock_invaderAI : public ScriptedAI
    {
        npc_blackrock_invaderAI(Creature *c) : ScriptedAI(c) {}

        void EnterCombat(Unit * who)
        {
            DoScriptText(RAND(SAY_BLACKROCK_COMBAT_1, SAY_BLACKROCK_COMBAT_2, SAY_BLACKROCK_COMBAT_3, SAY_BLACKROCK_COMBAT_4, SAY_BLACKROCK_COMBAT_5), me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

/*######
## npc_goblin_assassin
######*/

class npc_goblin_assassin : public CreatureScript
{
public:
    npc_goblin_assassin() : CreatureScript("npc_goblin_assassin") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_goblin_assassinAI (pCreature);
    }

    struct npc_goblin_assassinAI : public ScriptedAI
    {
        npc_goblin_assassinAI(Creature *c) : ScriptedAI(c)
        {
            if (!me->isInCombat() && !me->HasAura(SPELL_SPYING))
                DoCast(SPELL_SNEAKING);
        }

        void EnterCombat(Unit * who)
        {
            DoScriptText(RAND(SAY_ASSASSIN_COMBAT_1, SAY_ASSASSIN_COMBAT_2), me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

enum
{
    SPELL_RENEWEDLIFE           = 93097,
    NPC_INJURED_SOLDIER_DUMMY   = 50378
};

class npc_injured_soldier : public CreatureScript
{
public:
    npc_injured_soldier() : CreatureScript("npc_injured_soldier") { }

    struct npc_injured_soldierAI : public ScriptedAI
    {
        npc_injured_soldierAI(Creature *pCreature) : ScriptedAI(pCreature) {}

        bool IsHealed;
        uint32 RunTimer;
        uint8 Phase;

        void Reset()
        {
            me->SetCreatorGUID(0);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_14);
            me->SetFlag(UNIT_FIELD_BYTES_1, 7);
            IsHealed = false;
            RunTimer = 2000;
            Phase = 0;
        }

        void SpellHit(Unit* caster, const SpellInfo *pSpell)
        {
            if (pSpell->Id == SPELL_RENEWEDLIFE)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_14);
                me->RemoveFlag(UNIT_FIELD_BYTES_1, 7);
                IsHealed = true;
            }
        }
        void UpdateAI(const uint32 diff)
        {
            if (!IsHealed)
                return;

            if (Player* pOwner = me->GetPlayer(*me, me->GetCreatorGUID()))
            {
                if (RunTimer <= diff)
                {
                    switch(Phase)
                    {
                        case 0:
                        {
                            switch(urand(0, 3))
                            {
                                //I'm really lazy ;)
                                case 0: me->MonsterSay("Bless you, hero!", 0, NULL); break;
                                case 1: me->MonsterSay("I will fear no evil!", 0, NULL); break;
                                case 2: me->MonsterSay("Thank the Light!", 0, NULL); break;
                                case 3: me->MonsterSay("You're $p! The hero that everyone has been talking about! Thank you!", 0, pOwner->GetGUID()); break;
                                default: break;
                            }
                            me->HandleEmoteCommand(EMOTE_ONESHOT_WAVE);
                            pOwner->KilledMonsterCredit(me->GetEntry(), NULL);
                            RunTimer = 2000;
                            Phase++;
                            break;
                        }
                        case 1:
                        {
                            if (Creature* Dummy = me->FindNearestCreature(NPC_INJURED_SOLDIER_DUMMY, 300.0f, true))
                            {
                                me->GetMotionMaster()->MovePoint(1, Dummy->GetPositionX(), Dummy->GetPositionY(), Dummy->GetPositionZ());
                                RunTimer = 8000;
                                Phase++;
                            }
                            break;
                        }
                        case 2: me->ForcedDespawn(); break;
                        default: break;
                    }
                } else RunTimer -= diff;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_injured_soldierAI (pCreature);
    }
};

/*################
npc_hogger#
################*/
enum Spells
 {
   SPELL_EATING      = 87351,
   SPELL_VICIOUS_SLICE    = 87337,
   SPELL_SUMMON_MINIONS  = 87366,
   SPELL_SIMPLY_TELEPORT   = 64446,

   SAY1          = -1019448, // Yipe! Help Hogger
   SAY2          = -1019449, // No hurt Hogger!
   SAY_RAGA_1        = -1019176, // WoW!
   SAY_RAGA_2        = -1019177, // General Jonathan Marcus!
   SAY_HOGGER_1      = -1019178, // Grrr...
   SAY_HOGGER_2      = -1019179, // Nooooo...
   SAY_GENERAL_1      = -1019180, // This beast leads the Riverpaw gnoll gang and may be the key to ending gnoll aggression in Elwynn!
   SAY_GENERAL_2      = -1019181, // We're taking him into custody in the name of King Varian Wrynn.
   SAY_GENERAL_3      = -1019182  // Take us to the Stockades, Andromath.
};

class npc_hogger : public CreatureScript
{
public:
    npc_hogger() : CreatureScript("npc_hogger") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_hoggerAI(pCreature);
    }

    struct npc_hoggerAI : public ScriptedAI
    {
        uint8 phase;

        uint32 m_uiViciousSliceTimer;
        uint32 m_uiSummonMinions;
        uint32 m_uiPhaseTimer;
        uint32 m_uiDespawnTimer;

        uint64 GeneralGUID;
        uint64 Mage1GUID;
        uint64 Mage2GUID;
        uint64 Raga1GUID;
        uint64 Raga2GUID;
        uint64 PlayerGUID;

        bool bSay;
        bool bSay2;
        bool bSay3;
        bool Summon;
        bool bSummoned;
        bool bSummoned3;
        bool bGo1;
        bool bCasted;
        bool Credit;

        npc_hoggerAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            me->RestoreFaction();
            me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);

            m_uiViciousSliceTimer = 8000;
            m_uiSummonMinions = 15000;
            m_uiPhaseTimer = 0;
            m_uiDespawnTimer = 500;

            phase = 0;
            GeneralGUID = 0;
            Mage1GUID = 0;
            Mage2GUID = 0;
            Raga1GUID = 0;
            Raga2GUID = 0;
            PlayerGUID = 0;

            Summon = false;
            bSay = false;
            bCasted = false;
            bSay2 = false;
            bSay3 = false;
            bSummoned = false;
            bSummoned3 = false;
            bGo1 = false; 
            Credit = false;
        }

        void JustDied(Unit* /*killer*/)
        {
            me->RestoreFaction();
        }

        void AttackedBy(Unit* pAttacker)
        {
            if (me->getVictim() || me->IsFriendlyTo(pAttacker))
                return;

            AttackStart(pAttacker);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (id == 0)
            {
                DoCast(me, SPELL_EATING);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            ScriptedAI::UpdateAI(diff);

            DoMeleeAttackIfReady();

            if (m_uiViciousSliceTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_VICIOUS_SLICE);
                m_uiViciousSliceTimer = 10000;
            } else
            m_uiViciousSliceTimer -= diff;

            if (HealthBelowPct(50))
            {
                if(!bSummoned)
                {
                    DoCast(me->getVictim(), SPELL_SUMMON_MINIONS);
                    bSummoned = true;
                }
                if(!bSay)
                {
                    me->MonsterYell("Yipe! Help Hogger", 0, NULL);
                    bSay=true;
                }    
            }

            if(HealthBelowPct(35))
            {
                if(!bSay2)
                {
                    me->MonsterTextEmote("Hogger is eating! Stop him!", NULL, true);
                    bSay2=true;
                }
                if(!bGo1)
                {    
                    me->AttackStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->GetMotionMaster()->MovePoint(0, -10142.081f, 671.773f, 36.014f);
                    bGo1 = true;
                }
            }

            if(HealthBelowPct(10))
            {
                if(!bSummoned3)
                {
                    if(!bSay3)
                    {
                        me->MonsterYell("No hurt Hogger!", 0, NULL);
                        bSay3=true;
                    }

                    me->CombatStop(true);
                    me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);

                    Creature* General = me->SummonCreature(46942, -10133.275f, 663.244f, 35.964616f, 2.45f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000);
                    GeneralGUID = General->GetGUID();

                    Creature* Mage1 = me->SummonCreature(46941, -10129.976f, 667.982f, 35.67f, 2.85f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000);
                    Mage1GUID = Mage1->GetGUID();

                    Creature* Mage2 = me->SummonCreature(46940, -10137.671f, 659.926f, 35.971f, 2.051f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000);
                    Mage2GUID = Mage2->GetGUID();

                    Creature* Raga1 = me->SummonCreature(46943, -10133.339f, 660.087f, 35.971f, 2.26f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000);
                    Raga1GUID = Raga1->GetGUID();

                    Creature* Raga2 = me->SummonCreature(42413, -10129.461f, 663.180f, 35.9491f, 2.37f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000);
                    Raga2GUID = Raga2->GetGUID();

                    Summon = true;

                    m_uiPhaseTimer = 1500;
                    phase = 1;
                }

                if(Summon)
                {
                    Creature* General = Unit::GetCreature(*me, GeneralGUID);
                    Creature* Raga2 = Unit::GetCreature(*me, Raga2GUID);
                    Creature* Raga1 = Unit::GetCreature(*me, Raga1GUID);
                    Creature* Mage2 = Unit::GetCreature(*me, Mage2GUID);
                    Creature* Mage1 = Unit::GetCreature(*me, Mage1GUID);

                    if(!bCasted)
                    {
                        General->CastSpell(General,64446,true);
                        Raga2->CastSpell(Raga2,64446,true);
                        Raga1->CastSpell(Raga1,64446,true);
                        Mage2->CastSpell(Raga2,64446,true);
                        Mage1->CastSpell(Raga1,64446,true);
                        bCasted = true;
                    }

                    bSummoned3=true;
                    me->SetSpeed(MOVE_RUN, 1.0f);
                }
            }

            if(bCasted)
            {
                if (m_uiPhaseTimer <= diff)
                {
                    Creature* General = Unit::GetCreature(*me, GeneralGUID);
                    Creature* Raga2 = Unit::GetCreature(*me, Raga2GUID);
                    Creature* Raga1 = Unit::GetCreature(*me, Raga1GUID);
                    Creature* Mage2 = Unit::GetCreature(*me, Mage2GUID);
                    Creature* Mage1 = Unit::GetCreature(*me, Mage1GUID);

                    switch(phase)
                    {

                        case 1: me->GetMotionMaster()->MovePoint(1, -10141.054f, 670.719f, 35.9569f); m_uiPhaseTimer = 3000; phase = 2; break;
                        case 2: General->MonsterYell("Hold your blade, adventurer!", 0, NULL); m_uiPhaseTimer = 2500; phase = 3; break;
                        case 3: Raga1->MonsterSay("WoW!", 0, NULL); m_uiPhaseTimer = 1500; phase = 4; break;
                        case 4: Raga2->MonsterSay("General Jonathan Marcus!", 0, NULL); m_uiPhaseTimer = 1500; phase = 5; break;
                        case 5:
                        {
                            if(Creature* General =  Unit::GetCreature(*me, GeneralGUID))
                            {
                                DoScriptText(SAY_GENERAL_1, General);
                                General->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                General->GetMotionMaster()->MovePoint(0, -10137.162f, 667.919f, 35.937f);
                                m_uiPhaseTimer = 3000;
                            }
                            phase = 6;
                        } break;
                        case 6: me->MonsterSay("Grrr...", 0, NULL); m_uiPhaseTimer = 4000; phase = 7; break;
                        case 7:
                        {
                            General->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                            m_uiPhaseTimer = 4500;
                            phase = 8;
                        } break;

                        case 8: General->MonsterSay("We're taking him into custody in the name of King Varian Wrynn.", 0, NULL); m_uiPhaseTimer = 4000; phase = 9; break;
                        case 9: me->MonsterSay("Nooooo...", 0, NULL); m_uiPhaseTimer = 4000; phase = 10; break;
                        case 10: General->MonsterSay("Take us to the Stockades, Andromath.", 0, NULL); m_uiPhaseTimer = 4000; phase = 11; break;
                                General->SetFacing(6.08f);
                        case 11:
                        {
                            General->CastSpell(General,64446,true);
                            Raga1->CastSpell(Raga1,64446,true);
                            Raga2->CastSpell(Raga2,64446,true);
                            Mage1->CastSpell(Mage1,64446,true);
                            Mage2->CastSpell(Mage2,64446,true);
                            me->CastSpell(me,64446,true);

                            General->ForcedDespawn(500);
                            Raga1->ForcedDespawn(500);
                            Raga2->ForcedDespawn(500);
                            Mage1->ForcedDespawn(500);
                            Mage2->ForcedDespawn(500);
                            me->ForcedDespawn(500);

                            std::list<Player*> players;

                            Trinity::AnyPlayerInObjectRangeCheck checker(me, 35.0f);
                            Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
                            me->VisitNearbyWorldObject(35.0f, searcher);

                            for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                                (*itr)->KilledMonsterCredit(448, NULL);

                            phase = 0;
                        } break;
                        default: break;
                    }
                } else m_uiPhaseTimer -= diff;
            }
            if (me->GetHealth() <= 1)
            { 
                if (m_uiDespawnTimer <= diff)
                {
                    me->CombatStop(true);
                    me->AttackStop();
                    me->ClearAllReactives();
                    me->DeleteThreatList();
                    me->SetHealth(me->GetMaxHealth());                       
                } else m_uiDespawnTimer -= diff;
            }
        }  
        void DamageTaken(Unit* done_by, uint32 & damage)
        {
            if (PlayerGUID == 0)
            {
                if (Player *pPlayer = done_by->ToPlayer())
                {
                    PlayerGUID = pPlayer->GetGUID();
                }
            }

            if (me->GetHealth() <= damage)
            {
                damage = me->GetHealth() - 1; 

                if (Credit == false)
                {
                    me->RemoveAllAuras();
                    me->CombatStop(true);
                    me->AttackStop();
                    me->ClearAllReactives();
                    me->DeleteThreatList();

                }Credit = true;
            }
        }
   };
};

void AddSC_elwynn_forest()
{
    new npc_injured_soldier();
    new npc_henze_faulk();
    new npc_stormwind_infantry();
    new npc_brother_paxton();
    new npc_blackrock_battle_worg();
    new npc_blackrock_spy();
    new npc_goblin_assassin();
    new npc_blackrock_invader();
    new npc_hogger();
}
