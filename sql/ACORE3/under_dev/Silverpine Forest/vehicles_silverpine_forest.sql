/* File contains:
- Orc Demolisher (ID: 45251),
- Forsaken Catapult (ID: 45198),
- Horde Cannon (ID: 45263),
- Horde Hauler (ID: 44731) (with Horde Engineer (ID: 44734), Subdued Forest Ettin (ID: 44737), Forsaken Trooper),
- Horde Coffin Hauler (ID: 44764) (with Horde Engineer (ID: 46559), Coffins (ID: 44766), Subdued Forest Ettin (ID: 46560)); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (45251);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 45198);
DELETE FROM `creature_template_addon` WHERE `entry` = 45198;
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (44731,44764);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (44731,44764);
DELETE FROM `waypoints` WHERE `entry` IN (44737);
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (SELECT `guid` FROM `creature` WHERE `id` = 44737);
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (SELECT `guid` FROM `creature` WHERE `id` = 46560);
DELETE FROM `creature` WHERE `id` IN (45263,45251,44766,44731,46560,44764,46559,44737,44734,45198);

-- ----------- --
--  Variables  --
-- ----------- --
SET @GUID1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @GUID2 = (SELECT MAX(guid)+2 FROM `creature`);
SET @GUID3 = (SELECT MAX(guid)+3 FROM `creature`);
SET @GUID4 = (SELECT MAX(guid)+4 FROM `creature`);
SET @GUID5 = (SELECT MAX(guid)+5 FROM `creature`);
SET @GUID6 = (SELECT MAX(guid)+6 FROM `creature`);
SET @GUID7 = (SELECT MAX(guid)+7 FROM `creature`);
SET @GUID8 = (SELECT MAX(guid)+8 FROM `creature`);
SET @GUID9 = (SELECT MAX(guid)+9 FROM `creature`);
SET @GUID10 = (SELECT MAX(guid)+10 FROM `creature`);
-- SET @GUID11 = (SELECT MAX(guid)+11 FROM `creature`);
-- SET @GUID12 = (SELECT MAX(guid)+12 FROM `creature`);


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Catapult (ID: 45198) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Catapult - addon --
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@GUID1, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID2, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID3, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID4, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID5, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID6, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID7, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1'),
(@GUID8, 0, 0, 0, 0, 0, '84386 0 79153 0 79153 1');

-- Forsaken Catapult - Add good spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID1, 45198, 0, 1, 1, 0, 0, 354.887, 1453.95, 121.543, 3.49066, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID2, 45198, 0, 1, 1, 0, 0, 327.839, 1488.95, 119.542, 4.29351, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID3, 45198, 0, 1, 1, 0, 0, 271.087, 1497.42, 116.206, 2.44346, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID4, 45198, 0, 1, 1, 0, 0, 219.675, 1553.04, 121.911, 5.044, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID5, 45198, 0, 1, 1, 0, 0, 232.925, 1464.71, 114.571, 2.51327, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID6, 45198, 0, 1, 1, 0, 0, 122.847, 1482.32, 114.679, 5.72468, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID7, 45198, 0, 1, 1, 0, 0, 162.658, 1416.06, 110.966, 4.18879, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID8, 45198, 0, 1, 1, 0, 0, 218.033, 1426.7, 111.605, 6.03884, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -452.198, 1326.93, 38.9612, 2.25148, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -237.392, 1285.74, 44.3486, 3.33358, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, 437.66, 1530.83, 135.042, 3.83972, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -571.387, 1559.97, 18.2716, 3.4383, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -235.453, 1301.21, 42.4877, 3.31613, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -724.934, 1563.77, 29.0793, 3.33358, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -469.918, 1530.66, 18.7015, 3.07178, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, 445.031, 1516.58, 134.141, 3.49066, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -236.783, 1294.02, 43.4345, 3.33358, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -356.806, 1380.65, 33.4177, 0.837758, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -236.089, 1276.15, 45.2393, 3.33358, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -749.857, 1530.62, 29.2495, 3.14883, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -725.483, 1534, 28.5101, 3.10956, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45198, 0, 1, 1, 0, 0, -763.181, 1560.87, 28.1336, 3.21559, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Orc Demolisher (ID: 45251) --
-- -- -- -- -- -- -- -- -- -- --

-- Orc Demolisher - update template --
UPDATE `creature_template` SET `unit_flags` = '33948550', `dynamicflags` = '32', `AIName` = 'SmartAI' WHERE `entry` = 45251;

-- Orc Demolisher - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(45251, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Demolisher - set passive react state on resp"), 
(45251, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 75, 79153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Demolisher - visual death");

-- Orc Demolisher - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45251, 0, 1, 1, 0, 0, 718.986, 1189.53, 60.0872, 0, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 695.135, 1081.13, 50.9648, 0.680678, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 638.314, 1270.66, 82.7818, 3.59538, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 772.299, 1246.44, 56.5107, 3.75246, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 575.559, 1187.75, 85.6426, 5.0091, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 593.24, 1233.33, 83.1679, 0, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(NULL, 45251, 0, 1, 1, 0, 0, 639.814, 1211.4, 81.5659, 4.79965, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Horde Cannon   (ID: 45263) --
-- -- -- -- -- -- -- -- -- -- --

-- Horde Cannon - update template --
UPDATE `creature_template` SET `IconName` = 'Gunner', `npcflag` = '16777216', `mindmg` = '31', `maxdmg` = '40', `attackpower` = '74', `dmg_multiplier` = '1.7', `unit_flags` = '262148', `dynamicflags` = '8', `spell1` = '84575', `VehicleId` = '244', `mingold` = '15', `maxgold` = '33', `InhabitType` = '3', `Health_mod` = '5', `Mana_mod` = '1', `Armor_mod` = '1', `RegenHealth` = '1', `equipment_id` = '45263', `mechanic_immune_mask` = '613097436' WHERE `entry` = 45263;

-- Horde Cannon - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(45263, 60962, 27232, 1, 0, 1, 0, 0, 0);

-- Horde Cannon - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45263, 0, 1, 1, 0, 0, 720.833, 938.795, 36.4939, 5.37561, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45263, 0, 1, 1, 0, 0, 728.191, 944.655, 36.5406, 5.32325, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45263, 0, 1, 1, 0, 0, 713.179, 932.615, 36.5448, 5.34071, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Horde Hauler   (ID: 44731) and related --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Horde Hauler - update template --
UPDATE `creature_template` SET `IconName` = 'vehichleCursor',`npcflag` = '16777216',`VehicleId` = '1048',`AIName` = 'SmartAI' WHERE `entry` = 44731;

-- Horde Hauler - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(44731, 86807, 0, 0, 0, 2, 0, 0, 0);

-- Horde Haulder - vehicle_template_accessory --
-- Player seat is 2 --
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(44731, 44734, 0, 0, 'Horde Engineer on Horde Hauler', 6, 30000),
(44731, 44732, 1, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44732, 3, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 4, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 5, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 6, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000);

-- Horde Hauler - formation --
-- INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
-- (@GUID10, @GUID9, 15, 180, 0);

-- Horde Hauler - spawn --

-- Subdued Forest Ettin - spawn --

-- Subdued Forest Ettin - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(44737, 1, 1481.31, 640.555, 46.933, 'Subdued Forest Ettin'),
(44737, 2, 1465.33, 655.43, 46.6836, 'Subdued Forest Ettin'),
(44737, 3, 1443.06, 685.084, 47.124, 'Subdued Forest Ettin'),
(44737, 4, 1431.95, 700.646, 47.124, 'Subdued Forest Ettin'),
(44737, 5, 1424.83, 716.213, 47.124, 'Subdued Forest Ettin'),
(44737, 6, 1417.07, 732.694, 47.124, 'Subdued Forest Ettin'),
(44737, 7, 1410.04, 750.065, 47.124, 'Subdued Forest Ettin'),
(44737, 8, 1390.9, 793.665, 47.1241, 'Subdued Forest Ettin'),
(44737, 9, 1375.96, 832.201, 48.9017, 'Subdued Forest Ettin'),
(44737, 10, 1368.81, 851.363, 50.8054, 'Subdued Forest Ettin'),
(44737, 11, 1357.03, 884.553, 53.6343, 'Subdued Forest Ettin'),
(44737, 12, 1353.09, 897.988, 54.5992, 'Subdued Forest Ettin'),
(44737, 13, 1347.19, 918.142, 54.5992, 'Subdued Forest Ettin'),
(44737, 14, 1343.3, 934.179, 54.5992, 'Subdued Forest Ettin'),
(44737, 15, 1341.67, 945.533, 54.5992, 'Subdued Forest Ettin'),
(44737, 16, 1338.13, 980.355, 54.5992, 'Subdued Forest Ettin'),
(44737, 17, 1333.06, 1002.39, 54.5992, 'Subdued Forest Ettin'),
(44737, 18, 1326.71, 1020.92, 54.5992, 'Subdued Forest Ettin'),
(44737, 19, 1326.71, 1020.92, 54.5992, 'Subdued Forest Ettin'),
(44737, 20, 1326.71, 1020.92, 54.5992, 'Subdued Forest Ettin'),
(44737, 21, 1314.86, 1041.08, 54.5992, 'Subdued Forest Ettin'),
(44737, 22, 1293.14, 1071.27, 53.7633, 'Subdued Forest Ettin'),
(44737, 23, 1276.68, 1091.9, 52.5109, 'Subdued Forest Ettin'),
(44737, 24, 1256.31, 1112.8, 51.4225, 'Subdued Forest Ettin'),
(44737, 25, 1236.66, 1130.02, 50.476, 'Subdued Forest Ettin'),
(44737, 26, 1222.09, 1139.25, 50.476, 'Subdued Forest Ettin'),
(44737, 27, 1207.07, 1148.23, 49.7165, 'Subdued Forest Ettin'),
(44737, 28, 1189.09, 1160.49, 49.1999, 'Subdued Forest Ettin'),
(44737, 29, 1163.27, 1178.12, 48.4538, 'Subdued Forest Ettin'),
(44737, 30, 1139.76, 1193.33, 47.7029, 'Subdued Forest Ettin'),
(44737, 31, 1122.13, 1204.74, 46.9321, 'Subdued Forest Ettin'),
(44737, 32, 1113.32, 1210.44, 46.6188, 'Subdued Forest Ettin'),
(44737, 33, 1101.56, 1218.05, 46.3817, 'Subdued Forest Ettin'),
(44737, 34, 1094.88, 1222.41, 46.343, 'Subdued Forest Ettin'),
(44737, 35, 1082.48, 1233.64, 46.2803, 'Subdued Forest Ettin'),
(44737, 36, 1072.66, 1243.62, 46.2138, 'Subdued Forest Ettin'),
(44737, 37, 1055.47, 1262.19, 46.0934, 'Subdued Forest Ettin'),
(44737, 38, 1043.98, 1272.89, 46.0333, 'Subdued Forest Ettin'),
(44737, 39, 1031.65, 1282.2, 45.9993, 'Subdued Forest Ettin'),
(44737, 40, 1013.96, 1293.52, 45.9231, 'Subdued Forest Ettin'),
(44737, 41, 993.329, 1306.73, 45.8255, 'Subdued Forest Ettin'),
(44737, 42, 981.08, 1314.58, 45.717, 'Subdued Forest Ettin'),
(44737, 43, 966.342, 1324.01, 45.9144, 'Subdued Forest Ettin'),
(44737, 44, 946.881, 1335.08, 46.3748, 'Subdued Forest Ettin'),
(44737, 45, 931.232, 1344.67, 47.2737, 'Subdued Forest Ettin'),
(44737, 46, 908.445, 1354.75, 48.5237, 'Subdued Forest Ettin'),
(44737, 47, 891.616, 1360.09, 50.351, 'Subdued Forest Ettin'),
(44737, 48, 881.335, 1362.22, 52.1455, 'Subdued Forest Ettin'),
(44737, 49, 870.697, 1363.18, 53.7349, 'Subdued Forest Ettin'),
(44737, 50, 863.449, 1362.37, 54.7256, 'Subdued Forest Ettin'),
(44737, 51, 855.824, 1360.92, 55.1808, 'Subdued Forest Ettin'),
(44737, 52, 848.836, 1361.32, 55.4258, 'Subdued Forest Ettin'),
(44737, 53, 839.892, 1361.3, 55.7361, 'Subdued Forest Ettin'),
(44737, 54, 830.415, 1361.03, 56.0633, 'Subdued Forest Ettin'),
(44737, 55, 823.115, 1361.08, 56.3168, 'Subdued Forest Ettin'),
(44737, 56, 814.328, 1363.34, 57.4448, 'Subdued Forest Ettin'),
(44737, 57, 803.018, 1363.33, 59.6492, 'Subdued Forest Ettin'),
(44737, 58, 778.547, 1364.43, 63.8835, 'Subdued Forest Ettin'),
(44737, 59, 757.708, 1365.15, 68.0043, 'Subdued Forest Ettin'),
(44737, 60, 743.766, 1363.95, 70.1201, 'Subdued Forest Ettin'),
(44737, 61, 734.479, 1361.3, 71.4183, 'Subdued Forest Ettin'),
(44737, 62, 724.872, 1357.06, 72.8445, 'Subdued Forest Ettin'),
(44737, 63, 715.147, 1352.33, 74.4883, 'Subdued Forest Ettin'),
(44737, 64, 706.794, 1346.56, 76.0143, 'Subdued Forest Ettin'),
(44737, 65, 697.844, 1338.07, 77.8566, 'Subdued Forest Ettin'),
(44737, 66, 684.572, 1324.98, 79.5906, 'Subdued Forest Ettin'),
(44737, 67, 673.059, 1316.51, 80.8071, 'Subdued Forest Ettin'),
(44737, 68, 662.701, 1310.61, 82.3697, 'Subdued Forest Ettin'),
(44737, 69, 652.573, 1307.84, 83.8917, 'Subdued Forest Ettin'),
(44737, 70, 642.445, 1305.07, 85.1538, 'Subdued Forest Ettin'),
(44737, 71, 629.686, 1299.06, 86.3272, 'Subdued Forest Ettin'),
(44737, 72, 629.686, 1299.06, 86.3272, 'Subdued Forest Ettin'),
(44737, 73, 629.686, 1299.06, 86.3272, 'Subdued Forest Ettin'),
(44737, 74, 629.686, 1299.06, 86.3272, 'Subdued Forest Ettin'),
(44737, 75, 618.511, 1291.65, 87.5077, 'Subdued Forest Ettin'),
(44737, 76, 607.342, 1283.72, 87.2973, 'Subdued Forest Ettin'),
(44737, 77, 599.174, 1276.18, 87.2508, 'Subdued Forest Ettin'),
(44737, 78, 581.208, 1260.03, 86.9459, 'Subdued Forest Ettin'),
(44737, 79, 570.611, 1250.88, 86.6096, 'Subdued Forest Ettin'),
(44737, 80, 560.024, 1242.45, 86.2121, 'Subdued Forest Ettin'),
(44737, 81, 550.27, 1238.14, 86.5289, 'Subdued Forest Ettin'),
(44737, 82, 540.399, 1234.57, 87.7697, 'Subdued Forest Ettin'),
(44737, 83, 532.508, 1232.45, 88.6251, 'Subdued Forest Ettin'),
(44737, 84, 520.02, 1232.28, 89.2729, 'Subdued Forest Ettin'),
(44737, 85, 507.289, 1231.66, 89.0501, 'Subdued Forest Ettin'),
(44737, 86, 489.72, 1231.65, 88.7455, 'Subdued Forest Ettin'),
(44737, 87, 478.84, 1231.13, 88.5258, 'Subdued Forest Ettin'),
(44737, 88, 464.843, 1231.42, 88.3027, 'Subdued Forest Ettin'),
(44737, 89, 450.846, 1231.71, 87.9955, 'Subdued Forest Ettin'),
(44737, 90, 430.674, 1232.92, 86.4576, 'Subdued Forest Ettin'),
(44737, 91, 415.635, 1233.77, 84.7466, 'Subdued Forest Ettin'),
(44737, 92, 401.829, 1236.09, 83.3443, 'Subdued Forest Ettin'),
(44737, 93, 394.926, 1237.25, 82.7796, 'Subdued Forest Ettin'),
(44737, 94, 384.571, 1239, 82.3943, 'Subdued Forest Ettin'),
(44737, 95, 373.353, 1240.88, 82.045, 'Subdued Forest Ettin'),
(44737, 96, 362.899, 1241.86, 81.728, 'Subdued Forest Ettin'),
(44737, 97, 355.929, 1242.51, 81.5055, 'Subdued Forest Ettin'),
(44737, 98, 348.64, 1243.25, 81.2607, 'Subdued Forest Ettin'),
(44737, 99, 337.516, 1246.84, 80.8132, 'Subdued Forest Ettin'),
(44737, 100, 327.797, 1250.81, 80.3737, 'Subdued Forest Ettin'),
(44737, 101, 318.078, 1254.78, 79.9049, 'Subdued Forest Ettin'),
(44737, 102, 308.359, 1258.76, 79.1715, 'Subdued Forest Ettin'),
(44737, 103, 290.34, 1265.12, 77.478, 'Subdued Forest Ettin'),
(44737, 104, 280.621, 1269.09, 76.8507, 'Subdued Forest Ettin'),
(44737, 105, 272.282, 1272.33, 76.6872, 'Subdued Forest Ettin'),
(44737, 106, 265.294, 1272.74, 76.787, 'Subdued Forest Ettin'),
(44737, 107, 252.868, 1272.85, 76.772, 'Subdued Forest Ettin'),
(44737, 108, 242.411, 1271.9, 76.2807, 'Subdued Forest Ettin'),
(44737, 109, 231.953, 1270.96, 75.7178, 'Subdued Forest Ettin'),
(44737, 110, 217.242, 1268.97, 74.7953, 'Subdued Forest Ettin'),
(44737, 111, 207.708, 1267.67, 74.6218, 'Subdued Forest Ettin'),
(44737, 112, 197.729, 1264.4, 74.07, 'Subdued Forest Ettin'),
(44737, 113, 187.75, 1261.14, 73.2156, 'Subdued Forest Ettin'),
(44737, 114, 174.445, 1256.78, 71.6403, 'Subdued Forest Ettin'),
(44737, 115, 161.139, 1252.43, 71.1047, 'Subdued Forest Ettin'),
(44737, 116, 151.164, 1249.16, 71.3079, 'Subdued Forest Ettin'),
(44737, 117, 132.135, 1243.49, 70.9818, 'Subdued Forest Ettin'),
(44737, 118, 118.548, 1240.11, 69.9167, 'Subdued Forest Ettin'),
(44737, 119, 107.52, 1236.66, 69.2643, 'Subdued Forest Ettin'),
(44737, 120, 101.156, 1233.74, 68.8174, 'Subdued Forest Ettin'),
(44737, 121, 93.2954, 1230.16, 68.0752, 'Subdued Forest Ettin'),
(44737, 122, 85.1954, 1228.85, 67.6259, 'Subdued Forest Ettin'),
(44737, 123, 77.1784, 1228.1, 67.3315, 'Subdued Forest Ettin'),
(44737, 124, 66.9098, 1225.91, 66.792, 'Subdued Forest Ettin'),
(44737, 125, 55.3063, 1222.59, 66.2641, 'Subdued Forest Ettin'),
(44737, 126, 43.0599, 1218.95, 65.888, 'Subdued Forest Ettin'),
(44737, 127, 35.2105, 1217, 65.661, 'Subdued Forest Ettin'),
(44737, 128, 25.1292, 1214.07, 65.2912, 'Subdued Forest Ettin'),
(44737, 129, 15.048, 1211.13, 64.9123, 'Subdued Forest Ettin'),
(44737, 130, 1.60631, 1207.22, 64.6423, 'Subdued Forest Ettin'),
(44737, 131, -8.47254, 1204.27, 64.5497, 'Subdued Forest Ettin'),
(44737, 132, -18.3127, 1200.61, 64.4378, 'Subdued Forest Ettin'),
(44737, 133, -31.4329, 1195.73, 64.2796, 'Subdued Forest Ettin'),
(44737, 134, -37.9929, 1193.28, 64.2268, 'Subdued Forest Ettin');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Horde Coffin Hauler ( ID: 44764) and related --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Horde Coffin Hauler - update template --
UPDATE `creature_template` SET `IconName` = 'vehichleCursor',`npcflag` = '16777216',`VehicleId` = '1',`AIName` = 'SmartAI' WHERE `entry` = 44764;

-- Horde Coffin Hauler - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(44764, 86807, 0, 0, 0, 2, 0, 0, 0);

-- Horde Coffin Hauler - formation --
-- INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES 
-- (@GUID12, @GUID11, 15, 180, 0);

-- Horde Coffin Hauler - spawn --

-- Subdued Forest Ettin - spawn --


-- Subdued Forest Ettin - waypoints --