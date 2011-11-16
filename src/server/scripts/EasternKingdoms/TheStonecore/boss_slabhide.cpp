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
 SDName: boss_slabhide
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
    //Slabhide
    SPELL_LAVA_FISSURE                     = 80803,  //Summons Lava Pool
    SPELL_SAND_BLAST                       = 92656,
    SPELL_SUMMON_STALACTITE_TRIGGERS       = 80656,  //First Summon Triggers
    SPELL_CRYSTAL_STORM                    = 92265,

    //Stalactite Trigger
    SPELL_SUMMON_STALACTITE                = 80647  //Triggers Summon Objects and deal DMG
};

enum NPCs
{
    NPC_LAVA_POOL   = 0
};

enum Gameobjects
{

};

enum Events
{
    EVENT_LAVA                 = 1,
    EVENT_STALACTITE           = 2,
    EVENT_SAND_BLAST           = 3,
    EVENT_CRYSTAL_STORM        = 4
};

enum Timers
{
    TIMER_LAVA                 = 7500,
    TIMER_STALACTITE           = 20000,
    TIMER_SAND_BLAST           = 15000,
    TIMER_CRYSTAL_BLAST        = 5000
};

class boss_slabhide : public CreatureScript
{
    public:
        boss_slabhide() : CreatureScript("boss_slabhide") { }

        struct boss_slabhideAI : public BossAI
        {
            boss_slabhideAI(Creature* creature) : BossAI(creature, DATA_SLABHIDE_EVENT)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_SLABHIDE_EVENT, NOT_STARTED);
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_SLABHIDE_EVENT, IN_PROGRESS);

                events.ScheduleEvent(EVENT_LAVA, 10000);
                events.ScheduleEvent(EVENT_STALACTITE, 15000);
                events.ScheduleEvent(EVENT_SAND_BLAST, 12000);
                events.ScheduleEvent(EVENT_CRYSTAL_STORM, 25000);

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
                        case EVENT_LAVA:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                                DoCast(target, SPELL_LAVA_FISSURE);
                            events.ScheduleEvent(EVENT_LAVA, 10000);
                            break;
                        case EVENT_STALACTITE:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                                DoCast(target, SPELL_SUMMON_STALACTITE_TRIGGERS);
                            events.ScheduleEvent(EVENT_STALACTITE, urand(15000, 22000));
                            break;
                        case EVENT_SAND_BLAST:
                            DoCast(SPELL_SAND_BLAST);
                            events.ScheduleEvent(EVENT_SAND_BLAST, 15000);
                            break;
                        case EVENT_CRYSTAL_STORM:
                            DoCast(SPELL_CRYSTAL_STORM);
                            events.ScheduleEvent(EVENT_CRYSTAL_STORM, 25000);
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
                    instance->SetData(DATA_SLABHIDE_EVENT, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_slabhideAI(creature);
        }
};

class mob_lava_pool : public CreatureScript
{
public:
    mob_lava_pool() : CreatureScript("mob_lava_pool") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_lava_poolAI(creature);
    }

    struct mob_lava_poolAI : public Scripted_NoMovementAI
    {
        mob_lava_poolAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            m_pInstance = (InstanceScript*)creature->GetInstanceScript();
            Reset();
        }

        InstanceScript* m_pInstance;
        uint32 despawnTimer;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);

            //DoCast();

            despawnTimer = 40000;
        }

        void UpdateAI(uint32 const diff)
        {
            if (despawnTimer <= diff)
            {
                me->ForcedDespawn();
            } else despawnTimer -= diff;
        }

        void JustDied(Unit* /*killer*/)
        {
            // used to despawn corpse immediately
            me->DespawnOrUnsummon();
        }
    };

};

class mob_stalactite : public CreatureScript
{
public:
    mob_stalactite() : CreatureScript("mob_stalactite") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_stalactiteAI(creature);
    }

    struct mob_stalactiteAI : public Scripted_NoMovementAI
    {
        mob_stalactiteAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            m_pInstance = (InstanceScript*)creature->GetInstanceScript();
            Reset();
        }

        InstanceScript* m_pInstance;
        uint32 despawnTimer;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);

            DoCast(me, SPELL_SUMMON_STALACTITE);
            despawnTimer = 30000;
        }

        void UpdateAI(uint32 const diff)
        {
            if (despawnTimer <= diff)
            {
                me->ForcedDespawn();
            } else despawnTimer -= diff;
        }

        void JustDied(Unit* /*killer*/)
        {
            // used to despawn corpse immediately
            me->DespawnOrUnsummon();
        }
    };

};

void AddSC_boss_slabhide() 
{
    new boss_slabhide();
    new mob_lava_pool();
    new mob_stalactite();
}