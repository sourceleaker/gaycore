ALTER TABLE `world_db_version` CHANGE  `required_49_duskwood` `required_51_norther_barrens`  BIT(1);

DELETE FROM gameobject_template WHERE entry=195001;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, IconName, castBarCaption, unk1, faction, flags, size, data0, data1, data2, data6, WDBVerified)VALUES
('195001', '1', '8721', 'Wolf Chains', '', 'Breaking', '0', '99', '0', '0.60', '0', '99', '10000', '20138', '14545');


UPDATE quest_template SET RequestItemsText='What do you want, pup? If you\'re not here for recruitment, I don\'t have time for you. ', OfferRewardText='Oh, so Takrin sent you?\n
<Kargal warily eyes your recruitment letter and shoves it unceremoniously into his vest>\n
I\'ll sign this when you\'ve earned it. I\'ve got reports from down south that this whole continent is being torn apart. Meanwhile, we\'ve got supply caravans backed up to the river and outposts under siege from here to Stonetalon. You want to prove your worth to the horde? Start by proving it here. ', NextQuestInChain=871 WHERE entry=840;#Conscript of the Horde
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You have done well, $N. Those insolent quilboars will finally learn that the might of the Horde is not to be ignored. ', NextQuestInChain=872,PrevQuestId=840 WHERE entry=871;#In Defense of Far Watch#

UPDATE quest_template SET RequestItemsText='Cut off the head of their leader, and chaos ensues, $N. Learn this lesson well. It will aid you in the future', OfferRewardText='Well done, $N. Without Kreenig to orchestrate the raids, my grunts should be able to keep Far Watch secure. Your people should be proud to count you among them. ',PrevQuestID=871,NextQuestId=13949 WHERE entry=872;#The Far Watch Offensive#

UPDATE quest_template SET RequestItemsText='How goes your search for the supplies, $N? I trust the quilboar fall under your strength easily. ', OfferRewardText='Haha! Thank you, $N! This will help us greatly. I\'ll get these supplies packed up and on their way to the Crossroads immediately. ',PrevQuestID=871,ExclusiveGroup='0',NextQuestID=0 WHERE entry=5041;#Supplies for the Crossroads#

UPDATE quest_template SET RequestItemsText='Hot!', OfferRewardText='You save the wolves! So brave! Someday, maybe you get a wolf just like that to ride.\n
<Dorak looks at the burning stables, then at the nearby river.>\n
What should I do now? ' WHERE entry=13878;

UPDATE quest_template SET RequestItemsText='Have you collected the plainstrider beaks? ', OfferRewardText='Very good, $N. That\'s one less thing to worry about on the road.', ExclusiveGroup='0',NextQuestID=0 WHERE entry=844;#PlainStrider Menace#

UPDATE quest_template SET RequestItemsText='Mok\'ra, stranger. Are you here from Far Watch? ', OfferRewardText='You\'re a sight, $R. That\'s the first caravan to make it through this week! ', PrevQuestId=872 WHERE entry=13949; #Crossroads Caravan Pickup#

UPDATE quest_template SET RequestItemsText='Don\'t be too harsh with our captive, he will still need his head attached to answer our questions. ', OfferRewardText='Oh my. We want to question this Quilboar, not tenderize him! ', NextQuestInChain=13963 WHERE entry=13961;#Drag it Out of Them#
UPDATE quest_template SET RequestItemsText='The quilboar will pay for this, $N. I swear it. ', OfferRewardText='$C, you take my task seriously, and for that I thank you.\n
Although my desire for revenge remains, I can at least smile seeing that the quilboars have felt pain themselves. ' WHERE entry=899; #Consumed by Hatred#

UPDATE quest_template SET RequestItemsText='Was that you I saw waving a gun around from the back of my last caravan? ', OfferRewardText='It\'s about time we got some supplies through here. It\'s bad enough to be severed from Mulgore, but this city would fall apart if we lost our trade with Orgrimmar. ' WHERE entry=13975;#Crossroads Caravan Delivery#
UPDATE quest_template SET RequestItemsText='I can see smoke from the neighboring building - what''s going on out there?', OfferRewardText='I see you\'ve left a string of corpses in your wake, $R. I couldn\'t have done better. The livestock may be lost, but the land remains ours - thank you! ' WHERE entry=13973;#The Grol''dom Militia#

UPDATE quest_template SET RequestItemsText='Well, did he squeal?', OfferRewardText='Very interesting - our brute here seems both enthralled and terrified of the one they call "Tortusk." A powerful leader can inspire his people to acts of greatness or atrocity... but we orcs would know that more than others.\n
We should turn our attention to this Tortusk problem. ', PrevQuestID=13961,NextQuestInChain=13968 WHERE entry=13963;#By Hook or by Crook#

UPDATE quest_template SET RequestItemsText='Does Tortusk still draw breath?', OfferRewardText='Ah, so Tortusk behaved as I expected? Went right for your throat? It is good that he\'s dead.\n
The Razormane quilboar have been separated from their leadership in the southern Barrens, no doubt allowing an animal like him to come to power. Perhaps without his influence we can start a dialogue with the survivors... Although hotter heads may prevail. ',PrevQuestId=13963 WHERE entry=13968;#The Tortusk Takedown#

UPDATE quest_template SET RequestItemsText='', OfferRewardText='This poor battered kodo looks to be on the verge of death, but is still breathing. The Razormane haven\'t even plundered its cargo yet. If it can be revived, you may be able to save the entire shipment. ', PrevQuestId=13963, NextQuestID=13970 WHERE entry=13969;#Grol'Dom Missing Kodo#

UPDATE quest_template SET RequestItemsText='The creature doesn\'t lift its head, but looks at you imploringly with large, watery eyes. ', OfferRewardText='The Kodo is voracious! You might as well be pouring those sacks of grain into a hole!\n
Already the animal is beginning to perk up. ',PrevQuestId=13969 WHERE entry=13970;#Animal Services#

UPDATE quest_template SET RequestItemsText='', OfferRewardText='So that was your handiwork, $R? Yes, the missing Kodo arrived just minutes ago. It will take many nights to nurse the poor beast\'s wounds, but thanks to you it\'s alive. And you saved a whole shipment!\n
Please, take your pick of the gear that the kodo was carrying. ',PrevQuestID=13970 WHERE entry=13971;#The Kodo Return#



UPDATE creature_template SET scriptname='npc_trapped_wolf' WHERE entry=34285;
UPDATE gameobject_template SET scriptname='go_wolf_chain' WHERE entry=195001;

DELETE FROM gameobject WHERE guid IN(1031950,1031951,1031952);
INSERT INTO `gameobject` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('1031950','195001','1','1','1','-1.44289','-3629.56','27.3181','5.51506','0','0','0.37469','-0.92715','300','0','1'),
('1031951','195001','1','1','1','-7.7107','-3636.22','27.4858','5.50007','0','0','0.381627','-0.924317','300','0','1'),
('1031952','195001','1','1','1','-8.6781','-3628','27.3495','2.46058','0','0','0.942586','0.333963','300','0','1');

DELETE FROM creature WHERE guid IN(1034285,1034286,1034287);
INSERT INTO `creature` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('1034285','34285','1','1','1','0','0','0.791284','-3633.18','27.3305','2.42524','15','0','0','198','0','0','0','0','0','0'),
('1034286','34285','1','1','1','0','0','-2.69235','-3637.85','27.4231','2.31529','15','0','0','198','0','0','0','0','0','0'),
('1034287','34285','1','1','1','0','0','-10.6092','-3623.68','27.3036','5.57076','15','0','0','198','0','0','0','0','0','0');

DELETE FROM creature WHERE guid IN(1034288,1034289,1034290,1034291);
INSERT INTO `creature` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('1034288','34287','1','1','1','0','0','-1.44289','-3629.56','27.3181','2.42524','15','0','0','42','0','0','0','0','0','0'),
('1034289','34287','1','1','1','0','0','-7.7107','-3636.22','27.4858','2.31529','15','0','0','42','0','0','0','0','0','0'),
('1034290','34287','1','1','1','0','0','-8.6781','-3628','27.3495','5.57076','15','0','0','42','0','0','0','0','0','0'),
('1034291','34284','1','1','1','0','0','73.3722','-3663.29','27.1874','1.64847','300','0','0','86','0','0','0','0','0','0');

UPDATE creature_template SET minlevel=4, maxlevel=4 WHERE entry=34284;
UPDATE creature_template SET minlevel=10, maxlevel=10 WHERE entry=34285;

DELETE FROM spell_linked_spell WHERE spell_trigger=65580;
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, TYPE, COMMENT)VALUES
('65580', '65581', '1', '+ + 0');

UPDATE creature_template SET ScriptName='npc_dragged_razormane', npcflag=1 WHERE entry = 34503;
UPDATE creature_template SET ScriptName='npc_hogtied_razormane', speed_walk=2.5,dynamicflags=768,flags_extra=2 WHERE entry = 34514;
UPDATE quest_template SET ReqCreatureOrGOId1=34523,ReqCreatureOrGOCount1=1 WHERE entry=13961;
UPDATE creature_template SET ScriptName='npc_togrik' WHERE entry=34513;


UPDATE creature SET curhealth=273 WHERE id = 34430;
UPDATE creature SET curhealth=273 WHERE id = 34432;
UPDATE creature_template SET minlevel=13,maxlevel=13, VehicleID=629 WHERE entry = 34432;
UPDATE creature_template SET ScriptName='npc_halga' WHERE entry=34258;


DELETE FROM vehicle_accessory WHERE guid = 34430;
INSERT INTO vehicle_accessory (guid, accessory_entry, seat_id, minion, description)VALUES
('34430', '34431', '1', '0', 'Balgor Whipshank sit on Lead Karavan Kodo');

UPDATE creature_template SET Spell1=65479,vehicleid=410,minlevel=13,maxlevel=13,IconName='vehichleCursor',npcflag=16777216 WHERE entry = 34430;

DELETE FROM npc_spellclick_spells WHERE npc_entry=34430;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, aura_required, aura_forbidden, user_type)VALUES
('34430', '65466', '13949', '1', '13949', '1', '0', '0', '0');

-- SAI for Lead Caravan
SET @ENTRY :=34430;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=34430;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=34430;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34430,0,0,0,8,0,100,0,65466,0,0,0,53,1,34430,0,13949,0,0,1,0,0,0,0,0,0,0, 'Lead Caravan - On Passenger - Start WP movement'),
(34430,0,1,0,8,0,100,0,65466,0,0,0,11,65494,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Lead Caravan - On Spellhit Summon Far Watch Caravan'),
(34430,0,2,0,40,0,100,0,9,0,0,0,33,34452,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Lead Caravan - Quest Credit on WP 9'),
(34430,0,3,0,40,0,100,0,9,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lead Caravan''s Horse - Reach Waypoint 9 - Despawn');
-- Waypoints for Lead Caravan
DELETE FROM `waypoints` WHERE `entry`=34430;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(34430,1,323.51, -3593.41, 27.16,'Lead Caravan'),
(34430,2,276.21, -3533.68, 25.27,'Lead Caravan'),
(34430,3,244.91, -3462.81, 27.7,'Lead Caravan'),
(34430,4,169.77, -3387.83, 36.74,'Lead Caravan'),
(34430,5,168.77, -3311.82, 54.34,'Lead Caravan'),
(34430,6,184.69, -3238.89, 73.97,'Lead Caravan'),
(34430,7,180.30, -3163.09, 90.61,'Lead Caravan'),
(34430,8,192.15, -3122.58, 91.92,'Lead Caravan'),
(34430,9,200.80, -3047.64, 91.66,'Lead Caravan');

DELETE FROM script_texts WHERE npc_entry=34523;
INSERT INTO script_texts (npc_entry, entry, content_default, COMMENT)VALUES
('34523', '-1034523', 'I say nothing! <snort>.', 'SAY_NOTHING'),
('34523', '-1034524', 'Ow, ooob! I not talk for nothing!', 'SAY_KICK'),
('34523', '-1034525', 'Unt. You learn nothing from me!', 'SAY_KICK_1'),
('34523', '-1034526', 'Unt - Not the face!', 'SAY_PUNCH'),
('34523', '-1034527', 'Ow! <snort>', 'SAY_PUNCH_1'),
('34523', '-1034528', '<Snort!> That all you got?', 'SAY_KICK_2'),
('34523', '-1034529', 'Mntt, <snort> why you cook this meat? Tortusk tells us meat taste best when stolen and raw.', 'SAY_FOOD'),
('34523', '-1034530', 'Oh - I\'ve said too much!', 'SAY_CREDIT_1'),
('34523', '-1034531', 'HAHA - <snort> ha - here! <snort> Haha no stop haha <SNORT!><wheeze> Hee hee! Battlemaster Tortusk never prepared us for this!', 'SAY_TIME_1');

DELETE FROM script_texts WHERE entry='-1034258';
INSERT INTO script_texts (npc_entry, entry, content_default, COMMENT)VALUES
('34258', '-1034258', 'Mount up, $N. Do not fail me!', 'SAY_CARAVAN_START');
UPDATE creature_template SET ScriptName='npc_captured_razormane',npcflag=1 WHERE entry=34523;
UPDATE creature_template SET npcflag=3 WHERE entry=5907;
UPDATE quest_template SET SpecialFlags=2 WHERE entry=13949;

