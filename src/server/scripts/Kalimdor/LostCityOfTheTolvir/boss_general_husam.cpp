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
 SDName: boss_general_husam
 SD%Complete: 95%
 SDComment: 
 SDCategory: Lost City of the Tol'vir

 Known Bugs:

 TODO:
 1. Check Timers
 2. Needs testing
 */
                               
/*
NPC 44711 - Spawned before shockwave - targets.
NPC 44712 - Shockwave NPC.
*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h" 
#include "ScriptPCH.h"
#include "lost_city_of_the_tolvir.h"

enum Spells
{
    SPELL_BAD_INTENTIONS                        = 83113,
    SPELL_SHOCKWAVE                             = 83445,
    SPELL_HAMMER_FIST                           = 83655,
    SPELL_MYSTIC_TRAP_PLANT                     = 83646,
    SPELL_MYSTIC_TRAP_EXPLODE                   = 83171,
    SPELL_DETONATE_TRAPS                        = 91263,
};

enum NPCs
{
    NPC_LAND_MINE       = 44840
};

enum Yells
{
    SAY_AGGRO                   = -1755001,
    SAY_SHOCKWAVE               = -1755002,
    SAY_DETONATE                = -1755003,
    SAY_DEATH                   = -1755004,
};

enum Actions
{
    ACTION_DETONATE
}; 


class boss_general_husam : public CreatureScript
{
public:
    boss_general_husam() : CreatureScript("boss_general_husam") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_general_husamAI (pCreature);
    }

    struct boss_general_husamAI : public BossAI
    {
        InstanceScript* m_pInstance;
        
        boss_general_husamAI(Creature *c) : BossAI(c, DATA_GENERAL_HUSAM)
        {
            m_pInstance = c->GetInstanceScript();
        }

        uint32 BadIntentionsTimer;
        uint32 ShockwaveTimer;
        uint32 HammerFistTimer;
        uint32 PlantTimer;
        uint32 DetonateTimer;

        void JustDied(Unit* /*Killer*/)
        {   
            if (instance)
                    instance->SetData(DATA_GENERAL_HUSAM, DONE);

            DoScriptText(SAY_DEATH, me);
        }

        void Reset()
        {
            if (instance)
                    instance->SetData(DATA_GENERAL_HUSAM, NOT_STARTED);

            BadIntentionsTimer = 8000;
            ShockwaveTimer = 18000;
            HammerFistTimer = 5000;
            PlantTimer = 3000;
            DetonateTimer = 23000;
        }

        void EnterCombat(Unit* pWho)
        {
            if (instance)
                    instance->SetData(DATA_GENERAL_HUSAM, IN_PROGRESS);

            DoScriptText(SAY_AGGRO, me);
        }

        void DetonateTraps(uint32 entry, float distance)
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
                    (*iter)->CastSpell(me, SPELL_MYSTIC_TRAP_EXPLODE, true);
                    (*iter)->ForcedDespawn();
                }

        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(BadIntentionsTimer <= diff)
            {
                if(Unit* pTar = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTar,SPELL_BAD_INTENTIONS);
                BadIntentionsTimer = 15000;
            }
            else
                BadIntentionsTimer -= diff;

            if(ShockwaveTimer <= diff)
            {
                Creature* Target1 = me->SummonCreature(44711, me->GetPositionX()+10,me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                Creature* Target2 = me->SummonCreature(44711, me->GetPositionX()-10,me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                Creature* Target3 = me->SummonCreature(44711, me->GetPositionX(),me->GetPositionY()+10,me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                Creature* Target4 = me->SummonCreature(44711, me->GetPositionX(),me->GetPositionY()-10,me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                DoScriptText(SAY_SHOCKWAVE, me);
                DoCastAOE(SPELL_SHOCKWAVE);
                DoCast(Target1, 83130);
                DoCast(Target2, 83130);
                DoCast(Target3, 83130);
                DoCast(Target4, 83130);
                if (Creature* Shockwave1 = me->SummonCreature(44712, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000))
                    Shockwave1->GetMotionMaster()->MoveChase(Target1);
                if (Creature* Shockwave2 = me->SummonCreature(44712, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000))
                    Shockwave2->GetMotionMaster()->MoveChase(Target2);
                if (Creature* Shockwave3 = me->SummonCreature(44712, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000))
                    Shockwave3->GetMotionMaster()->MoveChase(Target3);
                if (Creature* Shockwave4 = me->SummonCreature(44712, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000))
                    Shockwave4->GetMotionMaster()->MoveChase(Target4);
                ShockwaveTimer = urand(20000,40000);
            }
            else
                ShockwaveTimer -= diff;

            if (HammerFistTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_HAMMER_FIST);
                HammerFistTimer = 12000;
            }
            else
                HammerFistTimer -= diff;

            if (PlantTimer <= diff)
            {
                for(uint32 i=0; i>3; i++)
                {
                    if(Unit* pTar = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        pTar->CastSpell(pTar, SPELL_MYSTIC_TRAP_PLANT, true);
                }
                PlantTimer = 30000;
                DetonateTimer = 20000;
            }
            else
                PlantTimer -= diff;

            if (DetonateTimer <= diff && IsHeroic())
            {
                DetonateTraps(NPC_LAND_MINE, 100);
                DoScriptText(SAY_DETONATE, me);
            }
            else
                DetonateTimer -= diff;

            DoMeleeAttackIfReady();
        }

    };

};

class npc_trap : public CreatureScript
{
    public:
        npc_trap() : CreatureScript("npc_trap") { }

        struct npc_trapAI : public ScriptedAI
        {
            npc_trapAI(Creature *pCreature) : ScriptedAI(pCreature) {}


            void Reset()
            {
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            }

            void UpdateAI(const uint32 diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, true))
                    if (me->IsInRange(target, 0, 3))
                    {
                        DoCast(SPELL_MYSTIC_TRAP_EXPLODE);
                        me->DisappearAndDie();                 
                    }
            }
        };

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_trapAI(pCreature);
        }
};

void AddSC_boss_general_husam()
{
    new boss_general_husam();
    new npc_trap();
}
