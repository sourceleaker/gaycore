/*
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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
SDName: Tirisfal_Glades
SD%Complete: 100
SDComment: Quest support: 590, 1819
SDCategory: Tirisfal Glades
EndScriptData */

/* ContentData
npc_calvin_montague
go_mausoleum_door
go_mausoleum_trigger
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_calvin_montague
######*/

enum eCalvin
{
    SAY_COMPLETE        = -1000431,
    SPELL_DRINK         = 2639,                             // possibly not correct spell (but iconId is correct)
    QUEST_590           = 590,
    FACTION_HOSTILE     = 168
};

class npc_calvin_montague : public CreatureScript
{
public:
    npc_calvin_montague() : CreatureScript("npc_calvin_montague") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_590)
        {
            creature->setFaction(FACTION_HOSTILE);
            creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            CAST_AI(npc_calvin_montague::npc_calvin_montagueAI, creature->AI())->AttackStart(player);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_calvin_montagueAI (creature);
    }

    struct npc_calvin_montagueAI : public ScriptedAI
    {
        npc_calvin_montagueAI(Creature* creature) : ScriptedAI(creature) { }

        uint32 Phase;
        uint32 PhaseTimer;
        uint64 PlayerGUID;

        void Reset()
        {
            Phase = 0;
            PhaseTimer = 5000;
            PlayerGUID = 0;

            me->RestoreFaction();

            if (!me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE))
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void EnterCombat(Unit* /*who*/) {}

        void AttackedBy(Unit* attacker)
        {
            if (me->getVictim() || me->IsFriendlyTo(attacker))
                return;

            AttackStart(attacker);
        }

        void DamageTaken(Unit* doneBy, uint32 &Damage)
        {
            if (Damage > me->GetHealth() || me->HealthBelowPctDamaged(15, Damage))
            {
                Damage = 0;

                me->RestoreFaction();
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                me->CombatStop(true);

                Phase = 1;

                if (doneBy->GetTypeId() == TYPEID_PLAYER)
                    PlayerGUID = doneBy->GetGUID();
            }
        }

        void UpdateAI(const uint32 Diff)
        {
            if (Phase)
            {
                if (PhaseTimer <= Diff)
                    PhaseTimer = 7500;
                else
                {
                    PhaseTimer -= Diff;
                    return;
                }

                switch (Phase)
                {
                    case 1:
                        DoScriptText(SAY_COMPLETE, me);
                        ++Phase;
                        break;
                    case 2:
                        if (Player* player = Unit::GetPlayer(*me, PlayerGUID))
                            player->AreaExploredOrEventHappens(QUEST_590);

                        DoCast(me, SPELL_DRINK, true);
                        ++Phase;
                        break;
                    case 3:
                        EnterEvadeMode();
                        break;
                }

                return;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

/*######
## go_mausoleum_door
## go_mausoleum_trigger
######*/

enum eMausoleum
{
    QUEST_ULAG      = 1819,
    NPC_ULAG        = 6390,
    GO_TRIGGER      = 104593,
    GO_DOOR         = 176594
};

class go_mausoleum_door : public GameObjectScript
{
public:
    go_mausoleum_door() : GameObjectScript("go_mausoleum_door") { }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        if (player->GetQuestStatus(QUEST_ULAG) != QUEST_STATUS_INCOMPLETE)
            return false;

        if (GameObject* trigger = player->FindNearestGameObject(GO_TRIGGER, 30.0f))
        {
            trigger->SetGoState(GO_STATE_READY);
            player->SummonCreature(NPC_ULAG, 2390.26f, 336.47f, 40.01f, 2.26f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 300000);
            return false;
        }

        return false;
    }
};

class go_mausoleum_trigger : public GameObjectScript
{
public:
    go_mausoleum_trigger() : GameObjectScript("go_mausoleum_trigger") { }

    bool OnGossipHello(Player* player, GameObject* go)
    {
        if (player->GetQuestStatus(QUEST_ULAG) != QUEST_STATUS_INCOMPLETE)
            return false;

        if (GameObject* door = player->FindNearestGameObject(GO_DOOR, 30.0f))
        {
            go->SetGoState(GO_STATE_ACTIVE);
            door->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_INTERACT_COND);
            return true;
        }

        return false;
    }
};

/*######
## npc_agatha
######*/

enum eAgatha
{
    QUEST_FRESH_OUT_OF_THE_GRAVE = 24959
};

class npc_agatha : public CreatureScript
{
public:
    npc_agatha() : CreatureScript("npc_agatha") { }

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const* pQuest)
    {
        if (pQuest->GetQuestId() == QUEST_FRESH_OUT_OF_THE_GRAVE)
        {
            CAST_AI(npc_agatha::npc_agathaAI, pCreature->AI())->Ressurect = true;
            CAST_AI(npc_agatha::npc_agathaAI, pCreature->AI())->PlayerGUID = pPlayer->GetGUID(); 
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_agathaAI (pCreature);
    }

    struct npc_agathaAI : public ScriptedAI
    {
        npc_agathaAI(Creature* pCreature) : ScriptedAI(pCreature) { }

        uint64 PlayerGUID;
        bool Ressurect;
        uint32 ResTimer;

        void Reset()
        {
            PlayerGUID = 0;
            Ressurect = false;
            ResTimer = 500;
        }

        void UpdateAI(const uint32 diff)
        {
            if(Ressurect)
            {
                if(ResTimer < diff)
                {
                    if(Player* pPlayer = me->GetPlayer(*me, PlayerGUID))
                    {
                        pPlayer->RemoveAurasDueToSpell(73523);
                    }

                }else ResTimer -= diff;               
            }
        }

    };
};

enum eDarnell
{
    QUEST_THE_SHADOW_GRAVE = 28608
};

class npc_darnell : public CreatureScript
{
public:
    npc_darnell() : CreatureScript("npc_darnell") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
          return new npc_darnellAI (pCreature);
    }
 
    struct npc_darnellAI  : public ScriptedAI
    {
        npc_darnellAI(Creature *c) : ScriptedAI(c) {}

        uint8 Phase;
        uint32 SummonCheckTimer;
        uint64 PlayerGUID;
        bool Summon;

        void Reset()
        {
            //me->MonsterSay("Greetings, Raknar",0,0);
            SummonCheckTimer = 2000;
            Summon = true;
            Phase = 0;
            PlayerGUID = 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if(Summon)
            {
                if(SummonCheckTimer < diff)
                {
                    if(Player* pPlayer = me->GetPlayer(*me, PlayerGUID))
                    {
                        switch(Phase)
                        {
                            case 0:
                            {
                                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                    me->GetMotionMaster()->MovePoint(0, 1665.56f, 1662.56f, 141.85f);
                                SummonCheckTimer = 6000;
                                Phase++;
                            }break;
                            case 1:
                            {
                                me->SetFacingToObject(pPlayer);
                               
                                me->MonsterSay("The Shadow Grave is this way. Follow me, Raknar",0,0);
                                SummonCheckTimer = 6000;
                                Phase++;
                            }break;
                            case 2:
                            {
                                me->MonsterSay("This way!",0,0);
                                me->GetMotionMaster()->MovePoint(1, 1643.19f, 1663.03f, 132.47f);
                                SummonCheckTimer = 4000;
                                Phase++;
                            }break;
                            case 3:
                            {
                                me->GetMotionMaster()->MovePoint(2, 1642.96f, 1677.76f, 126.93f);
                                SummonCheckTimer = 4000;
                                Phase++;
                            }break;
                            case 4:
                            {
                                me->GetMotionMaster()->MovePoint(3, 1663.19f, 1678.21f, 120.53f);
                                SummonCheckTimer = 4000;
                                Phase++;
                            }break;
                            case 5:
                            {
                                me->GetMotionMaster()->MovePoint(4, 1664.32f, 1662.23f, 120.71f);
                                SummonCheckTimer = 4000;
                                Phase++;
                            }break;
                            default: break;
                        }
                    }
                }else SummonCheckTimer -= diff;               
            }
        }
    };
};

enum eAradne
{
    SPELL_RAISE_DEAD        = 93446,
    SPELL_DIRT_EXPLOSION    = 89199,
    SPELL_CHURNING_DIRT     = 92788
};
class npc_aradne : public CreatureScript
{
public:
    npc_aradne() : CreatureScript("npc_aradne") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
          return new npc_aradneAI (pCreature);
    }
 
    struct npc_aradneAI  : public ScriptedAI
    {
        npc_aradneAI(Creature *c) : ScriptedAI(c) {}

        uint8 Phase;
        uint32 SummonCheckTimer;
        uint64 Raise1GUID;
        uint64 Raise2GUID;
        uint64 Raise3GUID;

        void Reset()
        {
            Phase = 0;
            Raise1GUID = 0;
            Raise2GUID = 0;
            Raise3GUID = 0;
            SummonCheckTimer = 10000;
        }

        void SummonRaiseDead()
        {
            if(Creature* Raise1 = me->SummonCreature(50374,1707.35f, 1704.53f, 135.23f, 4.65f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000))
            {
                Raise1GUID = Raise1->GetGUID();
            }
        }

        void SummonRaiseDeadd()
        {
            if(Creature* Raise2 = me->SummonCreature(50374,1694.78f, 1688.68f, 135.96f, 6.16f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000))
            {
                Raise2GUID = Raise2->GetGUID();
            }
        }

        void SummonRaiseDeaddd()
        {
            if(Creature* Raise3 = me->SummonCreature(50374,1693.13f, 1681.389f, 135.90f, 6.03f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000))
            {
                Raise3GUID = Raise3->GetGUID();
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(SummonCheckTimer < diff)
            {
                switch(Phase)
                {
                    case 0:
                    {
                        me->AttackStop();
            me->SetReactState(REACT_PASSIVE);
                        me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            me->GetMotionMaster()->MovePoint(1, 1691.95f, 1694.20f, 140.12f);
                        SummonCheckTimer = 6000;
                        Phase++;
                    }break;
                    case 1:
                    {
                        me->AttackStop();
            me->SetReactState(REACT_PASSIVE);
                        me->GetMotionMaster()->MovePoint(2, 1704.74f, 1698.30f, 136.59f);
                        SummonCheckTimer = 7000;
                        Phase++;
                    }break;
                    case 2:
                    {
                        me->SetFacing(1.58f,0);
                        SummonCheckTimer = 1000;
                        Phase++;
                    }break;
                    case 3:
                    {
                        me->MonsterSay("Rise from death's slumber and join your brothers!",0,0);
                        DoCast(SPELL_RAISE_DEAD);
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 4:
                    {
                        SummonRaiseDead();
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 5:
                    {
                        me->GetMotionMaster()->MovePoint(3, 1706.61f, 1695.83f, 137.34f);
                        SummonCheckTimer = 4000;
                        Phase++;
                    }break;
                    case 6:
                    {
                        me->GetMotionMaster()->MovePoint(4, 1697.05f, 1688.33f, 136.143f);
                        SummonCheckTimer = 5000;
                        Phase++;
                    }break;
                    case 7:
                    {
                        me->SetFacing(3.02f,0);
                        me->MonsterSay("Rise from death's slumber and join your brothers!",0,0);
                        DoCast(SPELL_RAISE_DEAD);
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 8:
                    {
                        SummonRaiseDeadd();
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 9:
                    {
                        me->GetMotionMaster()->MovePoint(5, 1695.12f, 1678.43f, 136.14f);
                        SummonCheckTimer = 5000;
                        Phase++; 
                    }break;
                    case 10:
                    {
                        me->SetFacing(2.94f,0);
                        me->MonsterSay("Rise from death's slumber and join your brothers!",0,0);
                        DoCast(SPELL_RAISE_DEAD);
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 11:
                    {
                        SummonRaiseDeaddd();
                        SummonCheckTimer = 2500;
                        Phase++;
                    }break;
                    case 12:
                    {
                        me->GetMotionMaster()->MovePoint(6, 1689.57f, 1668.09f, 138.155f);
                        SummonCheckTimer = 6000;
                        Phase++;
                    }break;
                    case 13:
                    {
                        me->GetMotionMaster()->MovePoint(7, 1675.52f, 1671.58f, 143.068f);
                        SummonCheckTimer = 6000;
                        Phase++;
                    }break;
                    case 14:
                    {
                        me->GetMotionMaster()->MovePoint(8, 1673.90f, 1691.40f, 144.464f);
                        SummonCheckTimer = 10000;
                        Phase++;
                    }break;
                    case 15:
                    {
                        SummonCheckTimer = 25000;
                        Phase++;
                    }break;
                    case 16:
                    {
                        Phase = 0;
                    }break;
                    default: break;    
                }
            }else SummonCheckTimer -= diff;
        }
    };
};

enum eRisen
{
    SAY_REJECTION   =   -1750374,
    SAY_AGREE       =   -1750375,
    SAY_SUICIDE     =   -1750376,
    SAY_SUICIDE2    =   -1750377
};

class npc_rised_dead : public CreatureScript
{
public:
    npc_rised_dead() : CreatureScript("npc_rised_dead") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
          return new npc_rised_deadAI (pCreature);
    }
 
    struct npc_rised_deadAI  : public ScriptedAI
    {
        npc_rised_deadAI(Creature *c) : ScriptedAI(c) {}
        
        uint32 CheckTimer;
        bool bCasted;
        bool bRoar;

        void Reset()
        {
            DoScriptText(RAND(-1750374,-1750375,-1750376),me);
            CheckTimer = 2500;
            bCasted = false;
            bRoar = false;
        }

        void Enrage()
        {
            if(!bCasted)
            {
                me->CastSpell(me,44427,true);
                me->HandleEmoteCommand(EMOTE_ONESHOT_NO);
                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                me->GetMotionMaster()->MovePoint(9, 1703.5f, 1650.10f, 127.36f);
                me->ForcedDespawn(10000);
                bCasted = true;
            }
        }
        void Roar()
        {
            if(!bRoar)
            {
                me->HandleEmoteCommand(EMOTE_ONESHOT_ROAR);
                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                me->GetMotionMaster()->MovePoint(10, 1730.78f, 1654.84f, 125.75f);
                me->ForcedDespawn(10000);
                bRoar = true;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(CheckTimer < diff)
            {
                if(me->LastDoScriptText == -1750374)
                {                   
                    Enrage();
                }

                if(me->LastDoScriptText == -1750375)
                {
                    Roar();
                }

                if(me->LastDoScriptText == -1750376)
                {
                    DoScriptText(-1750377,me);
                    me->Kill(me);
                }
            }else CheckTimer -= diff;
        }
    };
};

class npc_deathknell_grave : public CreatureScript
{
public:
    npc_deathknell_grave() : CreatureScript("npc_deathknell_grave") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
          return new npc_deathknell_graveAI (pCreature);
    }
 
    struct npc_deathknell_graveAI  : public ScriptedAI
    {
        npc_deathknell_graveAI(Creature *c) : ScriptedAI(c) {}

        bool spellHit;

        void Reset()
        {
            spellHit = false;
            me->RemoveAurasDueToSpell(92788);
        }
        void SpellHit(Unit * /*Hitter*/, const SpellInfo *Spellkind)
        {
            if (Spellkind->Id == 93446)
            {
                DoCast(me, 89199);
                DoCast(me, 92788);
                spellHit = true;
                Reset();
            }
        } 
    };
};

void AddSC_tirisfal_glades()
{
    new npc_calvin_montague();
    new go_mausoleum_door();
    new go_mausoleum_trigger();
    new npc_agatha();
    new npc_darnell();
    new npc_aradne();
    new npc_rised_dead();
    new npc_deathknell_grave();
}