ALTER TABLE `world_db_version` CHANGE  `required_72_Northern_Barrens_part2` `required_74_wolves_and_quest_protecing_our_own`  BIT(1);

-- DELETE --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2958,2960,20748,21956) AND `source_type` = 0;

-- Update templates for wolves --
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry IN (2958,2960,20748,21956);
UPDATE `creature_template_addon` SET `bytes2` = '0', `auras` = '18950 0' WHERE `entry` = 20748;
UPDATE `creature_template_addon` SET `bytes1` = '0',`bytes2` = '0' WHERE `entry` = 21956;

-- Thunderlord Dire Wolf (ID: 20748) --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20748,0,0,0,8,0,100,0,32578,0,0,0,33,21142,0,0,0,0,0,7,0,0,0,0,0,0,0,"Thunderlord Dire Wolf - Protecting Our Own - Player gets credit when use Gor'drek's Ointment (ID: 30175)"),
(20748,0,1,0,0,0,100,0,1000,10000,50000,50000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thunderlord Dire Wolf - Threatening Growl");

-- Prairie Wolf (ID: 2958) --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2958,0,0,0,0,0,100,0,1000,10000,50000,50000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,"Prairie Wolf - Threatening Growl");

-- Prairie Wolf Alpha (ID: 2960) --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2960,0,0,0,0,0,100,0,1000,10000,50000,50000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,"Prairie Wolf Alpha - Threatening Growl"),
(2960,0,1,0,9,0,100,1,5,45,0,0,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,"Prairie Wolf Alpha - Leaping Rush");

-- Rema <The Den Mother> (ID: 21956) --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21956,0,0,0,0,0,100,0,1000,10000,50000,50000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rema - Threatening Growl"),
(21956,0,1,0,0,0,100,0,6000,8000,25000,25000,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rema - Rend"),
(21956,0,2,0,2,0,100,1,25,25,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rema - Enrage"),
(21956,0,3,0,0,0,100,1,1,1,0,0,90,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rema - Remove Bytes1 on agrro"),
(21956,0,4,0,25,0,100,0,0,0,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rema - Add Bytes1 on reset");
