ALTER TABLE `world_db_version` CHANGE  `required_29_undead_the_wakening` `required_30_undead_the_truth_of_the_grave`  BIT(1);
-- DELETE --
DELETE FROM `gossip_menu` WHERE `entry` = 11132;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 11132;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` = 38910; 
DELETE FROM `creature_text` WHERE `entry` = 38910;
DELETE FROM `waypoints` WHERE `entry` IN (38910,3891001); 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` = 11132;
DELETE FROM `npc_text` WHERE `ID` = 15486;
DELETE FROM `creature_template_addon` WHERE `entry` = 38910;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3891000,3891001) AND `source_type` = 9;

-- Modify phaseMask for Lilian --
UPDATE `creature` SET `phaseMask` = '3' WHERE `id` = 38910;

-- NPC texts --
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES 
('15486', 'Get away from me, you monster!  Don''t look at me! I''m hideous!', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- Gossip menu options --
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('11132', '0', '0', ' You''re not hideous, Lilian... you''re one of us.  Here, look in this mirror, see for yourself.', '1', '1', '0', '0', '0', '0', '0', NULL);

-- Gossip menus --
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
('11132', '15486');

-- Creature text --
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(38910,0,0,'You don''t understand... I CAN''T be undead!  Not me, not now...',0,0,100,0,0,0,'Lilian Voss');

-- Add flag for gossip, gossip menu and SmartAI to template -- 
UPDATE `creature_template` SET `npcflag` = '1', `gossip_menu_id`='11132', `AIName` = 'SmartAI' WHERE `entry` = '38910';

-- Add Addon for Lilian --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(38910, 0, 0, 0, 1, 431, '');

-- Lilian's Waypoints --
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES 
('38910', '0', '1860.484', '1556.037', '94.791', NULL),
('38910', '1', '1860.468', '1557.048', '94.787', NULL),
('38910', '2', '1861.4', '1563.72', '94.31', NULL),
('38910', '3', '1863.36', '1568.286', '94.313', NULL),
('38910', '4', '1871.157', '1568.9', '94.313', NULL),
('38910', '5', '1875.512', '1573.932', '94.313', NULL),
('38910', '6', '1873.315', '1574.876', '94.538', NULL),
('38910', '7', '1865.578', '1575.323', '99.05', NULL),
('38910', '8', '1854.834', '1555.553', '99.078', NULL),
('3891001', '9', '1856.655', '1556.028', '94.792', NULL),
('3891001', '8', '1860.484', '1556.037', '94.791', NULL),
('3891001', '7', '1860.468', '1557.048', '94.787', NULL),
('3891001', '6', '1861.4', '1563.72', '94.31', NULL),
('3891001', '5', '1863.36', '1568.286', '94.313', NULL),
('3891001', '4', '1871.157', '1568.9', '94.313', NULL),
('3891001', '3', '1875.512', '1573.932', '94.313', NULL),
('3891001', '2', '1873.315', '1574.876', '94.538', NULL),
('3891001', '1', '1865.578', '1575.323', '99.05', NULL),
('3891001', '0', '1854.834', '1555.553', '99.078', NULL);

-- SmartAI for Lilian Voss --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38910, 0, 1, 0, 62, 0, 100, 0, 11132, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - face2face with player'),
(38910, 0, 2, 0, 62, 0, 100, 0, 11132, 0, 0, 0, 11, 73210, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - force player to cast Show Mirror'),
(38910, 0, 3, 0, 62, 0, 100, 0, 11132, 0, 0, 0, 1, 0, 2000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - say'),
(38910, 0, 4, 0, 62, 1, 100, 0, 11132, 0, 0, 0, 80, 3891000, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Call Action List (Phase 1)'),
(38910, 0, 5, 0, 62, 2, 100, 0, 11132, 0, 0, 0, 80, 3891001, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Call Action List (Phase 2)'),
(38910, 0, 6, 0, 62, 0, 100, 0, 11132, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - close gossip'),
(38910, 0, 7, 0, 25, 0, 100, 0, 8, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Set phase 1');

-- Lilian Voss - Action lists --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3891000, 9, 2, 0, 0, 1, 100, 0, 3999, 3999, 0, 0, 33, 38910, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Complete Q'),
(3891000, 9, 3, 0, 0, 1, 100, 0, 1, 1, 0, 0, 53, 1, 38910, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Move (Phase 1)'),
(3891000, 9, 5, 0, 0, 2, 100, 0, 1, 1, 0, 0, 5, 430, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - cower'),
(3891000, 9, 0, 0, 0, 1, 100, 0, 50, 50, 0, 0, 5, 18, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - cry'),
(3891000, 9, 1, 0, 0, 1, 100, 0, 950, 950, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - remove cry, only stay'),
(3891000, 9, 4, 0, 0, 1, 100, 0, 9999, 9999, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,"Lilian Voss - Set phase 2"),
(3891001, 9, 2, 0, 0, 2, 100, 0, 3999, 3999, 0, 0, 33, 38910, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Complete Q'),
(3891001, 9, 3, 0, 0, 2, 100, 0, 1, 1, 0, 0, 53, 1, 3891001, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Move (Phase 2)'),
(3891001, 9, 5, 0, 0, 1, 100, 0, 1, 1, 0, 0, 5, 430, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - cower'),
(3891001, 9, 0, 0, 0, 2, 100, 0, 50, 50, 0, 0, 5, 18, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - cry'),
(3891001, 9, 1, 0, 0, 2, 100, 0, 950, 950, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - remove cry, only stay'),
(3891001, 9, 4, 0, 0, 2, 100, 0, 9999, 9999, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,"Lilian Voss - Set phase 1");

-- Conditions for quest --
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,11132,0,0,9,24961,0,0,0,'','Show gossip 11132 if player has Quest 24961');