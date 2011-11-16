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
 SDName: boss_ozruk
 SD%Complete: 85%  
 SDComment: 
 SDCategory: The Stonecore

 Known Bugs:

 TODO:
 1. Needs Testing
 2. Missing ScriptTexts
 3. Check Timers 
 */
                             
#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "the_stonecore.h"

enum Spells
{
    //Ozruk
    SPELL_GROUND_SLAM                      = 78903,  
    H_SPELL_GROUND_SLAM                    = 92410,  //Triggers Ground Slam + Rupture
    SPELL_RUPTURE                          = 92656,  //Heroic Only - after Ground Slam
    SPELL_BULWARK                          = 78939,  //First Summon Triggers
    SPELL_SPIKE_SHIELD                     = 78835,  //Triggers Summon Objects and deal DMG
    SPELL_SHATTER                          = 78807,
    SPELL_PARALYZE                         = 92426,  //Heroic Only
    SPELL_ENRAGE                           = 80467   //Used when low on HP
};

enum Gameobjects
{

};

enum Events
{
    EVENT_GROUND_SLAM          = 1,
    EVENT_BUFF_SELF            = 2,
    //EVENT_BULWARK            = 2,
    //EVENT_SPIKE_SHIELD       = 3,
    EVENT_SHATTER              = 3,
    EVENT_PARALYZE             = 4
};

enum Timers
{   //Not Used ;]
    TIMER_GROUND_SLAM          = 7500,
    TIMER_BULWARK              = 20000,
    TIMER_SPIKE_SHIELD         = 10000,
    TIMER_SHATTER              = 5000,
    TIMER_PARALYZE             = 25000
};

class boss_ozruk : public CreatureScript
{
    public:
        boss_ozruk() : CreatureScript("boss_ozruk") { }

        struct boss_ozrukAI : public BossAI
        {
            boss_ozrukAI(Creature* creature) : BossAI(creature, DATA_OZRUK_EVENT)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_OZRUK_EVENT, NOT_STARTED);
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_OZRUK_EVENT, IN_PROGRESS);

                events.ScheduleEvent(EVENT_GROUND_SLAM, 10000);
                events.ScheduleEvent(EVENT_BUFF_SELF, 10000);
                //events.ScheduleEvent(EVENT_BULWARK, 15000);
                //events.ScheduleEvent(EVENT_SPIKE_SHIELD, 12000);
                events.ScheduleEvent(EVENT_SHATTER, 25000);
                //events.ScheduleEvent(EVENT_PARALYZE, 25000);

                DoZoneInCombat();
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

                while(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_GROUND_SLAM:
                            if (IsHeroic())
                                DoCast(me->getVictim(), H_SPELL_GROUND_SLAM);
                            else
                                DoCast(me->getVictim(), SPELL_GROUND_SLAM);
                            events.ScheduleEvent(EVENT_GROUND_SLAM, 20000);
                            break;
                        case EVENT_BUFF_SELF:
                            {
                            uint8 buff = urand(0,1);
                            if(buff == 0)
                                DoCast(me, SPELL_BULWARK);
                            else
                                DoCast(me, SPELL_SPIKE_SHIELD);
                            events.ScheduleEvent(EVENT_BUFF_SELF, urand(20000, 25000));
                            break;
                            }
                        case EVENT_SHATTER:
                            DoCast(SPELL_SHATTER);
                            if (IsHeroic())
                                events.ScheduleEvent(EVENT_PARALYZE, 1000);
                            else
                                DoCast(SPELL_SHATTER);
                            events.ScheduleEvent(EVENT_SHATTER, 35000);
                            break;
                        case EVENT_PARALYZE:
                            DoCastAOE(SPELL_PARALYZE);
                            DoCast(SPELL_SHATTER);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_OZRUK_EVENT, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_ozrukAI(creature);
        }
};

void AddSC_boss_ozruk() 
{
    new boss_ozruk();
}