 /* File contains:
- Apothecary Initiate (ID: 44786),
- Apothecary Witherbloom (ID: 44778),
- High Apothecary Shana T'veen (ID: 44784),
- Deathstalker Commander Belmont (ID: 44789),
- Deathstalker (ID: 44790),
- Apothecary Marry (ID: 45490),
- Ambermill Watcher (ID: 1888),
- Ambermill Witchalok (ID: 1889),
- Doomskull (ID: 46846),
- Wolfoid (ID: 46845),
- Ambermill Warder (ID: 1913),
- Ambermill Magister (ID: 1914),
- Ambermill Miner (ID: 3578)
- Ambermill Brewmaster (ID: 3577)
- White Chicken (ID: 44338),
- Lord Godfrey (ID: 44369),
- Hillsbrad Worgen (ID: 45270),
- Forsaken Vanguard (ID: 45280),
- Worgen Rebel (ID: 45292), 
- Deathstalker Commander Belmont (ID: 45312),
- Deathstalker (ID: 45313),
- Forward Commander Onslaught (ID: 45315),
- Abomination (ID: 45345),
- Highlands Fox (ID: 45335),
- Gilnean Hound (ID: 45367),
- Worgen Rusher (ID: 45375),
- Forsaken Sharpshooter (ID: 45376),
- Captain Rutsak (ID: 45389),
- Veteran Forsaken Trooper (ID: 45225),
- Master Forteski (ID: 45228),
- High Commander Halford Wyrmbane (ID: 45425),
- Cowering Trooper (ID: 45910), 
- Forsaken Trooper (ID: 46054),
- Portal to Dalaran Crater (ID: 45731),
- Portal to the Sepulcher (ID: 45732),
- Relios the Relic Keeper (ID: 45734),
- Aquarius the Unbound (ID: 47009),
- Gilneas Camera 01 (ID: 45427),
- Gilneas Camera 01 (Target), (ID: 45430),
- Lady Sylvanas Windrunner (ID: 45525),
- Lady Sylvanas Windrunner (ID: 45605),
- High Warlord Cromush (ID: 45612),
- Lord Godfrey (ID: 45556),
- Deathstalker Commander Belmont (ID: 45557),
- Lord Godfrey (ID: 45576),
- Baron Ashbury (ID: 45577),
- Lord Walden (ID: 45578),
- Dark Ranger (ID: 45587),
- Dreadguard (ID: 45588),
- Orc Sea Dog (ID: 45589),
- High Warlord Cromush (ID: 45593),
- Forsaken Apothecary (ID: 45594),
- Admiral Hatchet (ID: 45598),
- Warlord Torok (ID: 45599),
- Orc Demolisher (ID: 45600),
- Forsaken Catapult (ID: 45601) & Forsaken Blightspreader (ID: 45602),
- Forsaken Trooper (ID: 45603),
- Forsaken Trooper (ID: 45604),
- Lord Godfrey (ID: 45606),
- Baron Ashbury (ID: 45607),
- Lord Walden (ID: 45608),
- Lady Sylvanas Windrunner (ID: 45617),
- Dark Ranger (ID: 45628),
- Dreadguard (ID: 45629),
- Orc Sea Dog (ID: 45630),
- High Warlord Cromush (ID: 45631),
- Forsaken Apothecary (ID: 45632),
- Admiral Hatchet  (ID: 45633),
- Forsaken Catapult (ID: 45636) & Forsaken Blightspreader (ID: 45637),
- Forsaken Trooper (ID: 45638),
- Forsaken Trooper (ID: 45639); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `creature_equip_template` WHERE `entry` IN (44786,44778,44784,44789,44790,45490,45425,45910,46054,45731,45733,45734,45732,47009,45427,45430,45557,45525,45605,45612,45556,45576,45577,45578,45587,45588,45593,45589,45594,45598,45599,45600,45601,45602,45603,45604,45606,45607,45608,45617,45628,45629,45630,45631,45632,45633,45634,45635,45636,45637,45638,45639);
DELETE FROM `creature_template_addon` WHERE `entry` IN (44786,44778,44784,44789,44790,45490,45425,45910,46054,45731,45733,45734,45732,47009,45427,45430,45557,45525,45605,45612,45556,45576,45577,45578,45587,45588,45593,45589,45594,45598,45599,45600,45601,45602,45603,45604,45606,45607,45608,45617,45628,45629,45630,45631,45632,45633,45634,45635,45636,45637,45638,45639);
DELETE FROM `creature` WHERE `id` IN (44786,44778,44784,44789,44790,45490,45425,45910,46054,45731,45733,45734,45732,47009,45427,45430,45557,45525,45605,45612,45556,45576,45577,45578,45587,45588,45593,45589,45594,45598,45599,45600,45601,45602,45603,45604,45606,45607,45608,45617,45628,45629,45630,45631,45632,45633,45634,45635,45636,45637,45638,45639);
DELETE FROM `creature_template` WHERE `entry` IN (44786,44778,44784,44789,44790,45490,45425,45910,46054,45731,45733,45734,45732,47009,45427,45430,45557,45525,45605,45612,45556,45576,45577,45578,45587,45588,45593,45589,45594,45598,45599,45600,45601,45602,45603,45604,45606,45607,45608,45617,45628,45629,45630,45631,45632,45633,45634,45635,45636,45637,45638,45639);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Initiate  (ID: 44786) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Initiate - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44786, 0, 0, 0, 0, 0, 34073, 34074, 34075, 34076, 'Apothecary Initiate', '', '', 0, 8, 11, 0, 118, 118, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44786, 0, 0, '', 0);

-- Apothecary Initiate - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44786, 0, 0, 0);

-- Apothecary Initiate - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44786, 0, 0, 0, 0, 0, '');

-- Apothecary Initiate - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44786, 0, 1, 4, 0, 0, 1410.63, 1102.33, 60.56173, 1.500983, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1420.84, 1066.17, 60.56173, 5.288348, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1422.59, 1083.07, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1423.34, 1085.75, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1424.34, 1080.86, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1425.08, 1083.23, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.2, 1078.54, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.3, 1085.5, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.77, 1081.06, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1427.63, 1083.51, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1428.86, 1079.09, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1429.33, 1081.73, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1443.92, 1079.12, 60.56133, 0.9250245, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Witherbloom  (ID: 44778) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Witherbloom - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44778, 0, 0, 0, 0, 0, 34071, 0, 0, 0, 'Apothecary Witherbloom', '', '', 0, 12, 12, 0, 118, 118, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44778, 0, 0, '', 0);

-- Apothecary Witherbloom - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44778, 2716, 3756, 0);

-- Apothecary Witherbloom - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44778, 0, 0, 0, 1, 69, '');

-- Apothecary Witherbloom - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44778, 0, 1, 4, 0, 0, 1409.33, 1065.86, 60.56173, 0.2268928, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- High Apothecary Shana T'veen  (ID: 44784) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- High Apothecary Shana T'veen - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44784, 0, 0, 0, 0, 0, 34072, 0, 0, 0, 'High Apothecary Shana T''veen', '', '', 0, 14, 14, 0, 118, 118, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44784, 0, 0, '', 0);

-- High Apothecary Shana T'veen - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44784, 12750, 3756, 0);

-- High Apothecary Shana T'veen - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44784, 0, 0, 0, 1, 0, '');

-- High Apothecary Shana T'veen  - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44784, 0, 1, 1, 0, 0, 1431.48, 1086.86, 60.56173, 3.752458, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Commander Belmont   (ID: 44789) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Commander Belmont - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44789, 0, 0, 0, 0, 0, 34077, 0, 0, 0, 'Deathstalker Commander Belmont', '', '', 0, 18, 18, 0, 118, 118, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44789, 0, 0, '', 0);

-- Deathstalker Commander Belmont - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44789, 0, 0, 0);

-- Deathstalker Commander Belmont - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44789, 0, 0, 0, 0, 68, '');

-- Deathstalker Commander Belmont - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44789, 0, 1, 1, 0, 0, 1415.23, 1010.15, 52.80423, 2.286381, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Deathstalker   (ID: 44790) --
-- -- -- -- -- -- -- -- -- -- --

-- Deathstalker - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44790, 0, 0, 0, 0, 0, 2685, 0, 0, 0,  'Deathstalker',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44790, 0, 0, 0);

-- Deathstalker - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44790, 0, 0, 0, 0, 68, '');

-- Deathstalker - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44790, 0, 1, 1, 0, 0, 1412.63, 1011.4, 52.95393, 5.77704, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 1, 0, 0, 1415.05, 1008.17, 52.75253, 2.146755, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 1, 0, 0, 1415.5, 1012.99, 52.88033, 4.468043, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 1, 0, 0, 1417.19, 1009.78, 52.70093, 2.268928, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Marry  (ID: 45490) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Marry - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(45490, 0, 0, 0, 0, 0, 34075, 0, 0, 0, 'Apothecary Marry', 'Trade Supplies', '', 0, 12, 12, 0, 118, 118, 128, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 45490, 0, 0, '', 0);

-- Apothecary Marry - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(45490, 0, 0, 0);

-- Apothecary Marry - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45490, 0, 0, 0, 0, 0, '');

-- Apothecary Marry - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45490, 0, 1, 1, 0, 0, 1422.57, 1097.31, 60.56173, 4.485496, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Apothecary Marry - vendor --
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(45490, 0, 2320, 0, 0, 0),
(45490, 0, 2321, 0, 0, 0),
(45490, 0, 2324, 0, 0, 0),
(45490, 0, 2605, 0, 0, 0),
(45490, 0, 2604, 0, 0, 0),
(45490, 0, 2880, 0, 0, 0),
(45490, 0, 2901, 0, 0, 0),
(45490, 0, 3371, 0, 0, 0),
(45490, 0, 4289, 0, 0, 0),
(45490, 0, 5956, 0, 0, 0),
(45490, 0, 6256, 0, 0, 0),
(45490, 0, 6260, 0, 0, 0),
(45490, 0, 2678, 0, 0, 0),
(45490, 0, 6530, 0, 0, 0),
(45490, 0, 6217, 0, 0, 0),
(45490, 0, 6529, 0, 0, 0),
(45490, 0, 7005, 0, 0, 0),
(45490, 0, 39505, 0, 0, 0),
(45490, 0, 39354, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Watcher  (ID: 1888) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Watcher - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1888, 0, 0, 0, 45756, 0, 3566, 3567, 0, 0, 'Ambermill Watcher', '', '', 0, 17, 18, 0, 76, 76, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1888, 1888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 1.3, 1, 0, 7293, 0, 0, 0, 0, 0, 0, 1, 1888, 0, 0, '', 0);

-- Ambermill Watcher - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(1888, 1907, 0, 0);

-- Ambermill Watcher - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1888, 0, 0, 0, 1, 0, '');

-- Ambermill Watcher - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1888, 0, 0, 0, 16, 0, 100, 0, 1888, 1, 0, 0, 11, 48168, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Watcher - cast Inner Fire'),
(1888, 0, 1, 0, 2, 0, 100, 1, 50, 50, 0, 0, 11, 11640, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Watcher - cast Renew on self'),
(1888, 0, 2, 0, 14, 0, 100, 0, 200, 10, 10000, 10000, 11, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Watcher - cast Renew on wounded ally'),
(1888, 0, 3, 0, 0, 0, 100, 0, 2000, 3000, 6000, 8000, 11, 14140, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Watcher - cast Holy Fire on enemy');

-- Ambermill Watcher - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1888, 0, 1, 1, 0, 0, 88.629, 744.229, 61.7521, 3.3752, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 62.1989, 767.244, 63.8601, 4.17134, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 51.7442, 687.14, 63.8624, 2.15615, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -1.1166, 754.995, 63.7725, 6.00936, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -40.2474, 803.025, 63.3324, 0.949752, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 20.9485, 715.504, 63.7214, 0.862618, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 89.7352, 712.978, 60.4226, 4.74901, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 12.3213, 665.348, 67.72, 0.123386, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 43.9987, 742.928, 63.7948, 3.69211, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 5.50446, 789.691, 64.0431, 5.56716, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 35.8256, 784.977, 64.9515, 1.21437, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, 68.6201, 772.337, 64.0461, 5.7731, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -115.605, 736.628, 64.6895, 4.17457, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -65.625, 734.375, 66.8521, 4.22428, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -445.433, 818.329, 97.4096, 4.64305, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -474.193, 809.023, 95.7396, 1.35425, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -589.36, 976.123, 89.6548, 3.18497, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -495.4, 777.425, 91.5306, 3.15074, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -472.702, 793.781, 94.9056, 0.930005, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -388.491, 819.671, 97.9254, 3.47256, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -537.096, 1023.58, 98.2979, 4.86718, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -457.812, 879.688, 99.0823, 1.66156, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -566.525, 937.234, 89.5777, 2.23759, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -566.052, 880.626, 88.9518, 2.19701, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -490.764, 849.439, 94.6555, 4.15018, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -481.483, 825.465, 95.7536, 0.314159, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -497.404, 801.064, 92.4144, 4.1711, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -494.516, 832.085, 93.8851, 2.97388, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -575.6, 840.105, 90.9519, 4.73389, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -462.53, 927.437, 96.266, 3.57933, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -469.09, 953.318, 91.9062, 4.05506, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -518.141, 1099.53, 81.3403, 5.62445, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -506.316, 1023.98, 93.78, 1.40597, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -415.372, 829.486, 94.8417, 3.5738, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1888, 0, 1, 1, 0, 0, -427.931, 911.598, 107.515, 3.9194, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Watcher - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1888, 414, 8.9, 1, 0, 1, 1),
(1888, 789, 0.08, 1, 0, -789, 1),
(1888, 858, 2.4, 1, 0, 1, 1),
(1888, 954, 0.5935, 1, 0, -954, 1),
(1888, 1179, 6.1, 1, 0, 1, 1),
(1888, 1206, 0.1473, 1, 0, 1, 1),
(1888, 1210, 0.2633, 1, 0, 1, 1),
(1888, 1738, 0.3, 1, 0, 1, 1),
(1888, 1739, 0.2, 1, 0, 1, 1),
(1888, 1740, 0.3, 1, 0, 1, 1),
(1888, 1742, 0.3, 1, 0, 1, 1),
(1888, 1743, 0.1, 1, 0, 1, 1),
(1888, 1744, 0.3, 1, 0, 1, 1),
(1888, 1745, 0.3, 1, 0, 1, 1),
(1888, 1764, 0.2, 1, 0, 1, 1),
(1888, 1766, 0.3, 1, 0, 1, 1),
(1888, 1767, 0.2, 1, 0, 1, 1),
(1888, 1768, 0.3, 1, 0, 1, 1),
(1888, 1769, 0.3, 1, 0, 1, 1),
(1888, 1770, 0.2, 1, 0, 1, 1),
(1888, 1787, 0.3, 1, 0, 1, 1),
(1888, 1788, 0.3, 1, 0, 1, 1),
(1888, 1789, 0.3, 1, 0, 1, 1),
(1888, 1791, 0.2, 1, 0, 1, 1),
(1888, 1792, 0.5, 1, 0, 1, 1),
(1888, 1793, 0.2, 1, 0, 1, 1),
(1888, 1794, 0.3, 1, 0, 1, 1),
(1888, 1811, 0.4, 1, 0, 1, 1),
(1888, 1812, 0.2, 1, 0, 1, 1),
(1888, 1813, 0.7, 1, 0, 1, 1),
(1888, 1814, 0.3, 1, 0, 1, 1),
(1888, 1815, 0.5, 1, 0, 1, 1),
(1888, 1817, 0.7, 1, 0, 1, 1),
(1888, 2078, 0.2, 1, 0, 1, 1),
(1888, 2079, 0.1, 1, 0, 1, 1),
(1888, 2216, 0.1, 1, 0, 1, 1),
(1888, 2217, 0.1, 1, 0, 1, 1),
(1888, 2406, 0.0403, 1, 0, -2406, 1),
(1888, 2409, 0.05, 1, 0, 1, 1),
(1888, 2455, 1.4, 1, 0, 1, 1),
(1888, 2555, 0.1, 1, 0, 1, 1),
(1888, 2589, 35, 1, 0, 1, 3),
(1888, 2592, 41.6, 1, 0, 1, 2),
(1888, 2601, 0.0627, 1, 0, -2601, 1),
(1888, 2764, 0.6, 1, 0, 1, 1),
(1888, 2780, 0.7, 1, 0, 1, 1),
(1888, 2781, 0.5, 1, 0, 1, 1),
(1888, 2883, 0.05, 1, 0, 1, 1),
(1888, 2970, 0.05, 1, 0, 1, 1),
(1888, 2973, 0.2, 1, 0, 1, 1),
(1888, 2974, 0.1, 1, 0, 1, 1),
(1888, 2981, 0.28, 1, 0, -2981, 1),
(1888, 2982, 0.1, 1, 0, 1, 1),
(1888, 2983, 0.05, 1, 0, 1, 1),
(1888, 2984, 0.1, 1, 0, 1, 1),
(1888, 2985, 0.05, 1, 0, 1, 1),
(1888, 2987, 0.1, 1, 0, 1, 1),
(1888, 2988, 0.93, 1, 0, -2988, 1),
(1888, 2992, 0.1, 1, 0, 1, 1),
(1888, 3184, 0.05, 1, 0, 1, 1),
(1888, 3195, 0.2, 1, 0, 1, 1),
(1888, 3196, 0.2, 1, 0, 1, 1),
(1888, 3205, 0.2, 1, 0, 1, 1),
(1888, 3211, 0.05, 1, 0, 1, 1),
(1888, 3376, 0.3, 1, 0, 1, 1),
(1888, 3377, 0.3, 1, 0, 1, 1),
(1888, 3394, 0.0045, 1, 0, 1, 1),
(1888, 3396, 0.0045, 1, 0, -3396, 1),
(1888, 3645, 0.05, 1, 0, 1, 1),
(1888, 3655, 0.05, 1, 0, 1, 1),
(1888, 4292, 0.05, 1, 0, 1, 1),
(1888, 4293, 0.1, 1, 0, 1, 1),
(1888, 4346, 0.05, 1, 0, 1, 1),
(1888, 4567, 0.3, 1, 0, 1, 1),
(1888, 4571, 0.1, 1, 0, 1, 1),
(1888, 4575, 0.2, 1, 0, 1, 1),
(1888, 4694, 0.5, 1, 0, -4694, 1),
(1888, 4695, 0.1, 1, 0, 1, 1),
(1888, 4697, 0.05, 1, 0, 1, 1),
(1888, 4698, 0.05, 1, 0, 1, 1),
(1888, 4699, 0.1, 1, 0, 1, 1),
(1888, 4701, 0.05, 1, 0, 1, 1),
(1888, 5110, 0.05, 1, 0, 1, 1),
(1888, 5207, 0.05, 1, 0, 1, 1),
(1888, 5212, 0.1, 1, 0, 1, 1),
(1888, 5573, 0.05, 1, 0, 1, 1),
(1888, 5574, 0.05, 1, 0, 1, 1),
(1888, 6378, 0.1, 1, 0, 1, 1),
(1888, 6379, 0.05, 1, 0, 1, 1),
(1888, 6538, 0.05, 1, 0, 1, 1),
(1888, 6539, 0.05, 1, 0, 1, 1),
(1888, 6540, 0.2, 1, 0, 1, 1),
(1888, 6541, 0.05, 1, 0, 1, 1),
(1888, 6545, 0.1, 1, 0, 1, 1),
(1888, 6546, 0.1, 1, 0, 1, 1),
(1888, 6547, 0.2, 1, 0, 1, 1),
(1888, 6548, 0.2, 1, 0, 1, 1),
(1888, 6551, 0.1, 1, 0, 1, 1),
(1888, 6552, 0.05, 1, 0, 1, 1),
(1888, 6553, 0.1, 1, 0, 1, 1),
(1888, 6554, 0.2, 1, 0, 1, 1),
(1888, 6557, 0.05, 1, 0, 1, 1),
(1888, 6559, 0.1, 1, 0, 1, 1),
(1888, 6562, 0.05, 1, 0, 1, 1),
(1888, 6563, 0.05, 1, 0, 1, 1),
(1888, 6581, 0.1, 1, 0, 1, 1),
(1888, 6585, 0.2, 1, 0, 1, 1),
(1888, 6716, 0.05, 1, 0, 1, 1),
(1888, 7293, -100, 1, 0, 1, 1),
(1888, 7554, 0.2, 1, 0, 1, 1),
(1888, 7608, 0.05, 1, 0, 1, 1),
(1888, 9775, 0.05, 1, 0, 1, 1),
(1888, 9777, 0.05, 1, 0, 1, 1),
(1888, 9778, 0.05, 1, 0, 1, 1),
(1888, 9779, 0.1, 1, 0, 1, 1),
(1888, 9780, 0.05, 1, 0, 1, 1),
(1888, 9785, 0.1, 1, 0, 1, 1),
(1888, 9788, 0.1, 1, 0, 1, 1),
(1888, 9789, 0.1, 1, 0, 1, 1),
(1888, 10316, 0.05, 1, 0, 1, 1),
(1888, 14166, 0.2, 1, 0, 1, 1),
(1888, 14167, 0.1, 1, 0, 1, 1),
(1888, 14173, 0.05, 1, 0, 1, 1),
(1888, 14174, 0.1, 1, 0, 1, 1),
(1888, 15210, 0.2, 1, 0, 1, 1),
(1888, 15248, 0.05, 1, 0, 1, 1),
(1888, 15268, 0.05, 1, 0, 1, 1),
(1888, 15926, 0.05, 1, 0, 1, 1);

-- Ambermill Watcher - pickpocket loot --
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1888, 414, 20, 1, 0, 1, 1),
(1888, 858, 12, 1, 0, 1, 1),
(1888, 4537, 10, 1, 0, 1, 1),
(1888, 1210, 2, 1, 0, 1, 1),
(1888, 818, 2, 1, 0, 1, 1),
(1888, 4541, 6, 1, 0, 1, 1),
(1888, 5368, 61, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Witchalok   (ID: 1889) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Witchalok - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1889, 0, 0, 0, 45756, 0, 3585, 3586, 0, 0, 'Ambermill Witchalok', '', '', 0, 18, 18, 0, 76, 76, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1889, 1889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.5, 1, 1, 0, 7293, 0, 0, 0, 0, 0, 0, 1, 1889, 0, 0, '', 1);

-- Ambermill Witchalok - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(1889, 2177, 0, 0);

-- Ambermill Witchalok - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1889, 0, 0, 0, 1, 0, '');

-- Ambermill Witchalok - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1889, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 87, 188900, 188901, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - wolfoid? ghostskull? nope... this is chuck testa'),
(188900, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - text 1'),
(188900, 9, 1, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 87223, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - summon wolfoids'),
(188900, 9, 2, 0, 0, 0, 100, 1, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - text 2 - omg...');
(188900, 9, 3, 0, 0, 0, 100, 0, 2000, 3000, 3000, 6000, 11, 87222, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - cast Throw Witchalok Blade');
(188901, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - text 1'),
(188901, 9, 1, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 87225, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - summon ghostskull'),
(188901, 9, 2, 0, 0, 0, 100, 1, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - text 2 - omg...');
(188901, 9, 3, 0, 0, 0, 100, 0, 2000, 3000, 3000, 6000, 11, 87222, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Witchalok - cast Throw Witchalok Blade');

-- Ambermill Witchalok - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(1889, 0, 0, 'Behold the sheer size of it! Are you not afraid, mortal? Have you ever witnessed doom of this magnitude?', 12, 0, 100, 0, 0, 0, 'Ambermill Witchalok 1'),
(1889, 1, 0, 'Cower, monster, as I summon a veritable army of Wolfoids!', 12, 0, 100, 0, 0, 0, 'Ambermill Witchalok 2'),
(1889, 2, 0, 'Now you are surrounded by Wolfoids! What will you do? Where can you run?', 12, 0, 100, 0, 0, 0, 'Ambermill Witchalok 3'),
(1889, 3, 0, 'Tremble in fear as I call forth the mighty Doomskull!', 12, 0, 100, 0, 0, 0, 'Ambermill Witchalok 4');
	
-- Ambermill Witchalok - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1889, 0, 1, 1, 0, 0, -64.6319, 1004.35, 66.42493, 3.577925, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -75.6944, 935.689, 69.47263, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -94.36725, 1027.507, 65.34836, 1.542259, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -99.31432, 944.1245, 68.55656, 4.227155, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Witchalok - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1889, 414, 10.1, 1, 0, 1, 1),
(1889, 789, 0.31, 1, 0, -789, 1),
(1889, 790, 0.15, 1, 0, -790, 1),
(1889, 856, 0.1, 1, 0, 1, 1),
(1889, 858, 2.6, 1, 0, 1, 1),
(1889, 935, 0.0182, 1, 0, -935, 1),
(1889, 954, 0.6522, 1, 0, -954, 1),
(1889, 1179, 4.6, 1, 0, 1, 1),
(1889, 1206, 0.0906, 1, 0, 1, 1),
(1889, 1738, 0.3, 1, 0, 1, 1),
(1889, 1739, 0.3, 1, 0, 1, 1),
(1889, 1740, 0.1, 1, 0, 1, 1),
(1889, 1742, 0.4, 1, 0, 1, 1),
(1889, 1743, 0.6, 1, 0, 1, 1),
(1889, 1744, 0.2, 1, 0, 1, 1),
(1889, 1764, 0.5, 1, 0, 1, 1),
(1889, 1766, 0.5, 1, 0, 1, 1),
(1889, 1767, 0.7, 1, 0, 1, 1),
(1889, 1768, 0.1, 1, 0, 1, 1),
(1889, 1769, 0.2, 1, 0, 1, 1),
(1889, 1770, 0.6, 1, 0, 1, 1),
(1889, 1787, 0.6, 1, 0, 1, 1),
(1889, 1788, 0.3, 1, 0, 1, 1),
(1889, 1789, 0.3, 1, 0, 1, 1),
(1889, 1790, 0.1, 1, 0, 1, 1),
(1889, 1791, 0.6, 1, 0, 1, 1),
(1889, 1792, 0.3, 1, 0, 1, 1),
(1889, 1793, 0.2, 1, 0, 1, 1),
(1889, 1794, 0.3, 1, 0, 1, 1),
(1889, 1811, 0.5, 1, 0, 1, 1),
(1889, 1812, 0.6, 1, 0, 1, 1),
(1889, 1813, 0.5, 1, 0, 1, 1),
(1889, 1814, 0.8, 1, 0, 1, 1),
(1889, 1815, 0.6, 1, 0, 1, 1),
(1889, 1817, 0.5, 1, 0, 1, 1),
(1889, 2078, 0.38, 1, 0, -2078, 1),
(1889, 2079, 0.02, 1, 0, -2079, 1),
(1889, 2216, 0.3, 1, 0, 1, 1),
(1889, 2217, 0.3, 1, 0, 1, 1),
(1889, 2406, 0.0635, 1, 0, -2406, 1),
(1889, 2409, 0.1541, 1, 0, -2409, 1),
(1889, 2455, 2.8, 1, 0, 1, 1),
(1889, 2589, 40.5, 1, 0, 1, 3),
(1889, 2592, 38.8, 1, 0, 1, 2),
(1889, 2601, 0.0272, 1, 0, -2601, 1),
(1889, 2764, 0.8, 1, 0, 1, 1),
(1889, 2780, 0.5, 1, 0, 1, 1),
(1889, 2781, 0.7, 1, 0, 1, 1),
(1889, 2969, 0.2, 1, 0, 1, 1),
(1889, 2973, 0.2, 1, 0, 1, 1),
(1889, 2981, 0.41, 1, 0, -2981, 1),
(1889, 2982, 1.14, 1, 0, -2982, 1),
(1889, 2984, 0.2, 1, 0, 1, 1),
(1889, 2985, 0.1, 1, 0, 1, 1),
(1889, 2987, 0.2, 1, 0, 1, 1),
(1889, 2988, 1.11, 1, 0, -2988, 1),
(1889, 2990, 0.2, 1, 0, 1, 1),
(1889, 3040, 0.1, 1, 0, 1, 1),
(1889, 3184, 0.1, 1, 0, 1, 1),
(1889, 3195, 0.1, 1, 0, 1, 1),
(1889, 3196, 0.3, 1, 0, 1, 1),
(1889, 3211, 0.1, 1, 0, 1, 1),
(1889, 3376, 0.3, 1, 0, 1, 1),
(1889, 3377, 0.1, 1, 0, 1, 1),
(1889, 3396, 0.0181, 1, 0, -3396, 1),
(1889, 3645, 0.1, 1, 0, 1, 1),
(1889, 3655, 0.1, 1, 0, 1, 1),
(1889, 4346, 0.2, 1, 0, 1, 1),
(1889, 4409, 0.1, 1, 0, 1, 1),
(1889, 4571, 0.2, 1, 0, 1, 1),
(1889, 4575, 0.1, 1, 0, 1, 1),
(1889, 4694, 0.5, 1, 0, -4694, 1),
(1889, 4695, 0.1, 1, 0, 1, 1),
(1889, 4698, 1, 1, 0, -4698, 1),
(1889, 4699, 0.1, 1, 0, 1, 1),
(1889, 5110, 0.2, 1, 0, 1, 1),
(1889, 5212, 0.1, 1, 0, 1, 1),
(1889, 5574, 0.1, 1, 0, 1, 1),
(1889, 6379, 0.1, 1, 0, 1, 1),
(1889, 6540, 0.4, 1, 0, 1, 1),
(1889, 6552, 0.3, 1, 0, 1, 1),
(1889, 6553, 0.2, 1, 0, 1, 1),
(1889, 6562, 0.1, 1, 0, 1, 1),
(1889, 6563, 0.2, 1, 0, 1, 1),
(1889, 6588, 0.0091, 1, 0, 1, 1),
(1889, 6716, 0.1, 1, 0, 1, 1),
(1889, 7293, -100, 1, 0, 1, 1),
(1889, 7608, 0.1, 1, 0, 1, 1),
(1889, 9779, 0.1, 1, 0, 1, 1),
(1889, 9784, 0.1, 1, 0, 1, 1),
(1889, 9785, 0.1, 1, 0, 1, 1),
(1889, 12979, 0.0181, 1, 0, -12979, 1),
(1889, 14167, 0.1, 1, 0, 1, 1),
(1889, 14168, 0.1, 1, 0, 1, 1),
(1889, 14174, 0.1, 1, 0, 1, 1),
(1889, 15222, 0.1, 1, 0, 1, 1);

-- Ambermill Witchalok - pickpocket loot --
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1888, 414, 20, 1, 0, 1, 1),
(1888, 858, 12, 1, 0, 1, 1),
(1888, 4537, 10, 1, 0, 1, 1),
(1888, 1210, 2, 1, 0, 1, 1),
(1888, 818, 2, 1, 0, 1, 1),
(1888, 4541, 6, 1, 0, 1, 1),
(1888, 4345, 6, 1, 0, 1, 1),
(1888, 5368, 61, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- --
-- Doomskull   (ID: 46846) --
-- -- -- -- -- -- -- -- -- --

-- Doomskull - new template --

-- Doomskull - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(46846, 0, 0, 0);

-- Doomskull - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(46846, 0, 0, 0, 0, 0, '');


-- -- -- -- -- -- -- -- --
-- Wolfoid  (ID: 46845) --
-- -- -- -- -- -- -- -- --

-- Wolfoid - new template --

-- Wolfoid - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(46845, 0, 0, 0);

-- Wolfoid - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(46845, 0, 0, 0, 0, 0, '');


/*
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`) VALUES 
(1913,0,0,0,45756,0,3592,3593,0,0, 'Ambermill Warder', '', '',0,1,1,0,35,35,0,1,1.14286,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',0,0,1,1,1,0,7293,7293,7293,7293,7293,7293,0,1,0,0,0, ''),
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`) VALUES 
(1914,0,0,0,45756,0,3559,3560,0,0, 'Ambermill Magister', '', '',0,1,1,0,35,35,0,1,1.14286,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',0,0,1,1,1,0,3354,3354,3354,3354,3354,3354,0,1,0,0,0, ''),
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`) VALUES 
(1933,0,0,0,0,0,856,857,0,0, 'Sheep', '', '',0,1,1,0,35,35,0,1,1.14286,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',0,0,0.2,1,1,0,0,0,0,0,0,0,100,1,0,0,0, ''),
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`) VALUES 
(2120,0,0,0,0,0,3601,0,0,0, 'Archmage Ataeric', '', '',0,1,1,0,35,35,0,1,1.14286,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,7,-2147483640,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',0,0,5,1,1,0,3515,3515,3515,3515,3515,3515,0,1,0,0,0, ''),
*/


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Warder   (ID: 1913) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Warder - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1913, 0, 0, 0, 45756, 0, 3592, 3593, 0, 0, 'Ambermill Warder', '', '', 0, 12, 18, 0, 76, 76, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1913, 1913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 1, 1, 1, 0, 7293, 0, 0, 0, 0, 0, 0, 1, 1913, 0, 0, '', 1);

-- Ambermill Warder - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(1913, 2180, 1984, 0);

-- Ambermill Warder - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1913, 0, 0, 0, 0, 0, '');

-- Ambermill Warder - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1913, 0, 0, 0, 0, 0, 100, 0, 3000, 5500, 3000, 4500, 11, 86817, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Warder - cast Spell Ward'),
(1913, 0, 1, 0, 0, 0, 100, 0, 2000, 3500, 3000, 6000, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambermill Warder - cast Improved Blocking');

-- Ambermill Warder - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1913, 0, 1, 1, 0, 0, -127.269, 823.17, 63.66503, 1.780236, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -127.8135, 827.4038, 63.59288, 5.172704, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -132.595, 895.448, 65.68288, 1.593153, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -132.967, 911.292, 66.53954, 4.722601, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -134.7471, 830.2402, 63.731, 4.148372, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -161.802, 784.174, 64.84554, 5.986479, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -169.016, 784.352, 69.61263, 2.897247, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -190.238, 1052.18, 61.53352, 1.105491, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -20.6042, 815.479, 65.44553, 5.480334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -201.691, 860.207, 69.10302, 0.2037399, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -218.155, 1059.97, 60.37673, 1.780236, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -223.042, 855.776, 72.73754, 0.2397658, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -251.339, 847.269, 76.6188, 3.470933, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -46.7708, 1044.18, 64.45464, 0.6981317, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -48.8125, 787.385, 61.48253, 5.131268, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -63.8438, 1035.1, 63.30064, 2.604233, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -71.1372, 1060.25, 64.73324, 1.029744, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -78.474, 886.813, 67.29094, 2.897247, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -80.7517, 878.116, 67.29004, 2.687807, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1913, 0, 1, 1, 0, 0, -93.9931, 1069.11, 64.95213, 1.082104, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Warder - loot --

-- Ambermill Warder - pickpocket loot --


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Magister (ID: 1914) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Magister - new template --

-- Ambermill Magister - equip --

-- Ambermill Magister - addon --

-- Ambermill Magister - SAI --

-- Ambermill Magister - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1914, 0, 1, 1, 0, 0, -343.636, 839.743, 91.5483, 4.7293, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -200.063, 912.968, 71.4727, 3.55849, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -196.477, 912.855, 66.8764, 1.20428, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -266.689, 861.816, 81.8771, 6.22836, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -226.993, 817.121, 74.1054, 2.54818, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -222.062, 820.535, 74.0288, 4.40418, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -85.1178, 875.349, 65.3902, 3.24631, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -211.753, 970.463, 72.5899, 0.506145, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -190.309, 1012.36, 65.4447, 3.99798, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -171.156, 961.793, 64.8819, 4.72657, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -160.344, 922.395, 65.5657, 3.15605, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -196.633, 941.087, 65.79, 1.6668, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -282.813, 811.979, 79.1949, 6.11465, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -80.5932, 974.126, 68.4387, 1.517, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -65.066, 969.799, 67.4811, 4.60767, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -66.2251, 955.202, 67.868, 1.91607, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -80.1489, 935.549, 69.0073, 0.331613, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -104.213, 946.987, 68.5021, 0.863511, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -79.1993, 938.274, 69.0175, 5.72468, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -83.2189, 896.125, 65.6719, 0.558505, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1914, 0, 1, 1, 0, 0, -133.746, 1028.93, 68.4001, 4.71626, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Magister - loot --

-- Ambermill Magister - pickpocket loot --


-- -- -- -- -- -- -- -- -- -- --
-- Ambermill Miner (ID: 3578) --
-- -- -- -- -- -- -- -- -- -- --

-- Ambermill Miner - new template --

-- Ambermill Miner - equip --

-- Ambermill Miner - addon --

-- Ambermill Miner - SAI --

-- Ambermill Miner - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3578, 0, 1, 1, 0, 0, -88.41319, 822.2153, 63.8491, 4.13643, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Miner - loot --

-- Ambermill Miner - pickpocket loot --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Brewmaster  (ID: 3577) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Brewmaster - new template --

-- Ambermill Brewmaster - equip --

-- Ambermill Brewmaster - addon --

-- Ambermill Brewmaster - SAI --

-- Ambermill Brewmaster - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3577, 0, 1, 1, 0, 0, -152.9045, 823.5625, 64.16426, 5.916666, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Brewmaster - loot --

-- Ambermill Brewmaster - pickpocket loot --


-- -- -- -- -- -- -- -- -- -- --
-- White Chicken  (ID: 44338) --
-- -- -- -- -- -- -- -- -- -- --

-- White Chicken - new template --

-- White Chicken - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44338, 0, 0, 0);

-- White Chicken - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44338, 0, 0, 0, 0, 0, '');

-- White Chicken - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44338, 0, 1, 1, 0, 0, -1207.291, 1778.125, 20.17929, 6.23903, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1207.393, 1778.017, 20.17929, 4.404128, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1208.992, 1807.38, 20.41124, 1.867647, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1212.5, 1779.167, 20.24179, 1.768048, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1212.645, 1779.388, 20.34045, 3.499515, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1213.54, 1783.649, 20.3887, 4.636524, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1214.272, 1768.323, 20.83394, 1.105946, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1220.042, 1763.418, 20.08455, 1.181921, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1221.994, 1763.404, 19.92781, 2.836288, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1261.101, 1373.82, 26.49257, 5.509469, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1261.442, 1373.756, 26.49257, 5.119268, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1263.427, 1371.698, 26.49257, 5.55095, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1263.995, 1372.156, 26.49257, 4.689526, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1264.711, 1376.941, 26.49257, 2.700953, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1267.62, 1382.3, 26.60813, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1271.472, 1384.981, 26.6494, 2.26406, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1272.733, 1372.62, 26.5244, 5.517886, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1272.987, 1372.863, 26.5244, 5.692481, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1273.232, 1371.718, 26.5244, 2.857177, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1273.35, 1368.083, 26.40989, 5.097654, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1273.88, 1367.24, 26.48203, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1275.335, 1374.002, 26.5244, 1.943126, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1275.521, 1367.708, 26.3994, 4.712389, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1276.403, 1380.729, 26.5244, 2.944221, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1276.859, 1376.898, 26.5244, 2.227085, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1277.084, 1381.25, 26.5244, 1.644986, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1279.53, 1379.96, 26.56023, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44338, 0, 1, 1, 0, 0, -1279.666, 1380.277, 26.5244, 2.679598, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Lord Godfrey   (ID: 44369) --
-- -- -- -- -- -- -- -- -- -- --

-- Lord Godfrey - new template --

-- Lord Godfrey - equip --

-- Lord Godfrey - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44369, 0, 0, 0, 0, 0, '');

-- Lord Godfrey - spellclick --

-- Lord Godfrey - SAI --

-- Lord Godfrey - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44369, 0, 1, 1, 0, 0, -2121.18, 931.868, 1.227633, 5.72468, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Hillsbrad Worgen  (ID: 45270) --
-- -- -- -- -- -- -- -- -- -- -- --

-- The Waters Run Red...


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Vanguard (ID: 45280) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Vanguard - new template --

-- Forsaken Vanguard - equip --

-- Forsaken Vanguard - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45280, 0, 0, 0, 0, 0, '');

-- Forsaken Vanguard - SAI --

-- Forsaken Vanguard - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45280, 0, 1, 1, 0, 0, -1000.35, 1464.8, 44.66563, 4.153883, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1002.65, 1572.38, 34.51403, 2.498854, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1006.192, 1799.501, 51.15212, 2.189683, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1011.76, 1662, 53.03019, 5.730187, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1013.645, 1809.76, 51.66292, 4.841068, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1021.436, 1734.217, 58.24403, 3.836888, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1025.42, 1403.61, 49.03503, 5.742133, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1025.861, 1713.087, 59.25671, 3.043047, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1032.528, 1788.625, 49.83047, 0.09645633, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1035.863, 1745.958, 55.68173, 2.766241, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1041.23, 1648.6, 52.74233, 0.6632251, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1041.93, 1429.93, 46.52513, 1.099557, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1044.04, 1772.158, 50.49216, 6.168649, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1053.96, 1408.4, 41.10623, 3.996804, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1063.616, 1711.525, 46.07438, 5.751924, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1087.57, 1634.73, 33.86103, 2.775074, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1087.88, 1642.66, 34.02953, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1089.563, 1624.617, 33.64322, 4.767483, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1092.64, 1758.42, 45.00252, 1.197278, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1093.205, 1596.466, 37.18328, 5.816898, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1099.17, 1616.6, 33.16703, 2.827433, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1099.883, 1731.975, 43.00313, 0.112832, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1103.325, 1705.59, 44.344, 4.441338, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1112.33, 1095.7, 24.51803, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1112.438, 1696.01, 45.3716, 1.512369, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1119.847, 1718.021, 46.39107, 0.7695265, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1126.72, 1112.71, 24.65873, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1128.86, 1169.34, 24.20763, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1137.83, 1144.65, 24.36593, 3.420845, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1139.95, 1111.76, 24.36593, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1142.36, 1157.01, 24.36593, 2.495821, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1143.86, 1133.97, 24.36593, 4.799655, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1157.08, 1164.59, 24.36593, 4.258604, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1157.25, 1130.78, 24.36593, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1169.44, 1158.02, 24.36593, 5.899213, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1174.34, 1146.94, 24.36593, 1.989675, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1177.066, 1746.467, 25.45054, 5.951385, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1214.107, 1785.846, 20.30429, 1.076738, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1217.84, 1590.62, 25.09433, 0.8377581, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1217.94, 1120.4, 34.40823, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1223.28, 1814.33, 20.43143, 2.251475, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1224.38, 1136.88, 33.51163, 3.682645, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1224.85, 1785.77, 20.22743, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1227.05, 1754.36, 19.40393, 1.48353, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1233.5, 1121.75, 35.63703, 2.460914, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1233.58, 1781.11, 19.92413, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1236.53, 1794.56, 20.40853, 4.520403, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1236.67, 1587.73, 23.71803, 2.583087, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1240.12, 1771.57, 19.34013, 1.64061, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1248.39, 1780.56, 19.17483, 5.637414, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1253.01, 1127.59, 36.23793, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1256.95, 1535.62, 20.61703, 1.954769, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1263.19, 1366.16, 26.49283, 2.391101, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1263.76, 1503.59, 20.49913, 3.665191, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1265.8, 1382.77, 26.61333, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1269.37, 1373.25, 26.54123, 0.1745329, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1269.68, 1412.26, 26.50143, 5.270895, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1276.43, 1395.26, 26.39413, 1.448623, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1277.79, 1134.32, 38.13303, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1279.33, 1139.44, 38.03503, 1.675516, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1283.97, 1079.22, 37.50753, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1324.89, 1042.5, 26.98103, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1349.2, 1129.47, 34.40063, 1.832596, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1353.95, 1092.13, 32.33093, 2.827433, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1354.5, 1116.67, 32.22773, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1360.46, 1115.22, 31.47413, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1409.47, 1165.56, 24.49773, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1432.37, 1051.66, 28.15833, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1448.31, 1083.96, 29.20913, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1448.39, 1079.93, 29.35703, 5.183628, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1451.98, 1077.39, 29.36973, 1.727876, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1454.07, 1081.09, 29.27653, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1458.58, 1115.45, 28.34333, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1524.28, 1188.38, 27.32273, 1.797689, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1539.28, 1093.72, 29.52923, 3.839724, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1584.35, 1081.02, 30.54723, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1613.78, 1082.87, 33.34123, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1621.23, 1102.07, 29.81033, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1636.62, 978.007, 65.90984, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1657.06, 1018.24, 55.81383, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1660.32, 1081.41, 33.29213, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1677.76, 956.398, 87.88244, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1737.79, 1164.13, 26.99023, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1741.96, 1153.92, 27.29493, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1751.58, 1159.56, 26.51023, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1755.2, 1019.44, 55.65793, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1827.34, 1133.86, 38.74783, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1842.25, 1168.76, 31.86983, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -1861.3, 1133.61, 38.99133, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -802.263, 1703.886, 68.23342, 4.426827, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -804.0183, 1727.25, 69.28274, 0.9302249, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -811.382, 1549.16, 28.13068, 2.897247, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -811.434, 1554.61, 28.13068, 3.368485, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -811.564, 1546.47, 28.09393, 2.687807, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -811.637, 1551.88, 28.13068, 3.124139, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -816.3886, 1722.422, 69.60842, 0.461289, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -816.6473, 1724.524, 69.60842, 1.198477, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -818.0706, 1675.602, 67.60998, 2.875369, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -818.7654, 1722.354, 69.72842, 2.494579, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -821.6727, 1722.986, 69.80422, 2.3042, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -826.087, 1570.99, 28.10033, 3.752458, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -827.3388, 1693.608, 67.31445, 4.308522, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -828.203, 1539.45, 28.09393, 2.164208, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -842.0664, 1686.363, 67.27582, 5.496295, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -842.83, 1544.46, 28.09533, 1.361357, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -855.167, 1571.18, 28.75833, 4.502949, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -858.3373, 1752.948, 66.6316, 6.039543, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -860.8743, 1687.411, 68.81329, 2.29016, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -864.8206, 1726.149, 68.21555, 4.173142, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -874.477, 1798.75, 63.20663, 2.216568, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -882.219, 1721.33, 65.83945, 0.6457718, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -895.7461, 1761.039, 63.80951, 0.319675, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -899.896, 1730.19, 65.76816, 1.832596, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -910.0387, 1711.073, 65.86642, 0.319675, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -943.3849, 1692.1, 64.6093, 2.199902, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -943.5011, 1740.11, 62.36, 4.655202, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -953.5757, 1770.598, 61.70523, 1.960644, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -955.786, 1555.74, 35.93673, 1.361357, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -959.934, 1512.47, 47.72305, 0.2515655, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -966.241, 1523.7, 47.15029, 3.205953, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -969.833, 1557.82, 35.93803, 1.361357, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -972.3315, 1768.919, 58.42764, 2.430411, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -974.0735, 1508.1, 47.62325, 1.858428, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -974.67, 1515.51, 47.32454, 4.214845, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -975.005, 1502.24, 47.80473, 0.9424778, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -976.0161, 1517.452, 47.46267, 5.695185, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -978.503, 1519.11, 47.36533, 5.5676, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -981.439, 1466.25, 47.61243, 0.9773844, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -985.5129, 1756.127, 58.59693, 1.021808, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -985.594, 1756.546, 58.64198, 3.389848, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -985.7876, 1690.901, 62.36457, 1.378467, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -986.7334, 1756.71, 58.83228, 0.9746188, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -987.618, 1997.86, 24.51563, 2.635447, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -991.477, 2006.4, 23.73533, 2.216568, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -995.219, 2005.19, 23.59643, 5.323254, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -996.495, 1995.07, 24.27723, 0.715585, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -996.911, 1585.94, 35.07223, 2.86234, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45280, 0, 1, 1, 0, 0, -999.694, 2004.16, 23.40543, 5.8294, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Worgen Rebel   (ID: 45292) --
-- -- -- -- -- -- -- -- -- -- --

-- Worgen Rebel - new template --

-- Worgen Rebel - equip --

-- Worgen Rebel - addon --

-- Worgen Rebel - SAI --

-- Worgen Rebel - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45292, 0, 1, 1, 0, 0, -1009.552, 1798.053, 51.06973, 0.1567377, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1013.75, 1806.116, 51.26863, 1.541978, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1024.238, 1731.88, 57.82629, 1.992422, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1028.493, 1715.507, 58.53576, 5.53976, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1038.256, 1748.669, 55.07984, 5.435651, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1066.531, 1713.47, 45.71634, 5.694661, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1071.39, 1805.82, 45.22483, 3.874631, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1071.53, 1806.005, 45.20444, 5.416224, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1073.61, 1808.058, 44.70834, 0.3201061, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1102.91, 1733.946, 43.63628, 5.70617, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1105.056, 1705.738, 45.13099, 5.970016, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1112.224, 1699.671, 45.3716, 5.40956, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1147.419, 1819.08, 33.67558, 6.002953, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1148.225, 1818.711, 33.68107, 0.3950964, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1152.33, 1815.036, 33.18839, 5.945431, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -1177.877, 1749.528, 25.82066, 1.829985, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -772.7313, 1765.812, 66.36674, 0.941142, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -773.4387, 1764.17, 66.30912, 1.02322, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -803.5082, 1701.293, 68.23342, 1.285182, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -805.8009, 1730.311, 69.04214, 5.239643, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -815.4124, 1676.604, 67.66862, 3.501973, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -823.601, 1792.345, 67.32531, 2.048905, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -858.3765, 1689.419, 68.76141, 4.129443, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -859.3602, 1749.427, 66.65149, 1.288052, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -865.4836, 1729.433, 68.01096, 4.311177, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -867.122, 1808.02, 63.07283, 4.485496, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -898.3013, 1763.659, 63.6037, 5.48531, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -907.144, 1773.431, 62.68374, 1.124614, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -913.2048, 1712.921, 65.98117, 5.754985, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -929.003, 1816.23, 58.99913, 0.1305083, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -943.8422, 1743.098, 62.40739, 4.743104, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -944.3282, 1695.641, 65.0341, 4.972768, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -956.7261, 1768.749, 61.38884, 0.5307685, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -960.184, 1801.8, 58.34163, 0.9359128, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -975.6548, 1767.37, 58.3973, 0.4361515, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -989.1245, 1688.138, 62.34931, 5.53001, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45292, 0, 1, 1, 0, 0, -989.1456, 1755.646, 58.73145, 0.1316644, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Worgen Rebel - loot --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Commander Belmont   (ID: 45312) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Commander Belmont - new template --

-- Deathstalker Commander Belmont - equip --

-- Deathstalker Commander Belmont - addon --

-- Deathstalker Commander Belmont - SAI --

-- Deathstalker Commander Belmont - ? --

-- Deathstalker Commander Belmont - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45312, 0, 1, 1, 0, 0, -1165.08, 1144.47, 24.36593, 1.780236, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45312, 0, 1, 1, 0, 0, -2122.48, 930.821, 1.166403, 0.6283185, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45312, 0, 1, 1, 0, 0, -929.4597, 1632.163, 68.44329, 0.02323091, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Deathstalker   (ID: 45313) --
-- -- -- -- -- -- -- -- -- -- --

-- Deathstalker - new template --

-- Deathstalker - equip --

-- Deathstalker - addon --

-- Deathstalker - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45313, 0, 1, 1, 0, 0, -927.55, 1628.93, 68.44964, 1.58825, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45313, 0, 1, 1, 0, 0, -930.351, 1628.75, 68.44974, 1.692969, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45313, 0, 1, 1, 0, 0, -933.399,  1628.73, 68.366898, 1.32238, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Forward Commander Onslaught   (ID: 45315) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Forward Commander Onslaught - new template --

-- Forward Commander Onslaught - equip --


-- Forward Commander Onslaught - addon --

-- Forward Commander Onslaught - SAI --

-- Forward Commander Onslaught - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45315, 0, 1, 1, 0, 0, -916.026, 1629.5, 68.43954, 1.919862, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Abomination (ID: 45345) --
-- -- -- -- -- -- -- -- -- --

-- Abomination - new template --

-- Abomination - equip --

-- Abomination - addon --

-- Abomination - SAI --

-- Abomination - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45345, 0, 1, 1, 0, 0, -1207.82, 1825.73, 21.76203, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45345, 0, 1, 1, 0, 0, -1208.33, 1787.16, 20.32033, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45345, 0, 1, 1, 0, 0, -1219.32, 1803.39, 20.44543, 4.29351, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45345, 0, 1, 1, 0, 0, -1224.4, 1768.96, 20.06963, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45345, 0, 1, 1, 0, 0, -1245.97, 1765.31, 18.30363, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45345, 0, 1, 1, 0, 0, -1249.47, 1789.14, 19.63123, 5.061455, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Highlands Fox  (ID: 45335) --
-- -- -- -- -- -- -- -- -- -- --

-- Highlands Fox - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(45335, 0, 0, 0, 0, 0, 30254, 0, 0, 0, 'Highlands Fox', '', '', 0, 13, 14, 0, 2200, 2200, 0, 1, 1, 1, 0, 20, 27, 0, 50, 1, 2000, 0, 1, 32768, 2048, 50, 0, 0, 0, 0, 13, 20, 1, 1, 1, 45335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 45335, 0, 0, '', 0);

-- Highlands Fox - equip --

-- Highlands Fox - addon --

-- Highlands Fox - SAI --

-- Highlands Fox - skinning --

-- Highlands Fox - spawns --
-802.263 Y: 1703.886 Z: 68.23342 O: 4.426827
-1157.996 Y: 1543.048 Z: 30.6894 O: 1.73755
-1182.505 Y: 1638.329 Z: 20.78053 O: 0.7853982
-1187.993 Y: 1626.871 Z: 23.65285 O: 4.265785
-1188.294 Y: 1497.804 Z: 28.37258
-1191.94 Y: 1506.128 Z: 28.54207
-1194.574 Y: 1502.269 Z: 28.03096 O: 5.901977
-1208.011 Y: 1508.733 Z: 25.95778
-1220.859 Y: 1546.847 Z: 24.59593 O: 2.621435
-1221.389 Y: 1450.81 Z: 23.9888
-1222.946 Y: 1442.076 Z: 24.52042
-1223.044 Y: 1555.602 Z: 25.73065
-1223.196 Y: 1442.171 Z: 24.46085
-1244.148 Y: 1445.194 Z: 22.78115
-1225.861 Y: 1440.296 Z: 24.04813
-1227.071 Y: 1560.087 Z: 26.21793
-1229.73 Y: 1437.629 Z: 23.64761 O: 3.929753
-1237.813 Y: 1442.216 Z: 22.90615
-1242.074 Y: 1442.577 Z: 22.99807
-1267.979 Y: 1836.284 Z: 11.95589 O: 2.502115
-1306.852 Y: 1665.952 Z: 8.251657 O: 4.665



-- -- -- -- -- -- -- -- -- -- --
-- Gilnean Hound  (ID: 45367) --
-- -- -- -- -- -- -- -- -- -- --

-- Gilnean Hound - new template --

-- Gilnean Hound - equip --

-- Gilnean Hound - addon --

-- Gilnean Hound - SAI --

-- Gilnean Hound - skinning --

-- Gilnean Hound - spawns --


-- -- -- -- -- -- -- -- -- -- --
-- Worgen Rusher  (ID: 45375) --
-- -- -- -- -- -- -- -- -- -- --

-- Worgen Rusher - new template --

-- Worgen Rusher - equip --

-- Worgen Rusher - addon --

-- Worgen Rusher - SAI --

-- Worgen Rusher - spawns --


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Sharpshooter   (ID: 45376) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Sharpshooter - new template --

-- Forsaken Sharpshooter - equip --

-- Forsaken Sharpshooter - addon --

-- Forsaken Sharpshooter - SAI --

-- Forsaken Sharpshooter - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45376, 0, 1, 1, 0, 0, -1031, 1628.38, 53.18133, 3.560472, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1031.73, 1630.43, 53.01443, 3.316126, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1033.02, 1560.84, 45.74713, 2.181662, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1035.24, 1560.72, 45.78153, 2.181662, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1049.68, 1669.77, 52.78033, 2.879793, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1051.74, 1666.63, 52.74023, 2.792527, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1053.49, 1570.33, 40.25103, 0.6279343, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -1099.83, 1605.57, 37.18603, 2.321288, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -934.118, 1529.55, 45.49323, 1.762783, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -949.431, 1532.22, 47.11473, 1.745329, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45376, 0, 1, 1, 0, 0, -949.486, 1614.06, 68.59224, 4.13643, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Captain Rutsak (ID: 45389) --
-- -- -- -- -- -- -- -- -- -- --

-- Captain Rutsak - new template --

-- Captain Rutsak - equip --

-- Captain Rutsak - addon --

-- Captain Rutsak - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45389, 0, 1, 1, 0, 0, -1248.84, 1374.59, 27.83343, 3.316126, 300, 0, 0, 0, 0, 0, 0, 0, 0);



-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Veteran Forsaken Trooper   (ID: 45225) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Veteran Forsaken Trooper - new template --

-- Veteran Forsaken Trooper - equip --

-- Veteran Forsaken Trooper - addon --

-- Veteran Forsaken Trooper - SAI --

-- Veteran Forsaken Trooper - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45225, 0, 1, 1, 0, 0, 364.993, 1093.53, 106.1783, 5.323254, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 365.075, 1097.21, 106.2123, 5.270895, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 368.543, 1095.05, 106.1913, 4.974188, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 369.517, 1098.67, 106.2823, 5.078908, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 372.582, 1096.04, 106.2333, 4.974188, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 373.549, 1098.99, 106.3463, 4.974188, 300, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 45225, 0, 1, 1, 0, 0, 376.009, 1096.43, 106.2763, 5.009095, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Master Forteski   (ID: 45228) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Master Forteski

-- Master Forteski

-- Master Forteski

-- Master Forteski

-- Master Forteski - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45228, 0, 1, 1, 0, 0, 368.99, 1102.56, 106.3493, 5.166174, 120, 0, 0, 1, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- High Commander Halford Wyrmbane  (ID: 45425) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- High Commander Halford Wyrmbane - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45425, 0, 0, 0, 0, 0, 24348, 0, 0, 0,  'High Commander Halford Wyrmbane',  '7th Legion',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- High Commander Halford Wyrmbane

-- High Commander Halford Wyrmbane

-- High Commander Halford Wyrmbane

-- High Commander Halford Wyrmbane - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45425, 0, 1, 1, 0, 0, -1227.01, 2043.24, 11.04533, 0.750491, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Cowering Trooper  (ID: 45910) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Cowering Trooper - new template
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45910, 0, 0, 0, 0, 0, 34378, 34379, 34380, 34381,  'Cowering Trooper',  '',  'Inspect', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Cowering Trooper - equip --

-- Cowering Trooper - addon --

-- Cowering Trooper - spellclick --

-- Cowering Trooper - SAI --

-- Cowering Trooper - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45910, 0, 1, 1, 0, 0, -397.073, 1444.34, 25.76723, 0.8726646, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -356.668, 1525.22, 25.53243, 1.675516, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -337.08, 1491.84, 19.59493, 4.852015, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -325.694, 1477.89, 30.61953, 2.897247, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -390.189, 1504.95, 29.51553, 4.817109, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -348.543, 1460.27, 22.53873, 2.879793, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -408.101, 1577.99, 18.74113, 5.305801, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -407.417, 1584.48, 29.88003, 3.054326, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -423.196, 1597.19, 18.74113, 2.199115, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45910, 0, 1, 1, 0, 0, -446.464, 1569.29, 18.74113, 3.176499, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 46054) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(46054, 0, 0, 0, 0, 0, 34054, 34055, 34056, 34057,  'Forsaken Trooper',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Trooper 

-- Forsaken Trooper 

-- Forsaken Trooper 

-- Forsaken Trooper - spawns --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Portal to Dalaran Crater   (ID: 45731) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Portal to Dalaran Crater - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45731, 0, 0, 0, 0, 0, 34645, 0, 0, 0,  'Portal to Dalaran Crater',  '',  'Interact', 0, 1, 1, 0, 35, 35, 16777216, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Portal to Dalaran Crater - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45731, 0, 0, 0);

-- Portal to Dalaran Crater - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45731, 0, 0, 0, 0, 0, '');

-- Portal to Dalaran Crater - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(45731, 85317, 27478, 1, 0, 3, 0, 0, 0);

-- Portal to Dalaran Crater - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45731, 0, 1, 1, 0, 0, 452.427, 1465.43, 125.1413, 1.064651, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Portal to Dalaran Crater - spell target --
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(85317, 0, 294.061, 377.439, -63.99227, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Portal to the Sepulcher (ID: 45732) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Portal to the Sepulcher - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45732, 0, 0, 0, 0, 0, 34252, 0, 0, 0,  'Portal to the Sepulcher',  '',  'Interact', 0, 1, 1, 0, 35, 35, 16777216, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Portal to the Sepulcher - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45732, 0, 0, 0);

-- Portal to the Sepulcher - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45732, 0, 0, 0, 0, 0, '');

-- Portal to the Sepulcher - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(45732, 85318, 27478, 1, 0, 3, 0, 0, 0);

-- Portal to the Sepulcher - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45732, 0, 1, 1, 0, 0, 294.061, 377.439, -63.99227, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Portal to the Sepulcher - spell target --
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(85318, 0, 452.427, 1465.43, 125.1413, 1.064651);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Relios the Relic Keeper (ID: 45734) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Relios the Relic Keeper - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45734, 0, 0, 0, 2358, 0, 27465, 0, 0, 0,  'Relios the Relic Keeper',  '',  '', 0, 17, 17, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -2147483648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 61312, 61312, 61312, 61312, 61312, 61312, 0, 1, 0, 0, 0,  '');

-- Relios the Relic Keeper - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(45734, 2177, 0, 0);

-- Relios the Relic Keeper - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45732, 0, 0, 0, 1, 0, '');

-- Relios the Relic Keeper - text --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45732, 0, 0, 'You will have to pry the relics of the Dalaran archmages from my dead hands!', 12, 0, 100, 0, 0, 0, 'Relios the Relic Keeper 1');

-- Relios the Relic Keeper - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(45734, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Relios the Relic Keeper - text on agrro'),
(45734, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 3000, 3000, 11, 79868, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Relios the Relic Keeper - cast Arcane Blast'),
(45734, 0, 2, 0, 23, 0, 100, 0, 36032, 4, 0, 0, 11, 50273, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Relios the Relic Keeper - cast Arcane Barrage'),
(45734, 0, 3, 0, 29, 0, 100, 0, 0, 0, 0, 0, 11, 50648, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Relios the Relic Keeper - cast Blink');

-- Relios the Relic Keeper - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45734, 0, 1, 1, 0, 0, 62.5191, 305.576, 41.44648, 4.719315, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Relios the Relic Keeper - pickpocket loot --
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45734, 5368, 41, 1, 0, 1, 1), 
(45734, 858, 31, 1, 0, 1, 1), 
(45734, 4541, 13, 1, 0, 1, 1), 
(45734, 414, 9, 1, 0, 1, 1), 
(45734, 4537, 9, 1, 0, 1, 1), 
(45734, 1210, 3, 1, 0, 1, 1);

-- Relios the Relic Keeper - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(45734, 414, 4.3, 1, 0, 1, 1),
(45734, 858, 1.4, 1, 0, 1, 1),
(45734, 1179, 2.5, 1, 0, 1, 1),
(45734, 1738, 0.1, 1, 0, 1, 1),
(45734, 1739, 0.05, 1, 0, 1, 1),
(45734, 1740, 0.2, 1, 0, 1, 1),
(45734, 1742, 0.1, 1, 0, 1, 1),
(45734, 1743, 0.2, 1, 0, 1, 1),
(45734, 1744, 0.1, 1, 0, 1, 1),
(45734, 1745, 0.1, 1, 0, 1, 1),
(45734, 1764, 0.2, 1, 0, 1, 1),
(45734, 1766, 0.1, 1, 0, 1, 1),
(45734, 1767, 0.2, 1, 0, 1, 1),
(45734, 1768, 0.2, 1, 0, 1, 1),
(45734, 1769, 0.1, 1, 0, 1, 1),
(45734, 1770, 0.1, 1, 0, 1, 1),
(45734, 1787, 0.1, 1, 0, 1, 1),
(45734, 1788, 0.1, 1, 0, 1, 1),
(45734, 1789, 0.1, 1, 0, 1, 1),
(45734, 1791, 0.2, 1, 0, 1, 1),
(45734, 1792, 0.3, 1, 0, 1, 1),
(45734, 1793, 0.05, 1, 0, 1, 1),
(45734, 1794, 0.1, 1, 0, 1, 1),
(45734, 1811, 0.2, 1, 0, 1, 1),
(45734, 1812, 0.2, 1, 0, 1, 1),
(45734, 1813, 0.1, 1, 0, 1, 1),
(45734, 1814, 0.2, 1, 0, 1, 1),
(45734, 1815, 0.1, 1, 0, 1, 1),
(45734, 1817, 0.3, 1, 0, 1, 1),
(45734, 2216, 0.1, 1, 0, 1, 1),
(45734, 2217, 0.2, 1, 0, 1, 1),
(45734, 2409, 0.1, 1, 0, 1, 1),
(45734, 2455, 0.7, 1, 0, 1, 1),
(45734, 2555, 0.05, 1, 0, 1, 1),
(45734, 2589, 17.9, 1, 0, 1, 3),
(45734, 2592, 20.7, 1, 0, 1, 2),
(45734, 2764, 0.2, 1, 0, 1, 1),
(45734, 2780, 0.2, 1, 0, 1, 1),
(45734, 2781, 0.2, 1, 0, 1, 1),
(45734, 2973, 0.1, 1, 0, 1, 1),
(45734, 2974, 0.1, 1, 0, 1, 1),
(45734, 2982, 0.2, 1, 0, 1, 1),
(45734, 2983, 0.1, 1, 0, 1, 1),
(45734, 2984, 0.1, 1, 0, 1, 1),
(45734, 3184, 0.05, 1, 0, 1, 1),
(45734, 3196, 0.1, 1, 0, 1, 1),
(45734, 3205, 0.1, 1, 0, 1, 1),
(45734, 3376, 0.2, 1, 0, 1, 1),
(45734, 3377, 0.2, 1, 0, 1, 1),
(45734, 3645, 0.1, 1, 0, 1, 1),
(45734, 4408, 0.1, 1, 0, 1, 1),
(45734, 4567, 0.05, 1, 0, 1, 1),
(45734, 4571, 0.2, 1, 0, 1, 1),
(45734, 4697, 0.05, 1, 0, 1, 1),
(45734, 4701, 0.05, 1, 0, 1, 1),
(45734, 5212, 0.05, 1, 0, 1, 1),
(45734, 5578, 0.05, 1, 0, 1, 1),
(45734, 6344, 0.1, 1, 0, 1, 1),
(45734, 6378, 0.1, 1, 0, 1, 1),
(45734, 6379, 0.1, 1, 0, 1, 1),
(45734, 6528, 0.05, 1, 0, 1, 1),
(45734, 6538, 0.05, 1, 0, 1, 1),
(45734, 6539, 0.05, 1, 0, 1, 1),
(45734, 6541, 0.05, 1, 0, 1, 1),
(45734, 6546, 0.05, 1, 0, 1, 1),
(45734, 6547, 0.05, 1, 0, 1, 1),
(45734, 6548, 0.1, 1, 0, 1, 1),
(45734, 6551, 0.1, 1, 0, 1, 1),
(45734, 6559, 0.1, 1, 0, 1, 1),
(45734, 6560, 0.3, 1, 0, 1, 1),
(45734, 6575, 0.1, 1, 0, 1, 1),
(45734, 6585, 0.05, 1, 0, 1, 1),
(45734, 9784, 0.05, 1, 0, 1, 1),
(45734, 9785, 0.1, 1, 0, 1, 1),
(45734, 9786, 0.05, 1, 0, 1, 1),
(45734, 9790, 0.05, 1, 0, 1, 1),
(45734, 14167, 0.1, 1, 0, 1, 1),
(45734, 14173, 0.1, 1, 0, 1, 1),
(45734, 14174, 0.05, 1, 0, 1, 1),
(45734, 15268, 0.05, 1, 0, 1, 1),
(45734, 15926, 0.1, 1, 0, 1, 1),
(45734, 61312, -96, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Aquarius the Unbound (ID: 47009) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Aquarius the Unbound - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(47009, 0, 0, 0, 0, 0, 35383, 0, 0, 0, 'Aquarius the Unbound', '', '', 0, 16, 16, 0, 35, 35, 0, 1, 1.14286, 1, 4, 23, 31, 0, 56, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16, 23, 2, 4, 0, 47009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', 0, 3, 1.5, 1, 1, 0, 61307, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, '', 1);

-- Aquarius the Unbound - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(47009, 0, 0, 0);

-- Aquarius the Unbound - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(47009, 0, 0, 0, 1, 0, '');

-- Aquarius the Unbound - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(47009, 0, 0, 0, 1, 0, 100, 0, 0, 0, 30000, 30000, 11, 79865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aquarius the Unbound - cast Frost Armor'),
(47009, 0, 1, 0, 16, 0, 100, 0, 79865, 1, 0, 0, 11, 79865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aquarius the Unbound - cast Frost Armor when missing'),
(47009, 0, 2, 0, 0, 0, 100, 0, 6000, 6000, 10000, 10000, 11, 79850, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aquarius the Unbound - cast Frost Nova'),
(47009, 0, 3, 0, 0, 0, 100, 0, 2000, 2000, 5000, 5000, 11, 81167, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Aquarius the Unbound - cast Ice Lance');

-- Aquarius the Unbound - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 47009, 0, 1, 1, 0, 0, -151.813, 916.382, 65.66251, 5.30040, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Aquarius the Unbound - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(47009, 1740, 0.1, 1, 0, 1, 1),
(47009, 1743, 0.1, 1, 0, 1, 1),
(47009, 1744, 0.1, 1, 0, 1, 1),
(47009, 1745, 0.3, 1, 0, 1, 1),
(47009, 1764, 0.3, 1, 0, 1, 1),
(47009, 1766, 0.1, 1, 0, 1, 1),
(47009, 1767, 0.2, 1, 0, 1, 1),
(47009, 1769, 0.9, 1, 0, 1, 1),
(47009, 1789, 0.7, 1, 0, 1, 1),
(47009, 1791, 0.3, 1, 0, 1, 1),
(47009, 1793, 0.1, 1, 0, 1, 1),
(47009, 1812, 0.3, 1, 0, 1, 1),
(47009, 1813, 0.1, 1, 0, 1, 1),
(47009, 1814, 0.1, 1, 0, 1, 1),
(47009, 1815, 0.3, 1, 0, 1, 1),
(47009, 1817, 0.3, 1, 0, 1, 1),
(47009, 2073, 0.2, 1, 0, 1, 1),
(47009, 2078, 0.3, 1, 0, 1, 1),
(47009, 2216, 0.2, 1, 0, 1, 1),
(47009, 2217, 0.1, 1, 0, 1, 1),
(47009, 2764, 0.3, 1, 0, 1, 1),
(47009, 2780, 0.1, 1, 0, 1, 1),
(47009, 2781, 0.1, 1, 0, 1, 1),
(47009, 2970, 0.3, 1, 0, 1, 1),
(47009, 2977, 0.2, 1, 0, 1, 1),
(47009, 3377, 0.1, 1, 0, 1, 1),
(47009, 6536, 0.7, 1, 0, 1, 1),
(47009, 6537, 1.9, 1, 0, 1, 1),
(47009, 6538, 0.4, 1, 0, 1, 1),
(47009, 6539, 11.3, 1, 0, 1, 1),
(47009, 6540, 2.4, 1, 0, 1, 1),
(47009, 6541, 6.7, 1, 0, 1, 1),
(47009, 6542, 2.6, 1, 0, 1, 1),
(47009, 6543, 2.1, 1, 0, 1, 1),
(47009, 6545, 1.8, 1, 0, 1, 1),
(47009, 6546, 3.3, 1, 0, 1, 1),
(47009, 6547, 6.7, 1, 0, 1, 1),
(47009, 6548, 7.9, 1, 0, 1, 1),
(47009, 6550, 2.2, 1, 0, 1, 1),
(47009, 6551, 1.7, 1, 0, 1, 1),
(47009, 6552, 0.5, 1, 0, 1, 1),
(47009, 6553, 2.2, 1, 0, 1, 1),
(47009, 6554, 3.4, 1, 0, 1, 1),
(47009, 6556, 2.5, 1, 0, 1, 1),
(47009, 6557, 7.3, 1, 0, 1, 1),
(47009, 6558, 3.1, 1, 0, 1, 1),
(47009, 9748, 1.8, 1, 0, 1, 1),
(47009, 9749, 1.6, 1, 0, 1, 1),
(47009, 9757, 2.2, 1, 0, 1, 1),
(47009, 9765, 1.8, 1, 0, 1, 1),
(47009, 9767, 1, 1, 0, 1, 1),
(47009, 9768, 0.3, 1, 0, 1, 1),
(47009, 9770, 0.4, 1, 0, 1, 1),
(47009, 9775, 0.2, 1, 0, 1, 1),
(47009, 9777, 0.6, 1, 0, 1, 1),
(47009, 9779, 1.7, 1, 0, 1, 1),
(47009, 9785, 5.4, 1, 0, 1, 1),
(47009, 9786, 6.3, 1, 0, 1, 1),
(47009, 9787, 0.4, 1, 0, 1, 1),
(47009, 9788, 5, 1, 0, 1, 1),
(47009, 9789, 1.5, 1, 0, 1, 1),
(47009, 14166, 0.1, 1, 0, 1, 1),
(47009, 55974, 71, 1, 0, 1, 1),
(47009, 55982, 24.7, 1, 0, 1, 1),
(47009, 61307, -19, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- -- -- --
-- Gilneas Camera 01 (ID: 45427) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Gilneas Camera 01 - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45427, 0, 0, 0, 0, 0, 15435, 0, 0, 0,  'Gilneas Camera 01',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Gilneas Camera 01 - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(45427, 0, 0, 0);

-- Gilneas Camera 01 - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45427, 0, 0, 0, 1, 0, '');

-- Gilneas Camera 01 - spawn --
-- there isn't in sniff --

-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Gilneas Camera 01 (Target) (ID: 45430) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Gilneas Camera 01 (Target) - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45430, 0, 0, 0, 0, 0, 1126, 27823, 0, 0,  'Gilneas Camera 01 (Target)',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Gilneas Camera 01 (Target) - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(45430, 0, 0, 0);

-- Gilneas Camera 01 (Target) - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45430, 0, 0, 0, 1, 0, '');

-- Gilneas Camera 01 (Target) - spawn --
-- there isn't in sniff --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Lady Sylvanas Windrunner   (ID: 45525) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Lady Sylvanas Windrunner - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45525, 0, 0, 0, 0, 0, 28213, 0, 0, 0,  'Lady Sylvanas Windrunner',  'Banshee Queen',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 400, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lady Sylvanas Windrunner - equip --

-- Lady Sylvanas Windrunner - addon --

-- Lady Sylvanas Windrunner  - spawn --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Lady Sylvanas Windrunner   (ID: 45605) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Lady Sylvanas Windrunner - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45605, 0, 0, 0, 0, 0, 28213, 0, 0, 0,  'Lady Sylvanas Windrunner',  'Banshee Queen',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 400, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lady Sylvanas Windrunner - equip --

-- Lady Sylvanas Windrunner - addon --

-- Lady Sylvanas Windrunner - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45605, 0, 1, 4, 0, 0, -183.023, 1275.56, 46.45783, 3.124139, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- High Warlord Cromush (ID: 45612) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- High Warlord Cromush - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45612, 0, 0, 0, 0, 0, 34009, 0, 0, 0,  'High Warlord Cromush',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- High Warlord Cromush - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(45612, 18871, 0, 0);

-- High Warlord Cromush - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45612, 0, 0, 0, 1, 0, '');

-- High Warlord Cromush - spawn --
INSERT INTO `creature` (`guid`,  `id`,  `map`,  `spawnMask`,  `phaseMask`,  `modelid`,  `equipment_id`,  `position_x`,  `position_y`,  `position_z`,  `orientation`,  `spawntimesecs`,  `spawndist`,  `currentwaypoint`,  `curhealth`,  `curmana`,  `MovementType`,  `npcflag`,  `unit_flags`,  `dynamicflags`) VALUES
(NULL,  45612,  0,  1,  4,  0,  0,  -180.2,  1280.6,  45.91623,  3.124139,  300,  0,  0,  0,  0,  0,  0,  0,  0);


-- -- -- -- -- -- -- -- -- -- --
-- Lord Godfrey   (ID: 45556) -- 
-- -- -- -- -- -- -- -- -- -- --

-- Lord Godfrey - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45556, 0, 0, 0, 0, 0, 29675, 0, 0, 0,  'Lord Godfrey',  '',  'Inspect', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lord Godfrey

-- Lord Godfrey

-- Lord Godfrey

-- Lord Godfrey


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Commander Belmont   (ID: 45557) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Commander Belmont
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45557, 0, 0, 0, 0, 0, 34077, 0, 0, 0,  'Deathstalker Commander Belmont',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont


-- -- -- -- -- -- -- -- -- -- --
-- Lord Godfrey   (ID: 45576) --
-- -- -- -- -- -- -- -- -- -- --

-- Lord Godfrey - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45576, 0, 0, 0, 0, 0, 29675, 0, 0, 0,  'Lord Godfrey',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lord Godfrey - equip --

-- Lord Godfrey - addon --

-- Lord Godfrey - SAI --

-- Lord Godfrey - spawn --


-- -- -- -- -- -- -- -- -- -- --
-- Baron Ashbury  (ID: 45577) --
-- -- -- -- -- -- -- -- -- -- --

-- Baron Ashbury
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45577, 0, 0, 0, 0, 0, 30735, 0, 0, 0,  'Baron Ashbury',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Baron Ashbury

-- Baron Ashbury

-- Baron Ashbury

-- Baron Ashbury


-- -- -- -- -- -- -- -- -- --
-- Lord Walden (ID: 45578) --
-- -- -- -- -- -- -- -- -- --

-- Lord Walden 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45578, 0, 0, 0, 0, 0, 30730, 0, 0, 0,  'Lord Walden',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lord Walden 

-- Lord Walden 

-- Lord Walden 

-- Lord Walden 


-- -- -- -- -- -- -- -- -- --
-- Dark Ranger (ID: 45587) --
-- -- -- -- -- -- -- -- -- --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45587, 0, 0, 0, 0, 0, 30072, 30071, 30073, 0,  'Dark Ranger',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Dark Ranger

-- Dark Ranger

-- Dark Ranger

-- Dark Ranger


-- -- -- -- -- -- -- -- -- --
-- Dreadguard  (ID: 45588) --
-- -- -- -- -- -- -- -- -- --

-- Dreadguard
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45588, 0, 0, 0, 0, 0, 34172, 34173, 34174, 0,  'Dreadguard',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Dreadguard

-- Dreadguard

-- Dreadguard

-- Dreadguard


-- -- -- -- -- -- -- -- -- --
-- Orc Sea Dog (ID: 45589) --
-- -- -- -- -- -- -- -- -- --

-- Orc Sea Dog - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(45589, 0, 0, 0, 0, 0, 34175, 34176, 34177, 34178, 'Orc Sea Dog', '', '', 0, 12, 13, 0, 29, 29, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 4, 131462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45589, 0, 0, '', 0);

-- Orc Sea Dog - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45589, 1951, 54823, 0);

-- Orc Sea Dog - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45589, 0, 0, 0, 1, 0, '');

-- Orc Sea Dog - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45589, 0, 1, 1, 0, 0, -219.981, 1346.69, 36.25833, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -224.892, 1346.54, 36.61343, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -229.672, 1346.18, 37.23373, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -233.0625, 1358.24, 36.79281, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -229.821, 1357.77, 36.53423, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -219.745, 1350, 36.04373, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -225.134, 1349.94, 36.45663, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -229.8125, 1349.729, 37.06753, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -219.727, 1354.06, 35.82353, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -224.951, 1353.92, 36.26023, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -230.059, 1353.86, 36.78573, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -219.911, 1358.3, 35.63483, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -233.8351, 1353.96, 37.29716, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -224.682, 1358.05, 36.06263, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45589, 0, 1, 1, 0, 0, -237.0955, 1359.5, 37.11493, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- High Warlord Cromush (ID: 45593) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- High Warlord Cromush - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45593, 0, 0, 0, 0, 0, 34009, 0, 0, 0,  'High Warlord Cromush',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- High Warlord Cromush - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(45593, 18871, 0, 0);

-- High Warlord Cromush - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45593, 0, 0, 0, 1, 0, '');

-- High Warlord Cromush - spawn --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Apothecary  (ID: 45594) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Apothecary
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45594, 0, 0, 0, 0, 0, 34073, 34074, 34075, 34076,  'Forsaken Apothecary',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Apothecary

-- Forsaken Apothecary

-- Forsaken Apothecary

-- Forsaken Apothecary


-- -- -- -- -- -- -- -- -- -- -- --
-- Admiral Hatchet   (ID: 45598) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Admiral Hatchet
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45598, 0, 0, 0, 0, 0, 34181, 0, 0, 0,  'Admiral Hatchet',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Admiral Hatchet

-- Admiral Hatchet

-- Admiral Hatchet

-- Admiral Hatchet


-- -- -- -- -- -- -- -- -- -- --
-- Warlord Torok  (ID: 45599) --
-- -- -- -- -- -- -- -- -- -- --

-- Warlord Torok 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45599, 0, 0, 0, 0, 0, 34182, 0, 0, 0,  'Warlord Torok',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Warlord Torok 

-- Warlord Torok 

-- Warlord Torok 

-- Warlord Torok 


-- -- -- -- -- -- -- -- -- -- --
-- Orc Demolisher (ID: 45600) --
-- -- -- -- -- -- -- -- -- -- --

-- Orc Demolisher 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45600, 0, 0, 0, 0, 0, 28823, 0, 0, 0,  'Orc Demolisher',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Orc Demolisher 

-- Orc Demolisher 

-- Orc Demolisher 

-- Orc Demolisher 


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Catapult (ID: 45601) & Forsaken Blightspreader  (ID: 45602) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Catapult (ID: 45601) & Forsaken Blightspreader 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45601, 0, 0, 0, 0, 0, 23884, 0, 0, 0,  'Forsaken Catapult',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  ''),
(45602, 0, 0, 0, 0, 0, 25320, 25322, 25323, 25324,  'Forsaken Blightspreader',  '',  'Directions', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Catapult & Forsaken Blightspreader 

-- Forsaken Catapult & Forsaken Blightspreader 

-- Forsaken Catapult & Forsaken Blightspreader 

-- Forsaken Catapult & Forsaken Blightspreader 


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 45603) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45603, 0, 0, 0, 0, 0, 34050, 34051, 34052, 34053,  'Forsaken Trooper',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 45604) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45604, 0, 0, 0, 0, 0, 34054, 34055, 34056, 34057,  'Forsaken Trooper',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper


-- -- -- -- -- -- -- -- -- -- --
-- Lord Godfrey   (ID: 45606) --
-- -- -- -- -- -- -- -- -- -- --

-- Lord Godfrey 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45606, 0, 0, 0, 0, 0, 29675, 0, 0, 0,  'Lord Godfrey',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lord Godfrey 

-- Lord Godfrey 

-- Lord Godfrey 

-- Lord Godfrey 


-- -- -- -- -- -- -- -- -- -- --
-- Baron Ashbury  (ID: 45607) --
-- -- -- -- -- -- -- -- -- -- --

-- Baron Ashbury
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45607, 0, 0, 0, 0, 0, 30735, 0, 0, 0,  'Baron Ashbury',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Baron Ashbury

-- Baron Ashbury

-- Baron Ashbury

-- Baron Ashbury


-- -- -- -- -- -- -- -- -- --
-- Lord Walden (ID: 45608) --
-- -- -- -- -- -- -- -- -- --

-- Lord Walden
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45608, 0, 0, 0, 0, 0, 30730, 0, 0, 0,  'Lord Walden',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lord Walden

-- Lord Walden

-- Lord Walden

-- Lord Walden


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Lady Sylvanas Windrunner   (ID: 45617) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Lady Sylvanas Windrunner 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45617, 0, 0, 0, 0, 0, 28213, 0, 0, 0,  'Lady Sylvanas Windrunner',  'Banshee Queen',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 400, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Lady Sylvanas Windrunner 

-- Lady Sylvanas Windrunner 

-- Lady Sylvanas Windrunner 

-- Lady Sylvanas Windrunner - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45617, 0, 1, 1, 0, 0, -153.325, 1270.27, 51.54693, 3.071779, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Dark Ranger (ID: 45628) --
-- -- -- -- -- -- -- -- -- --

-- Dark Ranger 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45628, 0, 0, 0, 0, 0, 30072, 30071, 30073, 0,  'Dark Ranger',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Dark Ranger 

-- Dark Ranger 

-- Dark Ranger 

-- Dark Ranger 


-- -- -- -- -- -- -- -- -- --
-- Dreadguard  (ID: 45629) --
-- -- -- -- -- -- -- -- -- -- 

-- Dreadguard 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45629, 0, 0, 0, 0, 0, 34172, 34173, 34174, 0,  'Dreadguard',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Dreadguard 

-- Dreadguard 

-- Dreadguard 

-- Dreadguard 


-- -- -- -- -- -- -- -- -- --
-- Orc Sea Dog (ID: 45630) --
-- -- -- -- -- -- -- -- -- --

-- Orc Sea Dog - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45630, 0, 0, 0, 0, 0, 34175, 34176, 34177, 34178,  'Orc Sea Dog',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Orc Sea Dog

-- Orc Sea Dog

-- Orc Sea Dog

-- Orc Sea Dog - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45630, 0, 1, 1, 0, 0, -219.981, 1346.69, 36.25833, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -224.892, 1346.54, 36.61343, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -229.672, 1346.18, 37.23373, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -233.0625, 1358.24, 36.79281, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -229.821, 1357.77, 36.53423, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -219.745, 1350, 36.04373, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -225.134, 1349.94, 36.45663, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -229.8125, 1349.729, 37.06753, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -219.727, 1354.06, 35.82353, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -224.951, 1353.92, 36.26023, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -230.059, 1353.86, 36.78573, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -219.911, 1358.3, 35.63483, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -233.8351, 1353.96, 37.29716, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -224.682, 1358.05, 36.06263, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45630, 0, 1, 1, 0, 0, -237.0955, 1359.5, 37.11493, 4.607669, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- High Warlord Cromush (ID: 45631) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- High Warlord Cromush - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45631, 0, 0, 0, 0, 0, 34009, 0, 0, 0,  'High Warlord Cromush',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- High Warlord Cromush - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(45631, 18871, 0, 0);

-- High Warlord Cromush - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45631, 0, 0, 0, 1, 0, '');

-- High Warlord Cromush - SAI --

-- High Warlord Cromush - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45631, 0, 1, 1, 0, 0, -215.443, 1268.83, 46.26482, 4.54786, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Apothecary  (ID: 45632) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Apothecary
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45632, 0, 0, 0, 0, 0, 34073, 34074, 34075, 34076,  'Forsaken Apothecary',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Apothecary

-- Forsaken Apothecary

-- Forsaken Apothecary

-- Forsaken Apothecary - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45632, 0, 1, 1, 0, 0, -165.922, 1234.83, 51.9999, 5.58505, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45632, 0, 1, 1, 0, 0, -183.215, 1247.2, 51.4172, 4.24115, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45632, 0, 1, 1, 0, 0, -169.542, 1233.51, 52.0657, 5.09636, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45632, 0, 1, 1, 0, 0, -176.561, 1240.88, 51.6579, 3.75246, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Admiral Hatchet   (ID: 45633) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Admiral Hatchet - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45633, 0, 0, 0, 0, 0, 34181, 0, 0, 0,  'Admiral Hatchet',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Admiral Hatchet 

-- Admiral Hatchet 

-- Admiral Hatchet 

-- Admiral Hatchet - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45633, 0, 1, 1, 0, 0, -228.913, 1339.74, 37.40523, 1.675516, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Catapult (ID: 45636) & Forsaken Blightspreader  (ID: 45637) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Catapult & Forsaken Blightspreader - new templates -- 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45636, 0, 0, 0, 0, 0, 23884, 0, 0, 0,  'Forsaken Catapult',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  ''), 
(45637, 0, 0, 0, 0, 0, 25320, 25322, 25323, 25324,  'Forsaken Blightspreader',  '',  'Directions', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Catapult & Forsaken Blightspreader

-- Forsaken Catapult & Forsaken Blightspreader

-- Forsaken Catapult & Forsaken Blightspreader

-- Forsaken Catapult & Forsaken Blightspreader - spawns --


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 45638) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45638, 0, 0, 0, 0, 0, 34050, 34051, 34052, 34053,  'Forsaken Trooper',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 45639) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45639, 0, 0, 0, 0, 0, 34054, 34055, 34056, 34057,  'Forsaken Trooper',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper

-- Forsaken Trooper
