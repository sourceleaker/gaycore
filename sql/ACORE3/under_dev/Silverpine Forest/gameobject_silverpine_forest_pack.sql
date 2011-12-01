/* File contains:
- Ferocious Doomweed (ID: 205099),
- Abandoned Outhouse (ID: 205143),
- Forsaken Communication Device (ID: 205363),
- Wolfsbane (ID: 205367),
- 7th Legion Telescope (ID: 205417),
- Shoutbox (ID: 205420); */


-- ------ --
-- DELETE --
-- ------ --
DELETE FROM `gameobject_template` WHERE `entry` IN (205099,205143,205363,205367,205417,205420);
DELETE FROM `gameobject` WHERE `id` IN (205099,205143,205363,205367,205417,205420);
DELETE FROM `gameobject_questrelation` WHERE `id` IN (205143);
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (205143);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (205099,205143) AND `source_type` = 1;
DELETE FROM `pool_template` WHERE `description` LIKE 'Wolfsbane - Ruins of Gilneas - max 12';
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 205367);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ferocious Doomweed  (ID: 205099) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Ferocious Doomweed - new template --
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(205099, 3, 4112, 'Ferocious Doomweed', '', 'Gathering', '', 0, 0, 1, 60741, 0, 0, 0, 0, 0, 259, 205099, 300, 1, 0, 0, 0, 0, 26992, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SmartGameObjectAI', '', 0);

-- Ferocious Doomweed - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(205099, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 75, 83523, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ferocious Doomweed - call timed actionlist on gossip_hello');

-- Ferocious Doomweed - spawns --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 205099, 0, 1, 1, 1300.01, 850.846, 34.7983, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1312.28, 967.269, 54.5992, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1425.78, 827.576, 49.8996, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1394.26, 960.094, 49.7652, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1335.21, 820.444, 39.1371, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1272.92, 923.297, 42.1125, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1231.62, 1155.03, 45.2443, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1448.24, 891.762, 56.5077, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1329.58, 844.313, 42.013, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1357.43, 984.597, 52.9882, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1213.82, 1086.54, 39.3827, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1435.81, 953.023, 54.3454, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1362.4, 937.734, 54.5992, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1412.07, 922.304, 49.0066, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1309.53, 1134.29, 52.4592, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1391.05, 864.71, 48.6364, 0, 0, 0, 0, 1, 180, 100, 0),
(NULL, 205099, 0, 1, 1, 1321.39, 804.915, 33.7252, 0, 0, 0, 0, 1, 180, 100, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Abandoned Outhouse  (ID: 205143) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Abandoned Outhouse - new template --
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(205143, 2, 3332, 'Abandoned Outhouse', '', '', '', 0, 0, 1.03, 0, 0, 0, 0, 0, 0, 0, 15590, 0, 11897, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SmartGameObjectAI', '', 0);

-- Abandoned Outhouse - quest relation --
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(205143, 27045);

-- Abandoned Outhouse - involved relation --
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
(205143, 27039);

-- Abandoned Outhouse - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(205143, 1, 0, 0, 47, 0, 100, 0, 0, 0, 0, 0, 11, 83751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Abandoned Outhouse - cast Summon Deathstalker Yorick on player');

-- Abandoned Outhouse - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 205143, 0, 1, 8, 1304.34, 1188.18, 52.1125, 2.76478, 0, 0, 0, 1, 180, 100, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Communication Device   (ID: 205363) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Communication Device - new template --
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(205363, 3, 2091,  'Forsaken Communication Device', 'Collecting', '',35, 0, 0.75, 1691, 34375, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '');

-- Forsaken Communication Device

-- Forsaken Communication Device - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 205363, 0, 1, 1, -993.904, 2000.71, 23.7661, 1.84755, 0, 0, 0.797884, 0.602811, 300, 0, 0);


-- ----------- --
--  Variables  --
-- ----------- --
SET @POOL = (SELECT MAX(entry)+1 FROM `pool_template`);
SET @GUID21 = (SELECT MAX(guid)+1 FROM `gameobject`);
SET @GUID1 = (SELECT MAX(guid)+2 FROM `gameobject`);
SET @GUID2 = (SELECT MAX(guid)+3 FROM `gameobject`);
SET @GUID3 = (SELECT MAX(guid)+4 FROM `gameobject`);
SET @GUID4 = (SELECT MAX(guid)+5 FROM `gameobject`);
SET @GUID5 = (SELECT MAX(guid)+6 FROM `gameobject`);
SET @GUID6 = (SELECT MAX(guid)+7 FROM `gameobject`);
SET @GUID7 = (SELECT MAX(guid)+8 FROM `gameobject`);
SET @GUID8 = (SELECT MAX(guid)+9 FROM `gameobject`);
SET @GUID9 = (SELECT MAX(guid)+10 FROM `gameobject`);
SET @GUID10 = (SELECT MAX(guid)+11 FROM `gameobject`);
SET @GUID11 = (SELECT MAX(guid)+12 FROM `gameobject`);
SET @GUID12 = (SELECT MAX(guid)+13 FROM `gameobject`);
SET @GUID13 = (SELECT MAX(guid)+14 FROM `gameobject`);
SET @GUID14 = (SELECT MAX(guid)+15 FROM `gameobject`);
SET @GUID15 = (SELECT MAX(guid)+16 FROM `gameobject`);
SET @GUID16 = (SELECT MAX(guid)+17 FROM `gameobject`);
SET @GUID17 = (SELECT MAX(guid)+18 FROM `gameobject`);
SET @GUID18 = (SELECT MAX(guid)+19 FROM `gameobject`);
SET @GUID19 = (SELECT MAX(guid)+20 FROM `gameobject`);
SET @GUID20 = (SELECT MAX(guid)+21 FROM `gameobject`);
SET @GUID22 = (SELECT MAX(guid)+22 FROM `gameobject`);
SET @GUID23 = (SELECT MAX(guid)+23 FROM `gameobject`);
SET @GUID24 = (SELECT MAX(guid)+24 FROM `gameobject`);
SET @GUID25 = (SELECT MAX(guid)+25 FROM `gameobject`);


-- -- -- -- -- -- -- -- -- --
-- Wolfsbane  (ID: 205367) --
-- -- -- -- -- -- -- -- -- --

-- Wolfsbane - new template --
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(205367, 3, 9883,  'Wolfsbane', 'Gathering', '',35, 0, 0.5, 1702, 34408, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '');

-- Wolfsbane - pool template --
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(@POOL, 12, 'Wolfsbane - Ruins of Gilneas - max 12');

-- Wolfsbane - pool --
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(@GUID1, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID2, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID3, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID4, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID5, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID6, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID7, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID8, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID9, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID10, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID11, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID12, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID13, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID14, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID15, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID16, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID17, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID18, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID19, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID20, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID21, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID22, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID23, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID24, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12'),
(@GUID25, @POOL, 0, 'Wolfsbane - Ruins of Gilneas - max 12');

-- Wolfsbane - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID1, 205367, 0, 1, 1, -1040.69, 1345.86, 34.2381, 4.35915, 0, 0, 0.820346, -0.571868, 300, 0, 0),
(@GUID2, 205367, 0, 1, 1, -1086.8, 1381.68, 31.8368, 3.62486, 0, 0, 0.970948, -0.239289, 300, 0, 0),
(@GUID3, 205367, 0, 1, 1, -1183.43, 1347.54, 27.6734, 4.4134, 0, 0, 0.804536, -0.593904, 300, 0, 0),
(@GUID4, 205367, 0, 1, 1, -1288.96, 1382.86, 26.4478, 1.41987, 0, 0, 0.651786, 0.758403, 300, 0, 0),
(@GUID5, 205367, 0, 1, 1, -1297.35, 1440.18, 20.5888, 2.62939, 0, 0, 0.967385, 0.253312, 300, 0, 0),
(@GUID6, 205367, 0, 1, 1, -1177.79, 1418.93, 28.9881, 3.0437, 0, 0, 0.998802, 0.0489269, 300, 0, 0),
(@GUID7, 205367, 0, 1, 1, -1148.26, 1387.39, 24.5062, 6.26893, 0, 0, 0.00712595, -0.999975, 300, 0, 0),
(@GUID8, 205367, 0, 1, 1, -1125.6, 1375.05, 26.4366, 4.4421, 0, 0, 0.795931, -0.605388, 300, 0, 0),
(@GUID9, 205367, 0, 1, 1, -994.196, 1439.39, 48.3287, 5.13796, 0, 0, 0.541829, -0.840489, 300, 0, 0),
(@GUID10, 205367, 0, 1, 1, -965.51, 1409.04, 54.657, 2.16683, 0, 0, 0.883563, 0.468312, 300, 0, 0),
(@GUID11, 205367, 0, 1, 1, -1027.95, 1279.1, 24.4414, 5.99058, 0, 0, 0.14578, -0.989317, 300, 0, 0),
(@GUID12, 205367, 0, 1, 1, -1109.27, 1273.31, 22.1935, 4.07422, 0, 0, 0.893233, -0.449595, 300, 0, 0),
(@GUID13, 205367, 0, 1, 1, -1111.15, 1304.01, 27.0713, 3.09237, 0, 0, 0.999697, 0.0246069, 300, 0, 0),
(@GUID14, 205367, 0, 1, 1, -1128.08, 1326.82, 26.267, 0.52569, 0, 0, 0.259829, 0.965655, 300, 0, 0),
(@GUID15, 205367, 0, 1, 1, -1106.37, 1346, 28.2705, 5.04723, 0, 0, 0.579388, -0.815052, 300, 0, 0),
(@GUID16, 205367, 0, 1, 1, -1100.7, 1502.44, 38.6474, 5.75411, 0, 0, 0.261464, -0.965213, 300, 0, 0),
(@GUID17, 205367, 0, 1, 1, -1127.99, 1559.12, 36.9549, 2.22217, 0, 0, 0.896181, 0.443688, 300, 0, 0),
(@GUID18, 205367, 0, 1, 1, -1192.89, 1590.19, 25.0245, 5.34963, 0, 0, 0.450011, -0.893023, 300, 0, 0),
(@GUID19, 205367, 0, 1, 1, -1245.64, 1601.4, 20.4297, 2.66907, 0, 0, 0.972219, 0.234071, 300, 0, 0),
(@GUID20, 205367, 0, 1, 1, -1225.29, 1567.54, 24.9521, 0.755835, 0, 0, 0.368986, 0.929435, 300, 0, 0),
(@GUID21, 205367, 0, 1, 1, -1176.53, 1530.23, 32.5821, 2.63608, 0, 0, 0.968227, 0.250074, 300, 0, 0),
(@GUID22, 205367, 0, 1, 1, -1245.23, 1471.74, 21.3613, 3.75056, 0, 0, 0.954002, -0.299801, 300, 0, 0),
(@GUID23, 205367, 0, 1, 1, -1227.35, 1497.58, 24.484, 2.27715, 0, 0, 0.908038, 0.418888, 300, 0, 0),
(@GUID24, 205367, 0, 1, 1, -1204.88, 1447.08, 29.7075, 2.92354, 0, 0, 0.994062, 0.108813, 300, 0, 0),
(@GUID25, 205367, 0, 1, 1, -1208.73, 1423.51, 31.0237, 5.58682, 0, 0, 0.341189, -0.939995, 300, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- 7th Legion Telescope   (ID: 205417) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- 7th Legion Telescope - new template --
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(205417, 22, 9146,  '7th Legion Telescope', '', '',35, 0, 0.6, 84936, 0, 0, 0, 1, 10508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '');

-- 7th Legion Telescope - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(4005104, 205417, 0, 1, 1, -1461.74, 1714.7, 20.7515, 0.961849, 0, 0, 0.462599, 0.886568, 300, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Shoutbox   (ID: 205420) --
-- -- -- -- -- -- -- -- -- --

-- Shoutbox - new template --
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(205420, 5, 7507,  'Shoutbox', '', '',35, 0, 0.5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '');

-- Shoutbox - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(4005112, 205420, 0, 1, 1, -1465.12, 1710.4, 20.7517, 0.904502, 0, 0, 0.436991, 0.899466, 300, 0, 0);
