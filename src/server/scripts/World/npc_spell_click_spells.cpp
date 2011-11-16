/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "ScriptPCH.h"
#include "SpellMgr.h"
#include "Player.h"
#include "Creature.h"

/*########
# npc_deffiant_troll
#########*/

enum NSCSDeffiantTroll
{
    DEFFIANT_KILL_CREDIT               = 34830,
    SPELL_LIGHTNING_VISUAL             = 56328,

	SAY_DEFIANT_1 = -1799990,
    SAY_DEFIANT_2 = -1799991,
    SAY_DEFIANT_3 = -1799992,
    SAY_DEFIANT_4 = -1799993,
    SAY_DEFIANT_5 = -1799994


};

class npc_deffiant_troll : public CreatureScript
{
public:
    npc_deffiant_troll() : CreatureScript("npc_deffiant_troll") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
            if (pPlayer->GetQuestStatus(14069) == QUEST_STATUS_INCOMPLETE)
            {
                pCreature->CastSpell(pPlayer, 45870, true);
                pPlayer->KilledMonsterCredit(DEFFIANT_KILL_CREDIT, 0);
				DoScriptText(RAND(SAY_DEFIANT_1,SAY_DEFIANT_2,SAY_DEFIANT_3,SAY_DEFIANT_4,SAY_DEFIANT_5), pCreature);
                pCreature->ForcedDespawn(1500);
                return true;
            }

    return false;
    }
};

void AddSC_npc_spell_click_spells()
{
    new npc_deffiant_troll;
}