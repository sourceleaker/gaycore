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
 SDName: boss_lockmaw
 SD%Complete: 90%
 SDComment: 
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
    // Lockmaw
    SPELL_DUST_FLAIL            = 81642,
    SPELL_SCENT_OF_BLOOD        = 81690,
    SPELL_VENOMOUS_RAGE         = 81706,
    SPELL_VISCOUS_POISON        = 81630,
    
    // Augh
    SPELL_PARALYTIC_BLOW_DART   = 84799,
    SPELL_DRAGON_BREATH         = 90026,
    SPELL_FRENZY                = 91415,
    SPELL_WHIRLWIND             = 91408
};

const Position SummonLocations[6] =
{
    //Frenzied Crocolisks
    {-11033.29f, -1674.57f, -0.56f, 1.09f},
    {-11029.84f, -1673.09f, -0.37f, 2.33f},
    {-11007.25f, -1666.37f, -0.23f, 2.46f},
    {-11006.83f, -1666.85f, -0.25f, 2.23f},
    {-11031.00f, -1653.59f,  0.86f, 2.42f},
    {-11069.23f, -1667.72f,  0.75f, 0.72f},
};

class boss_lockmaw : public CreatureScript
{
    public:
        boss_lockmaw() : CreatureScript("boss_lockmaw") {}

        CreatureAI* GetAI(Creature* pCreature) const
        {
           return new boss_lockmawAI(pCreature);
        }

        struct boss_lockmawAI : public BossAI
        {
            boss_lockmawAI(Creature* pCreature) : BossAI(pCreature, DATA_LOCKMAW)
            {
                pInstance = pCreature->GetInstanceScript();
            }

            InstanceScript* pInstance;

            uint32 DustTailTimer;
            uint32 ScentOfBloodTimer;
            uint32 ViscousPoisonTimer;
            uint32 WhirlwindTimer;

            bool Rage;
            std::list<uint64> SummonList;

            void Reset ()
            {
                if (instance)
                    instance->SetData(DATA_LOCKMAW, NOT_STARTED);

                DustTailTimer = 15000;
                ScentOfBloodTimer = 13000;
                ViscousPoisonTimer = 7000;
                WhirlwindTimer = 35000;

                Rage = false;
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

            void JustSummoned(Creature* pSummon)
            {
                switch (pSummon->GetEntry())
                {
                    case CREATURE_AUGH_SCENT:
                    case CREATURE_AUGH_WHIRLWIND:
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                            pSummon->AI()->AttackStart(pTarget);
                        SummonList.push_back(pSummon->GetGUID());
                        break;
                }
            }

            void JustDied(Unit* /*Kill*/)
            {
                if (instance)
                    instance->SetData(DATA_LOCKMAW, DONE);

                if (IsHeroic())
                    me->SummonCreature(CREATURE_AUGH, SummonLocations[5], TEMPSUMMON_MANUAL_DESPAWN);
            }

            void EnterCombat(Unit* /*Ent*/)
            {
                if (instance)
                    instance->SetData(DATA_LOCKMAW, IN_PROGRESS);

                DoZoneInCombat();
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if (DustTailTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_DUST_FLAIL);
                    DustTailTimer = 25000;
                } else DustTailTimer -= diff;

                if (ScentOfBloodTimer <= diff)
                {
                    me->SummonCreature(CREATURE_AUGH_SCENT, SummonLocations[4], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15000);
                    ScentOfBloodTimer = 45000;
                } else ScentOfBloodTimer -= diff;

                if (WhirlwindTimer <= diff)
                {
                    me->SummonCreature(CREATURE_AUGH_WHIRLWIND, SummonLocations[4], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 20000);
                    WhirlwindTimer = 45000;
                } else WhirlwindTimer -= diff;

                if (ViscousPoisonTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_VISCOUS_POISON);
                    ViscousPoisonTimer = 12000;
                } else ViscousPoisonTimer -= diff;

                if (HealthBelowPct(31) && Rage == false)
                {
                    DoCast(me, SPELL_VENOMOUS_RAGE);
                    Rage = true;
                }

                DoMeleeAttackIfReady();
            }
        };
};

class boss_augh: public CreatureScript
{
public: 
 boss_augh() : CreatureScript("boss_augh") { } 

 struct boss_aughAI : public BossAI
    {
        boss_aughAI(Creature *c) : BossAI(c, DATA_AUGH) 
        {}

		uint32 whirlwindTimer;
		uint32 dartTimer;
        uint32 dragonbreathTimer;
        bool Rage;

        void Reset()
        {
            if (instance)
                    instance->SetData(DATA_AUGH, NOT_STARTED);

            Rage = false;
            whirlwindTimer = 15000;
            dartTimer = 6000;
            dragonbreathTimer = 10500;
        }

        void EnterCombat(Unit* /*who*/) 
        {
            if (instance)
                    instance->SetData(DATA_AUGH, IN_PROGRESS);
        }

        void JustDied(Unit* /*killer*/)
        {
            if (instance)
                    instance->SetData(DATA_AUGH, DONE);
        }

        void UpdateAI(const uint32 diff)
        {
               if (!UpdateVictim())
                    return;

                if (whirlwindTimer <= diff)
                {
                    DoCast(SPELL_WHIRLWIND);
                    whirlwindTimer = 40000;
                } else whirlwindTimer -= diff;

                if (dartTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_PARALYTIC_BLOW_DART);
                    dartTimer = 20000;
                } else dartTimer -= diff;

                if (dragonbreathTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_DRAGON_BREATH);
                    dragonbreathTimer = 35000;
                } else dragonbreathTimer -= diff;

                if (HealthBelowPct(31) && Rage == false)
                {
                    DoCast(me, SPELL_FRENZY);
                    Rage = true;
                }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_aughAI (pCreature);
    }

};

class npc_augh_scent : public CreatureScript
{
    public:
        npc_augh_scent() : CreatureScript("npc_augh_scent") { }

        struct npc_augh_scentAI : public ScriptedAI
        {
            npc_augh_scentAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
            }

            uint32 ParalyticBlowDartTimer;

            bool Scent;

            void Reset()
            {
                ParalyticBlowDartTimer = 3000;
                Scent = false;
            }

            void UpdateAI(const uint32 diff)
            {
                if (Scent == false)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    {
                        Talk(0);
                        DoCast(pTarget, SPELL_SCENT_OF_BLOOD);
                        for(uint8 i=0; i<4; i++)
                        {
                            Creature* Crocolisk = me->SummonCreature(CREATURE_FRENZIED_CROCOLISK, SummonLocations[i], TEMPSUMMON_CORPSE_DESPAWN);
                            Crocolisk->AddThreat(pTarget, 0.0f);
                            DoZoneInCombat(Crocolisk);
                        }
                    }
                    Scent = true;
                }

                if (ParalyticBlowDartTimer <= diff)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_PARALYTIC_BLOW_DART, true);
                    ParalyticBlowDartTimer = 15000;
                } else ParalyticBlowDartTimer -= diff;
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_augh_scentAI(pCreature);
        }
};

class npc_augh_whirlwind : public CreatureScript
{
    public:
        npc_augh_whirlwind() : CreatureScript("npc_augh_whirlwind") { }

        struct npc_augh_whirlwindAI : public ScriptedAI
        {
            npc_augh_whirlwindAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
            }

            bool Targeted;

            void Reset()
            {
                Targeted = false;
            }

            void UpdateAI(const uint32 diff)
            {
                if (Targeted == false)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    {
                        DoCast(me, 84784);
                        Talk(0);
                        me->GetMotionMaster()->MoveChase(pTarget);
                    }
                    Targeted = true;
                }
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_augh_whirlwindAI(pCreature);
        }
};

void AddSC_boss_lockmaw()
{
    new boss_lockmaw();
    new boss_augh();
    new npc_augh_scent();
    new npc_augh_whirlwind();
}