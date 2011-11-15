ALTER TABLE `world_db_version` CHANGE  `required_40_creature_darkhounds` `required_41_world_quest_6621`  BIT(1);

-- DELETE --
DELETE FROM `gameobject_loot_template` WHERE item = 16976;
DELETE FROM `creature_ai_scripts` WHERE creature_id = 12918;
DELETE FROM `event_scripts` WHERE `id` = 6721;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (12918,178205);
DELETE FROM `creature_text` WHERE `entry` = 12918;

-- Update templates --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE entry = 12918;
UPDATE `gameobject_template` SET `data1` = '15160', `flags` = '0' WHERE entry = 178227;
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE entry = 178205;

-- Loot for totem --
INSERT INTO `gameobject_loot_template` VALUES (15160, 16976, -100, 1, 0, 1, 1);

-- SAI for Chief Murgut --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(12918, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chief Murgut - Say on aggro'),
(12918, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 20818, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chief Murgut -  Cast on death'),
(12918, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chief Murgul - Say on death');

-- Texts for Chief Murgut --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(12918, 0, 0, 'You are a little gnat to the Foulweald! Die!', 0, 0, 0, 0, 0, 0, 'Chief Murgut - on agrro'), 
(12918, 1, 0, 'No! You cannot be stronger than the Foulweald! No!!', 0, 0, 0, 0, 0, 0, 'Chief Murgut - on death');

-- SAI for Karang's Banner --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(178205, 1, 0, 0, 1, 0, 100, 1, 5000, 5000, 0, 0, 12, 3749, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2237.48, -1524.45, 89.7827, 0, 'Karang''s Banner - Summon 1'),
(178205, 1, 1, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2202.16, -1544.48, 87.796, 0, 'Karang''s Banner - Summon 2'),
(178205, 1, 2, 0, 1, 0, 100, 1, 20000, 20000, 0, 0, 12, 3749, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2235.44, -1578.43, 86.4944, 0, 'Karang''s Banner - Summon 3'),
(178205, 1, 3, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2260.9, -1547.91, 89.1733, 0, 'Karang''s Banner - Summon 4'),
(178205, 1, 4, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3750, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2208.93, -1567.59, 87.2283, 0, 'Karang''s Banner - Summon 5'),
(178205, 1, 5, 0, 1, 0, 100, 1, 30000, 30000, 0, 0, 12, 3750, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2237.48, -1524.45, 89.7827, 0, 'Karang''s Banner - Summon 6'),
(178205, 1, 6, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3749, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2202.16, -1544.48, 87.796, 0, 'Karang''s Banner - Summon 7'),
(178205, 1, 7, 0, 1, 0, 100, 1, 20000, 20000, 0, 0, 12, 3749, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2260.9, -1547.91, 89.1733, 0, 'Karang''s Banner - Summon 8'),
(178205, 1, 8, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2208.93, -1567.59, 87.2283, 0, 'Karang''s Banner - Summon 9'),
(178205, 1, 9, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3750, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2235.44, -1578.43, 86.4944, 0, 'Karang''s Banner - Summon 10'),
(178205, 1, 10, 0, 1, 0, 100, 1, 30000, 30000, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2237.48, -1524.45, 89.7827, 0, 'Karang''s Banner - Summon 11'),
(178205, 1, 11, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3750, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2202.16, -1544.48, 87.796, 0, 'Karang''s Banner - Summon 12'),
(178205, 1, 12, 0, 1, 0, 100, 1, 20000, 20000, 0, 0, 12, 3749, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2208.93, -1567.59, 87.2283, 0, 'Karang''s Banner - Summon 13'),
(178205, 1, 13, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2235.44, -1578.43, 86.4944, 0, 'Karang''s Banner - Summon 14'),
(178205, 1, 14, 0, 1, 0, 100, 1, 0, 0, 0, 0, 12, 3750, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2260.9, -1547.91, 89.1733, 0, 'Karang''s Banner - Summon 15'),
(178205, 1, 15, 0, 1, 0, 100, 1, 30000, 30000, 0, 0, 12, 3743, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2202.16, -1544.48, 87.796, 0, 'Karang''s Banner - Summon 16'),
(178205, 1, 16, 0, 1, 0, 100, 1, 25000, 25000, 0, 0, 12, 12918, 2, 180000, 0, 0, 0, 8, 0, 0, 0, 2208.93, -1567.59, 87.2283, 0, 'Karang''s Banner - Summon 17');