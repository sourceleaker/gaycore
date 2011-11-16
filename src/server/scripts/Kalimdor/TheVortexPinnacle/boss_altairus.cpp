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
 SDName: boss_altairus
 SD%Complete: 50%
 SDComment: 
 SDCategory: The Vortex Pinnacle

 Known Bugs:

 TODO:
 1. Check Timers
 2. Needs testing
 3. SPELL_CALL_THE_WIND needs scripting
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "the_vortex_pinnacle.h"

enum Spells
{
    //Altairus
	SPELL_CALL_THE_WIND       = 88244,
	SPELL_UPWIND_OF_ALTAITUS  = 88282,
	SPELL_DOWNWID_OF_ALTAITUS = 88286,
	SPELL_CHILLID_BREATH      = 88308,
	SPELL_LIGHTING_BLAST      = 88357,

    //Twister
	SPELL_TWISTING_WINDS_AURA = 88313
};

enum NPCs
{
    NPC_TWISTER = 54467
};

enum Events
{
	EVENT_CHILLID_BREATH,
	EVENT_SUMMON_TWISTERS,
	EVENT_CALL_THE_WIND,
	//EVENT_CALL_THE_WAND
};

class boss_altairus: public CreatureScript
{
    public:
        boss_altairus() : CreatureScript("boss_altairus") { }

        struct boss_altairusAI : public BossAI
        {
			boss_altairusAI(Creature * pCreature) : BossAI(pCreature, DATA_ALTAIRUS) {}

			InstanceScript* pInstance;
			EventMap events;

			void EnterCombat(Unit * /*who*/)
			{
                events.ScheduleEvent(EVENT_CHILLID_BREATH, 20000);
				events.ScheduleEvent(EVENT_SUMMON_TWISTERS, 10000);
				//events.ScheduleEvent(EVENT_CALL_THE_WIND, 250000);
				events.ScheduleEvent(EVENT_CALL_THE_WIND, 30000);
			}

            void JustDied(Unit* /*killer*/)
			{
				//me->MonsterYell(SAY_DEATH, 0, 0);
			}

			void UpdateAI(const uint32 diff)
			{
                if (!UpdateVictim())
                    return;

                /*if (someone beyond platform cords)
                {
                    DoCast(SPELL_LIGHTING_BLAST);
                }*/
				
                events.Update(diff);

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch(eventId)
					{
						case EVENT_CHILLID_BREATH:
							if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
							    DoCast(pTarget, SPELL_CHILLID_BREATH);
							events.ScheduleEvent(EVENT_CHILLID_BREATH, 20000);
							return;
						case EVENT_CALL_THE_WIND:
                            //Spell needs scripting - Upwind and Downwind should depend on how your standing
							DoCast(SPELL_CALL_THE_WIND);
							DoCastAOE(SPELL_UPWIND_OF_ALTAITUS);                                
                            DoCastAOE(SPELL_DOWNWID_OF_ALTAITUS);
							events.ScheduleEvent(EVENT_CALL_THE_WIND, 10000);
							return;
						/*case EVENT_CALL_THE_WAND:
							DoCast(SPELL_CALL_THE_WIND);
							DoCastAOE(SPELL_DOWNWID_OF_ALTAITUS);
							events.ScheduleEvent(EVENT_CALL_THE_WIND, 250000);
							return;*/
						case EVENT_SUMMON_TWISTERS:
						    for(int i=0; i<20; i++)
                            {
                                me->SummonCreature(NPC_TWISTER, me->GetPositionX()+rand()%10, me->GetPositionY()+rand()%10, me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                            }
							events.ScheduleEvent(EVENT_SUMMON_TWISTERS, 60000);
							return;
                    }
                }
				DoMeleeAttackIfReady();
            }
        };

    CreatureAI* GetAI(Creature* creature) const
    {
		return new boss_altairusAI(creature);
    }
};


class npc_altairus_vortex : public CreatureScript
{
public:
    npc_altairus_vortex() : CreatureScript("npc_altairus_vortex") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_altairus_vortexAI (creature);
    }

    struct npc_altairus_vortexAI : public ScriptedAI
    {
        npc_altairus_vortexAI(Creature* creature) : ScriptedAI(creature) {}

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MoveRandom(40.0f);

            me->AddAura(SPELL_TWISTING_WINDS_AURA, me);
        }

        void UpdateAI(const uint32 diff)
        {

        }
    };

};

void AddSC_boss_altairus()
{
    new boss_altairus();
    new npc_altairus_vortex();
};