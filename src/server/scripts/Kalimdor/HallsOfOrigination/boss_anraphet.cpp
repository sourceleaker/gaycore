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
 SDName: boss_anraphet
 SD%Complete: 80%
 SDComment: Tested and Fixed most bugs
 SDCategory: Halls Of Origination

 Known Bugs:
 1. Alpha Beams Bugged

 TODO:
 1. Needs Testing
 2. Check Timers
 */
                               
#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "halls_of_origination.h"

enum ScriptTexts
{
    SAY_INTRO                  = 0,
    SAY_AGGRO                  = 1,
    SAY_KILL_1                 = 2,
    SAY_KILL_2                 = 2,
    SAY_OMEGA                  = 3,
    SAY_DEATH                  = 4,
};

enum Spells
{
    //Anraphet
	SPELL_ALPHA_BEAMS          = 76184,
    SPELL_CRUMBLING_RUIN       = 75609,
    SPELL_DESTRUCTION_PROTOCOL = 77437,  //kills the boss...
    SPELL_NEMESIS_STRIKE       = 75604,
    SPELL_OMEGA_STANCE         = 75622,

    //Flame Warden
    SPELL_LAVA_ERUPTION        = 77273,
    SPELL_RAGING_INFERNO       = 77241,
    //Air Warden
    SPELL_WIND_SHEAR           = 77334,
    //Earth Warden
    SPELL_IMPALE               = 77235,
    SPELL_ROCKWAVE             = 77234,
    //Water Warden
    SPELL_BUBBLE_BOUND         = 77336
};

enum Creatures
{
    NPC_TROGG_BRUTE = 40251,
    NPC_TROGG_PILLAGER = 39804,
    NPC_TROGG_ROCK = 40252
};
const Position MovePositions[4] =
{    
    {-111, 366, 89.789f}, //Get to door
    {-135, 366, 89.789f}, //Next to stairs
    {-142, 366, 89.789f}, //Stairs begin
    {-197, 366, 75.871f} //END
};

enum Events
{
    EVENT_ALPHA_BEAMS          = 1,
    EVENT_CRUMBLING_RUIN       = 2,
    EVENT_DESTRUCTION_PROTOCOL = 3,
    EVENT_NEMESIS_STRIKE       = 4,
    EVENT_OMEGA_STANCE         = 5
};

class boss_anraphet : public CreatureScript
{
    public:
        boss_anraphet() : CreatureScript("boss_anraphet") { }

        struct boss_anraphetAI : public BossAI
        {
            boss_anraphetAI(Creature* creature) : BossAI(creature, DATA_ANRAPHET)
            {
                instance = me->GetInstanceScript();
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_DESTRUCTION_PROTOCOL, true);
            }

            InstanceScript* instance;
            
            uint32 AttackStartTimer;
            uint8 Phase;
            uint8 wardenKilled;

            void Reset()
            {
                events.Reset();

                if (instance)
                    instance->SetData(DATA_ANRAPHET, NOT_STARTED);
                if (instance)
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRUMBLING_RUIN);

                AttackStartTimer = 0;
                Phase = 0;
                wardenKilled = 0;
            }

            void EnterCombat(Unit* /*who*/)
            {
                Talk(SAY_AGGRO);

                if (instance)
                    instance->SetData(DATA_ANRAPHET, IN_PROGRESS);

                events.ScheduleEvent(EVENT_ALPHA_BEAMS, 8000+rand()%2000);
                events.ScheduleEvent(EVENT_CRUMBLING_RUIN, urand(10000, 16000));
                events.ScheduleEvent(EVENT_NEMESIS_STRIKE, 12000);
                events.ScheduleEvent(EVENT_OMEGA_STANCE, 10000);
                DoZoneInCombat();
            }

            void KillTroggs(uint32 entry, float distance)
            {
                std::list<Creature*> pCreatureList;
                Trinity::AllCreaturesOfEntryInRange checker(me, entry, distance);
                Trinity::CreatureListSearcher<Trinity::AllCreaturesOfEntryInRange> searcher(me, pCreatureList, checker);
                me->VisitNearbyObject(distance, searcher);
                if(pCreatureList.empty())
                    return;

                std::list<Creature*>::iterator itr = pCreatureList.begin();
                uint32 count = pCreatureList.size();
                for(std::list<Creature*>::iterator iter = pCreatureList.begin(); iter != pCreatureList.end(); ++iter)
                {
                    (*iter)->ForcedDespawn();
                }
            }

            void KilledUnit(Unit* /*Killed*/)
            {
                Talk(RAND(SAY_KILL_1, SAY_KILL_2));
            }

            void WardenKilled()
            {
                wardenKilled++;

                if (wardenKilled == 4)
                    preBattlePhase();
            }

            void preBattlePhase()
            {
                Phase = 1;
                AttackStartTimer = 1000;
            }

            void UpdateAI(uint32 const diff)
            {
               if (AttackStartTimer <= diff)
                {
                    switch (Phase)
                    {
                        case 1:
                            {
                            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                            GameObject* Door = me->FindNearestGameObject(202314, 200);
                            if (Door)
                                Door->SetGoState(GO_STATE_ACTIVE);
                            me->GetMotionMaster()->MovePoint(0, MovePositions[0].GetPositionX(), MovePositions[0].GetPositionY(), MovePositions[0].GetPositionZ());
                            AttackStartTimer = 15000;
                            Phase = 2;
                            break;
                            }
                        case 2:
                            me->GetMotionMaster()->MovePoint(0, MovePositions[1].GetPositionX(), MovePositions[1].GetPositionY(), MovePositions[1].GetPositionZ());
                            Phase = 3;
                            AttackStartTimer = 7500;
                            break;
                        case 3:
                            me->GetMotionMaster()->MovePoint(0, MovePositions[2].GetPositionX(), MovePositions[2].GetPositionY(), MovePositions[2].GetPositionZ());
                            Phase = 4;
                            AttackStartTimer = 5000;
                            break;
                        case 4:
                            me->GetMotionMaster()->MovePoint(0, MovePositions[3].GetPositionX(), MovePositions[3].GetPositionY(), MovePositions[3].GetPositionZ());
                            Phase = 5;
                            AttackStartTimer = 15000;
                            break;
                        case 5:
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                            DoCast(SPELL_DESTRUCTION_PROTOCOL);
                            KillTroggs(NPC_TROGG_BRUTE,200);
                            KillTroggs(NPC_TROGG_PILLAGER,200);
                            KillTroggs(NPC_TROGG_ROCK,200);
                            Phase = 6;
                            break;
                    }
                }
                else
                    AttackStartTimer -= diff;

                if (!UpdateVictim())
                   return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

                while(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_ALPHA_BEAMS:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, true))
                                DoCast(target, SPELL_ALPHA_BEAMS);
                            else
                                DoCast(SPELL_ALPHA_BEAMS);
                                events.ScheduleEvent(EVENT_ALPHA_BEAMS, urand(8000, 12000));
                            break;
                        case EVENT_CRUMBLING_RUIN:
                            DoCast(me->getVictim(), SPELL_CRUMBLING_RUIN);
                            events.ScheduleEvent(EVENT_CRUMBLING_RUIN, urand(10000, 16000));
                            break;
                        case EVENT_NEMESIS_STRIKE:
                            DoCast(me->getVictim(), SPELL_NEMESIS_STRIKE);
                            events.ScheduleEvent(EVENT_NEMESIS_STRIKE, 10000);
                            break;
                        case EVENT_OMEGA_STANCE:
                            //DoScriptText(SAY_OMEGA, me);
                            DoCast(me, SPELL_OMEGA_STANCE);
                            events.ScheduleEvent(EVENT_OMEGA_STANCE, 45000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                Talk(SAY_DEATH);

                if (instance)
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_CRUMBLING_RUIN);

                if (instance)
                    instance->SetData(DATA_ANRAPHET, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_anraphetAI(creature);
        }
};

class boss_flame_warden : public CreatureScript
{
    public:
        boss_flame_warden() : CreatureScript("boss_flame_warden") { }

        struct boss_flame_wardenAI : public BossAI
        {
            boss_flame_wardenAI(Creature* creature) : BossAI(creature, DATA_FLAME_WARDEN)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;
            
            uint32 LavaTimer;
            uint32 InfernoTimer;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_FLAME_WARDEN, NOT_STARTED);

                LavaTimer = 5000;
                InfernoTimer = 20000;
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_FLAME_WARDEN, IN_PROGRESS);
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;
                
                if (LavaTimer <= diff)
                {
                    if(Unit *pTarget = (SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true)))
                        DoCast(pTarget, SPELL_LAVA_ERUPTION);
                    LavaTimer = 5000+rand()%5000;
                } else LavaTimer -= diff;

                if (InfernoTimer <= diff)
                {
                    DoCast(SPELL_RAGING_INFERNO);
                    InfernoTimer = 20000+rand()%7500;
                } else InfernoTimer -= diff;

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                if (Creature *pAnraphet = me->FindNearestCreature(BOSS_ANRAPHET, 1000, true))
                      if (boss_anraphet::boss_anraphetAI* pAI = CAST_AI(boss_anraphet::boss_anraphetAI, pAnraphet->AI()))
                                pAI->WardenKilled();

                if (instance)
                    instance->SetData(DATA_FLAME_WARDEN, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_flame_wardenAI(creature);
        }
};

class boss_air_warden : public CreatureScript
{
    public:
        boss_air_warden() : CreatureScript("boss_air_warden") { }

        struct boss_air_wardenAI : public BossAI
        {
            boss_air_wardenAI(Creature* creature) : BossAI(creature, DATA_AIR_WARDEN)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            uint32 WindTimer;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_AIR_WARDEN, NOT_STARTED);

                WindTimer = 7500;
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_AIR_WARDEN, IN_PROGRESS);
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;
                
                if (WindTimer <= diff)
                {
                    if(Unit *pTarget = (SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true)))
                        DoCast(pTarget, SPELL_WIND_SHEAR);
                    WindTimer = 7500+rand()%7500;
                } else WindTimer -= diff;

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                if (Creature *pAnraphet = me->FindNearestCreature(BOSS_ANRAPHET, 1000, true))
                      if (boss_anraphet::boss_anraphetAI* pAI = CAST_AI(boss_anraphet::boss_anraphetAI, pAnraphet->AI()))
                                pAI->WardenKilled();
                if (instance)
                    instance->SetData(DATA_AIR_WARDEN, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_air_wardenAI(creature);
        }
};

class boss_earth_warden : public CreatureScript
{
    public:
        boss_earth_warden() : CreatureScript("boss_earth_warden") { }

        struct boss_earth_wardenAI : public BossAI
        {
            boss_earth_wardenAI(Creature* creature) : BossAI(creature, DATA_EARTH_WARDEN)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            uint32 RockTimer;
            uint32 ImpaleTimer;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_EARTH_WARDEN, NOT_STARTED);

                RockTimer = 10000;
                ImpaleTimer = 5000;
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_EARTH_WARDEN, IN_PROGRESS);
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;

                if (RockTimer <= diff)
                {
                    if(Unit *pTarget = (SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true)))
                        DoCast(pTarget, SPELL_ROCKWAVE);
                    RockTimer = 20000+rand()%7500;
                } else RockTimer -= diff;

                if (ImpaleTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_IMPALE);
                    ImpaleTimer = 7500+rand()%7500;
                } else ImpaleTimer -= diff;

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                if (Creature *pAnraphet = me->FindNearestCreature(BOSS_ANRAPHET, 1000, true))
                      if (boss_anraphet::boss_anraphetAI* pAI = CAST_AI(boss_anraphet::boss_anraphetAI, pAnraphet->AI()))
                                pAI->WardenKilled();

                if (instance)
                    instance->SetData(DATA_EARTH_WARDEN, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_earth_wardenAI(creature);
        }
};

class boss_water_warden : public CreatureScript
{
    public:
        boss_water_warden() : CreatureScript("boss_water_warden") { }

        struct boss_water_wardenAI : public BossAI
        {
            boss_water_wardenAI(Creature* creature) : BossAI(creature, DATA_WATER_WARDEN)
            {
                instance = me->GetInstanceScript();
            }

            InstanceScript* instance;

            uint32 BubbleTimer;

            void Reset()
            {
                if (instance)
                    instance->SetData(DATA_WATER_WARDEN, NOT_STARTED);

                BubbleTimer = 5000;
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_WATER_WARDEN, IN_PROGRESS);
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;
                
                if (BubbleTimer <= diff)
                {
                    if(Unit *pTarget = (SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true)))
                        DoCast(pTarget, SPELL_BUBBLE_BOUND);
                    BubbleTimer = 15000+rand()%7500;
                } else BubbleTimer -= diff;

                DoMeleeAttackIfReady();
            }

            void JustDied(Unit* /*who*/)
            {
                if (Creature *pAnraphet = me->FindNearestCreature(BOSS_ANRAPHET, 1000, true))
                      if (boss_anraphet::boss_anraphetAI* pAI = CAST_AI(boss_anraphet::boss_anraphetAI, pAnraphet->AI()))
                                pAI->WardenKilled();

                if (instance)
                    instance->SetData(DATA_WATER_WARDEN, DONE);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_water_wardenAI(creature);
        }
};

void AddSC_boss_anraphet()
{
    new boss_anraphet;
    new boss_flame_warden;
    new boss_air_warden;
    new boss_earth_warden;
    new boss_water_warden;

}