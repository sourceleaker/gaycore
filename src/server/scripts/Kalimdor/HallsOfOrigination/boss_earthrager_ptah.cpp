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
 SDName: boss_earthrager_ptah
 SD%Complete: 90%  
 SDComment: Tested and Fixed most bugs
 SDCategory: Halls Of Origination  

 Known Bugs:
 1. Flame Bolt not casted
 2. Quicksand runs after players

 TODO:
 1. Check Timers
 */
                            
#include "ScriptPCH.h"
#include "WorldPacket.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"

enum CreatureIds
{
    BOSS_EARTHRAGER_PTAH        = 39428,
    MOB_QUICKSAND               = 40503,
    MOB_HORROR                  = 40808,
    MOB_SCARAB                  = 42556,
    NPC_VORTEX_TRIGGER          = 41730
};
 
enum Spells
{
    //Ptah
    SPELL_FLAME_BOLT_CHANNEL   = 77370,
    SPELL_FLAME_BOLT           = 75540,
    SPELL_RAGING_SMASH         = 83650,
    SPELL_EARTH_POINT          = 75339,

    //Vortex
    SPELL_VORTEX_DMG           = 78515,
    SPELL_VORTEX_VISUAL        = 83097,
    SPELL_VORTEX_PUSH_BACK     = 83096,
    
    //Quicksand
    SPELL_QUICKSAND            = 75546
};
 
enum ScriptTexts
{
    SAY_AGGRO                = 0,
    SAY_DEATH                = 1,
    SAY_KILL_1               = 2,
    SAY_KILL_2               = 2
};

enum Events
{
    EVENT_FLAME_BOLT,
    EVENT_RAGING_SMASH,
    EVENT_EARTH_POINT,
    EVENT_SUMMON,
    EVENT_SUMMON_UNDER,
    EVENT_SUMMON_QUICKSAND
};
 
enum SummonIds
{
    NPC_HORROR         = 40808,
    NPC_SCARAB         = 42556,
};
 
const Position aSpawnLocations[5] =
{
    {-530.561584f, -370.613525f, 156.935913f, 5.081081f},
    {-484.478302f, -371.117584f, 155.954208f, 4.429200f},
    {-507.319977f, -381.939392f, 154.764664f, 4.700163f},
    {-477.117f, -402.109f, 157.279f, 5.081081f},
    {-542.047f, -404.082f, 158.195f, 5.081081f},
};
 
enum BossPhases
{
    PHASE_NORMAL = 1,
    PHASE_GROUND = 2
};
class boss_ptah : public CreatureScript
{
    public:
        boss_ptah() : CreatureScript("boss_ptah") {}
 
        struct boss_ptahAI : public ScriptedAI
        {
            boss_ptahAI(Creature* pCreature) : ScriptedAI(pCreature), Summons(me)
            {
                pInstance = pCreature->GetInstanceScript();
            }
 
            InstanceScript* pInstance;
            EventMap events;
            SummonList Summons;
            
            uint8 FlameBoltCast;
            uint8 MinionsDead;
            uint8 Phase;
            bool WasUnder;

            void EnterCombat(Unit* /*Ent*/)
            {
                Talk(SAY_AGGRO);
                WasUnder = false;
                FlameBoltCast = 0;
                MinionsDead = 0;
                Phase = PHASE_NORMAL;
                events.ScheduleEvent(EVENT_FLAME_BOLT, 7500);
                events.ScheduleEvent(EVENT_RAGING_SMASH, urand(4000, 10000));
                events.ScheduleEvent(EVENT_EARTH_POINT, 8000);
                events.ScheduleEvent(EVENT_SUMMON, 20000);               
            }
               
            void Reset()
            {
                events.Reset();
                WasUnder = false;
                FlameBoltCast = 0;
                MinionsDead = 0;
                Phase = PHASE_NORMAL;
            }

            void JustDied(Unit* killer)
            {
                Talk(SAY_DEATH);
            }
               
            void KilledUnit(Unit* Killed)
            {
                Talk(RAND(SAY_KILL_1, SAY_KILL_2));
            }

            void JustSummoned(Creature *pSummoned)
            {
                pSummoned->SetInCombatWithZone();
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    pSummoned->AI()->AttackStart(pTarget);
                Summons.Summon(pSummoned);
            }
                       
            void SummonedCreatureDespawn(Creature *summon)
            {
                if(Phase == PHASE_GROUND)
                    switch(summon->GetEntry())
                    {
                        case NPC_SCARAB:
                        case NPC_HORROR:
                            MinionsDead++;
                            break;
                    }
                
                if (MinionsDead == 20)
                    EnterPhaseNormal();

                Summons.Despawn(summon);
            }
            
            void EnterPhaseNormal()
            {
                me->SetVisible(true);
                Phase = PHASE_NORMAL;
                events.ScheduleEvent(EVENT_FLAME_BOLT, 7500);
                events.ScheduleEvent(EVENT_RAGING_SMASH, urand(4000, 10000));
                events.ScheduleEvent(EVENT_EARTH_POINT, 8000);
                events.ScheduleEvent(EVENT_SUMMON, 20000);
            }

            void EnterPhaseGround()
            {   
                me->SummonCreature(NPC_VORTEX_TRIGGER, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 3.12f,TEMPSUMMON_CORPSE_DESPAWN, 1000);

                me->StopMoving();
                me->SetVisible(false);

                Phase = PHASE_GROUND;                
                events.ScheduleEvent(EVENT_SUMMON_QUICKSAND, 15000);
                events.ScheduleEvent(EVENT_SUMMON_UNDER, 30000);

                for (int i=0; i<6; i++)
                {
                    uint8 pos1 = urand(0,5);
                    uint8 pos2 = urand(0,5);

                    me->SummonCreature(NPC_HORROR, aSpawnLocations[pos1].GetPositionX(), aSpawnLocations[pos1].GetPositionY(), aSpawnLocations[pos1].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                    me->SummonCreature(NPC_SCARAB, aSpawnLocations[pos2].GetPositionX(), aSpawnLocations[pos2].GetPositionY(), aSpawnLocations[pos2].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                }
            }
             
            void DamageTaken(Unit* pKiller, uint32 &damage)
            {
                if (((me->GetHealth()*100)/me->GetMaxHealth()) < 50 && WasUnder == false)
                {
                    WasUnder = true;
                    EnterPhaseGround();
                }
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;
                         
                events.Update(diff);
 
                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;
           
                if (Phase == PHASE_NORMAL)
                {
                    while (uint32 eventId = events.ExecuteEvent())
                    {
                        switch(eventId)
                        {
                            case EVENT_FLAME_BOLT:                                                             
                                DoCast(SPELL_FLAME_BOLT_CHANNEL);                                                              
                                events.ScheduleEvent(EVENT_FLAME_BOLT, 12000);  
                            case EVENT_RAGING_SMASH:
                                DoCast(me->getVictim(), SPELL_RAGING_SMASH);
                                events.ScheduleEvent(EVENT_RAGING_SMASH, urand(4000, 10000));
                                return;                                                      
                            case EVENT_EARTH_POINT:                                                                
                                //me->MonsterYell(SAY_SPELL, LANG_UNIVERSAL, NULL);                                                               
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))                                                               
                                    DoCast(target, SPELL_EARTH_POINT);                                                              
                                events.ScheduleEvent(EVENT_EARTH_POINT, 12000);                                                              
                                return;
                            case EVENT_SUMMON:
                                uint8 pos1 = urand(0,5);
                                uint8 pos2 = urand(0,5);
                                me->SummonCreature(NPC_HORROR, aSpawnLocations[pos1].GetPositionX(), aSpawnLocations[pos1].GetPositionY(), aSpawnLocations[pos1].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                                me->SummonCreature(NPC_SCARAB, aSpawnLocations[pos2].GetPositionX(), aSpawnLocations[pos2].GetPositionY(), aSpawnLocations[pos2].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                                events.ScheduleEvent(EVENT_SUMMON, 30000);
                                return;                     
                        }
                    }           
                    DoMeleeAttackIfReady();
                }
                else
                {
                    while (uint32 eventId = events.ExecuteEvent())
                    {
                        switch(eventId)
                        {
                            case EVENT_SUMMON_QUICKSAND:
                                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                                    if (Creature *quicksand = me->SummonCreature(MOB_QUICKSAND, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 3.12f,TEMPSUMMON_CORPSE_DESPAWN, 1000))
                                    {   quicksand->SetVisible(true);
                                        quicksand->StopMoving();
                                        quicksand->SetReactState(REACT_PASSIVE);
                                        quicksand->CastSpell(quicksand, SPELL_QUICKSAND, true);
                                    }
                                events.ScheduleEvent(EVENT_SUMMON_QUICKSAND, 15000);
                                return;
                            case EVENT_SUMMON_UNDER:
                                uint8 pos1 = urand(0,5);
                                uint8 pos2 = urand(0,5);
                                me->SummonCreature(NPC_HORROR, aSpawnLocations[pos1].GetPositionX(), aSpawnLocations[pos1].GetPositionY(), aSpawnLocations[pos1].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                                me->SummonCreature(NPC_SCARAB, aSpawnLocations[pos2].GetPositionX(), aSpawnLocations[pos2].GetPositionY(), aSpawnLocations[pos2].GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                                events.ScheduleEvent(EVENT_SUMMON, 30000);
                                return;
                        }
                    }
                }
            }   
        };
 
    CreatureAI* GetAI(Creature* creature) const
    {
                return new boss_ptahAI(creature);
    }
};
 
class mob_sandstorm : public CreatureScript
{
public:
    mob_sandstorm() : CreatureScript("mob_sandstorm") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_sandstormAI(creature);
    }

    struct mob_sandstormAI : public Scripted_NoMovementAI
    {
        mob_sandstormAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            m_pInstance = (InstanceScript*)creature->GetInstanceScript();
            Reset();
        }

        InstanceScript* m_pInstance;
        uint32 PushTimer;

        void Reset()
        {
            DoCast(me, SPELL_VORTEX_DMG);
            DoCast(me, SPELL_VORTEX_VISUAL);
            me->setFaction(14);
            me->SetVisible(true);
            me->SetReactState(REACT_PASSIVE);   
            me->StopMoving();
            PushTimer = 1000;
        }
        
        void UpdateAI(uint32 const diff)
        {
            if (PushTimer <= diff)
            {
                DoCast(me, SPELL_VORTEX_PUSH_BACK);
                PushTimer = 2000;
            } else PushTimer -= diff;
        }

        void JustDied(Unit* /*killer*/)
        {
            // used to despawn corpse immediately
            me->DespawnOrUnsummon();
        }
    };

};

void AddSC_boss_earthrager_ptah()
{
    new boss_ptah();
    new mob_sandstorm();
}