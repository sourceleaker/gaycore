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
 SDName: boss_rajh
 SD%Complete: 75%  
 SDComment: Tested and Fixed most bugs
 SDCategory: Halls Of Origination

 Known Bugs:
 1. Sun Orb has no script
 2. First does explosion after that he jumps
 3. Fix Tornado Fire Trail

 TODO:
 1. Check Timers 
 */
                             
#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "halls_of_origination.h"

enum Spells
{
    //Rajh
    SPELL_SUN_STRIKE           = 73872,
    SPELL_INFERNO_LEAP_CAST    = 87653,
    SPELL_INFERNO_LEAP         = 87647, //Value: 32375 to 37625
    SPELL_INFERNO_LEAP_2       = 89876, //Value: 120250 to 139750
    SPELL_SUMMON_SUN_ORB       = 80352,
    SPELL_BLESSING_OF_THE_SUN  = 76352,
    SPELL_SUMMON_SOLAR_WIND    = 74104,

    //Solar Wind
    SPELL_FIRE_AURA            = 74109,
    SPELL_SOLAR_WIND           = 89130,
    SPELL_SOLAR_FIRE           = 89131,

    //Stop Energy Regen
    SPELL_NO_ENERGY_REGEN      = 72242
};

enum Texts
{
    SAY_AGGRO                = 0,
    SAY_ENERGIZE             = 1,
    SAY_KILL_1               = 2,
    SAY_KILL_2               = 2,
    SAY_DEATH                = 3
};

enum EnergizeCords
{
    //Find cords for the center of room
    X = -319,
    Y = 193,
    Z = 344
};

enum Events
{
    EVENT_SUN_STRIKE           = 1,
    EVENT_INFERNO_LEAP_CAST    = 2,
    EVENT_INFERNO_LEAP_JUMP    = 3,
    EVENT_INFERNO_LEAP_DMG     = 4,
    EVENT_BLESSING_OF_THE_SUN  = 5,
    EVENT_SUMMON_SUN_ORB       = 6,
    EVENT_SUMMON_SOLAR_WIND    = 7
    
};

enum BossPhases
{
    PHASE_NORMAL = 1,
    PHASE_ENERGIZE = 2
};


class boss_rajh : public CreatureScript
{
    public:
        boss_rajh() : CreatureScript("boss_rajh") { }

        struct boss_rajhAI : public BossAI
        {
            boss_rajhAI(Creature* creature) : BossAI(creature, DATA_RAJH)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;
            uint8 Phase;
            int32 INF_X;
            int32 INF_Y;
            int32 INF_Z;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_RAJH, NOT_STARTED);
                
                me->setPowerType(POWER_ENERGY);
                me->SetPower(POWER_ENERGY, me->GetMaxPower(POWER_ENERGY));
                DoCast(me, SPELL_NO_ENERGY_REGEN, true);
                Phase = PHASE_NORMAL;
                INF_X = 0;
                INF_Y = 0;
                INF_Z = 0;
            }

            void EnterCombat(Unit* /*who*/)
            {
                DoScriptText(SAY_AGGRO, me);

                if (instance)
                    instance->SetData(DATA_RAJH, IN_PROGRESS);
                
                me->setPowerType(POWER_ENERGY);
                me->SetPower(POWER_ENERGY, me->GetMaxPower(POWER_ENERGY));

                events.ScheduleEvent(EVENT_SUN_STRIKE, 10000);
                events.ScheduleEvent(EVENT_INFERNO_LEAP_CAST, 15000);
                events.ScheduleEvent(EVENT_BLESSING_OF_THE_SUN, 12000);
                events.ScheduleEvent(EVENT_SUMMON_SUN_ORB, 25000);
                events.ScheduleEvent(EVENT_SUMMON_SOLAR_WIND, 20000);

                DoZoneInCombat();
            }

            void KilledUnit(Unit* /*Killed*/)
            {
                Talk(RAND(SAY_KILL_1, SAY_KILL_2));
            }

            void EnergizeSun()
            {
                Phase = PHASE_ENERGIZE;
                DoScriptText(SAY_ENERGIZE, me);
                me->GetMotionMaster()->MovePoint(0, X, Y, Z);  //Find Middle Cords
                DoCast(me, SPELL_BLESSING_OF_THE_SUN);
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;

                if (Phase == PHASE_ENERGIZE)
                    me->StopMoving();

                if (me->HasAura(SPELL_BLESSING_OF_THE_SUN))
                    return;
                else 
                    Phase = PHASE_NORMAL;
                
                events.Update(diff);

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

                while(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_SUN_STRIKE:
                            DoCast(me->getVictim(), SPELL_SUN_STRIKE);
                            events.ScheduleEvent(EVENT_SUN_STRIKE, 10000);
                            break;
                        /*
                        case EVENT_INFERNO_LEAP_CAST:                           
                            DoCast(me, SPELL_INFERNO_LEAP_CAST);
                            events.ScheduleEvent(EVENT_INFERNO_LEAP_DMG, 1500); 
                            break;
                        case EVENT_INFERNO_LEAP_JUMP:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                            {
                                INF_X = target->GetPositionX();
                                INF_Y = target->GetPositionY();
                                INF_Z = target->GetPositionZ();
                                me->GetMotionMaster()->MoveJump(INF_X, INF_Y, INF_Z, 0.75, 0.75);
                            }  
                            events.ScheduleEvent(EVENT_INFERNO_LEAP_DMG, urand(1000, 2000));
                            break;
                        case EVENT_INFERNO_LEAP_DMG:
                            me->GetMotionMaster()->Clear(true);
                            DoCast(SPELL_INFERNO_LEAP);
                            events.ScheduleEvent(EVENT_INFERNO_LEAP_CAST, urand(25000, 32000));
                            break;
                            */
                        case EVENT_BLESSING_OF_THE_SUN:
                            if (me->GetPower(POWER_ENERGY) == 0)
                                EnergizeSun();
                            events.ScheduleEvent(EVENT_BLESSING_OF_THE_SUN, 15000);
                            break;
                        case EVENT_SUMMON_SUN_ORB:
                            DoCast(SPELL_SUMMON_SUN_ORB);
                            events.ScheduleEvent(EVENT_SUMMON_SUN_ORB, 25000);
                            break;
                        case EVENT_SUMMON_SOLAR_WIND:
                            DoCast(SPELL_SUMMON_SOLAR_WIND);
                            events.ScheduleEvent(EVENT_SUMMON_SOLAR_WIND, 30000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                DoScriptText(SAY_DEATH, me);

                if (instance)
                    instance->SetData(DATA_RAJH, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_rajhAI(creature);
        }
};

class mob_solar_wind : public CreatureScript
{
public:
    mob_solar_wind() : CreatureScript("mob_solar_wind") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_solar_windAI(creature);
    }

    struct mob_solar_windAI : public ScriptedAI
    {
        mob_solar_windAI(Creature* creature) : ScriptedAI(creature)
        {
            m_pInstance = (InstanceScript*)creature->GetInstanceScript();
            Reset();
        }

        InstanceScript* m_pInstance;
        uint32 FlameTimer;

        void EnterCombat(Unit* /*who*/)
        {
        }

        void Reset()
        {
            DoCast(me, SPELL_FIRE_AURA);
            me->GetMotionMaster()->MoveRandom(25.0f);
            me->SetReactState(REACT_PASSIVE);
            FlameTimer = 1500;
        }

        void UpdateAI(const uint32 diff)
        {
            if (FlameTimer <= diff)
            {
                if (Creature *fire = me->SummonCreature(39635, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 3.12f,TEMPSUMMON_CORPSE_DESPAWN, 1000))
                {
                    fire->setFaction(14);
                    fire->SetReactState(REACT_PASSIVE);
                    fire->SetVisible(true);   
                    fire->AddAura(SPELL_SOLAR_FIRE, fire);
                    fire->StopMoving();
                }
                FlameTimer = 1500;
            } else FlameTimer -= diff;
        }

        void JustDied(Unit* /*killer*/)
        {
            // used to despawn corpse immediately
            me->DespawnOrUnsummon();
        }
    };

};

class mob_sun : public CreatureScript
{
public:
    mob_sun() : CreatureScript("mob_sun") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_sunAI(creature);
    }

    struct mob_sunAI : public ScriptedAI
    {
        mob_sunAI(Creature* creature) : ScriptedAI(creature)
        {
            m_pInstance = (InstanceScript*)creature->GetInstanceScript();
            Reset();
        }

        InstanceScript* m_pInstance;

        void EnterCombat(Unit* /*who*/)
        {
            //DoCast(me, SPELL_SOLAR_FIRE);
        }

        void Reset()
        {
            //DoCast(me, SPELL_SOLAR_FIRE);
            me->SetVisible(true);
            me->SetReactState(REACT_PASSIVE);
        }

        void JustDied(Unit* /*killer*/)
        {
            // used to despawn corpse immediately
            me->DespawnOrUnsummon();
        }
    };

};



void AddSC_boss_rajh()
{
    new boss_rajh;
    new mob_solar_wind;
    new mob_sun;
}