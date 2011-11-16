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
 SDName: boss_corborus
 SD%Complete: 80%  
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
    // Corborus
    SPELL_CRYSTAL_BARRAGE    = 86881,
    H_SPELL_CRYSTAL_BARRAGE  = 92648,
    SPELL_DAMPENING_WAVE     = 82415,
    H_SPELL_DAMPENING_WAVE   = 92650,
    SPELL_BURROW             = 26381,  
    //SPELL_CHARGE           = 792651

    // ADDs
    SPELL_ROCK_BORE          = 80028, 
    H_SPELL_ROCK_BORE        = 92630
};

enum ScriptTexts
{
    SAY_AGGRO  = 0,
    SAY_DIED   = 1
};

struct Locations
{
    float x, y, z;
};

static Locations CenterPoint = {1153.64f, 874.802f, 284.963f}; 

static Locations PipeLocations[] =
{
  {1185.24f, 891.281f, 284.349f}, //left  Corborus
  {1178.39f,  854.556f,  286.433f} //right  Corborus
};

class boss_corborus: public CreatureScript
{
public: 
 boss_corborus() : CreatureScript("boss_corborus") { } 

 struct boss_corborusAI : public ScriptedAI
    {
        boss_corborusAI(Creature *c) : ScriptedAI(c) {}

		uint32 crystalTimer;
		uint32 waveTimer;
		uint32 burrowTimer;
		//uint32 chargeTimer;
		uint32 uiSummonTimer;
		//uint32 m_uiSubmergeTimer;
		//uint8  m_uiStage;
		uint32 uiEncounterTimer;
		//SummonList lSummons;

        void Reset()
        {
           crystalTimer = 6000; 
		   waveTimer = 10000;
		   burrowTimer = 24000;
		   //chargeTimer = 28000;
		   uiSummonTimer = 5000;

		   uiEncounterTimer = 0;
		   //lSummons.DespawnAll();
        }

		void JustSummoned(Creature* summon)
        {
            summon->GetMotionMaster()->MovePoint(0, CenterPoint.x, CenterPoint.y, CenterPoint.z);
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                summon->AI()->AttackStart(pTarget);
            //lSummons.Summon(summon);
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

            if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

            // Phase 1
            if (crystalTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, IsHeroic() ? H_SPELL_CRYSTAL_BARRAGE : SPELL_CRYSTAL_BARRAGE);
                crystalTimer = 6000;
            } else crystalTimer -= diff;

            if (waveTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, IsHeroic() ? H_SPELL_DAMPENING_WAVE : SPELL_DAMPENING_WAVE);
                waveTimer = 10000;
            } else waveTimer -= diff;

            /*if (chargeTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_CHARGE);
                chargeTimer = 28000;
            } else chargeTimer -= diff;*/

			// Phase 2
            if (burrowTimer <= diff)
            {
                DoCast(me, SPELL_BURROW);
                burrowTimer = 24000;
            } else burrowTimer -= diff;
			
            /*	
			switch (m_uiStage)
			{
			case 0: // Mobile
				if (m_uiSubmergeTimer <= uiDiff)
                {
                    m_uiStage = 1;
                    m_uiSubmergeTimer = 1*IN_MILLISECONDS;
                } else m_uiSubmergeTimer -= uiDiff;
			case 1: // Submerge
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                DoCast(me,SPELL_FOUIR);
                me->GetMotionMaster()->MovePoint(0,ToCCommonLoc[1].GetPositionX()+urand(0,80)-40,ToCCommonLoc[1].GetPositionY()+urand(0,80)-40,ToCCommonLoc[1].GetPositionZ());
                m_uiStage = 2;
			case 2: // Wait til emerge
                if (m_uiSubmergeTimer <= uiDiff)
                {
                    m_uiStage = 3;
                    m_uiSubmergeTimer = 10*IN_MILLISECONDS;
                } else m_uiSubmergeTimer -= uiDiff;
                break;
			case 3: // Emerge
                me->SetDisplayId(m_uiModelMobile);
                me->RemoveAurasDueToSpell(SPELL_FOUIR);
                me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                SetCombatMovement(true);
                me->GetMotionMaster()->MoveChase(me->getVictim());
                m_uiStage = 4;
                break;
			}*/
			// Fin Phase 2			

            if (uiSummonTimer <= diff)
            {
                uint32 uiSummonPipe = rand()%2;
                /*me->SummonCreature(uiEncounterTimer > IsHeroic() ? H_SPELL_ROCK_BORE : SPELL_ROCK_BORE ? CREATURE_PERFOREUSE :
                                           RAND(CREATURE_CRISTAL,CREATURE_PERFOREUSE),
                                           PipeLocations[uiSummonPipe].x, PipeLocations[uiSummonPipe].y, PipeLocations[uiSummonPipe].z, 0.0f,
                                           TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30000);*/
                uiSummonTimer = 5000;
            } else uiSummonTimer -= diff;
            
            if (!UpdateVictim())
                    return;

			uiEncounterTimer +=diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_corborusAI (pCreature);
    }

};

void AddSC_boss_corborus() 
{
    new boss_corborus();
}