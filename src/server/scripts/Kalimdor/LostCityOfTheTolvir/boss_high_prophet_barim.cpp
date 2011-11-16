/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 TrilliumEMU <http://www.trilliumemu.org/>
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
 
 /*
 Made By: Jenova     
 Project: Atlantiss Core  
 SDName: Boss High Prophet Barim
 SD%Complete: 90%
 SDComment: Missing some entries
 SDCategory: Lost City of the Tol'vir

 Known Bugs:

 TODO:
 1. Check Timers
 2. Needs testing
 */
                               
#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "lost_city_of_the_tolvir.h"

enum Spells
{
    // High Prophet Barim
    SPELL_FIFTY_LASHINGS                        = 82506,
    SPELL_PLAGUE_OF_AGES                        = 82622,
    SPELL_REPENTANCE                            = 82139, // PHASE 2 EFFECT.
    SPELL_REPENTANCE_AURA                       = 82320,
    SPELL_REPENTANCE_KNOCKBACK                  = 82012,
    SPELL_HEAVENS_FURY                          = 81939,
    SPELL_HARBINGER_SUMMON                      = 82203,
    SPELL_BLAZE_SUMMON                          = 91180,
    SPELL_PULL_ALL                              = 51336, // Hack, but safe.
    // Harbinger of Darkness
    SPELL_SOUL_SEVER                            = 82255,
    SPELL_WAIL_OF_DARKNESS_AOE                  = 82425,
    SPELL_WAIL_OF_DARKNESS_RANDOM               = 82533,
    // Heaven's Fury
    SPELL_HEAVENS_FURY_VISUAL                   = 81940,
    SPELL_HEAVENS_FURY_AURA                     = 81941,
    // Blaze of Heavens
    SPELL_BLAZE_OF_THE_HEAVENS_AURA             = 95248,
    SPELL_BLAZE_OF_THE_HEAVENS_SUMMON_FIRE_AURA = 91185,
    SPELL_BLAZE_OF_THE_HEAVENS_SUMMON_EGG       = 91181,
    // Soul Fragment
    SPELL_MERGED_SOULS                          = 82263,
    SPELL_SOUL_SEVER_CLONE                      = 82220, // player should cast it on npc.
};

enum Yells
{
    SAY_AGGRO                   = -1755005,
    SAY_REPETANCE_1             = -1755006,
    SAY_REPETANCE_2             = -1755007,
    SAY_DEATH                   = -1755008,
    SAY_KILL                    = -1755009,
};

enum Phases
{
    PHASE_NORMAL        = 1,
    PHASE_50_PRECENT    = 2
};

class boss_high_prophet_barim : public CreatureScript
{
public:
    boss_high_prophet_barim() : CreatureScript("boss_high_prophet_barim") { }

    struct boss_high_prophet_barimAI : public BossAI
    {
        boss_high_prophet_barimAI(Creature* pCreature) : BossAI(pCreature, DATA_HIGH_PROPHET_BARIM)
        {
            pInstance = me->GetInstanceScript();
        }

        InstanceScript* pInstance;

        std::list<uint64> SummonList;

        uint8 Phase;

        uint32 FenixTimer;
        uint32 PlagueOfAgesTimer;
        uint32 FiftyLashingsTimer;
        uint32 HeavensFuryTimer;
        uint32 PhaseChangeTimer;

        bool FenixSummoned, Phased;

        void Reset()
        {
            if (instance)
                    instance->SetData(DATA_HIGH_PROPHET_BARIM, NOT_STARTED);

            me->SetReactState(REACT_AGGRESSIVE);
            RemoveSummons();

            Phase = PHASE_NORMAL;

            FenixTimer = 9000;
            PlagueOfAgesTimer = 7000;
            FiftyLashingsTimer = 10000;
            HeavensFuryTimer = 12000;

            FenixSummoned = false;
            Phased = false;

            me->RemoveAurasDueToSpell(SPELL_REPENTANCE_AURA);
        }

        void EnterCombat(Unit* pWho)
        {
            if (instance)
                    instance->SetData(DATA_HIGH_PROPHET_BARIM, IN_PROGRESS);

            DoScriptText(SAY_AGGRO, me);
        }

        void KilledUnit(Unit *victim)
        {
            DoScriptText(SAY_KILL, me);
        }

        void JustDied(Unit* /*Killer*/)
        {
            if (instance)
                    instance->SetData(DATA_HIGH_PROPHET_BARIM, DONE);

            DoScriptText(SAY_DEATH, me);
            RemoveSummons();
        }

        void RemoveSummons()
        {
            if (SummonList.empty())
                return;

            for (std::list<uint64>::const_iterator itr = SummonList.begin(); itr != SummonList.end(); ++itr)
            {
                if (Creature* pTemp = Unit::GetCreature(*me, *itr))
                    if (pTemp)
                        pTemp->DisappearAndDie();
            }
            SummonList.clear();
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            switch(summon->GetEntry())
            {
                case CREATURE_HARBINGER_OF_DARKNESS:
                    PhaseChangeTimer = 100;
                    break;
            }
        }

        void JustSummoned(Creature* pSummon)
        {
            switch (pSummon->GetEntry())
            {
                case CREATURE_BLAZE_OF_HEAVENS:
                case CREATURE_HARBINGER_OF_DARKNESS:
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                        pSummon->AI()->AttackStart(pTarget);
                    SummonList.push_back(pSummon->GetGUID());
                    break;
                case CREATURE_HEAVENS_FURY:
                    pSummon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    pSummon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    pSummon->CastSpell(pSummon, SPELL_HEAVENS_FURY_VISUAL, true);
                    pSummon->CastSpell(pSummon, SPELL_HEAVENS_FURY_AURA, true);
                    pSummon->SetReactState(REACT_PASSIVE);
                    SummonList.push_back(pSummon->GetGUID());
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HealthBelowPct(51) && Phase == PHASE_NORMAL && Phased == false)
            {
                me->SetReactState(REACT_PASSIVE);
                DoScriptText(RAND(SAY_REPETANCE_1,SAY_REPETANCE_2), me);
                DoCast(me, SPELL_REPENTANCE_AURA);
                DoCast(SPELL_PULL_ALL);
                //pInstance->DoCastSpellOnPlayers(SPELL_REPENTANCE);
                Position pos;
                me->GetPosition(&pos);
                me->SummonCreature(CREATURE_HARBINGER_OF_DARKNESS, pos, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 100);
                SetCombatMovement(false);
                Phase = PHASE_50_PRECENT;
                Phased = true;
                return;
            }

            if (PhaseChangeTimer <= diff && Phase == PHASE_50_PRECENT)
            {
                me->SetReactState(REACT_AGGRESSIVE);
                //pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_REPENTANCE);
                me->RemoveAurasDueToSpell(SPELL_REPENTANCE_AURA);
                PlagueOfAgesTimer = 7000;
                FiftyLashingsTimer = 2000;
                HeavensFuryTimer = 10000;
                Phase = PHASE_NORMAL;
            } else PhaseChangeTimer -= diff;

            if (FenixTimer <= diff && FenixSummoned == false && Phase == PHASE_NORMAL)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_BLAZE_SUMMON, true);
                FenixSummoned = true;
            } else FenixTimer -= diff;

            if (PlagueOfAgesTimer <= diff && Phase == PHASE_NORMAL)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_PLAGUE_OF_AGES, true);
                PlagueOfAgesTimer = urand(12000,16000);
            } else PlagueOfAgesTimer -= diff;

            if (FiftyLashingsTimer <= diff && Phase == PHASE_NORMAL)
            {
                DoCast(me, SPELL_FIFTY_LASHINGS);
                FiftyLashingsTimer = 20000;
            } else FiftyLashingsTimer -= diff;

            if (HeavensFuryTimer <= diff && Phase == PHASE_NORMAL)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_HEAVENS_FURY, true);
                HeavensFuryTimer = urand(15000,22000);
            } else HeavensFuryTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_high_prophet_barimAI (pCreature);
    }
};

class npc_harbinger_of_darkness : public CreatureScript
{
    public:
        npc_harbinger_of_darkness() : CreatureScript("npc_harbinger_of_darkness") { }

        struct npc_harbinger_of_darknessAI : public ScriptedAI
        {
            npc_harbinger_of_darknessAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
            }

            std::list<uint64> SummonList;

            uint32 SoulSeverTimer;
            uint32 WailOfDarknessTimer;

            void Reset()
            {
                RemoveSummons();

                SoulSeverTimer = 7000;
                WailOfDarknessTimer = 1000;
            }

            void RemoveSummons()
            {
                if (SummonList.empty())
                    return;

                for (std::list<uint64>::const_iterator itr = SummonList.begin(); itr != SummonList.end(); ++itr)
                {
                    if (Creature* pTemp = Unit::GetCreature(*me, *itr))
                        if (pTemp)
                            pTemp->DisappearAndDie();
                }
                SummonList.clear();
            }

            void JustSummoned(Creature* pSummon)
            {
                switch (pSummon->GetEntry())
                {
                    case CREATURE_VEIL_OF_TWILIGHT:
                        pSummon->SetReactState(REACT_PASSIVE);
                        SummonList.push_back(pSummon->GetGUID());
                        break;
                    case CREATURE_SOUL_FRAGMENT:
                        pSummon->SetReactState(REACT_PASSIVE);
                        pSummon->GetMotionMaster()->Clear();
                        pSummon->GetMotionMaster()->MoveFollow(me, me->GetObjectSize(), 0.0f);
                        SummonList.push_back(pSummon->GetGUID());
                }
            }

            void JustDied(Unit*)
            {
                DoCastAOE(SPELL_WAIL_OF_DARKNESS_AOE);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if (SoulSeverTimer <= diff)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(target, SPELL_SOUL_SEVER, true);
                    SoulSeverTimer = urand(12000,22000);
                } else SoulSeverTimer -= diff;

                if (WailOfDarknessTimer <= diff)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(target, SPELL_WAIL_OF_DARKNESS_RANDOM, true);
                    WailOfDarknessTimer = 2000;
                } else WailOfDarknessTimer -= diff;

                if (me->getVictim() && me->getVictim()->GetEntry() == CREATURE_SOUL_FRAGMENT)
                {
                    if (me->IsWithinMeleeRange(me->getVictim()))
                        me->Kill(me->getVictim());
                        // add buff part.
                }
                else
                    DoMeleeAttackIfReady();
            }

        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_harbinger_of_darknessAI(pCreature);
        }
};

class npc_blaze_of_heavens : public CreatureScript
{
    public:
        npc_blaze_of_heavens() : CreatureScript("npc_blaze_of_heavens") { }

        struct npc_blaze_of_heavensAI : public ScriptedAI
        {
            npc_blaze_of_heavensAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
                pInstance = me->GetInstanceScript();
            }

            InstanceScript* pInstance;

            void Reset()
            {
                me->SetSpeed(MOVE_RUN, 0.7f, true);
                DoCast(me, SPELL_BLAZE_OF_THE_HEAVENS_AURA);
                DoCast(me, SPELL_BLAZE_OF_THE_HEAVENS_SUMMON_FIRE_AURA);
            }

            void JustDied(Unit*)
            {
                me->CastSpell(me, SPELL_BLAZE_OF_THE_HEAVENS_SUMMON_EGG, true);
                me->DisappearAndDie();
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_blaze_of_heavensAI(pCreature);
        }
};

class npc_blaze_of_heavens_egg : public CreatureScript
{
    public:
        npc_blaze_of_heavens_egg() : CreatureScript("npc_blaze_of_heavens_egg") { }

        struct npc_blaze_of_heavens_eggAI : public ScriptedAI
        {
            npc_blaze_of_heavens_eggAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
            }

            uint32 RegenTimer;

            void Reset()
            {
                RegenTimer = 2000;
                me->SetHealth(me->CountPctFromMaxHealth(10));
            }

            void JustSummoned(Creature* pSummon)
            {
                switch (pSummon->GetEntry())
                {
                    case CREATURE_BLAZE_OF_HEAVENS:
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                            pSummon->AI()->AttackStart(pTarget);
                        break;
                }
            }

            void UpdateAI(const uint32 diff)
            {
                if (me->GetHealthPct() == 100)
                {
                    me->CastSpell(me, SPELL_BLAZE_SUMMON, true);
                    me->RemoveAurasDueToSpell(91179);
                    me->DisappearAndDie();
                }

                if (me->HealthBelowPct(3))
                    me->SetHealth(me->CountPctFromMaxHealth(3));

                if (RegenTimer <= diff)
                {
                    me->SetHealth(me->GetHealth() + me->CountPctFromMaxHealth(10));
                    RegenTimer = 2000;
                } else RegenTimer -= diff;
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_blaze_of_heavens_eggAI(pCreature);
        }
};

class npc_soul_fragment : public CreatureScript
{
    public:
        npc_soul_fragment() : CreatureScript("npc_soul_fragment") { }

        struct npc_soul_fragmentAI : public ScriptedAI
        {
            npc_soul_fragmentAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
            }

            void Reset()
            {
                me->SetHealth(me->CountPctFromMaxHealth(10));
            }

            void IsSummonedBy(Unit* owner)
            {
                owner->CastSpell(me, SPELL_SOUL_SEVER_CLONE, true);
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_soul_fragmentAI(pCreature);
        }
};

void AddSC_boss_high_prophet_barim()
{
    new boss_high_prophet_barim();
    new npc_harbinger_of_darkness();
    new npc_blaze_of_heavens();
    new npc_soul_fragment();
    new npc_blaze_of_heavens_egg();
}
