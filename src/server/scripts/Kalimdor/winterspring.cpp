/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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

/* ScriptData
SDName: Winterspring
SD%Complete: 90
SDComment: Quest support: 5126 (Loraxs' tale missing proper gossip items text). Vendor Rivern Frostwind. Obtain Cache of Mau'ari
SDCategory: Winterspring
EndScriptData */

/* ContentData
npc_lorax
npc_rivern_frostwind
npc_witch_doctor_mauari
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_lorax
######*/

#define GOSSIP_HL "Talk to me"

#define GOSSIP_SL1 "What do you do here?"
#define GOSSIP_SL2 "I can help you"
#define GOSSIP_SL3 "What deal?"
#define GOSSIP_SL4 "Then what happened?"
#define GOSSIP_SL5 "He is not safe, i'll make sure of that."

class npc_lorax : public CreatureScript
{
public:
    npc_lorax() : CreatureScript("npc_lorax") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*Sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        switch (action)
        {
            case GOSSIP_ACTION_INFO_DEF:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SL1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                player->SEND_GOSSIP_MENU(3759, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+1:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SL2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                player->SEND_GOSSIP_MENU(3760, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SL3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                player->SEND_GOSSIP_MENU(3761, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+3:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SL4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
                player->SEND_GOSSIP_MENU(3762, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+4:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SL5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
                player->SEND_GOSSIP_MENU(3763, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+5:
                player->CLOSE_GOSSIP_MENU();
                player->AreaExploredOrEventHappens(5126);
                break;
        }
        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(5126) == QUEST_STATUS_INCOMPLETE)
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HL, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());

        return true;
    }
};

/*######
## npc_rivern_frostwind
######*/

class npc_rivern_frostwind : public CreatureScript
{
public:
    npc_rivern_frostwind() : CreatureScript("npc_rivern_frostwind") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*Sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        if (action == GOSSIP_ACTION_TRADE)
            player->GetSession()->SendListInventory(creature->GetGUID());

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (creature->isVendor() && player->GetReputationRank(589) == REP_EXALTED)
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_BROWSE_GOODS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());

        return true;
    }
};

/*######
## npc_witch_doctor_mauari
######*/

#define GOSSIP_HWDM "I'd like you to make me a new Cache of Mau'ari please."

class npc_witch_doctor_mauari : public CreatureScript
{
public:
    npc_witch_doctor_mauari() : CreatureScript("npc_witch_doctor_mauari") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*Sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        if (action == GOSSIP_ACTION_INFO_DEF+1)
        {
            player->CLOSE_GOSSIP_MENU();
            creature->CastSpell(player, 16351, false);
        }

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestRewardStatus(975))
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HWDM, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->SEND_GOSSIP_MENU(3377, creature->GetGUID());
        }else
            player->SEND_GOSSIP_MENU(3375, creature->GetGUID());

        return true;
    }
};

class npc_kilram : public CreatureScript
{
public:
    npc_kilram() : CreatureScript("npc_kilram") { }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == 28626)
        {
            creature->SummonCreature(49191,6776.24f, -4670.85f, 723.81f, 3.15f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 1000);
            CAST_AI(npc_kilram::npc_kilramAI, creature->AI())->Chop = true;
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_kilramAI(pCreature);
    }

    struct npc_kilramAI : public ScriptedAI
    {
        npc_kilramAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool Chop;
        uint32 GrowTimer;


        void Reset()
        {
            Chop = false;
            GrowTimer = 1500;
        }

        void UpdateAI(uint32 const diff)
        {
            if(Chop == true)
            {
                if(GrowTimer <= diff)
                {
                    if(Creature* pTree = me->FindNearestCreature(49191,10.0f,true))
                    {
                        me->CastSpell(pTree,91827,false);
                    }

                }else GrowTimer -= diff;
            }
        }
    };
};

class go_echo_three : public GameObjectScript
{
public:
    go_echo_three() : GameObjectScript("go_echo_three") { }

    bool OnQuestReward(Player* player, GameObject* pGO, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == 28630)
        {
            player->SummonCreature(48905, 6527.69f, -5106.73f, 769.77f, 0, TEMPSUMMON_CORPSE_DESPAWN,0);
        }
        return true;
    }
};

class ice_yeti_ambusher : public CreatureScript
{
public:

    ice_yeti_ambusher() : CreatureScript("ice_yeti_ambusher") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new ice_yeti_ambusherAI(pCreature);
    }

    struct ice_yeti_ambusherAI : public ScriptedAI
    {
        ice_yeti_ambusherAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool bStunned;
        uint32 StunTimer;

        void Reset()
        {
            StunTimer = 7500;
            bStunned = false;
            if(Player* pPlayer = me->FindNearestPlayer(20.0f, true))
            {
                me->CastSpell(pPlayer,91190,false);
                bStunned = true;
            }
        }  

        void UpdateAI(uint32 const diff)
        {
            if(bStunned == true)
            {
                if(StunTimer <= diff)
                {
                    if(Player* pPlayer = me->FindNearestPlayer(20.0f,true))
                    {
                        pPlayer->CastSpell(pPlayer,91178,true);
                    }
                }else StunTimer -= diff;
            }
        }
    };
};

class npc_icicle : public CreatureScript
{
public:

    npc_icicle() : CreatureScript("npc_icicle") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_icicleAI(pCreature);
    }

    struct npc_icicleAI : public ScriptedAI
    {
        npc_icicleAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool bEntered;

        void Reset()
        {
            bEntered = false;
        }

        void MoveInLineOfSight(Unit* pWho)
        {
            ScriptedAI::MoveInLineOfSight(pWho);

            if (pWho->GetTypeId() != TYPEID_PLAYER)
                return;

            if (me->IsWithinDistInMap(pWho, 25.0f) && !bEntered)
            {
                pWho->EnterVehicle(me,0);
                me->MonsterTextEmote("Hit the icicle to break free!",0,true);
                pWho->RemoveAurasDueToSpell(91190);
                bEntered = true;
            }
        }
    };
};

class npc_seril : public CreatureScript
{
public:
    npc_seril() : CreatureScript("npc_seril") { }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == 28628)
        {
            creature->SummonCreature(49246,6776.24f, -4670.85f, 723.81f, 3.15f, TEMPSUMMON_TIMED_DESPAWN, 2500);
            CAST_AI(npc_seril::npc_serilAI, creature->AI())->Ice = true;
            creature->CastSpell(creature,92280,false);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_serilAI(pCreature);
    }

    struct npc_serilAI : public ScriptedAI
    {
        npc_serilAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool Ice;
        uint32 BreakTimer;


        void Reset()
        {
            Ice = false;
            BreakTimer = 1000;
        }

        void UpdateAI(uint32 const diff)
        {
            if(Ice == true)
            {
                if(BreakTimer <= diff)
                {
                    if(Creature* pIce = me->FindNearestCreature(49246,10.0f,true))
                    {
                        pIce->CastSpell(pIce,92281,true);
                    }
                }else BreakTimer -= diff;
            }
        }
    };
};


void AddSC_winterspring()
{
    new npc_lorax();
    new npc_rivern_frostwind();
    new npc_witch_doctor_mauari();
    new npc_kilram();
    new go_echo_three();
    new ice_yeti_ambusher();
    new npc_icicle();
    new npc_seril();
}