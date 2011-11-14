/*
 * Copyright (C) 2011 Project Atlantiss <http://www.atlantiss.pl/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/*
 * Author:Armano
 * Zone:Echo of Isles
 * Procent: 80%
*/

/*######
## npc_tiki_target
######*/

enum TikiTarget
{
    SPELL_TIKI_TARGET_1                           = 71064,
    SPELL_TIKI_TARGET_2                           = 71065,
    SPELL_TIKI_TARGET_3                           = 71066,
};

class npc_tiki_target : public CreatureScript
{
public:
    npc_tiki_target() : CreatureScript("npc_tiki_target"){}

    struct npc_tiki_targetAI : public ScriptedAI
    {
        npc_tiki_targetAI(Creature* creature) : ScriptedAI(creature) {}

        bool uiCredit;
        uint32 uiRespawnTimer;
        uint32 uiDespawnTimer;
        uint64 PlayerGUID;

        void Reset()
        {
            me->SetControlled(true, UNIT_STAT_STUNNED); // disable rotate
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true); // imune to knock aways like blast wave
            uiCredit = false;
            uiRespawnTimer = 23000;
            uiDespawnTimer = 2000;
            PlayerGUID = 0;
            me->SetVisible(true);
            switch (urand(0, 2))
            {
                case 0:
                    me->CastSpell(me, SPELL_TIKI_TARGET_1, true);
                    break;
                case 1:
                    me->CastSpell(me, SPELL_TIKI_TARGET_2, true);
                    break;
                default:
                    me->CastSpell(me, SPELL_TIKI_TARGET_3, true);
            }
        }

        void JustDied(Unit *killer)
        {
            me->Respawn(true);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!me->IsVisible())
            {
                if (uiRespawnTimer <= uiDiff)
                    Reset();
                else
                    uiRespawnTimer -= uiDiff;
            }
            else
            {
                if (me->GetHealth() <= 1)
                {
                    if (uiDespawnTimer <= uiDiff)
                    {
                        me->SetVisible(false);
                        me->CombatStop(true);
                        me->AttackStop();
                        me->ClearAllReactives();
                        me->DeleteThreatList();
                        me->SetHealth(me->GetMaxHealth());
                    }
                    else
                        uiDespawnTimer -= uiDiff;
                }
            }
        }

        void SayOnQuestComplete(Player *pPlayer)
        {
            Unit *uSay = NULL;
            if (pPlayer->GetQuestStatus(26273) == QUEST_STATUS_COMPLETE) // warlock
                uSay = me->FindNearestCreature(42618, 300);

            if (pPlayer->GetQuestStatus(24751) == QUEST_STATUS_COMPLETE) // mage
                uSay = me->FindNearestCreature(38246, 300);

            if (pPlayer->GetQuestStatus(24759) == QUEST_STATUS_COMPLETE) // shaman
                uSay = me->FindNearestCreature(38242, 300);

            if (pPlayer->GetQuestStatus(24771) == QUEST_STATUS_COMPLETE) // rogue
                uSay = me->FindNearestCreature(38244, 300);

            if (pPlayer->GetQuestStatus(24783) == QUEST_STATUS_COMPLETE) // priest
                uSay = me->FindNearestCreature(38245, 300);

            if (pPlayer->GetQuestStatus(24639) == QUEST_STATUS_COMPLETE) // warrior
                uSay = me->FindNearestCreature(38037, 300);

            if (pPlayer->GetQuestStatus(24639) == QUEST_STATUS_COMPLETE) // warrior
                uSay = me->FindNearestCreature(38037, 300);

            if (pPlayer->GetQuestStatus(24765) == QUEST_STATUS_COMPLETE) // druid
                uSay = me->FindNearestCreature(38243, 300);

            if (pPlayer->GetQuestStatus(24777) == QUEST_STATUS_COMPLETE) // hunter
                uSay = me->FindNearestCreature(38247, 300);

            if (uSay)
            {
                uSay->MonsterSay("Not bad, $N. Not bad.", 0, PlayerGUID);
            }
        }

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (Player* sPlayer = caster->ToPlayer())
            {
                if (me->GetHealth() > 1)
                {
                    if (spell == GET_SPELL(348)   || // The Arts of a Warlock
                        spell == GET_SPELL(56641) || // The Arts of a Hunter
                        spell == GET_SPELL(5143)  || // The Arts of a Mage
                        spell == GET_SPELL(2098)  || // The Arts of a Rogue
                        spell == GET_SPELL(73899) || // The Arts of a Shaman
                        spell == GET_SPELL(100)      // The Arts of a Warrior
                       )
                    {
                        sPlayer->KilledMonsterCredit(44175, 0);
                    }
                }
            }
        }

        void DamageTaken(Unit* done_by, uint32 & damage)
        {
            if (PlayerGUID == 0)
            {
                if (Player *pPlayer = done_by->ToPlayer())
                {
                    PlayerGUID = pPlayer->GetGUID();
                }
            }

            if (me->GetHealth() <= damage)
            {
                damage = me->GetHealth() - 1; // ma mu niby 1hp zostaæ....

                if (uiCredit == false)
                {
                    me->RemoveAllAuras();
                    me->CombatStop(true);
                    me->AttackStop();
                    me->ClearAllReactives();
                    me->DeleteThreatList();

                    me->CastSpell(me, 71240, true);
                    if (PlayerGUID != 0)
                    {
                        Player *pPlayer = me->GetPlayer(*me, PlayerGUID);
                        if (pPlayer->IsInWorld())
                        {
                            pPlayer->KilledMonsterCredit(me->GetEntry(), 0);
                            SayOnQuestComplete(pPlayer);
                        }
                    }
                    uiCredit = true;
                }
            }
        }

        void MoveInLineOfSight(Unit * /*who*/) {return;}
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_tiki_targetAI(pCreature);
    }
};

/*######
## npc_jailor
######*/

enum ejailor
{
    GO_CAGE                = 201968,
    NPC_NAGA               = 38142,
};

float fNodeJailorPosition[2][3][3] =
{
    {
        {-1132.875366f, -5425.658203f, 13.308554f},
        {-1134.783813f, -5416.551270f, 13.269002f},
        {-1132.472046f, -5424.702637f, 13.225397f},
    },
    {
        {-1159.829956f, -5519.570313f, 12.126601f},
        {-1153.379028f, -5518.994629f, 11.996062f},
        {-1159.829956f, -5519.570313f, 12.126601f},
    },
};

float fNodeNagaPosition[2][3] =
{
    {-1146.220581f, -5417.623047f, 10.597669f},
    {-1150.114380f, -5527.809082f,  8.105021f},
};

#define GOSSIP_HELLO_PIT "I'm ready to face my challenge."

class npc_jailor : public CreatureScript
{
public:
    npc_jailor() : CreatureScript("npc_jailor") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (CAST_AI(npc_jailor::npc_jailorAI, pCreature->AI())->uiStart == false)
        {
            if (pPlayer->GetQuestStatus(24774) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(26276) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24754) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24762) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24786) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24642) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24768) == QUEST_STATUS_INCOMPLETE ||
                pPlayer->GetQuestStatus(24780) == QUEST_STATUS_INCOMPLETE)
            {
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_PIT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            }
        }

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
        {
            uint8 Phase = 1;
            if (pCreature->GetDistance(-1143.18f, -5429.95f, 13.97f) < 20)
                Phase = 0;

            CAST_AI(npc_jailor::npc_jailorAI, pCreature->AI())->Phase = Phase;
            pCreature->MonsterSay("Get in the pit and show us your stuff, $N", LANG_UNIVERSAL, pPlayer->GetGUID());

            pPlayer->KilledMonsterCredit(pCreature->GetEntry(), 0);
            pPlayer->CLOSE_GOSSIP_MENU();
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_jailorAI(pCreature);
    }

    /*npc_jailor*/

    struct npc_jailorAI : public ScriptedAI
    {
        npc_jailorAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        uint8 Phase;
        uint8 uiNode;
        uint32 uiTimer;
        bool uiStart;

        void Reset()
        {
            GameObject* pCage = me->FindNearestGameObject(GO_CAGE, 20.0f);
            pCage->Respawn();
            pCage->SetGoState(GO_STATE_READY);
            Phase = 5;
            uiNode = 0;
            uiTimer = 2000;
            uiStart = false;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (me->isInCombat())
                return;

            if (Phase != 5)
            {
                uiStart = true;
                if (uiTimer <= uiDiff)
                {
                    GoToTheNextNode();
                    uiTimer = 2500;
                    switch (uiNode)
                    {
                        case 1:
                            uiTimer = 5000;
                            uiNode++;
                            break;
                        case 3:
                            uiTimer = 120000;
                            uiNode++;
                            break;
                        case 4:
                            if (Creature* pNaga = me->FindNearestCreature(NPC_NAGA, 30.0f))
                            {
                                pNaga->SetReactState(REACT_PASSIVE);
                                pNaga->setFaction(634);
                                pNaga->GetMotionMaster()->MoveTargetedHome();
                            }
                            uiTimer = 4000;
                            uiNode++;
                            break;
                        case 5:
                            if (GameObject*pCage = me->FindNearestGameObject(GO_CAGE, 30.0f))
                            {
                                pCage->Respawn();
                                pCage->SetGoState(GO_STATE_READY);
                            }
                            uiNode = 0;
                            Phase = 5;
                            uiStart = false;
                            uiTimer = 2000;
                        default:
                            uiNode++;
                            break;
                    }
                }
                else
                    uiTimer -= uiDiff;
            }
        }

        void GoToTheNextNode()
        {
            if (uiNode >= 3)
                me->GetMotionMaster()->MoveTargetedHome();
            else
                me->GetMotionMaster()->MoveCharge(fNodeJailorPosition[Phase][uiNode][0], fNodeJailorPosition[Phase][uiNode][1], fNodeJailorPosition[Phase][uiNode][2], 5);
        }

        void MovementInform(uint32 uiType, uint32 uiPointId)
        {
            if (uiType != POINT_MOTION_TYPE)
                return;

            if (uiNode == 2)
            {
                if (GameObject*pCage = me->FindNearestGameObject(GO_CAGE, 15.0f))
                {
                    pCage->SetGoType(GAMEOBJECT_TYPE_BUTTON);
                    pCage->UseDoorOrButton();
                }
                if (Creature* pNaga = me->FindNearestCreature(NPC_NAGA,15.0f))
                {
                    pNaga->SetReactState(REACT_AGGRESSIVE);
                    pNaga->setFaction(14);
                    pNaga->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_ATTACKABLE_1 | UNIT_FLAG_NON_ATTACKABLE);
                    pNaga->MonsterSay("They sssend you to your death, youngling.", LANG_UNIVERSAL, NULL);
                    pNaga->GetMotionMaster()->MoveCharge(fNodeNagaPosition[Phase][0], fNodeNagaPosition[Phase][1], fNodeNagaPosition[Phase][2], 5);
                }
            }
        }
    };
};

/*######
## npc_swiftclaw
######*/

enum eSwiftclaw
{
    SPELL_RIDE_VEHICLE_1 = 52391,
    SPELL_RIDE_VEHICLE_2 = 70925,
};

class npc_swiftclaw : public CreatureScript
{
public:
    npc_swiftclaw() : CreatureScript("npc_swiftclaw") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_swiftclawAI(pCreature);
    }

    struct npc_swiftclawAI : public ScriptedAI
    {
        npc_swiftclawAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        void Reset()
        {
                if (Unit *owner = CAST_SUM(me)->GetCharmerOrOwner())
                    if (owner->GetTypeId() == TYPEID_PLAYER)
                    {
                       owner->CastSpell(me, SPELL_RIDE_VEHICLE_1, true);
                       me->MonsterSay("%N", 0, me->ToTempSummon()->GetSummoner()->GetGUID());
                       me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                       me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE); 
                    }
            else
                me->ForcedDespawn();
        }

        void OnCharmed(bool /*apply*/) { }

        void PassengerBoarded(Unit * who, int8 /*seatId*/, bool apply)
        {
            if (Player * pWho = who->ToPlayer())
            {
                me->SetFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FORCE_MOVE);
                pWho->KilledMonsterCredit(37989, 0);
            }
        }

        void MoveInLineOfSight(Unit * who)
        {
            if (me->FindNearestCreature(38987, 5, true))
            {
                if (Player * pWho = who->ToPlayer())
                {
                    pWho->KilledMonsterCredit(38002, 0);
                }
                me->ForcedDespawn();
            }
        }
    };
};

class npc_swiftclaw2 : public CreatureScript
{
public:
     npc_swiftclaw2() : CreatureScript("npc_swiftclaw2") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new  npc_swiftclaw2AI(pCreature);
    }

    struct npc_swiftclaw2AI : public ScriptedAI
    {
        npc_swiftclaw2AI(Creature* pCreature) : ScriptedAI(pCreature) { }

        void SpellHit(Unit* hitter, const SpellInfo* spell)
        {
            if (!hitter || !spell)
                return;

            if (spell->Id != 70927)
                return;

            hitter->SummonCreature(38002,hitter->GetPositionX(),hitter->GetPositionY(),hitter->GetPositionZ(),0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 100000);
            me->DisappearAndDie();

        }

    };
};
void AddSC_echo_isles()
{
    new npc_tiki_target();
    new npc_jailor();
    new npc_swiftclaw();
    new npc_swiftclaw2();
}