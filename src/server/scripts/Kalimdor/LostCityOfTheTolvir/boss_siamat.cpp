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
 SDName: boss_siamat
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
    // Siamat - Phase 1
    SPELL_DEFLECTING_WINDS      = 84589,
    SPELL_STORM_BOLT            = 95180,
    SPELL_SUMMON_CLOUD_BURST    = 83790,

    // Siamat - Phase 2
    SPELL_WAILING_WINDS         = 83066,
    SPELL_ABSORB_STORMS         = 83151,
    
    // Cloud Burst
    SPELL_CLOUD_BURST           = 83051,
    
    // Servant
    SPELL_LIGHTNING_NOVA        = 84544,
    SPELL_THUNDER_CRASH         = 84521,
    SPELL_LIGHTNING_CHARGE      = 91872,

    // Minion
    SPELL_CHAIN_LIGHTNING       = 83455,
    SPELL_TEMPSEST_STORM_MODEL  = 83170,
    SPELL_TEMPSEST_STORM        = 90030,
    SPELL_DEPLETION             = 84550
};

enum NPCs
{
    NPC_SERVANT   = 45269,
    NPC_MINION    = 44704
};

class boss_siamat: public CreatureScript
{
public: 
 boss_siamat() : CreatureScript("boss_siamat") { } 

 struct boss_siamatAI : public BossAI
    {
        boss_siamatAI(Creature *c) : BossAI(c, DATA_SIAMAT) 
        {}

		uint32 stormBoltTimer;
		uint32 summonCloudTimer;
        uint32 summonServantTimer;
        uint32 summonMinionTimer;
        uint32 changePhaseTimer;
        uint8 Phase;
        uint8 servantCount;

        void Reset()
        {
            if (instance)
                    instance->SetData(DATA_SIAMAT, NOT_STARTED);

            Phase = 0;
            servantCount = 0;
            stormBoltTimer = 3000;
            summonCloudTimer = 10000;
            summonServantTimer = 15000;
            summonMinionTimer = 5000;
        }

        void EnterCombat(Unit* /*who*/) 
        {
            if (instance)
                    instance->SetData(DATA_SIAMAT, IN_PROGRESS);

            DoCast(me, SPELL_DEFLECTING_WINDS);
            Phase = 1;
        }

        void JustDied(Unit* /*killer*/)
        {
            if (instance)
                    instance->SetData(DATA_SIAMAT, DONE);
        }

        void ChangePhase()
        {
            DoCastAOE(SPELL_WAILING_WINDS);
            me->RemoveAura(SPELL_DEFLECTING_WINDS);
            Phase = 2;
        }

        void UpdateAI(const uint32 diff)
        {
               if (!UpdateVictim())
                    return;
               
               if(Phase == 1)
               {
                    if (stormBoltTimer <= diff)
                    {
                        DoCast(SPELL_STORM_BOLT);
                        stormBoltTimer = 6000;
                    } else stormBoltTimer -= diff;

                    if (summonCloudTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            DoCast(pTarget, SPELL_SUMMON_CLOUD_BURST);
                        summonCloudTimer = 20000;
                    } else summonCloudTimer -= diff;

                    if (summonServantTimer <= diff)
                    {
                        //Find Summon Cords
                        me->SummonCreature(NPC_SERVANT, 0, 0, 0);
                        servantCount=servantCount+1;   
                        if(servantCount == 3)
                            changePhaseTimer = 20000;
                        else
                            summonServantTimer = 45000;
                    } else summonServantTimer -= diff;

                    if (changePhaseTimer <= diff)
                    {
                        ChangePhase();
                    } else changePhaseTimer -= diff;

                    if (summonMinionTimer <= diff)
                    {
                        //Find Summon Cords
                        me->SummonCreature(NPC_MINION, 0, 0, 0);
                        summonMinionTimer = 30000;
                    } else summonMinionTimer -= diff;
               }

               if(Phase == 2)
               {
                   if (summonMinionTimer <= diff)
                   {
                       //Find Summon Cords
                       me->SummonCreature(NPC_MINION, 0, 0, 0);
                       summonMinionTimer = 30000;
                   } else summonMinionTimer -= diff;

                   if (stormBoltTimer <= diff)
                   {
                       DoCast(SPELL_STORM_BOLT);
                       stormBoltTimer = 6000;
                   } else stormBoltTimer -= diff;

                   if (Unit* target = me->FindNearestCreature(NPC_MINION, 5))
                       if (me->IsInRange(target, 0, 3))
                           DoCast(SPELL_ABSORB_STORMS);
               }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_siamatAI (pCreature);
    }

};

class mob_siamat_servant: public CreatureScript
{
public: 
 mob_siamat_servant() : CreatureScript("mob_siamat_servant") { } 

 struct mob_siamat_servantAI : public ScriptedAI
    {
        mob_siamat_servantAI(Creature *c) : ScriptedAI(c) {}

		uint32 NovaTimer;
		uint32 CrashTimer;
        bool Charge;

        void Reset()
        {
            Charge = false;
            NovaTimer = 15000;
            CrashTimer = 6000;
        }

        void EnterCombat(Unit* /*who*/) 
        {
        }

        void JustDied(Unit* /*killer*/)
        {
        }

        void UpdateAI(const uint32 diff)
        {
               if (!UpdateVictim())
                    return;

                if (NovaTimer <= diff)
                {
                    DoCast(SPELL_LIGHTNING_NOVA);
                    NovaTimer = 40000;
                } else NovaTimer -= diff;

                if (CrashTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_THUNDER_CRASH);
                    CrashTimer = 20000;
                } else CrashTimer -= diff;

                if (HealthBelowPct(5) && Charge == false && IsHeroic())
                {
                    DoCast(SPELL_LIGHTNING_CHARGE);
                    Charge = true;
                }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_siamat_servantAI (pCreature);
    }

};

class mob_siamat_minion: public CreatureScript
{
public: 
 mob_siamat_minion() : CreatureScript("mob_siamat_minion") { } 

 struct mob_siamat_minionAI : public ScriptedAI
    {
        mob_siamat_minionAI(Creature *c) : ScriptedAI(c) {}

		uint32 ChainTimer;
        uint32 StormTimer;
        bool MeStorm;

        void Reset()
        {
            MeStorm = false;
            DoCast(me, SPELL_DEPLETION);
            ChainTimer = urand (5000, 15000);
            StormTimer = 1000;
        }

        void EnterCombat(Unit* /*who*/) 
        {
        }

        void JustDied(Unit* /*killer*/)
        {
        }

        void UpdateAI(const uint32 diff)
        {
               if (!UpdateVictim())
                    return;

                if (ChainTimer <= diff && MeStorm == false)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_CHAIN_LIGHTNING);
                    ChainTimer = 20000;
                } else ChainTimer -= diff;

                if (HealthBelowPct(6) && MeStorm == false)
                {
                    DoCast(me, SPELL_TEMPSEST_STORM_MODEL);
                    me->RemoveAura(SPELL_DEPLETION);
                    MeStorm = true;
                }

                if (StormTimer <= diff && MeStorm == true)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, true))
                        if (me->IsInRange(target, 0, 5))
                            DoCast(SPELL_TEMPSEST_STORM);
                    StormTimer = 1000;
                } else StormTimer -= diff;
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_siamat_minionAI (pCreature);
    }

};
void AddSC_boss_siamat() 
{
    new boss_siamat();
    new mob_siamat_servant();
    new mob_siamat_minion();
}