ALTER TABLE `world_db_version` CHANGE  `required_184_Some_NPCs_spawn_fixes` `required_187_quest_13547`  BIT(1);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10278,10272,10277,10279);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('10272', '0', '0', 'Coax Thundris Windweaver''s spirit.', '1', '1', '0', '0', '0', '0', '0', NULL),
('10278', '0', '0', 'Coax Taldan''s corpse to give up its spirit.', '1', '1', '0', '0', '0', '0', '0', NULL),
('10277', '0', '0', 'Coax the spirit out of Sentinel Elissa Starbreeze''s corpse.', '1', '1', '0', '0', '0', '0', '0', NULL),
('10279', '0', '0', 'Coax the spirit out of Caylais Moonfeather''s still corpse.', '1', '1', '0', '0', '0', '0', '0', NULL);

DELETE FROM `npc_text` WHERE `ID` in (14264,14275,14274,14276);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES 
(14264, 'Thundris Windweaver''s corpse lays sprawled out here, the apparent victim of the Twilight''s Hammer''s machinations.', '',0,1,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0),
(14275, 'Here''s where Taldan served his last drink.', '',0,1,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0),
(14274, 'The sentinel''s body rests here, the apparent victim of the elemental onslaught that has overtaken the town.', '',0,1,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0),
(14276, 'Far too powerful for these elementals, Caylais and her hippogryphs must have been struck down by something else.', '',0,1,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0);

DELETE FROM `gossip_menu` WHERE `entry` IN (10278,10272,10277,10279);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
('10272', '14264'),
('10278', '14275'),
('10277', '14274'),
('10279', '14276');

UPDATE `creature_template` SET `gossip_menu_id`='10272',`npcflag` = '1',`AIName` = 'SmartAI' WHERE `entry`='33001';
UPDATE `creature_template` SET `gossip_menu_id`='10278',`npcflag` = '1',`AIName` = 'SmartAI' WHERE `entry`='33035';
UPDATE `creature_template` SET `gossip_menu_id`='10277',`npcflag` = '1',`AIName` = 'SmartAI' WHERE `entry`='33033';
UPDATE `creature_template` SET `gossip_menu_id`='10279',`npcflag` = '1',`AIName` = 'SmartAI' WHERE `entry`='33037';
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`='6887';

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=33001;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33001,0,0,0,62,0,100,0,10272,0,0,0,85,62094,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Thundris Windweaver - On gossip option select - Cast Coaxing the Spirits: Thundris Windweaver''s spirit 1'),
(33001,0,1,0,62,0,100,0,10272,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thundris Windweaver - On gossip option select - Close gossip window');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=33035;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33035,0,0,0,62,0,100,0,10278,0,0,0,85,62153,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Taldan - On gossip option select - Cast Coaxing the Spirits: Taldan''s spirit 1'),
(33035,0,1,0,62,0,100,0,10278,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taldan - On gossip option select - Close gossip window');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=33037;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33037,0,0,0,62,0,100,0,10279,0,0,0,85,62156,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Caylais Moonfeather  - On gossip option select - Cast Coaxing the Spirits: Caylais Moonfeather''s spirit 1'),
(33037,0,1,0,62,0,100,0,10279,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Caylais Moonfeather  - On gossip option select - Close gossip window');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=33033;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33033,0,0,0,62,0,100,0,10277,0,0,0,85,62150,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Sentinel Elissa Starbreeze - On gossip option select - Cast Coaxing the Spirits: Sentinel Elissa Starbreeze''s spirit 1'),
(33033,0,1,0,62,0,100,0,10277,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Sentinel Elissa Starbreeze - On gossip option select - Close gossip window');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (10278,10272,10277,10279);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10272,0,0,9,13547,0,0,0,'','Show gossip 10272 if player has Quest 13547'),
(15,10278,0,0,9,13547,0,0,0,'','Show gossip 10278 if player has Quest 13547'),
(15,10277,0,0,9,13547,0,0,0,'','Show gossip 10277 if player has Quest 13547'),
(15,10279,0,0,9,13547,0,0,0,'','Show gossip 10279 if player has Quest 13547');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=6887;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(6887,0,0,0,20,0,100,0,13547,0,0,0,41,0,0,0,0,0,0,19,33038,10,0,0,0,0,0, 'Yalda - On quest complete - Despawn sprits'),
(6887,0,1,0,20,0,100,0,13547,0,0,0,41,0,0,0,0,0,0,19,33034,10,0,0,0,0,0, 'Yalda - On quest complete - Despawn sprits'),
(6887,0,2,0,20,0,100,0,13547,0,0,0,41,0,0,0,0,0,0,19,33036,10,0,0,0,0,0, 'Yalda - On quest complete - Despawn sprits'),
(6887,0,3,0,20,0,100,0,13547,0,0,0,41,0,0,0,0,0,0,19,33002,10,0,0,0,0,0, 'Yalda - On quest complete - Despawn sprits');


DELETE FROM `creature` WHERE `id` IN (33001,33035,33033,33037);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL,33001,1,1,1,0,0,6545.417,476.1719,5.202001,3.385939,120,0,0,1,0,0,0,0,0),
(NULL,33035,1,1,1,0,0,6417.681,525.25,24.14691,4.817109,120,0,0,1,0,0,0,0,0),
(NULL,33033,1,1,1,0,0,6438.566,368.0104,3.133064,2.199115,120,0,0,1,0,0,0,0,0),
(NULL,33037,1,1,1,0,0,6328.09,552.9063,13.73173,3.106686,120,0,0,1,0,0,0,0,0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (33001,33035,33033,33037); 
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(33001,0,0,7,0,65, NULL),
(33035,0,0,7,0,65, NULL),
(33033,0,0,7,0,65, NULL),
(33037,0,0,7,0,65, NULL);