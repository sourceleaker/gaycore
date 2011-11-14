ALTER TABLE `world_db_version` CHANGE  `required_22_arathi_highlands` `required_24_corrupted_bloodtalon`  BIT(1);
-- Edit Corrupted Bloodtalon's template --
UPDATE `creature_template` SET `npcflag` = '0', `AIName` = 'SmartAI' WHERE `entry` =37961;

-- SmartAI for sucking raptor --
DELETE FROM `smart_scripts` WHERE `entryorguid` = 37961;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(37961, 0, 0, 0, 1, 0, 100, 0, 1, 1, 3600000, 3600000, 11, 79773, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Corruption');
