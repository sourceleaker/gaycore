ALTER TABLE `world_db_version` CHANGE  `required_34_unded_quest_relation` `required_35_quest_ever_so_lonely`  BIT(1);
-- VARIABLES --
SET @GUID1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @GUID2 = (SELECT MAX(guid)+2 FROM `creature`);

-- DELETE --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1543,1544,38925,38923,39078,39079,39080) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (154300,154400,3892500,3892501,3907900,3908000,3907800,3892300) AND `source_type` = 9;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` = 52059;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 73108;
DELETE FROM `creature_text` WHERE `entry` IN (1543,1544);
DELETE FROM `creature` WHERE `id` IN (39079,39080);
DELETE FROM `waypoints` WHERE `entry` IN (39079,39080);

-- Update Sedrick Calston template --
UPDATE `creature_template` SET `npcflag` = '2' WHERE `entry` = '38925'; 

-- Add SAI to templates --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1543,1544,38925,38923,39078,39079,39080);

-- Update Captured Murlocks templates --
UPDATE `creature_template` SET `subname` = NULL, `minlevel` = '5', `maxlevel` = '5', `faction_A` = '35', `faction_H` = '35', `npcflag` = '0', `unit_flags` = '770', `dynamicflags` = '8', `movementId` = '0', `flags_extra` = '2' WHERE `entry` IN (38923,39078);

-- Update Speckle and Sparky templates --
UPDATE `creature_template` SET `minlevel` = '7',`maxlevel` = '8', `speed_walk` = '0.5' WHERE `entry` IN (39079,39080);

-- Add spawns for Speckle and Sparky --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID1, 39080, 0, 1, 1, 0, 0, 2223.85, 1016.18, 37.1219, 4.47223, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID2, 39079, 0, 1, 1, 0, 0, 2223.85, 1016.18, 37.1219, 4.47223, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- SAI for Vile Fin Puddlejumper and Minor Oracle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1543, 0, 0, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 80, 154300, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - call timed actionlist on spellhit'),
(1543, 0, 1, 0, 2, 0, 100, 1, 15, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - ready to capture'),
(1543, 0, 2, 0, 9, 0, 100, 0, 5, 45, 18000, 18000, 11, 75002, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - Leaping Rush'),
(1543, 0, 3, 0, 2, 0, 100, 1, 15, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - flee for assist'),
(1544, 0, 0, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 80, 154400, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - call timed actionlist on spellhit'),
(1544, 0, 1, 0, 2, 0, 100, 1, 15, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - ready to capture'),
(1544, 0, 2, 0, 16, 0, 100, 0, 12550, 1, 1, 1, 11, 12550, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - Lightning Shield'),
(1544, 0, 3, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - Lightning Bolt'),
(1544, 0, 4, 0, 2, 0, 100, 1, 15, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - flee for assist');

-- Timed actionlist for Vile Fin Puddlejumper --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(154300, 9, 3, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 85, 73109, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - cast Summon Puddlejumper on player'),
(154300, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 33, 38923, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - quest credit - capture Vile Fin Murlock'),
(154300, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Puddlejumper - despawn after become player''s pet');

-- Timed actionlist for Vile Fin Minor Oracle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(154400, 9, 3, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 85, 73433, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - cast Summon Oracle on player'),
(154400, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 33, 38923, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - quest credit - capture Vile Fin Murlock'),
(154400, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - despawn after become player''s pet');

-- SAI for Captured Vile Fin Puddlejumper --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38923, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94266, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - cast Vile Fin Guardian Aura on self'),
(38923, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - no fight baby!'),
(38923, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - no run to mobs baby!'),
(38923, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 38925, 39078, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - follow player'),
(38923, 0, 4, 0, 65, 0, 100, 0, 0, 0, 0, 0, 75, 73437, 0, 0, 0, 0, 0, 19, 38925, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - info for Sedrick'),
(38923, 0, 5, 0, 65, 0, 100, 0, 0, 0, 0, 0, 33, 39078, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - credit returned'),
(38923, 0, 6, 0, 65, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - despawn'),
(38923, 0, 7, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 3892300, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - call timed actionlist');

-- Timed actionlist for Captured Vile Fin Puddlejumper --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3892300, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - despawn after 10min');

-- SAI for Captured Vile Fin Minor Oracle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(39078, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94266, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - cast Vile Fin Guardian Aura on self'),
(39078, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - no fight baby!'),
(39078, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - no run to mobs baby!'),
(39078, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 38925, 39078, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - follow player'),
(39078, 0, 4, 0, 65, 0, 100, 0, 0, 0, 0, 0, 75, 73438, 0, 0, 0, 0, 0, 19, 38925, 0, 0, 0, 0, 0, 0, 'Capture Vile Fin Minor Oracle - info for Sedrick'),
(39078, 0, 5, 0, 65, 0, 100, 0, 0, 0, 0, 0, 33, 39078, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - credit returned'),
(39078, 0, 6, 0, 65, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - despawn'),
(39078, 0, 7, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 3907800, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Minor Oracle - call timed actionlist');

-- Timed actionlist for Captured Vile Fin Minor Oracle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3907800, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Vile Fin Puddlejumper - despawn after 10min');

-- SAI for Sedrick Calston --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38925, 0, 0, 0, 20, 1, 100, 0, 24974, 0, 0, 0, 80, 3892500, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calson - Ever So Lonely - Puddlejumper'),
(38925, 0, 1, 0, 20, 2, 100, 0, 24974, 0, 0, 0, 80, 3892501, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calson - Ever So Lonely - Minor Oracle'),
(38925, 0, 2, 0, 23, 0, 100, 1, 73437, 1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calson - Ever So Lonely - Set Phase 1'),
(38925, 0, 3, 0, 23, 0, 100, 1, 73438, 1, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calson - Ever So Lonely - Set Phase 2');

-- Timed actionlist for Sedrick Calston --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3892500, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 00, 75, 73437, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calston - Puddlejumper - visible Speckle'),
(3892501, 9, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 75, 73438, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sedrick Calston - Minor Oracle - visible Sparky');

-- SAI for Speckle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(39079, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 73439, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - Cast invisiblity (7) on self'),
(39079, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 53, 0, 39079, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - Walk at waypoints'),
(39079, 0, 2, 0, 40, 0, 100, 0, 9, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - waypoint 9 - pause for 7s'),
(39079, 0, 3, 0, 40, 0, 100, 0, 9, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 38925, 0, 0, 0, 0, 0, 0, 'Speckle - waypoint 9 - set orientation at Sedrick'),
(39079, 0, 4, 0, 40, 0, 100, 0, 12, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - waypoint 12 - pause for 7s'),
(39079, 0, 5, 0, 40, 0, 100, 0, 17, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - waypoint 17 - pause for 7s'),
(39079, 0, 6, 0, 40, 0, 100, 0, 28, 0, 0, 0, 80, 3907900, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Speckle - waypoint 28 - call timed actionlist');

-- Timed actionlist for Speckle --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3907900, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 28 - pause for 7s'),
(3907900, 9, 1, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 53, 0, 39079, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 28 - reset waypoints');

-- SAI for Sparky --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(39080, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 73440, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - Cast invisiblity (7) on self'),
(39080, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 53, 0, 39080, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - Walk at waypoints'),
(39080, 0, 2, 0, 40, 0, 100, 0, 9, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 9 - pause for 7s'),
(39080, 0, 3, 0, 40, 0, 100, 0, 9, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 38925, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 9 - set orientation at Sedrick'),
(39080, 0, 4, 0, 40, 0, 100, 0, 12, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 12 - pause for 7s'),
(39080, 0, 5, 0, 40, 0, 100, 0, 17, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 17 - pause for 7s'),
(39080, 0, 6, 0, 40, 0, 100, 0, 28, 0, 0, 0, 80, 3908000, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 28 - call timed actionlist');

-- Timed actionlist for Sparky --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3908000, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 28 - pause for 7s'),
(3908000, 9, 1, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 53, 0, 39080, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sparky - waypoint 28 - reset waypoints');

-- Waypoints for Speckle --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(39080, 1, 2223.13, 1019.06, 37.1237, 'Speckle'),
(39080, 2, 2219.24, 1022.36, 40.1177, 'Speckle'),
(39080, 3, 2217.22, 1023.87, 40.8331, 'Speckle'),
(39080, 4, 2214.19, 1020.85, 40.8395, 'Speckle'),
(39080, 5, 2215.97, 1018.74, 41.758, 'Speckle'),
(39080, 6, 2218.52, 1016.69, 44.0832, 'Speckle'),
(39080, 7, 2219.98, 1015.13, 44.4259, 'Speckle'),
(39080, 8, 2222.47, 1016.32, 44.4259, 'Speckle'),
(39080, 9, 2224.86, 1015.53, 44.4259, 'Speckle'),
(39080, 10, 2224.96, 1013.64, 44.4259, 'Speckle'),
(39080, 11, 2225.02, 1012.38, 44.4259, 'Speckle'),
(39080, 12, 2224.39, 1011.43, 44.4259, 'Speckle'),
(39080, 13, 2224.87, 1013, 44.4259, 'Speckle'),
(39080, 14, 2224.09, 1014.44, 44.4259, 'Speckle'),
(39080, 15, 2223.14, 1016.21, 44.4259, 'Speckle'),
(39080, 16, 2222.01, 1018.31, 44.4259, 'Speckle'),
(39080, 17, 2220.49, 1019.82, 44.4259, 'Speckle'),
(39080, 18, 2222.82, 1017.99, 44.4259, 'Speckle'),
(39080, 19, 2221.81, 1016.86, 44.4259, 'Speckle'),
(39080, 20, 2220.97, 1015.93, 44.4259, 'Speckle'),
(39080, 21, 2219.19, 1016.56, 44.4456, 'Speckle'),
(39080, 22, 2216.92, 1017.91, 42.6568, 'Speckle'),
(39080, 23, 2214.07, 1020.49, 40.8381, 'Speckle'),
(39080, 24, 2215.53, 1022.54, 40.8426, 'Speckle'),
(39080, 25, 2217.05, 1024.06, 40.8395, 'Speckle'),
(39080, 26, 2220.54, 1021.65, 39.0905, 'Speckle'),
(39080, 27, 2223.21, 1018.98, 37.124, 'Speckle'),
(39080, 28, 2224.35, 1017.1, 37.124, 'Speckle');

-- Waypoints for Sparky --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(39079, 1, 2223.13, 1019.06, 37.1237, 'Sparky'),
(39079, 2, 2219.24, 1022.36, 40.1177, 'Sparky'),
(39079, 3, 2217.22, 1023.87, 40.8331, 'Sparky'),
(39079, 4, 2214.19, 1020.85, 40.8395, 'Sparky'),
(39079, 5, 2215.97, 1018.74, 41.758, 'Sparky'),
(39079, 6, 2218.52, 1016.69, 44.0832, 'Sparky'),
(39079, 7, 2219.98, 1015.13, 44.4259, 'Sparky'),
(39079, 8, 2222.47, 1016.32, 44.4259, 'Sparky'),
(39079, 9, 2224.86, 1015.53, 44.4259, 'Sparky'),
(39079, 10, 2224.96, 1013.64, 44.4259, 'Sparky'),
(39079, 11, 2225.02, 1012.38, 44.4259, 'Sparky'),
(39079, 12, 2224.39, 1011.43, 44.4259, 'Sparky'),
(39079, 13, 2224.87, 1013, 44.4259, 'Sparky'),
(39079, 14, 2224.09, 1014.44, 44.4259, 'Sparky'),
(39079, 15, 2223.14, 1016.21, 44.4259, 'Sparky'),
(39079, 16, 2222.01, 1018.31, 44.4259, 'Sparky'),
(39079, 17, 2220.49, 1019.82, 44.4259, 'Sparky'),
(39079, 18, 2222.82, 1017.99, 44.4259, 'Sparky'),
(39079, 19, 2221.81, 1016.86, 44.4259, 'Sparky'),
(39079, 20, 2220.97, 1015.93, 44.4259, 'Sparky'),
(39079, 21, 2219.19, 1016.56, 44.4456, 'Sparky'),
(39079, 22, 2216.92, 1017.91, 42.6568, 'Sparky'),
(39079, 23, 2214.07, 1020.49, 40.8381, 'Sparky'),
(39079, 24, 2215.53, 1022.54, 40.8426, 'Sparky'),
(39079, 25, 2217.05, 1024.06, 40.8395, 'Sparky'),
(39079, 26, 2220.54, 1021.65, 39.0905, 'Sparky'),
(39079, 27, 2223.21, 1018.98, 37.124, 'Sparky'),
(39079, 28, 2224.35, 1017.1, 37.124, 'Sparky');

-- Texts for Murlocks --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(1543,0,0, 'The Vile Fin Puddlejumper is ready to be captured!',2,0,0,0,0,0,''),
(1544,0,0, 'The Vile Fin Minor Oracle is ready to be captured!',2,0,0,0,0,0,'');

-- Conditions for Q item --
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 0, 52059, 0, 24, 1, 1543, 0, 0, '', 'Murlock Leash with target as Puddlejumper'),
(18, 0, 52059, 0, 24, 1, 1544, 0, 0, '', 'Murlock Leash with target as Minor Oracle'),
(17, 0, 73108, 0, 20, 15, 0, 0, 0, '', 'Murlock Leash with target below 15% HP');

-- New Q template (too many hackfix in old) --
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(24974, 2, 85, 0, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 52059, 1, 0, 'Ever So Lonely', 'You work hard your whole life, and what do you get?  Killed by a plague.  Then you work even harder in undeath, and what do you get?  Money, yes, and a small estate with a few pesky hangers-on, but happiness?  Not so much.$b$bI''m lonely in my old age, $n.  I need a companion.  Use this leash on one of the murlocs at the Whispering Shore to the northwest.  You''ll have to weaken it first before it can be leashed.  Then bring it back to me.', 'Use the Murloc Leash on a Vile Fin murloc at the Whispering Shore, then return it to Sedrick Calston at Calston Estate.', 'Oh, look at him!  Isn''t he the most adorable thing you''ve ever seen?  Thank you, $N.  I feel more energetic already. ', 'Oh, the pain of loneliness is too much to bear! ', 'Return to Sedrick Calston at Calston Estate in Tirisfal Glades.', '', 'Vile Fin captured', 'Vile Fin returned', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52059, 0, 0, 0, 1, 0, 0, 0, 38923, 39078, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 12340);
