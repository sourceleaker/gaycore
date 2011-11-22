ALTER TABLE `world_db_version` CHANGE  `required_46_quest_a_scarlet_letter` `required_47_reature_worgen_infiltrators_and_quests_with_them`  BIT(1);
-- DELETE --
DELETE FROM `creature_text` WHERE `entry` = 38949;
DELETE FROM `creature` WHERE `id` IN (38967,38976); 
DELETE FROM `creature_equip_template` WHERE `entry` IN (38949,38967,38976);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 3894900 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1515,38949,38967,38976) AND `source_type` = 0;
 
-- Worgen Dust Bunny - update template --
UPDATE `creature_template` SET `modelid1` = '11686', `modelid2` = '0', `unit_flags` = '33554432', `dynamicflags` = '8', `type_flags` = '0', `AIName` = 'SmartAI', `equipment_id` = '38976', `flags_extra` = '2' WHERE `entry` = 38976; 
 
-- Worgen Dust Bunny - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38976, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 29, 1, 245, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Worgen Dust Bunny - follow Worgen Infiltrator'),
(38976, 0, 1, 0, 1, 0, 100, 0, 0, 0, 1500, 1500, 11, 73167, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Dust Bunny - Stealth Trail'),
(38976, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 81464, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Dust Bunny - Invisibility (7)');

-- Worgen Dust Bunny - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(38976, 0, 0, 0);

-- Worgen Infiltrators - update templates --
UPDATE `creature_template` SET `minlevel` = '7', `maxlevel` = '8', `faction_A` = '16', `faction_H` = '16', `unit_flags` = '131590', `AIName` = 'SmartAI', `equipment_id` = '38949', `flags_extra` = '2' WHERE `entry` = 38949;
UPDATE `creature_template` SET `minlevel` = '7', `maxlevel` = '8', `faction_A` = '7', `faction_H` = '7', `mindmg` = '4', `maxdmg` = '9', `attackpower` = '44', `baseattacktime` = '2000', `AIName` = 'SmartAI', `MovementType` = '1', `equipment_id` = '38967' WHERE `entry` = 38967;

-- Worgen Infiltrators - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(38949, 14151, 0, 0),
(38967, 14151, 0, 0);

-- Add spawns for Worgen Infiltrators in Brill --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 38967, 0, 1, 1, 0, 38967, 2301.42, 248.899, 33.5938, 1.10042, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2279.5, 240.864, 33.4398, 5.20648, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2291.32, 315.945, 34.9361, 4.87426, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2269.17, 379.05, 36.1168, 4.38966, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2296.4, 373.448, 34.5165, 1.18524, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2277.64, 351.898, 33.7152, 1.1122, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2272.1, 329.561, 33.541, 1.81434, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2262.06, 279.813, 33.6901, 4.90263, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2266.57, 301.095, 33.6569, 1.91262, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2242.64, 289.321, 33.5737, 3.58552, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2249.14, 278.589, 33.3829, 1.23639, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2218.59, 268.109, 33.5861, 3.88947, 300, 15, 0, 137, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2265.2, 260.83, 33.6902, 1.55762, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0),
(NULL, 38967, 0, 1, 1, 0, 38967, 2245.33, 261.081, 33.4721, 0.440785, 300, 15, 0, 156, 0, 0, 1, 0, 0, 0);

-- Worgen Infiltrators in Brill - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38967, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 32615, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - cast Stealth on reset'),
(38967, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 73179, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - summon Dust Bunny'),
(38967, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 81464, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - Invisibility (7) - player can see mob when have Vigilance (ID: 73162)');

-- Worgen Infiltrator from Q: Escaped from Gilneas - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38949, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 34189, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - cast Stealth'),
(38949, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - react state'),
(38949, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 3894900, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - call timed actionlist on reset (summon)');

-- Worgen Infiltrator from Q: Escaped from Gilneas - Timed actionlist --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3894900, 9, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 28, 34189, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - remove stealth'),
(3894900, 9, 1, 0, 1, 0, 100, 0, 1500, 1500, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - say'),
(3894900, 9, 2, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 7, 24992, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Worgen Infiltrator - add Q');

-- Worgen Infiltrator from Q: Escaped from Gilneas - creature_text --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(38949, 0, 0, 'You deserve to lose this land, for what your people did to us!  Now back off, or face the wrath of the worgen!', 0, 0, 100, 0, 0, 0, 'Worgen Infiltrator');

-- Executor Zygand - update template --
UPDATE `creature_template` SET `npcflag` = '2', `AIName` = 'SmartAI' WHERE `entry` = 1515;

-- Executor Zygand - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1515, 0, 0, 0, 19, 0, 100, 0, 24993, 0, 0, 0, 75, 73162, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Executor Zygand - Annihilate the Worgen - cast Viligance on player after take quest'),
(1515, 0, 1, 0, 20, 0, 100, 0, 24993, 0, 0, 0, 28, 73162, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Executor Zygand - Annihilate the Worgen - remove Viligance from player after reward quest');
