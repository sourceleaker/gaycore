ALTER TABLE `world_db_version` CHANGE  `required_30_undead_the_truth_of_the_grave` `required_31_undead_assault_on_the_rotbrain_encampment`  BIT(1);
-- DELETE --
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (49424,49423,49422,1569,49426); 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` = 156900; 
DELETE FROM `creature_text` WHERE `entry` IN (49426,1569,49424,49423,49422);
DELETE FROM `creature_template_addon` WHERE `entry` = 49426;
DELETE FROM `creature_equip_template` WHERE `entry` = 49426;

-- Update quest_template (remove cast spell after complete -> show at Shadow Priest Sarvis SAI) --
UPDATE `quest_template` SET `RewSpellCast` = '0' WHERE `entry` =24971;

-- Update templates for SAI --
UPDATE `creature_template` SET `npcflag` = '0', `AIName` = 'SmartAI', `unit_flags` = '0', `dynamicflags` = '0' WHERE `entry` IN (49424,49423,49422,49426);
UPDATE `creature_template` SET `npcflag` = '2', `AIName` = 'SmartAI' WHERE `entry` = 1569;

-- Update Darnell template (add Equip and change level & faction to Blizzlike) --
UPDATE `creature_template` SET `minlevel` = '5', `maxlevel` = '5', `equipment_id` = '49426', `faction_A` = '68',`faction_H` = '68' WHERE `entry` =49426;

-- Marshal Redpath (ID: 49424) SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(49424, 0, 0, 0, 0, 0, 100, 0, 1, 1, 180000, 180000, 11, 83015, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Marshal Redpath - Heroic Leap (Whatz UP!)'),
(49424, 0, 1, 0, 0, 0, 100, 0, 2000, 2000, 15000, 15000, 11, 83016, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Marshal Redpath - Whirlwind (I mixed your body with my sword)'),
(49424, 0, 2, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshal Redpath - Text');

-- Rotbrain Magus (ID: 49423) SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(49423, 0, 0, 0, 0, 0, 100, 0, 0, 0, 180000, 180000, 11, 11962, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Magus - Immolate'),
(49423, 0, 1, 0, 0, 0, 100, 0, 2100, 2100, 3100, 3100, 11, 9053, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Magus - Fireball (bewere on your hair!)'),
(49423, 0, 2, 0, 4, 0, 25, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Magus - Text');

-- Rotbrain Berserker (ID: 49422) SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(49422, 0, 0, 0, 0, 0, 100, 0, 1, 1, 20000, 20000, 11, 63227, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Berserker - Enrage'),
(49422, 0, 1, 0, 0, 0, 100, 0, 500, 500, 8000, 8000, 11, 79881, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Berserker - Slam'),
(49422, 0, 2, 0, 4, 0, 25, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rotbrain Berserker - Text');

-- Shadow Priest Sarvis (ID: 1569) SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1569, 0, 0, 0, 20, 0, 100, 0, 24971, 0, 0, 0, 12, 49426, 3, 25000, 0, 0, 0, 8, 0, 0, 0, 1843.4, 1629.96, 96.934, 1.672, 'Shadow Priest Sarvis - Summon Darnell after rewarded Q'),
(1569, 0, 1, 0, 20, 0, 100, 0, 24971, 0, 0, 0, 80, 156900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Priest Sarvis - Call Action List');

-- Action List for Shadow Priest Sarvis --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(156900, 9, 0, 0, 0, 0, 100, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Priest Sarvis - Say after rewarded Q'),
(156900, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 49426, 0, 0, 0, 0, 0, 0, 'Darnell - Text 1'),
(156900, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 49426, 0, 0, 0, 0, 0, 0, 'Darnell - Text 2'),
(156900, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0 ,0, 1, 2, 0, 0, 0, 0, 0, 19, 49426, 0, 0, 0, 0, 0, 0, 'Darnell - Text 3'),
(156900, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 49426, 0, 0, 0, 0, 0, 0, 'Darnell - Text 4'),
(156900, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 19, 49426, 0, 0, 0, 0, 0, 0, 'Darnell - Text 5');

-- Addon for Darnell --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
('49426', '0', '0', '0', '1', '1', NULL);

-- Equip for Darnell --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(49426, 3267, 3276, 0);

-- Texts for Darnell --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('49426', '0', '0', 'Hi, $N!  What do you think about my new gear?', '0', '0', '0', '0', '0', '0', ''),
('49426', '1', '0', 'They''re making me into a Deathguard.  Can you believe it?', '0', '0', '0', '0', '0', '0', ''),
('49426', '2', '0', 'I''ll probably be staying here in Deathknell.  If things work out, though... who knows?  Maybe I''ll get to meet the Dark Lady herself.', '0', '0', '0', '0', '0', '0', ''),
('49426', '3', '0', 'How about you?  I''ve heard that Sarvis is going to send you off to Calston Estate.  Big assignment, eh?', '0', '0', '0', '0', '0', '0', ''),
('49426', '4', '0', 'Well, I won''t hold you up.  It''s been a pleasure, $N.  I hope our paths cross again soon.', '0', '0', '0', '0', '0', '0', '');

-- Text for Shadow Priest Sarvis --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('1569', '0', '0', 'Well, look who''s here!', '0', '0', '0', '0', '0', '0', '');

-- Texts for Rotbrains Boysband xD --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('49424', '0', '0', 'BLEEAAAGGHHH! I''m a monster, don''t look at me!', '1', '0', '0', '0', '0', '0', ''),
('49423', '0', '0', 'I''ll kill you!', '0', '0', '0', '0', '0', '0', ''),
('49423', '0', '1', 'Look what they''ve done to me!', '0', '0', '0', '0', '0', '0', ''),
('49423', '0', '2', 'Who am I?', '0', '0', '0', '0', '0', '0', ''),
('49422', '0', '0', 'I''ll kill you!', '0', '0', '0', '0', '0', '0', ''),
('49422', '0', '1', 'Look what they''ve done to me!', '0', '0', '0', '0', '0', '0', ''),
('49422', '0', '2', 'Who am I?', '0', '0', '0', '0', '0', '0', '');