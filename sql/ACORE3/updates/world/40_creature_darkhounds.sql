ALTER TABLE `world_db_version` CHANGE  `required_39_quest_variety_is_the_spice_of_death` `required_40_creature_darkhounds`  BIT(1);
-- DELETE --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1547,1548,1549) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (154700,154800) AND `source_type` = 9;

-- Update templates --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1547,1548,1549);

-- SAIs --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1547, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 5000, 8000, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Decrepit Darkhound - Leaping Bite'),
(1547, 0, 1, 0, 4, 0, 5, 1, 0, 0, 0, 0, 80, 154700, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Decrepit Darkhound - Call timed actionlist'),
(1548, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 5000, 8000, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cursed Darkhound - Leaping Bite'),
(1548, 0, 1, 0, 4, 0, 15, 1, 0, 0, 0, 0, 80, 154800, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cursed Darkhound - Call timed actionlist'),
(1549, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 5000, 8000, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ravenous Darkhound - Leaping Bite');

-- Timed actionlists --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(154700, 9, 0, 1, 0, 0, 100, 1, 15000, 15000, 0, 0, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Decrepit Darkhound - Leaping Bite'),
(154700, 9, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 73150, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Decrepit Darkhound - Summon Worgen '),
(154800, 9, 0, 1, 0, 0, 100, 1, 15000, 15000, 0, 0, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cursed Darkhound - Leaping Bite'),
(154800, 9, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 73150, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cursed Darkhound - Summon Worgen ');