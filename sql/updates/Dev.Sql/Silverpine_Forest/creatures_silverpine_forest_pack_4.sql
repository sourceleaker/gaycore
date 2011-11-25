 /* File contains:
- Apothecary Initiate (ID: 44786),
- Apothecary Witherbloom (ID: 44778),
- High Apothecary Shana T'veen (ID: 44784),
- Deathstalker Commander Belmont (ID: 44789),
- Deathstalker (ID: 44790),
- Apothecary Marry (ID: 45490); */


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
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44786, 0, 1, 4, 0, 0, 1410.63, 1102.33, 60.56173, 1.500983, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1420.84, 1066.17, 60.56173, 5.288348, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1422.59, 1083.07, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1423.34, 1085.75, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1424.34, 1080.86, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1425.08, 1083.23, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.2, 1078.54, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.3, 1085.5, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1426.77, 1081.06, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1427.63, 1083.51, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1428.86, 1079.09, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1429.33, 1081.73, 60.56173, 0.8552113, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 44786, 0, 1, 4, 0, 0, 1443.92, 1079.12, 60.56133, 0.9250245, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Witherbloom  (ID: 44778) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Witherbloom - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44778, 0, 0, 0, 0, 0, 34071, 0, 0, 0, 'Apothecary Witherbloom', '', '', 0, 1, 1, 0, 35, 35, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- Apothecary Witherbloom

-- Apothecary Witherbloom

-- Apothecary Witherbloom - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44778, 0, 1, 4, 0, 0, 1409.33, 1065.86, 60.56173, 0.2268928, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- High Apothecary Shana T'veen  (ID: 44784) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- High Apothecary Shana T'veen - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44784, 0, 0, 0, 0, 0, 34072, 0, 0, 0, 'High Apothecary Shana T''veen', '', '', 0, 1, 1, 0, 35, 35, 3, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- High Apothecary Shana T'veen - equip --

-- High Apothecary Shana T'veen - addon --

-- High Apothecary Shana T'veen  - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44784, 0, 1, 4, 0, 0, 1431.48, 1086.86, 60.56173, 3.752458, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Commander Belmont   (ID: 44789) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Commander Belmont - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44789, 0, 0, 0, 0, 0, 34077, 0, 0, 0,  'Deathstalker Commander Belmont',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont

-- Deathstalker Commander Belmont - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44789, 0, 1, 4, 0, 0, 1415.23, 1010.15, 52.80423, 2.286381, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Deathstalker   (ID: 44790) --
-- -- -- -- -- -- -- -- -- -- --

-- Deathstalker - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44790, 0, 0, 0, 0, 0, 2685, 0, 0, 0,  'Deathstalker',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker

-- Deathstalker

-- Deathstalker - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44790, 0, 1, 4, 0, 0, 1412.63, 1011.4, 52.95393, 5.77704, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1415.05, 1008.17, 52.75253, 2.146755, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1415.5, 1012.99, 52.88033, 4.468043, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44790, 0, 1, 4, 0, 0, 1417.19, 1009.78, 52.70093, 2.268928, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Marry   (ID: 45490 --
-- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Marry - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(45490, 0, 0, 0, 0, 0, 34075, 0, 0, 0,  'Apothecary Marry',  'Trade Supplies',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Apothecary Marry - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45490, 0, 1, 4, 0, 0, 1422.57, 1097.31, 60.56173, 4.485496, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);











