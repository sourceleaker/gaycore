ALTER TABLE `world_db_version` CHANGE `required_257_creature_text` `required_259_searing_gorge_1` BIT(1); 

DELETE FROM `spell_area` WHERE `spell`=49416 AND `area`=5629;
INSERT INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(49416,5629,0,0,27957,0,1791,2,1);

UPDATE `creature_template` SET `KillCredit1`=5839 WHERE `entry`=8637;

DELETE FROM `creature` WHERE `id`=47271;
DELETE FROM `gameobject` WHERE `id`=206573;

DELETE FROM `gameobject_questrelation` WHERE `id`=173265;
DELETE FROM `gameobject_involvedrelation` WHERE `id`=173265;

UPDATE `creature_template` SET `minlevel`=47,`maxlevel`=47,`AIName`='SmartAI' WHERE `entry`=47299;

SET @NPC  := 47299;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@NPC*100,@NPC*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,54,0,100,0,0,0,0,0,80,@NPC*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - on summon - run script'),
(@NPC,0,1,0,40,0,100,1,6,@NPC,0,0,80,@NPC*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - Reach wp 6 - run script'),	
(@NPC,0,2,0,40,0,100,0,9,@NPC,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - Reach wp 9 - Despawn'),

(@NPC*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - say text 0'),
(@NPC*100,9,1,0,0,0,100,0,5000,5000,0,0,5,22,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - emote'),
(@NPC*100,9,2,0,0,0,100,0,2000,2000,0,0,53,1,@NPC,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - load path'),

(@NPC*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - say text 1'),
(@NPC*100+1,9,1,0,0,0,100,0,3000,5000,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - pause wp'),
(@NPC*100+1,9,2,0,0,0,100,0,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - script - resume');

DELETE FROM `creature_text` WHERE `entry`=@NPC;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC,0,0,'Lunk tired of all this killing!  Lunk quits!',14,0,100,22,0,0,'Lunk'),
(@NPC,1,0,'Lunk going to find some real adventures!',14,0,100,0,0,0,'Lunk');

DELETE FROM `waypoints` WHERE `entry`=@NPC;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@NPC,1,-6897.760742,-1856.532715,250.549728, 'Lunk'),
(@NPC,2,-6900.479980,-1851.418457,249.366104, 'Lunk'),
(@NPC,3,-6900.458984,-1844.382568,247.215424, 'Lunk'),
(@NPC,4,-6899.227051,-1838.527466,245.514084, 'Lunk'),
(@NPC,5,-6900.032715,-1828.908447,242.903473, 'Lunk'),
(@NPC,6,-6905.343262,-1814.643921,241.143311, 'Lunk'),
(@NPC,7,-6912.914063,-1802.867432,240.744553, 'Lunk'),
(@NPC,8,-6924.782715,-1780.417603,240.744553, 'Lunk'),
(@NPC,9,-6928.530273,-1767.560181,240.744553, 'Lunk'); 

SET @ENTRY := 47278;
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=`npcflag`|1,`IconName`='LootAll' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,64,0,100,0,0,0,0,0,56,62934,1,0,0,0,0,7,0,0,0,0,0,0,0,"Ash Chicken - Gossip Hello - Create Item Ash Chicken"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ash Chicken - Gossip Hello - Force Despawn");

SET @ENTRY := 47276;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,25,1,0,0,0,0,12,47271,1,450000,0,0,0,8,0,0,0,-6767.336,-1496.247,182.4685,0,"Dark Iron Excavator - On Death - Summon Dig-Boss Dinwhisker");

SET @ENTRY := 47275;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,25,1,0,0,0,0,12,47271,1,450000,0,0,0,8,0,0,0,-6767.336,-1496.247,182.4685,0,"Dark Iron Footman - On Death - Summon Dig-Boss Dinwhisker");

SET @NPC  := 47271;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,25,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dig-Boss Dinwhisker - on spawn - Yell'),
(@NPC,0,1,0,25,0,100,0,0,0,0,0,46,50,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dig-Boss Dinwhisker - on spawn - Move Foward'),
(@NPC,0,2,0,6,0,100,0,0,0,0,0,50,206573,450000,0,0,0,0,8,0,0,0,0,0,0,0, 'Dig-Boss Dinwhisker - on death - spawn Dark Ember');

DELETE FROM `creature_text` WHERE `entry`=@NPC;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC,0,0,'What in hell''s name is going on out here?',14,0,100,0,0,0,'Dig-Boss Dinwhisker');

update `creature_template_addon` set `mount`=2784 where `entry`=47271;

SET @NPC  := 47266;
SET @NPC2 := 47301;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@NPC*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,20,0,100,0,27964,0,0,0,80,@NPC*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Jack Rockleg - On Quest Reward - Start Script'),
(@NPC*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Jack Rockleg - Script - Say'),
(@NPC*100,9,1,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,@NPC2,0,0,0,0,0,0, 'Jack Rockleg - Script - Image of Archduke Calcinder yell'),
(@NPC*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,@NPC2,0,0,0,0,0,0, 'Jack Rockleg - Script - Image of Archduke Calcinder yell'),
(@NPC*100,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,19,@NPC2,0,0,0,0,0,0, 'Jack Rockleg - Script - Image of Archduke Calcinder yell'),
(@NPC*100,9,4,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,19,@NPC2,0,0,0,0,0,0, 'Jack Rockleg - Script - Image of Archduke Calcinder yell'),
(@NPC*100,9,5,0,0,0,100,0,5000,5000,0,0,41,1000,0,0,0,0,0,19,@NPC2,0,0,0,0,0,0, 'Jack Rockleg - Script - Image of Archduke Calcinder despawn');

DELETE FROM `creature_text` WHERE `entry` IN (@NPC,@NPC2);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC,0,0,'Let''s see what this ember does... whaaaa?',12,0,100,22,0,0,'Jack Rockleg'),
(@NPC2,0,0,'You dwarves are worthless! You come to Ragnaros seeking ascendance, but you have nothing to offer!',14,0,100,22,0,0,'Image of Archduke Calcinder'),
(@NPC2,1,0,'Nothing to offer, except your backs and your shovels. So you will dig.!',14,0,100,22,0,0,'Image of Archduke Calcinder'),
(@NPC2,2,0,'Dig wide, dig deep. Seek out the places of fire beneath the world. My brothers and sisters yearn to be free.',14,0,100,22,0,0,'Image of Archduke Calcinder'),
(@NPC2,3,0,'Succeed and you may ascend after all. Fail, and burn.',14,0,100,22,0,0,'Image of Archduke Calcinder');

UPDATE `creature_template` SET `VehicleId`=1258,`AIName`='',`ScriptName`='npc_glassweb_spider' WHERE `entry`=5856;
UPDATE `creature_template` SET `ScriptName`='npc_lunk_spider_ride',`unit_flags`=`unit_flags`|2|128|256|512,`flags_extra`=`flags_extra`|2,`minlevel`=47,`maxlevel`=47,`npcflag`=2,`IconName`='Directions' WHERE `entry`=47281;

DELETE FROM `creature_text` WHERE `entry` IN (47281);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(47281,0,0,'Ha ha ha!',14,0,100,22,0,0,'Lunk'),
(47281,0,1,'Look out spider! Here come Lunk!',14,0,100,22,0,0,'Lunk'),
(47281,0,2,'Lunk will ride you now!',14,0,100,22,0,0,'Lunk'),
(47281,0,3,'You hold still, spider!',14,0,100,22,0,0,'Lunk'),
(47281,1,0,'Here, you can scrape venom off Lunk''s tummy.',12,0,100,22,0,0,'Lunk'),
(47281,1,1,'Lunk got you some venom with his tummy.',12,0,100,22,0,0,'Lunk'),
(47281,1,2,'See? No kill spider for venom. Just ride.',12,0,100,22,0,0,'Lunk');

UPDATE `quest_template` SET `QuestFlags`=8 WHERE `entry`=27959;

DELETE FROM `spell_target_position` WHERE `id`=88220;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(88220,0,-6896.1,-1856.05,250.638,0.922333);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=47280;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=47280;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(47280,0,0,0,19,0,100,0,27959,0,0,0,85,88166,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Lunk - On Quest Accept - Invoker Cast spell'),
(47280,0,1,0,19,0,100,0,27959,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - On Quest Accept - Despawn'),
(47280,0,2,0,1,0,100,0,60000,60000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - After 2 min - Despawn');

-- Hackfix
DELETE FROM `creature_involvedrelation` WHERE `id`=47281;
INSERT INTO `creature_involvedrelation`(`id`,`quest`) VALUES
(47281,27959);

DELETE FROM `creature_template_addon` WHERE `entry`=14625;

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=14625);

UPDATE `creature_template` SET `KillCredit1`=5857 WHERE `entry`=5858;

UPDATE `quest_template` SET `Method`=0,`QuestFlags`=0 WHERE `entry`=27965;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=47332;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=47332;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(47332,0,0,0,19,0,100,0,27983,0,0,0,85,88292,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Lunk - On Quest Accept - Invoker Cast spell'),
(47332,0,1,0,19,0,100,0,27983,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - On Quest Accept - Despawn'),
(47332,0,2,0,1,0,100,0,60000,60000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lunk - After 2 min - Despawn');


UPDATE `creature_template` SET `ScriptName`='npc_lunk_dwarf_ride',`unit_flags`=`unit_flags`|2|128|256|512,`flags_extra`=`flags_extra`|2,`minlevel`=47,`maxlevel`=47,`npcflag`=2 WHERE `entry`=47333;
UPDATE `creature_template` SET `VehicleId`=1262,`ScriptName`='npc_dark_iron_steamsmith' WHERE `entry`=5840;

DELETE FROM `creature_text` WHERE `entry` IN (47333,5840);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(47333,0,0,'You take dwarf''s things. No need to kill.',14,0,100,22,0,0,'Lunk'),
(47333,0,1,'He will be sleepy for a while. Lunk know. Lunk do before.',14,0,100,22,0,0,'Lunk'),
(47333,0,2,'Here, I stealed this from little dwarf.',14,0,100,22,0,0,'Lunk'),
(47333,0,3,'Sitting easier than killing.',14,0,100,22,0,0,'Lunk'),
(5840,0,0,'Ugh! Why are you WET!?',14,0,100,22,0,0,'Dark Iron Steamsmith'),
(5840,0,1,'But... but...',14,0,100,22,0,0,'Dark Iron Steamsmith'),
(5840,0,2,'That''s... one... giant... keester...',14,0,100,22,0,0,'Dark Iron Steamsmith'),
(5840,0,3,'Why did it have to be... a smelly ogre...',14,0,100,22,0,0,'Dark Iron Steamsmith'),
(5840,0,4,'Where... did... he... come from...',14,0,100,22,0,0,'Dark Iron Steamsmith');

-- Hackfix
DELETE FROM `creature_involvedrelation` WHERE `id`=47333;
INSERT INTO `creature_involvedrelation`(`id`,`quest`) VALUES
(47333,27983);

UPDATE `quest_template` SET `QuestFlags`=8 WHERE `entry`=27983;