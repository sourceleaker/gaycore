 /* File contains:
- Apothecary Initiate (ID: 44786),
- Apothecary Witherbloom (ID: 44778),
- High Apothecary Shana T'veen (ID: 44784),
- Deathstalker Commander Belmont (ID: 44789),
- Deathstalker (ID: 44790),
- Apothecary Marry (ID: 45490),
- Ambermill Watcher (ID: 1888),
- Ambermill Witchalok (ID: 1889),
- Ambermill Warder (ID: 1913),
- Ambermill Magister (ID: 1914); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `creature_equip_template` WHERE `entry` IN (44786,44778,44784,44789,44790,45490);
DELETE FROM `creature_template_addon` WHERE `entry` IN (44786,44778,44784,44789,44790,45490);
DELETE FROM `creature` WHERE `id` IN (44786,44778,44784,44789,44790,45490);
DELETE FROM `creature_template` WHERE `entry` IN (44786,44778,44784,44789,44790,45490);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Initiate  (ID: 44786) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Initiate - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44786, 0, 0, 0, 0, 0, 34073, 34074, 34075, 34076, 'Apothecary Initiate', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- Apothecary Initiate 

-- Apothecary Initiate 

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
(44778, 0, 0, 0, 0, 0, 34071, 0, 0, 0, 'Apothecary Witherbloom', '', '', 0, 1, 1, 0, 35, 35, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- Apothecary Witherbloom

-- Apothecary Witherbloom

-- Apothecary Witherbloom - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44778, 0, 1, 4, 0, 0, 1409.33, 1065.86, 60.56173, 0.2268928, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- High Apothecary Shana T'veen  (ID: 44784) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- High Apothecary Shana T'veen - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44784, 0, 0, 0, 0, 0, 34072, 0, 0, 0, 'High Apothecary Shana T''veen', '', '', 0, 1, 1, 0, 35, 35, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- High Apothecary Shana T'veen - equip --

-- High Apothecary Shana T'veen - addon --

-- High Apothecary Shana T'veen  - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44784, 0, 1, 4, 0, 0, 1431.48, 1086.86, 60.56173, 3.752458, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Commander Belmont   (ID: 44789) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Commander Belmont - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44789, 0, 0, 0, 0, 0, 34077, 0, 0, 0,  'Deathstalker Commander Belmont',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44789, 0, 1, 4, 0, 0, 1415.23, 1010.15, 52.80423, 2.286381, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Deathstalker   (ID: 44790) --
-- -- -- -- -- -- -- -- -- -- --

-- Deathstalker - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44790, 0, 0, 0, 0, 0, 2685, 0, 0, 0,  'Deathstalker',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker

-- Deathstalker

-- Deathstalker - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44790, 0, 1, 4, 0, 0, 1412.63, 1011.4, 52.95393, 5.77704, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1415.05, 1008.17, 52.75253, 2.146755, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1415.5, 1012.99, 52.88033, 4.468043, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1417.19, 1009.78, 52.70093, 2.268928, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Marry   (ID: 45490 --
-- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Marry - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45490, 0, 0, 0, 0, 0, 34075, 0, 0, 0,  'Apothecary Marry',  'Trade Supplies',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Apothecary Marry - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45490, 0, 1, 4, 0, 0, 1422.57, 1097.31, 60.56173, 4.485496, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Watcher  (ID: 1888) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Watcher new template

-- Ambermill Watcher - equip --

-- Ambermill Watcher - addon --

-- Ambermill Watcher - SAI --

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


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Witchalok   (ID: 1889) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Witchalok - new template --

-- Ambermill Witchalok - equip --

-- Ambermill Witchalok - addon --

-- Ambermill Witchalok - SAI --

-- Ambermill Witchalok - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1889, 0, 1, 1, 0, 0, -64.6319, 1004.35, 66.42493, 3.577925, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -75.6944, 935.689, 69.47263, 2.984513, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -94.36725, 1027.507, 65.34836, 1.542259, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1889, 0, 1, 1, 0, 0, -99.31432, 944.1245, 68.55656, 4.227155, 300, 0, 0, 0, 0, 0, 0, 0, 0);

-- Ambermill Witchalok - loot --


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Warder   (ID: 1913) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Warder - new template --

-- Ambermill Warder - equip --

-- Ambermill Warder - addon --

-- Ambermill Warder - SAI --

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


-- -- -- -- -- -- -- -- -- -- -- --
-- Ambermill Magister (ID: 1914) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Ambermill Magister

-- Ambermill Magister

-- Ambermill Magister

-- Ambermill Magister

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

-- Ambermill Magister


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


-- -- -- -- -- -- -- -- -- -- --
-- White Chicken  (ID: 44338) --
-- -- -- -- -- -- -- -- -- -- --

-- White Chicken - new template --

-- White Chicken - equip --

-- White Chicken - addon --

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
(NULL, 45313, 0, 1, 1, 0, 0, -930.351, 1628.75, 68.44974, 1.692969, 300, 0, 0, 0, 0, 0, 0, 0, 0);
-- should be 3!!


-- -- -- -- -- -- -- -- --
-- Arthura  (ID: 45314) --
-- -- -- -- -- -- -- -- --

-- Arthura - new template --

-- Arthura - equip --

-- Arthura - addon --

-- Arthura - SAI --

-- Arthura - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45314, 0, 1, 1, 0, 0, -1166, 1147.98, 27.36593, 3.787364, 300, 0, 0, 0, 0, 0, 0, 0, 0);


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


-- -- -- -- -- -- -- -- -- -- --
-- Highlands Fox  (ID: 45335) --
-- -- -- -- -- -- -- -- -- -- --

-- Highlands Fox - new template --

-- Highlands Fox - equip --

-- Highlands Fox - addon --

-- Highlands Fox - SAI --

-- Highlands Fox - skinning --

-- Highlands Fox - spawns --


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

-- Veteran Forsaken Trooper 

-- Veteran Forsaken Trooper 

-- Veteran Forsaken Trooper 

-- Veteran Forsaken Trooper 

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