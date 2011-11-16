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
 SDName: boss_highpriest_azil
 SD%Complete: 75%  
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
    SPELL_CURSE_OF_BLOOD                   = 92663,  
    SPELL_SUMMON_GRAVITY_WELL              = 79340,   
    SPELL_FORCE_GRIP                       = 79351,  
    SPELL_ENERGY_SHIELD                    = 82858,
    SPELL_SUMMON_SEISMIC_SHARD             = 86856,
    SPELL_SEISMIC_SHARD_EFFECT             = 86862,  //Effect: Trigger Spell from Target with Caster as Target
    SPELL_SEISMIC_SHARD_AURA               = 86863,  //Effect: Apply Aura: Control Vehicle
    SPELL_SEISMIC_SHARD_DMG                = 92665,  

    //Gravity Well
    SPELL_GRAVITY_WELL                     = 79249  //First Summon Triggers
};

enum NPCs
{
    NPC_DEVOUT_FOLLOWER   = 42428
};

enum Gameobjects
{

};

enum Events
{
    EVENT_CURSE                = 1,
    EVENT_GRAVITY_WELL         = 2,
    EVENT_FORCE_GRIP           = 3,
    EVENT_ENERGY_SHIELD        = 4,
    EVENT_REMOVE_ENERGY_SHIELD = 5,
    EVENT_SEISMIC_SHARD        = 6
};

enum Timers
{
    //Not Used
};

class boss_azil : public CreatureScript
{
    public:
        boss_azil() : CreatureScript("boss_azil") { }

        struct boss_azilAI : public BossAI
        {
            boss_azilAI(Creature* creature) : BossAI(creature, DATA_HIGH_PRIESTESS_AZIL)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_HIGH_PRIESTESS_AZIL, NOT_STARTED);
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_HIGH_PRIESTESS_AZIL, IN_PROGRESS);
                
                DoCast(me, SPELL_ENERGY_SHIELD);

                events.ScheduleEvent(EVENT_CURSE, 10000);
                events.ScheduleEvent(EVENT_GRAVITY_WELL, 15000);
                events.ScheduleEvent(EVENT_FORCE_GRIP, 12000);
                //events.ScheduleEvent(EVENT_ENERGY_SHIELD, 20000);
                events.ScheduleEvent(EVENT_REMOVE_ENERGY_SHIELD, 20000);
                events.ScheduleEvent(EVENT_SEISMIC_SHARD, 25000);

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
                    //if(phase == 1)
                    //{
                    switch(eventId)
                    {
                        case EVENT_CURSE: 
                            DoCast(me->getVictim(), SPELL_CURSE_OF_BLOOD);
                            events.ScheduleEvent(EVENT_CURSE, 10000);
                            break;
                        case EVENT_GRAVITY_WELL:
                            DoCast(SPELL_SUMMON_GRAVITY_WELL);
                            events.ScheduleEvent(EVENT_GRAVITY_WELL, urand(15000, 22000));
                            break;
                        case EVENT_FORCE_GRIP:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                                DoCast(target, SPELL_FORCE_GRIP);
                            events.ScheduleEvent(EVENT_FORCE_GRIP, 15000);
                            break;
                        case EVENT_REMOVE_ENERGY_SHIELD:
                            me->RemoveAura(SPELL_ENERGY_SHIELD);
                            events.ScheduleEvent(EVENT_ENERGY_SHIELD, 30000);
                            break;
                        case EVENT_ENERGY_SHIELD:
                            DoCast(me, SPELL_ENERGY_SHIELD);
                            events.ScheduleEvent(EVENT_REMOVE_ENERGY_SHIELD, 20000);
                            break;
                        //} else
                        case EVENT_SEISMIC_SHARD:
                            //Seismic Shard Event
                            events.ScheduleEvent(EVENT_SEISMIC_SHARD, 45000);
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
                    instance->SetData(DATA_HIGH_PRIESTESS_AZIL, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_azilAI(creature);
        }
};

class mob_gravity_well : public CreatureScript
{
public:
    mob_gravity_well() : CreatureScript("mob_gravity_well") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_gravity_wellAI(creature);
    }

    struct mob_gravity_wellAI : public Scripted_NoMovementAI
    {
        mob_gravity_wellAI(Creature* creature) : Scripted_NoMovementAI(creature)
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

            DoCast(me, SPELL_GRAVITY_WELL);
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

void AddSC_boss_azil() 
{
    new boss_azil();
    new mob_gravity_well();
}