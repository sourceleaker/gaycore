ALTER TABLE `world_db_version` CHANGE  `required_35_quest_ever_so_lonely` `required_36_creature_bats_trisfal`  BIT(1);
-- Modify scale for bats in Trisfal Glades --
UPDATE `creature_template` SET `scale` = '0.4' WHERE `entry` IN (1553,1513,1512);
UPDATE `creature_template` SET `scale` = '0.7' WHERE `entry` IN (1554,10357);

-- Edit Vampiric Duskbat's template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 1554;

-- SmartAI for Vampiric Duskbat --
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1554;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1554, 0, 0, 0, 1, 0, 100, 0, 1, 1, 3600000, 3600000, 11, 29363, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Draining Touch');

-- Edit Ressan the Needler's template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 10357;

-- SmartAI for Ressan the Needler --
DELETE FROM `smart_scripts` WHERE `entryorguid` = 10357;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10357, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 8000, 8000, 11, 8281, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Draining Touch');
