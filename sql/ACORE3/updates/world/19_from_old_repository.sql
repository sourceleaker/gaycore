ALTER TABLE `world_db_version` CHANGE  `required_18_from_old_repository` `required_19_from_old_repository`  BIT(1);
-- Mottled Boar
 SET @ENTRY := 3098;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,79581,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Angry Snort on Aggro');


-- Northwatch Scout
SET @ENTRY := 39317;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3400,5600,7500,7500,11,79584,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fan of Knives');

-- Felhunter
SET @ENTRY := 3102;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,10000,11000,11,79619,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Drain Life');


-- Vile Familiar
SET @ENTRY := 3101;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,11921,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,11921,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Fireball Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Fireball Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,11,0,2,3,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,12,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade');


-- Yarrog Baneshadow
SET @ENTRY := 3183;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,37628,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fel Immolate on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3500,4500,11,35913,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fel Fireball'),
(@ENTRY,0,4,0,0,0,100,0,3000,3000,15000,18000,11,172,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Corruption'),
(@ENTRY,0,5,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Fireball Range'),
(@ENTRY,0,6,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,7,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Fireball Range'),
(@ENTRY,0,8,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,10,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,11,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,12,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade');

-- Sarkoth
SET @ENTRY := 3281;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,2500,3000,10000,10000,11,79607,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Venom Splash');



-- NPC talk text insert
SET @ENTRY := 3101;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'combat Flee');

-- Dire Mottled Boar

SET @ENTRY := 3098;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,3385,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Boar Charge on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,4500,7500,11000,13000,11,2649,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rushing Charge if futher than 5yrd');

-- Surf Crawler

SET @ENTRY := 3106;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3500,4500,5000,5000,11,78744,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bubblebeam');

-- Northwatch Ranger

SET @ENTRY := 39261;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,78754,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,10,0,100,0,0,70,7000,13000,11,78754,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Shoot'),
(@ENTRY,0,9,0,0,0,100,1,5000,7700,13400,17800,11,22910,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Immolation Trap');

-- Northwatch Infantryman

SET @ENTRY := 39260;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,78894,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Leaping Cleave on Aggro'),
(@ENTRY,0,1,0,2,0,100,1,0,35,0,0,11,78826,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Evasion at 35% HP');

-- Northwatch Sharpshooter

SET @ENTRY := 39268;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,79719,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pinpoint'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,10,0,100,0,0,70,7000,10000,11,79721,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Explosive Shot');

-- Northwatch Marine

SET @ENTRY := 39267;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,5500,7500,7500,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Hamstring');

-- Foaming Sea Elemental

SET @ENTRY := 39272;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,32011,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Water Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Bolt Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Bolt Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,4700,5900,12500,17000,11,32011,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Water Bolt'),
(@ENTRY,0,12,0,0,0,100,0,2300,2700,9000,12000,11,79831,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wave Crash');

-- Razormane Quilboar

SET @ENTRY := 3111;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,60000,60000,11,5280,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Razor Mane on Spawn'),
(@ENTRY,0,1,0,0,0,100,0,2000,3200,7500,7500,11,80146,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bonk');

-- Razormane Scout

SET @ENTRY := 3112;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,5280,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Razor Mane on Spawn'),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,11,80149,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw Axe on Aggro'),
(@ENTRY,0,4,0,9,1,100,0,5,30,3500,4100,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,5,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,6,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,7,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,8,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,9,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade');

-- Razormoane Dustrunner

SET @ENTRY := 3113;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,5280,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Razor Mane on Spawn'),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,11,6950,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Faerie Fire on Aggro'),
(@ENTRY,0,4,0,0,1,100,0,6000,6000,6000,6000,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath'),
(@ENTRY,0,5,0,9,1,100,1,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Wrath Range'),
(@ENTRY,0,6,0,9,1,100,1,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,7,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Wrath Range'),
(@ENTRY,0,8,0,9,1,100,1,5,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Wrath Range'),
(@ENTRY,0,9,0,3,1,100,1,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,10,0,3,2,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,11,0,3,2,100,1,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%');


-- Razormane Battleguard

SET @ENTRY := 3114;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,5280,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Razor Mane on Spawn'),
(@ENTRY,0,1,0,1,0,100,0,2500,3000,120000,120000,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Battle Shout'),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,3,0,0,0,100,0,3300,4200,7500,7500,11,77558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bloody Strike'),
(@ENTRY,0,4,0,0,0,100,0,6300,7200,8000,11000,11,3248,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Improved Blocking');

-- Bloodtalon Taillasher

SET @ENTRY := 3122;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rushing Charge on Aggro');

-- Armored Scorpid

SET @ENTRY := 3126;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,6000,6000,6000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Harden');

-- Venomtail Scorpid

SET @ENTRY := 3127;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,40,10000,10000,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Venom Sting'),
(@ENTRY,0,1,0,0,0,100,1,2500,3000,10000,10000,11,79607,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Venom Splash');

-- Death Flayer

SET @ENTRY := 5823;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,6000,6000,6000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Harden'),
(@ENTRY,0,1,0,0,0,100,1,2500,3000,10000,10000,11,79607,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Venom Splash');

-- Bloodtalon Scythemaw

SET @ENTRY := 3123;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rushing Charge on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,2100,3200,12000,14600,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend');

-- Dreadmaw Toothgnasher

SET @ENTRY := 39452;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2100,3200,7500,7500,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Muscle Tear');

-- Dreadmaw Crocolisk

SET @ENTRY := 3110;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2100,3200,7500,7500,11,12166,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Muscle Tear');

-- Screamslash

SET @ENTRY := 39385;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rushing Charge on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,2100,3200,12000,14600,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend');

-- Teeming Waterguard

SET @ENTRY := 39596;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2100,3200,5000,5000,11,78542,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Splash');

-- Furious Earthguard

SET @ENTRY := 39595;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1200,2100,5700,7200,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Earth Spike');

-- Elder Mottled Boar

SET @ENTRY := 3100;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,3385,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Boar Charge on Aggro');

-- Dustwind Harpy

SET @ENTRY := 3115;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3300,11300,8900,14500,11,77522,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Swoop'),
(@ENTRY,0,1,0,0,0,100,0,3300,8500,11900,14500,11,80215,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Dustwind');


-- Dustwind Pillager 

SET @ENTRY := 3116;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3300,7500,12000,15500,11,3147,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend Flesh'),
(@ENTRY,0,1,0,0,0,100,0,3300,8500,11900,14500,11,80215,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Dustwind');

-- Dustwind Savage

SET @ENTRY := 3117;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3500,5700,12000,17500,11,79530,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mangle'),
(@ENTRY,0,1,0,0,0,100,0,3300,8500,11900,14500,11,80215,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Dustwind');

-- Dustwind Storm Witch

SET @ENTRY := 3118;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3300,8500,11900,14500,11,80215,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Dustwind'),
(@ENTRY,0,1,0,0,0,100,0,8500,13000,13000,21000,11,12058,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Chain Lightning'),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,12000,15000,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt');

-- Ecrusted Surf Crawler

SET @ENTRY := 3108;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,6000,6000,6000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Harden');

-- Burning Blade Fanatic

SET @ENTRY := 3197;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2500,3000,15000,18000,11,5262,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fanatic Blade'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,13500,17500,11,80174,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Felblood');

-- Burning Blade Apprentice

SET @ENTRY := 3198;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Voidwalker on Spawn'),
(@ENTRY,0,1,0,0,0,100,0,2500,3000,11000,13000,11,5262,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,2,0,0,0,100,0,0,40,5700,7200,11,5262,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Weave'),
(@ENTRY,0,15,0,0,0,100,0,7000,9000,13500,17500,11,80174,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Felblood');

-- Felweaver Scornn

SET @ENTRY := 5822;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Voidwalker on Spawn'),
(@ENTRY,0,1,0,0,0,100,0,5000,5000,10000,11000,11,79933,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Drain Life');


-- Gazz'uz

SET @ENTRY := 20791;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,172,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Corruption on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,0,40,5700,7200,11,20791,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt');

-- Kor'kron Deathbringer

SET @ENTRY := 42946;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2500,3000,120000,120000,11,77808,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Battle Shout'),
(@ENTRY,0,1,0,0,0,100,0,3300,8300,8900,10000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');

-- Burning Blade Thug

SET @ENTRY := 3195;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7000,9500,11500,11,80174,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Felblood'),
(@ENTRY,0,1,0,0,0,100,0,2000,3200,7500,7500,11,80146,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bonk'),
(@ENTRY,0,2,0,0,0,100,0,7200,9600,11600,13800,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Uppercut');

-- Burning Blade Neophyte

SET @ENTRY := 3196;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,32707,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,40,6400,7200,11,20791,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Range'),
(@ENTRY,0,4,0,1,0,100,1,0,40,6400,7200,11,20791,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,5,0,9,1,100,1,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,6,0,9,1,100,1,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,7,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,8,0,9,1,100,1,5,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,9,0,3,1,100,1,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,10,0,3,2,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,11,0,3,2,100,1,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,12,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,13,0,2,3,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,14,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,15,0,1,0,100,0,500,1000,60000,60000,11,79954,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fel Armor on Spawn'),
(@ENTRY,0,16,0,0,0,100,0,7000,9000,13500,17500,11,80174,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Felblood');


-- Burning Blade Cultist

SET @ENTRY := 3199;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,32707,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,40,6400,7200,11,79938,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Range'),
(@ENTRY,0,4,0,1,0,100,0,0,40,6400,7200,11,79938,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Incinerate'),
(@ENTRY,0,5,0,9,1,100,1,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,6,0,9,1,100,1,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,7,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,8,0,9,1,100,1,5,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,9,0,3,1,100,1,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,10,0,3,2,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,11,0,3,2,100,1,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,12,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,13,0,2,3,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,14,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,15,0,0,0,100,0,7000,9000,13500,17500,11,80174,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Felblood'),
(@ENTRY,0,16,0,1,0,100,0,500,1000,600000,600000,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Imp on Spawn');

-- Geolord Mottle

SET @ENTRY := 5826;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,60000,60000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Spawn'),
(@ENTRY,0,1,0,0,0,100,0,1200,2100,5700,7200,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Earth Spike');

-- Lieutenant Palliter

SET @ENTRY := 39269;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,120000,120000,11,79733,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Commanding Shout on Spawn'),
(@ENTRY,0,1,0,10,0,100,0,0,15,7000,10000,11,79721,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Leaping Cleave on 15 yrd'),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,11500,13500,11,79732,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield Bash');

-- Swollen Voidwaker
SET @ENTRY := 39603;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,10000,11000,11,80132,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Unbound Darkness');


SET @ENTRY := 5953;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,0,0,100,0,3300,8300,8900,10000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave'),
(@ENTRY,0,9,0,2,0,100,1,0,50,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 50% HP');


delete from `creature` where id = 1128;


insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('1128','0','1','1','-5211.67','-97.0443','398.604','4.32843','300','0','122','0','0','0'),
('1128','0','1','1','-5310.54','-47.8904','396.996','3.16604','300','0','144','0','0','0'),
('1128','0','1','1','-5741.66','163.159','434.81','4.83528','300','0','144','0','0','0'),
('1128','0','1','1','-5233.62','-105.049','403.01','4.50646','300','0','122','0','0','0'),
('1128','0','1','1','-5253.79','-56.3961','399.52','6.06155','300','0','122','0','0','0'),
('1128','0','1','1','-5797.7','392.433','429.847','1.45283','300','0','144','0','0','0'),
('1128','0','1','1','-5818.15','363.762','419.487','5.50548','300','0','122','0','0','0'),
('1128','0','1','1','-5601.97','-14.9528','542.512','2.44348','300','0','122','0','0','0'),
('1128','0','1','1','-5662.7','25.6956','506.32','3.30218','300','0','122','0','0','0'),
('1128','0','1','1','-5743.75','457.288','427.014','0.99206','300','0','122','0','0','0'),
('1128','0','1','1','-5621.5','46.5393','501.298','4.15565','300','0','122','0','0','0'),
('1128','0','1','1','-5560.51','-25.839','538.84','0.317667','300','0','122','0','0','0'),
('1128','0','1','1','-5298.57','-33.9532','394.06','5.45941','300','0','122','0','0','0'),
('1128','0','1','1','-5424.39','-45.4163','390.279','2.99326','300','0','122','0','0','0'),
('1128','0','1','1','-5347.56','-34.7408','395.81','5.53271','300','0','122','0','0','0'),
('1128','0','1','1','-5439.46','-21.7866','393.953','3.74724','300','0','144','0','0','0'),
('1128','0','1','1','-5764.17','405.564','441.563','0.8088','300','0','122','0','0','0'),
('1128','0','1','1','-5760.66','129.384','424.613','3.11892','300','0','122','0','0','0'),
('1128','0','1','1','-5777.1','116.789','421.882','3.16604','300','0','122','0','0','0'),
('1128','0','1','1','-5871.39','65.2872','362.834','1.60572','300','0','122','0','0','0'),
('1128','0','1','1','-5828.11','20.7301','360.067','4.33367','300','0','122','0','0','0'),
('1128','0','1','1','-5816.89','48.96','358.824','4.86774','300','0','122','0','0','0'),
('1128','0','1','1','-5863.46','354.95','436.063','2.60474','300','0','122','0','0','0'),
('1128','0','1','1','-5570.73','84.4583','489.508','1.78898','300','0','122','0','0','0'),
('1128','0','1','1','-5579.31','106.948','483.663','2.22357','300','0','144','0','0','0'),
('1128','0','1','1','-5607.22','-33.2498','556.435','4.17659','300','0','144','0','0','0'),
('1128','0','1','1','-5512.74','36.2549','500.827','2.52725','300','0','122','0','0','0'),
('1128','0','1','1','-5737.24','117.671','423.662','3.71582','300','0','122','0','0','0'),
('1128','0','1','1','-5789.58','268.453','408.796','5.95054','300','0','122','0','0','0'),
('1128','0','1','1','-5761.32','184.536','446.149','2.34818','300','0','144','0','0','0'),
('1128','0','1','1','-5596.3','104.277','492.356','3.18175','300','0','144','0','0','0'),
('1128','0','1','1','-5738.45','483.804','403.655','1.78793','300','0','122','0','0','0'),
('1128','0','1','1','-5682.75','83.3668','458.813','2.09267','300','0','122','0','0','0'),
('1128','0','1','1','-5698.53','110.804','432.364','2.36494','300','0','144','0','0','0'),
('1128','0','1','1','-5846.48','332.646','429.096','6.25423','300','0','122','0','0','0');


DELETE FROM `creature` WHERE id IN(40991, 40994, 41056);

INSERT INTO `creature` (`id`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES
('40991', '1', '1', '-5477.28', '-229.915', '354.392', '2.78688', '30', '42'),
('40994', '1', '1', '-5502.63', '-273.163', '354.238', '5.94942', '30', '42'),
('41056', '1', '1', '-5388.79', '-278.588', '363.119', '2.15856', '30', '42');


DELETE FROM `npc_text` WHERE ID IN(15972, 15973, 15974);


INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES

('15972', 'Watch yerself down here, $c. These wendingos are savage fighters.'),

('15973', 'I\'ve seen enough of tis cave for a lifetime. I can\'t wait to get back to Kharanos.'),

('15974', 'These wendingos are an annouance, sure, but the real fight is with those Frostmane refugees.');


UPDATE `creature_template` SET `gossip_menu_id`='40991', `npcflag`='1' WHERE (`entry`='40991');

UPDATE `creature_template` SET `gossip_menu_id`='40994', `npcflag`='1' WHERE (`entry`='40994');

UPDATE `creature_template` SET `gossip_menu_id`='41056', `npcflag`='1' WHERE (`entry`='41056');



DELETE FROM `gossip_menu` WHERE entry IN(40991, 40994, 41056);

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
('40991', '15972'),

('40994', '15973'),

('41056', '15974');


DELETE FROM `gossip_menu_option` WHERE menu_id IN(40991, 40994, 41056);

INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_script_id`) VALUES

('40991', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '40991'),

('40994', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '40994'),

('41056', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '41056');


DELETE FROM `db_script_string` WHERE entry IN(2000005408, 2000005409, 2000005410);

INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES

('2000005408', 'Tell Captain Tharran that I\'ll be back in Kharanos as soon as I\'ve verified that the bot is working correctly'),

('2000005409', 'I can\'t wait to get out there and help in the fight against those trolls.'),

('2000005410', 'We\'ve been fighting nonstop since the cataclysm. It\'ll be nice to get a rest, if a brief one.');



DELETE FROM `gossip_scripts` WHERE id IN(40991, 40994, 41056);

INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `dataint`) VALUES 

('40991', '1', '8', '40991', '0'),

('40991', '0', '33', '0', '0'),

('40991', '2', '0', '0', '2000005408'),

('40994', '1', '8', '40994', '0'),

('40994', '0', '33', '0', '0'),

('40994', '2', '0', '0', '2000005409'),

('41056', '1', '8', '41056', '0'),

('41056', '0', '33', '0', '0'),

('41056', '2', '0', '0', '2000005410');



DELETE FROM `conditions` WHERE SourceGroup IN(40991, 40994, 41056) AND (SourceTypeOrReferenceId = 15);

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES

('15', '40991', '9', '313'),

('15', '40994', '9', '313'),

('15', '41056', '9', '313');


delete from `creature` where id = 42773;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('42773','0','1','1','-5527.56','720.46','377.995','5.03757','300','0','63','0','0','0');

delete from `creature_template` where entry = 42773;

insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('42773','0','0','0','0','0','32731','0','0','0','Boss Bruggor','','','0','3','3','0','14','14','0','1','1.14286','1','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','7','0','42773','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3','3','','0','3','1.5','1','1','0','0','0','0','0','0','0','100','1','0','0','0','','1');

delete from `gameobject_template` where entry = 204042;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) values
('204042','10','9277','Detonator','','','','0','0','1','0','0','0','0','0','0','0','26318','0','20000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','go_detonator','1');

delete from `gameobject` where id = 204042
;
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('204042','0','1','1','-5524.61','715.622','377.544','5.03466','0','0','0.584499','-0.811394','300','0','1');

delete from `quest_template` where `entry` = 26285;


insert into `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) values('26285','2','801','0','2','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','26318','0','0','5','0','0','0','Get Me Explosives Back!','It\'s gonna take a lot of powder ta collapse those caves. I don\'t know whether th\' damnable troggs understood that when they stole me supplies and kidnapped me demolitionists! But th\' outcome\'s th\' same.$B$BAin\'t gonna be able ta blow nothin\' up until I\'ve got that powder back.$B$BGo south to Frostmane Hold and kill any o\' those troggs you find. Any one o\' \'em could be carryin\' me kegs o\' powder.','Recover 7 Stolen Powder Kegs from Rockjaw Bonepickers or Rockjaw Marauders at Frostmane Hold.',NULL,NULL,'Return to Jessup McCree at Frostmane Hold.',NULL,NULL,NULL,NULL,NULL,'58202','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','47','54','0','0','0','5','5','0','0','0','0','0','0','0','0','0','0','0','50','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'0','0','890','878','0','0','0','1');

DELETE FROM `gameobject_template` WHERE entry IN(206037, 205919, 205938, 205920, 205921, 205936, 205585, 206103, 205937, 206552);

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data1`, `data6`) VALUES

('205585', '5', '9588', 'Gnomeregan Table', '1', '0', '0'),

('205919', '5', '9956', 'Gnomeregan Larget Tesla', '1', '0', '0'),

('205920', '5', '9957', 'Suspended Tesla', '1', '0', '0'),

('205921', '5', '6839', 'Decontamination Control Unit', '1', '0', '0'),

('205936', '5', '5311', 'Warning Light', '3', '0', '0'),

('205938', '5', '9967', 'Steam Cleansing', '1', '0', '0'),

('206037', '5', '2047', 'Gnomeregan Teleporter', '1', '0', '0'),

('206103', '5', '8491', 'Gnomeregan Mat', '1', '0', '0'),

('205937', '5', '2029', 'Gnomeregan Machine', '1', '0', '0'),

('206552', '5', '7416', 'Gnomeregan Construction Barricade', '1', '0', '0');


UPDATE `gameobject_template` SET `displayId`='9796' WHERE (`entry`='203975');


UPDATE `quest_template` SET `NextQuestId`='27674' WHERE (`entry`='27635');


UPDATE `quest_template` SET `OfferRewardText`='I could feel th\' explosion way up here! My boys did a fine job riggin\' up that blast, but it wouldn\'t have happened without your help. It\'s only fail that I split my contract payment with you for helpin\' me finish th\' job.' WHERE (`entry`='26318');
UPDATE `quest_template` SET `QuestFlags`='589824', `PrevQuestId`='27674' WHERE entry IN(26203, 26206, 26202, 26199, 26197);


UPDATE `quest_template` SET `OfferRewardText`='It\'s good to see you again, $N. Without your help, we wouldn\'t have been able to get so many survivors out of Gnomeregan this time. Everyone is going to be thrilled to meet you and hear your story.' WHERE (`entry`='27674');

UPDATE `quest_template` SET `QuestFlags`='589824', `OfferRewardText`='Did Nevin send you ahead? That means he\'s getting ready to end the mission, but there are still survivors to be rescued. We have to help them.' WHERE (`entry`='28167');

UPDATE `quest_template` SET `OfferRewardText`='I know Nevin will be pleased with all the survivors you managed to help. I still can\'t believe you managed to stay so strong down here in the radiation. You\'ve seen the shape the other survivors are in. $B $BLet\'s get you to the loading room for decontamination.' WHERE (`entry`='27671');

UPDATE `quest_template` SET `OfferRewardText`='It\'s good to meet you, $N. You\'ve probably heard others speaking of Operation: Gnomeregan. Let me tell you a bit about what happened and why we left the dwarven city of Ironforge.' WHERE `entry` IN(26421, 26422, 26423, 26424, 26425);
UPDATE `quest_template` SET `OfferRewardText`='Even now, only the S.A.F.E. teams dare to venture far into the city to search for survivors. Meanwhile, Thermaplugg has sent one of his followers, Crushcog, to distract us and buy time for him to dig in.' WHERE (`entry`='26208');
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. My men can take it from here. Let\'s focus on getting the other survivors out now.' WHERE (`entry`='27670');
UPDATE `quest_template` SET `OfferRewardText`='It\'s good to meet you, $C. We rarely come across suvivors as strong and capable as you are. I can help get you decontaminated and on your way out of here.' WHERE (`entry`='28169');

DELETE FROM `npc_text` WHERE `ID` = 16988;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('16988', 'There will be more time to talk once we get back to the surface safely.');

UPDATE `creature_template` SET `gossip_menu_id`='45966' WHERE (`entry`='45966');

DELETE FROM `gossip_menu` WHERE `entry` = 45966;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('45966', '16988');


DELETE FROM `npc_text` WHERE `ID` = 17350;

INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('17350', 'I\'m sure I don\'t need to remind you to stay alert down here.');

UPDATE `creature_template` SET `gossip_menu_id`='47250' WHERE (`entry`='47250');

DELETE FROM `gossip_menu` WHERE `entry` = 47250;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('47250', '17350');


DELETE FROM `npc_text` WHERE `ID` = 17349;

INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('17349', 'This is where we gather the surivors to prepare them for decontamination. From there, it\'s just a short trip to the surface!');

UPDATE `creature_template` SET `gossip_menu_id`='46274' WHERE (`entry`='46274');

DELETE FROM `gossip_menu` WHERE `entry` = 46274;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('46274', '17349');


DELETE FROM `npc_text` WHERE `ID` = 16215;

INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('16215', 'Operation: Gnomeregan was a success. $BSure, that dastardly Thermaplugg has an unforseen trick up his sleeve, but we have him on the run! It\'s only a matter of time before Gnomeregan is cleaned up and in our hands again!');

UPDATE `creature_template` SET `gossip_menu_id`='42317' WHERE (`entry`='42317');

DELETE FROM `gossip_menu` WHERE `entry` = 42317;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('42317', '16215');


DELETE FROM `npc_text` WHERE `ID` = 16995;

INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
('16995', 'Torben Zapblast, teleportation solutions engineer at your service!');

UPDATE `creature_template` SET `gossip_menu_id`='46293' WHERE (`entry`='46293');

DELETE FROM `gossip_menu` WHERE `entry` = 46293;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('46293', '16995');

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 46293;

INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_script_id`) VALUES ('46293', 'Send me to the surface, Torben', '1', '1', '46293');

DELETE FROM `gossip_scripts` WHERE `id` = 46293;

INSERT INTO `gossip_scripts` (`id`, `command`, `x`, `y`, `z`, `o`) VALUES ('46293', '6', '-5201.946', '477.844', '388.23', '5.13');

UPDATE `creature_template` SET `npcflag`='0', unit_flags = unit_flags | 16384 WHERE entry IN(42419, 42420, 42422, 42452, 42423);
UPDATE `creature_template` SET `ScriptName`='npc_MekkaTorqueTinkertown' WHERE (`entry`='42317');

UPDATE `gameobject_template` SET `flags`='4', `data0`='1691', `data1`='203964' WHERE entry IN(203964, 203966, 203965, 203968, 203967, 203443);
DELETE FROM `gameobject_loot_template` WHERE item = 57764;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('203964', '57764', '-100');

UPDATE `quest_template` SET `PrevQuestId`='26222' WHERE (`entry`='26264');
UPDATE `quest_template` SET `PrevQuestId`='26205' WHERE (`entry`='26316');
UPDATE `quest_template` SET `NextQuestId`='0' WHERE (`entry`='26316');
UPDATE `quest_template` SET `PrevQuestId`='26316', `NextQuestId`='26318', `ExclusiveGroup`='-26285' WHERE (`entry`='26285');
UPDATE `quest_template` SET `PrevQuestId`='26316', `NextQuestId`='26318', `ExclusiveGroup`='-26285' WHERE (`entry`='26284');

UPDATE `quest_template` SET `PrevQuestId`='26329', `NextQuestId`='26339', `ExclusiveGroup`='-26333' WHERE (`entry`='26333');
UPDATE `quest_template` SET `PrevQuestId`='26329', `NextQuestId`='26339', `ExclusiveGroup`='-26333' WHERE (`entry`='26331');
UPDATE `quest_template` SET `PrevQuestId`='26364' WHERE (`entry`='26373');

UPDATE `quest_template` SET `ObjectiveText1`='Detonate trogg tunnel' WHERE (`entry`='26318');

delete from `creature` where id = 42291;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('42291','0','1','1','-5277.83','185.182','386.112','0.314991','300','42','0','0','0'),
('42291','0','1','1','-5371.91','182.483','386.111','0.791463','300','42','0','0','0'),
('42291','0','1','1','-5310.14','201.169','386.112','5.88608','300','42','0','0','0'),
('42291','0','1','1','-5333.51','51.4779','386.111','4.98051','300','42','0','0','0'),
('42291','0','1','1','-5327.83','208.587','386.112','5.94892','300','42','0','0','0'),
('42291','0','1','1','-5239.07','186.908','386.112','4.23674','300','42','0','0','0'),
('42291','0','1','1','-5206.74','185.717','386.113','3.21599','300','42','0','0','0'),
('42291','0','1','1','-5283.68','51.0488','386.111','5.546','300','42','0','0','0'),
('42291','0','1','1','-5206.97','76.8771','386.111','0.435678','300','42','0','0','0'),
('42291','0','1','1','-5350.78','87.4451','386.112','2.63453','300','42','0','0','0'),
('42291','0','1','1','-5238.7','62.1062','386.111','0.435678','300','42','0','0','0'),
('42291','0','1','1','-5229.99','207.422','386.112','1.60854','300','42','0','0','0'),
('42291','0','1','1','-5175.15','160.749','386.111','2.08501','300','42','0','0','0'),
('42291','0','1','1','-5371.6','152.979','386.111','2.51934','300','42','0','0','0'),
('42291','0','1','1','-5312.13','75.343','386.111','1.58236','300','42','0','0','0'),
('42291','0','1','1','-5289.7','183.178','386.112','5.56145','300','42','0','0','0'),
('42291','0','1','1','-5276.39','222.14','386.112','1.1894','300','42','0','0','0'),
('42291','0','1','1','-5172.99','110.714','386.111','1.32056','300','42','0','0','0'),
('42291','0','1','1','-5337.05','227.832','386.111','2.42508','300','42','0','0','0'),
('42291','0','1','1','-5350.32','190.889','386.111','0.613439','300','42','0','0','0'),
('42291','0','1','1','-5335.22','100.816','386.112','3.66602','300','42','0','0','0'),
('42291','0','1','1','-5256.81','216.38','386.112','3.95426','300','42','0','0','0'),
('42291','0','1','1','-5362.37','120.37','386.111','1.99574','300','42','0','0','0'),
('42291','0','1','1','-5328.63','196.579','386.111','3.38324','300','42','0','0','0');

UPDATE `creature_template` SET `minlevel`='4', `maxlevel`='5', `faction_A`='14', `faction_H`='14', `mingold`='3', `maxgold`='3' WHERE (`entry`='42291');
UPDATE `quest_template` SET `OfferRewardText`='Well, now, that\'s more like it. We may get around to blowin\' up somethin\' alter all.' WHERE (`entry`='26285');
UPDATE `quest_template` SET `RequestItemsText`='Well, did you recover me missing supplies?' WHERE (`entry`='26285');
UPDATE `quest_template` SET `OfferRewardText`='You have me own thanks and th\' thanks of th\' men you rescued. I\'ve already had th\' boys start setting up the gear down inside the cave. It should be ready to go soon.' WHERE (`entry`='26284');
UPDATE `quest_template` SET `OfferRewardText`='It won\'t be tough to collapse th\' tunnel, but I\'m goin\' to need my team an\' my equipment \'afore I can get to th\' task.' WHERE (`entry`='26316');
UPDATE `quest_template` SET `OfferRewardText`='I can\'t wait to give this new technology a try! We\'ve lost more gnomes to radiation than we can count. It\'s time to turn that around!' WHERE (`entry`='26264');
UPDATE `quest_template` SET `RequestItemsText`='Were you able to recover the belongings of any of the irradiated gnomes?' WHERE (`entry`='26264');
UPDATE `quest_template` SET `OfferRewardText`='Wow, I never expected it to work on the first trial! $b$bUh, I mean, we\'ve succeeded! I wonder what other uses I we can find for this handy little guy.' WHERE (`entry`='26205');
UPDATE `quest_template` SET `RequestItemsText`='Did you get those parts?' WHERE (`entry`='26222');
UPDATE `quest_template` SET `OfferRewardText`='These are fantastic! Let\'s see what we can put together. Would you be interested in resting out the prototype once I\'m done?' WHERE (`entry`='26222');
UPDATE `quest_template` SET `OfferRewardText`='So the high tinker himself has heard of my little project? Splendid! I\'ve almost finished my latest prototype, but maybe you can help me chase down those last few parts.' WHERE (`entry`='26566');
UPDATE `quest_template` SET `RequestItemsText`='Welclome back, $N' WHERE (`entry`='26329');
UPDATE `quest_template` SET `OfferRewardText`='<The high tinker reads Jessup\'s report.>$B$BSplendid news! With the troggs taken care of, we should be able to turn our attention to Crushcog\'s troublemaking.' WHERE (`entry`='26329');
UPDATE `quest_template` SET `OfferRewardText`='That should set back Crushcog\'s plans a bit. but we can\'t rest until he is defeated and Chill Breeze Valley is secure.' WHERE (`entry`='26331');
UPDATE `quest_template` SET `OfferRewardText`='Ah, yes, Kelsey told me to expect you. There\'s still much to do before we can take on Crushcog.' WHERE (`entry`='26339');
UPDATE `quest_template` SET `OfferRewardText`='You\'ve given us just the opening we\'ll need to get the drop on Crushcog. Excellent work, $N.' WHERE (`entry`='26342');
UPDATE `quest_template` SET `OfferRewardText`='We\'re finally free of Razlo Crushcog and his interference! With the defeat of Crushcog and his forces, Thermaplugg can\'t afford to send any more of his followers to the surface. I can\'t wait for the day when we defeat him for good!' WHERE (`entry`='26364');

delete from `creature_ai_texts` where `entry` IN(-423171, -423172, -424191, -424231, -424232, -424233, -424192, -424521, -424193, -424194, -424234, -424522, -424195, -423173);
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423171','We assembled a mighty force and defeated Thermaplugg\'s servants, fighting our way into the city. But, the usurper Thermaplugg had one last trick up his sleeve...','0','0','0','High Tinker Mekkatorque #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423172','Take a look at this holotable. I want to show you a bit about Operation: Gnomeregan.','0','0','0','High Tinker Mekkatorque #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424191','It\'s too quiet. Where are Thermaplugg\'s defense forces?','0','0','0','Image of High Tinker Mekkatorque #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424231','No! No, no, NO!!! I won\'t allow you into my kingdom, usurper! I WON\'T ALLOW IT!','0','0','0','Thermaplugg\'s Brag-bot #1\r\n');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424232','Activate the Ultimate Atomic Protection System.','0','0','0','Thermaplugg\'s Brag-bot #2\r\n');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424233','...DISINTEGRATE THEM ALL!','0','0','0','Thermaplugg\'s Brag-bot #3');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424192','IT\'S A TRAP! That\'s a fully functional irradiator!','0','0','0','Image of High Tinker Mekkatorque #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424521','Irradiator 3000 activated. Attention. Emergency. You now have ten minutes to reach minimum safe distance.','0','0','0','Irradiator 3000 #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424193','Ten minutes? Plenty of time to disarm the device.','0','0','0','Image of High Tinker Mekkatorque #3');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424194','Hinkles, hand me that Whirring Bronze Gizmo and some Fresh Spring Water. Cogspin, toss me that Dirty trogg Cloth and a Handful of Copper Bolts...','0','0','0','Image of High Tinker Mekkatorque #4');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424234','TEN MINUTES?! You left the factory setting on? Give me that controller, you idiot!','0','0','0','Thermaplugg\'s Brag-bot #4');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424522','*BEEP* Attention. Emergency. You now have ten seconds to reach minimum safe distance.','0','0','0','Irradiator 3000 #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424195','Whuh-oh! We\'ve got to get out of here! Lapforge, beam us back, quickly!','0','0','0','Image of High Tinker Mekkatorque #5');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423173','We were forced to retreat. Thermaplugg continues to hide behind the radiation, sending his crony, Crushcog, to harass us here on the surface.','0','0','0','High Tinker Mekkatorque #3');

DELETE FROM `creature` WHERE `map`=732 AND `id` IN (47682,48357,48355,48363,48361,50164,48356,48360,
48531,51287,48358,48252,48253,47328,48251,47240,50161,48255,48250,48254,51288,46825,
46823,46960,47676,46569,46571,46582,46597,46570,46507,46508,46605,46608,47287,46606,46989,47130,47447,
48308,47627,48325,46630,48283,46641,46648,46643,46645,47657,47659,47680,47642,47666,47181,
47182,47183,47304,1412,47667);

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(47676, 732, 1, 1, 0, 0, -388.019, 1412.66, 22.0499, 0.0287323, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -529.308, 1338.01, 24.1728, 3.74367, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -558.762, 1161.54, 93.8668, 2.98968, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -431.008, 1166.98, 15.7538, 3.35411, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 57.9022, 1279.75, 16.4975, 5.66786, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 48.2622, 1220.71, 4.76688, 1.60735, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 53.1852, 1141.81, 3.73387, 1.60342, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 27.2117, 1066.58, 15.058, 6.00558, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -141.392, 1545.45, 21.9671, 4.70575, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(48357, 732, 1, 1, 0, 0, -599.493, 1213.08, 96.5751, 1.07947, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48357, 732, 1, 1, 0, 0, -570.432, 1234.16, 91.8418, 0.961657, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -567.157, 1221.13, 92.7757, 0.847776, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -563.201, 1224.81, 92.4051, 3.74197, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -593.599, 1229.25, 92.827, 6.05496, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -560.268, 1396.7, 23.2463, 5.99527, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -559.491, 1411.72, 22.0547, 5.90102, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48363, 732, 1, 1, 0, 0, -594.591, 1402.2, 21.3983, 0.0706239, 300, 0, 0, 28, 0, 0, 0, 0, 0, 0),
(48361, 732, 1, 1, 0, 0, -584.611, 1388.12, 22.7248, 2.33649, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48357, 732, 1, 1, 0, 0, -576.245, 1394.97, 22.8954, 4.44921, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -588.604, 1383.34, 22.3886, 4.69268, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(50164, 732, 1, 1, 0, 0, -605.872, 1375.79, 21.8266, 5.92575, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -611.726, 1374.06, 21.9459, 4.30782, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48356, 732, 1, 1, 0, 0, -610.971, 1379.6, 22.0412, 0.973831, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48360, 732, 1, 1, 0, 0, -620.577, 1397.86, 22.05, 6.25171, 300, 0, 0, 231, 0, 0, 0, 0, 0, 0),
(48531, 732, 1, 1, 0, 0, -618.736, 1411.19, 22.0485, 5.76084, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(51287, 732, 1, 1, 0, 0, -612.781, 1417, 22.0195, 5.94934, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48358, 732, 1, 1, 0, 0, -610.195, 1429.37, 22.0496, 5.65874, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -606.25, 1435.14, 22.0498, 5.63125, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 0, -601.76, 1434.97, 22.0498, 3.8916, 300, 0, 0, 67, 0, 0, 0, 0, 0, 0),
(48357, 732, 1, 1, 0, 0, -597.269, 1430.49, 22.0498, 0.778833, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48357, 732, 1, 1, 0, 0, -610.933, 1420.98, 22.0219, 2.95046, 300, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -558.753, 1118.77, 95.6523, 4.38479, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -559.344, 1101.1, 95.917, 6.0891, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -590.536, 1086.65, 97.0714, 6.19513, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -587.273, 1084.3, 97.0318, 1.45132, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -552.983, 1090.03, 94.5245, 3.79966, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -326.555, 1087.54, 22.4292, 4.84816, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -359.054, 1091.33, 22.0647, 4.3455, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -350.157, 1083.12, 22.0497, 1.33743, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -337.567, 1082.14, 21.9305, 1.65551, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(47328, 732, 1, 1, 0, 0, -396.47, 1083.2, 27.895, 5.56679, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 52668, -384.874, 1086.12, 28.0679, 3.2212, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -393.968, 1092.7, 27.9906, 3.09672, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -387.18, 1078.78, 26.7162, 5.57465, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -393.639, 1074.28, 26.8499, 5.36259, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48251, 732, 1, 1, 0, 0, -376.317, 1051.36, 21.9715, 1.13714, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47240, 732, 1, 1, 0, 0, -347.053, 1063.77, 22.0312, 1.43952, 300, 0, 0, 387530, 0, 0, 0, 0, 0, 0),
(50161, 732, 1, 1, 0, 0, -347.599, 1029.5, 22.2648, 0.469561, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 0, -321.393, 1063.16, 22.109, 1.15286, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48255, 732, 1, 1, 0, 0, -327.483, 1056.04, 22.0463, 3.14778, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48250, 732, 1, 1, 0, 0, -352.92, 1038.14, 22.0168, 1.64767, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48254, 732, 1, 1, 0, 0, -370.934, 1073.2, 22.0358, 5.37945, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(51288, 732, 1, 1, 0, 0, -367.948, 1040.99, 22.0497, 1.01542, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 52666, -339.147, 1039.67, 22.0301, 4.24455, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 0, -358.322, 1074.67, 22.0133, 3.15957, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 0, -491.728, 1527.11, 18.7784, 6.07609, 300, 0, 0, 450061920, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 0, -489.672, 1526.71, 18.8967, 2.89524, 300, 0, 0, 437586016, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -488.262, 1524.57, 18.9499, 2.18445, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 52668, -325.86, 1042.49, 22.0497, 2.56772, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 52666, -328.944, 1041.18, 22.0483, 1.29145, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 52666, -340.463, 1037.13, 22.0482, 1.03227, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 52664, -569.758, 1379.91, 24.6997, 5.89389, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48355, 732, 1, 1, 0, 52664, -564.574, 1432.11, 22.1099, 0.227246, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(48357, 732, 1, 1, 0, 52666, -560.563, 1428.02, 22.0498, 4.36629, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48252, 732, 1, 1, 0, 52666, -387.432, 1087.3, 27.9875, 5.54205, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(48253, 732, 1, 1, 0, 52668, -387.805, 1056.94, 20.7206, 0.761336, 300, 0, 0, 929798, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -378.64, 1748.41, 22.8154, 5.5904, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -376.218, 1746.4, 23.2869, 2.42918, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -375.26, 1743.99, 23.367, 2.0247, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -401.939, 1718.65, 26.1064, 5.91241, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -399.16, 1717.72, 26.296, 2.87685, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -396.688, 1719.22, 26.3335, 3.69759, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -326.951, 1682.72, 21.9562, 4.53011, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -327.763, 1679.71, 21.7737, 4.43586, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -328.426, 1677.08, 21.5816, 1.37281, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -378.973, 1667.84, 18.0636, 0.571702, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -376.27, 1669.3, 17.9912, 3.68581, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -378.576, 1671.82, 18.4775, 5.43724, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -325.468, 1643.7, 24.709, 2.57054, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -326.554, 1644.85, 24.4418, 5.45688, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -327.575, 1641.98, 24.6661, 1.0076, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -411.958, 1622.83, 18.3283, 0.430335, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -411.842, 1624.58, 18.3332, 5.92027, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -409.642, 1623.86, 18.0423, 3.23421, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -373.793, 1591.73, 21.8243, 3.01822, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -375.83, 1591.82, 21.5639, 6.26585, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -375.058, 1589.09, 20.8191, 1.74981, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -420.97, 1580.54, 25.0012, 3.20672, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -421.646, 1578.73, 25.0267, 2.7237, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -423.681, 1580.43, 25.0508, 5.91634, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -491.629, 1559.48, 22.048, 5.96739, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46823, 732, 1, 1, 0, 52656, -489.46, 1558.41, 21.9505, 2.73548, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46825, 732, 1, 1, 0, 52655, -488.7, 1560.92, 21.8325, 4.42409, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46960, 732, 1, 1, 0, 0, -453.263, 1557.38, 20.6544, 0.387131, 300, 0, 0, 38745, 0, 0, 0, 0, 0, 0),
(46960, 732, 1, 1, 0, 0, -416.427, 1647.6, 18.9042, 5.03276, 300, 0, 0, 38745, 0, 0, 0, 0, 0, 0),
(46960, 732, 1, 1, 0, 0, -346.386, 1602.38, 23.4928, 1.1097, 300, 0, 0, 38745, 0, 0, 0, 0, 0, 0),
(46960, 732, 1, 1, 0, 0, -357.652, 1683.27, 17.6126, 2.28387, 300, 0, 0, 38745, 0, 0, 0, 0, 0, 0),
(46960, 732, 1, 1, 0, 0, -346.083, 1654.51, 18.4024, 2.60588, 300, 0, 0, 38745, 0, 0, 0, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -275.503, 1666.54, 18.7189, 2.66479, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -450.831, 1492.86, 18.6755, 4.35128, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -540.354, 1503.55, 25.0513, 0.742379, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -617.849, 1636.38, 47.3112, 2.12861, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -611.11, 1679.17, 52.3444, 4.90892, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -651.381, 1667.54, 48.4059, 2.23071, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -669.801, 1708.18, 49.4575, 6.02026, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -672.51, 1743.09, 49.1948, 0.251509, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -638.43, 1727.69, 57.3049, 4.90499, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -657.328, 1785.75, 53.2535, 1.95189, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -585.99, 1823.15, 51.7132, 1.40604, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -616.107, 1860.61, 47.4159, 1.92048, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -522.572, 1877.67, 46.4291, 1.17042, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -538.62, 1941.83, 49.3459, 1.73591, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -496.745, 1950.5, 48.9428, 5.27806, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -476.267, 1947.39, 49.2944, 3.81722, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -466.769, 1887.31, 46.848, 4.83431, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -486.96, 1855.79, 47.1629, 1.65344, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -457.876, 1863.57, 46.6891, 1.3275, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -448.322, 1924.86, 49.6583, 1.8655, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -428.829, 1934.01, 50.7046, 0.467493, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -408.404, 1914.68, 51.1869, 3.30278, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -413.398, 1879.89, 49.2592, 4.44553, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -445.183, 1843.61, 46.7818, 4.25704, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -506.564, 1775.23, 47.6724, 4.26096, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -497.483, 1740.31, 46.8951, 4.90891, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -498.085, 1710.8, 47.9719, 3.62085, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -501.782, 1681.04, 46.8378, 4.50835, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -543.9, 1646.37, 48.7885, 3.85647, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -558.022, 1650.14, 49.3062, 1.77516, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -561.885, 1683.67, 53.4087, 1.83014, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46569, 732, 1, 1, 0, 0, -547.367, 1732.75, 56.2291, 0.805197, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46571, 732, 1, 1, 0, 0, -610.863, 1725.82, 66.63, 4.11565, 300, 3, 0, 154980, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -606.193, 1779.23, 67.1558, 1.18611, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -614.825, 1708.13, 64.5112, 4.26094, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -567.546, 1739.77, 65.8761, 1.02117, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -564.334, 1778.53, 66.1064, 1.81835, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -485.991, 1770.62, 46.8478, 0.141529, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -508.416, 1729.61, 49.3072, 4.66935, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -531.301, 1754.09, 53.4698, 0.0944047, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -545.202, 1932.22, 48.8868, 1.61022, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -525.687, 1962.2, 49.3907, 3.236, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46582, 732, 1, 1, 0, 0, -514.325, 1931.7, 48.3951, 2.24247, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -499.06, 1913.46, 46.6808, 0.000153542, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -425.413, 1831.17, 46.4289, 1.59451, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -524.179, 1776.4, 50.967, 2.3485, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -535.39, 1686.14, 49.0594, 0.942638, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -594.433, 1649.32, 48.8466, 4.75182, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -650.684, 1708.21, 50.1151, 1.83799, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46597, 732, 1, 1, 0, 52651, -615.773, 1823.26, 53.2477, 5.34479, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -617.475, 1822.58, 53.4266, 5.32123, 300, 3, 0, 303136607, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -499.94, 1911.8, 46.6283, 0.0865483, 300, 3, 0, 303136607, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -427.125, 1831.4, 46.4286, 1.52383, 300, 3, 0, 303136607, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -525.215, 1774.97, 51.0218, 2.19535, 300, 3, 0, 311779248, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -536.943, 1686.73, 49.0747, 0.911226, 300, 3, 0, 303136607, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -596.246, 1649.83, 48.8415, 4.79109, 300, 3, 0, 311779248, 0, 0, 1, 0, 0, 0),
(46570, 732, 1, 1, 0, 0, -652.24, 1707.41, 50.024, 1.84192, 300, 3, 0, 311779248, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -333.736, 1813.14, 26.421, 3.93266, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -207.367, 1455.58, 21.3523, 4.17988, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -248.284, 1445.5, 21.6676, 6.002, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -272.875, 1401.49, 19.4017, 4.5176, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -317.433, 1431.9, 19.4879, 4.45476, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -375.452, 1348.89, 20.4203, 1.12074, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -368.475, 1311.17, 19.2852, 5.70354, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -300.544, 1293.15, 18.5238, 1.78833, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -303.519, 1330.22, 19.2399, 1.01079, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -328.823, 1367.1, 17.5064, 5.03203, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -234.65, 1341.85, 20.0557, 3.32771, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46507, 732, 1, 1, 0, 0, -214.174, 1395.17, 19.2467, 3.4573, 300, 3, 0, 116235, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -255.557, 1319.64, 24.0552, 4.05027, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -313.142, 1314.03, 26.2045, 2.89181, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -324.169, 1273.78, 25.6328, 4.45083, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -383.407, 1294.44, 25.7135, 4.66681, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -360.605, 1344.75, 22.3257, 0.225385, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -402.518, 1347.88, 22.3066, 5.16554, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -358.216, 1372.72, 25.0695, 1.00685, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -337.612, 1450.69, 23.0884, 4.54507, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -321.958, 1397.33, 23.5531, 5.7271, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -265.637, 1431.11, 25.9186, 6.24938, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -194.093, 1488.11, 25.9394, 1.23069, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -188.964, 1420.91, 23.7404, 5.22051, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -224.628, 1414.14, 23.0146, 4.08561, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -240.14, 1371.37, 21.9856, 4.70607, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -299.331, 1361.71, 22.3607, 2.6444, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -276.983, 1286.87, 22.8079, 6.06088, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -194.204, 1384.2, 25.9003, 0.0447283, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -179.531, 1451.17, 23.0262, 6.0648, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -236.886, 1476.23, 22.8176, 1.87471, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46508, 732, 1, 1, 0, 0, -313.807, 1464.03, 23.95, 5.02022, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, -85.7659, 1448.51, 3.63532, 1.92969, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, -48.6482, 1484.11, 3.23052, 2.4402, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 15.9597, 1489.04, 2.67617, 0.488483, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 28.4038, 1517.82, 4.04731, 1.56841, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 7113, 52652, -13.8797, 1539.07, 6.74876, 2.98605, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 21.9543, 1554.47, 4.67254, 0.272494, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 63.5449, 1550.01, 0.749039, 3.2413, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 82.8968, 1604.54, 5.09674, 2.89572, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46605, 732, 1, 1, 0, 52652, 115.475, 1625.52, 3.75278, 0.684829, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46608, 732, 1, 1, 0, 0, 158.238, 1550.18, -11.4929, 1.11445, 300, 18, 0, 464940, 0, 0, 1, 0, 0, 0),
(47287, 732, 1, 1, 0, 52652, 275.205, 1523.02, 2.92253, 2.397, 300, 3, 0, 154980, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 209.656, 1561.09, -11.3438, 2.55801, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 183.625, 1599.2, -13.2839, 1.78439, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 151.555, 1628.01, -5.76766, 1.6548, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 165.058, 1672.44, -10.5814, 5.84097, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 124.386, 1643.06, 2.83945, 5.83313, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 102.167, 1620.69, 3.54901, 2.42058, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 103.526, 1562.7, -4.88176, 3.41018, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 141.054, 1563.34, -11.6218, 0.213604, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 186.657, 1513.67, -10.7196, 5.95485, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 150.555, 1478.77, -11.3508, 1.5527, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 155.314, 1437.72, -8.13749, 5.27549, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 105.798, 1449.6, -12.9648, 2.78185, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 62.146, 1463.29, -9.32163, 1.02648, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 99.2942, 1500.98, -5.82628, 0.995061, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 60.3953, 1583.03, 2.75419, 3.06852, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 39.5862, 1557.13, 3.67069, 4.57648, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 33.4873, 1499.47, 1.9412, 3.02925, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 9.24295, 1514.68, 3.21397, 2.98605, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, 4.97144, 1545.28, 4.06622, 1.2621, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -35.0161, 1482.06, 1.4279, 3.85785, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -63.5087, 1464.83, 2.26422, 3.57118, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -208.888, 1678.28, -4.10126, 3.81858, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -236.508, 1688.81, 2.58443, 1.37992, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -247.111, 1732, 2.7451, 1.96897, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -228.025, 1743.42, -3.77072, 1.85508, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -240.379, 1802.37, 2.09297, 2.05929, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46606, 732, 1, 1, 0, 0, -267.133, 1828.86, -3.18283, 3.63008, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -110.766, 1621.67, 23.6665, 3.09993, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -20.7688, 1627.48, 27.125, 3.473, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 1.88486, 1607.64, 27.7622, 1.67051, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 23.2758, 1626.26, 27.8151, 5.18516, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -16.6583, 1649.63, 29.4646, 0.339255, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -82.483, 1677.79, 27.9354, 1.37991, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -113.116, 1698.05, 28.5749, 2.36951, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -68.4524, 1701.64, 29.5931, 0.339254, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -95.3093, 1716.13, 26.9479, 1.6116, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -64.1108, 1736.56, 30.0005, 4.9142, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -80.1545, 1604.72, 27.2113, 2.91143, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -46.1333, 1659.09, 27.5948, 3.89318, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -56.8953, 1671.5, 27.8459, 3.82249, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -22.6905, 1701.12, 34.9761, 3.80286, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -10.2368, 1690.83, 34.9761, 3.8382, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -7.64742, 1720.37, 37.4611, 5.57001, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 8.48219, 1702.55, 37.4611, 2.30275, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 10.9274, 1751.89, 37.4442, 3.83035, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 17.8023, 1766.74, 45.5726, 0.822279, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 35.4373, 1758.33, 45.9805, 3.82643, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 50.4658, 1741.17, 46.3996, 4.05812, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47447, 732, 1, 1, 0, 52657, 40.2861, 1746.74, 45.5676, 3.90105, 300, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 54.1576, 1721.96, 45.5721, 0.551321, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 35.2402, 1705.23, 37.4453, 2.3067, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 54.4486, 1725.36, 37.4375, 2.2046, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 7.69722, 1696.86, 58.5203, 2.31062, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 14.6987, 1702.83, 58.5203, 2.27921, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -5.20289, 1726.53, 58.5206, 5.4208, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -12.9576, 1719.91, 58.5206, 5.46007, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, -0.429921, 1738.23, 58.5197, 5.46008, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 3.53263, 1741.82, 58.5216, 5.47185, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 7.43527, 1744.4, 58.523, 5.45614, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 11.298, 1748.14, 58.5217, 5.49541, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 15.3909, 1751.65, 58.5217, 5.4365, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 41.9936, 1753.97, 58.5192, 0.924393, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 48.3638, 1745.99, 58.5195, 0.74375, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 42.2782, 1720.73, 58.5217, 2.37345, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 38.2548, 1717.49, 58.5217, 2.37738, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 34.4077, 1713.96, 58.5226, 2.34596, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 30.187, 1710.47, 58.5226, 2.29099, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47130, 732, 1, 1, 0, 0, 26.3688, 1707.17, 58.5211, 2.21245, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 2.4689, 1709.82, 58.5214, 2.27528, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 55.6211, 1725.92, 58.5188, 1.80796, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 24.6315, 1766.36, 58.5199, 3.72434, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, -11.0783, 1735.36, 37.4401, 0.775159, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 21.9336, 1762.31, 37.5867, 1.61161, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 48.4732, 1721.82, 45.5725, 2.93108, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46989, 732, 1, 1, 0, 52659, 24.8566, 1765.83, 45.5711, 1.05398, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 17.6251, 1720.29, 28.2145, 0.856856, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 20.6294, 1717.35, 28.2142, 0.731192, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 22.3633, 1714.49, 28.2145, 0.703704, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 20.6109, 1733.2, 28.2145, 5.59281, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 18.0064, 1730.82, 28.2145, 5.55354, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(48308, 732, 1, 1, 0, 0, 23.8514, 1735.35, 28.2145, 5.52213, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -24.9948, 1339.83, 22.0503, 2.97245, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(48325, 732, 1, 1, 0, 0, -73.0845, 1658.4, 27.4925, 4.12805, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(48325, 732, 1, 1, 0, 0, -59.1193, 1633.59, 27.8619, 3.44083, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -163.897, 1740.4, 4.20951, 5.38469, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -204.155, 1812.65, 4.94144, 2.05067, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -149.114, 1797.93, 4.73936, 0.303162, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -148.835, 1826.66, 3.4658, 1.56373, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -124.005, 1821.01, 2.64027, 3.38978, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -184.551, 1836.56, 2.61341, 1.21423, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -223.987, 1838.19, 3.49617, 2.96174, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -142.961, 1847.67, 2.5711, 2.74182, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -182.341, 1893.36, 3.43359, 6.17794, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -233.357, 1893.87, 12.6755, 4.56787, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -244.5, 1908.9, 12.6974, 2.82822, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -224.068, 1946.94, 12.4354, 6.04835, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -55.992, 1942.69, 14.365, 6.17401, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -189.651, 1945.15, 2.40949, 6.12295, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46630, 732, 1, 1, 0, 52663, -240.639, 1977.1, 2.88367, 5.10194, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -214.115, 2005.91, 6.94645, 3.15808, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -204.824, 2006.46, 6.94645, 0.0361189, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -212.114, 2015.23, 6.94494, 2.26665, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -208.464, 2013.96, 6.9449, 1.23385, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -66.9717, 1994.39, 7.24005, 0.354208, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -66.701, 2005.43, 7.22981, 6.28004, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -68.675, 2014.4, 7.22828, 1.52445, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(48283, 732, 1, 1, 0, 0, -74.637, 2014.62, 7.22828, 1.18673, 300, 0, 0, 6243960, 0, 0, 0, 0, 0, 0),
(46641, 732, 1, 1, 0, 0, -76.4347, 1948.57, 13.065, 1.69331, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46641, 732, 1, 1, 0, 0, -78.5083, 1885.67, 14.3579, 2.65542, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46641, 732, 1, 1, 0, 0, -108.773, 1854.25, 14.2137, 1.33595, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46641, 732, 1, 1, 0, 0, -138.033, 1866.24, 2.82797, 1.58728, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46641, 732, 1, 1, 0, 0, -246.155, 1944.39, 12.7809, 5.75382, 300, 3, 0, 77490, 0, 0, 1, 0, 0, 0),
(46648, 732, 1, 1, 0, 52657, -168.465, 1858.78, 2.38359, 4.6739, 300, 15, 0, 154980, 0, 0, 1, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -156.022, 1879.35, 3.37408, 2.07816, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -177.921, 1902.57, 3.06028, 0.742978, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -163.52, 1886.59, 11.8654, 1.59121, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -149.29, 1952.52, 14.819, 5.0234, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -149.687, 1944.11, 14.7152, 1.21422, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -160.399, 1928.82, 14.9832, 1.4145, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -183.336, 1919.48, 3.25243, 0.538778, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -139.73, 1900.2, 2.45985, 2.69862, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -129.19, 1933.4, 2.5406, 3.29945, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -197.975, 1865.63, 2.87922, 3.73142, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46643, 732, 1, 1, 0, 52662, -208.499, 1874.23, 2.92571, 4.65426, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -214.529, 1899.6, 2.38303, 0.519141, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -215.719, 1904.11, 2.38303, 0.358135, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -217.439, 1909.05, 2.38303, 0.263887, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -62.8538, 1885.18, 13.4802, 2.62793, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -65.129, 1880.72, 13.4279, 2.7968, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, 9.30444, 1329.98, 23.2323, 5.29331, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, 22.2614, 1332.98, 23.5898, 1.33882, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -46.3847, 1308.6, 24.9603, 2.51299, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -49.168, 1279, 22.4194, 1.61764, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -38.9946, 1243.23, 16.2662, 4.07515, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -41.5587, 1204.65, 15.9992, 2.7007, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -30.6474, 1169.76, 15.4444, 4.71525, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -39.1165, 1161.09, 15.3563, 0.08925, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -23.8901, 1158.07, 15.5524, 2.70856, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, 10.4507, 1176.7, 15.8984, 3.49788, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -26.1242, 1183.05, 15.082, 2.53184, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -62.3841, 1162.99, 15.0796, 2.48865, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, 0.403516, 1141.26, 16.0643, 5.50458, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -104.941, 1131.35, 15.8773, 4.16076, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -65.7475, 1211.01, 16.7359, 5.57055, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -124.002, 1157.53, 22.3038, 5.6648, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, -74.4465, 1063.6, 15.0582, 3.08085, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47659, 732, 1, 1, 18890, 52661, 45.0891, 1048.48, 17.3692, 5.45276, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47659, 732, 1, 1, 0, 52661, -68.1538, 1314.18, 22.5288, 5.91693, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -96.6765, 1171.02, 16.2674, 2.88529, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -13.3179, 1166.77, 15.0899, 5.54779, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -45.0912, 1104.43, 15.0848, 4.73491, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, 43.6946, 1087.58, 14.1683, 4.81345, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, 68.8431, 1076.92, 14.2723, 3.92987, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, 58.1801, 1177.98, 3.73226, 1.61295, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, 56.1441, 1241.58, 15.3128, 2.02921, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -91.7326, 1020.65, 20.3513, 0.187455, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, -10.8886, 1060.56, 15.0554, 3.31334, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47627, 732, 1, 1, 0, 52654, 16.5473, 1262.23, 15.0578, 3.63535, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 72.017, 1234.69, 17.3652, 1.62473, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 57.8853, 1234.99, 17.3024, 1.5619, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 85.1018, 1221.63, 7.9885, 5.10014, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 107.922, 1235.87, 9.01951, 4.03592, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 118.801, 1204.09, 6.82871, 4.92734, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 69.4749, 1135.24, 7.29608, 1.87607, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 87.6238, 1113.99, 8.21119, 5.11584, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 86.3185, 1152, 6.84614, 4.38542, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47680, 732, 1, 1, 0, 0, 129.587, 1144.03, 7.81535, 5.58315, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 142.719, 1127.41, 1.2726, 0.101054, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 104.242, 1102.57, 3.95262, 5.88158, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 102.846, 1141.47, 4.24423, 0.0460722, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 101.642, 1226.4, 4.50831, 0.0971227, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 102.434, 1187.35, 4.20731, 0.132462, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47642, 732, 1, 1, 0, 52653, 127.68, 1204.44, 3.4532, 4.84485, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, 85.6816, 1167.25, 4.31253, 3.10126, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47657, 732, 1, 1, 0, 52650, 60.4773, 1120.35, 3.73385, 3.93378, 300, 6, 0, 77490, 0, 0, 1, 0, 0, 0),
(47666, 732, 1, 1, 0, 0, 80.0552, 1196.31, 4.20059, 3.21907, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(47666, 732, 1, 1, 0, 0, 80.7304, 1192.03, 4.44934, 3.16801, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(47666, 732, 1, 1, 0, 0, 81.4017, 1186.47, 4.16492, 3.13267, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -168.958, 1046.28, 26.502, 1.20845, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -154.174, 1029.61, 25.0338, 0.909998, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -139.637, 1032.99, 28.2605, 0.972831, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -288.174, 963.52, 49.0023, 0.395562, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -283.748, 949.739, 48.8952, 0.313095, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -160.132, 959.009, 80.2408, 4.18511, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -151.864, 952.459, 79.7461, 4.09871, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47181, 732, 1, 1, 0, 0, -199.579, 995.191, 44.8141, 1.18881, 300, 0, 0, 61992, 0, 0, 0, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -244.654, 1014.86, 49.5305, 1.96242, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -233.513, 984.186, 49.8737, 5.57918, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -216.712, 964.633, 48.9616, 1.56972, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -255.896, 954.19, 48.8953, 3.43111, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -154.288, 925.939, 72.7071, 1.67181, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -122.993, 919.658, 73.2219, 3.16407, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47182, 732, 1, 1, 0, 0, -265.712, 925.151, 49.0579, 0.921758, 300, 5, 0, 77490, 0, 0, 1, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -231.798, 1003.16, 49.0666, 5.81479, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -260.697, 1002.01, 48.9999, 2.31191, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -257.871, 981.038, 48.9567, 4.41285, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -209.648, 961.884, 49.4128, 5.77551, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -223.678, 945.226, 48.98, 4.33038, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -233.939, 976.198, 49.2083, 5.77944, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -292.717, 976.4, 49.27, 1.44405, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -233.285, 921.103, 63.1643, 0.0185442, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -224.281, 919.022, 63.1533, 2.83812, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -180.583, 897.487, 76.4334, 5.86976, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47183, 732, 1, 1, 0, 52658, -147.609, 912.9, 72.6248, 4.83304, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(47304, 732, 1, 1, 0, 52660, -140.046, 972.372, 119.146, 5.56896, 300, 0, 0, 170478, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -141.202, 1042.45, 22.4446, 1.63794, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -155.766, 1055.65, 22.4863, 5.85945, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -207.666, 965.138, 49.2354, 2.90086, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -249.985, 971.067, 49.2407, 4.81723, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -280.775, 936.305, 48.8963, 0.0341532, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(46645, 732, 1, 1, 0, 0, -178.455, 907.177, 72.4795, 2.74377, 300, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -361.927, 1061.13, 21.9005, 3.50931, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -369.062, 1113.12, 22.8949, 2.82209, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -597.491, 1135.38, 98.2095, 2.15843, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -557.819, 1190.64, 92.325, 1.8639, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -522.43, 1418.91, 24.9393, 0.363791, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -463.505, 1555.26, 21.0654, 1.23558, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -382.509, 1625.56, 23.2695, 0.956767, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -348.647, 1730.98, 24.6943, 1.60472, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -189.019, 1785.2, 3.0198, 2.99095, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(1412, 732, 1, 1, 0, 1412, -126.32, 1959.92, 3.78993, 1.85997, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -90.1514, 1745.26, 28.8989, 1.82177, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -50.601, 1594.06, 27.5597, 5.01441, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 33.0368, 1646.4, 29.6605, 6.20428, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, 30.3906, 1724.2, 28.2143, 3.50644, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -35.9001, 1068.26, 15.0576, 4.97671, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -58.0417, 1178.07, 15.4071, 2.31421, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47682, 732, 1, 1, 0, 0, 14.9435, 1232.7, 15.9362, 4.50547, 300, 6, 0, 0, 0, 0, 1, 0, 0, 0),
(47682, 732, 1, 1, 0, 0, -28.09, 1293.7, 23.6359, 3.97532, 300, 6, 0, 0, 0, 0, 1, 0, 0, 0),
(47667, 732, 1, 1, 0, 47667, -48.2935, 1327.02, 22.9222, 4.30126, 300, 6, 0, 8, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -108.456, 1530.5, 12.5558, 1.00263, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -130.699, 1449.63, 22.6099, 4.05783, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -212.459, 1302.52, 23.2946, 2.12575, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0),
(47676, 732, 1, 1, 0, 0, -297.813, 1081.67, 23.5485, 4.96495, 300, 5, 0, 64496, 0, 0, 1, 0, 0, 0);

-- delete old creature_addon guid
DELETE FROM `creature_addon` WHERE `guid` IN 
(324188,324189,324192,324194,324195,324198,324200,324202,324209,324210,324425,324426,324430,324431,324432,324433,324434,324436,324437,324438,324441,324449,324880,324890,325105,325322,325323,325324,325540,325541,325542,325544,325546,325547,325548,325549,325550,325551,325552,325553,325554,325555,325556,325557,325558,325559,325560,325561,325562,325563,325564,325565,325566,325567,325568,325569,325570,325571,325572,326440,326441,326442,326443,326444,326445,326446,326447,326448,326449,326450,326451,326887,326890,326891,326894,326895,326896,326897,326903,326904,326906,326907,326908,326909,326910,326911,326912,326913,326914,326915,326916,326917,326918,326919,326920,326921,326922,326923,326924,326925,326926,326927,326928,326929,326930,326931,326932,326953,326954,326955,326956,326957,326958,326959,326960,326961,326962,326963);

DELETE FROM `creature_template_addon` WHERE `entry` IN (47328, 48252,47183,47642,47680,
47627,47659,46643,46648,48253,48355,48356,50161,50164,46825,46823,48357);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(47183, 0, 0, 0, 4097, 233, NULL),
(47642, 0, 0, 0, 4097, 379, NULL),
(47680, 0, 0, 1, 0, 0, NULL),
(47627, 0, 0, 0, 4097, 0, '1784 0'),
(47659, 0, 0, 0, 4097, 233, NULL),
(46643, 0, 0, 0, 4097, 233, NULL),
(46648, 0, 37259, 0, 4097, 0, NULL),
(48253, 0, 0, 0, 4097, 333, NULL),
(48355, 0, 0, 0, 4097, 333, NULL),
(48356, 0, 0, 0, 4097, 233, NULL),
(50161, 0, 0, 0, 4097, 469, NULL),
(50164, 0, 0, 0, 4097, 469, NULL),
(46825, 0, 0, 0, 4097, 37, NULL),
(46823, 0, 0, 0, 4097, 36, NULL),
(48357, 0, 0, 0, 4097, 233, NULL),
(47328, 0, 14338, 0, 4097, 0, NULL),
(48252, 0, 0, 0, 4097, 233, NULL);

DELETE FROM `creature_equip_template` WHERE `entry` IN (52650,52651,52652,52653,52654,52655,52656,52657,52658,52659,52660,52661,52662,52663,52664,52665,52666,52667,52668);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(52668, 2178, 30314, 0),
(52667, 18869, 0, 0),
(52666, 5580, 0, 0),
(52665, 18871, 0, 0),
(52664, 44735, 37747, 0),
(52663, 6219, 0, 0),
(52662, 5580, 0, 0),
(52661, 768, 0, 0),
(52660, 59798, 0, 0),
(52659, 3294, 0, 0),
(52658, 11608, 0, 0),
(52657, 1722, 0, 0),
(52656, 31423, 1202, 0),
(52655, 2493, 0, 0),
(52654, 14145, 14145, 0),
(52653, 6367, 0, 0),
(52652, 65173, 0, 0),
(52651, 1194, 0, 0),
(52650, 6206, 0, 0);


DELETE FROM `creature_loot_template` WHERE `item` IN (62921,62811,63047);
INSERT INTO `creature_loot_template` (`entry` ,`item` ,`ChanceOrQuestChance` ,`lootmode` ,`groupid` ,`mincountOrRef` ,`maxcount` ) VALUES 
('47130', '62921', '-50', '1', '0', '1', '3'),
('46643', '62811', '-50', '1', '0', '1', '3'),
('46630', '62811', '-50', '1', '0', '1', '3'),
('46641', '62811', '-50', '1', '0', '1', '3'),
('47642', '63047', '-50', '1', '0', '3', '5');

DELETE FROM `creature_template` WHERE `entry` IN (1412,46569,47182,46507,46508,46571,46582,46597,46605,46608,46606,46630,46641,46643,
46648,46823,46825,46960,46989,47130,47181,47183,47240,47287,47304,47447,47328,47627,47642,47659,47657,47666,47667,46570,47680,47682,48250,48251,48252,48253,48254,48255,48283,46645,
48308,48325,48355,48356,48357,48358,48360,48361,48363,48531,47676,50161,50164,51287,51288);

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1412, 0, 0, 0, 0, 0, 134, 0, 0, 0, 'Squirrel', '', NULL, 0, 1, 1, 0, 31, 31, 0, 1, 1, 1, 0, 2, 2, 0, 24, 4.6, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0.2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 1412, 0, 2, '', 12340),
(46569, 0, 0, 0, 0, 0, 137, 0, 0, 0, 'Forgotten Ghoul', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1650, 3450, 0, 17850, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 62808, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47182, 0, 0, 0, 47303, 0, 10771, 0, 0, 0, 'Overlook Spectre', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 47182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 8908, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46507, 0, 0, 0, 0, 0, 34168, 0, 0, 0, 'Darkwood Broodmother', '', '', 0, 81, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 46507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15150, 0, 2500, 3300, '', 0, 3, 116235, 1, 1, 0, 62803, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46508, 0, 0, 0, 0, 0, 26775, 0, 0, 0, 'Darkwood Lurker', '', '', 0, 81, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 46508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15150, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46571, 0, 0, 0, 0, 0, 35145, 0, 0, 0, 'First Lieutenant Connor', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1650, 3450, 0, 17850, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 154980, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46582, 0, 0, 0, 0, 0, 137, 0, 0, 0, 'Hungry Ghoul', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1650, 3450, 0, 17850, 2, 2000, 0, 1, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46597, 0, 0, 0, 0, 0, 7555, 0, 0, 0, 'Skeletal Beastmaster', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1650, 3450, 0, 17850, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52651, 0, 0, '', 1),
(46605, 0, 0, 0, 0, 0, 3494, 25053, 25042, 0, 'Shipwrecked Sailor', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52652, 0, 0, '', 1),
(46608, 0, 0, 0, 0, 0, 37179, 0, 0, 0, 'Tank', '', '', 0, 85, 85, 0, 16, 16, 0, 1, 1.14286, 1, 1, 578, 921, 0, 4550, 20, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 46608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 2, 464940, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46606, 0, 0, 0, 0, 0, 32025, 32024, 32023, 32022, 'Spiny Tidecrawler', '', '', 0, 82, 85, 3, 15, 15, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1, 1, 46606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13070, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46630, 0, 0, 0, 0, 0, 35189, 35190, 9255, 33195, 'Accursed Longshoreman', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 62811, 0, 0, 0, 0, 0, 0, 1, 52663, 0, 0, '', 1),
(46641, 0, 0, 0, 0, 0, 35189, 35190, 5005, 5003, 'Ghastly Dockhand', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 62811, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46643, 0, 0, 0, 0, 0, 0, 35190, 35302, 0, 'Accursed Shipbuilder', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 8908, 1, 0, 62811, 0, 0, 0, 0, 0, 0, 1, 52662, 0, 0, '', 1),
(46648, 0, 0, 0, 0, 0, 0, 0, 0, 35208, 'Foreman Wellson', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2048, 46648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 154980, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52657, 0, 0, '', 1),
(46823, 0, 0, 0, 0, 0, 35300, 0, 0, 0, 'Restless Infantry', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 46823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52656, 0, 0, '', 1),
(46825, 0, 0, 0, 0, 0, 35299, 0, 0, 0, 'Restless Soldier', '', '', 0, 84, 85, 0, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 46825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52655, 0, 0, '', 1),
(46960, 0, 0, 0, 0, 0, 35300, 0, 0, 0, 'Ghastly Scavenger', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 46960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 38745, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46989, 0, 0, 0, 0, 0, 34095, 34096, 0, 0, 'Crazed Soldier', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 46989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52659, 0, 0, '', 1),
(47130, 0, 0, 0, 0, 0, 3732, 0, 0, 0, 'Crazed Guard', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 8908, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47181, 0, 0, 0, 47303, 0, 146, 0, 0, 0, 'Overlook Spirit', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 47181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 61992, 19394, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47183, 0, 0, 0, 47303, 0, 19601, 0, 0, 0, 'Ghastly Worker', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 47183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52658, 0, 0, '', 1),
(47240, 0, 0, 0, 0, 0, 37256, 0, 0, 0, 'Commander Marcus Johnson', '', '', 0, 85, 85, 0, 2354, 2354, 10, 1, 1.14286, 1, 1, 1250, 2250, 0, 12250, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 387530, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52667, 0, 0, '', 1),
(47287, 0, 0, 0, 0, 0, 35515, 0, 0, 0, 'Captain P. Harris', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 47287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 154980, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52652, 0, 0, '', 1),
(47304, 0, 0, 0, 0, 0, 35527, 0, 0, 0, 'Commander Largo', '', '', 0, 83, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 47304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 170478, 8908, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52660, 0, 0, '', 1),
(47447, 0, 0, 0, 0, 0, 16366, 0, 0, 0, 'Keep Lord Farson', '', '', 0, 84, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 6, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 154980, 8908, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52657, 0, 0, '', 1),
(47328, 0, 0, 0, 0, 0, 37251, 0, 0, 0, 'Quartermaster Brazie', 'Baradin''s Wardens Quartermaster', '', 0, 85, 85, 0, 2354, 2354, 128, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47627, 0, 0, 0, 47664, 0, 35737, 0, 0, 0, 'Rustberg Bandit', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52654, 0, 0, '', 1),
(47642, 0, 0, 0, 47664, 0, 35663, 0, 0, 0, 'Rustberg Fisherman', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 63047, 0, 0, 0, 0, 0, 0, 1, 52653, 0, 0, '', 1),
(47659, 0, 0, 0, 47664, 0, 2590, 2581, 18889, 21905, 'Apprehensive Worker', '', '', 0, 82, 85, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52661, 0, 0, '', 1),
(47657, 0, 0, 0, 47664, 0, 2584, 2585, 2579, 2578, 'Suspicious Villager', '', '', 0, 85, 85, 0, 16, 16, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 47657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52650, 0, 0, '', 1),
(47666, 0, 0, 0, 0, 0, 237, 31072, 0, 23960, 'Rustberg Horse', '', '', 0, 60, 60, 3, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4979, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47667, 0, 0, 0, 0, 0, 1141, 1418, 2176, 0, 'Wharf Rat', '', '', 0, 1, 1, 0, 31, 31, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 47667, 0, 0, '', 1),
(46570, 0, 0, 0, 0, 0, 4124, 0, 0, 0, 'Putrid Worg', '', '', 0, 81, 83, 3, 16, 16, 0, 1, 1.14286, 1, 0, 1650, 3450, 0, 17850, 2, 2000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 46570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13461, 0, 2500, 3300, '', 0, 3, 53681, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47680, 0, 0, 0, 0, 0, 34160, 0, 0, 0, 'Rustberg Gull', '', '', 0, 1, 5, 3, 15, 15, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 102, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 1),
(47682, 0, 0, 0, 0, 0, 5585, 5555, 5556, 5586, 'Sassy Cat', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.01, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 1),
(48250, 0, 0, 0, 0, 0, 37268, 0, 0, 0, 'Lieutenant Farnsworth', '', '', 0, 85, 85, 0, 2354, 2354, 10, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48251, 0, 0, 0, 0, 0, 37267, 0, 0, 0, 'Kevin Geissler', 'Armorsmith', '', 0, 85, 85, 0, 2354, 2354, 4224, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48252, 0, 0, 0, 0, 0, 37247, 37248, 37249, 37250, 'Baradin Recruit', '', '', 0, 85, 85, 0, 2354, 2354, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52666, 0, 0, '', 1),
(48253, 0, 0, 0, 0, 0, 37243, 37244, 37245, 37246, 'Baradin Guard', '', '', 0, 85, 85, 0, 2354, 2354, 0, 1, 1.14286, 1, 1, 378, 921, 0, 4550, 70, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 929798, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52668, 0, 0, '', 1),
(48254, 0, 0, 0, 0, 0, 37272, 0, 0, 0, 'Sergeant Gray', '', '', 0, 85, 85, 0, 2354, 2354, 3, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48255, 0, 0, 0, 0, 0, 37252, 0, 0, 0, 'Camp Coordinator Brack', '', '', 0, 85, 85, 0, 2354, 2354, 3, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48283, 0, 0, 0, 0, 0, 3146, 0, 0, 0, 'Wellson Cannon', '', 'Gunner', 0, 28, 28, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7320, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(46645, 0, 0, 0, 0, 0, 37259, 0, 0, 0, 'Cursed Stallion', '', '', 0, 58, 60, 3, 15, 15, 0, 1, 1.14286, 1, 0, 125, 225, 0, 1225, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 46645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 4979, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48308, 0, 0, 0, 0, 0, 35732, 35733, 35734, 35735, 'Farson Hold Prisoner', '', 'Speak', 0, 85, 85, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48325, 0, 0, 0, 0, 0, 237, 31072, 0, 23960, 'Farson Horse', '', '', 0, 60, 60, 3, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4979, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48355, 0, 0, 0, 0, 0, 37262, 37263, 37264, 37265, 'Hellscream Guard', '', '', 0, 85, 85, 0, 2355, 2355, 0, 1, 1.14286, 1, 1, 578, 921, 0, 4550, 70, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 428, 590, 2500, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500, 6500, '', 0, 3, 929798, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52664, 0, 0, '', 1),
(48356, 0, 0, 0, 0, 0, 37266, 0, 0, 0, 'Karosh', 'Armorsmith', '', 0, 85, 85, 0, 2355, 2355, 4224, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52666, 0, 0, '', 1),
(48357, 0, 0, 0, 0, 0, 37257, 37258, 37260, 37261, 'Hellscream''s Reach Recruit', '', '', 0, 85, 85, 0, 2355, 2355, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52666, 0, 0, '', 1),
(48358, 0, 0, 0, 0, 0, 37255, 0, 0, 0, 'Commander Larmash', '', '', 0, 85, 85, 0, 29, 29, 2, 1, 1.14286, 1, 0, 1550, 2550, 0, 14500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48360, 0, 0, 0, 0, 0, 37242, 0, 0, 0, '3rd Officer Kronkar', '', '', 0, 85, 85, 0, 2355, 2355, 3, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48361, 0, 0, 0, 0, 0, 37271, 0, 0, 0, 'Private Sarlosk', '', '', 0, 85, 85, 0, 29, 29, 3, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(48363, 0, 0, 0, 0, 0, 37253, 0, 0, 0, 'Captain Prug', '', '', 0, 85, 85, 0, 2355, 2355, 10, 1, 1.14286, 1, 1, 1250, 2250, 0, 12250, 4, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 387530, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52665, 0, 0, '', 1),
(48531, 0, 0, 0, 0, 0, 37270, 0, 0, 0, 'Pogg', 'Hellscream''s Reach Quartermaster', '', 0, 85, 85, 0, 2355, 2355, 128, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(47676, 0, 0, 0, 0, 0, 30301, 30302, 0, 0, 'Baradin Fox', '', '', 0, 79, 84, 3, 15, 15, 0, 1, 1.14286, 1, 0, 750, 1750, 0, 8750, 2, 2000, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 1, 47676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3300, '', 0, 3, 64496, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(50161, 0, 0, 0, 0, 0, 36729, 0, 0, 0, 'Dar Rummond', 'Tol Barad Battle-Mage', '', 0, 85, 85, 0, 12, 12, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(50164, 0, 0, 0, 0, 0, 36730, 0, 0, 0, 'Tulgar Flamefist', 'Tol Barad Battle-Mage', '', 0, 85, 85, 0, 65, 65, 0, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 61992, 19394, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(51287, 0, 0, 0, 0, 0, 37254, 0, 0, 0, 'Colonel Karzag', '', '', 0, 85, 85, 0, 2355, 2355, 2, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1),
(51288, 0, 0, 0, 0, 0, 37269, 0, 0, 0, 'Major Marsden', '', '', 0, 85, 85, 0, 2354, 2354, 2, 1, 1.14286, 1, 0, 1250, 2250, 0, 12250, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 77490, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

DELETE FROM `fishing_loot_template` WHERE `entry` = 5389;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('5389', '11050', '100', '1', '1', '-11050', '1');

DELETE FROM `reference_loot_template` WHERE `entry` = 11050;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('11050', '53070', '50', '1', '1', '1', '1'),
('11050', '53069', '15', '1', '1', '1', '1'),
('11050', '52326', '10', '1', '1', '1', '3'),
('11050', '53072', '8', '1', '1', '1', '1'),
('11050', '67597', '8', '1', '1', '1', '1'),
('11050', '53071', '4', '1', '1', '1', '1'),
('11050', '52985', '4', '1', '1', '1', '2'),
('11050', '45190', '2', '1', '1', '1', '1'),
('11050', '45191', '2', '1', '1', '1', '1'),
('11050', '45194', '2', '1', '1', '1', '1'),
('11050', '45189', '2', '1', '1', '1', '1'),
('11050', '45188', '2', '1', '1', '1', '1'),
('11050', '45195', '2', '1', '1', '1', '1'),
('11050', '45196', '0.2', '1', '1', '1', '1'),
('11050', '46109', '0.02', '1', '1', '1', '1'),
('11050', '22739', '0.02', '1', '1', '1', '1');


-- delete old gameobject guid
DELETE FROM `gameobject` WHERE `guid` IN
(163644,188425,188392,188424,188384,188391,188394,188396,188397,188421,188422,188423,188449,188473,188474,188475,188476,188477,188478,188479,188480,188481,188482,188483,188484,188485,188486,188487,188488,188489,188490,188491,188492,188493,188494,188495,188496,188497,188498,188499,188500,188501,188502,188503,188504,188505,188506,188507,188508,188509,188510,188511,188512,188513,188514,188515,188516,188517,188518,188519,188520,188521,188522,188523,188524,188525,188526,188527,188528,188529,188530,188531,188532,188533,188534,188535,188536,188537,188538,188539,188540,188541,188542,188543,188544,188545,188546,188547,188548,188549,188550,188551,188552,188576,188577,188578,188579,188580,188581,188582,188583,188584,188585,188586,188587,188588,188589,188590,188591,188592,188593,188594,188595,188596,188597,188598,188599,188600,188601,188602,188603,188604,188605,188606,188607,188608,188609,188610,188611,188392,188424);

-- update old portal spawn
DELETE FROM `gameobject` WHERE `id` IN (163644,188425);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(163644, 206595, 1, 1, 1, 2031.22, -4330.87, 95.471, 0, 0, 0, 0, 1, 1, 0, 1),
(188425, 206616, 0, 1, 1, -8208.94, 451.048, 117.653, 4.8863, 0, 0, 0.643026, -0.765844, 1, 0, 1);

DELETE FROM `gameobject` WHERE `map`=732 AND `id` IN 
(1798,202747,204677,202741,1798,204638,206739,204677,177284,206586,206586,206586,206586,206586,206586,
206754,206754,206754,206754,206754,206754,206754,206754,206754,206754,206754,206754,206580,206580,206580,
206580,206580,206580,206580,206580,206580,206580,206580,206580,206580,206580,206580,206664,206664,206664,
206664,206664,206664,206664,206664,206664,206664,206664,206664,206664,206664,206583,206583,206583,206583,206583,
206583,206583,206583,206583,206583,206583,206583,206644,206644,206644,206644,206644,206644,206644,206644,206644,
206570,206570,206570,206570,206570,206570,206570,206570,206570,206570,206570,206570,202738,202741,202738,
202738,202738,202738,202738,202738,202747,202749,202749,202749,202749,202747,202747,202747,202741,202738,
202738,202738,202749,202749,202749,202749,202749,202738,202738,202738,202749,202749,202749,202749,176296,
202738,206739,202741,177284,176499,202740);

INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(1798, 732, 1, 1, -586.185, 1089.43, 97.2638, 4.05492, 0, 0, 0.897529, -0.440955, 300, 0, 1),
(202747, 732, 1, 1, -306.785, 1133.09, 21.5459, 2.14972, 0, 0, 0.879523, 0.475856, 300, 0, 1),
(204677, 732, 1, 1, -377.907, 1053.4, 21.8663, 5.6414, 0, 0, 0.315412, -0.948955, 300, 0, 1),
(202741, 732, 1, 1, -272.235, 913.569, 49.0172, 3.8501, 0, 0, 0.937905, -0.346893, 300, 0, 1),
(1798, 732, 1, 1, -564.424, 1221.93, 92.5406, 5.67012, 0, 0, 0.301754, -0.953386, 300, 0, 1),
(204638, 732, 1, 1, -602.116, 1401.65, 21.9449, 0.0812082, 0, 0, 0.0405929, 0.999176, 300, 0, 1),
(206739, 732, 1, 1, -613.317, 1377, 22.0367, 2.54463, 0, 0, 0.955784, 0.29407, 300, 0, 1),
(204677, 732, 1, 1, -609.645, 1381.22, 22.0156, 5.59197, 0, 0, 0.338767, -0.94087, 300, 0, 1),
(177284, 732, 1, 1, -328.03, 1043.42, 22.0459, 2.7837, 0, 0, 0.984032, 0.177992, 300, 0, 1),
(206586, 732, 1, 1, -285.671, 985.499, 48.8954, 2.61102, 0, 0, 0.965018, 0.262185, 300, 0, 1),
(206586, 732, 1, 1, -239.348, 1029.85, 49.1596, 1.13919, 0, 0, 0.539289, 0.842121, 300, 0, 1),
(206586, 732, 1, 1, -216.452, 949.852, 49.2884, 5.51385, 0, 0, 0.375249, -0.926924, 300, 0, 1),
(206586, 732, 1, 1, -286.507, 939.65, 48.8964, 6.20893, 0, 0, 0.0371182, -0.999311, 300, 0, 1),
(206586, 732, 1, 1, -224.472, 917.148, 63.1387, 3.08697, 0, 0, 0.999627, 0.0273079, 300, 0, 1),
(206586, 732, 1, 1, -134.81, 926.955, 72.6399, 1.60649, 0, 0, 0.719615, 0.694374, 300, 0, 1),
(206754, 732, 1, 1, 87.4795, 1236.43, 4.68147, 5.63559, 0, 0, 0.318171, -0.948033, 300, 0, 1),
(206754, 732, 1, 1, 100.203, 1222.59, 4.65133, 2.47828, 0, 0, 0.945504, 0.325609, 300, 0, 1),
(206754, 732, 1, 1, 98.209, 1185.01, 4.20266, 2.30942, 0, 0, 0.914677, 0.404186, 300, 0, 1),
(206754, 732, 1, 1, 131.821, 1219.67, 2.89462, 4.24935, 0, 0, 0.850491, -0.525989, 300, 0, 1),
(206754, 732, 1, 1, 82.5216, 1201.47, 3.77678, 2.36047, 0, 0, 0.924695, 0.38071, 300, 0, 1),
(206754, 732, 1, 1, 55.574, 1227.49, 3.89906, 4.67347, 0, 0, 0.720733, -0.693212, 300, 0, 1),
(206754, 732, 1, 1, 85.1701, 1137.69, 3.70114, 2.06594, 0, 0, 0.858825, 0.512269, 300, 0, 1),
(206754, 732, 1, 1, 101.739, 1174.22, 0.319103, 4.9405, 0, 0, 0.622038, -0.782987, 300, 0, 1),
(206754, 732, 1, 1, 101.918, 1098.94, 3.94505, 2.25443, 0, 0, 0.90322, 0.429177, 300, 0, 1),
(206754, 732, 1, 1, 102.095, 1136.58, 4.36308, 2.59608, 0, 0, 0.963032, 0.269388, 300, 0, 1),
(206754, 732, 1, 1, 137.271, 1119.77, 1.99868, 2.72567, 0, 0, 0.978454, 0.206467, 300, 0, 1),
(206754, 732, 1, 1, 84.829, 1180.75, 3.91623, 1.13916, 0, 0, 0.53928, 0.842126, 300, 0, 1),
(206580, 732, 1, 1, -71.5528, 1450.51, 3.50357, 0.034893, 0, 0, 0.0174456, 0.999848, 300, 0, 1),
(206580, 732, 1, 1, -24.9198, 1489.97, 4.6813, 0.415811, 0, 0, 0.206411, 0.978465, 300, 0, 1),
(206580, 732, 1, 1, 17.6944, 1502.25, 3.0626, 6.27488, 0, 0, 0.00415196, -0.999991, 300, 0, 1),
(206580, 732, 1, 1, 18.1164, 1542.82, 3.5127, 1.61354, 0, 0, 0.722057, 0.691833, 300, 0, 1),
(206580, 732, 1, 1, 55.4518, 1563.03, 3.84188, 0.702481, 0, 0, 0.344063, 0.938947, 300, 0, 1),
(206580, 732, 1, 1, 90.5916, 1608.78, 4.92698, 1.09911, 0, 0, 0.522307, 0.852758, 300, 0, 1),
(206580, 732, 1, 1, 109.156, 1505.71, -6.31734, 6.09816, 0, 0, 0.0923806, -0.995724, 300, 0, 1),
(206580, 732, 1, 1, 143.952, 1467.73, -9.26642, 5.34811, 0, 0, 0.450691, -0.89268, 300, 0, 1),
(206580, 732, 1, 1, 162.548, 1505.15, -10.8381, 0.698549, 0, 0, 0.342216, 0.939621, 300, 0, 1),
(206580, 732, 1, 1, 204.542, 1516.58, -10.4415, 0.329412, 0, 0, 0.163962, 0.986467, 300, 0, 1),
(206580, 732, 1, 1, 188.49, 1556.39, -11.9921, 1.66459, 0, 0, 0.739478, 0.673181, 300, 0, 1),
(206580, 732, 1, 1, 197.02, 1596.7, -12.8966, 1.73527, 0, 0, 0.762803, 0.646631, 300, 0, 1),
(206580, 732, 1, 1, 154.489, 1609.57, -9.51071, 4.08362, 0, 0, 0.891109, -0.453788, 300, 0, 1),
(206580, 732, 1, 1, 163.358, 1651.67, -9.30549, 5.58373, 0, 0, 0.342642, -0.939466, 300, 0, 1),
(206580, 732, 1, 1, 35.2348, 1460.91, -6.56164, 3.43959, 0, 0, 0.98892, -0.148449, 300, 0, 1),
(206664, 732, 1, 1, -25.2069, 1731.25, 37.4409, 0.598021, 0, 0, 0.294575, 0.955628, 300, 0, 1),
(206664, 732, 1, 1, -18.9321, 1724.82, 58.5193, 3.8967, 0, 0, 0.929569, -0.368647, 300, 0, 1),
(206664, 732, 1, 1, 19.6369, 1770.3, 58.519, 5.4832, 0, 0, 0.389413, -0.921063, 300, 0, 1),
(206664, 732, 1, 1, 62.6268, 1730.79, 58.5194, 3.88884, 0, 0, 0.931011, -0.364991, 300, 0, 1),
(206664, 732, 1, 1, 24.0616, 1691.19, 58.5202, 2.31019, 0, 0, 0.914833, 0.403833, 300, 0, 1),
(206664, 732, 1, 1, 15.4069, 1683.47, 37.4401, 0.688345, 0, 0, 0.337418, 0.941355, 300, 0, 1),
(206664, 732, 1, 1, 64.1179, 1722.71, 45.5692, 2.41623, 0, 0, 0.934948, 0.354784, 300, 0, 1),
(206664, 732, 1, 1, 53.7003, 1741.61, 46.806, 2.95029, 0, 0, 0.995429, 0.0955034, 300, 0, 1),
(206664, 732, 1, 1, 37.5275, 1760.51, 46.8066, 4.92164, 0, 0, 0.629392, -0.777088, 300, 0, 1),
(206664, 732, 1, 1, 25.664, 1760.59, 45.5711, 2.35732, 0, 0, 0.924095, 0.382164, 300, 0, 1),
(206664, 732, 1, 1, 16.6189, 1761.78, 37.437, 0.590171, 0, 0, 0.290822, 0.956777, 300, 0, 1),
(206664, 732, 1, 1, 54.0638, 1718.71, 37.4378, 0.660856, 0, 0, 0.324448, 0.945904, 300, 0, 1),
(206664, 732, 1, 1, 4.21039, 1700.31, 37.4613, 0.715837, 0, 0, 0.350325, 0.936628, 300, 0, 1),
(206664, 732, 1, 1, -10.7251, 1717.96, 37.4613, 0.660859, 0, 0, 0.324449, 0.945903, 300, 0, 1),
(206583, 732, 1, 1, -214.225, 1867.91, 2.40434, 6.2686, 0, 0, 0.00729093, -0.999973, 300, 0, 1),
(206583, 732, 1, 1, -176.661, 1891.38, 3.3713, 1.50516, 0, 0, 0.683525, 0.729927, 300, 0, 1),
(206583, 732, 1, 1, -180.435, 1947.48, 2.21394, 3.39797, 0, 0, 0.991795, -0.127839, 300, 0, 1),
(206583, 732, 1, 1, -217.475, 1918.67, 2.59968, 3.26053, 0, 0, 0.998232, -0.0594321, 300, 0, 1),
(206583, 732, 1, 1, -224.129, 1933.83, 13.3216, 1.69758, 0, 0, 0.750482, 0.660891, 300, 0, 1),
(206583, 732, 1, 1, -248.109, 1903.46, 12.7727, 2.77751, 0, 0, 0.983476, 0.181039, 300, 0, 1),
(206583, 732, 1, 1, -163.684, 1884.02, 3.16198, 4.61534, 0, 0, 0.740574, -0.671975, 300, 0, 1),
(206583, 732, 1, 1, -127.389, 1858.6, 2.90808, 4.54858, 0, 0, 0.762587, -0.646885, 300, 0, 1),
(206583, 732, 1, 1, -141.485, 1924.86, 3.33296, 1.47767, 0, 0, 0.673427, 0.739254, 300, 0, 1),
(206583, 732, 1, 1, -48.8857, 1948.73, 13.925, 5.93087, 0, 0, 0.175246, -0.984525, 300, 0, 1),
(206583, 732, 1, 1, -63.3137, 1897.15, 13.6588, 4.32081, 0, 0, 0.831159, -0.556034, 300, 0, 1),
(206583, 732, 1, 1, -113.156, 1851.24, 14.0444, 3.05632, 0, 0, 0.999091, 0.042625, 300, 0, 1),
(206644, 732, 1, 1, -359.961, 1696.97, 18.348, 4.41113, 0, 0, 0.805208, -0.592992, 300, 0, 1),
(206644, 732, 1, 1, -343.851, 1616.77, 22.6577, 5.05908, 0, 0, 0.574547, -0.818472, 300, 0, 1),
(206644, 732, 1, 1, -411.885, 1634.78, 18.3846, 2.966, 0, 0, 0.996148, 0.087685, 300, 0, 1),
(206644, 732, 1, 1, -441.587, 1565.39, 21.8411, 4.1166, 0, 0, 0.883504, -0.468423, 300, 0, 1),
(206644, 732, 1, 1, -348.507, 1602.91, 23.7537, 0.833636, 0, 0, 0.404853, 0.914382, 300, 0, 1),
(206644, 732, 1, 1, -335.692, 1614.49, 22.3209, 2.85211, 0, 0, 0.989543, 0.144237, 300, 0, 1),
(206644, 732, 1, 1, -363.376, 1680.38, 17.8545, 1.75648, 0, 0, 0.769616, 0.638507, 300, 0, 1),
(206644, 732, 1, 1, -422.263, 1641.7, 19.0164, 1.41483, 0, 0, 0.649871, 0.760044, 300, 0, 1),
(206644, 732, 1, 1, -452.068, 1561.21, 20.5568, 1.352, 0, 0, 0.625677, 0.780083, 300, 0, 1),
(206570, 732, 1, 1, -624.966, 1643.06, 47.6121, 1.53657, 0, 0, 0.694901, 0.719105, 300, 0, 1),
(206570, 732, 1, 1, -631.764, 1700.79, 54.7558, 0.668698, 0, 0, 0.328155, 0.944624, 300, 0, 1),
(206570, 732, 1, 1, -669.177, 1717.11, 50.0558, 0.0875013, 0, 0, 0.0437367, 0.999043, 300, 0, 1),
(206570, 732, 1, 1, -667.206, 1772.12, 51.576, 6.0958, 0, 0, 0.0935564, -0.995614, 300, 0, 1),
(206570, 732, 1, 1, -541.012, 1875.78, 46.8338, 6.13114, 0, 0, 0.0759491, -0.997112, 300, 0, 1),
(206570, 732, 1, 1, -461.445, 1941.23, 49.8304, 1.40304, 0, 0, 0.64538, 0.763861, 300, 0, 1),
(206570, 732, 1, 1, -412.005, 1900.9, 50.5495, 0.46842, 0, 0, 0.232075, 0.972698, 300, 0, 1),
(206570, 732, 1, 1, -480.578, 1877.51, 46.4307, 4.68993, 0, 0, 0.715001, -0.699123, 300, 0, 1),
(206570, 732, 1, 1, -484.381, 1824.32, 46.5487, 4.84701, 0, 0, 0.657945, -0.753066, 300, 0, 1),
(206570, 732, 1, 1, -535.279, 1765.76, 54.8339, 3.61786, 0, 0, 0.971779, -0.235892, 300, 0, 1),
(206570, 732, 1, 1, -509.506, 1709.28, 49.3768, 5.88766, 0, 0, 0.196474, -0.980509, 300, 0, 1),
(206570, 732, 1, 1, -559.893, 1648.1, 49.3089, 4.7724, 0, 0, 0.685576, -0.728001, 300, 0, 1),
(202738, 732, 1, 1, -538.043, 1142.57, 89.7487, 1.50003, 0, 0, 0.681651, 0.731677, 300, 0, 1),
(202741, 732, 1, 1, -537.98, 1355.8, 22.2413, 4.24108, 0, 0, 0.85266, -0.522467, 300, 0, 1),
(202738, 732, 1, 1, -503.172, 1555.11, 24.552, 2.43858, 0, 0, 0.938856, 0.34431, 300, 0, 1),
(202738, 732, 1, 1, -685.364, 1654.81, 49.9837, 2.75667, 0, 0, 0.981536, 0.191275, 300, 0, 1),
(202738, 732, 1, 1, -693.888, 1745.83, 48.2782, 2.37968, 0, 0, 0.92831, 0.371808, 300, 0, 1),
(202738, 732, 1, 1, -628.54, 1868.12, 47.5903, 2.21946, 0, 0, 0.895578, 0.444905, 300, 0, 1),
(202738, 732, 1, 1, -380.515, 1755.01, 23.7264, 2.76609, 0, 0, 0.982427, 0.186649, 300, 0, 1),
(202738, 732, 1, 1, -428.954, 1669.41, 23.5999, 3.39049, 0, 0, 0.992267, -0.124126, 300, 0, 1),
(202747, 732, 1, 1, -420.582, 1593.55, 22.7406, 3.80675, 0, 0, 0.945204, -0.32648, 300, 0, 1),
(202749, 732, 1, 1, -284.398, 1527.17, -6.76818, 4.32512, 0, 0, 0.829959, -0.557824, 300, 0, 1),
(202749, 732, 1, 1, -230.398, 1646.46, -5.34652, 1.01455, 0, 0, 0.485796, 0.874072, 300, 0, 1),
(202749, 732, 1, 1, -267.502, 1825.73, -3.87206, 2.68352, 0, 0, 0.973886, 0.227039, 300, 0, 1),
(202749, 732, 1, 1, -310.289, 1878.92, -8.08945, 5.69548, 0, 0, 0.28964, -0.957136, 300, 0, 1),
(202747, 732, 1, 1, -148.367, 1544.61, 22.8184, 3.52778, 0, 0, 0.981415, -0.191898, 300, 0, 1),
(202747, 732, 1, 1, -109.019, 1489.24, 14.1522, 0.861353, 0, 0, 0.417486, 0.908684, 300, 0, 1),
(202747, 732, 1, 1, -92.1211, 1550.22, 15.2664, 1.48182, 0, 0, 0.674959, 0.737855, 300, 0, 1),
(202741, 732, 1, 1, -100.697, 1596.4, 23.7001, 0.311573, 0, 0, 0.155157, 0.98789, 300, 0, 1),
(202738, 732, 1, 1, 0.261702, 1651.71, 27.6808, 2.11405, 0, 0, 0.870898, 0.491464, 300, 0, 1),
(202738, 732, 1, 1, 10.7405, 1474.34, 2.70361, 3.00941, 0, 0, 0.997817, 0.066044, 300, 0, 1),
(202738, 732, 1, 1, 99.8394, 1524.5, -4.15936, 1.38363, 0, 0, 0.637938, 0.770088, 300, 0, 1),
(202749, 732, 1, 1, 15.2128, 1427.32, -13.5955, 3.08794, 0, 0, 0.99964, 0.0268206, 300, 0, 1),
(202749, 732, 1, 1, 46.7435, 1412.29, -35.4844, 5.83213, 0, 0, 0.223619, -0.974677, 300, 0, 1),
(202749, 732, 1, 1, 133.062, 1597.78, -8.55035, 1.13494, 0, 0, 0.537501, 0.843263, 300, 0, 1),
(202749, 732, 1, 1, 212.725, 1591.8, -11.2872, 3.77014, 0, 0, 0.951022, -0.309124, 300, 0, 1),
(202749, 732, 1, 1, 254.235, 1538.23, -28.1686, 4.55334, 0, 0, 0.761045, -0.648699, 300, 0, 1),
(202738, 732, 1, 1, -4.46549, 1271.9, 16.1988, 1.39523, 0, 0, 0.642391, 0.766377, 300, 0, 1),
(202738, 732, 1, 1, -83.7092, 1224.69, 20.757, 2.99502, 0, 0, 0.997316, 0.0732183, 300, 0, 1),
(202738, 732, 1, 1, -117.32, 1134.75, 18.6846, 2.61075, 0, 0, 0.964981, 0.262318, 300, 0, 1),
(202749, 732, 1, 1, -144.866, 1350.42, -17.1848, 4.02065, 0, 0, 0.904953, -0.425511, 300, 0, 1),
(202749, 732, 1, 1, -246.998, 1206.45, -12.4244, 4.44546, 0, 0, 0.794911, -0.606726, 300, 0, 1),
(202749, 732, 1, 1, -283.406, 1186.78, -9.38787, 2.3299, 0, 0, 0.91877, 0.394794, 300, 0, 1),
(202749, 732, 1, 1, -447.057, 1291.31, -8.71152, 5.09407, 0, 0, 0.560144, -0.828395, 300, 0, 1),
(176296, 732, 1, 1, -344.647, 1029.42, 22.3303, 1.80081, 0, 0, 0.783579, 0.621292, 1, 0, 0),
(202738, 732, 1, 1, -178.147, 1038.14, 32.0969, 2.88014, 0, 0, 0.991467, 0.130356, 300, 0, 1),
(206739, 732, 1, 1, -373.099, 1049.15, 22.0445, 4.13344, 0, 0, 0.87953, -0.475844, 300, 0, 1),
(202741, 732, 1, 1, -174.537, 901.38, 72.5276, 4.39596, 0, 0, 0.809684, -0.586866, 300, 0, 1),
(177284, 732, 1, 1, -603.421, 1433.36, 22.05, 5.10896, 0, 0, 0.55396, -0.832544, 300, 0, 1),
(176499, 732, 1, 1, -601.529, 1375.44, 21.7101, 2.0773, 0, 0, 0.861721, 0.507383, 1, 0, 0);


DELETE FROM `gameobject_loot_template` WHERE `entry` IN (206664,206583,206644,206586,206754,206580,202741);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('206664', '62921', '-100', '1', '0', '1', '3'),
('206583', '62811', '-100', '1', '0', '1', '3'),
('206644', '62830', '-100', '1', '0', '1', '1'),
('206586', '62818', '-100', '1', '0', '1', '2'),
('206754', '63047', '-100', '1', '0', '3', '5'),
('206580', '62810', '-100', '1', '0', '1', '1'),
(202741, 52185, 100, 1, 0, 5, 12),
(202741, 52327, 20, 1, 0, 1, 2),
(202741, 52325, 20, 1, 0, 1, 2),
(202741, 52326, 20, 1, 0, 1, 2),
(202741, 52328, 20, 1, 0, 1, 2),
(202741, 52177, 1, 1, 0, 1, 1),
(202741, 52178, 1, 1, 0, 1, 1),
(202741, 52179, 1, 1, 0, 1, 1),
(202741, 52180, 1, 1, 0, 1, 1),
(202741, 52181, 1, 1, 0, 1, 1),
(202741, 52182, 1, 1, 0, 1, 1);


DELETE FROM `gameobject_template` WHERE `entry` IN (202740,206664,206583,206644,206586,206754,206580,206570,176499,176296,206595,206616);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(206664, 3, 8972, 'Rack of Rifles', '', 'Collecting', '', 0, 4, 1, 62921, 0, 0, 0, 0, 0, 93, 206664, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206583, 3, 1109, 'Shipyard Lumber', '', 'Collecting', '', 0, 4, 1, 62811, 0, 0, 0, 0, 0, 57, 206583, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206644, 3, 6868, 'Siege Scrap', '', 'Retrieving', '', 0, 4, 1, 62830, 0, 0, 0, 0, 0, 57, 206644, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206586, 3, 4177, 'Stack of Cannonballs', '', 'Retrieving', '', 0, 4, 1, 62818, 0, 0, 0, 0, 0, 1085, 206586, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206754, 3, 6705, 'String of Fish', '', 'Retrieving', '', 0, 4, 1, 63047, 0, 0, 0, 0, 0, 57, 206754, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206580, 3, 9095, 'Barrel of Southsea Rum', '', 'Retrieving', '', 0, 4, 1, 62810, 0, 0, 0, 0, 0, 57, 206580, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206570, 3, 2452, 'Forgotten Soldiers Tombstone', '', '', '', 0, 4, 1, 0, 0, 0, 0, 0, 0, 57, 206570, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206595, 22, 10105, 'Portal to Tol Barad', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 88339, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(176499, 22, 4395, 'Portal to Orgrimmar', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 17609, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(206616, 22, 10105, 'Portal to Tol Barad', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 88341, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(176296, 22, 4396, 'Portal to Stormwind', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 17334, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

DELETE FROM `spell_target_position` WHERE `id` IN (88339,17609,88341,17334);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`)
VALUES
(88339, 732, -601.4, 1382.03, 21.9, 1.5),
(17609, 1, 2032.8, -4336.7, 95.8, 1.5),
(88341, 732, -344.6, 1043.8, 21.5, 1.5),
(17334, 0, -8209.8, 454.12, 117.5, 5);

DELETE FROM `item_loot_template` WHERE `entry` IN (67495,67597);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('67495', '52328', '20', '1', '0', '1', '4'),
('67495', '52327', '20', '1', '0', '1', '2'),
('67495', '52325', '20', '1', '0', '1', '2'),
('67495', '52329', '20', '1', '0', '1', '2'),
('67495', '52326', '20', '1', '0', '1', '2'),
('67597', '53010', '40', '1', '0', '8', '20'),
('67597', '53038', '20', '1', '0', '4', '14'),
('67597', '52185', '10', '1', '0', '4', '14'),
('67597', '56516', '10', '1', '0', '3', '8'),
('67597', '58265', '10', '1', '0', '3', '6'),
('67597', '58257', '10', '1', '0', '3', '6'),
('67597', '58261', '10', '1', '0', '3', '6'),
('67597', '58263', '10', '1', '0', '3', '6'),
('67597', '58259', '10', '1', '0', '3', '6'),
('67597', '58269', '10', '1', '0', '3', '6'),
('67597', '61986', '8', '1', '0', '1', '3'),
('67597', '4600', '8', '1', '0', '1', '3'),
('67597', '2593', '8', '1', '0', '1', '3'),
('67597', '17048', '8', '1', '0', '1', '3'),
('67597', '21151', '8', '1', '0', '1', '3'),
('67597', '21114', '8', '1', '0', '1', '3'),
('67597', '20709', '8', '1', '0', '1', '3'),
('67597', '52183', '3', '1', '0', '2', '6'),
('67597', '52985', '3', '1', '0', '4', '13'),
('67597', '52983', '3', '1', '0', '4', '13'),
('67597', '52986', '3', '1', '0', '4', '11'),
('67597', '52984', '3', '1', '0', '4', '12'),
('67597', '52987', '3', '1', '0', '4', '9'),
('67597', '52988', '3', '1', '0', '4', '12'),
('67597', '52328', '2', '1', '0', '2', '3'),
('67597', '52329', '2', '1', '0', '2', '5'),
('67597', '52327', '2', '1', '0', '2', '5'),
('67597', '52325', '2', '1', '0', '2', '6'),
('67597', '52326', '2', '1', '0', '2', '3'),
('67597', '57191', '1', '1', '0', '1', '1'),
('67597', '57192', '1', '1', '0', '1', '1');

DELETE FROM `npc_vendor` WHERE `entry` IN (48531,47328,48356,48251);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(48531, 0, 62454, 0, 0, 3007),
(48531, 0, 62455, 0, 0, 3007),
(48531, 0, 62456, 0, 0, 3007),
(48531, 0, 62457, 0, 0, 3007),
(48531, 0, 62458, 0, 0, 3007),
(48531, 0, 62459, 0, 0, 3007),
(48531, 0, 62460, 0, 0, 3007),
(48531, 0, 62463, 0, 0, 3014),
(48531, 0, 62464, 0, 0, 3014),
(48531, 0, 62465, 0, 0, 3014),
(48531, 0, 62466, 0, 0, 3014),
(48531, 0, 62467, 0, 0, 3014),
(48531, 0, 63376, 0, 0, 3012),
(48531, 0, 63378, 0, 0, 3013),
(48531, 0, 63518, 0, 0, 3009),
(48531, 0, 64993, 0, 0, 3010),
(48531, 0, 64994, 0, 0, 3010),
(48531, 0, 64995, 0, 0, 3015),
(48531, 0, 64996, 0, 0, 3013),
(48531, 0, 64997, 0, 0, 3013),
(48531, 0, 64999, 0, 0, 3022),
(48531, 0, 65176, 0, 0, 3013),
(48531, 0, 65356, 0, 0, 3011),
(48531, 0, 68740, 0, 0, 3007),
(48531, 0, 68768, 0, 0, 3013),
(48531, 0, 68769, 0, 0, 3013),
(48531, 0, 68770, 0, 0, 3013),
(48531, 0, 68772, 0, 0, 3352),
(48531, 0, 68773, 0, 0, 3352),
(48531, 0, 68774, 0, 0, 3352),
(47328, 0, 62468, 0, 0, 3014),
(47328, 0, 62469, 0, 0, 3014),
(47328, 0, 62470, 0, 0, 3014),
(47328, 0, 62471, 0, 0, 3014),
(47328, 0, 62472, 0, 0, 3014),
(47328, 0, 62473, 0, 0, 3007),
(47328, 0, 62474, 0, 0, 3007),
(47328, 0, 62475, 0, 0, 3007),
(47328, 0, 62476, 0, 0, 3007),
(47328, 0, 62477, 0, 0, 3007),
(47328, 0, 62478, 0, 0, 3007),
(47328, 0, 62479, 0, 0, 3007),
(47328, 0, 63039, 0, 0, 3011),
(47328, 0, 63141, 0, 0, 3013),
(47328, 0, 63144, 0, 0, 3010),
(47328, 0, 63145, 0, 0, 3010),
(47328, 0, 63355, 0, 0, 3012),
(47328, 0, 63377, 0, 0, 3012),
(47328, 0, 63379, 0, 0, 3013),
(47328, 0, 63391, 0, 0, 3015),
(47328, 0, 63517, 0, 0, 3009),
(47328, 0, 64998, 0, 0, 3022),
(47328, 0, 65175, 0, 0, 3013),
(47328, 0, 68739, 0, 0, 3007),
(47328, 0, 68768, 0, 0, 3013),
(47328, 0, 68769, 0, 0, 3013),
(47328, 0, 68770, 0, 0, 3013),
(47328, 0, 68772, 0, 0, 3352),
(47328, 0, 68773, 0, 0, 3352),
(47328, 0, 68774, 0, 0, 3352),
(48356, 0, 2880, 0, 0, 0),
(48356, 0, 2901, 0, 0, 0),
(48356, 0, 3466, 0, 0, 0),
(48356, 0, 3857, 0, 0, 0),
(48356, 0, 5956, 0, 0, 0),
(48356, 0, 18567, 0, 0, 0),
(48251, 0, 2880, 0, 0, 0),
(48251, 0, 2901, 0, 0, 0),
(48251, 0, 3466, 0, 0, 0),
(48251, 0, 3857, 0, 0, 0),
(48251, 0, 5956, 0, 0, 0),
(48251, 0, 18567, 0, 0, 0);

DELETE FROM `skinning_loot_template` WHERE `entry` IN (46606,46508,46507,46570,47676,46607,46670);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('46606', '52976', '100', '1', '0', '1', '7'),
('46606', '52982', '57', '1', '0', '1', '7'),
('46508', '52976', '100', '1', '0', '1', '7'),
('46606', '67495', '5', '1', '0', '1', '1'),
('46507', '52976', '100', '1', '0', '1', '6'),
('46607', '67495', '5', '1', '0', '1', '1'),
('46570', '52976', '100', '1', '0', '1', '4'),
('46670', '67495', '5', '1', '0', '1', '1'),
('47676', '52976', '100', '1', '0', '1', '6'),
('47676', '67495', '5', '1', '0', '1', '1');


-- Mining veins loot fix 

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1731);
INSERT INTO `gameobject_loot_template` VALUES 
(1731, 774, 100, 1, 0, 1, 1),
(1731, 818, 100, 1, 0, 1, 1),
(1731, 1210, 100, 1, 0, 1, 1),
(1731, 2770, 100, 1, 0, 1, 3),
(1731, 2835, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1610);
INSERT INTO `gameobject_loot_template` VALUES 
(1610, 3340, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1732);
INSERT INTO `gameobject_loot_template` VALUES 
(1732, 1206, 100, 1, 0, 1, 1),
(1732, 1210, 100, 1, 0, 1, 1),
(1732, 1529, 100, 1, 0, 1, 1),
(1732, 1705, 100, 1, 0, 1, 1),
(1732, 2771, 100, 1, 0, 1, 4),
(1732, 2836, 80, 1, 0, 1, 8);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1733);
INSERT INTO `gameobject_loot_template` VALUES 
(1733, 1206, 100, 1, 0, 1, 1),
(1733, 1210, 100, 1, 0, 1, 1),
(1733, 1705, 100, 1, 0, 1, 1),
(1733, 2775, 100, 1, 0, 2, 4);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1735);
INSERT INTO `gameobject_loot_template` VALUES 
(1735, 1529, 100, 1, 0, 1, 1),
(1735, 1705, 100, 1, 0, 1, 1),
(1735, 2772, 100, 1, 0, 2, 4),
(1735, 2838, 100, 1, 0, 2, 5),
(1735, 3864, 100, 1, 0, 1, 1),
(1735, 7909, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1734);
INSERT INTO `gameobject_loot_template` VALUES 
(1734, 1529, 100, 1, 0, 1, 1),
(1734, 1705, 100, 1, 0, 1, 1),
(1734, 2776, 100, 1, 0, 2, 4),
(1734, 3864, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2040);
INSERT INTO `gameobject_loot_template` VALUES 
(2040, 3858, 100, 1, 0, 2, 4),
(2040, 3864, 100, 1, 0, 1, 1),
(2040, 7909, 100, 1, 0, 1, 1),
(2040, 7910, 100, 1, 0, 1, 1),
(2040, 7912, 100, 1, 0, 1, 8),
(2040, 9262, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2047);
INSERT INTO `gameobject_loot_template` VALUES 
(2047, 3864, 100, 1, 0, 1, 1),
(2047, 7909, 100, 1, 0, 1, 1),
(2047, 7910, 100, 1, 0, 1, 1),
(2047, 7911, 100, 1, 0, 2, 4);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=165658);
INSERT INTO `gameobject_loot_template` VALUES 
(165658, 9262, 100, 1, 0, 1, 1),
(165658, 11370, 100, 1, 0, 2, 4),
(165658, 11382, 100, 1, 0, 1, 1),
(165658, 11754, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=324);
INSERT INTO `gameobject_loot_template` VALUES 
(324, 7910, 100, 1, 0, 1, 1),
(324, 9262, 100, 1, 0, 1, 1),
(324, 10620, 100, 1, 0, 2, 3),
(324, 12361, 100, 1, 0, 1, 1),
(324, 12363, 100, 1, 0, 1, 1),
(324, 12364, 100, 1, 0, 1, 1),
(324, 12365, 100, 1, 0, 2, 5),
(324, 12799, 100, 1, 0, 1, 1),
(324, 12800, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=324);
INSERT INTO `gameobject_loot_template` VALUES 
(324, 7910, 100, 1, 0, 1, 1),
(324, 9262, 100, 1, 0, 1, 1),
(324, 10620, 100, 1, 0, 2, 3),
(324, 12361, 100, 1, 0, 1, 1),
(324, 12363, 100, 1, 0, 1, 1),
(324, 12364, 100, 1, 0, 1, 1),
(324, 12365, 100, 1, 0, 2, 5),
(324, 12799, 100, 1, 0, 1, 1),
(324, 12800, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181555);
INSERT INTO `gameobject_loot_template` VALUES 
(181555, 21929, 100, 1, 0, 1, 1),
(181555, 22573, 100, 1, 0, 1, 2),
(181555, 22574, 100, 1, 0, 1, 2),
(181555, 23077, 100, 1, 0, 1, 1),
(181555, 23079, 100, 1, 0, 1, 1),
(181555, 23107, 100, 1, 0, 1, 1),
(181555, 23112, 100, 1, 0, 1, 1),
(181555, 23117, 100, 1, 0, 1, 1),
(181555, 23424, 100, 1, 0, 2, 4),
(181555, 23427, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=185877);
INSERT INTO `gameobject_loot_template` VALUES 
(185877, 21929, 100, 1, 0, 1, 1),
(185877, 22573, 100, 1, 0, 2, 6),
(185877, 22574, 100, 1, 0, 2, 6),
(185877, 23077, 100, 1, 0, 1, 1),
(185877, 23079, 100, 1, 0, 1, 1),
(185877, 23107, 100, 1, 0, 1, 1),
(185877, 23112, 100, 1, 0, 1, 1),
(185877, 23117, 100, 1, 0, 1, 1),
(185877, 23427, 100, 1, 0, 1, 1),
(185877, 23436, 100, 1, 0, 1, 1),
(185877, 23437, 0.3, 1, 0, 1, 1),
(185877, 23438, 0.3, 1, 0, 1, 1),
(185877, 23439, 0.5, 1, 0, 1, 1),
(185877, 23440, 0.4, 1, 0, 1, 1),
(185877, 23441, 0.3, 1, 0, 1, 1),
(185877, 32464, 100, 1, 0, 2, 4),
(185877, 32506, 1.1, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181069);
INSERT INTO `gameobject_loot_template` VALUES 
(181069, 7076, 100, 1, 0, 1, 1),
(181069, 12363, 100, 1, 0, 1, 1),
(181069, 12364, 100, 1, 0, 1, 1),
(181069, 12800, 100, 1, 0, 1, 1),
(181069, 22202, 100, 1, 0, 2, 3),
(181069, 22203, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181068);
INSERT INTO `gameobject_loot_template` VALUES 
(181068, 7076, 100, 1, 0, 1, 1),
(181068, 12363, 100, 1, 0, 1, 1),
(181068, 12364, 100, 1, 0, 1, 1),
(181068, 12800, 100, 1, 0, 1, 1),
(181068, 22202, 100, 1, 0, 1, 1),
(181068, 22203, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181556);
INSERT INTO `gameobject_loot_template` VALUES 
(181556, 21929, 100, 1, 0, 1, 1),
(181556, 22573, 100, 1, 0, 4, 8),
(181556, 23077, 100, 1, 0, 1, 1),
(181556, 23079, 100, 1, 0, 1, 1),
(181556, 23107, 100, 1, 0, 1, 1),
(181556, 23112, 100, 1, 0, 1, 1),
(181556, 23117, 100, 1, 0, 1, 1),
(181556, 23425, 100, 1, 0, 2, 4),
(181556, 23427, 100, 1, 0, 1, 1),
(181556, 35229, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=189978);
INSERT INTO `gameobject_loot_template` VALUES 
(189978, 36909, 100, 1, 0, 2, 4),
(189978, 36917, 100, 1, 0, 1, 1),
(189978, 36918, 100, 1, 0, 1, 1),
(189978, 36920, 100, 1, 0, 1, 1),
(189978, 36923, 100, 1, 0, 1, 1),
(189978, 36926, 100, 1, 0, 1, 1),
(189978, 36929, 100, 1, 0, 1, 1),
(189978, 36932, 100, 1, 0, 1, 1),
(189978, 36933, 100, 1, 0, 1, 1),
(189978, 37701, 100, 1, 0, 1, 2),
(189978, 37705, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181569);
INSERT INTO `gameobject_loot_template` VALUES 
(181569, 21929, 100, 1, 0, 1, 1),
(181569, 22573, 81, 1, 0, 4, 8),
(181569, 23077, 100, 1, 0, 1, 1),
(181569, 23079, 100, 1, 0, 1, 1),
(181569, 23107, 100, 1, 0, 1, 1),
(181569, 23112, 100, 1, 0, 1, 1),
(181569, 23117, 100, 1, 0, 1, 1),
(181569, 23425, 100, 1, 0, 5, 7),
(181569, 23427, 50, 1, 0, 2, 3),
(181569, 23436, 0.4, 1, 0, 1, 1),
(181569, 23437, 0.6, 1, 0, 1, 1),
(181569, 23438, 0.4, 1, 0, 1, 1),
(181569, 23439, 0.5, 1, 0, 1, 1),
(181569, 23440, 100, 1, 0, 1, 1),
(181569, 23441, 0.5, 1, 0, 1, 1),
(181569, 35229, 100, 1, 0, 1, 4);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181557);
INSERT INTO `gameobject_loot_template` VALUES 
(181557, 21929, 100, 1, 0, 1, 1),
(181557, 22573, 100, 1, 0, 2, 5),
(181557, 22574, 100, 1, 0, 2, 5),
(181557, 23077, 6, 1, 0, 1, 1),
(181557, 23079, 6, 1, 0, 1, 1),
(181557, 23107, 6, 1, 0, 1, 1),
(181557, 23112, 6, 1, 0, 1, 1),
(181557, 23117, 6, 1, 0, 1, 1),
(181557, 23426, 100, 1, 0, 2, 4),
(181557, 23427, 100, 1, 0, 1, 3),
(181557, 23436, 100, 1, 0, 1, 1),
(181557, 23437, 100, 1, 0, 1, 1),
(181557, 23438, 2, 1, 0, 1, 1),
(181557, 23439, 2, 1, 0, 1, 1),
(181557, 23440, 100, 1, 0, 1, 1),
(181557, 23441, 100, 1, 0, 1, 1),
(181557, 35229, 100, 1, 0, 4, 5);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=189979);
INSERT INTO `gameobject_loot_template` VALUES 
(189979, 36909, 100, 1, 0, 5, 7),
(189979, 36917, 100, 1, 0, 1, 1),
(189979, 36918, 100, 1, 0, 1, 1),
(189979, 36920, 100, 1, 0, 1, 1),
(189979, 36921, 100, 1, 0, 1, 1),
(189979, 36923, 1.3, 1, 0, 1, 1),
(189979, 36924, 0.8, 1, 0, 1, 1),
(189979, 36926, 2, 1, 0, 1, 1),
(189979, 36927, 100, 1, 0, 1, 1),
(189979, 36929, 1.7, 1, 0, 1, 1),
(189979, 36930, 100, 1, 0, 1, 1),
(189979, 36932, 100, 1, 0, 1, 1),
(189979, 36933, 100, 1, 0, 1, 1),
(189979, 37701, 100, 1, 0, 1, 2),
(189979, 37705, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=189980);
INSERT INTO `gameobject_loot_template` VALUES 
(189980, 36912, 100, 1, 0, 2, 4),
(189980, 36917, 100, 1, 0, 1, 1),
(189980, 36920, 100, 1, 0, 1, 1),
(189980, 36921, 100, 1, 0, 1, 1),
(189980, 36923, 100, 1, 0, 1, 1),
(189980, 36926, 100, 1, 0, 1, 1),
(189980, 36929, 100, 1, 0, 1, 1),
(189980, 36932, 100, 1, 0, 1, 1),
(189980, 37701, 100, 1, 0, 1, 2),
(189980, 37703, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202736);
INSERT INTO `gameobject_loot_template` VALUES 
(202736, 52177, 100, 1, 0, 1, 1),
(202736, 52178, 100, 1, 0, 1, 1),
(202736, 52179, 100, 1, 0, 1, 1),
(202736, 52180, 100, 1, 0, 1, 1),
(202736, 52181, 100, 1, 0, 1, 1),
(202736, 52182, 100, 1, 0, 1, 1),
(202736, 52327, 100, 1, 0, 1, 2),
(202736, 52328, 100, 1, 0, 1, 2),
(202736, 53038, 100, 1, 0, 2, 4);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=189981);
INSERT INTO `gameobject_loot_template` VALUES 
(189981, 36912, 100, 1, 0, 5, 7),
(189981, 36917, 8, 1, 0, 1, 1),
(189981, 36918, 0.8, 1, 0, 1, 1),
(189981, 36920, 8, 1, 0, 1, 1),
(189981, 36921, 0.8, 1, 0, 1, 1),
(189981, 36923, 8, 1, 0, 1, 1),
(189981, 36924, 0.8, 1, 0, 1, 1),
(189981, 36926, 8, 1, 0, 1, 1),
(189981, 36927, 0.8, 1, 0, 1, 1),
(189981, 36929, 8, 1, 0, 1, 1),
(189981, 36930, 0.9, 1, 0, 1, 1),
(189981, 36932, 9, 1, 0, 1, 1),
(189981, 36933, 0.7, 1, 0, 1, 1),
(189981, 37701, 49, 1, 0, 2, 8),
(189981, 37703, 50, 1, 0, 2, 8);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202739);
INSERT INTO `gameobject_loot_template` VALUES 
(202739, 53038, 100, 1, 0, 5, 11),
(202739, 52327, 100, 1, 0, 1, 2),
(202739, 52328, 100, 1, 0, 1, 2),
(202739, 52179, 100, 1, 0, 1, 2),
(202739, 52177, 100, 1, 0, 1, 2),
(202739, 52181, 100, 1, 0, 1, 2),
(202739, 52182, 100, 1, 0, 1, 2),
(202739, 52180, 100, 1, 0, 1, 2),
(202739, 52178, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=191133);
INSERT INTO `gameobject_loot_template` VALUES 
(191133, 36910, 100, 1, 0, 2, 4),
(191133, 36917, 100, 1, 0, 1, 1),
(191133, 36918, 100, 1, 0, 1, 1),
(191133, 36920, 100, 1, 0, 1, 1),
(191133, 36921, 100, 1, 0, 1, 1),
(191133, 36923, 100, 1, 0, 1, 1),
(191133, 36924, 100, 1, 0, 1, 1),
(191133, 36926, 100, 1, 0, 1, 1),
(191133, 36927, 100, 1, 0, 1, 1),
(191133, 36929, 100, 1, 0, 1, 1),
(191133, 36930, 100, 1, 0, 1, 1),
(191133, 36932, 100, 1, 0, 1, 1),
(191133, 36933, 100, 1, 0, 1, 1),
(191133, 37700, 100, 1, 0, 3, 6),
(191133, 37701, 100, 1, 0, 3, 6),
(191133, 37702, 100, 1, 0, 3, 6),
(191133, 37705, 100, 1, 0, 3, 6);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202738);
INSERT INTO `gameobject_loot_template` VALUES 
(202738, 52177, 100, 1, 0, 1, 1),
(202738, 52178, 100, 1, 0, 1, 1),
(202738, 52179, 100, 1, 0, 1, 1),
(202738, 52180, 100, 1, 0, 1, 1),
(202738, 52181, 100, 1, 0, 1, 1),
(202738, 52182, 100, 1, 0, 1, 1),
(202738, 52185, 100, 1, 0, 5, 7),
(202738, 52325, 100, 1, 0, 1, 2),
(202738, 52326, 100, 1, 0, 1, 2),
(202738, 52327, 100, 1, 0, 1, 2),
(202738, 52328, 100, 1, 0, 1, 2);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202741);
INSERT INTO `gameobject_loot_template` VALUES 
(202741, 52185, 100, 1, 0, 4, 8),
(202741, 52327, 100, 1, 0, 1, 3),
(202741, 52325, 100, 1, 0, 1, 3),
(202741, 52326, 100, 1, 0, 1, 3),
(202741, 52328, 100, 1, 0, 1, 3),
(202741, 52182, 100, 1, 0, 1, 1),
(202741, 52179, 100, 1, 0, 1, 1),
(202741, 52177, 100, 1, 0, 1, 1),
(202741, 52181, 100, 1, 0, 1, 1),
(202741, 52180, 100, 1, 0, 1, 1),
(202741, 52178, 100, 1, 0, 1, 1);


-- Correct Herbs loot


DELETE FROM `gameobject_loot_template` WHERE (`entry`=1618);
INSERT INTO `gameobject_loot_template` VALUES 
(1618, 2447, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1618);
INSERT INTO `gameobject_loot_template` VALUES 
(1618, 2447, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1619);
INSERT INTO `gameobject_loot_template` VALUES 
(1619, 2449, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1620);
INSERT INTO `gameobject_loot_template` VALUES 
(1620, 785, 100, 1, 0, 1, 3),
(1620, 2452, 20, 1, 0, 1, 2),
(1620, 5056, 1.4, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1621);
INSERT INTO `gameobject_loot_template` VALUES 
(1621, 2450, 100, 1, 0, 1, 3),
(1621, 2452, 40, 1, 0, 1, 2),
(1621, 5056, 1.1, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1622);
INSERT INTO `gameobject_loot_template` VALUES 
(1622, 2453, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2045);
INSERT INTO `gameobject_loot_template` VALUES 
(2045, 3820, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1628);
INSERT INTO `gameobject_loot_template` VALUES 
(1628, 3369, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1623);
INSERT INTO `gameobject_loot_template` VALUES 
(1623, 3355, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=1624);
INSERT INTO `gameobject_loot_template` VALUES 
(1624, 3356, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2042);
INSERT INTO `gameobject_loot_template` VALUES 
(2042, 3818, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2046);
INSERT INTO `gameobject_loot_template` VALUES 
(2046, 3821, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2041);
INSERT INTO `gameobject_loot_template` VALUES 
(2041, 3357, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2043);
INSERT INTO `gameobject_loot_template` VALUES 
(2043, 3358, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2044);
INSERT INTO `gameobject_loot_template` VALUES 
(2044, 3819, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=2866);
INSERT INTO `gameobject_loot_template` VALUES 
(2866, 4625, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142140);
INSERT INTO `gameobject_loot_template` VALUES 
(142140, 8153, 100, 1, 0, 1, 1),
(142140, 8831, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142141);
INSERT INTO `gameobject_loot_template` VALUES 
(142141, 8836, 100, 1, 0, 1, 3),
(142141, 11514, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142142);
INSERT INTO `gameobject_loot_template` VALUES 
(142142, 8838, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142142);
INSERT INTO `gameobject_loot_template` VALUES 
(142142, 8838, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142143);
INSERT INTO `gameobject_loot_template` VALUES 
(142143, 8839, 100, 1, 0, 1, 3),
(142143, 24401, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142144);
INSERT INTO `gameobject_loot_template` VALUES 
(142144, 8845, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=142145);
INSERT INTO `gameobject_loot_template` VALUES 
(142145, 8846, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176583);
INSERT INTO `gameobject_loot_template` VALUES 
(176583, 13464, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176584);
INSERT INTO `gameobject_loot_template` VALUES 
(176584, 13463, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176588);
INSERT INTO `gameobject_loot_template` VALUES 
(176588, 13467, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176586);
INSERT INTO `gameobject_loot_template` VALUES 
(176586, 13465, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176587);
INSERT INTO `gameobject_loot_template` VALUES 
(176587, 13466, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=176589);
INSERT INTO `gameobject_loot_template` VALUES 
(176589, 13468, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181270);
INSERT INTO `gameobject_loot_template` VALUES 
(181270, 22575, 100, 1, 0, 1, 2),
(181270, 22785, 100, 1, 0, 1, 3),
(181270, 22794, 100, 1, 0, 1, 1),
(181270, 22795, 100, 1, 0, 1, 1),
(181270, 24401, 100, 1, 0, 1, 1),
(181270, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181271);
INSERT INTO `gameobject_loot_template` VALUES 
(181271, 22575, 100, 1, 0, 1, 3),
(181271, 22786, 100, 1, 0, 1, 3),
(181271, 22794, 100, 1, 0, 1, 1),
(181271, 24401, 100, 1, 0, 1, 1),
(181271, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181275);
INSERT INTO `gameobject_loot_template` VALUES 
(181275, 22575, 100, 1, 0, 1, 3),
(181275, 22787, 100, 1, 0, 1, 3),
(181275, 22794, 100, 1, 0, 1, 1),
(181275, 24401, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181277);
INSERT INTO `gameobject_loot_template` VALUES 
(181277, 22575, 100, 1, 0, 1, 3),
(181277, 22789, 100, 1, 0, 1, 3),
(181277, 22794, 100, 1, 0, 1, 1),
(181277, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181276);
INSERT INTO `gameobject_loot_template` VALUES 
(181276, 22788, 100, 1, 0, 1, 2),
(181276, 22794, 100, 1, 0, 1, 1),
(181276, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181278);
INSERT INTO `gameobject_loot_template` VALUES 
(181278, 22575, 100, 1, 0, 1, 3),
(181278, 22790, 100, 1, 0, 1, 3),
(181278, 22794, 100, 1, 0, 1, 1),
(181278, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=189973);
INSERT INTO `gameobject_loot_template` VALUES 
(189973, 36901, 100, 1, 0, 2, 3),
(189973, 36908, 100, 1, 0, 1, 1),
(189973, 37704, 100, 1, 0, 1, 3),
(189973, 37921, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181279);
INSERT INTO `gameobject_loot_template` VALUES 
(181279, 22576, 100, 1, 0, 1, 3),
(181279, 22791, 100, 1, 0, 1, 3),
(181279, 22794, 100, 1, 0, 1, 1),
(181279, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=185881);
INSERT INTO `gameobject_loot_template` VALUES 
(185881, 22576, 100, 1, 0, 1, 3),
(185881, 22794, 100, 1, 0, 1, 1),
(185881, 32468, 100, 1, 0, 1, 3),
(185881, 32506, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=191303);
INSERT INTO `gameobject_loot_template` VALUES 
(191303, 36908, 100, 1, 0, 1, 1),
(191303, 37704, 100, 1, 0, 1, 3),
(191303, 39970, 100, 1, 0, 2, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181280);
INSERT INTO `gameobject_loot_template` VALUES 
(181280, 22792, 100, 1, 0, 1, 3),
(181280, 22794, 100, 1, 0, 1, 1),
(181280, 32506, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=181281);
INSERT INTO `gameobject_loot_template` VALUES 
(181281, 22575, 100, 1, 0, 1, 3),
(181281, 22793, 100, 1, 0, 1, 2),
(181281, 22794, 100, 1, 0, 1, 1),
(181281, 35229, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190169);
INSERT INTO `gameobject_loot_template` VALUES 
(190169, 36904, 100, 1, 0, 2, 3),
(190169, 36908, 100, 1, 0, 1, 1),
(190169, 37704, 100, 1, 0, 1, 3),
(190169, 37921, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190170);
INSERT INTO `gameobject_loot_template` VALUES 
(190170, 36907, 100, 1, 0, 2, 3),
(190170, 36908, 100, 1, 0, 1, 1),
(190170, 37704, 100, 1, 0, 1, 3),
(190170, 37921, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=191019);
INSERT INTO `gameobject_loot_template` VALUES 
(191019, 36903, 100, 1, 0, 2, 3),
(191019, 36908, 100, 1, 0, 1, 1),
(191019, 37704, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190173);
INSERT INTO `gameobject_loot_template` VALUES 
(190173, 785, 100, 1, 0, 2, 3),
(190173, 2450, 100, 1, 0, 2, 3),
(190173, 2453, 100, 1, 0, 2, 3),
(190173, 36901, 100, 1, 0, 1, 3),
(190173, 36904, 100, 1, 0, 1, 3),
(190173, 36907, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202749);
INSERT INTO `gameobject_loot_template` VALUES 
(202749, 52329, 100, 1, 0, 1, 4),
(202749, 52985, 100, 1, 0, 2, 5),
(202749, 63122, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202747);
INSERT INTO `gameobject_loot_template` VALUES 
(202747, 52329, 100, 1, 0, 1, 3),
(202747, 52983, 100, 1, 0, 2, 4),
(202747, 63122, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190171);
INSERT INTO `gameobject_loot_template` VALUES 
(190171, 36905, 100, 1, 0, 2, 3),
(190171, 36908, 100, 1, 0, 1, 1),
(190171, 37704, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202748);
INSERT INTO `gameobject_loot_template` VALUES 
(202748, 52329, 100, 1, 0, 1, 4),
(202748, 52984, 100, 1, 0, 2, 5),
(202748, 63122, 100, 1, 0, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190172);
INSERT INTO `gameobject_loot_template` VALUES 
(190172, 36906, 100, 1, 0, 2, 3),
(190172, 36908, 100, 1, 0, 1, 1),
(190172, 37704, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=190176);
INSERT INTO `gameobject_loot_template` VALUES 
(190176, 36908, 100, 1, 0, 1, 2),
(190176, 37704, 100, 1, 0, 1, 3),
(190176, 37921, 100, 1, 0, 1, 3);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=202750);
INSERT INTO `gameobject_loot_template` VALUES 
(202750, 52329, 100, 1, 0, 1, 4),
(202750, 52986, 100, 1, 0, 2, 4),
(202750, 63122, 100, 1, 0, 1, 1);

UPDATE `quest_template` SET `EndText`='Return to Milly Osworth at Northshire Valley in Elwynn Forest.', `CompletedText`=NULL WHERE (`entry`='26391');

-- A Woodsman's Training
UPDATE quest_template SET OfferRewardText = 'You are a quick study in our ways. I look forward to continuing your training in the future. Return to me when the time is right.' WHERE entry = 26947;
-- Iverron's Antidote
UPDATE quest_template SET OfferRewardText = 'These will do perfectly. Thank you, $N. Your swiftness is appreciated.' WHERE entry = 28724;
-- Gnarlpine Corruption
UPDATE quest_template SET OfferRewardText = 'By the stars! This is quite disturbing indeed! We\'ve had troubles in the past with the corruption of the furbolgs, but such troubles should be long past since the cleansing of Teldrassil. I fear for our all people if the blessings of the aspects themselves cannot redeem our great tree.' WHERE entry = 476;
-- Mossy Tumors
UPDATE quest_template SET RequestItemsText = 'Have you been to Wellspring Lake, $N?  Have you been hunting the timberlings there? ' WHERE entry = 923;
-- The Enchanted Glade
UPDATE quest_template SET RequestItemsText = 'Their slashing talons and piercing beaks may prove a difficult match for your own abilities, $N, but I have faith that you will not fail in this task.' WHERE entry = 937;
-- Bladeleaf the Elder
UPDATE quest_template SET OfferRewardText = 'The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE entry = 8715;
-- Candy Bucket
UPDATE quest_template SET OfferRewardText = 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!' WHERE entry = 12331;
-- The Great Egg Hunt
UPDATE quest_template SET RequestItemsText = 'Do you have the fragments?', OfferRewardText = 'Excellent, excellent, thank you! I may need more of a sample to get truly conclusive results, but you\'ve done well today.' WHERE entry = 13480;
-- Spring Collectors
UPDATE quest_template SET OfferRewardText = 'Yes! Yes, I think I have just the task for you...' WHERE entry = 13484;
-- A Tisket, a Tasket, a Noblegarden Basket
UPDATE quest_template SET RequestItemsText = 'Do you have the ten Noblegarden Chocolates?', OfferRewardText = 'Well done! And here, please... keep the basket! Remember, you can always return with more Noblegarden Chocolates to trade for additional items.' WHERE entry = 13502;
-- Sharing a Bountiful Feast
UPDATE quest_template SET OfferRewardText = 'What a feast, hmmm? I\'m so glad you could celebrate the spirit of Pilgrim\'s Bounty with us.' WHERE entry = 14064;
-- The King's Cider
UPDATE quest_template SET RequestItemsText = 'Were you able to find enough Juicy Apples?', OfferRewardText = 'These will do nicely $N.  I will get to work right away on the cider.' WHERE entry = 26183;
-- Forbidden Sigil
UPDATE quest_template SET RequestItemsText = 'I\'m glad that you\'ve come, $N.', OfferRewardText = 'I will be your mentor and guide for now. It is my duty to teach you the arcane arts and how you might best fit in among our people. As you learn and grow in power, you will learn an immense variety of spells that should allow you to deal with nearly any situation. But until then, return to me as often as you like and I will teach you what I can in the ways of our kind.' WHERE entry = 26841;
-- Arcane Missiles
UPDATE quest_template SET OfferRewardText = 'I knew you would master this lesson quickly. You are a credit to the highborn and to all our kin. Remember, as you grow in power, return to me and will instruct you further.' WHERE entry = 26940;
-- A Rogue's Advantage
UPDATE quest_template SET OfferRewardText = 'You\'ve learned quickly. If you are as sharp as you seem to be, you may prove to be one of my best students yet. Return to me when you are in need of further training.' WHERE entry = 26946;
-- Rejuvenating Touch
UPDATE quest_template SET OfferRewardText = 'You have mastered the basics of the healing ways quickly, $N. I have no doubt that your healing skills will often come in handy. Return to me when you need further training.' WHERE entry = 26948;
-- Healing for the Wounded
UPDATE quest_template SET OfferRewardText = 'You will find no lack of allies in need of healing. Return to me when you need further training.' WHERE entry = 26949;
-- The Howling Oak
UPDATE quest_template SET OfferRewardText = 'This oak was grown through the aid of the druids from a seed taken back on Gilneas. It stands for all that we\'ve endured, and all that we\'ve accomplished. May it serve to remind us that our curse is also our blessing.' WHERE entry = 28517;
-- I Take Candle!
UPDATE quest_template SET OfferRewardText = 'Oh SWEET justice! Killin\' those kobolds won\'t make me walk like a normal person and it sure won\'t get me a job, but damn does it feel good. <Jimb reaches into a crusty old sack.> Here, I think I got somethin\' for you from my kobold huntin\' days. Maybe you can put it to good use.' WHERE entry = 26229;
-- Feast or Famine
UPDATE quest_template SET RequestItemsText = 'Dirt pies don\'t make themselves - usually.', OfferRewardText = 'Just smellin\' you comin\' got my stomach rumblin\'! We\'re gonna eat like kings tonight!' WHERE entry = 26230;
-- In Defense of Westfall
UPDATE quest_template SET RequestItemsText = 'Have you recovered the attack orders?', OfferRewardText = 'Helix? I\'ve heard that name before. Recently as a matter of fact, but who is this admiral?' WHERE entry = 26286;
-- The Westfall Brigade
UPDATE quest_template SET OfferRewardText = 'Well done, $N. You have provided us a temporary reprieve from the onslaught of gnolls, but there is more work to be done.' WHERE entry = 26287;
-- Jango Spothide
UPDATE quest_template SET OfferRewardText = 'Excellent work, $N. It will take the Riverpaw weeks to recover from the blow you just dealt. Please take an item of your choosing as a reward for what you have done.' WHERE entry = 26288;
-- To Moonbrook!
UPDATE quest_template SET OfferRewardText = 'The natives are restless, $N. I don\'t know what\'s going on, but homeless activity in this area has quadrupled in the past two days. If I didn\'t know any better I\'d say they were planning something...' WHERE entry = 26292;
-- Propaganda
UPDATE quest_template SET RequestItemsText = 'Any luck?', OfferRewardText = 'V? The only V I know is VanCleef, but he died many years ago.' WHERE entry = 26295;
-- The Dawning of a New Day
UPDATE quest_template SET OfferRewardText = 'I could hear the cheers from here. It seems as if we\'ve got a huge problem on our hands, $N. We have to discover the identity of this shadowy menace before we enlist the aid of Stormwind. Perhaps there is another way...' WHERE entry = 26297;
-- Secrets Revealed
UPDATE quest_template SET OfferRewardText = 'Hmm, yes, perhaps I could be of some assistance. When I was in Northrend I helped the people of Valgarde uncover some of the mysteries of the vrykul by delving into the spirit world. Perhaps the same could be done here.' WHERE entry = 26319;
-- A Vision of the Past
UPDATE quest_template SET OfferRewardText = 'WHAT? VanCleef had a daughter?' WHERE entry = 26320;
-- Rise of the Brotherhood
UPDATE quest_template SET OfferRewardText = 'I will deploy a battalion of soldiers to Westfall at once! With the Defias Brotherhood reborn, an old threat to the kingdom is renewed.' WHERE entry = 26322;
-- Return to Sentinel Hill
UPDATE quest_template SET OfferRewardText = 'Five years of work burned to the ground in five minutes. Damn the Defias! And this is only the beginning, $N! We have a long, hard road ahead of us.' WHERE entry = 26370;
-- Threat to the Kingdom
UPDATE quest_template SET OfferRewardText = 'I heard about the Defias making a return. Terrible news. I wish I had better news, but it would appear that Lakeshire is under attack! We are losing citizens left and right. Our own guards are spread far too thin to handle the situation. We need a hero to step up!' WHERE entry = 26761;
-- Find Agent Kearnen
UPDATE quest_template SET OfferRewardText = 'Helix is the one responsible for the gnoll attacks? <Kearnen nods at the tower.> He\'s inside. He\'s been there for days. I\'ve just been waiting for an excuse to bust him.' WHERE entry = 26289;
-- Secrets of the Tower
UPDATE quest_template SET OfferRewardText = 'What could possibly be going on in Moonbrook? I don\'t like this one bit, $N.' WHERE entry = 26290;
-- Big Trouble in Moonbrook
UPDATE quest_template SET OfferRewardText = 'Who IS this Shadowy Figure? We have to get to Moonbrook.' WHERE entry = 26291;
-- The Legend of Captain Grayson
UPDATE quest_template SET OfferRewardText = 'Aye... I used to be flesh and blood, just like you, lad. That is, until that fateful day when the murlocs attacked the lighthouse...' WHERE entry = 26371;
-- The Coastal Menace
UPDATE quest_template SET RequestItemsText = 'Have you laid waste to the menace known as Old Murk-Eye yet? He has been spotted roaming the coastline of Westfall. Return to me when the foul beast is dead.', OfferRewardText = 'So the foul heathen, Murk-Eye is dead. Well done, $N. By your hands one life was laid to rest but perhaps many more were saved. The Great Sea, wrought with danger as it is, shall be a wee bit safer this night thanks to your heroics.' WHERE entry = 26349;
-- Keeper of the Flame
UPDATE quest_template SET RequestItemsText = 'The flame will not burn for long without ooze, $N. We used to use oil back in the day, but it was hard to come by!', OfferRewardText = 'Praise you, brave $C. The rocks of the Westfall Coast shall be lit thanks to your hard work. Many lives will be spared so long as the torch is kept lit. I died needlessly on this very shore. My afterlife plight is to see that no others follow my destiny.' WHERE entry = 26347;
-- The Coast Isn't Clear
UPDATE quest_template SET OfferRewardText = 'Well done, $N. You have quite a knack for combat. Thanks to you the Coast of Westfall is a safer place.' WHERE entry = 26348;
-- Cluck!
UPDATE quest_template SET RequestItemsText = 'The chicken stares at you with dark, cold eyes. It waits for you hungrily.$B$B"BACAAAW!$B$BCluck...cluck...cluck." ', OfferRewardText = '"BACAW!!!"$B$BThe chicken starts to gobble up the feed you put down.$B$BAfter a moment, the chicken looks around, startled. It uncomfortably shuffles back and forth. Is this chicken pregnant? You think you better check underneath it.' WHERE entry = 3861;
-- Hot On the Trail: The Riverpaw Clan
UPDATE quest_template SET RequestItemsText = 'Find anything on the gnolls?', OfferRewardText = 'Is this supposed to be some kind of joke, because I\'m not laughing. Bits and pieces of red cloth? What the hell is this supposed to mean?' WHERE entry = 26213;
-- Hot On the Trail: Murlocs
UPDATE quest_template SET RequestItemsText = 'How goes the murloc hunt?', OfferRewardText = 'Nice find, rookie. I think I have a stack of these on my desk back at the station. We\'re basically back to square one. What do we know? Someone that likes to write fiction about the past sent the Furlbrows a letter.$B$BLooks like we got ourselves a real history... mystery.' WHERE entry = 26214;
-- Meet Two-Shoed Lou
UPDATE quest_template SET OfferRewardText = 'Look, we ain\'t got no room for no more...$B$BHoratio sent you? Right then... um, how can I help you?$B$BHe\'s not here is he? Heh, he knows I wasn\'t hidin\' from him, right? Was just tryin\' to lay low and all that, ya know?' WHERE entry = 26215;
-- Livin' the Life
UPDATE quest_template SET OfferRewardText = '<Lou puts his hands to his ears and starts talking loudly.>$B$BSTOP! STOP! STOP! I don\'t wanna hear it! I don\'t wanna know and I don\'t care! That kind of information is liable to get you killed \'round these parts.$B$BI got one more bit of information for you and then we\'re done!' WHERE entry = 26228;
-- Lou's Parting Thoughts
UPDATE quest_template SET OfferRewardText = 'We\'re dealing with an organization here, rookie. You don\'t just off the richest bum in Westfall in broad daylight and leave no witnesses. Someone with a lot of power is behind these murders. What have you learned so far?' WHERE entry = 26232;
-- Shakedown at the Saldean's
UPDATE quest_template SET OfferRewardText = 'Horatio Laine? That man is a scumbag. Dirty as my underwear.$B$BListen, friend, I don\'t often give out advice like this, but you seem like a good man. GET OUT OF WESTFALL. You\'re already in way over your head. All you\'re doing now is putting your neck on the chopping block.' WHERE entry = 26236;
-- Westfall Stew
UPDATE quest_template SET RequestItemsText = 'Food will be ready as soon as I have all of the ingredients! Hurry!', OfferRewardText = 'Bless your heart, dear. These poor orphans haven\'t had a hot meal in days.$B$BIt looks like we will have enough left over to help feed many more of the homeless of Westfall.' WHERE entry = 26241;
-- It's Alive!
UPDATE quest_template SET OfferRewardText = 'It actually worked? That\'s incredible, $N. Hopefully that takes care of the harvest golem problem here in Westfall.' WHERE entry = 26257;
-- You Have Our Thanks
UPDATE quest_template SET OfferRewardText = 'Of course, dear. Our little girl works at Sentinel Hill and is very close with the homeless of Westfall. Perhaps she has overheard something. Before you go, let me wrap up the Westfall Stew and tell you a little bit about our dear little girl.' WHERE entry = 26270;
-- Evidence Collection
UPDATE quest_template SET RequestItemsText = 'Red bandanas?!', OfferRewardText = 'I haven\'t seen a red bandana in five years. Could this shadowy figure be attempting to reform the Defias Brotherhood?' WHERE entry = 26296;
-- Captain Sanders' Hidden Treasure #1
UPDATE quest_template SET OfferRewardText = 'The footlocker slowly creaks open.  Sand and water seem to be its only contents. But wait!  A small crab scurries out with a clue to the treasure in his claws!' WHERE entry = 26353;
-- Captain Sanders' Hidden Treasure #2
UPDATE quest_template SET RequestItemsText = 'This looks like the right barrel.', OfferRewardText = 'Good work, treasure hunter!' WHERE entry = 26354;
-- Captain Sanders' Hidden Treasure #3
UPDATE quest_template SET RequestItemsText = 'There\'s a clue sticking out of the empty jug.', OfferRewardText = 'You\'re on your way to the jackpot, treasure seeker!' WHERE entry = 26355;
-- Captain Sanders' Hidden Treasure #4
UPDATE quest_template SET RequestItemsText = 'The lost treasure of Captain Sanders awaits!', OfferRewardText = 'The hinges on the old chest are rusty but they still work. You force the chest open and take the booty.$B$Congratulations!' WHERE entry = 26356;
-- Feeding the Hungry and the Hopeless
UPDATE quest_template SET OfferRewardText = 'You have a kind heart, $N. You have done a good thing, today, and that act will reflect back upon you when judgment day comes.' WHERE entry = 26271;


delete from `quest_template` where `entry` = 26285;
insert into `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) values
('26285','2','801','0','2','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','26316','26318','-26285','0','5','0','0','0','Get Me Explosives Back!','It\'s gonna take a lot of powder ta collapse those caves. I don\'t know whether th\' damnable troggs understood that when they stole me supplies and kidnapped me demolitionists! But th\' outcome\'s th\' same.$B$BAin\'t gonna be able ta blow nothin\' up until I\'ve got that powder back.$B$BGo south to Frostmane Hold and kill any o\' those troggs you find. Any one o\' \'em could be carryin\' me kegs o\' powder.','Recover 7 Stolen Powder Kegs from Rockjaw Bonepickers or Rockjaw Marauders at Frostmane Hold.',NULL,NULL,'Return to Jessup McCree at Frostmane Hold.',NULL,NULL,NULL,NULL,NULL,'58202','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','47','54','0','0','0','5','5','0','0','0','0','0','0','0','0','0','0','0','50','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'0','0','890','878','0','0','0','1');

UPDATE `quest_template` SET `PrevQuestId`='26205', `NextQuestId`='0' WHERE (`entry`='26316');

UPDATE `quest_template` SET `StartScript`='26205' WHERE (`entry`='26205');
delete from `conditions` where `SourceEntry` = 79416;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES ('13', '79416', '18', '1', '42563', 'Toxic pool');
delete from `quest_start_scripts` where id = 26205;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('26205', '1', '15', '79419', '2');
UPDATE `creature_template` SET `ScriptName`='npc_GS9x' WHERE (`entry`='42598');

REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423173','We were forced to retreat. Thermaplugg continues to hide behind the radiation, sending his crony, Crushcog, to harass us here on the surface.','0','0','0','High Tinker Mekkatorque #3');

UPDATE `creature_template` SET `ScriptName`='npc_MekkaTorque' WHERE entry = 42849;
UPDATE `creature_template` SET `minlevel`='5' WHERE (`entry`='42353');
DELETE FROM `creature` WHERE id IN(42852, 42353);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('42852', '0', '1', '1', '-5310.404', '151.710', '390.072', '5.68', '60', '420', '0', '0', '0'),
('42353', '0', '1', '1', '-5380.370', '299.775', '393.551', '0.51', '60', '102', '0', '0', '0');


UPDATE `creature_template` SET `dynamicflags`='8' WHERE (`entry`='44171');
UPDATE `quest_template` SET `QuestFlags`='524288' WHERE (`entry`='26205');
DELETE FROM `creature_questrelation` WHERE (`id`='42563');
UPDATE `quest_template` SET `QuestFlags`= QuestFlags | 262144 WHERE entry IN(26197, 26199, 26202, 26203, 26206);
UPDATE `creature_template` SET `VehicleId`='1186' WHERE (`entry`='46449');
UPDATE `creature_template` SET `VehicleId`='1160' WHERE (`entry`='46012');
UPDATE `creature_template` SET `VehicleId`='1172' WHERE (`entry`='46185');



