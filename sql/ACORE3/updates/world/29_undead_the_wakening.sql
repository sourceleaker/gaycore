ALTER TABLE `world_db_version` CHANGE  `required_28_undead_recruitment` `required_29_undead_the_wakening`  BIT(1);
-- DELETE --
DELETE FROM `creature_template_addon` WHERE `entry` IN(38895,49231);
DELETE FROM `gossip_menu` WHERE `entry` IN (12483,12484,12485,12486,12487,12488,12489);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12483,12484,12485,12486,12487,12488,12489);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (38895,49230,49231); 
DELETE FROM `creature_text` WHERE `entry` IN (38895,49230,49231);
DELETE FROM `waypoints` WHERE `entry` IN (38895,49230,49231); 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (12483,12485,12487);
DELETE FROM `npc_text` WHERE `ID` IN (17564,17565,17566,17567,17569,17570,17571);

-- NPC texts --
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES 
('17564', 'Get away from me, you abomination!', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17565', 'The undead are a taint upon Azeroth!  Every one of you creatures deserves to be destroyed!', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17566', 'Stand back, monster.  You want to fight?  Because I''ll fight you.$b$bI''ll fight any one of you creatures!  Do you hear me?', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17567', 'Oh really?$b$bFine.  I don''t want to join you and your Forsaken.  Maybe I''ll start my own Forsaken!  Maybe I''ll invent Forsaken with elbows!', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17569', 'What... what''s going on?  Who are you?  What happened to me?', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17570', 'I... died?$b$bYes, you''re right.  I died.  It was an orc... he cut off my hands, and left me to die.$b$b<Valdred looks down at his hands.>$b$bThese aren''t my hands!  THESE AREN''T MY HANDS!', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('17571', '<Valdred looks back down at his hands.>$b$bI suppose this is my fate then.  Hah!  Part of an undead army.  Somehow I never considered that I might end up fighting for the Forsaken.$b$b<He looks back up at you.>$b$bWhat do I do now?', NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- Gossip menu options --
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('12483', '0', '0', 'I''m not an abomination, I''m simply undead.  I just want to speak with you.', '1', '1', '12484', '0', '0', '0', '0', NULL),
('12484', '0', '0', 'Lilian, do you realize that you are undead yourself?', '1', '1', '0', '0', '0', '0', '0', NULL),
('12485', '0', '0', 'I''m not here to fight.  I''ve only been asked to speak with you.', '1', '1', '12486', '0', '0', '0', '0', NULL),
('12486', '0', '0', 'You are free to do whatever you like.', '1', '1', '0', '0', '0', '0', '0', NULL),
('12487', '0', '0', 'Don''t you remember?  You died.', '1', '1', '12488', '0', '0', '0', '0', NULL),
('12488', '0', '0', 'Calm down, Valdred.  Undertaker Mordo probably sewed some new ones on for you.', '1', '1', '12489', '0', '0', '0', '0', NULL),
('12489', '0', '0', 'You talk to Undertaker Mordo.  He''ll tell you what to do.  That''s all I know.', '1', '1', '0', '0', '0', '0', '0', NULL);

-- Gossip menus --
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
('12483', '17564'),
('12484', '17565'),
('12485', '17566'),
('12486', '17567'),
('12487', '17569'),
('12488', '17570'),
('12489', '17571');

-- Creature text --
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(38895,0,0,'No. You''re lying! My father will protect me!',0,0,100,0,0,0,'Lilian Voss'),
(49230,0,0,'Who are you calling a monster? You''re the monster! I''m just a man who died.',0,0,100,0,0,0,'Marshal Redpath'),
(49231,0,0,'I see.  Well then, let''s get to work, $N!  The Dark Lady needs us, right?',0,0,100,0,0,0,'Valdred Moray'),
(49231,1,0,'Valdred Moray, reporting for duty, sir!',1,0,100,0,0,0,'Valdred Moray');

-- Add flag for gossip to templates -- 
UPDATE `creature_template` SET `npcflag` = '1' WHERE `entry` IN (38895,49230,49231);

-- Add Gossip Menus to templates --
UPDATE `creature_template` SET `gossip_menu_id`='12483' WHERE `entry`='38895';
UPDATE `creature_template` SET `gossip_menu_id`='12485' WHERE `entry`='49230';
UPDATE `creature_template` SET `gossip_menu_id`='12487' WHERE `entry`='49231';

-- Add SmartAI to templates --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (38895,49230,49231);

-- Creature_addon for Lilian --
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(38895,0,0,0,0,430, NULL);

-- Lilian's Waypoints --
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES 
(38895,1,1755.921,1659.017,120.6689, 'Lilian Voss'), 
(38895,2,1756.421,1656.517,120.4189, 'Lilian Voss'),
(38895,3,1757.421,1652.767,119.9189, 'Lilian Voss'),
(38895,4,1758.421,1650.017,119.1689, 'Lilian Voss'),
(38895,5,1758.921,1648.267,118.4189, 'Lilian Voss'), 
(38895,6,1759.671,1645.267,117.6689, 'Lilian Voss'),
(38895,7,1760.421,1642.517,116.6689, 'Lilian Voss'),
(38895,8,1761.736,1639.446,115.6866, 'Lilian Voss'),
(38895,9,1762.486,1636.696,115.1866, 'Lilian Voss'),
(38895,10,1763.236,1634.696,114.6866, 'Lilian Voss'), 
(38895,11,1763.486,1633.196,114.1866, 'Lilian Voss'),
(38895,12,1764.736,1629.196,113.4366, 'Lilian Voss'),
(38895,13,1766.486,1624.446,112.6866, 'Lilian Voss'),
(38895,14,1767.736,1620.696,112.1866, 'Lilian Voss'),
(38895,15,1768.93,1616.923,111.3774, 'Lilian Voss'),
(38895,16,1768.93,1612.673,111.1274, 'Lilian Voss'), 
(38895,17,1770.68,1610.423,110.8774, 'Lilian Voss'),
(38895,18,1771.43,1609.673,110.6274, 'Lilian Voss'),
(38895,19,1771.43,1608.673,110.3774, 'Lilian Voss'),
(38895,20,1772.68,1604.923,109.6274, 'Lilian Voss'),
(38895,21,1773.125,1604.462,109.2956, 'Lilian Voss'),
(38895,22,1773.125,1604.212,109.0456, 'Lilian Voss'),
(38895,23,1774.875,1603.462,108.545, 'Lilian Voss'), 
(38895,24,1776.375,1602.212,107.7956, 'Lilian Voss'),
(38895,25,1777.875,1601.212,107.5456, 'Lilian Voss'),
(38895,26,1779.625,1599.962,106.7956, 'Lilian Voss'),
(38895,27,1782.875,1597.712,106.0456, 'Lilian Voss'),
(38895,28,1784.375,1596.712,105.2956, 'Lilian Voss'),
(38895,29,1786.582,1595.133,104.9284, 'Lilian Voss'),
(38895,30,1788.582,1594.883,104.4284, 'Lilian Voss'),
(38895,31,1790.332,1594.633,103.6784, 'Lilian Voss'),
(38895,32,1792.332,1594.133,103.1784, 'Lilian Voss'), 
(38895,33,1800.832,1592.383,101.1784, 'Lilian Voss'),
(38895,34,1803.832,1591.633,100.4284, 'Lilian Voss'),
(38895,35,1809.684,1590.821,98.57932, 'Lilian Voss'), 
(38895,36,1811.684,1590.571,98.07932, 'Lilian Voss'),
(38895,37,1814.056,1589.987,97.25102, 'Lilian Voss'),
(38895,38,1817.056,1589.737,96.50102, 'Lilian Voss'),
(38895,39,1819.806,1589.737,96.25102, 'Lilian Voss'), 
(38895,40,1822.806,1589.487,95.75102, 'Lilian Voss'),
(38895,41,1826.556,1589.487,95.25102, 'Lilian Voss'),
(38895,42,1831.556,1589.237,94.50102, 'Lilian Voss'),
(38895,43,1839.556,1588.987,94.00102, 'Lilian Voss'),
(38895,44,1839.928,1588.752,93.70377, 'Lilian Voss'),
(38895,45,1842.428,1588.752,93.70377, 'Lilian Voss'),
(38895,46,1853.776,1587.708,93.47552, 'Lilian Voss'),
(38895,47,1856.276,1583.458,93.47552, 'Lilian Voss'),
(38895,48,1858.526,1579.958,93.72552, 'Lilian Voss'), 
(38895,49,1859.955,1580.718,93.75114, 'Lilian Voss'),
(38895,50,1860.455,1579.218,93.75114, 'Lilian Voss');

-- Marshal's Waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
('49230', '0', '1757.81', '1637.5', '116.85', 'Marshal Redpath'), 
('49230', '1', '1755.25', '1629', '115.69', 'Marshal Redpath'), 
('49230', '2', '1759.38', '1608.16', '111.3', 'Marshal Redpath'),
('49230', '3', '1760.16', '1592.16', '111.15', 'Marshal Redpath'), 
('49230', '4', '1757.78', '1580.365', '111.5', 'Marshal Redpath'), 
('49230', '5', '1753.186', '1566.95', '113.21', 'Marshal Redpath'), 
('49230', '6', '1751.04', '1562.7', '113.83', 'Marshal Redpath'), 
('49230', '7', '1750.53', '1549.83', '114.05', 'Marshal Redpath'),
('49230', '8', '1750.545', '1544.2', '113.82', 'Marshal Redpath'), 
('49230', '9', '1762.7', '1538.8', '114.32', 'Marshal Redpath'),
('49230', '10', '1767.036', '1536.6', '114.13', 'Marshal Redpath'), 
('49230', '11', '1773.47', '1528.65', '111.796', 'Marshal Redpath'),
('49230', '12', '1775.741', '1525.737', '110.6826', 'Marshal Redpath'),
('49230', '13', '1773.377', '1506.211', '107.487', 'Marshal Redpath'), 
('49230', '14', '1778.32', '1489.649', '106.335', 'Marshal Redpath'), 
('49230', '15', '1776.87', '1461.18', '101.34', 'Marshal Redpath');

-- Valdred's Waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
('49231', '0', '1739.913', '1704.02', '128.66', 'Valdred Moray'), 
('49231', '1', '1739.036', '1701.156', '127.72', 'Valdred Moray'), 
('49231', '2', '1730.537', '1697.55', '127.548', 'Valdred Moray'), 
('49231', '3', '1721', '1692.4', '131.4', 'Valdred Moray'), 
('49231', '4', '1692.154', '1676.165', '135.123', 'Valdred Moray');

-- SmartAI for Lilian Voss --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38895,0,0,0,62,0,100,0,12484,0,0,0,33,38895,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Lilian Voss - On gossip option select - Give quest credit'),
(38895,0,1,0,62,0,100,0,12484,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Lilian Voss - On gossip option select - Start script'),
(38895,0,2,0,62,0,100,0,12484,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lilian Voss - script - Turn off gossip flag'),
(38895,0,3,0,62,0,100,0,12484,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lilian Voss - script - say text'),
(38895,0,4,0,62,0,100,0,12484,0,0,0,53,1,38895,0,0,0,0,1,0,0,0,0,0,0,0, 'Lilian Voss - script - start waypoint'),
(38895,0,5,0,40,0,100,0,50,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lilian Voss - script - on reach waypoint despawn'),
(38895,0,6,0,62,0,100,0,12484,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0.0,0,0,0,'Lilian Voss - script- face2face with player'),
(38895,0,7,0,62,0,100,0,12484,0,0,0,54,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lilian Voss - script - pause at first waypoint');

-- SmartAI for Marshal Redpath --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(49230,0,0,0,62,0,100,0,12486,0,0,0,33,49230,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Marshal Redpath - On gossip option select - Give quest credit'),
(49230,0,1,0,62,0,100,0,12486,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Marshal Redpath - On gossip option select - Start script'),
(49230,0,2,0,62,0,100,0,12486,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marshal Redpath - script - Turn off gossip flag'),
(49230,0,3,0,62,0,100,0,12486,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marshal Redpath - script - say text'),
(49230,0,4,0,62,0,100,0,12486,0,0,0,53,1,49230,0,0,0,0,1,0,0,0,0,0,0,0, 'Marshal Redpath - script - start waypoint'),
(49230,0,5,0,40,0,100,0,15,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marshal Redpath - script - on reach waypoint despawn'),
(49230,0,6,0,62,0,100,0,12486,0,0,0,54,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marshal Redpath - script - pause at first waypoint');

-- SmartAI for Valdred Moray --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(49231,0,0,0,62,0,100,0,12489,0,0,0,33,49231,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - On gossip option select - Give quest credit'),
(49231,0,1,0,62,0,100,0,12489,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - On gossip option select - Start script'),
(49231,0,2,0,62,0,100,0,12489,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - script - Turn off gossip flag'),
(49231,0,3,0,62,0,100,0,12489,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - script - say text'),
(49231,0,4,0,62,0,100,0,12489,0,0,0,53,0,49231,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - script - start waypoint'),
(49231,0,5,0,40,0,100,0,4,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - script - on reach waypoint despawn'),
(49231,0,6,0,62,0,100,0,12489,0,0,0,54,5000,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Valdred Moray - script - pause at first waypoint'),
(49231,0,8,0,62,0,100,0,12489,0,0,0,28,68442,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdray Moray - script - unaura kneel'),
(49231,0,9,0,40,0,100,0,4,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Valdray Moray - scipt - say text 2'),
(49231,0,10,0,25,0,100,0,0,0,0,0,11,68442,2,0,0,0,0,1,0,0,0,0.0,0,0,0,'Valdray Moray - Kneel'),
(49231,0,11,0,62,0,100,0,12489,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0.0,0,0,0,'Voldray Moray - script- face2face with player');

-- Conditions for quest --
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,12483,0,0,9,24960,0,0,0,'','Show gossip 12483 if player has Quest 24960'),
(15,12485,0,0,9,24960,0,0,0,'','Show gossip 12485 if player has Quest 24960'),
(15,12487,0,0,9,24960,0,0,0,'','Show gossip 12487 if player has Quest 24960');