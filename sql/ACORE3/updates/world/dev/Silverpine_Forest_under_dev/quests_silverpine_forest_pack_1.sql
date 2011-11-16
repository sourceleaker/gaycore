 /* File contains:
- Quest: Honor the Dead (ID: 27180),
- Quest: The Warchief Cometh (ID: 26965),
- Quest: Agony Abounds (ID: 26992),
- Quest: Rise, Forsaken (ID: 27097),
- Quest: It's Only Poisonous if You Ingest It (ID: 27088),
- Phasing: Forsaken High Command (ID: 5369),
- Phasing: North Tide's Beachhead (ID: 928),
- Phasing: North Tide's Run (ID: 305),
- NPC: Veteran Forsaken Trooper (ID: 45197),
- NPC: Portal from Orgrimmar (ID: 44630),
- NPC: Lady Sylvanas Windrunner (ID: 44365),
- NPC: Fallen Human (ID: 44592),
- NPC: Fallen Human (ID: 44593),
- NPC: Garrosh Hellscream (ID: 44629),
- NPC: High Warlord Cromush (ID: 44640),
- NPC: Agatha & Daschla & Arthura fixes,
- NPC: Agatha (ID: 44951),
- NPC: Grand Executor Mortuus(ID: 44615),
- NPC: Hellscream's Elite (ID: 44636),
- Object: Ferocious Doomweed (ID: 205099),
- NPC: Hillsbrad Refugee (ID: 44954, 44966),
- NPC: Forest Ettin (ID: 44367),
- NPC: Bat Handler Maggotbreath (ID: 44825); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (44592,44593,45197,44636,44629,44640,44615,44365,44630,44954,44966) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4461500,4436500,4462900,4495400,4495401,4495402,4495403,4495404,4495405,4496600,4496601,4496602,4496603,4496604,4496605,4463000,4463001,4463002) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (205099) AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 44630) AND `source_type` = 0;
DELETE FROM `creature_text` WHERE `entry` IN (44629,44640,44365);
DELETE FROM `waypoints` WHERE `entry` IN (44640,44608);
DELETE FROM `creature_equip_template` WHERE `entry` IN (45197,44629,44636,44640,44954,44966,4495400,4495401,4495402,4495403,4495404,4495405,4496600,4496601,4496602,4496603,4496604,4496605);
DELETE FROM `creature_template_addon` WHERE `entry` = 45197;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 45197;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 45197;
DELETE FROM `creature_template_addon` WHERE `entry` IN (44608,44951,45104,46034,49213,49044,45583,45609,45625,45802,49128,45105,46033,45775,45761,45584,45610,45626,44609,45318,45473,45555,46032,45106,49129,45314,45585,45611,45627,44610,44608);
DELETE FROM `creature` WHERE `id` IN (44825,44367,44636,44954,44966,44608,44951,45104,46034,49213,49044,45583,45609,45625,45802,49128,45105,46033,45775,45761,45584,45610,45626,44609,45318,45473,45555,46032,45106,49129,45314,45585,45611,45627,44610,44365,44592,44593,44629,44640,44630,44615);
DELETE FROM `creature` WHERE `id` = 39605 AND `map` = 0;
DELETE FROM `spell_area` WHERE `area` IN (5369,928,305);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken High Command (ID: 5369) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken High Command - phasing --
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(59073, 5369, 0, 0, 26965, 0, 946, 2, 1),
(59073, 928, 0, 0, 27073, 0, 946, 2, 1),
(59073, 305, 0, 0, 27073, 0, 946, 2, 1);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Veteran Forsaken Trooper   (ID: 45197) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Veteran Forsaken Trooper - update template --
UPDATE `creature_template` SET `IconName` = 'Pickup', `npcflag` = '16777216', `pickpocketloot` = '45197', `unit_flags` = '131590', `dynamicflags` = '32', `AIName` = 'SmartAI' WHERE `entry` = 45197;

-- Vetaran Forsaken Trooper - equip --
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(45197, 18167, 18166, 0);

-- Veteran Forsaken Trooper - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45197, 0, 0, 0, 1, 0, '');

-- Veteran Forsaken Trooper - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(45197, 84379, 27180, 1, 27180, 3, 0, 0, 1);

-- Veteran Forsaken Trooper - SAI --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(45197,0,0,0,25,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veteran Forsaken Trooper - set passive react state on resp"),
(45197,0,1,0,25,0,100,0,0,0,0,0,75,79153,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veteran Forsaken Trooper - visual death");

-- Veteran Forsaken Trooper - pickpocket loot --
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(45197, 37853, 100, 1, 0, 1, 1);

-- Veteran Forsaken Trooper - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45197, 0, 1, 1, 0, 0, 250.049, 1441.26, 114.996, 0.645772, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 197.497, 1438.72, 113.113, 2.09439, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 134.682, 1501.94, 114.57, 2.46091, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 169.429, 1523.88, 114.592, 1.90241, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 305.227, 1544.43, 116.571, 4.17134, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 195.337, 1481.01, 114.521, 2.96706, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 327.286, 1453.18, 117.112, 2.47837, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45197, 0, 1, 1, 0, 0, 228.467, 1543.09, 118.064, 5.11381, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- ----------- --
--  Variables  --
-- ----------- --
SET @GUID1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @GUID2 = (SELECT MAX(guid)+2 FROM `creature`);
SET @GUID3 = (SELECT MAX(guid)+3 FROM `creature`);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Portal from Orgrimmar   (ID: 44630) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Portal from Orgrimmar - update template --
UPDATE `creature_template` SET `unit_flags` = '33554432', `AIName` = 'SmartAI', `flags_extra` = '2' WHERE `entry` = 44630;

-- Portal from Orgrimmar - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44630, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 55761, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Portal from Orgrimmar - cast Air Revenant Entrance on reset');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Lady Sylvanas Windrunner   (ID: 44365) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Lady Sylvanas Windrunner - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44365;

-- Lady Sylvanas Windrunner - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44365, 0, 0, 'Where is that Orge headed buffoon?', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 1'),
(44365, 1, 0, 'Ah, speak of the devil...', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 2'),
(44365, 2, 0, 'Warchief, so glad you could make it.', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 3'),
(44365, 3, 0, 'With the death of the Lich King, many of the more intelligent Scourge became...unemployed. Those ''fiends,'' as you so delicately put it, are called val''kyr. They are under my command now...', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 4'),
(44365, 4, 0, '...and they are part of the reason that I asked to see you.', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 5'),
(44365, 5, 0, 'Very well, Warchief. I have solved the plight of the Forsaken!', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 6'),
(44365, 6, 0, 'As a race, we Forsaken are unable to procreate.', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 7'),
(44365, 7, 0, 'With the aid of the val''kyr, we are now able to take the corpses of the fallen and create new Forsaken.', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 8'),
(44365, 8, 0, 'Agatha, show the Warchief!', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 9'),
(44365, 9, 0, 'Warchief, without these new Forsaken my people would die out...Out hold upon Gilneas and northern Lordaeron would crumble.', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 10'),
(44365, 10, 0, 'Isn''t it obvious, Warchief? I serve the Horde. ', 0, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 11');

-- Lady Sylvanas Windrunner - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44365, 0, 1, 2, 0, 0, 1381.7, 1041.26, 54.3171, 4.02848, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Lady Sylvanas Windrunner - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44365, 0, 0, 0, 23, 0, 100, 1, 94688, 1, 0, 0, 80, 4436500, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lady Sylvanas Windrunner - call timed actionlist when Q: The Warchief Cometh is activated'),
(4436500, 9, 0, 0, 28, 0, 100, 1, 94688, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - remove aura'),
(4436500, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 1'),
(4436500, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20459, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 1'),
(4436500, 9, 3, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 2'),
(4436500, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44630, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1404.71, 1063.73, 60.56173, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44630, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1393.27, 1021.2, 53.22253, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 6, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44630, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1358.62, 1054.72, 53.12003, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20460, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 2'),
(4436500, 9, 8, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1357.85, 1050.12, 52.99823, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 9, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1359.1, 1046.55, 52.97053, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1360.75, 1048.84, 53.12893, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 11, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0,1360.89, 1051.81, 53.19793, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1363.08, 1048.15, 53.22223, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 13, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1364.08, 1050.84, 53.29163, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 14, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1364.43, 1053.62, 53.29343, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 15, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1366.69, 1050.31, 53.34203, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 16, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1384.33, 1022.04, 53.28123, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 17, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1385.79, 1025.99, 53.22593, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 18, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1386.69, 1023.26, 53.24393, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 19, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1387.9, 1029.71, 53.21853, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 20, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1388.05, 1026.91, 53.20833, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 21, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1388.16, 1020.88, 53.25523, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 22, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1389.79, 1024.51, 53.20833, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 23, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1391.1, 1027.73, 53.20483, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 24, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44629, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1401.2, 1065.524, 60.479, 3.848, 'Sylvanas Windrunner - The Warchief Cometh - spawn Garrosh Hellscream'),
(4436500, 9, 25, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44640, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1403.3, 1071.4242, 60.479, 1.281524, 'Sylvanas Windrunner - The Warchief Cometh - spawn High Warlord Cromush'),
(4436500, 9, 26, 0, 0, 0, 100, 1, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44630, 50, 75, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set orientation to Portal to Orgrimmar'),
(4436500, 9, 27, 0, 0, 0, 100, 1, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set home orientation'),
(4436500, 9, 28, 0, 0, 0, 100, 1, 33000, 33000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44629, 0, 25, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set orientation to Garrosh Hellscream'),
(4436500, 9, 29, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 3'),
(4436500, 9, 30, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20461, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 3'),
(4436500, 9, 31, 0, 0, 0, 100, 1, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set home orientation'),
(4436500, 9, 32, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 4'),
(4436500, 9, 33, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20462, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 4'),
(4436500, 9, 34, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 5'),
(4436500, 9, 35, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 5'),
(4436500, 9, 36, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 6'),
(4436500, 9, 37, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20464, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 6'),
(4436500, 9, 38, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 7'),
(4436500, 9, 39, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20465, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 7'),
(4436500, 9, 40, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 8'),
(4436500, 9, 41, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20466, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 8'),
(4436500, 9, 42, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 9'),
(4436500, 9, 43, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 9'),
(4436500, 9, 44, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 0, 0, 0, 0, 0, 0, 9, 44608, 0, 50, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - this is Agatha moment, her moment!'),
(4436500, 9, 45, 0, 0, 0, 100, 0, 36000, 36000, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 10'),
(4436500, 9, 46, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20468, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 10'),
(4436500, 9, 47, 0, 0, 0, 100, 0, 22000, 20000, 0, 0, 1, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 11'),
(4436500, 9, 48, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20469, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 11');


-- -- -- -- -- -- -- -- -- -- --
-- Fallen Human   (ID: 44592) --
-- -- -- -- -- -- -- -- -- -- --

-- Fallen Human - update template --
UPDATE `creature_template` SET `dynamicflags` = '32', `type_flags` = '0', `AIName` = 'SmartAI' WHERE `entry` = 44592;

-- Fallen Human - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44592, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 75, 79153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fallen Human - visual death");

-- Fallen Human - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44592, 0, 1, 2, 0, 0, 1372.98, 1041.06, 51.381, 0.226893, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1378.16, 1031.71, 51.3717, 0.767945, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1372.58, 1038.07, 50.9666, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1375.42, 1033.81, 50.6522, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1369.65, 1033.67, 50.9668, 0.698132, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1367.33, 1035.38, 51.304, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1370.66, 1030.82, 51.134, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1374.14, 1036.35, 50.9217, 5.53269, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1369.57, 1036.9, 50.998, 0.20944, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1377.3, 1035.93, 51.0961, 3.14159, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44592, 0, 1, 2, 0, 0, 1373.35, 1031.58, 50.6189, 0.959931, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Fallen Human   (ID: 44593) --
-- -- -- -- -- -- -- -- -- -- --

-- Fallen Human - update template --
UPDATE `creature_template` SET `dynamicflags` = '32', `type_flags` = '0', `AIName` = 'SmartAI' WHERE `entry` = 44593;

-- Fallen Human - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44593, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 75, 79153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fallen Human - visual death");

-- Fallen Human - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44593, 0, 1, 2, 0, 0, 1376, 1029.61, 50.9374, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44593, 0, 1, 2, 0, 0, 1369.71, 1040.19, 51.0212, 5.58505, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44593, 0, 1, 2, 0, 0, 1375.2, 1038.58, 51.2451, 4.55531, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44593, 0, 1, 2, 0, 0, 1372.08, 1034.98, 50.8489, 0.890118, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Garrosh Hellscream   (ID: 44629) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Garrosh Hellscream - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI', `InhabitType` = '1', `speed_run` = '0.8', `equipment_id` = '44629' WHERE `entry` = 44629;

-- Garrosh Hellscream - equip --
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES 
(44629, 28773, 0, 0);

-- Garrosh Hellcream - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44629, 0, 0, 'This better be important, Sylvanas. You know how I detest this place and its foul stench. Why have you called for me?', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 1'),
(44629, 1, 0, 'And more importantly, what are those Scourge fiends doing here?', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 2'),
(44629, 2, 0, 'Get on with it, Sylvanas.', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 3'),
(44629, 3, 0, 'What you have done here, Sylvanas... it goes against the laws of nature. Disgusting is the only word I have to describe it.', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 4'),
(44629, 4, 0, 'Have you given any thought to what this means, Sylvanas?', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 5'),
(44629, 5, 0, 'What difference is there between you and the Lich King now?', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 6'),
(44629, 6, 0, 'Watch your clever mouth, bitch.', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 7'),
(44629, 7, 0, 'Cromush, you stay behind and make sure the Banshee Queen is well "guarded." I will be expecting a full report when next we meet.', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 8'),
(44629, 8, 0, 'Remember, Sylvanas, eventually we all have to stand before our maker and face judgment. Your day may come sooner than others''....', 0, 0, 100, 0, 0, 0, 'Garrosh Hellscream 9');

-- Garrosh Hellscream - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44629, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 80, 4462900, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - The Warchief Cometh - call timed actionlist on reset'),
(4462900, 9, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - cast Simple Teleport on reset'),
(4462900, 9, 1, 0, 1, 0, 100, 1, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1379.96, 1043.65, 54.2032, 4.00257, 'Garrosh Hellscream - jump to Dark Lady'),
(4462900, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - cast Simple Teleport on reset'),
(4462900, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1379.96, 1043.65, 54.2032, 4.00257, 'Garrosh Hellscream - jump to Dark Lady'),
(4462900, 9, 4, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44635, 0, 25, 0, 0, 0, 0, 'Garrosh Hellscream - look at Sylvanas'),
(4462900, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 1'),
(4462900, 9, 6, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20496, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 1'),
(4462900, 9, 7, 0, 0, 0, 100, 1, 16000, 16000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - set home orientation'),
(4462900, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 2'),
(4462900, 9, 9, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20497, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 2'),
(4462900, 9, 10, 0, 0, 0, 100, 1, 500, 500, 0, 0, 11, 48349, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote point'),
(4462900, 9, 11, 0, 0, 0, 100, 1, 30000, 30000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 3'),
(4462900, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 3'),
(4462900, 9, 13, 0, 0, 0, 100, 1, 50000, 50000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 4'),
(4462900, 9, 14, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20499, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 4'),
(4462900, 9, 15, 0, 0, 0, 100, 1, 28000, 28000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 5'),
(4462900, 9, 16, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 5'),
(4462900, 9, 17, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 6'),
(4462900, 9, 18, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20501, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 6'),
(4462900, 9, 19, 0, 0, 0, 100, 1, 12000, 12000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44635, 0, 25, 0, 0, 0, 0, 'Garrosh Hellscream - loot at Sylvanas'),
(4462900, 9, 20, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 7'),
(4462900, 9, 21, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20502, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 7'),
(4462900, 9, 22, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 48349, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote point'),
(4462900, 9, 23, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44640, 0, 25, 0, 0, 0, 0, 'Garrosh Hellscream - look at Cromush'),
(4462900, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 8'),
(4462900, 9, 25, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20503, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 8'),
(4462900, 9, 26, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 11, 79506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote talk'),
(4462900, 9, 27, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 11, 79506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote talk'),
(4462900, 9, 28, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44635, 0, 25, 0, 0, 0, 0, 'Garrosh Hellscream - loot at Sylvanas'),
(4462900, 9, 29, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 9'),
(4462900, 9, 30, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20504, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 9'),
(4462900, 9, 31, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 79506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote talk'),
(4462900, 9, 32, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 79506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote talk'),
(4462900, 9, 33, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 44629, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - walk start'),
(4462900, 9, 34, 0, 40, 0, 100, 0, 6, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - despawn after reached last waypoint');

-- Garrosh Hellscream - waypoints --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- High Warlord Cromush (ID: 44640) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- High Warlord Cromush - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI', `equipment_id` = '44640' WHERE `entry` = 44640;

-- High Warlord Cromush - equip --
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES 
(44640, 18871, 0, 0);

-- High Warlord Cromush - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44640, 0, 0, 'FOR THE HORDE!!!', 1, 0, 100, 0, 0, 0, 'High Warlord Cromush 1'),
(44640, 1, 0, 'ABBERATION!', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 2'),
(44640, 2, 0, 'As you command, Warchief!', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 3'),
(44640, 3, 0, 'Be warned, Belmont. If I find out that you''re lying...', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 4'),
(44640, 4, 0, 'For the Horde...', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 5'),
(44640, 5, 0, 'The coward...killed them...poisoned...me...', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 6'),
(44640, 6, 0, 'Then I''m sure you won''t mind if I accompany you on your mission.', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 7'),
(44640, 7, 0, 'Unless I''m mistaken, the Warchief explicity forbids using the full plague, no matter the circumstance.', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 8'),
(44640, 8, 0, 'You''ll see the Warchief''s wrath firsthand.', 0, 0, 100, 0, 0, 0, 'High Warlord Cromush 9');

-- High Warlord Cromush - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44640, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Warlord Cromush - cast Simple Teleport on reset');

-- High Warlord Cromush - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(44640, 0, 1375.83, 1046.41, 53.303, 'High Warlord Cromush 1'),
(44640, 1, 1370.285, 1034.875, 53.18237, 'High Warlord Cromush 2'),
(44640, 2, 1366.535, 1021.625, 53.18237, 'High Warlord Cromush 3'),
(44640, 3, 1376.535, 1015.625, 53.93237, 'High Warlord Cromush 4'),
(44640, 4, 1390.785, 1022.125, 59.68237, 'High Warlord Cromush 5'),
(44640, 5, 1404.535, 1045.375, 60.43237, 'High Warlord Cromush 6'),
(44640, 6, 1403.535, 1062.625, 60.18237, 'High Warlord Cromush 7');


-- -- -- -- -- -- -- -- -- -- --
-- Agatha & Daschla & Arthura --
-- -- -- -- -- -- -- -- -- -- --

-- Agatha & Daschla & Arthura - update template --
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `entry` IN (44608,44951,45104,46034,49213,49044,45583,45609,45625);
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `entry` IN (45802,49128,45105,46033,45775,45761,45584,45610,45626,44609);
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `entry` IN (45318,45473,45555,46032,45106,49129,45314,45585,45611,45627,44610);

-- Agatha - update template --
UPDATE `creature_template` SET `movementId` = '0' WHERE `entry` = 44608;

-- Agatha & Daschla & Arthura - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44608, 0, 0, 50331648, 1, 0, ''),
(44951, 0, 0, 50331648, 1, 0, ''),
(45104, 0, 0, 50331648, 1, 0, ''),
(46034, 0, 0, 50331648, 1, 0, ''),
(49213, 0, 0, 50331648, 1, 0, ''),
(49044, 0, 0, 50331648, 1, 0, ''),
(45583, 0, 0, 50331648, 1, 0, ''),
(45609, 0, 0, 50331648, 1, 0, ''),
(45625, 0, 0, 50331648, 1, 0, ''),
(45802, 0, 0, 50331648, 1, 0, ''),
(49128, 0, 0, 50331648, 1, 0, ''),
(45105, 0, 0, 50331648, 1, 0, ''),
(46033, 0, 0, 50331648, 1, 0, ''),
(45775, 0, 0, 50331648, 1, 0, ''),
(45761, 0, 0, 50331648, 1, 0, ''),
(45584, 0, 0, 50331648, 1, 0, ''),
(45610, 0, 0, 50331648, 1, 0, ''),
(45626, 0, 0, 50331648, 1, 0, ''),
(44609, 0, 0, 50331648, 1, 0, ''),
(45318, 0, 0, 50331648, 1, 0, ''),
(45473, 0, 0, 50331648, 1, 0, ''),
(45555, 0, 0, 50331648, 1, 0, ''),
(46032, 0, 0, 50331648, 1, 0, ''),
(45106, 0, 0, 50331648, 1, 0, ''),
(49129, 0, 0, 50331648, 1, 0, ''),
(45314, 0, 0, 50331648, 1, 0, ''),
(45585, 0, 0, 50331648, 1, 0, ''),
(45611, 0, 0, 50331648, 1, 0, ''),
(45627, 0, 0, 50331648, 1, 0, ''),
(44610, 0, 0, 50331648, 1, 0, '');

-- Agatha & Daschla & Arthura - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44608, 0, 1, 2, 0, 0, 1364.1, 1028.6, 58.4662, 0.715585, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44608, 0, 1, 1, 0, 0, 1364.02, 1028.54, 55.9914, 0.855211, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44609, 0, 1, 2, 0, 0, 1365.73, 1024.98, 57.0244, 1.13446, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44610, 0, 1, 2, 0, 0, 1360.81, 1030.57, 56.874, 0.645772, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49044, 0, 1, 1, 0, 0, 1700.05, 1699.77, 135.463, 1.762, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49128, 0, 1, 1, 0, 0, 1757.88, 1582, 114.622, 1.72788, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49129, 0, 1, 1, 0, 0, 1725.54, 1681.13, 139.093, 4.90376, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Agatha - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(44608, 0, 1364.064, 1028.712, 71.34, 'Agatha 1'),
(44608, 1, 135.42, 1033.81, 50.6522, 'Agatha 2'),
(44608, 2, 1364.1, 1028.6, 58.466, 'Agatha 3');


-- -- -- -- -- -- -- -- --
-- Agatha   (ID: 44951) --
-- -- -- -- -- -- -- -- --

-- Agatha - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44951;

-- http://www.wowhead.com/spell=83993 --


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Grand Executor Mortuus  (ID: 44615) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Grand Executor Mortuus - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44615;

-- Grand Executor Mortuus - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44615, 0, 1, 3, 0, 0, 1383.47, 1038.86, 54.3172, 3.89889, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Grand Executor Mortuus - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44615, 0, 0, 0, 19, 0, 100, 0, 26965, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - set event phase 2 when The Warchief Cometh is activated'),
(44615, 0, 1, 0, 19, 2, 100, 0, 26965, 0, 0, 0, 80, 4461500, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - call timed actionlist'),
(44615, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - set event phase 1 on reset'),
(4461500, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 75, 94688, 0, 0, 0, 0, 0, 9, 44365, 0, 25, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - information for Sylvanas the quest is activated'),
(4461500, 9, 1, 0, 0, 0, 100, 1, 192000, 192000, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - return to event phase 1 after end of event');


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Hellscream's Elite   (ID: 44636) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Hellscream's Elite - update template --
UPDATE `creature_template` SET `minlevel` = '85', `maxlevel` = '85', `faction_A` = '29', `faction_H` = '29', `AIName` = 'SmartAI', `equipment_id` = '44636' WHERE `entry` = 44636;

-- Hellscream's Elite - equip --
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES 
(44636, 18831, 0, 0);

-- Hellscream's Elite - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44636, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellscream''s Elite - cast Simple Teleport on reset');


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ferocious Doomweed  (ID: 205099) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Need small fix --

-- Ferocious Doomweed - update template --
UPDATE `gameobject_template` SET `castBarCaption` = 'Gathering', `questItem1` = '60741', `data3` = '1', `data14` = '24982', `AIName`='SmartGameObjectAI' WHERE `entry` = 205099;

-- Ferocious Doomweed - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(205099, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 75, 83523, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Ferocious Doomweed - add aura Doomweed Haze to player');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Hillsbrad Refugee   (ID: 44954, 44966) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- NEED SNIFFS --

-- Hillsbrad Refugee - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI', `equipment_id` = '0', `flags_extra` = '64' WHERE `entry` IN (44954,44966);

-- Hillsbrad Refugee - equip --
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES 
(4495400, 3367, 0, 0),
(4495401, 13609, 0, 0),
(4495402, 13610, 0, 0),
(4495403, 25587, 13604, 0),
(4495404, 1906, 0, 0),
(4495405, 2703, 0, 0),
(4496600, 3346, 0, 0),
(4496601, 13609, 0, 0),
(4496602, 13610, 0, 0),
(4496603, 25587, 13604, 0),
(4496604, 1906, 0, 0),
(4496605, 2703, 0, 0);

-- Hillsbrad Refugee - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44954, 0, 0, 0, 25, 0, 100, 1, 0, 0, 0, 0, 87, 4495400, 4495401, 4495402, 4495403, 4495404, 4495405, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip on spawn'),
(44954, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 87104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - cast Might of Lordaeron'),
(44954, 0, 2, 0, 8, 0, 100, 0, 83993, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - Rise Forsaken - ?'),
(4495400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 1'),
(4495401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495401, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 2'),
(4495402, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 3'),
(4495403, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 4'),
(4495404, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 5'),
(4495405, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4495405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 6'),
(44966, 0, 0, 0, 25, 0, 100, 1, 0, 0, 0, 0, 87, 4496600, 4496601, 4496602, 4496603, 4496604, 4496605, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip on spawn'),
(44966, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 87104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - cast Might of Lordaeron'),
(44966, 0, 2, 0, 8, 0, 100, 0, 83993, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - Rise Forsaken - ?'),
(4496600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 1'),
(4496601, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496601, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 2'),
(4496602, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496602, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 3'),
(4496603, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496603, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 4'),
(4496604, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496604, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 5'),
(4496605, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 4496605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Refugee - random equip 6');

-- Hillsbrad Refugee - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44954, 0, 1, 1, 0, 0, 1022.21, 725.2, 60.24043, 0.1047198, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 1022.32, 728.483, 59.41353, 6.108652, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 1077.506, 713.2042, 46.97196, 6.029072, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 1078.26, 716.108, 46.21903, 6.029399, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 733.7131, 761.834, 36.5505, 0.4112615, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 738.2366, 748.5332, 36.5505, 0.5267295, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 747.786, 670.804, 47.10512, 5.597707, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 749.6851, 673.1263, 46.84157, 5.599968, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 818.667, 693.582, 53.72653, 3.857178, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 823.939, 681.715, 53.66883, 3.089233, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 876.24, 672.118, 55.34103, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 912.061, 693.785, 53.69373, 3.159046, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 914.627, 697.276, 54.19193, 1.518436, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 917.993, 663.144, 53.56036, 5.276095, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 944.477, 694.101, 59.36703, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 946.639, 696.479, 59.36053, 1.58825, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 948.477, 634.106, 53.43565, 5.646388, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 950.472, 714.063, 59.36703, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 950.566, 627.721, 53.61423, 1.48353, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 952.5405, 711.9014, 59.39069, 5.426266, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44954, 0, 1, 1, 0, 0, 977.925, 630.656, 53.40493, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1003.59, 735.797, 59.34833, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1003.943, 733.0439, 59.26728, 3.932724, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1005.644, 735.7538, 59.26728, 0.1093907, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1047.187, 727.5039, 51.94195, 0.3950165, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1047.412, 725.4969, 52.44451, 4.827434, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 1064.744, 740.7194, 45.55227, 2.808105, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 718.9749, 759.6835, 36.5505, 6.219963, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 739.304, 714.991, 37.0382, 1.689579, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 771.759, 685.523, 46.95479, 6.273988, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 795.59, 588.38, 34.03973, 5.189848, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 798.2545, 589.7586, 34.07306, 5.191073, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 821.964, 692.889, 53.44923, 3.979351, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 826.406, 683.024, 53.70383, 2.565634, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 855.63, 680.262, 53.60773, 2.6529, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 879.9598, 704.0951, 55.64228, 1.019666, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 912.052, 680.637, 53.63503, 3.193953, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 914.6962, 714.8013, 55.21833, 1.599474, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 944.193, 679.759, 59.36093, 3.281219, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 944.83, 681.802, 59.34833, 3.228859, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 964.486, 587.571, 53.59895, 4.133756, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 965.7565, 724.0196, 59.6828, 4.835153, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 966.547, 728.299, 59.36703, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 967.413, 601.453, 53.8163, 3.814456, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 984.384, 740.512, 59.44113, 3.263766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 985.979, 744.052, 60.18213, 1.42071, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44966, 0, 1, 1, 0, 0, 990.2358, 607.316, 55.0663, 1.765944, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Forest Ettin   (ID: 44367) --
-- -- -- -- -- -- -- -- -- -- --

-- Forest Ettin - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44367, 0, 1, 1, 0, 0, 860.453, 1547.99, 33.4494, 4.66367, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Bat Handler Maggotbreath   (ID: 44825) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Bat Handler Maggotbreath - new template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44825;

-- Bat Hangler Maggotbreath - gossip menu --

-- Bat Hangler Maggotbreath - gossip text --

-- Bat Handler Maggotbreath - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44825, 0, 0, 'You better bring that bat back in one piece, $N!', 0, 0, 100, 0, 0, 0, 'Bat Hangler Maggotbreath 1');

-- Bat Handler Maggotbreath - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44825, 0, 1, 3, 0, 0, 1422.931, 1017.771, 52.64933, 2.86234, 120, 0, 0, 0, 0, 0,0, 0, 0, 0);
