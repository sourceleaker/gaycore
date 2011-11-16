ALTER TABLE `world_db_version` CHANGE  `required_82_Sanitron500_SomeStuffe` `required_83_Silithus`  BIT(1);

UPDATE quest_template SET OfferRewardText='Welcome to Cenarion Hold. ', RequestItemsText='', PrevQuestId=0, NextQuestId=8280, NextQuestInChain=0 WHERE entry=28527;#Warchief's Command: Silithus!
UPDATE quest_template SET OfferRewardText='Welcome to Cenarion Hold. ', RequestItemsText='', PrevQuestId=0, NextQuestId=8280, NextQuestInChain=0 WHERE entry=28528;#Hero's Call: Silithus!
UPDATE quest_template SET OfferRewardText='Welcome to Cenarion Hold.\n
<Windcaller Proudhorn brushes some snow off of your shoulder.>\n
You\'ve certainly come from far off. ', RequestItemsText='', PrevQuestId=0, NextQuestId=8280, NextQuestInChain=0  WHERE entry=28856;#The Sands of Silithus
UPDATE quest_template SET OfferRewardText='Welcome to Cenarion Hold, traveler.', RequestItemsText='', PrevQuestId=0, NextQuestId=8280, NextQuestInChain=0 WHERE entry=28859;#The Dunes of Silithus
UPDATE quest_template SET OfferRewardText='You have my sincere gratitude.  Your efforts in helping Cenarion Hold have shown true courage.', RequestItemsText='The dredge strikers are a serious threat and must be dealth with quickly!', PrevQuestId=0, NextQuestId=0, NextQuestInChain=8281 WHERE entry=8280;#Securing the Supply Lines
UPDATE quest_template SET OfferRewardText='Excellent!  You\'ve proven to be a valuable ally in preparing for the war against the silithid. ', RequestItemsText='', PrevQuestId=8280, NextQuestId=0, NextQuestInChain=0 WHERE entry=8281;#Stepping Up Security
UPDATE quest_template SET OfferRewardText='Cross your fingers, friend!  Here\'s to hoping we can save Noggle! ', RequestItemsText='Are you done collecting those samples?  We could lose Noggle any minute now!', PrevQuestId=0, NextQuestId=0, NextQuestInChain=8278 WHERE entry=8277;#Deadly Desert Venom
UPDATE quest_template SET OfferRewardText='Excellent!  I\'ll stash these away, maybe they\'ll be useful later. ', RequestItemsText='Did you bring me some texts? ', PrevQuestId=0, NextQuestId=8319, NextQuestInChain=0 WHERE entry=8318;#Secret Communication
UPDATE quest_template SET OfferRewardText='That was a task well performed, $N.  Your slaying of the Twilight geolords must have dealt a grievous blow to the cult.  Let us hope their plans are slowed... ', RequestItemsText='Enter the desert and find the Twilight geolords, $N. Return to me after they are slain.', PrevQuestId=0, NextQuestId=0, NextQuestInChain=8321 WHERE entry=8320;#Twilight Geolords
UPDATE quest_template SET OfferRewardText='Excellent!  With Deathclasp gone we\'re free to use the southern mountain range as a strategic path to circumvent the silithid hives.  Your work is greatly appreciated. ', RequestItemsText='I\'ll need the creature\'s pincer as proof of the deed.  No pincer, no reward. ', PrevQuestId=0, NextQuestId=0, NextQuestInChain=0 WHERE entry=8283;#Wanted - Deathclasp, Terror of the Sands
UPDATE quest_template SET OfferRewardText='The Alliance needs every able body they can get. The Horde has been receiving a steady supply of reinforcements from the northern part of the continent, and it\'s been a struggle to keep up.\n
Let me explain the situation to you. ', RequestItemsText='', PrevQuestId=0, NextQuestId=0, NextQuestInChain=9419 WHERE entry=9415;#Report to Marshal Bluewall
UPDATE quest_template SET OfferRewardText='Thank the Light you were successful.\n
Now if we could only have started this sooner, our need would not be so desperate. We must keep the bounty of the desert from falling into the hands of the Horde. ', RequestItemsText='Be careful out there, but alse be quick. We have no time to lose.', PrevQuestId=9415, NextQuestId=0, NextQuestInChain=0, QuestFlags=8 WHERE entry=9419;#Scouring the Desert
UPDATE quest_template SET OfferRewardText='You\'ve done it!  Vyral is killed!  This can only mean doom for the Twilight Hammer\'s operations in Silithus.  There may be more of them scurrying about, but the blow you dealt to the cult today is one from which they will not easily recover. ', RequestItemsText='$N, have you yet defeated Vyral the Vile?  Do you have his signet ring? ', PrevQuestId=8320, NextQuestId=0, NextQuestInChain=0 WHERE entry=8321;#Vyral the Vile
UPDATE quest_template SET OfferRewardText='Excellent work!  I\'ll put a good word in for you. ', RequestItemsText='Keep bringing me texts. We\'ll soon force the Twilight\'s Hammer out of Silithus. ', PrevQuestId=0, NextQuestId=0, NextQuestInChain=0, SpecialFlags=1, QuestFlags=8200 WHERE entry=8319;#Encrypted Twilight Texts
UPDATE quest_template SET OfferRewardText='Yes!  It seems to be working, Noggle is coming to.  We owe ya big time! ', RequestItemsText='This is our last chance to save Noggle!  Hurry! ', PrevQuestId=8277, NextQuestId=8282, NextQuestInChain=0 WHERE entry=8278;#Noggle's Last Hope
UPDATE quest_template SET OfferRewardText='Just as I suspected.  I can decipher individual words in the tablets but they appear to be devoid of any logic or meaning.  It\'s not unknown for Twilight\'s Hammer sects to use a code to hide the meaning of their texts; we\'ll have to go to someone who knows more about this sort of thing. ', RequestItemsText='The ravaged camp can be found northwest of here.  Come back when you have all the fragments. ', PrevQuestId=8281, NextQuestId=0, NextQuestInChain=8285 WHERE entry=8284;#The Twilight Mystery
UPDATE quest_template SET OfferRewardText='<Commander Mar\'alith lowers his head in contemplation.>\n
Whether she is alive or dead, I must do what is right. She must be found. Alas, I am bound by duty to this outpost. Will you help me once more, $N? ', RequestItemsText='', PrevQuestId=8281, NextQuestId=0, NextQuestInChain=8306 WHERE entry=8304;#Dearest Natalia
UPDATE quest_template SET OfferRewardText='Yes!  You brought my satchel back.  And my rare reagents are all here!  I\'ll be in your debt for a long time. ', RequestItemsText='Still haven\'t found my bag?  Well I should count my lucky stars, at least the poison\'s been cleansed. ', PrevQuestId=8278, NextQuestId=0, NextQuestInChain=0 WHERE entry=8282;#Noggle Lost Satchel
UPDATE quest_template SET OfferRewardText='<Commander Mar\'alith clutches at his chest.>\n
C\'Thun? WHAT is the meaning of all this? What is C\'Thun? How could this fiend have turned my sweet Natalia into the monster that you described? ', RequestItemsText='', PrevQuestId=8304, NextQuestId=0, NextQuestInChain=0 WHERE entry=8306;#Into The Maw of Madness
UPDATE quest_template SET OfferRewardText='I see you\'re familiar with my old organization.  You must be with Cenarion Hold.\n
You seek information to use against them?  Come closer, perhaps we can be of mutual assistance. ', RequestItemsText='You!  How did you find me?  Who are you?  You weren\'t followed, were you?  Speak! ', PrevQuestId=8284, NextQuestId=0, NextQuestInChain=8279 WHERE entry=8285;#The Deserter
UPDATE quest_template SET OfferRewardText='Yes! These are the parts to the book!  Let\'s get started then, $N.\n
Swap every third word with words from the second chapter... then swap every other word with words from the first chapter...  Wait, did I get that backwards?', RequestItemsText='Who goes there?  Oh, it\'s you!  Did you find all the Lexicon chapters yet? ', PrevQuestId=8285, NextQuestId=0, NextQuestInChain=8287 WHERE entry=8279;#The Twilight Lexicon
UPDATE quest_template SET OfferRewardText='This is very interesting information indeed, $N.  This sheds some light on the presence of the Twilight\'s Hammer in Silithus and will undoubtedly help us in our struggle against them.  Your efforts will be handsomely rewarded,$c ', RequestItemsText='What is this you bring to me, $N? ', PrevQuestId=8279, NextQuestId=0, NextQuestInChain=0 WHERE entry=8287;#A Terrible Purpose
UPDATE quest_template SET OfferRewardText='Excellent!  I will get to decoding these as soon as possible.  If I find anything of interest I\'ll find some way to get the information to you.', RequestItemsText='Did you find any encrypted texts?  I\'m quite curious to read this month\'s True Believer. ', PrevQuestId=8279, NextQuestId=0, NextQuestInChain=0 WHERE entry=8323;#True Belivers
UPDATE quest_template SET OfferRewardText='I can\'t make heads or tails of these glyphs. I\'ve never seen anything like it! I hope Frankal\'s research can shed some light on this mess. ', RequestItemsText='If you find some crazy night elf lass in one of the hives, be sure to give her a kick in the duff for us. ', PrevQuestId=8304, NextQuestId=8314, NextQuestInChain=0, ExclusiveGroup='-8309' WHERE entry=8309;#Glyph Chasing
UPDATE quest_template SET OfferRewardText='Outstanding! Don\'t wander off too far, kid. We might need you to take on another task or two. ', RequestItemsText='Go play with the monkey, kid. I don\'t have time for this. ', PrevQuestId=8304, NextQuestId=8314, NextQuestInChain=0, ExclusiveGroup='-8309' WHERE entry=8310;#Breaking the Code
UPDATE quest_template SET OfferRewardText='The reason the dwarves could not decipher the glyphs is because there is nothing to decipher. The shifting outer layer of the prism must properly align with the inner crystal\'s markings in order for the message to be transmitted. Clever...\n
While we should be able to translate this data, we must first unlock the code. There is only one clue on the surface of the prism - assuming the rubbings were transferred correctly - and it looks grim. ', RequestItemsText='Oh my! What do you have there, $N? ', PrevQuestId=8309, NextQuestId=0, NextQuestInChain=0 WHERE entry=8314;
UPDATE quest_template SET OfferRewardText='This book contains several common recipes and a few unusual ones.  After browsing through it for a few seconds you spot a recipe that involves sandworm meat. ', RequiredSkillValue=285, NextQuestInChain=8313 WHERE entry = 8307;#Desert Recipe
UPDATE quest_template SET OfferRewardText='It\'s good that you\'re here, but there\'s no time to waste making small talk. You need instructions, and then you need to get out there.\n
Listen up. ', RequestItemsText='', PrevQuestId=0, NextQuestID=0, NextQuestInChain=9422 WHERE entry=9416;#Report to General Kirika
UPDATE quest_template SET OfferRewardText='You\'ve done well, $N. These resources will be added to our stockpiles, and every bit is to our gain and our enemy\'s loss. ', RequestItemsText='', PrevQuestId=9416, NextQuestID=0, NextQuestInChain=0, QuestFlags=8 WHERE entry=9422;#Scouring the Desert
UPDATE quest_template SET PrevQuestID=8323, SpecialFlags=1, QuestFlags=8200 WHERE entry=8324;

DELETE FROM creature WHERE id = 15202;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('15202','1','1','1','0','1410','-6325.96','11.6215','6.5087','5.77571','60','0','0','3395','2486','0','0','0','0','0');

DELETE FROM item_loot_template WHERE item = 20459 AND entry IN(11730,11731,11732,11733,11734);
INSERT INTO item_loot_template VALUES
('11730', '20459', '-3', '1', '0', '1', '1'),
('11731', '20459', '-2', '1', '0', '1', '1'),
('11732', '20459', '-3', '1', '0', '1', '1'),
('11733', '20459', '-7', '1', '0', '1', '1'),
('11734', '20459', '-7', '1', '0', '1', '1');

DELETE FROM creature WHERE id = 15215;
INSERT INTO `creature` ( `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('15215','1','1','1','0','0','-8323.53','726.416','-67.838','5.54246','300','0','0','5180','2568','0','0','0','0','0');

DELETE FROM gameobject WHERE id = 180454;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('180454','1','1','1','-6579.91','765.67','-49.3908','2.42601','0','0','0','1','180','100','1');

UPDATE creature_template SET minlevel=55, maxlevel=55 WHERE entry=15215;
UPDATE creature_template SET ScriptName='npc_silitist_mob' WHERE entry IN(18199,17090);

DELETE FROM gameobject_involvedrelation WHERE quest=8307;
INSERT INTO gameobject_involvedrelation VALUES
('180503', '8307');

UPDATE quest_template SET OfferRewardText='Let\'s have a look at that...\n
This seems simple enough.  They have their own names for some of the herbs, but those are simple enough to figure out.  Here, let me show you! ', RequestItemsText='You won\'t keep it to yourself, I hope! ', RequiredSkillValue=285, RewSpell=24801, PrevQuestId=8307, NextQuestInChain=8317 WHERE entry = 8313;#Sharing the Knowledge
UPDATE quest_template SET OfferRewardText='Excellent!  You\'re a life saver.  These dumplings turned out to be quite good.  Didn\'t really expect such good taste from the Twilight\'s Hammer. ', RequestItemsText='How are those dumplings coming along? ', RequiredSkillValue=285, PrevQuestId=8313 WHERE entry = 8317;#Kitchen Assistance
UPDATE quest_template SET QuestFlags=262152, Objectives='Use the Geologist\'s Transcription Kit to make a Hive\'Regal Rubbing from the Hive\'Regal Glyphed Crystal. ', ReqItemId1=20456,ReqItemId2=20453,ReqItemId3=0,ReqItemId4=0, ReqItemCount3=0,ReqItemCount4=0 WHERE entry = 8309;
UPDATE quest_template SET QuestFlags=262152, Objectives='Obtain an intact Hive\'Regal Silithid Brain from any silithid in Hive\'Regal. ', ReqItemId1=20459,ReqItemId2=0,ReqItemId3=0, ReqItemCount2=0,ReqItemCount3=0 WHERE entry =8310;
UPDATE gameobject_template SET ScriptName='go_hive_crystal' WHERE entry=180454;

