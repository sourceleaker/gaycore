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

/* ScriptData
SDName: Dun_Morogh
SD%Complete: 50
SDComment: Quest support: 1783
SDCategory: Dun Morogh
EndScriptData */

/* ContentData
npc_narm_faulk
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_narm_faulk
######*/

// signed for 6172
enum eNarmFaulkData
{
    SAY_HEAL = -1000187,
};

class npc_narm_faulk : public CreatureScript
{
public:
    npc_narm_faulk() : CreatureScript("npc_narm_faulk") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_narm_faulkAI (pCreature);
    }

    struct npc_narm_faulkAI : public ScriptedAI
    {
        uint32 lifeTimer;
        bool spellHit;

        npc_narm_faulkAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            lifeTimer = 120000;
            me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
            me->SetStandState(UNIT_STAND_STATE_DEAD);
            spellHit = false;
        }

        void EnterCombat(Unit * /*who*/)
        {
        }

        void MoveInLineOfSight(Unit * /*who*/)
        {
            return;
        }

        void UpdateAI(const uint32 diff)
        {
           if (me->IsStandState())
            {
                if (lifeTimer <= diff)
                {
                    EnterEvadeMode();
                    return;
                }
                else
                    lifeTimer -= diff;
            }
        }

        void SpellHit(Unit * /*Hitter*/, const SpellInfo *Spellkind)
        {
            if (Spellkind->Id == 8593 && !spellHit)
            {
                DoCast(me, 32343);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, 0);
                //me->RemoveAllAuras();
                DoScriptText(SAY_HEAL, me);
                spellHit = true;
            }
        }
    };
};

class sanitron500 : public CreatureScript
{
public: sanitron500() : CreatureScript("npc_sanitron500") { }

    struct sanitron500AI : public ScriptedAI
    {
        sanitron500AI(Creature *c) : ScriptedAI(c) {}

        //bool EventStarted;

        uint8 Phase;
        uint32 PhaseTime;
        uint64 PlayerGuid;

        void Reset()
        {
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
            me->GetMotionMaster()->MoveTargetedHome();
            Phase = 0;
            PlayerGuid = 0;
            //EventStarted = false;
        }

        void SpellHit(Unit* pPlayer, const SpellInfo* pSpell)
        {
            if(pSpell->Id == 86106)
            {
                PlayerGuid = pPlayer->GetGUID();
                if(pPlayer->isAlive())
                {
                    me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                    pPlayer->EnterVehicle(me, 0);
                }
                //EventStarted = true;
                PhaseTime = 1000;
            }
        }

        void SearchForTrigger(Unit* target, uint32 triggerEntry, uint32 SpellID, bool ArcRequirement)
        {
            //Player* pPlayer = me->GetPlayer(*me, PlayerGuid);

            std::list<Unit*> SearchedTriggers;
            Trinity::AllCreaturesOfEntryInRange u_check(target, triggerEntry, 100.0f);
            Trinity::UnitListSearcher<Trinity::AllCreaturesOfEntryInRange> searcher(target, SearchedTriggers, u_check);
            target->VisitNearbyObject(100.0f, searcher);

            if(SearchedTriggers.empty())
                return;

            for (std::list<Unit*>::const_iterator iter = SearchedTriggers.begin(); iter != SearchedTriggers.end(); ++iter)
            {
                if(ArcRequirement)
                {
                    if((*iter)->HasInArc(M_PI/3, me))
                        (*iter)->CastSpell(target, SpellID, true);

                } else (*iter)->CastSpell(target, SpellID, true);
            } SearchedTriggers.clear();
        }

        void UpdateAI(const uint32 diff)
        {
            if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
            {
                if(PhaseTime <= diff)
                {
                    switch(Phase)
                    {
                        case 0:
                        {
                            me->MonsterSay("Commencing decontamination sequence...", 0, 0);
                            me->GetMotionMaster()->MoveForward(7.5f, 3.5f);
                            Phase++;
                            PhaseTime = 4000;
                            break;
                        }
                        case 1: SearchForTrigger(pPlayer, 46165, 86075, true); Phase++; PhaseTime = 2000; break;
                        case 2: me->GetMotionMaster()->MoveForward(9.0f, -1.5f); Phase++; PhaseTime = 2000; break;
                        case 3: SearchForTrigger(pPlayer, 46208, 86080, false); pPlayer->CastSpell(pPlayer, 86084, true); Phase++; PhaseTime = 5000; break;
                        case 4: me->GetMotionMaster()->MoveForward(8.0f, 1.0f); Phase++; PhaseTime = 5000; break;
                        case 5: SearchForTrigger(pPlayer, 46165, 86086, true); Phase++; PhaseTime = 5000; break;
                        case 6: me->MonsterSay("Decontamination complete. Standby for delivery.", 0, 0); Phase++; PhaseTime = 1000; break;
                        case 7: me->GetMotionMaster()->MoveForward(6.0f, 0.0f);  Phase++; PhaseTime = 2000; break;
                        case 8: me->MonsterSay("Warning, system overload. Malfunction imminent!", 0, 0); Phase++; PhaseTime = 3000; break;
                        case 9: pPlayer->ExitVehicle(); Reset(); break;
                        default: break;
                    }
                } else PhaseTime -= diff;
            }
        }
    };
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new sanitron500AI(pCreature);
    }
};

float CrushcogAddPlace[4][4] =
{
    //X          Y          Z        O
    {-5250.250f, 130.0f, 394.269f, 4.50f}, //2nd from left
    {-5239.800f, 128.200f, 394.500f, 4.26f}, //1st from left
    {-5245.937f, 105.853f, 392.336f, 1.75f},
    {-5255.550f, 106.500f, 392.402f, 1.60f}
};

uint32 RayType[] = {80098, 80110, 80148};
#define GOSSIP_ITEM_START "I'm ready to start the assault."

class npc_MekkaTorque : public CreatureScript
{
public:
    npc_MekkaTorque() : CreatureScript("npc_MekkaTorque") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if(!CAST_AI(npc_MekkaTorque::npc_MekkaTorqueAI, pCreature->AI())->EventStartedPart1)
        {
            if (pPlayer->GetQuestStatus(26364) == QUEST_STATUS_INCOMPLETE)
                if(Creature* pHelper = pCreature->FindNearestCreature(42852, 20.0f, true))
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_START, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

            return true;
        }
        return false;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            CAST_AI(npc_MekkaTorque::npc_MekkaTorqueAI, pCreature->AI())->EventStartedPart1 = true;
            CAST_AI(npc_MekkaTorque::npc_MekkaTorqueAI, pCreature->AI())->PlayerGuid = pPlayer->GetGUID();
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_MekkaTorqueAI(pCreature);
    }

struct npc_MekkaTorqueAI : public ScriptedAI
{
    npc_MekkaTorqueAI(Creature *c) : ScriptedAI(c) {}

    bool EventStartedPart1;
    bool EventStartedPart2;
    bool AttackPhase;
    uint8 Phase;
    uint32 Timer;
    uint64 PlayerGuid;

    void Reset()
    {
        Phase = 0;
        PlayerGuid = 0;
        EventStartedPart1 = false;
        EventStartedPart2 = false;
        AttackPhase = false;
        Timer = 5000;

        me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
    }

    void SummonCrushcogAndHisAdds()
    {
        if(Creature* pC = me->SummonCreature(42839, -5246.240f, 119.70f, 394.33f, 3.02f, TEMPSUMMON_MANUAL_DESPAWN, 30000))
        {
            pC->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            pC->SetReactState(REACT_PASSIVE);

            for(int i = 0; i < 4; i++)
                pC->SummonCreature(42294, CrushcogAddPlace[i][0], CrushcogAddPlace[i][1], CrushcogAddPlace[i][2], CrushcogAddPlace[i][3], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 15000);
        }
    };

    void AddRemoveFlagsFromAdds()
    {
        std::list<Creature*> CrushcogAdds;
        GetCreatureListWithEntryInGrid(CrushcogAdds, me, 42294, 150.0f);

        if(AttackPhase)
        {
            for (std::list<Creature*>::iterator itr = CrushcogAdds.begin(); itr != CrushcogAdds.end(); ++itr)
            {
                (*itr)->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                (*itr)->SetReactState(REACT_AGGRESSIVE);
                (*itr)->CombatStart(me, true);
                (*itr)->Attack(me, true);
            }
        }
        else
        {
            for (std::list<Creature*>::iterator itr = CrushcogAdds.begin(); itr != CrushcogAdds.end(); ++itr)
            {
                (*itr)->SetReactState(REACT_PASSIVE);
                (*itr)->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }
        }
    }

    void RemoveCrushcogAdds()
    {
        std::list<Creature*> CrushcogAddsRemove;
        GetCreatureListWithEntryInGrid(CrushcogAddsRemove, me, 42294, 60.0f);
        for (std::list<Creature*>::iterator itr = CrushcogAddsRemove.begin(); itr != CrushcogAddsRemove.end(); ++itr)
            (*itr)->ForcedDespawn();
    }

    void AddQuestComplete()
    {
        std::list<Player*> players;
        Trinity::AnyPlayerInObjectRangeCheck checker(me, 35.0f);
        Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
        me->VisitNearbyWorldObject(35.0f, searcher);

        for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
            (*itr)->CastSpell((*itr), 79931, true);
    }

    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();

        if(Timer < diff)
        {
            if(EventStartedPart1)
            {
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
                if(Creature* pCreature = me->FindNearestCreature(42852, 8.0f, true))
                {
                    switch(Phase)
                    {
                        case 0: me->MonsterSay("Mekgineer Thermaplugg refuses to acknowledge that his defeat is imminent! He has sent Razlo Crushcog to prevent us from rebuilding our beloved Gnomeregan!", 0, 0); Timer = 5000; Phase++; break;
                        case 1: me->MonsterSay("But $N has thwarted his plans at every turn, and the dwarves of Ironforge stand with us!", 0, PlayerGuid); Timer = 5000; Phase++; break;
                        case 2: me->MonsterSay("Let's send him crawling back to his master in defeat!", 0, 0); Timer = 3000; Phase++; break;
                        case 3:
                        {
                            me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                            pCreature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                            pCreature->MonsterSay("Aye, let's teach this addle-brained gnome a lesson!", 0, 0);
                            Timer = 500; Phase++;
                        } break;
                        case 4:
                        {
                            me->GetMotionMaster()->MovePoint(1, -5294.91f, 134.433f, 386.11f);
                            pCreature->GetMotionMaster()->MovePoint(2, -5291.88f, 138.85f, 386.11f);
                            SummonCrushcogAndHisAdds();
                            Timer = 10000;
                            Phase++;
                        } break;
                        case 5: AddRemoveFlagsFromAdds(); Phase++; Timer = 250; break;
                        case 6:
                        {
                            me->GetMotionMaster()->MovePoint(1, -5261.2f, 119.33f, 393.79f);
                            pCreature->GetMotionMaster()->MovePoint(2, -5260.88f, 123.25f, 393.88f);
                            Timer = 16000;
                            Phase++;
                        } break;
                        case 7: EventStartedPart1 = false; EventStartedPart2 = true; Phase = 8; break;
                        default: break;
                    }
                }
            }
            if(EventStartedPart2)
            {
                if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
                if(Creature* pCreature = me->FindNearestCreature(42852, 40.0f, true))
                if(Creature* pCrushcog = me->FindNearestCreature(42839, 40.0f, true))
                {
                    switch(Phase)
                    {
                        case 8: pCrushcog->MonsterSay("You! How did you escape detection by my sentry-bots?", 0, 0); Timer = 3000; Phase++; break;
                        case 9: pCrushcog->MonsterSay("No matter! My guardians and I will make short work of you. To arms, men!", 0, 0); Timer = 2000; Phase++; break;
                        case 10: AttackPhase = true; Phase++; Timer = 250; break;
                        case 11:
                        {
                            AddRemoveFlagsFromAdds();
                            pCrushcog->MonsterSay("You will never defeat the true sons of Gnomergan", 0, 0);
                            pCrushcog->SetReactState(REACT_AGGRESSIVE);
                            pCrushcog->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            pCrushcog->CombatStart(me, true);
                            me->Attack(pCrushcog, true);
                            Phase = 12;
                        } break;
                        default: break;
                    }
                    if(pCrushcog)
                        Timer = 7000;
                }
                if(Creature* pCreature = me->FindNearestCreature(42852, 40.0f, true))
                if(Creature* pCrushcog = me->FindNearestCreature(42839, 40.0f, false))
                {
                    switch(Phase)
                    {
                        case 12:
                        {
                            RemoveCrushcogAdds();
                            pCreature->MonsterSay("That'll teach you to mess with the might of Ironforge and Gnomeregan!", 0, 0);
                            Timer = 1500; Phase++;
                        } break;
                        case 13: me->MonsterSay("We've done it! We're victorious!", 0, 0); Timer = 4500; Phase++; break;
                        case 14: me->MonsterSay("With Crushcog defeated. Thermaplugg is sure to be quaking in his mechano-tank, and rightly so. You're next Thermaplugg. You're next!", 0, 0); Phase++; Timer = 4000; break;
                        case 15:
                        {
                            AddQuestComplete();
                            me->GetMotionMaster()->MovePoint(1, -5261.2f, 119.33f, 393.79f);
                            pCreature->GetMotionMaster()->MovePoint(2, -5260.88f, 123.25f, 393.88f);
                            Phase++;
                            Timer = 16000;
                        }
                        case 16:
                        {
                            me->GetMotionMaster()->MoveTargetedHome();
                            pCreature->GetMotionMaster()->MoveTargetedHome();
                            me->AI()->Reset();
                            pCreature->AI()->Reset();
                        } break;
                        default: break;
                    }
                }
                if(Creature* pCrushcog = me->FindNearestCreature(42839, 10.0f, true))
                if(Creature* pRayTarget = me->FindNearestCreature(42929, 50.0f, true))
                {
                    //Niestety Spelle jeszcze niedzia?aj? wiec work-around
                    //me->CastSpell(pRayTarget, RayType[urand(0,3)], true);
                    me->MonsterYell("Mekkatorque-Ray!", 0, 0);

                    std::list<Unit*> BeamTarget;
                    Trinity::AnyUnitInObjectRangeCheck checker(me, 15);
                    Trinity::UnitListSearcher<Trinity::AnyUnitInObjectRangeCheck> searcher(me, BeamTarget, checker);
                    me->VisitNearbyWorldObject(15.0f, searcher);

                    for (std::list<Unit*>::iterator itr = BeamTarget.begin(); itr != BeamTarget.end(); ++itr)
                    {
                        if((*itr)->GetTypeId() == TYPEID_PLAYER)
                            return;

                        me->CastSpell((*itr), RayType[urand(0,3)], true);
                        me->DealDamage((*itr), ((*itr)->GetHealth()*0.15), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
                    }
                    me->CastSpell(pCrushcog, RayType[urand(0,3)], true);
                    me->DealDamage(pCrushcog, (pCrushcog->GetHealth()*0.15), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
                    pRayTarget->ForcedDespawn();
                }
            //I know it's imposible but...
                if(Creature* pCreature = me->FindNearestCreature(42852, 40.0f, false))
                    me->AI()->Reset();

                if(me->isDead())
                {
                    Creature* pCreature = me->FindNearestCreature(42852, 40.0f, false);
                    if(pCreature)
                        pCreature->AI()->Reset();
                }
            }
        } else Timer -= diff;
    }
    };
};

/*
class npc_TunnelBoom : public CreatureScript
{
public:
    npc_TunnelBoom() : CreatureScript("npc_TunnelBoom") { }

    struct npc_TunnelBoomAI : public ScriptedAI
    {
    npc_TunnelBoomAI(Creature *c) : ScriptedAI(c) {}

    bool ShowSmoke;
    uint32 SmokeCast;
    uint32 BoomTimer;
    uint64 PlayerGuid;

    void Reset()
    {
        ShowSmoke = true;
        SmokeCast = 500;
        BoomTimer = 3000;
        PlayerGuid = 0;
    }

    void UpdateAI(const uint32 diff)
    {
        if(ShowSmoke)
        {
            if(SmokeCast < diff)
            {
                uint32 SpellID;
                switch(urand(0,2))
                {
                    case 0:
                    case 1: SpellID = 79473; break;
                    case 2: SpellID = 80054; break;
                }
                me->CastSpell(me, SpellID, true);
                SmokeCast = urand(400, 800);
            } else SmokeCast -= diff;
        }
        else
        {
            if(BoomTimer < diff)
            {
                SmokeCast = 30000;
                if(Player* pDetonator = me->GetPlayer(*me, PlayerGuid))
                {
                    std::list<GameObject*> Explosives;
                    GetGameObjectListWithEntryInGrid(Explosives, me, 204021, 60.0f);
                    for (std::list<GameObject*>::iterator itr = Explosives.begin(); itr != Explosives.end(); ++itr)
                    {
                        if(Explosives.empty())
                            return;

                        (*itr)->SendObjectDeSpawnAnim((*itr)->GetGUID());
                        (*itr)->RemoveFromWorld();
                    }
                }
            } else BoomTimer -= diff;
            if(SmokeCast > diff)
                ShowSmoke = true;
            else SmokeCast -= diff;
        }
    }
    };
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_TunnelBoomAI(pCreature);
    }
};

float SummonPlace[4][3] =
{
    //X          Y       Z
    {-5250.250f, 130.0f, 394.269f},
    {-5239.800f, 128.200f, 394.500f},
    {-5245.937f, 105.853f, 392.336f},
    {-5255.550f, 106.500f, 392.402f}
};

class go_detonator : public GameObjectScript
{
public:
    go_detonator() : GameObjectScript("go_detonator") { }

    bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
        if(pPlayer->GetQuestStatus(26318) == QUEST_STATUS_INCOMPLETE)
        {
            std::list<Creature*> Smoke;
            GetCreatureListWithEntryInGrid(Smoke, pGO, 42763, 60.0f);
            for (std::list<Creature*>::iterator itr = Smoke.begin(); itr != Smoke.end(); ++itr)
            {
                CAST_AI(npc_TunnelBoom::npc_TunnelBoomAI, (*itr)->AI())->PlayerGuid = pPlayer->GetGUID();
                CAST_AI(npc_TunnelBoom::npc_TunnelBoomAI, (*itr)->AI())->ShowSmoke = false;
            }
            pGO->SendObjectDeSpawnAnim(pGO->GetGUID());
        }
        return true;
    }
};
*/

enum
{
    QUEST_26208 = 26208,
    QUEST_KILLCREDIT = 42463,

    NPC_MEKKATORQUE_IMAGE = 42419,
    NPC_DOC_IMAGE = 42420,
    NPC_FASTBLAST_IMAGE = 42422,
    NPC_IRRADIATOR = 42452,
    NPC_BOT = 42423,

    TEXT_MEKKATORQUE_N1 = -423171,
    TEXT_MEKKATORQUE_N2 = -423172,
    TEXT_MEKKATORQUE_N3 = -423173,

    TEXT_MEKKATORQUE_I1 = -424191,
    TEXT_MEKKATORQUE_I2 = -424192,
    TEXT_MEKKATORQUE_I3 = -424193,
    TEXT_MEKKATORQUE_I4 = -424194,
    TEXT_MEKKATORQUE_I5 = -424195,

    TEXT_BOT_I1 = -424231,
    TEXT_BOT_I2 = -424232,
    TEXT_BOT_I3 = -424233,
    TEXT_BOT_I4 = -424234,

    TEXT_IRRADIATION_I1 = -424521,
    TEXT_IRRADIATION_I2 = -424522,

    SPELL_IRRADIATION = 79212
};

class npc_MekkaTorqueTinkertown : public CreatureScript
{
public:
    npc_MekkaTorqueTinkertown() : CreatureScript("npc_MekkaTorqueTinkertown") { }

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const *pQuest)
    {
        if(pCreature && pCreature->isAlive())
        {
            if (pQuest->GetQuestId() == QUEST_26208)
            {
                if(!CAST_AI(npc_MekkaTorqueTinkertown::npc_MekkaTorqueTinkertownAI, pCreature->AI())->EventStarted)
                {
                    CAST_AI(npc_MekkaTorqueTinkertown::npc_MekkaTorqueTinkertownAI, pCreature->AI())->EventStarted = true;
                    return true;
                }
            }
        }

        return false;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_MekkaTorqueTinkertownAI(pCreature);
    }

    struct npc_MekkaTorqueTinkertownAI : public ScriptedAI
    {
    npc_MekkaTorqueTinkertownAI(Creature *c) : ScriptedAI(c) {}

    bool EventStarted;
    uint8 Phase;
    uint32 Timer;

    void Reset()
    {
        EventStarted = false;
        Phase = 0;
        Timer = 2000;
    }

    void UpdateAI(const uint32 diff)
    {
        if(EventStarted)
        {
            if(Timer < diff)
            {
                if(me->isAlive())
                {
                    switch(Phase)
                    {
                        case 0: me->MonsterSay(TEXT_MEKKATORQUE_N1, 0, 0); me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING); Timer = 3000; Phase++; break;
                        case 1: me->GetMotionMaster()->MovePoint(1, -5134.201f, 491.497f, 395.545f); Timer = 5000; Phase++; break;
                        case 2: me->MonsterSay(TEXT_MEKKATORQUE_N2, 0, 0); Timer = 4000; Phase++; break;
                        case 3:
                        {
                            me->SummonCreature(NPC_MEKKATORQUE_IMAGE, -5134.9023f, 495.6096f, 396.450928f, 5.68f, TEMPSUMMON_MANUAL_DESPAWN, 30000);
                            me->SummonCreature(NPC_DOC_IMAGE, -5134.4326f, 496.3045f, 396.450928f, 5.68f, TEMPSUMMON_MANUAL_DESPAWN, 30000);
                            me->SummonCreature(NPC_FASTBLAST_IMAGE, -5135.3969f, 494.8777f, 396.450928f, 5.68f, TEMPSUMMON_MANUAL_DESPAWN, 30000);
                            if(Creature* pIrradiator = me->SummonCreature(NPC_IRRADIATOR, -5132.500f, 493.863f, 396.451019f, 2.51f, TEMPSUMMON_MANUAL_DESPAWN, 30000))
                                pIrradiator->CastSpell(pIrradiator, SPELL_IRRADIATION, true);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 4:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->MonsterSay(TEXT_MEKKATORQUE_I1, 0, 0);

                            Timer = 6000;
                            Phase++;
                        } break;
                        case 5: me->SummonCreature(NPC_BOT, -5133.6088f, 494.329193f, 396.450928f, 2.51f, TEMPSUMMON_MANUAL_DESPAWN, 30000); Phase++; Timer = 2000; break;
                        case 6:
                        {
                            if(Creature* pBot = me->FindNearestCreature(NPC_BOT, 10.0f, true))
                                pBot->MonsterSay(TEXT_BOT_I1, 0, 0);

                            Timer = 4000;
                            Phase++;
                        } break;
                        case 7:
                        {
                            if(Creature* pBot = me->FindNearestCreature(NPC_BOT, 10.0f, true))
                                pBot->MonsterSay(TEXT_BOT_I2, 0, 0);

                            Timer = 3000;
                            Phase++;
                        } break;
                        case 8:
                        {
                            if(Creature* pBot = me->FindNearestCreature(NPC_BOT, 10.0f, true))
                                pBot->MonsterSay(TEXT_BOT_I3, 0, 0);

                            Timer = 3000;
                            Phase++;
                        } break;
                        case 9:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->MonsterSay(TEXT_MEKKATORQUE_I2, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 10:
                        {
                            if(Creature* pIrradiator = me->FindNearestCreature(NPC_IRRADIATOR, 10.0f, true))
                                pIrradiator->MonsterSay(TEXT_IRRADIATION_I1, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 11:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->MonsterSay(TEXT_MEKKATORQUE_I3, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 12:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->MonsterSay(TEXT_MEKKATORQUE_I4, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 13:
                        {
                            if(Creature* pBot = me->FindNearestCreature(NPC_BOT, 10.0f, true))
                                pBot->MonsterSay(TEXT_BOT_I4, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 14:
                        {
                            if(Creature* pIrradiator = me->FindNearestCreature(NPC_IRRADIATOR, 10.0f, true))
                                pIrradiator->MonsterSay(TEXT_IRRADIATION_I2, 0, 0);

                            Timer = 5000;
                            Phase++;
                        } break;
                        case 15:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->MonsterSay(TEXT_MEKKATORQUE_I5, 0, 0);

                            Timer = 3000;
                            Phase++;
                        } break;
                        case 16:
                        {
                            if(Creature* pImageThorque = me->FindNearestCreature(NPC_MEKKATORQUE_IMAGE, 10.0f, true))
                                pImageThorque->ForcedDespawn();

                            if(Creature* pIrradiator = me->FindNearestCreature(NPC_IRRADIATOR, 10.0f, true))
                                pIrradiator->ForcedDespawn();

                            if(Creature* pBot = me->FindNearestCreature(NPC_BOT, 10.0f, true))
                                pBot->ForcedDespawn();

                            if(Creature* p1 = me->FindNearestCreature(NPC_DOC_IMAGE, 10.0f, true))
                                p1->ForcedDespawn();

                            if(Creature* p2 = me->FindNearestCreature(NPC_FASTBLAST_IMAGE, 10.0f, true))
                                p2->ForcedDespawn();

                            Timer = 1000;
                            Phase++;
                        } break;
                        case 17:
                        {
                            me->MonsterSay(TEXT_MEKKATORQUE_N3, 0, 0);

                            std::list<Player*> players;

                            Trinity::AnyPlayerInObjectRangeCheck checker(me, 15.0f);
                            Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
                            me->VisitNearbyWorldObject(15.0f, searcher);

                            for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                            {
                                if((*itr)->GetQuestStatus(26208) == QUEST_STATUS_INCOMPLETE)
                                    (*itr)->KilledMonsterCredit(QUEST_KILLCREDIT, NULL);
                            }
                            Timer = 4000;
                            Phase++;
                        } break;
                        case 18: me->GetMotionMaster()->MoveTargetedHome(); me->AI()->Reset(); break;
                        default: break;
                    }
                }
            } else Timer -= diff;
        }
    }
};
};

class npc_GS9x : public CreatureScript
{
public: npc_GS9x() : CreatureScript("npc_GS9x") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_GS9xAI(pCreature);
    }

    struct npc_GS9xAI : public ScriptedAI
    {
        npc_GS9xAI(Creature *c) : ScriptedAI(c) {}

        uint32 IntervalCheck;
        uint32 Timer;
        bool TargetFounded;
        Position psn;

        void Reset() 
        {
            Timer = 1000;
            IntervalCheck = 3000;
            TargetFounded = false;
        }
        void UpdateAI(const uint32 diff)
        {
            if(!me->GetOwner())
                return;

            if(IntervalCheck < diff)
            {
                if(!TargetFounded)
                {
                    if(GameObject* pGo = me->FindNearestGameObject(203975, 8.0f))
                    {
                        if(me->GetOwner()->ToPlayer()->GetQuestStatus(26205) == QUEST_STATUS_INCOMPLETE)
                        {
                            pGo->GetPosition(&psn);
                            me->GetMotionMaster()->MovementExpired(false);
                            me->GetMotionMaster()->MovePoint(1, psn);
                            TargetFounded = true;
                        }
                    }
                    IntervalCheck = 3000;
                } 
            } else IntervalCheck -= diff;

            if(Timer < diff)
            {
                if(TargetFounded)
                {
                    Creature* pToxic = me->FindNearestCreature(42563, 5.0f);
                    if(GameObject* pGo = me->FindNearestGameObject(203975, 8.0f))
                    {
                         me->MonsterSay("Initiating cleanup ... ...", 0, 0);
                         if(me->GetDisplayId() == 37146)
                            me->SetDisplayId(37140);

                        uint32 SpellId[2] = {79424, 94516};
                        if(pToxic) 
                            me->CastSpell(pToxic, SpellId[urand(0,1)], true);
                        else me->CastSpell(me, SpellId[urand(0,1)], true);

                        me->GetMotionMaster()->MoveFollow(me->GetOwner(), 3.0f, 0.0f, MOTION_SLOT_ACTIVE);
                        pGo->Delete();
                        me->CastSpell(me, 79422, true);
                        TargetFounded = false;
                    }
                    Timer = 1000;
                } 
            } else Timer -= diff;
        }
    };
};

class npc_toxicpool : public CreatureScript
{
public: npc_toxicpool() : CreatureScript("npc_toxicpool") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_toxicpoolAI(pCreature);
    }

    struct npc_toxicpoolAI : public ScriptedAI
    {
        npc_toxicpoolAI(Creature *c) : ScriptedAI(c) {}

        uint32 IntervalTimer;
        bool PoolExist;

        void Reset()
        {
            IntervalTimer = 25000;
            PoolExist = true;
        }
        void UpdateAI(const uint32 diff)
        {
            if(IntervalTimer < diff)
            {
                if(!me->FindNearestGameObject(203975, 5.0f))
                {
                    PoolExist = false;
                    IntervalTimer = 60000;
                } else { PoolExist = true; IntervalTimer = 15000; }

                if(!PoolExist)
                    me->SummonGameObject(203975, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), urand(0,3), 0, 0, 0, 0, 30000);
            } else IntervalTimer -= diff;
        }
    };
};

class npc_Frostmane_Soothsayer : public CreatureScript
{
public: npc_Frostmane_Soothsayer() : CreatureScript("npc_Frostmane_Soothsayer") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_Frostmane_SoothsayerAI(pCreature);
    }

    struct npc_Frostmane_SoothsayerAI : public ScriptedAI
    {
        npc_Frostmane_SoothsayerAI(Creature *c) : ScriptedAI(c) {}

        uint8 Phase;
        uint32 Timer;
        uint64 PlayerGuid;

        void Reset()
        {
            Phase = 0;
            Timer = 3000;
            PlayerGuid = 0;
        }

        void MoveInLineOfSight(Unit* pWho)
        {
            if(pWho->GetTypeId() != TYPEID_PLAYER)
                return;

            if(pWho->ToPlayer()->GetQuestStatus(24489) != QUEST_STATUS_INCOMPLETE)
                return;

            if(Phase != 0)
                return;

            if(me->IsWithinDistInMap(pWho, 10.0f))
            {
                PlayerGuid = pWho->GetGUID();
                Phase = 1;
            }
        }
        void UpdateAI(const uint32 diff)
        {
            if(Phase < 1)
                return;

            if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
            {
                if(Timer < diff)
                {
                    switch(Phase)
                    {
                        case 1:
                        {
                            switch(me->GetEntry())
                            {
                                case 37108: me->MonsterSay("Da spirits be angry with us.", 0, PlayerGuid); break;
                                case 37173: me->MonsterSay("What we gon' do now, you ask? We wait.", 0, PlayerGuid); break;
                                case 37174: me->MonsterSay("Our land be a land of ice an' snow.", 0, PlayerGuid); break;
                                default: break;
                            }
                            Timer = 4000;
                            Phase++;
                            break;
                        }
                        case 2:
                        {   
                            switch(me->GetEntry())
                            {
                                case 37108: me->MonsterSay("I don' know why the spirits be rejectin' us so.", 0, PlayerGuid); break;
                                case 37173: me->MonsterSay("Grik'nir says he gon' talk to the elemental, get it to fight on our side.", 0, PlayerGuid); break;
                                case 37174: me->MonsterSay("But beneath the earth, child, there always be fire.", 0, PlayerGuid); break;
                                default: break;
                            }
                            Timer = 4000;
                            Phase++;
                            break;
                        }
                        case 3:
                        {
                            switch(me->GetEntry())
                            {
                                case 37108: me->MonsterSay("Don' worry, child. Grik'nir gonna help us get through this.", 0, PlayerGuid); break;
                                case 37173: me->MonsterSay("Soon enough we take over dis valley. Soon enough.", 0, PlayerGuid); break;
                                case 37174: me->MonsterSay("De spirit come from deep down to talk with Grik'nir.", 0, PlayerGuid); break;
                                default: break;
                            }
                            Timer = 1000;
                            Phase++;
                            break;
                        }
                        case 4:
                        {
                            switch(me->GetEntry())
                            {
                                case 37108: pPlayer->KilledMonsterCredit(37109, NULL); break;
                                case 37173: pPlayer->KilledMonsterCredit(37110, NULL); break;
                                case 37174: pPlayer->KilledMonsterCredit(37111, NULL); break;
                                default: break;
                            }
                            Reset();
                        }
                    }
                }else Timer -= diff;
            }
        }
    };
};

/*######
## npc_stolen_ram
######*/

enum
{
    CREDIT_RAMS_ON_THE_LAM       = 43064,
    QUEST_RAMS_ON_THE_LAM        = 25905
};

class npc_stolen_ram : public CreatureScript
{
public:
    npc_stolen_ram() : CreatureScript("npc_stolen_ram") { }

    struct npc_stolen_ramAI : public ScriptedAI
    {
        npc_stolen_ramAI(Creature *c) : ScriptedAI(c) 
        
        { 
            whistle = false;
        }

        bool whistle;

        void Reset()
        {
            whistle = false;
        }

        void ReceiveEmote(Player* player, uint32 emote)
        {
            if (emote==TEXT_EMOTE_WHISTLE && whistle == false && player->IsWithinDistInMap(me,20.00f))
            {
                if (player->GetQuestStatus(QUEST_RAMS_ON_THE_LAM) == QUEST_STATUS_INCOMPLETE)
                {
                    player->KilledMonsterCredit(CREDIT_RAMS_ON_THE_LAM,0);
                    me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                    me->SetSpeed(MOVE_RUN, 1.0f, true);
                    me->GetMotionMaster()->MoveChase(player);
                    me->ForcedDespawn(3000);
                    whistle = true;
                }
            }
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_stolen_ramAI(creature);
    }
};

void AddSC_dun_morogh()
{
    new npc_narm_faulk();
    new sanitron500;
    new npc_MekkaTorque();
    //new go_detonator;
    //new npc_TunnelBoom();
    new npc_MekkaTorqueTinkertown();
    new npc_GS9x();
    new npc_toxicpool();
    new npc_Frostmane_Soothsayer();
    new npc_stolen_ram();
}