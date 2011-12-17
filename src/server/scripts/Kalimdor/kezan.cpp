/* ScriptData
SDName: Kezan
SD%Complete: 
SDComment: Quest support: 14071,
SDCategory: Goblin
Autor: Raknar
PS: Wara to komuœ dac przyjade i zajebie
EndScriptData */


#include "ScriptPCH.h"
#include "Group.h"
#include "ScriptedEscortAI.h"
#include "ScriptedFollowerAI.h"
#include "Vehicle.h"


enum eHotrod
{
    SPELL_KNOCKBACK = 66301,
    NPC_ACE = 34957,
    NPC_IZZY = 34959,
    NPC_GOBBLER = 34958,
    NPC_CITIZEN = 35075
};

class npc_hotrod : public CreatureScript
{
public:
    npc_hotrod() : CreatureScript("npc_hotrod") { }

    CreatureAI* GetAI(Creature* c) const
    {
        return new npc_hotrodAI(c);
    }

    struct npc_hotrodAI : public ScriptedAI
    {
        npc_hotrodAI(Creature* c) : ScriptedAI(c) {}
        
        void Reset()
        {
        }
      
        void UpdateAI(uint32 const diff)
        {   
            if(me->GetCreatorGUID() != 0)
                return;

            if(Player* pl = me->FindNearestPlayer(10.0f, true))
            {
                if(pl->GetQuestStatus(14071) == QUEST_STATUS_INCOMPLETE && pl->HasAura(66392))
                {
                    if(pl->GetVehicle())
                    {
                        int8 seat = 0;
                        for(int8 i = 1; i < 4; i++)
                        {
                            if(pl->GetVehicle()->HasEmptySeat(i))
                                seat = i;
                            else
                                if(pl->GetVehicle()->GetPassenger(i)->GetEntry() == me->GetEntry())
                                    return;
                        }

                        if(seat > 0)
                            me->_EnterVehicle(pl->GetVehicle(), seat,false);
                            pl->KilledMonsterCredit(me->GetEntry(),NULL);

                            if(!me->IsMounted())
                            {
                                me->GetMotionMaster()->MoveFollow(pl,5.0f,1.86f);
                            }

                    }
                }
            }
        }
    };
};

class npc_trio : public CreatureScript
{
public:
 
    npc_trio() : CreatureScript("npc_trio") { }
 
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_trioAI(pCreature);
    }
 
    struct npc_trioAI : public ScriptedAI
    {
        npc_trioAI(Creature* pCreature) : ScriptedAI(pCreature){}
 
        uint32 TrioTimer;
 
        void Reset() 
        {
            TrioTimer = 2000;
        }
 
        void UpdateAI(uint32 const diff)
        {
            if(TrioTimer <= diff)
            {
                if(Creature* Auto = me->FindNearestCreature(34840,10.0f,true))
                {
                    if((Auto->GetOwner()) && (Auto->GetOwner()->GetTypeId() == TYPEID_PLAYER) && (Auto->GetOwner()->ToPlayer()->GetQuestStatus(14071) == QUEST_STATUS_INCOMPLETE))
                    {
                        switch(me->GetEntry())
                        {   
                            case 34954:
                            {
                                if(me->FindNearestCreature(34958,10.0f,true))
                                return;

                                me->SummonCreature(34958, -8180.56f, 1317.45f, 27.53f, 0, TEMPSUMMON_DEAD_DESPAWN, 0); break;
                            }
                            case 34892:
                            {
                                if(me->FindNearestCreature(34957,10.0f,true))
                                return;

                                me->SummonCreature(34957, -8076.68f, 1476.48f, 8.84f, 0, TEMPSUMMON_DEAD_DESPAWN, 0); break;
                            }
                            case 34890:
                            {
                                if(me->FindNearestCreature(34959,10.0f,true))
                                return;

                                me->SummonCreature(34959, -8503.83f, 1338.88f, 101.69f, 0, TEMPSUMMON_DEAD_DESPAWN, 0); break; 
                            }
                        }
                    }
                }
            }else TrioTimer -= diff;
        }
    };
};

enum eBilgewater_Death
{
    SPELL_KICK_FOOTBOMB = 70051,
    SPELL_CATS_MARK_AURA_INVIS  = 70086,
    SPELL_EARTHQUAKE = 90615,
    SPELL_SOUND_DEATHWING   = 69988,
    SPELL_DEATHWING_ATTACK = 66858,
    SPELL_PANICKED_CITIZEN_INVIS = 90636,
    SPELL_SUMMON_DEATHWING  = 66322,
    QUEST_FOURTH_GOAL  = 24503

};
class npc_bilgewater_deathwing : public CreatureScript
{
public:

    npc_bilgewater_deathwing() : CreatureScript("npc_bilgewater") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_bilgewater_deathwingAI(pCreature);
    }

    struct npc_bilgewater_deathwingAI : public ScriptedAI
    {
        npc_bilgewater_deathwingAI(Creature* pCreature) : ScriptedAI(pCreature){}

        void Reset()
        {

        }

        void UpdateAI()
        {

        }
    };
};

enum eRobbing
{
    SPELL_CREATE_ROBBING    = 67041,
    NPC_HIRED_LOOTER        = 35234,
    //knockback spell 66301
};

class npc_robbing_hoods : public CreatureScript
{
public:

    npc_robbing_hoods() : CreatureScript("npc_robbing_hoods") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_robbing_hoodsAI(pCreature);
    }

    struct npc_robbing_hoodsAI : public ScriptedAI
    {
        npc_robbing_hoodsAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool bCasted;
        uint32 GetHitTimer;

        void Reset()
        {
            bCasted = false;
            GetHitTimer = 1000;
        }

        void MoveInLineOfSight(Unit* pWho)
        {
            ScriptedAI::MoveInLineOfSight(pWho);

            if (pWho->GetTypeId() == TYPEID_UNIT)
            {
                if(pWho->GetEntry() == 34840 && me->IsWithinDistInMap(pWho, 3.0f))
                {    
                        me->CastSpell(me,SPELL_KNOCKBACK,false);
                        bCasted = true;
                        
                        if (Unit *owner = pWho->GetCharmerOrOwnerOrSelf())
                        {
                            owner->CastSpell(owner,SPELL_CREATE_ROBBING,true);
                        }
                }
            }
        }

        void UpdateAI(uint32 const diff)
        {
            if(bCasted == true)
            {
                if(GetHitTimer <= diff)
                {
                    me->Kill(me);

                }GetHitTimer -= diff;
            }
        }
    };
};

enum eTres
{
    SPELL_CREATE_SHINY_BLING    = 66780,
    SPELL_CREATE_NEW_OUTFIT     = 66781,
    SPELL_CREATE_COOL_SHADES    = 66782,
};

#define GOSSIP_SZABO "Szabo, I need a hip, new outfit for the party. I'm throwing!"
#define GOSSIP_MISSA "I need some cool shades. What will two stacks of macaroons get me?"
#define GOSSIP_GAPPY "Set me up with the phattest, shiniest bling you got!"

class npc_new_you : public CreatureScript
{
public:

    npc_new_you() : CreatureScript("npc_new_you") { }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF: pPlayer->CastSpell(pPlayer,SPELL_CREATE_SHINY_BLING,true); pPlayer->CLOSE_GOSSIP_MENU(); break; 
            case GOSSIP_ACTION_INFO_DEF+1: pPlayer->CastSpell(pPlayer,SPELL_CREATE_COOL_SHADES,true); pPlayer->CLOSE_GOSSIP_MENU(); break;
            case GOSSIP_ACTION_INFO_DEF+2: pPlayer->CastSpell(pPlayer,SPELL_CREATE_NEW_OUTFIT,true); pPlayer->CLOSE_GOSSIP_MENU(); break;
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(14109) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry()== 35126)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_GAPPY, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        }

        if (pPlayer->GetQuestStatus(14109) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry()== 35130)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_MISSA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        }

        if (pPlayer->GetQuestStatus(14109) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry()== 35128)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SZABO, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
        }

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;       
    }
};

class npc_four_yourself : public CreatureScript
{
public:

    npc_four_yourself() : CreatureScript("npc_four_yourself") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_four_yourselfAI(pCreature);
    }

    struct npc_four_yourselfAI : public ScriptedAI
    {
        npc_four_yourselfAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool uiCredit;
        uint32 uiRespawnTimer;
        uint32 uiDespawnTimer;
        uint64 PlayerGUID;

        void Reset()
        {
            uiRespawnTimer = 2000;
            uiDespawnTimer = 4000;
            PlayerGUID = 0;
            me->SetVisible(true);
            me->RestoreFaction();
            me->GetMotionMaster()->MoveTargetedHome();
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
                        me->setFaction(35);
                        me->SetVisible(false);
                        me->CombatStop(true);
                        me->AttackStop();
                        me->ClearAllReactives();
                        me->DeleteThreatList();
                        me->SetHealth(me->GetMaxHealth());                       

                        Player *pPlayer = me->GetPlayer(*me, PlayerGUID);
                        if (pPlayer->IsInWorld())
                        {
                            pPlayer->KilledMonsterCredit(me->GetEntry(), 0);
                        }
                    }
                    else
                        uiDespawnTimer -= uiDiff;
                }
            }
            DoMeleeAttackIfReady();
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
                damage = me->GetHealth() - 1; // ma mu niby 1hp zosta?....

                if (uiCredit == false)
                {
                    me->RemoveAllAuras();
                    me->CombatStop(true);
                    me->AttackStop();
                    me->ClearAllReactives();
                    me->DeleteThreatList();

                }uiCredit = true;
            }
        }
    };
};

enum eParty
{
    QUEST_LIFE_OF_THE_PARTY = 14113,
    QUEST_PIRATE_PARTY      = 14115,
    SPELL_OUTFIT_MALE       = 66928,
    SPELL_OUTFIT_FEMALE     = 66927,
    SPELL_OUTFIT_SECONDARY  = 66985,
    SPELL_AWESOME_PARTY     = 66908,
    SPELL_PHASE_2           = 59073,
    SPELL_PHASE_4           = 59074

};
class npc_party_rock : public CreatureScript
{
public:
    npc_party_rock() : CreatureScript("npc_party_rock") { }

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
    {
        if (pQuest->GetQuestId() == QUEST_LIFE_OF_THE_PARTY)
        {           
            if (pPlayer->getGender() == GENDER_MALE)
            {
                pPlayer->CastSpell(pPlayer,SPELL_AWESOME_PARTY,false);
                pPlayer->CastSpell(pPlayer,SPELL_OUTFIT_MALE,false);
                pPlayer->CastSpell(pPlayer,SPELL_OUTFIT_SECONDARY,false);
                pPlayer->CastSpell(pPlayer,SPELL_PHASE_2,false);
                pPlayer->MonsterTextEmote("You're dressed to impress! Use your new powers below to make your party guests happy!",0,true);
            }
                
            else if (pPlayer->getGender() == GENDER_FEMALE)
            {
                pPlayer->CastSpell(pPlayer,SPELL_AWESOME_PARTY,false);
                pPlayer->CastSpell(pPlayer,SPELL_OUTFIT_FEMALE,false);
                pPlayer->CastSpell(pPlayer,SPELL_OUTFIT_SECONDARY,false);
                pPlayer->CastSpell(pPlayer,SPELL_PHASE_2,false);
                pPlayer->MonsterTextEmote("You're dressed to impress! Use your new powers below to make your party guests happy!",0,true);
            }
        }
        return true;
    }
};

class npc_party_pirate : public CreatureScript
{
public:
    npc_party_pirate() : CreatureScript("npc_party_pirate") { }

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
    {
        if (pQuest->GetQuestId() == QUEST_PIRATE_PARTY)
        {
            if (pPlayer->getGender() == GENDER_MALE)
            {
                pPlayer->RemoveAurasDueToSpell(SPELL_AWESOME_PARTY);
                pPlayer->RemoveAurasDueToSpell(SPELL_OUTFIT_MALE);
                pPlayer->RemoveAurasDueToSpell(SPELL_OUTFIT_SECONDARY);
                pPlayer->CastSpell(pPlayer,SPELL_PHASE_4,false);
            }
                              
            else if (pPlayer->getGender() == GENDER_FEMALE)
            {
                pPlayer->RemoveAurasDueToSpell(SPELL_AWESOME_PARTY);
                pPlayer->RemoveAurasDueToSpell(SPELL_OUTFIT_FEMALE);
                pPlayer->RemoveAurasDueToSpell(SPELL_OUTFIT_SECONDARY);
                pPlayer->CastSpell(pPlayer,SPELL_PHASE_4,false);
            }
        }
        return true;
    }
};

enum eGuest
{
    SPELL_COSMETIC_STUN = 46957,
    SPELL_DRUNKEN_STATE = 55664,
    SPELL_BUBBLY        = 75042,
    SPELL_BUCKET        = 75044,
    SPELL_DANCE         = 75046,
    SPELL_FIREWORKS     = 75048,
    SPELL_HORS_DEV      = 75050,
    SPELL_HAPPY_GUEST   = 66916,

    SPELL_U_FIREWORKS   = 66912,
    SPELL_U_BUBBLY      = 66909,
    SPELL_U_BUCKET      = 66910,
    SPELL_U_DANCE       = 66911,
    SPELL_U_HORS        = 66913
};

const uint32 spellId[5] = {75042,75044,75046,75048,75050};

class npc_partygoer : public CreatureScript
{
public:

    npc_partygoer() : CreatureScript("npc_partygoer") { }
    
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_partygoerAI(pCreature);
    }

    struct npc_partygoerAI : public ScriptedAI
    {
        npc_partygoerAI(Creature* pCreature) : ScriptedAI(pCreature){}

        bool spellHit;
        uint32 ResetTimer;
        uint32 BucketTimer;
        uint32 FireWorkTimer;
        uint32 BubblyTimer;
        uint32 DanceTimer;
        uint32 HorsTimer;

        void Reset()
        {
            me->SetVisible(true);
            ResetTimer = 5000;
            BucketTimer = 20000;
            BubblyTimer = 13000;
            FireWorkTimer = 16000;
            DanceTimer = 19000;
            HorsTimer = 14000;
            spellHit = false;
            me->CastSpell(me,spellId[urand(0,4)],false);
        }

        void UpdateAI(uint32 const diff)
        {
            if(me->HasAura(SPELL_HAPPY_GUEST))
            {
                if(ResetTimer <= diff)
                {
                    me->RemoveAurasDueToSpell(SPELL_HAPPY_GUEST);
                    me->SetVisible(false);
                    Reset();

                }else ResetTimer -= diff;
            }

            if(me->HasAura(SPELL_BUCKET))
            {
                me->CastSpell(me,SPELL_COSMETIC_STUN,false);
                me->CastSpell(me,SPELL_DRUNKEN_STATE,false);
                
                if(BucketTimer <= diff)
                {
                    me->MonsterSay("Ugh... I need a bucket!",0,0);
                    BucketTimer = 20000;
                }else BucketTimer -= diff;
            }

            if(me->HasAura(SPELL_FIREWORKS))
            {
                if(FireWorkTimer <= diff)
                {
                    me->CastSpell(me,66918,false);
                    me->MonsterSay("I love fireworks!",0,0);
                    FireWorkTimer = 17000;
                }FireWorkTimer -= diff;
            }

            if(me->HasAura(SPELL_U_BUBBLY))
            {
                if(BubblyTimer <= diff)
                {
                    me->MonsterSay("I could really use a refill on my drink here.",0,0);
                    BubblyTimer = 14000;
                }else BubblyTimer -= diff;
            }

            if(me->HasAura(SPELL_DANCE))
            {
                if(DanceTimer <= diff)
                {
                    me->MonsterSay("If only I had someone to dance with.",0,0);
                    DanceTimer = 15000;
                }else DanceTimer -= diff;
            }
            if(me->HasAura(SPELL_HORS_DEV))
            {
                if(HorsTimer <= diff)
                {
                    me->MonsterSay("This is delicious! Are there more hors d'oeuvres?",0,0);
                    HorsTimer = 21000;
                }else HorsTimer -= diff;
            }
        }

        void SpellHit(Unit* caster, const SpellEntry* Spellkind)
        {
            if (me->HasAura(SPELL_FIREWORKS) && Spellkind->Id == 66912  &&  !spellHit)
            {
                me->RemoveAurasDueToSpell(SPELL_FIREWORKS);
                me->CastSpell(me,SPELL_HAPPY_GUEST,false);
                spellHit = true;
                caster->CastSpell(caster,66917,false);
                caster->ToPlayer()->KilledMonsterCredit(35175,0);
                me->MonsterSay("Woo, hoo, fireworks! More, more!",0,0);
            }

            if (me->HasAura(SPELL_HORS_DEV) && Spellkind->Id == 66913 && !spellHit)
            {
                me->RemoveAurasDueToSpell(SPELL_HORS_DEV);
                me->CastSpell(me,SPELL_HAPPY_GUEST,false);
                spellHit = true;
                me->CastSpell(me,75124,false);
                caster->ToPlayer()->KilledMonsterCredit(35175,0);
                me->MonsterSay("Nom, nom, nom!",0,0);

            }

            if (me->HasAura(SPELL_DANCE) && Spellkind->Id == 66911 && !spellHit)
            {
                me->RemoveAurasDueToSpell(SPELL_DANCE);
                me->CastSpell(me,SPELL_HAPPY_GUEST,false);
                spellHit = true;
                me->CastSpell(me,75123,false);
                caster->ToPlayer()->KilledMonsterCredit(35175,0);
                me->MonsterSay("Shake it like goblinoid picture.",0,0);
            }

            if (me->HasAura(SPELL_BUCKET) && Spellkind->Id == 66910 && !spellHit)
            {
                me->RemoveAurasDueToSpell(SPELL_BUCKET);
                me->CastSpell(me,SPELL_HAPPY_GUEST,false);
                spellHit = true;
                me->CastSpell(me,66931,false);
                caster->ToPlayer()->KilledMonsterCredit(35175,0);
                me->MonsterSay("Shorry about your shoes.",0,0);
            }

            if (me->HasAura(SPELL_BUBBLY) && Spellkind->Id == 66909 && !spellHit)
            {
                me->RemoveAurasDueToSpell(SPELL_BUBBLY);
                me->CastSpell(me,SPELL_HAPPY_GUEST,false);
                spellHit = true;
                me->CastSpell(me,75122,false);
                caster->ToPlayer()->KilledMonsterCredit(35175,0);
                me->MonsterSay("Thanks for the refill, sir!",0,0);
            }
        }
    };
};

enum eVault
{
    SPELL_ENTER_VAULT       = 67476,
    SPELL_VAULT_CRACKED     = 67492,
    SPELL_VAULT_INTERACT    = 67555,
    SPELL_POWER_CORRECT     = 67493,
    SPELL_POWER_INCORRECT   = 67494,
    SPELL_SUMMON_BUNNY_VEH  = 67488,
    SPELL_EMTEC_VEHICLE     = 67579,
    SPELL_DRILL             = 67495,
    SPELL_EXPLOSIVE         = 67496,
    SPELL_GRAY              = 67499,
    SPELL_LISTEN            = 67497,
    SPELL_LOCKPICK          = 67498,
    SPELL_TIMER             = 67502,

    //VEHICLE SPELLS
    SPELL_GRAY_VEH          = 67526,
    SPELL_LOCKPICK_VEH      = 67525,
    SPELL_LISTEN_VEH        = 67524,
    SPELL_DRILL_VEH         = 67522,
    SPELL_EXPLOSIVE_VEH     = 67508
};

class npc_bank_vault : public CreatureScript
{
public:
    npc_bank_vault() : CreatureScript("npc_bank_vault") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_bank_vaultAI(pCreature);
    }

    struct npc_bank_vaultAI : public ScriptedAI
    {
        npc_bank_vaultAI(Creature *c) : ScriptedAI(c) { }

        uint64 PlayerGuid;
        uint32 Timer, PresureTimer, SpellToClick, SelectedSpell;
        uint8 Phase;

        bool IsInCorrectPhase, WasClicked;

        void Reset()
        {
            PlayerGuid = me->GetOwnerGUID();

            Timer = 2000;
            PresureTimer = 2000;
            Phase = 0;
            me->MonsterSay("dupa",0,0);
            IsInCorrectPhase = WasClicked = false;
            SpellToClick = SelectedSpell = 0;
            /*
            1 - Button 1 - 67526
            2 - Button 2 - 67508
            3 - Button 3 - 67524
            4 - Button 4 - 67525
            5 - Button 5 - 67522
            */
        }

        void SpellHit(Unit* pCaster, SpellEntry const* pSpell)
        {
            if(((pCaster->GetGUID() != PlayerGuid) || !pCaster->HasAura(67476)) || pCaster->GetTypeId() != TYPEID_PLAYER)
                return;

            if(!WasClicked)
            {
                switch(pSpell->Id)
                {
                    case 67526: CheckClickedSpell(1);
                    case 67508: CheckClickedSpell(2);
                    case 67524: CheckClickedSpell(3);
                    case 67525: CheckClickedSpell(4);
                    case 67522: CheckClickedSpell(5);
                    default: sLog->outStaticDebug("[!WARNING!]Unhandled Spell In Goblin Bank Quest[!WARNING!] Spell Id: " + pSpell->Id);
                }
            }
        }

        bool CheckClickedSpell(uint32 SS)
        {
            WasClicked = true;
            Timer = 2000;
            if(SS == SpellToClick)
            {
                me->MonsterTextEmote("Correct!", PlayerGuid, true);
                PresureTimer = 2000;

                if(me->GetPower(me->getPowerType()) > 90)
                {
                    int32 diff = 100 - me->GetPower(me->getPowerType());
                    AddPower(diff);

                } else AddPower(10);

                return true;
            }
            else
            {
                AddPower(-10);
                return false;
            }
        }
        void AddPower(int32 dVal)
        {
            if(dVal > 0)
                me->SetPower(me->getPowerType(), me->GetPower(me->getPowerType()) + dVal);
            else me->SetPower(me->getPowerType(), me->GetPower(me->getPowerType()) - dVal);
        }
        void SayEventText(uint32 uiTextIdentifier, Unit* pUnit)
        {
            switch(uiTextIdentifier)
            {
            case 1: me->MonsterTextEmote("Spell 1", pUnit->GetGUID(), true); break;
                case 2: me->MonsterTextEmote("Spell 2", pUnit->GetGUID(), true);   break;
                case 3: me->MonsterTextEmote("Spell 3", pUnit->GetGUID(), true);   break;
                case 4: me->MonsterTextEmote("Spell 4", pUnit->GetGUID(), true);   break;
                case 5: me->MonsterTextEmote("Spell 5", pUnit->GetGUID(), true);      break;
                default: break;
            }
        }
        void UpdateAI(uint32 const uiDiff)
        {
            if(Player* pPlayer = me->GetPlayer(*me, PlayerGuid))
            {
                if(!IsInCorrectPhase)
                {
                    if(Timer < uiDiff)
                    {
                        switch(Phase)
                        {
                            case 0:
                            {
                                me->MonsterTextEmote("You are about to break into the First Bank of Kezan's vault to retrieve your Personal Riches!", PlayerGuid, true);
                                Phase++; Timer = 8000;
                            } break;
                            case 1: me->MonsterTextEmote("hello World 1", PlayerGuid, true); Phase++; Timer = 10000; break;
                            //The Vault will be cracked once the <red text> Vault Breaking progress bar reaches 100 percent! </red text> <Icon>
                            // Doing the wrong thing at the wrong time will reduce the progress of the bar.
                            case 2: me->MonsterTextEmote("hello World 2", PlayerGuid, true); Phase++; Timer = 10000; break;
                            case 3: me->MonsterTextEmote("Good luck!", PlayerGuid, true); Phase++; Timer = 5000; break;
                            case 4: IsInCorrectPhase = true; Phase = 0; Timer = 1000; break;
                            default: break;
                        }
                    } else Timer -= uiDiff;
                }
                if(IsInCorrectPhase)
                {
                    if(Aura* pAuraTimer = pPlayer->GetAura(67502))
                    {
                        // Removing 5 Presure every interval
                        if(PresureTimer < uiDiff)
                        {
                            AddPower(-5);
                            PresureTimer = 2000;
                        } else PresureTimer -= uiDiff;

                        if(pAuraTimer->IsExpired())
                        {
                            if(me->GetPower(me->getPowerType()) > 0)
                            {
                                int32 PowerVal = me->GetPower(me->getPowerType());
                                AddPower(-PowerVal);
                            }
                        }
                    }
                    if(WasClicked)
                    {
                        if(Timer < uiDiff)
                        {
                            if(me->GetPower(me->getPowerType()) < 100)
                            {
                                SpellToClick = urand(1, 5);
                                SayEventText(SpellToClick, pPlayer);
                                WasClicked = false;
                                //Timer Spell
                                pPlayer->CastSpell(pPlayer, 67502, true);
                            }
                            if(me->GetPower(me->getPowerType()) == 100)
                            {
                                pPlayer->CastSpell(pPlayer, 67492, true);
                                me->MonsterTextEmote("Success! You have your Personal Riches!", PlayerGuid, true);
                                me->ForcedDespawn();
                            }
                        }else Timer -= uiDiff;
                    }
                }
            } else me->ForcedDespawn();
        }
    };
};



class npc_liberate_chunk : public CreatureScript
{
public:

    npc_liberate_chunk() : CreatureScript("npc_liberate_chunk") { }
    
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_liberate_chunkAI(pCreature);
    }

    struct npc_liberate_chunkAI : public ScriptedAI
    {
        npc_liberate_chunkAI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint32 BoomTimer;
        uint32 RespawnTimer;
        bool spellHit;

        void Reset()
        {
            RespawnTimer = 4000;
            BoomTimer = 1000;
            spellHit = false;
            me->SetRespawnTime(30);
        }

        void UpdateAI(uint32 const diff)
        {
            if(spellHit == true)
            {
                if(BoomTimer <= diff)
                {
                        me->ForcedDespawn(5000);
                        
                }else BoomTimer -= diff;

                if(RespawnTimer <= diff)
                {
                    Reset();
                }else RespawnTimer -= diff;
            }            
        }

        void SpellHit(Unit* caster, const SpellEntry* Spellkind)
        {
            if (Spellkind->Id == 67682 && !spellHit)
            {
                spellHit = true;
            }
        }
    };
};

enum e447
{
    SPELL_SUMMON_GASBOT = 70252,
};

class npc_447 : public CreatureScript
{
public:

    npc_447() : CreatureScript("npc_447") { }
    
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_447AI(pCreature);
    }

    struct npc_447AI : public ScriptedAI
    {
        npc_447AI(Creature* pCreature) : ScriptedAI(pCreature){}

        uint8 Phase;
        uint32 MoveTimer;
        uint32 FireTimer;
        
        void Reset()
        {
            Phase = 0;
            MoveTimer = 1500;
            me->CastSpell(me,69813,false);
            FireTimer = 15000;
        }
        void UpdateAI(uint32 const diff)
        {
            if(MoveTimer <= diff)
            {
                    switch(Phase)
                    {
                        case 0: me->GetMotionMaster()->MovePoint(1, -8423.04f, 1363.70f, 104.67f); MoveTimer = 11000; Phase++;  break;
                        case 1: me->CastSpell(me,70259,false); MoveTimer = 1000; Phase++; break;
                        case 2:
                        {
                            std::list<Creature*> fire;
                            me->GetCreatureListWithEntryInGrid(fire, 37682, 40.0f);
                            fire.sort(Trinity::ObjectDistanceOrderPred(me));
                            for(std::list<Creature*>::iterator itr = fire.begin(); itr != fire.end(); itr++)
                            {
                                if((*itr)->isAlive() && (*itr)->GetTypeId() == TYPEID_UNIT)
                                {
                                    (*itr)->CastSpell((*itr),70262,true);
                                    if(FireTimer <= diff)
                                    {
                                        (*itr)->RemoveAurasDueToSpell(70262);
                                    }else FireTimer -= diff;
                                }
                            } 
                            MoveTimer = 15000;
                            Phase++;
                        }break;
                        case 3: me->ForcedDespawn(); break;
                        default: break;
                    }
            }else MoveTimer -= diff;
        }
    };
};

class npc_run_away : public CreatureScript
{
public:
    npc_run_away() : CreatureScript("npc_run_away") { }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == 14126)
        {
            player->SendMovieStart(22);
            player->CastSpell(player, 74100, true);
            player->CastSpell(player, 69010, true);
            player->CastSpell(player, 59043, true);

            WorldLocation loc;
            loc.m_mapId       = 648;
            loc.m_positionX   = -534.62f;
            loc.m_positionY   = 3273.43f;
            loc.m_positionZ   = 0.23f;
            loc.m_orientation = 4.71f;
            player->SetHomebind(loc, 4721);
   
        }
        return true;
    }
};

class go_mortar : public GameObjectScript
{
public:
    go_mortar() : GameObjectScript("go_mortar") { }

	bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
		pGO->Use(pPlayer);	

        if (pPlayer->GetQuestStatus(14126) ==  QUEST_STATUS_COMPLETE)
        {
            if(Creature* pTarget = pGO->FindNearestCreature(24288,50.0f,true))
            {
                pPlayer->CastSpell(pTarget,92633,true);                           
            }
        }return  true;
    }
};
void AddSC_kezan()
{
    new npc_hotrod();
    new npc_trio();
    new npc_bilgewater_deathwing();
    new npc_robbing_hoods();
    new npc_new_you();
    new npc_four_yourself();
    new npc_party_rock();
    new npc_party_pirate();
    new npc_partygoer();
    new npc_bank_vault();
    new npc_liberate_chunk();
    new npc_447();
    new npc_run_away();
    new go_mortar();
}


