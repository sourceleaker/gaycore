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
SDName: The_Barrens
SD%Complete: 90
SDComment: Quest support: 863, 898, 1719, 2458, 4921, 6981,
SDCategory: Barrens
EndScriptData */

/* ContentData
npc_beaten_corpse
npc_gilthares
npc_sputtervalve
npc_taskmaster_fizzule
npc_twiggy_flathead
npc_wizzlecrank_shredder
EndContentData */

#include "ScriptPCH.h"
#include "ScriptedEscortAI.h"

/*######
## npc_beaten_corpse
######*/

#define GOSSIP_CORPSE "Examine corpse in detail..."

enum eQuests
{
    QUEST_LOST_IN_BATTLE    = 4921
};

class npc_beaten_corpse : public CreatureScript
{
public:
    npc_beaten_corpse() : CreatureScript("npc_beaten_corpse") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*Sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        if (action == GOSSIP_ACTION_INFO_DEF +1)
        {
            player->SEND_GOSSIP_MENU(3558, creature->GetGUID());
            player->TalkedToCreature(creature->GetEntry(), creature->GetGUID());
        }
        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->GetQuestStatus(QUEST_LOST_IN_BATTLE) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_LOST_IN_BATTLE) == QUEST_STATUS_COMPLETE)
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CORPSE, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);

        player->SEND_GOSSIP_MENU(3557, creature->GetGUID());
        return true;
    }
};

/*######
# npc_gilthares
######*/

enum eGilthares
{
    SAY_GIL_START               = -1000370,
    SAY_GIL_AT_LAST             = -1000371,
    SAY_GIL_PROCEED             = -1000372,
    SAY_GIL_FREEBOOTERS         = -1000373,
    SAY_GIL_AGGRO_1             = -1000374,
    SAY_GIL_AGGRO_2             = -1000375,
    SAY_GIL_AGGRO_3             = -1000376,
    SAY_GIL_AGGRO_4             = -1000377,
    SAY_GIL_ALMOST              = -1000378,
    SAY_GIL_SWEET               = -1000379,
    SAY_GIL_FREED               = -1000380,

    QUEST_FREE_FROM_HOLD        = 898,
    AREA_MERCHANT_COAST         = 391,
    FACTION_ESCORTEE            = 232                       //guessed, possible not needed for this quest
};

class npc_gilthares : public CreatureScript
{
public:
    npc_gilthares() : CreatureScript("npc_gilthares") { }

    bool OnQuestAccept(Player* player, Creature* creature, const Quest* quest)
    {
        if (quest->GetQuestId() == QUEST_FREE_FROM_HOLD)
        {
            creature->setFaction(FACTION_ESCORTEE);
            creature->SetStandState(UNIT_STAND_STATE_STAND);

            DoScriptText(SAY_GIL_START, creature, player);

            if (npc_giltharesAI* pEscortAI = CAST_AI(npc_gilthares::npc_giltharesAI, creature->AI()))
                pEscortAI->Start(false, false, player->GetGUID(), quest);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_giltharesAI(creature);
    }

    struct npc_giltharesAI : public npc_escortAI
    {
        npc_giltharesAI(Creature* creature) : npc_escortAI(creature) { }

        void Reset() { }

        void WaypointReached(uint32 uiPointId)
        {
            Player* player = GetPlayerForEscort();

            if (!player)
                return;

            switch (uiPointId)
            {
                case 16:
                    DoScriptText(SAY_GIL_AT_LAST, me, player);
                    break;
                case 17:
                    DoScriptText(SAY_GIL_PROCEED, me, player);
                    break;
                case 18:
                    DoScriptText(SAY_GIL_FREEBOOTERS, me, player);
                    break;
                case 37:
                    DoScriptText(SAY_GIL_ALMOST, me, player);
                    break;
                case 47:
                    DoScriptText(SAY_GIL_SWEET, me, player);
                    break;
                case 53:
                    DoScriptText(SAY_GIL_FREED, me, player);
                    player->GroupEventHappens(QUEST_FREE_FROM_HOLD, me);
                    break;
            }
        }

        void EnterCombat(Unit* who)
        {
            //not always use
            if (rand()%4)
                return;

            //only aggro text if not player and only in this area
            if (who->GetTypeId() != TYPEID_PLAYER && me->GetAreaId() == AREA_MERCHANT_COAST)
            {
                //appears to be pretty much random (possible only if escorter not in combat with who yet?)
                DoScriptText(RAND(SAY_GIL_AGGRO_1, SAY_GIL_AGGRO_2, SAY_GIL_AGGRO_3, SAY_GIL_AGGRO_4), me, who);
            }
        }
    };
};

/*######
## npc_sputtervalve
######*/

#define GOSSIP_SPUTTERVALVE "Can you tell me about this shard?"

class npc_sputtervalve : public CreatureScript
{
public:
    npc_sputtervalve() : CreatureScript("npc_sputtervalve") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*Sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        if (action == GOSSIP_ACTION_INFO_DEF)
        {
            player->SEND_GOSSIP_MENU(2013, creature->GetGUID());
            player->AreaExploredOrEventHappens(6981);
        }
        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(6981) == QUEST_STATUS_INCOMPLETE)
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SPUTTERVALVE, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
        return true;
    }
};

/*######
## npc_taskmaster_fizzule
######*/

enum eEnums
{
    FACTION_FRIENDLY_F  = 35,
    SPELL_FLARE         = 10113,
    SPELL_FOLLY         = 10137,
};

class npc_taskmaster_fizzule : public CreatureScript
{
public:
    npc_taskmaster_fizzule() : CreatureScript("npc_taskmaster_fizzule") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_taskmaster_fizzuleAI(creature);
    }

    struct npc_taskmaster_fizzuleAI : public ScriptedAI
    {
        npc_taskmaster_fizzuleAI(Creature* c) : ScriptedAI(c)
        {
            factionNorm = c->getFaction();
        }

        uint32 factionNorm;
        bool IsFriend;
        uint32 Reset_Timer;
        uint8 FlareCount;

        void Reset()
        {
            IsFriend = false;
            Reset_Timer = 120000;
            FlareCount = 0;
            me->setFaction(factionNorm);
        }

        void DoFriend()
        {
            me->RemoveAllAuras();
            me->DeleteThreatList();
            me->CombatStop(true);

            me->StopMoving();
            me->GetMotionMaster()->MoveIdle();

            me->setFaction(FACTION_FRIENDLY_F);
            me->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
        {
            if (spell->Id == SPELL_FLARE || spell->Id == SPELL_FOLLY)
            {
                ++FlareCount;

                if (FlareCount >= 2)
                    IsFriend = true;
            }
        }

        void EnterCombat(Unit* /*who*/) {}

        void UpdateAI(const uint32 diff)
        {
            if (IsFriend)
            {
                if (Reset_Timer <= diff)
                {
                    EnterEvadeMode();
                    return;
                } else Reset_Timer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }

        void ReceiveEmote(Player* /*player*/, uint32 emote)
        {
            if (emote == TEXT_EMOTE_SALUTE)
            {
                if (FlareCount >= 2)
                {
                    if (me->getFaction() == FACTION_FRIENDLY_F)
                        return;

                    DoFriend();
                }
            }
        }
    };
};

/*#####
## npc_twiggy_flathead
#####*/

enum eTwiggyFlathead
{
    NPC_BIG_WILL                = 6238,
    NPC_AFFRAY_CHALLENGER       = 6240,

    SAY_BIG_WILL_READY          = -1000123,
    SAY_TWIGGY_FLATHEAD_BEGIN   = -1000124,
    SAY_TWIGGY_FLATHEAD_FRAY    = -1000125,
    SAY_TWIGGY_FLATHEAD_DOWN    = -1000126,
    SAY_TWIGGY_FLATHEAD_OVER    = -1000127,
};

float AffrayChallengerLoc[6][4]=
{
    {-1683.0f, -4326.0f, 2.79f, 0.0f},
    {-1682.0f, -4329.0f, 2.79f, 0.0f},
    {-1683.0f, -4330.0f, 2.79f, 0.0f},
    {-1680.0f, -4334.0f, 2.79f, 1.49f},
    {-1674.0f, -4326.0f, 2.79f, 3.49f},
    {-1677.0f, -4334.0f, 2.79f, 1.66f}
};

class npc_twiggy_flathead : public CreatureScript
{
public:
    npc_twiggy_flathead() : CreatureScript("npc_twiggy_flathead") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_twiggy_flatheadAI (creature);
    }

    struct npc_twiggy_flatheadAI : public ScriptedAI
    {
        npc_twiggy_flatheadAI(Creature* c) : ScriptedAI(c) {}

        bool EventInProgress;
        bool EventGrate;
        bool EventBigWill;
        bool Challenger_down[6];
        uint32 Wave;
        uint32 Wave_Timer;
        uint32 Challenger_checker;
        uint64 PlayerGUID;
        uint64 AffrayChallenger[6];
        uint64 BigWill;

        void Reset()
        {
            EventInProgress = false;
            EventGrate = false;
            EventBigWill = false;
            Wave_Timer = 600000;
            Challenger_checker = 0;
            Wave = 0;
            PlayerGUID = 0;

            for (uint8 i = 0; i < 6; ++i)
            {
                AffrayChallenger[i] = 0;
                Challenger_down[i] = false;
            }
            BigWill = 0;
        }

        void EnterCombat(Unit* /*who*/) { }

        void MoveInLineOfSight(Unit* who)
        {
            if (!who || (!who->isAlive())) return;

            if (me->IsWithinDistInMap(who, 10.0f) && (who->GetTypeId() == TYPEID_PLAYER) && CAST_PLR(who)->GetQuestStatus(1719) == QUEST_STATUS_INCOMPLETE && !EventInProgress)
            {
                PlayerGUID = who->GetGUID();
                EventInProgress = true;
            }
        }

        void KilledUnit(Unit* /*victim*/) { }

        void UpdateAI(const uint32 diff)
        {
            if (EventInProgress) {
                Player* pWarrior = NULL;

                if (PlayerGUID)
                    pWarrior = Unit::GetPlayer(*me, PlayerGUID);

                if (!pWarrior)
                    return;

                if (!pWarrior->isAlive() && pWarrior->GetQuestStatus(1719) == QUEST_STATUS_INCOMPLETE) {
                    EventInProgress = false;
                    DoScriptText(SAY_TWIGGY_FLATHEAD_DOWN, me);
                    pWarrior->FailQuest(1719);

                    for (uint8 i = 0; i < 6; ++i)
                    {
                        if (AffrayChallenger[i])
                        {
                            Creature* creature = Unit::GetCreature((*me), AffrayChallenger[i]);
                            if (creature) {
                                if (creature->isAlive())
                                {
                                    creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IN_COMBAT);
                                    creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                    creature->setDeathState(JUST_DIED);
                                }
                            }
                        }
                        AffrayChallenger[i] = 0;
                        Challenger_down[i] = false;
                    }

                    if (BigWill)
                    {
                        Creature* creature = Unit::GetCreature((*me), BigWill);
                        if (creature) {
                            if (creature->isAlive()) {
                                creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IN_COMBAT);
                                creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                creature->setDeathState(JUST_DIED);
                            }
                        }
                    }
                    BigWill = 0;
                }

                if (!EventGrate && EventInProgress)
                {
                    float x, y, z;
                    pWarrior->GetPosition(x, y, z);

                    if (x >= -1684 && x <= -1674 && y >= -4334 && y <= -4324) {
                        pWarrior->AreaExploredOrEventHappens(1719);
                        DoScriptText(SAY_TWIGGY_FLATHEAD_BEGIN, me);

                        for (uint8 i = 0; i < 6; ++i)
                        {
                            Creature* creature = me->SummonCreature(NPC_AFFRAY_CHALLENGER, AffrayChallengerLoc[i][0], AffrayChallengerLoc[i][1], AffrayChallengerLoc[i][2], AffrayChallengerLoc[i][3], TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000);
                            if (!creature)
                                continue;
                            creature->setFaction(35);
                            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            creature->HandleEmoteCommand(EMOTE_ONESHOT_ROAR);
                            AffrayChallenger[i] = creature->GetGUID();
                        }
                        Wave_Timer = 5000;
                        Challenger_checker = 1000;
                        EventGrate = true;
                    }
                }
                else if (EventInProgress)
                {
                    if (Challenger_checker <= diff)
                    {
                        for (uint8 i = 0; i < 6; ++i)
                        {
                            if (AffrayChallenger[i])
                            {
                                Creature* creature = Unit::GetCreature((*me), AffrayChallenger[i]);
                                if ((!creature || (!creature->isAlive())) && !Challenger_down[i])
                                {
                                    DoScriptText(SAY_TWIGGY_FLATHEAD_DOWN, me);
                                    Challenger_down[i] = true;
                                }
                            }
                        }
                        Challenger_checker = 1000;
                    } else Challenger_checker -= diff;

                    if (Wave_Timer <= diff)
                    {
                        if (Wave < 6 && AffrayChallenger[Wave] && !EventBigWill)
                        {
                            DoScriptText(SAY_TWIGGY_FLATHEAD_FRAY, me);
                            Creature* creature = Unit::GetCreature((*me), AffrayChallenger[Wave]);
                            if (creature && (creature->isAlive()))
                            {
                                creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                                creature->HandleEmoteCommand(EMOTE_ONESHOT_ROAR);
                                creature->setFaction(14);
                                creature->AI()->AttackStart(pWarrior);
                                ++Wave;
                                Wave_Timer = 20000;
                            }
                        }
                        else if (Wave >= 6 && !EventBigWill) {
                            if (Creature* creature = me->SummonCreature(NPC_BIG_WILL, -1722, -4341, 6.12f, 6.26f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 480000))
                            {
                                BigWill = creature->GetGUID();
                                //creature->GetMotionMaster()->MovePoint(0, -1693, -4343, 4.32f);
                                //creature->GetMotionMaster()->MovePoint(1, -1684, -4333, 2.78f);
                                creature->GetMotionMaster()->MovePoint(2, -1682, -4329, 2.79f);
                                creature->HandleEmoteCommand(EMOTE_STATE_READYUNARMED);
                                EventBigWill = true;
                                Wave_Timer = 1000;
                            }
                        }
                        else if (Wave >= 6 && EventBigWill && BigWill)
                        {
                            Creature* creature = Unit::GetCreature((*me), BigWill);
                            if (!creature || !creature->isAlive())
                            {
                                DoScriptText(SAY_TWIGGY_FLATHEAD_OVER, me);
                                EventInProgress = false;
                                EventBigWill = false;
                                EventGrate = false;
                                PlayerGUID = 0;
                                Wave = 0;
                            }
                        }
                    } else Wave_Timer -= diff;
                }
            }
        }
    };
};

/*#####
## npc_wizzlecrank_shredder
#####*/

enum eEnums_Wizzlecrank
{
    SAY_START           = -1000298,
    SAY_STARTUP1        = -1000299,
    SAY_STARTUP2        = -1000300,
    SAY_MERCENARY       = -1000301,
    SAY_PROGRESS_1      = -1000302,
    SAY_PROGRESS_2      = -1000303,
    SAY_PROGRESS_3      = -1000304,
    SAY_END             = -1000305,

    QUEST_ESCAPE        = 863,
    FACTION_RATCHET     = 637,
    NPC_PILOT_WIZZ      = 3451,
    NPC_MERCENARY       = 3282,
};

class npc_wizzlecrank_shredder : public CreatureScript
{
public:
    npc_wizzlecrank_shredder() : CreatureScript("npc_wizzlecrank_shredder") { }

    struct npc_wizzlecrank_shredderAI : public npc_escortAI
    {
        npc_wizzlecrank_shredderAI(Creature* creature) : npc_escortAI(creature)
        {
            m_bIsPostEvent = false;
            m_uiPostEventTimer = 1000;
            m_uiPostEventCount = 0;
        }

        bool m_bIsPostEvent;
        uint32 m_uiPostEventTimer;
        uint32 m_uiPostEventCount;

        void Reset()
        {
            if (!HasEscortState(STATE_ESCORT_ESCORTING))
            {
                if (me->getStandState() == UNIT_STAND_STATE_DEAD)
                     me->SetStandState(UNIT_STAND_STATE_STAND);

                m_bIsPostEvent = false;
                m_uiPostEventTimer = 1000;
                m_uiPostEventCount = 0;
            }
        }

        void WaypointReached(uint32 uiPointId)
        {
            Player* player = GetPlayerForEscort();

            if (!player)
                return;

            switch (uiPointId)
            {
            case 0:
                DoScriptText(SAY_STARTUP1, me);
                break;
            case 9:
                SetRun(false);
                break;
            case 17:
                if (Creature* temp = me->SummonCreature(NPC_MERCENARY, 1128.489f, -3037.611f, 92.701f, 1.472f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 120000))
                {
                    DoScriptText(SAY_MERCENARY, temp);
                    me->SummonCreature(NPC_MERCENARY, 1160.172f, -2980.168f, 97.313f, 3.690f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 120000);
                }
                break;
            case 24:
                m_bIsPostEvent = true;
                break;
            }
        }

        void WaypointStart(uint32 uiPointId)
        {
            Player* player = GetPlayerForEscort();

            if (!player)
                return;

            switch (uiPointId)
            {
                case 9:
                    DoScriptText(SAY_STARTUP2, me, player);
                    break;
                case 18:
                    DoScriptText(SAY_PROGRESS_1, me, player);
                    SetRun();
                    break;
            }
        }

        void JustSummoned(Creature* summoned)
        {
            if (summoned->GetEntry() == NPC_PILOT_WIZZ)
                me->SetStandState(UNIT_STAND_STATE_DEAD);

            if (summoned->GetEntry() == NPC_MERCENARY)
                summoned->AI()->AttackStart(me);
        }

        void UpdateEscortAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
            {
                if (m_bIsPostEvent)
                {
                    if (m_uiPostEventTimer <= uiDiff)
                    {
                        switch (m_uiPostEventCount)
                        {
                            case 0:
                                DoScriptText(SAY_PROGRESS_2, me);
                                break;
                            case 1:
                                DoScriptText(SAY_PROGRESS_3, me);
                                break;
                            case 2:
                                DoScriptText(SAY_END, me);
                                break;
                            case 3:
                                if (Player* player = GetPlayerForEscort())
                                {
                                    player->GroupEventHappens(QUEST_ESCAPE, me);
                                    me->SummonCreature(NPC_PILOT_WIZZ, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 180000);
                                }
                                break;
                        }

                        ++m_uiPostEventCount;
                        m_uiPostEventTimer = 5000;
                    }
                    else
                        m_uiPostEventTimer -= uiDiff;
                }

                return;
            }

            DoMeleeAttackIfReady();
        }
    };

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_ESCAPE)
        {
            creature->setFaction(FACTION_RATCHET);
            if (npc_escortAI* pEscortAI = CAST_AI(npc_wizzlecrank_shredder::npc_wizzlecrank_shredderAI, creature->AI()))
                pEscortAI->Start(true, false, player->GetGUID());
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_wizzlecrank_shredderAI(creature);
    }
};

class npc_sabresnout : public CreatureScript
{
public:
    npc_sabresnout() : CreatureScript("npc_sabresnout") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_sabresnoutAI(pCreature);
    }

    struct npc_sabresnoutAI : public ScriptedAI
    {
        npc_sabresnoutAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint8 Phase;
        uint8 StillAlive;
        uint32 TalkTimer;

        void Reset()
        {
            Phase = 0;
            StillAlive = 10;
            TalkTimer = 3000;
        }
        void SummonedCreatureDespawn(Creature* pBoar) 
        {
            if(!pBoar->isDead())
                return;

            if(StillAlive <= 1)
                Phase = 4;

            --StillAlive;
        }
        void UpdateAI(const uint32 diff)
        {
            if(TalkTimer < diff)
            {
                Unit* pPlayer = me->getVictim();

                    if(me->GetHealthPct() <= 30)
                    {
                        switch(Phase)
                        {
                            case 0: me->CastSpell(me, 70166, true); me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE); me->GetMotionMaster()->MoveTargetedHome(); me->SetReactState(REACT_PASSIVE); TalkTimer = 1000; Phase++; break;
                            case 1: me->MonsterYell("You, <snort> you are strong <Gurgle>. But... Strong enough for THE BOURPOCALYPSE?", 0, 0); TalkTimer = 1000; Phase++; break;
                            case 2:
                            {
                                for (uint8 SummonCount = 10; SummonCount > 0; --SummonCount)
                                {
                                    if(Creature* pBoar = me->SummonCreature(37536, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN, 0))
                                    {
                                        pBoar->setFaction(14);
                                        if(pPlayer)
                                            pBoar->Attack(pPlayer, true);
                                    }
                                }
                                Phase++;
                                break;
                            }
                            case 3: break;
                            case 4: me->MonsterYell("You... survive the boars? <Snort> So many boars! So sad!< Gurgle>", 0, 0); TalkTimer = 1000; Phase++; break;
                            case 5: me->RemoveAurasDueToSpell(70166); me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE); me->SetReactState(REACT_AGGRESSIVE); if(pPlayer) me->Attack(pPlayer, true); Phase++; break;
                        }
                    }
            } else TalkTimer -= diff;
            DoMeleeAttackIfReady();
        }
};
};


/*######
## npc_gorgal
######*/

enum eGorgal
{
    SAY_GORGAL_1    = -1934634,
    SAY_GORGAL_2    = -1934635,
    SAY_GORGAL_3    = -1934636,
    SAY_GORGAL_4    = -1934637,
    SAY_GORGAL_5    = -1934638,
    SAY_GORGAL_6    = -1934639,

    QUEST_KING_OF_CENTAUR_MOUNTAIN      = 13995,
    NPC_KOLKAR_WRANGLER                 = 3273,
    NPC_KURAK                           = 34635,

    SPELL_PLANT_HORDE_BANNER            = 65804
};

class npc_gorgal : public CreatureScript
{
    public:

    npc_gorgal(): CreatureScript("npc_gorgal") {}

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
        {
            if (quest->GetQuestId() == QUEST_KING_OF_CENTAUR_MOUNTAIN)
            {
                DoScriptText(SAY_GORGAL_1, creature, player);
                if (npc_escortAI* pEscortAI = CAST_AI(npc_gorgalAI, (creature->AI())))
                    pEscortAI->Start(false, false, player->GetGUID(), quest);

            }
            return true;
        }

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_gorgalAI (pCreature);
        }

        struct npc_gorgalAI : public npc_escortAI
        {
            npc_gorgalAI(Creature *c) : npc_escortAI(c) {}

			void Reset()
			{
				me->SetRespawnTime(10);
			}
            void WaypointReached(uint32 uiPointId)
            {
                Player* pPlayer = GetPlayerForEscort();

                if (!pPlayer)
                    return;

                switch(uiPointId)
                {
                case 0:SetRun(); break;
                case 5:me->CastSpell(me,SPELL_PLANT_HORDE_BANNER,true); break;
                case 6:DoScriptText(SAY_GORGAL_2, me);break;
                case 7:
                {
                    me->SummonCreature(NPC_KOLKAR_WRANGLER, -1161.58f, -2943.18f, 94.29f, 1.0f, TEMPSUMMON_CORPSE_DESPAWN, 0);
                    me->SummonCreature(NPC_KOLKAR_WRANGLER, -1173.41f, -2955.49f, 93.62f, 1.0f, TEMPSUMMON_CORPSE_DESPAWN, 0);
                    break;
                }
                case 8:
                {
                    DoScriptText(SAY_GORGAL_3, me, pPlayer);
                    me->SummonCreature(NPC_KOLKAR_WRANGLER, -1161.58f, -2943.18f, 94.29f, 1.0f, TEMPSUMMON_CORPSE_DESPAWN, 0);
                    me->SummonCreature(NPC_KOLKAR_WRANGLER, -1173.41f, -2955.49f, 93.62f, 1.0f, TEMPSUMMON_CORPSE_DESPAWN, 0);
                    break;
                }
                case 9:
                {
                    DoScriptText(SAY_GORGAL_4, me, pPlayer);
                    me->SummonCreature(NPC_KURAK, -1163.27f, -2949.18f, 94.09f, 1.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 120000);
                    break;
                }
                case 10:
                {
                    if(Creature* Kurak = me->FindNearestCreature(NPC_KURAK,35.0f,false))
                    {   
                        if(Kurak->isAlive())
                            SetEscortPaused(true);
                        else
                        {
                            DoScriptText(SAY_GORGAL_5, me, pPlayer);
                            SetEscortPaused(false);
                        }
                    }
                    break;
                }
                case 11: DoScriptText(SAY_GORGAL_6, me, pPlayer);
                        me->ForcedDespawn();
                        break;
                }
            }

            void JustSummoned(Creature* pSummoned)
            {
                pSummoned->AI()->AttackStart(me);
                pSummoned->Attack(me,true);
				pSummoned->SetReactState(REACT_AGGRESSIVE);
            }
            void UpdateAI(const uint32 diff)
            {
                npc_escortAI::UpdateAI(diff);
            }
        };
};

enum eTwapp
{
    SPELL_SHRINK    = 66284,
    SPELL_FILL_TWAP = 66286,
    SPELL_SCHRECH   = 66282
};

class npc_twapp : public CreatureScript
{

public:

    npc_twapp() : CreatureScript("npc_twapp") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_twappAI(pCreature);
    }

    struct npc_twappAI : public ScriptedAI
    {
        npc_twappAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint32 TwapTimer;

        void Reset()
        {
            TwapTimer = 4000;
        }

        void UpdateAI(uint32 const diff)
        {
            if (TwapTimer <= diff)
            {
                me->CastSpell(me,SPELL_SCHRECH,false);
                TwapTimer = 4000;
            }else TwapTimer -= diff;
        }
    };
};

/*######
## npc_baron_longshore
######*/

enum eBaron
{
    SAY_BARON_END = -1934640 
};
#define GOSSIP_BARON_1 "Never, you two-timing dog!"
#define GOSSIP_BARON_2 "<Break Longshore's manacles and free him.>"

class npc_baron_longshore : public CreatureScript
{
public:
    npc_baron_longshore() : CreatureScript("npc_baron_longshore") { }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF: pPlayer->CLOSE_GOSSIP_MENU(); break; 
            case GOSSIP_ACTION_INFO_DEF+1: DoScriptText(SAY_BARON_END, pCreature, pPlayer); pPlayer->CompleteQuest(14046); pPlayer->CLOSE_GOSSIP_MENU(); break;
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(14046) == QUEST_STATUS_INCOMPLETE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_BARON_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_BARON_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        }
        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;       
    }
};

/*######
## go_treasure
######*/

enum eTreasure
{
    SAY_BARON_YELL = -1934642  //Hold it, $C! I promised told ye when the treasure is but never promised ye could keep it!
};

class go_treasure : public GameObjectScript
{
public:
    go_treasure() : GameObjectScript("go_treasure") { }

	bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
        pPlayer->SendLoot(pGO->GetGUID(), LOOT_CORPSE);
		pGO->Use(pPlayer);	

        if (pPlayer->GetQuestStatus(14050) == QUEST_STATUS_INCOMPLETE)
        {
            pGO->SummonCreature(3467, -1160.66f, -3623.4f, 95.66f, 1.5f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 0);
            pGO->SummonCreature(3383, -1165.51f, -3617.19f, 94.46f, 1.59f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 0);

        std::list<Creature*> baron;
        pPlayer->GetCreatureListWithEntryInGrid(baron, 3467, 40.0f);
        baron.sort(Trinity::ObjectDistanceOrderPred(pPlayer));
        for(std::list<Creature*>::iterator itr = baron.begin(); itr != baron.end(); itr++)
        {
            if((*itr)->isAlive() && (*itr)->GetTypeId() == TYPEID_UNIT)
            {
                (*itr)->AI()->AttackStart(pPlayer);
                (*itr)->setFaction(14);
                (*itr)->SetStandState(UNIT_STAND_STATE_STAND);
                DoScriptText(SAY_BARON_YELL,(*itr),pPlayer);
                
            }
        }

        }return  true; 
    }
};

enum eTonga
{
    SAY_TONGA_1 = -1034623,
    SAY_TONGA_2 = -1034624,
    SAY_TONGA_3 = -1034625,
    SAY_TONGA_4 = -1034626,
    SAY_TONGA_5 = -1034627
};

class npc_tonga_spirit : public CreatureScript
{

public:

    npc_tonga_spirit() : CreatureScript("npc_tonga_spirit") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_tonga_spiritAI(pCreature);
    }

    struct npc_tonga_spiritAI : public ScriptedAI
    {
        npc_tonga_spiritAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint8 Phase;
        uint32 AriveTimer;
        uint64 PlayerGUID;
        bool bArive;
        bool bRepeat;

        void Reset()
        {
            Phase = 0;
            PlayerGUID = 0;
            AriveTimer = 3000;
            bArive = false;
            bRepeat = false;
        }

        void MoveInLineOfSight(Unit* pWho)
        {
            ScriptedAI::MoveInLineOfSight(pWho);

            if (pWho->GetTypeId() != TYPEID_UNIT)
                return;

            if (pWho->GetEntry() == 34615 && me->IsWithinDistInMap(pWho, 10.0f))
            {
                if (Unit* pOwner = pWho->GetOwner())
                {
                    if (pOwner->GetTypeId() == TYPEID_PLAYER)
                    {
                        if (pOwner->HasAura(65753))
                        {
                            CAST_PLR(pOwner)->KilledMonsterCredit(34631,NULL); 
                            if(!bRepeat)
                            {
                                me->CastSpell(me,65763,true);
                                bRepeat = true;
                            }
                            bArive=true;
                        }
                    }
                }
            }
        }

        void UpdateAI(uint32 const diff)
        {
            if(bArive)
            {
                if(Creature* Tonga = me->FindNearestCreature(34623,70.0f,true))
                {
                    if(AriveTimer <= diff)
                    {
                        switch(Phase)
                        {
                            case 0: DoScriptText(SAY_TONGA_1,Tonga); AriveTimer = 5000; Phase++; break;
                            case 1: Tonga->GetMotionMaster()->MovePoint(0,-1486.84f,-3320.28f,212.34f); AriveTimer = 12000; Phase++; break;
                            case 2: DoScriptText(SAY_TONGA_2,Tonga); Tonga->CastSpell(Tonga,66772,true); Tonga->HandleEmoteCommand(25); AriveTimer = 4000; Phase++; break;
                            case 3: DoScriptText(SAY_TONGA_3,Tonga); Tonga->GetMotionMaster()->MovePoint(1,-1494.53f,-3306.23f,210.34f); AriveTimer = 16000; Phase++; break;
                            case 4: DoScriptText(SAY_TONGA_4,Tonga); AriveTimer = 7000; Tonga->HandleEmoteCommand(22); Phase++; break; 
                            case 5: Tonga->GetMotionMaster()->MovePoint(2,-1496.02f,-3299.61f,210.75f); AriveTimer = 6000; Phase++; break;
                            case 6: Tonga->GetMotionMaster()->MovePoint(3,-1481.65f,-3301.23f,210.76f); AriveTimer = 6000; Phase++; break;
                            case 7: DoScriptText(SAY_TONGA_5,Tonga); AriveTimer = 8000; Phase++; break;
                            case 8: Tonga->CastSpell(Tonga,64446,true); AriveTimer = 1000; Phase++; break;
                            case 9: Tonga->ForcedDespawn(); break;
                            default: break;
                        }
                    }else AriveTimer -= diff;
                }
            }
        }
    };
};

class go_bubbling_fissure : public GameObjectScript
{
public:
    go_bubbling_fissure() : GameObjectScript("go_bubbling_fissure") { }

	bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
		pGO->Use(pPlayer);	

        if (pPlayer->GetQuestStatus(877) == QUEST_STATUS_INCOMPLETE)
        {
            pPlayer->CompleteQuest(877);
        }
        return true;
    }
};

class npc_limpet_mine : public CreatureScript
{
public:

    npc_limpet_mine() : CreatureScript("npc_limpet_mine") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_limpet_mineAI(pCreature);
    }

    struct npc_limpet_mineAI : public ScriptedAI
    {
        npc_limpet_mineAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint8 Phase;
        uint32 TickingTimer;

        void Reset()
        {
            TickingTimer = 1000;
        }

        void UpdateAI(uint32 const diff)
        {
            if(TickingTimer <= diff)
            {
                switch(Phase)
                {
                    case 0: me->MonsterTextEmote("5",NULL,true); TickingTimer = 1000; Phase++; break;
                    case 1: me->MonsterTextEmote("4",NULL,true); TickingTimer = 1000; Phase++; break;
                    case 2: me->MonsterTextEmote("3",NULL,true); TickingTimer = 1000; Phase++; break;
                    case 3: me->MonsterTextEmote("2",NULL,true); TickingTimer = 1000; Phase++; break;
                    case 4: me->MonsterTextEmote("1",NULL,true); TickingTimer = 1000; Phase++; break;
                    case 5: me->CastSpell(me,65779,true); TickingTimer = 1000; Phase++; break;
                    case 6: me->ForcedDespawn(); break;
                    default: break;
                }
            }else TickingTimer -= diff;
        }
    };
};

enum eAttack
{
    NPC_KOLKAR_STORMSEER            = 9523,
    NPC_KOLKAR_INVADER              = 9524,
    NPC_CHIEF                       = 9456,
    NPC_DEFENDER                    = 9457,
    QUEST_COUNTERATTACK             = 4021,

    SAY_RETHGAR         = -1934643,
    SAY_RETHGAR_FALL    = -1934644,

};

float FirstWavePositions[][5] = {
    {NPC_KOLKAR_INVADER, -319.29f, -1865.61f, 93.87f, 0.0f},
    {NPC_KOLKAR_INVADER, -331.54f, -1869.58f, 93.79f, 0.0f},
    {NPC_KOLKAR_INVADER, -330.97f, -1855.23f, 94.45f, 0.0f},
    {NPC_KOLKAR_INVADER, -320.59f, -1849.29f, 95.26f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -302.95f, -1853.68f, 93.60f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -299.94f, -1835.3f, 94.44f, 0.0f},
    {NPC_DEFENDER, -296.77f, -1882.52f, 91.90f, 0.0f},
    {NPC_DEFENDER, -292.23f, -1882.55f, 92.45f, 0.0f},
    {NPC_DEFENDER, -282.23f, -1882.64f, 92.59f, 0.0f},
    {NPC_DEFENDER, -275.12f, -1881.46f, 92.29f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -278.72f, -1860.92f, 92.64f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -284.71f, -1848.79f, 92.50f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -268.45f, -1857.25f, 93.18f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -267.05f, -1843.16f, 93.26f, 0.0f},
};

float SecondWavePositions[][5] = {
    {NPC_KOLKAR_INVADER, -319.29f, -1865.61f, 93.87f, 0.0f},
    {NPC_KOLKAR_INVADER, -331.54f, -1869.58f, 93.79f, 0.0f},
    {NPC_KOLKAR_INVADER, -330.97f, -1855.23f, 94.45f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -320.59f, -1849.29f, 95.26f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -302.95f, -1853.68f, 93.60f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -299.94f, -1835.3f, 94.44f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -278.72f, -1860.92f, 92.64f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -284.71f, -1848.79f, 92.50f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -268.45f, -1857.25f, 93.18f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -267.05f, -1843.16f, 93.26f, 0.0f},
};

float FinalWavePositions[][5] = {
    {NPC_KOLKAR_INVADER, -319.29f, -1865.61f, 93.87f, 0.0f},
    {NPC_KOLKAR_INVADER, -331.54f, -1869.58f, 93.79f, 0.0f},
    {NPC_KOLKAR_INVADER, -330.97f, -1855.23f, 94.45f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -320.59f, -1849.29f, 95.26f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -302.95f, -1853.68f, 93.60f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -299.94f, -1835.3f, 94.44f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -278.72f, -1860.92f, 92.64f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -284.71f, -1848.79f, 92.50f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -268.45f, -1857.25f, 93.18f, 0.0f},
    {NPC_KOLKAR_STORMSEER, -267.05f, -1843.16f, 93.26f, 0.0f},
    {NPC_CHIEF, -291.80f, -1861.41f, 92.52f, 0.0f},
};

class npc_counterattack : public CreatureScript
{
public:

    npc_counterattack() : CreatureScript("npc_counterattack") { }

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const *pQuest)
    {
        if(pCreature && pCreature->isAlive())
        {
            if (pQuest->GetQuestId() == QUEST_COUNTERATTACK)
            {
                if(!CAST_AI(npc_counterattack::npc_counterattackAI, pCreature->AI())->AttackStart)
                {
                    CAST_AI(npc_counterattack::npc_counterattackAI, pCreature->AI())->AttackStart = true;
                    CAST_AI(npc_counterattack::npc_counterattackAI, pCreature->AI())->StartShout();
                    return true;              
                }
            }
        }return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_counterattackAI(pCreature);
    }

    struct npc_counterattackAI : public ScriptedAI
    {
        npc_counterattackAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint8 Phase;
        uint32 WaveTimer;
        bool AttackStart;


        void Reset()
        {
            AttackStart = false;
            WaveTimer = 10000;
            Phase = 0;
        }

        void StartShout()
        {
            if(Player *pPlayer = me->FindNearestPlayer(7.0f, true))
            {
                DoScriptText(-1934643, me, pPlayer);
            }
        }
        void SummonFirstWave()
        {
            for(int i = 0; i < 14; i++)
                me->SummonCreature(FirstWavePositions[i][0], FirstWavePositions[i][1], FirstWavePositions[i][2], FirstWavePositions[i][3], FirstWavePositions[i][4], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void SummonSecondWave()
        {
            for(int i = 0; i < 10; i++)
                me->SummonCreature(SecondWavePositions[i][0], SecondWavePositions[i][1], SecondWavePositions[i][2], SecondWavePositions[i][3], SecondWavePositions[i][4], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void SummonFinalWave()
        {
            for(int i = 0; i < 11; i++)
                me->SummonCreature(FinalWavePositions[i][0], FinalWavePositions[i][1], FinalWavePositions[i][2], FinalWavePositions[i][3], FinalWavePositions[i][4], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void UpdateAI(uint32 const diff)
        {
            if(AttackStart)
            {
                if(WaveTimer <= diff)
                {
                    switch(Phase)
                    {
                        case 0: SummonFirstWave(); WaveTimer = 60000; Phase++; break;
                        case 1: SummonSecondWave(); WaveTimer = 60000; Phase++; break;
                        case 2: SummonFinalWave(); WaveTimer = 60000; Phase++; break;
                        case 3: Reset(); break;
                        default: break;
                    }
                }else WaveTimer -= diff;
            }

            std::list<Creature*> defender;
            me->GetCreatureListWithEntryInGrid(defender, 9457, 200.0f);
            defender.sort(Trinity::ObjectDistanceOrderPred(me));
            for(std::list<Creature*>::iterator itr = defender.begin(); itr != defender.end(); itr++)
            {
                if((*itr)->isDead() && (*itr)->GetTypeId() == TYPEID_UNIT)
                {               
                    DoScriptText(SAY_RETHGAR_FALL, me, NULL);               
                }
            }
        }
    };
};

enum eTony
{
    QUEST_MUTINY_MON    = 14063,

    SAY_TONY_YELL       = -1934645,
    SAY_TONY_1          = -1934646,
    SAY_TONY_2          = -1934647,
    SAY_TONY_3          = -1934648,
    SAY_TONY_4          = -1934649,
};

class npc_tony_two : public CreatureScript
{
public:
    npc_tony_two() : CreatureScript("npc_tony_two") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_tony_twoAI (pCreature);
    }

    struct npc_tony_twoAI : public ScriptedAI
    {
       npc_tony_twoAI(Creature *c) : ScriptedAI(c) {}

            uint8 Phase;
            uint32 HelpTimer;

            void Reset()
            {
                Phase = 0;
                me->SetFlag(UNIT_NPC_FLAGS,UNIT_NPC_FLAG_QUESTGIVER);
                HelpTimer = 2000;            
            }

            void UpdateAI(uint32 const diff)
            {
                if(HelpTimer <= diff)
                {
                    if(GameObject* pMaiden = me->FindNearestGameObject(3001617,45.0f))
                    {                       
                        switch(Phase)
                        {
                            case 0:
                            {
                                DoScriptText(SAY_TONY_YELL,me,0);
                                me->HandleEmoteCommand(0);
                                me->RemoveFlag(UNIT_NPC_FLAGS,UNIT_NPC_FLAG_QUESTGIVER);
                                me->GetMotionMaster()->MovePoint(0, -1680.06f, -4373.19f, 10.6f); HelpTimer = 3500; Phase++; break;
                            }
                            case 1: DoScriptText(SAY_TONY_1,me,0); me->GetMotionMaster()->MovePoint(1, -1659.00f, -4377.39f, 10.36f); HelpTimer = 4000; Phase++; break;
                            case 2: me->GetMotionMaster()->MovePoint(2, -1658.58f, -4389.16f, 5.3f); HelpTimer = 3000; Phase++; break;
                            case 3: me->GetMotionMaster()->MovePoint(3, -1668.75f, -4386.70f, 5.3f); HelpTimer = 2500; Phase++; break;
                            case 4: DoScriptText(SAY_TONY_2,me,0); me->GetMotionMaster()->MovePoint(4, -1669.73f, -4375.21f, 5.3f); HelpTimer = 4000; Phase++; break;
                            case 5: me->GetMotionMaster()->MovePoint(5, -1649.51f, -4380.79f, 5.3f); HelpTimer = 4000; Phase++; break;
                            case 6: 
                            {
                                    if(Creature *Alicia = me->FindNearestCreature(34782,15.0f,true))
                                    {
                                        me->AI()->AttackStart(Alicia);
                                        me->HandleEmoteCommand(0);
                                        HelpTimer = 25000;
                                        Phase++;
                                    }
                            }break;
                            case 7: me->HandleEmoteCommand(0); DoScriptText(SAY_TONY_3,me,0); HelpTimer = 4000; Phase++; break;
                            case 8: me->HandleEmoteCommand(0); DoScriptText(SAY_TONY_4,me,0); HelpTimer = 2000; Phase++; break;
                            case 9: me->ForcedDespawn();
                            default: break;
                        }  
                    }
                }else HelpTimer -= diff;

                DoMeleeAttackIfReady();
            }
        };
};

/*######
## npc_trapped_wolf
######*/

enum eTrappedWolf
{
SPELL_CHAINED_TO_STABLE = 65072,
    NPC_TRAPPED_WOLF = 34285,
    NPC_CHAIN_ORIGIN = 34287,
    GO_WOLF_CHAIN = 195001
};

class npc_trapped_wolf : public CreatureScript
{
public:
    npc_trapped_wolf() : CreatureScript("npc_trapped_wolf") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_trapped_wolfAI (pCreature);
    }

    struct npc_trapped_wolfAI : public ScriptedAI
    {
       npc_trapped_wolfAI(Creature *c) : ScriptedAI(c) {}

       uint8 Phase;
       uint32 RunTimer;
       bool StartRun;
       
       void Reset()
       {
           Phase = 0;
           RunTimer = 2000;
           StartRun = false; 

           if(Creature* Chain = me->FindNearestCreature(NPC_CHAIN_ORIGIN,15.0f,true))
           {
               Chain->CastSpell(me,SPELL_CHAINED_TO_STABLE,true);
           }
       }

       void UpdateAI(const uint32 diff)
       {
           if(!me->HasAura(65072))
           {
               if(RunTimer <= diff)
               {
                   switch(Phase)
                   {
                       case 0: me->GetMotionMaster()->MoveCharge(0, -6.69f, -3630.72f, 27.36f); RunTimer = 2000; Phase++; break;
                       case 1: me->GetMotionMaster()->MoveCharge(1, 5.07f, -3616.61f, 27.23f); RunTimer = 2500; Phase++; break;
                       case 2: me->DisappearAndDie();
                       default : break;
                   }
               }else RunTimer -= diff;
            }
       }

    };
};
/*######
## go_wolf_chain
######*/

enum eWolfChain
{};

class go_wolf_chain : public GameObjectScript
{
public:
    go_wolf_chain() : GameObjectScript("go_wolf_chain") { }

	bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
		pGO->Use(pPlayer);	

        if (pPlayer->GetQuestStatus(13878) == QUEST_STATUS_INCOMPLETE)
        {
            if(Creature* Origin = pGO->FindNearestCreature(34287,5.0f,true))
            {
                    Origin->CastStop();
                    pPlayer->KilledMonsterCredit(34285,0);             
            }
        }return  true;
    }
};

/*######
## npc_dragged_razormane
######*/
enum eDragged
{
    SPELL_DRAGGING_RAZOMANE = 65601,
    SPELL_RAZORMANE_ROPE    = 65596,
    SPELL_DRAGGING_AURA     = 65608,
    SPELL_SUMMON_HOGTIED    = 65595,
    NPC_RAZOMANE_PILLAGER   = 34503
};

#define GOSSIP_DRAG_RAZORMANE "<Pound it and drag Razormane>"

class npc_dragged_razormane : public CreatureScript
{
public:
    npc_dragged_razormane() : CreatureScript("npc_dragged_razormane") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {    
        if (pPlayer->GetQuestStatus(13961) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_DRAG_RAZORMANE, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
            pPlayer->CastSpell(pCreature,SPELL_SUMMON_HOGTIED,false);
            pCreature->DisappearAndDie();
            pPlayer->CastSpell(pPlayer,SPELL_DRAGGING_RAZOMANE,true);
        }return true;
    }
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_dragged_razormaneAI (pCreature);
    }

    struct npc_dragged_razormaneAI : public ScriptedAI
    {
        npc_dragged_razormaneAI(Creature *c) : ScriptedAI(c) {}

        void Reset() {}
        void SpellHit(Unit *Hitter, const SpellInfo *Spell)
        {
            if (Spell->Id == 65580)
            {
                me->setFaction(35);
                me->CombatStop(true);
                me->AttackStop();
            }
        }
    };

};
/*######
## npc_hogtied_razormane
######*/

class npc_hogtied_razormane : public CreatureScript
{
public:
    npc_hogtied_razormane() : CreatureScript("npc_hogtied_razormane") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_hogtied_razormaneAI (pCreature);
    }

    struct npc_hogtied_razormaneAI : public ScriptedAI
    {
       npc_hogtied_razormaneAI(Creature *c) : ScriptedAI(c) {}

       uint32 CheckTimer;
       uint32 DragTimer;

       bool bDone;

       void Reset()
       {
           DragTimer = 2000;
           CheckTimer = 1000; 
           bDone = false;
       }

       void UpdateAI(uint32 const diff)
       {
           if(DragTimer <= diff)
           {
               me->CastSpell(me,SPELL_DRAGGING_AURA,true);
               DragTimer = 2000;
           }
           else DragTimer -= diff;
           if(CheckTimer <= diff)
           {
               if(Player* pPlayer = me->GetCharmerOrOwnerPlayerOrPlayerItself())
               {
                   if(!bDone)
                   {
                       me->SetStandState(UNIT_STAND_STATE_DEAD);
                       pPlayer->CastSpell(me,65596,true);
                       me->GetMotionMaster()->MoveFollow(pPlayer,5.0f,2.2f);
                       bDone=true;
                   }
               }
           }else CheckTimer -= diff;
       }
    };
};
/*######
## npc_togrik
######*/

#define GOSSIP_CAPTURED "Togrik, can you let me talk with the prisoner again?"

class npc_togrik : public CreatureScript
{
public:
    npc_togrik() : CreatureScript("npc_togrik") { }
    
    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF)
        {
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
            pCreature->SummonCreature(34523, 284.98f, -3050.89f, 95.84f, 0.25f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 90000);
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(13963) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CAPTURED, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }


    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_togrikAI (pCreature);
    }

    struct npc_togrikAI : public ScriptedAI
    {
        npc_togrikAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        void MoveInLineOfSight(Unit* pWho)
        {
            ScriptedAI::MoveInLineOfSight(pWho);

            if (pWho->GetTypeId() != TYPEID_UNIT)
                return;

            if (pWho->GetEntry() == 34514 && me->IsWithinDistInMap(pWho, 10.0f))
            {
                if (Player* pOwner = pWho->GetOwner()->ToPlayer())
                {
                    if (pOwner->HasAura(SPELL_DRAGGING_RAZOMANE))
                    {
                        pOwner->CompleteQuest(13961);
                        pWho->ToCreature()->DisappearAndDie();
                    }
                }
            }
        }
    };
};

/*######
## npc_halga
######*/

enum eHalga
{
    SAY_CARAVAN_START = -1034258 /*Mount up, $N. Do not fail me!*/
};
#define GOSSIP_CARAVAN "Yes. I'm ready. Let's do this thing!"

class npc_halga : public CreatureScript
{
public:
    npc_halga() : CreatureScript("npc_halga") { }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF)
        {
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
            pCreature->HandleEmoteCommand(3);
            pCreature->SummonCreature(34431, 311.32f, -3679.29f, 27.18f, 6.25f, TEMPSUMMON_CORPSE_DESPAWN, 0);
            pCreature->SummonCreature(34430, 318.24f, -3676.88f, 27.18f, 1.55f, TEMPSUMMON_CORPSE_DESPAWN, 0);
            DoScriptText(SAY_CARAVAN_START, pCreature, pPlayer);
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(13949) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CARAVAN, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }
};
/*#########################
##npc_captured_razormane###
#########################*/

enum eCaptured
{
    SPELL_NASTY             = 65629,
    SPELL_SAINTLY           = 65628,
    SPELL_HIT_ME            = 65600,
    SPELL_KICK_ME           = 65619,
    NPC_CAPTURED_RAZORMANE  = 34523,

    SAY_NOTHING             = -1034523,
    SAY_KICK                = -1034524,
    SAY_KICK_1              = -1034525,
    SAY_PUNCH               = -1034526,
    SAY_PUNCH_1             = -1034527,
    SAY_KICK_2              = -1034528,
    SAY_FOOD                = -1034529,
    SAY_CREDIT_1            = -1034530,
    SAY_TIME                = -1034531
};

#define GOSSIP_SNORT "Who sent you!"
#define GOSSIP_PUNCH "<Punch him in the mouth.>"
#define GOSSIP_KICK  "<Kick him in his big fat face.>"
#define GOSSIP_FOOD  "<Offer food.>"
#define GOSSIP_TIME  "<Tickle Time!>"

class npc_captured_razormane : public CreatureScript
{
public:
    npc_captured_razormane() : CreatureScript("npc_captured_razormane") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {    
        if (pPlayer->GetQuestStatus(13963) == QUEST_STATUS_INCOMPLETE)
        {
            if(!pPlayer->HasAura(65629))
            {
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SNORT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_PUNCH, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_KICK, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_FOOD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_TIME, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
            } 
            else
            {
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SNORT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_PUNCH, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_KICK, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            }
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        }    
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF + 1: DoScriptText(SAY_NOTHING, pCreature, pPlayer); break; 
            case GOSSIP_ACTION_INFO_DEF + 2:
            {
                pPlayer->CastSpell(pPlayer,SPELL_HIT_ME,true);
                pPlayer->CastSpell(pPlayer,SPELL_NASTY,true);
                DoScriptText(RAND(SAY_PUNCH,SAY_PUNCH_1), pCreature);
            } break;
            case GOSSIP_ACTION_INFO_DEF + 3:
            {
                pPlayer->CastSpell(pPlayer,65619,true);
                pPlayer->CastSpell(pPlayer,SPELL_NASTY,true);
                DoScriptText(RAND(SAY_KICK,SAY_KICK_1,SAY_KICK_2), pCreature);
            } break;
            case GOSSIP_ACTION_INFO_DEF + 4:
            {
                DoScriptText(SAY_FOOD,pCreature,pPlayer);
                DoScriptText(SAY_CREDIT_1,pCreature,pPlayer);
                pPlayer->CastSpell(pPlayer,SPELL_SAINTLY,true);
                pPlayer->KilledMonsterCredit(34529,0);
            } break;
            case GOSSIP_ACTION_INFO_DEF + 5:
            {
                DoScriptText(SAY_TIME,pCreature,pPlayer);
                DoScriptText(SAY_CREDIT_1,pCreature,pPlayer);
                pPlayer->CastSpell(pPlayer,SPELL_SAINTLY,true);
                pPlayer->KilledMonsterCredit(34529,0);
            } break;
        }
        return true;
    }
};



void AddSC_the_barrens()
{
    new npc_beaten_corpse();
    new npc_gilthares();
    new npc_sputtervalve();
    new npc_taskmaster_fizzule();
    new npc_twiggy_flathead();
    new npc_wizzlecrank_shredder();
    new npc_trapped_wolf();
    new go_wolf_chain();
    new npc_dragged_razormane();
    new npc_hogtied_razormane();
    new npc_togrik();
    new npc_halga();
    new npc_captured_razormane();
    new npc_sabresnout();
	new npc_gorgal();
    new npc_twapp();
    new npc_baron_longshore();
    new go_treasure();
	new npc_tonga_spirit();
    new go_bubbling_fissure();
    new npc_limpet_mine();
    new npc_counterattack();
    new npc_tony_two();
}