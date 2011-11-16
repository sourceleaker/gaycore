/*
 * Copyright (C) 2011 Atlantiss <http://www.atlantiss.pl>
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
 SDName: boss_grand_vizier_ertan
 SD%Complete: 30%
 SDComment: 
 SDCategory: The Vortex Pinnacle

 Known Bugs:

 TODO:
 1. Check Timers
 2. Needs testing
 3. Implement SummonVortex(), SummonTempest(), CheckPlayers()
 4. Implement Storm Edge
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "the_vortex_pinnacle.h"

#define SAY_AGGRO "Filthy beasts! Your presence in Skywall will not be tolerated!"
#define SAY_RANDOM "Ravaged!"

enum Spells
{
    //Ertan
    SPELL_N_BOLT                     = 86331, //Lightning Bolt
    SPELL_H_BOLT                     = 93990, //Lightning Bolt HEROIC
    SPELL_SUMMON_TEMPEST             = 86340,
    SPELL_STORM_EDGE                 = 93992, //Deals DMG to players outside the "cyclone ring"
    //SPELL_LIGHTNING_BOLT             = 93990,

    //Lurking Tempest
    SPELL_BOLT                       = 89105,
    SPELL_LURK                       = 85467,
    SPELL_FEGIN_DEATH                = 85267,
    
    //VORTEX
    SPELL_CYCLONE_SHIELD             = 86267
};

enum NPCs
{
    NPC_VORTEX   = 46007
};

enum Events
{
	EVENT_BOLT,
	EVENT_SUMMON_TEMPEST,
	EVENT_STROM_EDGE,
};

class boss_vizir_ertan: public CreatureScript
{
    public:
        boss_vizir_ertan() : CreatureScript("boss_vizir_ertan") { }

        struct boss_vizir_ertanAI : public ScriptedAI
        {
			boss_vizir_ertanAI(Creature * pCreature) : ScriptedAI(pCreature) {}

			InstanceScript* pInstance;
			EventMap events;

			void EnterCombat(Unit * /*who*/)
			{			
				me->MonsterYell(SAY_AGGRO, 0, 0);
                SummonVortex();
                events.ScheduleEvent(EVENT_SUMMON_TEMPEST, 60000);
				events.ScheduleEvent(EVENT_BOLT, 5000);
			}

            void JustDied(Unit* /*killer*/)
			{
				//me->MonsterYell(SAY_DEATH, 0, 0);
			}

            void CheckPlayers()
            {
                //If players/player to far away then cast on them SPELL_STORM_EDGE

            }

            void SummonVortex()
            {

            }

            void SummonTempest()
            {

            }

			void UpdateAI(const uint32 diff)
			{
                //CheckPlayers()

				if (!UpdateVictim())
                    return;

				events.Update(diff);

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch(eventId)
					{
						case EVENT_BOLT:
                            
                            DoCast(me->getVictim(), SPELL_N_BOLT);
							events.ScheduleEvent(EVENT_BOLT, 60000);
							return;
						case EVENT_SUMMON_TEMPEST:
							SummonTempest();
							events.ScheduleEvent(EVENT_SUMMON_TEMPEST, 90000);
							return;
					}
				}
				DoMeleeAttackIfReady();
			}
		};

    CreatureAI* GetAI(Creature* pCreature) const
    {
		return new boss_vizir_ertanAI(pCreature);
    }
};

class npc_ertan_vortex : public CreatureScript
{
public:
    npc_ertan_vortex() : CreatureScript("npc_ertan_vortex") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ertan_vortexAI (creature);
    }

    struct npc_ertan_vortexAI : public ScriptedAI
    {
        npc_ertan_vortexAI(Creature* creature) : ScriptedAI(creature) {}

        void Reset()
        {
            // Instead of random movement should move in a circle pattern??
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MoveRandom(40.0f);

            me->AddAura(SPELL_CYCLONE_SHIELD, me);
        }

        void UpdateAI(const uint32 diff)
        {

        }
    };

};

class npc_lurking_tempest : public CreatureScript
{
public:
    npc_lurking_tempest() : CreatureScript("npc_lurking_tempest") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lurking_tempestAI (creature);
    }

    struct npc_lurking_tempestAI : public ScriptedAI
    {
        npc_lurking_tempestAI(Creature* creature) : ScriptedAI(creature) {}
        uint32 BoltTimer;

        void Reset()
        {
            BoltTimer = 2000;
        }

        bool PlayerWatching()
        {
            if (1)
                return true;
            
            if (2)
                return false;
        }

        void SetFeignDeath()
        {

        }

        void RemoveFeignDeath()
        {

        }

        void UpdateAI(const uint32 diff)
        {
            //Check if someone is looking at me
            if (PlayerWatching())
            {
                SetFeignDeath();
                return;
            }
            else
            {
                RemoveFeignDeath();
            }

            if (!UpdateVictim())
                    return;
            
            if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

            if (BoltTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                    DoCast(target, SPELL_BOLT);
                BoltTimer = 3000;
            } else BoltTimer -= diff;

        }
    };

};

void AddSC_boss_vizir_ertan()
{
    new boss_vizir_ertan();
    new npc_ertan_vortex();
    new npc_lurking_tempest();
};