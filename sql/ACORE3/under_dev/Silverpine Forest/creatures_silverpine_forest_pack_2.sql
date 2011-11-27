/* File contains:
- Orc Sea Dog (ID: 45196),
- Apothecary Wormcrud (ID: 44912),
- Orc Sea Dog (ID: 44913),
- "Salty" Gorgar (ID: 45497) and "Salty" Rocka (ID: 45498),
- Dreadguard (ID: 44911),
- Dark Ranger (ID: 44632),
- Lake Skulker (ID: 1953),
- Corpse-Fed Rat (ID: 50141),
- Forsaken Apothecary (ID: 46483),
- North Tide's Invisible Stalker (Large) (ID: 44923),
- North Tide's Invisible Stalker (ID: 44920),
- Worgen Renegade (ID: 44793),
- Forsaken Trooper (ID: 44792),
- Forsaken Trooper (ID: 44791),
- Hand of Ravenclaw (ID: 1870),
- Vile Fin Lakestalker (ID: 1909),
- Vile Fin Shorecreeper (ID: 1957),
- Vile Fin Shredder (ID: 1767),
- Vile Fin Tidecaller (ID: 1958),
- Quinn Yorick (ID: 1951),
- Rane Yorick (ID: 1950),
- Mutant Bush Chicken (ID: 44934),
- Vile Fin Oracle (ID: 46573) and (ID: 1908),
- Vile Fin Tidehunter (ID: 46574) and (ID: 1768),
- Reef Frezy (ID: 2173); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 44913) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (46573,46574,1908,1768,44923,44920,45196,44912,45498,46483,44911,44632) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4491300,4491301,4491302,4491303,4491304,4549800,4648300,4648300,4648301,4648302,4648303,4648304,4648305,4648306,4648307,4648308,4648309,4648310,4648311,4648311,4648312,4648313,4648314,4648315) AND `source_type` = 9;
DELETE FROM `creature_equip_template` WHERE `entry` IN (44793,45196,44912,44913,45497,45498,44911,44632,50141,46483,44923,44920,44934,1908,1768,46573,46574,2173);
DELETE FROM `creature_template_addon` WHERE `entry` IN (44793,45196,44912,44913,45497,45498,44911,44632,50141,46483,44923,44920,44934,1908,1768,46573,46574,2173);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 44913);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 44911);
DELETE FROM `waypoints` WHERE `entry` IN (SELECT `guid`*10 FROM `creature` WHERE `id` = 44911);
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (SELECT `guid` FROM `creature` WHERE `id` = 44911);
DELETE FROM `creature_text` WHERE `entry` IN (45196,44913,44912,45497,45498,44825);
DELETE FROM `creature` WHERE `id` IN (45196,44912,44913,45497,45498,44911,44632,1953,50141,46483,44923,44920,44793,44792,44791,1870,1909,1927,1767,1958,1951,1950,44934,1908,46574,1768,2173);
DELETE FROM `creature_template` WHERE `entry` IN (45196,44912,44913,45497,45498,44911,44632,50141,46483,44923,44920,44934,1908,1768,46573,46574,2173);
DELETE FROM `npc_vendor` WHERE `entry` IN (45497);
DELETE FROM `creature_loot_template` WHERE `entry` IN (1908,1768);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (1908,1768);


/* Set random HP - action 98 in SAI */


-- -- -- -- -- -- -- -- -- --
-- Orc Sea Dog (ID: 45196) --
-- -- -- -- -- -- -- -- -- --

-- Orc Sea Dog - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(45196, 0, 0, 0, 0, 0, 34175, 34176, 34177, 34178, 'Orc Sea Dog', '', '', 0, 12, 13, 0, 29, 29, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 4, 131462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45196, 0, 0, '', 0);

-- Orc Sea Dog - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45196, 1951, 54823, 0);

-- Orc Sea Dog - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45196, 0, 0, 0, 1, 0, '');

-- Orc Sea Dog - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(45196, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Sea Dog - set passive react state on resp"), 
(45196, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 84511, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Sea Dog - cast Mortally Wounded"),
(45196, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 81312, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Sea Dog - cast Stun"),
(45196, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 98, 25, 25, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Orc Sea Dog - set 25% of HP on resp");

-- Orc Sea Dog - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45196, 0, 0, 'AAAAAAAAAALLLLLLLLLLEEEEEEEEE!!! ARRRRRRRRGGGHHHH!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 1'),
(45196, 1, 0, 'Crush and clobber! Bobber slobber!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 2'),
(45196, 2, 0, 'Forshaken do... that''sh who...It''sh sho big... Look at it''sh big shtupid neck. I jusht want to choke it to death!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 3'),
(45196, 3, 0, 'HELL OF A KICK TO THAT ALE!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 4'),
(45196, 4, 0, 'I may or may not have pissed myself.', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 5'),
(45196, 5, 0, 'My power has returned!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 6'),
(45196, 6, 0, 'ORC NEEDS PEANUTS!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 7');

-- Orc Sea Dog - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45196, 0, 1, 1, 0, 0, 765.248, 1093.94, 48.0727, 0.925025, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 616.816, 1188.34, 81.0424, 5.70723, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 696.316, 1052.45, 48.7967, 1.65806, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 578.91, 1171.06, 84.9791, 2.60054, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 641.431, 1224.85, 80.7408, 3.92699, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 712.628, 1263.45, 70.9625, 4.50295, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 666.066, 1185.65, 67.9365, 2.68781, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 730.37, 1106.86, 50.2807, 4.20624, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 657.102, 1012.59, 46.5611, 5.5676, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 606.269, 1150.88, 80.4771, 1.02974, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 621.806, 1124.21, 64.9758, 0.20944, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 648.988, 979.177, 39.2709, 1.85005, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 651.035, 1166.49, 69.2841, 1.0472, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 789.184, 1163.82, 49.6739, 2.68781, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 751.472, 1053.77, 45.976, 3.01942, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 786.868, 1220.59, 55.7701, 5.13127, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 667.755, 1086.57, 57.4343, 0.296706, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 652.467, 1259.76, 81.2911, 6.02139, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 712.694, 1023.62, 46.579, 3.52556, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 742.955, 1161.14, 52.2729, 1.41372, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 813.38, 1247.77, 55.5406, 4.10152, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45196, 0, 1, 1, 0, 0, 757.302, 1250.64, 59.3606, 6.02139, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Wormcrud  (ID: 44912) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Wormcrud - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44912, 0, 0, 0, 0, 0, 34071, 0, 0, 0, 'Apothecary Wormcrud', '', '', 0, 13, 13, 0, 68, 68, 3, 1, 1, 1, 0, 17, 23, 0, 44, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 11, 17, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44912, 0, 0, '', 0);

-- Apothecary Wormcrud - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44912, 2716, 3756, 0);

-- Apothecary Wormcrud - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44912, 0, 0, 'Touch my chicken and I will kill you in your sleep. Am I understood?', 0, 0, 100, 0, 0, 0, 'Apothecary Wormcrud 1');

-- Apothecary Wormcrud - SAI --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(44912, 0, 0, 0, 1, 0, 100, 0, 26000, 26000, 200000, 200000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Apothecary Wormcrud - taking with Orc Sea Dogs - text 1"), 
(44912, 0, 1, 0, 1, 0, 100, 0, 30000, 30000, 200000, 200000, 11, 48349, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Apothecary Wormcrud - taking with Orc Sea Dogs - emote point");

-- Apothecary Wormcrud - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44912, 0, 1, 1, 0, 0, 1081.15, 1568.67, 28.1656, 2.93215, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


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
SET @GUID11 = (SELECT MAX(guid)+11 FROM `creature`);
SET @GUID12 = (SELECT MAX(guid)+12 FROM `creature`);
SET @GUID13 = (SELECT MAX(guid)+13 FROM `creature`);
SET @GUID14 = (SELECT MAX(guid)+14 FROM `creature`);
SET @GUID15 = (SELECT MAX(guid)+15 FROM `creature`);
SET @GUID16 = (SELECT MAX(guid)+16 FROM `creature`);
SET @GUID17 = (SELECT MAX(guid)+17 FROM `creature`);
SET @GUID18 = (SELECT MAX(guid)+18 FROM `creature`);
SET @GUID19 = (SELECT MAX(guid)+19 FROM `creature`);
SET @GUID20 = (SELECT MAX(guid)+20 FROM `creature`);


-- -- -- -- -- -- -- -- -- --
-- Orc Sea Dog (ID: 44913) --
-- -- -- -- -- -- -- -- -- --

-- Orc Sea Dog - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44913, 0, 0, 0, 0, 0, 34175, 34176, 34177, 34178, 'Orc Sea Dog', '', '', 0, 10, 14, 0, 29, 29, 0, 1, 1, 1, 0, 20, 27, 0, 50, 1, 2000, 0, 1, 33536, 2048, 0, 0, 0, 0, 0, 13, 20, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44913, 0, 0, '', 0);

-- Orc Sea Dog - equip --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(44913, 0, 0, 0);

-- Orc Sea Dog - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44913, 0, 0, 0, 0, 0, NULL);

-- Orc Sea Dog - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID1, 44913, 0, 1, 1, 0, 0, 1099.52, 1526.13, 29.273, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID2, 44913, 0, 1, 1, 0, 0, 1047.52, 1554.73, 28.4351, 0.436332, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID3, 44913, 0, 1, 1, 0, 0, 1092.88, 1569.25, 28.1606, 0.994838, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID4, 44913, 0, 1, 1, 0, 0, 1048.43, 1577.51, 27.8868, 3.82755, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID5, 44913, 0, 1, 1, 0, 0, 1075.01, 1570.57, 28.0543, 5.95157, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID6, 44913, 0, 1, 1, 0, 0, 1075.44, 1572.58, 27.968, 5.68977, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID7, 44913, 0, 1, 1, 0, 0, 1036.41, 1564.58, 28.4806, 4.88692, 300, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(@GUID8, 44913, 0, 1, 1, 0, 0, 1084.8, 1598.59, 27.7694, 1.5708, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID9, 44913, 0, 1, 1, 0, 0, 1050.33, 1602.24, 27.8973, 2.54818, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID10, 44913, 0, 1, 1, 0, 0, 1098.83, 1518.96, 29.7254, 0.715585, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID11, 44913, 0, 1, 1, 0, 0, 1041.45, 1573.91, 27.9923, 5.96903, 300, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(@GUID12, 44913, 0, 1, 1, 0, 0, 1045.3, 1568.22, 28.2058, 1.44862, 300, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(@GUID13, 44913, 0, 1, 1, 0, 0, 1052.23, 1570.48, 28.0118, 4.04022, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID14, 44913, 0, 1, 1, 0, 0, 1081.87, 1537.38, 28.561, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID15, 44913, 0, 1, 1, 0, 0, 1091.98, 1551.86, 28.4279, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID16, 44913, 0, 1, 1, 0, 0, 1055.71, 1589.95, 28.0841, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID17, 44913, 0, 1, 1, 0, 0, 1031.65, 1542.32, 29.9974, 2.56563, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID18, 44913, 0, 1, 1, 0, 0, 1055.76, 1545.03, 28.4105, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID19, 44913, 0, 1, 1, 0, 0, 1081.37, 1592.4, 27.9108, 4.75621, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID20, 44913, 0, 1, 1, 0, 0, 1074.23, 1568.82, 28.1164, 6.05629, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Orc Sea Dog - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44913, 0, 0, 'Forshaken do... that''sh who...It''sh sho big... Look at it''sh big shtupid neck. I jusht want to choke it to death!', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 1'),
(44913, 1, 0, 'It''sh makin'' me hungry... why''s it shooo big? You shome kind of idiot or shomething? Makin'' a chicken sho big... Who doesh that?', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 2'),
(44913, 2, 0, 'What''sh with the huuuuge bush chick-a-doodle?', 12, 0, 100, 0, 0, 0, 'Orc Sea Dog 3');

-- Orc Sea Dog - SAI --
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-@GUID1, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID2, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID3, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 4491303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID4, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID8, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 4491304, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID9, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 4491303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID7, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID11, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID10, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 4491303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID12, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID13, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID14, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID15, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID16, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID17, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 80, 4491303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID18, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(-@GUID19, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 87, 4491300, 4491301, 4491302, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - call random timed actionlist on reset'),
(4491300, 9, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 90, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - emote sleep'),
(4491300, 9, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 83831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - cast Drunken Seadog'),
(4491301, 9, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 83832, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - cast Drunken Seadog'),
(4491301, 9, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 53, 0, 4491301, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - walking around'),
(4491302, 9, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 90, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - emote sit'),
(4491302, 9, 1, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 42871, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - drink'),
(4491303, 9, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 83829, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - Drunken Seadog'),
(4491303, 9, 1, 0, 0, 0, 100, 0, 0, 0, 70000, 70000, 11, 83885, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - SICK!'),
(4491304, 9, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 83885, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog - yyyy'),
(-@GUID5, 0, 0, 0, 1, 0, 100, 0, 0, 0, 200000, 200000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 1 - taking with Apothecary Wormcrud - text 1'), 
(-@GUID5, 0, 1, 0, 1, 0, 100, 0, 4000, 4000, 200000, 200000, 11, 48349, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 1 - taking with Apothecary Wormcrud - emote point'), 
(-@GUID20, 0, 0, 0, 1, 0, 100, 0, 8000, 8000, 200000, 200000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 2 - taking with Apothecary Wormcrud - text 1'), 
(-@GUID20, 0, 1, 0, 1, 0, 100, 0, 12000, 12000, 200000, 200000, 11, 79506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 2 - taking with Apothecary Wormcrud - emote talk'), 
(-@GUID6, 0, 0, 0, 1, 0, 100, 0, 16000, 16000, 200000, 200000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 3 - taking with Apothecary Wormcrud - text 1'), 
(-@GUID6, 0, 1, 0, 1, 0, 100, 0, 20000, 20000, 200000, 200000, 11, 48350, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Sea Dog 3 - taking with Apothecary Wormcrud - emote roar');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- "Salty" Gorgar (ID: 45497) and "Salty" Rocka (ID: 45498) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- "Salty" Gorgar and "Salty" Rocka - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(45497, 0, 0, 0, 0, 0, 34615, 0, 0, 0, '"Salty" Gorgar', 'General Goods', '', 0, 14, 14, 0, 29, 29, 4737, 1, 1, 1, 0, 20, 27, 0, 50, 1, 2000, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 13, 20, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 45497, 0, 0, '', 0),
(45498, 0, 0, 0, 0, 0, 34616, 0, 0, 0, '"Salty" Rocka', 'Stable Master', '', 0, 14, 14, 0, 29, 29, 4194305, 1, 1, 1, 0, 20, 27, 0, 50, 1, 2000, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 13, 20, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 45498, 0, 0, '', 0);

-- "Salty" Gorgar - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45497, 0, 0, 'That''s my name! Your name should be I can''t hold onto petsh." I can''t believe anyone would trusht you with a beasht.', 14, 0, 100, 0, 0, 0, '"Salty Gorgar 1'),
(45497, 0, 1, 'Hey, shtop bothering me. You''re a dishgrace to us all. You can''t even hold onto your own petsh!', 14, 0, 100, 0, 0, 0, '"Salty Gorgar 2'),
(45497, 0, 2, 'Maybe you should worry about your pet and not me! I''m taking care of my bushinesh jusht fine!', 14, 0, 100, 0, 0, 0, '"Salty Gorgar 3'),
(45497, 0, 3, 'Shhh! SHHH!!!!! Maybe if you shtay quiet your pet might come back to you!', 14, 0, 100, 0, 0, 0, '"Salty Gorgar 4'),
(45497, 0, 4, 'It''s Salty!" I got here firsht! I got off the boat and onto land firsht! I called the name Salty." Hey... Where''s your pet at?', 14, 0, 100, 0, 0, 0, '"Salty Gorgar 5');

-- "Salty Rocka" - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45498, 0, 0, '"Malty!" Hey, "Malty!" I thought you were going to get us shome more booze! What''sh the hold up?', 14, 0, 100, 0, 0, 0, '"Salty Rocka 1'),
(45498, 0, 1, 'Hey over there! Hey! Hey! Over there! How''sh everything going Gororgararar?', 14, 0, 100, 0, 0, 0, '"Salty Rocka 2'),
(45498, 0, 2, 'Yoo hoo! "Shmaltzy!" Hey, why come your shupplies... Whe... Oh... Um... You got lots of boxes to keep track of...', 14, 0, 100, 0, 0, 0, '"Salty Rocka 13'),
(45498, 0, 3, 'Hey, "Salty" when are you going to get a new name? Thish town ain''t big ''nough for two of ussh...', 14, 0, 100, 0, 0, 0, '"Salty Rocka 4'),
(45498, 0, 4, 'Pssst! Pssst! Hey! "Pepper!" Are you done hording all the shupplies! You shee what I just did? Horde.. For the horde!', 14, 0, 100, 0, 0, 0, '"Salty Rocka 5'),
(45498, 1, 0, 'HA! Shows how much you know. I left the critter back on the third ship!', 14, 0, 100, 0, 0, 0, '"Salty Rocka 6'),
(45498, 1, 1, 'I sent my pet out to get me shome more to drink. You''ll be shorry when he shows up with a wagon full of Mudder''s Milk and you don''t get any.', 14, 0, 100, 0, 0, 0, '"Salty Rocka 7'),
(45498, 1, 2, 'My pet! Oh no! Uh... I am shure that pet is around here somewhere...', 14, 0, 100, 0, 0, 0, '"Salty Rocka 8'),
(45498, 1, 3, 'Wait... Where is my pet? It''s gone! No need to panic... Just need a quick drink and I can figure out where he went to.', 14, 0, 100, 0, 0, 0, '"Salty Rocka 9'),
(45498, 1, 4, 'I didn''t like that pet anyways. Beshides... People stop by all the time and give me their pets. If I lost one, it doesn''t matter, I''ve got dozens more to lose!', 14, 0, 100, 0, 0, 0, '"Salty Rocka 10');

-- "Salty" Gorgar and "Salty" Rocka - SAI -- 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(45498, 0, 0, 0, 1, 0, 100, 0, 0, 0, 300000, 435000, 80, 4549800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Salty Rocka - call timed actionlist - talking with Salty Gorgar'),
(4549800, 9, 0, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Salty Rocka - talking with Salty Gorgar - text 1'),
(4549800, 9, 1, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 45497, 0, 0, 0, 0, 0, 0, 'Salty Gorgar - talking with Salty Rocka - text 1'),
(4549800, 9, 2, 0, 0, 0, 100, 1, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Salty Rocka - talking with Salty Gorgar - text 2');

-- "Salty" Gorgar and "Salty" Rocka - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45497, 0, 1, 1, 0, 0, 1036.46, 1581, 27.6597, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45498, 0, 1, 1, 0, 0, 1084.7, 1578.18, 27.9124, 3.15905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- "Salty" Gorgar - vendor --
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(45497, 0, 159, 0, 0, 0),
(45497, 0, 1179, 0, 0, 0),
(45497, 0, 2320, 0, 0, 0),
(45497, 0, 2321, 0, 0, 0),
(45497, 0, 2324, 0, 0, 0),
(45497, 0, 2604, 0, 0, 0),
(45497, 0, 2605, 0, 0, 0),
(45497, 0, 2678, 0, 0, 0),
(45497, 0, 2880, 0, 0, 0),
(45497, 0, 2901, 0, 0, 0),
(45497, 0, 3371, 0, 0, 0),
(45497, 0, 4289, 0, 0, 0),
(45497, 0, 4470, 0, 0, 0),
(45497, 0, 4496, 0, 0, 0),
(45497, 0, 4498, 0, 0, 0),
(45497, 0, 4540, 0, 0, 0),
(45497, 0, 4541, 0, 0, 0),
(45497, 0, 5042, 0, 0, 0),
(45497, 0, 5956, 0, 0, 0),
(45497, 0, 6217, 0, 0, 0),
(45497, 0, 6256, 0, 0, 0),
(45497, 0, 6260, 0, 0, 0),
(45497, 0, 6529, 0, 0, 0),
(45497, 0, 6530, 0, 0, 0),
(45497, 0, 7005, 0, 0, 0),
(45497, 0, 39354, 0, 0, 0);


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
SET @GUID11 = (SELECT MAX(guid)+11 FROM `creature`);
SET @GUID12 = (SELECT MAX(guid)+12 FROM `creature`);
SET @GUID13 = (SELECT MAX(guid)+13 FROM `creature`);
SET @GUID14 = (SELECT MAX(guid)+14 FROM `creature`);


-- -- -- -- -- -- -- -- -- --
-- Dreadguard  (ID: 44911) --
-- -- -- -- -- -- -- -- -- --

-- Dreadguard - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44911, 0, 0, 0, 0, 0, 34172, 34173, 34174, 0, 'Dreadguard', '', 'Directions', 0, 25, 25, 0, 71, 71, 0, 1, 1, 1, 0, 35, 48, 0, 86, 1, 2000, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 24, 36, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44911, 0, 0, '', 0);

-- Dreadguard - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID1, 44911, 0, 1, 1, 0, 0, 1407.86, 758.686, 47.251, 5.10239, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID2, 44911, 0, 1, 1, 0, 0, 1406.33, 762.382, 47.251, 5.10175, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID3, 44911, 0, 1, 1, 0, 0, 1405.85, 763.525, 47.2406, 5.09844, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID4, 44911, 0, 1, 1, 0, 0, 1404.8, 766.08, 47.1723, 5.10124, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID8, 44911, 0, 1, 1, 0, 0, 1392.73, 754.227, 47.127, 1.93373, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID7, 44911, 0, 1, 1, 0, 0, 1391.76, 756.789, 47.127, 1.93373, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID6, 44911, 0, 1, 1, 0, 0, 1390.99, 758.803, 47.127, 1.93373, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID5, 44911, 0, 1, 1, 0, 0, 1389.98, 761.468, 47.127, 1.93373, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID9, 44911, 0, 1, 1, 0, 0, 581.188, 1415.65, 96.1034, 1.97969, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID10, 44911, 0, 1, 1, 0, 0, 583.941, 1416.84, 95.9784, 1.97951, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID11, 44911, 0, 1, 1, 0, 0, 1117.66, 1613.94, 28.6475, 1.69638, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID12, 44911, 0, 1, 1, 0, 0, 1120.64, 1614.32, 29.0225, 1.69645, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID13, 44911, 0, 1, 1, 0, 0, -137.166, 1269.76, 51.918, 4.32525, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID14, 44911, 0, 1, 1, 0, 0, 496.234, 1559.18, 128.202, 4.78836, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 472.252, 1540.76, 131.273, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 511.608, 1626.58, 125.61, 4.55531, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 554.099, 1579.75, 131.211, 3.31613, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 573.306, 1440.54, 101.784, 2.63545, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 573.944, 1436.88, 100.802, 4.72984, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 589.641, 1422.11, 96.6094, 5.16617, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 574.674, 1412.9, 96.2322, 5.48033, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 558.766, 1426.97, 99.6041, 0.087266, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 556.385, 1430.23, 100.313, 1.50098, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1055.05, 1527.54, 28.8191, 5.0091, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1060.81, 1530.14, 28.5248, 5.14872, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1078.19, 1524.5, 28.614, 3.94444, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1082.33, 1519.08, 29.0821, 4.32842, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1048.9, 1610.89, 27.1401, 1.0472, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1044.64, 1612.1, 26.6093, 1.58825, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1083.23, 1610.55, 27.7301, 2.18166, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1086.61, 1612.24, 27.5396, 1.78024, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -198.755, 1246.43, 50.3613, 1.37881, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -160.024, 1235.28, 51.9569, 5.48033, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -147.91, 1244.81, 52.6919, 5.58505, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -160.04, 1296.09, 46.3285, 3.63029, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -170.361, 1307.74, 44.2411, 4.10152, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, -187.793, 1308.37, 41.9593, 4.15388, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1493.03, 637.668, 46.5305, 5.16617, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1490.52, 637.488, 46.6394, 4.74729, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1477.5, 623.538, 48.7312, 0.15708, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1477.24, 620.839, 48.9788, 5.5676, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 485.446, 1509.74, 135.315, 1.22173, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 1083.29, 1589.95, 27.7936, 3.36848, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44911, 0, 1, 1, 0, 0, 464.031, 1486.93, 146.788, 1.15192, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Dreadguard - addon --
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@GUID1, @GUID1*10, 0, 0, 0, 0, NULL),
(@GUID5, @GUID5*10, 0, 0, 0, 0, NULL),
(@GUID9, @GUID9*10, 0, 0, 0, 0, NULL),
(@GUID11, @GUID11*10, 0, 0, 0, 0, NULL),
(@GUID13, @GUID13*10, 0, 0, 0, 0, NULL),
(@GUID14, @GUID14*10, 0, 0, 0, 0, NULL);

-- Dreadguard - formations --
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES 
(@GUID1, @GUID2, 10, 180, 2),
(@GUID1, @GUID3, 10, 180, 2),
(@GUID1, @GUID4, 10, 180, 2),
(@GUID5, @GUID6, 10, 180, 2),
(@GUID5, @GUID7, 10, 180, 2),
(@GUID5, @GUID8, 10, 180, 2),
(@GUID9, @GUID10, 10, 270, 2),
(@GUID11, @GUID12, 10, 270, 2);

-- Dreadguard - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@GUID1*10, 0, 1410.17, 753.541, 47.126, 'Dreadguard'),
(@GUID1*10, 1, 1417.17, 736.283, 47.126, 'Dreadguard'),
(@GUID1*10, 2, 1423.97, 720.928, 47.126, 'Dreadguard'),
(@GUID1*10, 3, 1432.56, 704.45, 47.126, 'Dreadguard'),
(@GUID1*10, 4, 1439.54, 693.879, 47.126, 'Dreadguard'),
(@GUID1*10, 5, 1448.44, 682.401, 47.126, 'Dreadguard'),
(@GUID1*10, 6, 1456.08, 670.67, 47.1077, 'Dreadguard'),
(@GUID1*10, 7, 1462.32, 663.525, 46.6699, 'Dreadguard'),
(@GUID1*10, 8, 1471.98, 653.387, 46.5311, 'Dreadguard'),
(@GUID1*10, 9, 1479.22, 645.783, 46.6704, 'Dreadguard'),
(@GUID1*10, 10, 1490.23, 634.226, 46.8072, 'Dreadguard'),
(@GUID1*10, 11, 1414.3, 742.586, 47.1241, 'Dreadguard'),
(@GUID1*10, 12, 1421.36, 726.575, 47.1241, 'Dreadguard'),
(@GUID1*10, 13, 1427.95, 712.914, 47.1241, 'Dreadguard'),
(@GUID1*10, 14, 1434.81, 700.301, 47.1241, 'Dreadguard'),
(@GUID1*10, 15, 1442.06, 689.674, 47.1241, 'Dreadguard'),
(@GUID1*10, 16, 1449.5, 680.853, 47.1241, 'Dreadguard'),
(@GUID1*10, 17, 1457.63, 669.115, 47.0617, 'Dreadguard'),
(@GUID1*10, 18, 1462.49, 663.962, 46.669, 'Dreadguard'),
(@GUID1*10, 19, 1471.9, 653.747, 46.5185, 'Dreadguard'),
(@GUID1*10, 20, 1479, 646.014, 46.668, 'Dreadguard'),
(@GUID1*10, 21, 1489.6, 634.991, 46.7845, 'Dreadguard'),
(@GUID1*10, 22, 1409.78, 753.018, 47.1242, 'Dreadguard'),
(@GUID1*10, 23, 1406.49, 763.871, 47.1242, 'Dreadguard'),
(@GUID1*10, 24, 1400.7, 777.674, 47.1243, 'Dreadguard'),
(@GUID1*10, 25, 1395.34, 790.609, 47.1243, 'Dreadguard'),
(@GUID1*10, 26, 1389.31, 805.468, 47.148, 'Dreadguard'),
(@GUID1*10, 27, 1384.05, 818.764, 47.6839, 'Dreadguard'),
(@GUID1*10, 28, 1379.18, 831.891, 48.8162, 'Dreadguard'),
(@GUID1*10, 29, 1375.53, 841.737, 49.7759, 'Dreadguard'),
(@GUID1*10, 30, 1373.1, 848.297, 50.6195, 'Dreadguard'),
(@GUID1*10, 31, 1370.67, 854.861, 50.9623, 'Dreadguard'),
(@GUID1*10, 32, 1368.23, 861.425, 51.7566, 'Dreadguard'),
(@GUID1*10, 33, 1365.8, 867.988, 52.1898, 'Dreadguard'),
(@GUID1*10, 34, 1363.37, 874.552, 52.6094, 'Dreadguard'),
(@GUID1*10, 35, 1360.94, 881.116, 53.4167, 'Dreadguard'),
(@GUID1*10, 36, 1358.5, 887.679, 53.7952, 'Dreadguard'),
(@GUID1*10, 37, 1355.38, 896.202, 54.5992, 'Dreadguard'),
(@GUID1*10, 38, 1353.2, 906.474, 54.5992, 'Dreadguard'),
(@GUID1*10, 39, 1351.02, 916.745, 54.5992, 'Dreadguard'),
(@GUID1*10, 40, 1348.72, 927.549, 54.5992, 'Dreadguard'),
(@GUID1*10, 41, 1346.78, 934.273, 54.5992, 'Dreadguard'),
(@GUID1*10, 42, 1344.65, 943.085, 54.5992, 'Dreadguard'),
(@GUID1*10, 43, 1344.05, 946.534, 54.5992, 'Dreadguard'),
(@GUID1*10, 44, 1343.15, 952.149, 54.5992, 'Dreadguard'),
(@GUID1*10, 45, 1343.51, 959.14, 54.5992, 'Dreadguard'),
(@GUID1*10, 46, 1343.75, 964.272, 54.5992, 'Dreadguard'),
(@GUID1*10, 47, 1343.34, 970.163, 54.5992, 'Dreadguard'),
(@GUID1*10, 48, 1341.65, 976.955, 54.5992, 'Dreadguard'),
(@GUID1*10, 49, 1339.95, 983.747, 54.5992, 'Dreadguard'),
(@GUID1*10, 50, 1338.03, 991.265, 54.5992, 'Dreadguard'),
(@GUID1*10, 51, 1335.33, 997.251, 54.5992, 'Dreadguard'),
(@GUID1*10, 52, 1333.82, 1002.5, 54.5992, 'Dreadguard'),
(@GUID1*10, 53, 1331.4, 1009.07, 54.5992, 'Dreadguard'),
(@GUID1*10, 54, 1328.98, 1015.64, 54.5992, 'Dreadguard'),
(@GUID1*10, 55, 1326.57, 1022.21, 54.5992, 'Dreadguard'),
(@GUID1*10, 56, 1323.98, 1029.18, 54.5992, 'Dreadguard'), -- pause
(@GUID1*10, 57, 1326.57, 1022.21, 54.5992, 'Dreadguard'),
(@GUID1*10, 58, 1328.98, 1015.64, 54.5992, 'Dreadguard'),
(@GUID1*10, 59, 1331.4, 1009.07, 54.5992, 'Dreadguard'),
(@GUID1*10, 60, 1333.82, 1002.5, 54.5992, 'Dreadguard'),
(@GUID1*10, 61, 1335.33, 997.251, 54.5992, 'Dreadguard'),
(@GUID1*10, 62, 1338.03, 991.265, 54.5992, 'Dreadguard'),
(@GUID1*10, 63, 1339.95, 983.747, 54.5992, 'Dreadguard'),
(@GUID1*10, 64, 1341.65, 976.955, 54.5992, 'Dreadguard'),
(@GUID1*10, 65, 1343.34, 970.163, 54.5992, 'Dreadguard'),
(@GUID1*10, 66, 1343.75, 964.272, 54.5992, 'Dreadguard'),
(@GUID1*10, 67, 1343.51, 959.14, 54.5992, 'Dreadguard'),
(@GUID1*10, 68, 1343.15, 952.149, 54.5992, 'Dreadguard'),
(@GUID1*10, 69, 1344.05, 946.534, 54.5992, 'Dreadguard'),
(@GUID1*10, 70, 1344.65, 943.085, 54.5992, 'Dreadguard'),
(@GUID1*10, 71, 1346.78, 934.273, 54.5992, 'Dreadguard'),
(@GUID1*10, 72, 1348.72, 927.549, 54.5992, 'Dreadguard'),
(@GUID1*10, 73, 1351.02, 916.745, 54.5992, 'Dreadguard'),
(@GUID1*10, 74, 1353.2, 906.474, 54.5992, 'Dreadguard'),
(@GUID1*10, 75, 1355.38, 896.202, 54.5992, 'Dreadguard'),
(@GUID1*10, 76, 1358.5, 887.679, 53.7952, 'Dreadguard'),
(@GUID1*10, 77, 1360.94, 881.116, 53.4167, 'Dreadguard'),
(@GUID1*10, 78, 1363.37, 874.552, 52.6094, 'Dreadguard'),
(@GUID1*10, 79, 1365.8, 867.988, 52.1898, 'Dreadguard'),
(@GUID1*10, 80, 1368.23, 861.425, 51.7566, 'Dreadguard'),
(@GUID1*10, 81, 1370.67, 854.861, 50.9623, 'Dreadguard'),
(@GUID1*10, 82, 1373.1, 848.297, 50.6195, 'Dreadguard'),
(@GUID1*10, 83, 1375.53, 841.737, 49.7759, 'Dreadguard'),
(@GUID1*10, 84, 1379.18, 831.891, 48.8162, 'Dreadguard'),
(@GUID1*10, 85, 1384.05, 818.764, 47.6839, 'Dreadguard'),
(@GUID1*10, 86, 1389.31, 805.468, 47.148, 'Dreadguard'),
(@GUID1*10, 87, 1395.34, 790.609, 47.1243, 'Dreadguard'),
(@GUID1*10, 88, 1400.7, 777.674, 47.1243, 'Dreadguard'),
(@GUID1*10, 89, 1406.49, 763.871, 47.1242, 'Dreadguard');

-- Dreadguard - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44911, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 1500, 1500, 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Dreadguard - cast Shoot'),
(44911, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dreadguard - sheath melee');


-- -- -- -- -- -- -- -- -- --
-- Dark Ranger (ID: 44632) --
-- -- -- -- -- -- -- -- -- --

-- Dark Ranger - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44632, 0, 0, 0, 0, 0, 30072, 30071, 30073, 0, 'Dark Ranger', NULL, NULL
, 0, 25, 25, 0, 71, 71, 0, 1, 1, 1, 0, 35, 48, 0, 86, 1, 2000, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 24, 36, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44632, 0, 0, '', 1);

-- Dark Ranger - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44632, 0, 0, 34263);

-- Dark Ranger - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44632, 0, 0, 0, 258, 0, '');

-- Dark Ranger - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44632, 0, 1, 0, 9, 0, 100, 0, 10, 20, 20000, 25000, 11, 22910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - cast Immolation Trap'),
(44632, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - set event phase 1 on reset'),
(44632, 0, 3, 8, 9, 0, 100, 0, 5, 30, 1500, 1500, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - set event phase 1 when player at the distance of more than 5 yards'),
(44632, 0, 4, 5, 9, 0, 100, 0, 0, 5, 1500, 1500, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - set event phase 2 when player at the distance of less than 5 yards'),
(44632, 0, 5, 0, 61, 2, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - allow combat movement in event phase 2'),
(44632, 0, 6, 0, 0, 1, 100, 0, 3000, 3000, 20000, 20000, 11, 80009, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - cast Serpent String'),
(44632, 0, 7, 0, 0, 1, 100, 0, 1500, 1500, 2000, 2000, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - cast Shoot'),
(44632, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dark Ranger - disallow combat movement when attacked');

-- Dark Ranger - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44632, 0, 1, 1, 0, 0, -161.925, 1263.68, 50.4392, 3.14159, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1389.54, 1047.81, 53.0405, 3.57792, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1341.2, 1009.05, 54.6825, 3.19395, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 1, 0, 0, -161.528, 1277.13, 48.6888, 3.15905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1341.66, 1020.96, 54.3438, 0.488692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1345.66, 1010.64, 54.3924, 0.349066, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1430.03, 1022.59, 52.4911, 3.28122, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 1, 0, 0, -149.997, 1268.22, 52.1089, 3.15905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1360.47, 1063.27, 53.0297, 0.78262, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 1, 0, 0, -149.601, 1272.58, 51.6135, 3.15905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1337.14, 1018.39, 54.7498, 3.59538, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1400.93, 1003.38, 53.0367, 2.09439, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1367.17, 1082.13, 52.508, 4.97419, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44632, 0, 1, 2, 0, 0, 1387.23, 1008.67, 53.0143, 3.81944, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Dark Ranger - waypoints --


-- -- -- -- -- -- -- -- -- --
-- Lake Skulker (ID: 1953) --
-- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- --
-- Corpse-Fed Rat (ID: 50141) --
-- -- -- -- -- -- -- -- -- --

-- Corpse-Fed Rat - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(50141, 0, 0, 0, 0, 0, 1141, 1418, 0, 0, 'Corpse-Fed Rat', '', '', 0, 1, 1, 0, 31, 31, 0, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 50141, 0, 0, '', 0);

-- Corpse-Fed Rat - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(50141, 0, 0, 0);

-- Corpse-Fed Rat - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(50141, 0, 0, 0, 0, 0, '');

-- Corpse-Fed Rat - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 50141, 0, 1, 1, 0, 0, 535.3108, 1641.602, 104.8119, 2.69164, 300, 5, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 50141, 0, 1, 1, 0, 0, 535.4969, 1639.71, 104.8119, 3.444385, 300, 5, 0, 0, 0, 0, 0, 0, 0, 0), 
(NULL, 50141, 0, 1, 1, 0, 0, 537.1118, 1637.495, 104.8119, 0.9282057, 300, 5, 0, 0, 0, 0, 0, 0, 0, 0);


-- ----------- --
--  Variables  --
-- ----------- --
SET @FORAPO1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @FORAPO2 = (SELECT MAX(guid)+2 FROM `creature`);
SET @FORAPO3 = (SELECT MAX(guid)+3 FROM `creature`);
SET @FORAPO4 = (SELECT MAX(guid)+4 FROM `creature`);
SET @FORAPO5 = (SELECT MAX(guid)+5 FROM `creature`);
SET @FORAPO6 = (SELECT MAX(guid)+6 FROM `creature`);
SET @FORAPO7 = (SELECT MAX(guid)+7 FROM `creature`);
SET @FORAPO8 = (SELECT MAX(guid)+8 FROM `creature`);
SET @FORAPO9 = (SELECT MAX(guid)+9 FROM `creature`);
SET @FORAPO10 = (SELECT MAX(guid)+10 FROM `creature`);
SET @FORAPO11 = (SELECT MAX(guid)+11 FROM `creature`);
SET @FORAPO12 = (SELECT MAX(guid)+12 FROM `creature`);
SET @FORAPO13 = (SELECT MAX(guid)+13 FROM `creature`);
SET @FORAPO14 = (SELECT MAX(guid)+14 FROM `creature`);
SET @FORAPO15 = (SELECT MAX(guid)+15 FROM `creature`);
SET @FORAPO16 = (SELECT MAX(guid)+16 FROM `creature`);


-- -- -- -- -- -- -- -- -- -- -- -- -- 
-- Forsaken Apothecary  (ID: 46483) --
-- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Forsaken Apothecary - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(46483, 0, 0, 0, 0, 0, 34073, 34074, 34075, 34076, 'Forsaken Apothecary', NULL, NULL, 0, 10, 11, 0, 68, 68, 0, 1, 1, 1, 0, 14, 18, 0, 40, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 9, 13, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 46483, 0, 0, '', 0);

-- Forsaken Apothecary - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(46483, 2716, 0, 0);

-- Forsaken Apothecary - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(46483, 0, 0, 0, 0, 0, '');

-- Forsaken Apothecary - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-@FORAPO1, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648300, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648300, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648300, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648300, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648300, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648300, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648300, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO2, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648301, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648301, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648301, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648301, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648301, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648301, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648301, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO3, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648302, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648302, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648302, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648302, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648302, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648302, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648302, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO4, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648303, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648303, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648303, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648303, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648303, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648303, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO5, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648304, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648304, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648304, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648304, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648304, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648304, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648304, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO6, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648305, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648305, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648305, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648305, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648305, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648305, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648305, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO7, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648306, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648306, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648306, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648306, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648306, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648306, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648306, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO8, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648307, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648307, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648307, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648307, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648307, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648307, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648307, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO9, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648308, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648308, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648308, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648308, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648308, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648308, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648308, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO10, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648309, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648309, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648309, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648309, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648309, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648309, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648309, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO11, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648310, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648310, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648310, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648310, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648310, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648310, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648310, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO12, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648311, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648311, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648311, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648311, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648311, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648311, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648311, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO13, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648312, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648312, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648312, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648312, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648312, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648312, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648312, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO14, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648313, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648313, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648313, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648313, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648313, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648313, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648313, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO15, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648314, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648314, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648314, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648314, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648314, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648314, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648314, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(-@FORAPO16, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 19000, 22000, 80, 4648315, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648315, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 00, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote use'),
(4648315, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648315, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote knell'),
(4648315, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop'),
(4648315, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 5, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote work'),
(4648315, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Apothecary - emote stop');

-- Forsaken Apothecary - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@FORAPO1, 46483, 0, 1, 1, 0, 0, 1431.49, 724.036, 47.3869, 1.01229, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO2, 46483, 0, 1, 1, 0, 0, 1409.81, 808.057, 47.2876, 1.01229, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO3, 46483, 0, 1, 1, 0, 0, 1333.45, 798.637, 35.9711, 3.00197, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO4, 46483, 0, 1, 1, 0, 0, 1332.17, 805.174, 36.2236, 4.11898, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO5, 46483, 0, 1, 1, 0, 0, 1353.39, 672.589, 34.315, 3.68265, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO6, 46483, 0, 1, 1, 0, 0, 1367.75, 995.832, 51.5314, 5.34071, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO7, 46483, 0, 1, 1, 0, 0, 1235.41, 932.179, 36.7391, 4.88692, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO8, 46483, 0, 1, 1, 0, 0, 1335.13, 889.604, 54.6825, 3.82227, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO9, 46483, 0, 1, 1, 0, 0, 1343.77, 855.62, 51.9948, 5.49779, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO10, 46483, 0, 1, 1, 0, 0, 1345.96, 689.316, 34.4665, 2.47837, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO11, 46483, 0, 1, 1, 0, 0, 1343.36, 725.688, 34.895, 4.62512, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO12, 46483, 0, 1, 1, 0, 0, 1242.9, 926.411, 36.5725, 3.05433, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO13, 46483, 0, 1, 1, 0, 0, 1465.37, 705.832, 46.5972, 5.34071, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO14, 46483, 0, 1, 1, 0, 0, 1435.98, 711.431, 47.2417, 5.86431, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO15, 46483, 0, 1, 1, 0, 0, 1346.85, 701.274, 34.3751, 4.59022, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FORAPO16, 46483, 0, 1, 1, 0, 0, 1471.05, 696.757, 45.8992, 1.15192, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46483, 0, 1, 1, 0, 0, -165.922, 1234.83, 51.9999, 5.58505, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46483, 0, 1, 1, 0, 0, -183.215, 1247.2, 51.4172, 4.24115, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46483, 0, 1, 1, 0, 0, -169.542, 1233.51, 52.0657, 5.09636, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46483, 0, 1, 1, 0, 0, -176.561, 1240.88, 51.6579, 3.75246, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- North Tide's Invisible Stalker (Large) (ID: 44923) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- North Tide's Invisible Stalker (Large) - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44923, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'North Tide''s Invisible Stalker (Large)', NULL, NULL, 0, 1, 1, 0, 35, 35, 0, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 33555200, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44923, 0, 0, '', 0);

-- North Tide's Invisible Stalker (Large) - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44923, 0, 0, 0);

-- North Tide's Invisible Stalker (Large) - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44923, 0, 0, 0, 0, 0, '');

-- North Tide's Invisible Stalker (Large) - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44923, 0, 0, 0, 1, 0, 100, 0, 0, 0, 59000, 59000, 11, 83859, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'North Tide''s Invisible Stalker (Large) - visual fire');

-- North Tide's Invisible Stalker (Large) - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44923, 0, 1, 2, 0, 0, 897.332, 2001.8, 22.5203, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 894.368, 1999.25, 36.6358, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 884.255, 2000.68, 20.4944, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 883.583, 1999.61, 30.9413, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 872.208, 2013.82, 7.51289, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 868.497, 1969.4, 13.434, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 858.29, 1988.23, 21.4765, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 857.045, 1988.51, 33.8758, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 854.931, 1996.12, 23.1678, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 854.509, 1971.53, 16.1494, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 854.373, 1978.08, 13.4359, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 853.248, 1963.13, 15.8548, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 777.811, 1966.75, 14.301, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 771.299, 1986.25, 10.9212, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 770.806, 1971.12, 18.5317, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 758.462, 1980.03, 20.4012, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 755.887, 1980.81, 39.68, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 749.278, 1982.07, 28.2174, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 764.943, 2005.98, 16.8315, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 773.016, 2013.58, 39.0615, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44923, 0, 1, 2, 0, 0, 770.684, 2011.08, 30.1271, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- North Tide's Invisible Stalker   (ID: 44920) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- North Tide's Invisible Stalker - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44920, 0, 0, 0, 0, 0, 1126, 11686, 0, 0, 'North Tide''s Invisible Stalker', NULL, NULL, 0, 1, 1, 0, 35, 35, 0, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 33555200, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44920, 0, 0, '', 0);

-- North Tide's Invisible Stalker - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44920, 0, 0, 0);

-- North Tide's Invisible Stalker - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44920, 0, 0, 0, 0, 0, '');

-- North Tide's Invisible Stalker - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44920, 0, 0, 0, 1, 0, 100, 0, 0, 0, 59000, 59000, 11, 83859, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'North Tide''s Invisible Stalker - visual fire');

-- North Tide's Invisible Stalker - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44920, 0, 1, 2, 0, 0, 971.398, 1788.09, 13.3874, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 957.92, 1797.66, 13.3701, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 956.792, 1812.83, 12.2806, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 948.191, 1807.73, 13.1869, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 942.576, 1815.47, 12.2608, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 933.608, 1809.38, 13.8822, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 932.627, 1842.13, 12.5323, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 931.495, 1836.67, 11.2939, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 930.634, 1814.94, 11.8174, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 929.321, 1823.71, 14.2983, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 929.276, 1837.74, 10.7905, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 927.064, 1847.41, 9.07781, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 923.873, 1831.86, 8.5879, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 922.833, 1838.28, 10.769, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 919.908, 1843.46, 10.2225, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 917.335, 1758.79, 22.9145, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 914.099, 1751.46, 17.0107, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 912.288, 1754.49, 23.3643, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 893.078, 1760.48, 21.79, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 892.891, 1754.42, 24.0867, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 891.339, 1761.82, 17.8207, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 884.064, 1764.6, 17.8094, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 883.597, 1774.26, 20.8004, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 880.34, 1813.55, 11.2633, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 879.08, 1824.82, 10.1398, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 878.738, 1766.43, 18.7578, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 878.639, 1782.4, 15.2316, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 877.328, 1813.67, 12.5315, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 876.028, 1827.06, 11.8243, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 874.033, 1771.67, 15.2267, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 863.804, 1730.3, 17.3113, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 862.538, 1735.39, 16.8811, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 862.219, 1743.05, 16.7921, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 808.774, 1856.89, 0.746446, 5.71164, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 851.088, 1875.19, 1.82351, 5.65737, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 874.488, 1887.47, 1.77991, 3.84388, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 814.857, 1820.04, 15.2378, 4.05751, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 814.113, 1799.85, 15.26, 1.1319, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 812.89, 1802.3, 11.8274, 1.99898, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 813.914, 1805.29, 11.1399, 3.3198, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 838.537, 1751.01, 17.9854, 4.60016, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 826.738, 1755.08, 19.8131, 2.99795, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 882.85, 1894.15, 1.29654, 0.566634, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 909.187, 1861.56, 6.35022, 0.973687, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 904.261, 1860.24, 5.69336, 3.7440, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44920, 0, 1, 2, 0, 0, 906.872, 1870.95, 9.73565, 3.60516, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Worgen Renegade   (ID: 44793) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Worgen Renegade - new template --
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44793;

-- Worgen Renegade - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44793, 0, 0, 0, 1, 0, '');

-- Worgen Renegade - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44793, 0, 0, 0);

-- Worgen Renegade - SAI --

-- Worgen Renegade - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44793, 0, 1, 1, 0, 0, 1235.47, 1109.26, 50.7712, 1.14332, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1219.99, 1216.22, 52.6025, 3.89527, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1110.5, 1105.93, 41.3837, 2.49582, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1094.94, 1116.51, 40.6298, 5.58505, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1127.56, 1154.62, 47.4365, 0.648739, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1303.02, 1106.97, 49.0719, 3.91937, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1248.4, 1167.29, 52.1384, 1.27137, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1252.56, 1285.84, 50.9489, 6.19208, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1152.24, 1157.35, 48.9129, 3.73261, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1175.27, 1214.86, 49.625, 4.2305, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1195.62, 1172.9, 46.4742, 5.88296, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1106.73, 1116.95, 40.8236, 1.0821, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1277.2, 935.337, 44.6832, 0.037436, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1280.02, 1159.66, 52.5951, 3.69524, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1215.89, 1236.16, 52.4411, 0.838172, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1315.92, 1066.26, 54.0835, 5.24222, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1186.54, 1126.21, 40.7219, 2.32969, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1248.54, 1143.04, 48.112, 0.791104, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1294.2, 989.767, 49.4224, 0.549052, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1250.98, 1218.57, 52.6464, 3.74856, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1268.45, 1128.05, 48.0951, 2.74397, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1258.57, 1195.78, 52.6384, 3.85556, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1306.1, 958.203, 54.639, 4.86854, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1306.05, 1138.77, 52.084, 3.47065, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1272.7, 1015.36, 45.7772, 1.55078, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1252.4, 1264.77, 52.5649, 1.82053, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1271.79, 1059.66, 54.0792, 4.10309, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1259.72, 1084.51, 52.4299, 4.41483, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1186.46, 1196.79, 49.3492, 3.52555, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44793, 0, 1, 1, 0, 0, 1219.08, 1066.63, 38.2267, 6.16764, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 44792) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44792, 0, 1, 1, 0, 0, 1355.18, 664.875, 34.2413, 4.36218, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1221.12, 1216.19, 52.6025, 1.07624, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1294.31, 987.53, 49.4224, 5.34808, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1446.02, 701.774, 47.4749, 4.15388, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1154.62, 1158.72, 48.9129, 5.08854, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1195.81, 1171.66, 46.3492, 5.9219, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1216.81, 1068.18, 38.1102, 3.19238, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1217.27, 1235.18, 52.5661, 5.20618, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1339.6, 794.274, 37.5794, 0.593412, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1249.23, 1166.16, 52.237, 5.48812, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1186.12, 1126.75, 40.6785, 2.33272, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1188.07, 1196.61, 49.6318, 3.05067, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1350.24, 845.002, 50.906, 5.84685, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1252.54, 1219.87, 52.5618, 2.77866, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1277.13, 933.87, 44.6832, -2.81005, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1358.2, 707.056, 36.6754, 1.39626, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1254.17, 917.618, 36.2525, 0.767945, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1237.85, 948.587, 36.9976, 0.122173, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1266.4, 920.193, 39.8016, 1.68534, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1252.34, 1287.24, 50.8239, -1.4466, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1235.28, 1106.57, 50.8962, 6.07659, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1271.21, 1126.95, 48.9091, 0.933742, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44792, 0, 1, 1, 0, 0, 1251.34, 1265.01, 52.6334, 3.97584, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken Trooper  (ID: 44791) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken Trooper - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44791, 0, 1, 1, 0, 0, 1249.45, 1142.54, 48.347, 0.990653, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1315.27, 1067.36, 54.3831, 3.06924, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1430.58, 731.878, 47.2885, 3.15905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1272.65, 1013.07, 45.979, 4.01478, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1260.06, 1086.04, 52.4299, 1.18757, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1404.94, 812.708, 47.4813, 3.1765, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1177.51, 1215.43, 50.375, 5.24159, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1348, 791.877, 40.284, 1.82777, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1258.99, 1197.88, 52.6428, 5.94572, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1481.82, 688.55, 44.9473, 3.28122, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1460.24, 719.503, 47.4172, 4.13643, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1303.99, 1108.74, 48.9478, 3.10154, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1306.1, 958.203, 54.639, 0.321275, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1308.35, 1137.37, 52.459, 3.68134, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1335.04, 894.106, 54.6825, 6.16101, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1413.77, 871.096, 47.9727, 3.50811, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1127.04, 1152.01, 47.0615, 2.05978, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1281.72, 1158.19, 52.6221, 3.26789, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44791, 0, 1, 1, 0, 0, 1273.38, 1060.52, 53.9542, 2.41909, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Hand of Ravenclaw  (ID: 1870) --
-- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Vile Fin Lakestalker  (ID: 1909) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Vile Fin Shorecreeper (ID: 1957) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- --
-- Vile Fin Shredder  (ID: 1767) --
-- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Vile Fin Tidecaller  (ID: 1958)) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- --
-- Quinn Yorick (ID: 1951) --
-- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- --
-- Rane Yorick  (ID: 1950) --
-- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Mutant Bush Chicken  (ID: 44934) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Mutant Bush Chicken - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44934, 0, 0, 0, 0, 0, 34189, 0, 0, 0, 'Mutant Bush Chicken', '', '', 0, 1, 1, 0, 189, 189, 0, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 33536, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44934, 0, 0, '', 0);

-- Mutant Bush Chicken - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44934, 0, 0, 0);

-- Mutant Bush Chicken - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44934, 0, 0, 0, 0, 0, '');

-- Mutant Bush Chicken - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44934, 0, 1, 1, 0, 0, 1079.24, 1567.11, 28.2029, 2.86234, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Vile Fin Oracle   (ID: 46573) and (ID: 1908) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Vile Fin Oracle - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1908, 0, 0, 0, 0, 0, 540, 0, 0, 0, 'Vile Fin Oracle', NULL, NULL, 0, 10, 11, 0, 18, 18, 0, 1, 1, 1, 0, 14, 18, 0, 40, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 1908, 1908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 43, 'SmartAI', 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1908, 0, 0, '', 0),
(46573, 0, 0, 0, 0, 0, 540, 0, 0, 0, 'Vile Fin Oracle', NULL, NULL, 0, 10, 11, 0, 18, 18, 0, 1, 1, 1, 0, 14, 18, 0, 40, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 46573, 46573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 43, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 46573, 0, 0, '', 0);

-- Vile Fin Oracle - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(1908, 0, 0, 0),
(46573, 0, 0, 0);

-- Vile Fin Oracle - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1908, 0, 0, 0, 0, 0, ''),
(46573, 0, 0, 0, 0, 0, '');

-- Vile Fin Oracle -  SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1908, 0, 0, 0, 0, 0, 100, 0, 1000, 1500, 3000, 5000, 11, 9734, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Oracle - cast Holy Smite'),
(46573, 0, 0, 0, 0, 0, 100, 0, 1000, 1500, 3000, 5000, 11, 9734, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Oracle - cast Holy Smite');

-- Vile Fin Oracle - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 46573, 0, 1, 1, 0, 0, 392.874, 659.393, 34.0726, 0.384051, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 46573, 0, 1, 1, 0, 0, 393.215, 647.284, 34.3226, 2.06284, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 46573, 0, 1, 1, 0, 0, 395.318, 640.067, 34.6976, 3.22539, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 46573, 0, 1, 1, 0, 0, 492.76, 732.785, 33.553, 4.6884, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 46573, 0, 1, 1, 0, 0, 440.757, 710.508, 36.634, 6.00043, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 305.402, 638.401, 41.3652, 5.36853, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 399.362, 619.991, 38.5867, 2.47815, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 449.799, 707.707, 33.6339, 6.14986, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 515.558, 716.281, 25.7851, 4.95674, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1182.68, 463.386, 27.7063, 5.06479, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1153.23, 358.261, 34.1762, 2.95493, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1151.24, 454.519, 33.2399, 4.08575, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1154.76, 424.79, 31.1827, 1.13415, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1193.57, 375.176, 34.7027, 1.40172, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1211.6, 379.969, 33.9352, 3.42085, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 494.537, 755.264, 39.1347, 6.1689, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1146.34, 387.561, 34.0606, 5.75671, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1177.73, 393.737, 35.1469, 3.30068, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1089.46, 582.363, 42.2136, 5.00478, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1156.25, 514.834, 36.5416, 5.13319, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 484.447, 724.095, 33.678, 0.331613, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1119.91, 618.064, 42.3502, 4.39064, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1198.81, 378.829, 35.2755, 3.78216, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1159.23, 381.604, 35.4356, 1.40436, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1213.87, 376.211, 33.4352, 0.666133, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1093.64, 321.023, 36.0178, 0.522393, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1209.89, 376.5, 34.8102, 4.80118, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1180.85, 348.602, 34.0638, 1.3356, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1094.07, 342.848, 35.0932, 0.400472, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1204.85, 341.419, 34.971, 3.74568, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1188.68, 297.761, 33.9472, 3.95822, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1203.22, 386.232, 35.3102, 5.48947, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1185.95, 414.168, 49.5175, 4.96106, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1112.23, 310.139, 34.8037, 4.95357, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 743.888, 203.337, 37.9123, 3.1748, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 767.759, 110.33, 35.05, 3.52236, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 811.135, 170.043, 33.4521, 0.142205, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 723.801, 200.702, 35.1188, 4.97741, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 795.611, 163.823, 33.4474, 2.89981, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 821.354, 108.854, 38.6061, 1.14612, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 841.365, 81.1756, 36.1797, 4.17731, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 867.641, 75.4761, 33.7648, 4.14074, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 805.687, 168.311, 33.4521, 2.90806, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 880.063, 86.4665, 34.2648, 1.8383, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 729.054, 203.986, 35.7436, 1.24727, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 798.958, 159.375, 35.1974, 1.22454, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 714.527, 202.587, 34.4936, 6.25766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 790.664, 196.196, 37.8966, 2.5927, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 823.553, 157.43, 36.212, 5.95798, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 756.095, 179.421, 34.3008, 6.16987, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 737.219, 189.494, 33.9258, 0.042166, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 788.305, 196.104, 38.5216, 1.29227, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 905.704, 142.63, 36.0562, 3.92781, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 752.909, 275.951, 38.1858, 1.51898, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 980.043, 138.288, 35.597, 4.61666, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 806.199, 224.259, 35.4521, 2.5994, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 712.89, 210.967, 35.4936, 2.69977, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1010, 155.294, 40.8007, 5.765, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 728.356, 205.089, 35.9937, 5.91978, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 748.136, 249.019, 42.7299, 2.78782, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 780.761, 113.236, 34.5502, 0.575495, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 943.789, 163.024, 39.1328, 1.5792, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 804.381, 258.629, 35.9364, 3.29013, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 829.729, 62.377, 35.9593, 1.2799, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1111.06, 223.28, 34.0261, 4.85986, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 857.851, 112.217, 33.6288, 2.44767, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1106.81, 306.648, 35.1787, 3.76732, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1043.28, 247.291, 36.7486, 1.18707, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1089.58, 260.416, 35.2412, 1.14997, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1022.89, 154.041, 37.8007, 0.266098, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 713.017, 202.608, 34.2437, 2.33841, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 735.147, 253.972, 41.2299, 2.75333, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1079.32, 312.894, 36.3928, 3.06863, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 760.532, 285.717, 34.8108, 4.56211, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1209.13, 384.315, 34.3102, 5.02058, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1065.7, 261.426, 35.9986, 3.87382, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1004.47, 145.438, 39.3007, 2.36212, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 930.542, 204.977, 37.7041, 3.69256, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1031.31, 176.284, 33.1277, 6.17943, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 788.491, 154.257, 34.3224, 0.967467, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 893.24, 208.327, 37.486, 0.708316, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1093.63, 205.763, 35.014, 4.56114, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1176.7, 344.499, 34.3139, 2.89927, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 718.777, 198.222, 34.4676, 0.607614, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 880.494, 98.6651, 35.2648, 1.53462, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 740.753, 307.002, 33.636, 4.12081, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 785.669, 274.095, 36.6031, 0.156805, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1215.1, 376.562, 33.0602, 1.5708, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 788.492, 194.598, 37.7716, 0.262929, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 818.734, 102.324, 37.7311, 3.29145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 919.759, 190.62, 38.6334, 4.67323, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 745.128, 204.638, 38.4126, 3.25691, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 809.243, 59.9676, 34.9593, 1.93797, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1189.7, 298.547, 34.1971, 0.290811, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 854.964, 76.1964, 35.5547, 5.29689, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1070.61, 327.581, 35.8928, 2.85519, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 934.7, 207.926, 37.0904, 5.58994, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1211.15, 339.976, 34.721, 5.4421, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1129.87, 213.077, 34.5261, 5.16656, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1052.08, 280.43, 36.173, 3.19605, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 902.383, 158.626, 37.5562, 3.12884, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1091.08, 308.189, 37.5178, 2.75982, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 719.469, 207.654, 36.1187, 2.59099, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1169.77, 376.348, 34.8969, 2.51915, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 803.527, 194.819, 34.9521, 2.9888, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 917, 153.424, 37.8062, 2.73874, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1128.14, 240.931, 34.0567, 6.12349, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1209.73, 381.305, 34.3102, 4.12717, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 974.395, 148.036, 37.0971, 3.7462, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 898.46, 224.198, 32.611, 1.04574, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 709.969, 206.567, 34.1186, 2.30644, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1092.89, 334.489, 35.0932, 3.97077, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1082.08, 280.492, 35.3393, 0.954445, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 727.997, 222.202, 38.8686, 6.09559, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1908, 0, 1, 1, 0, 0, 1111.93, 281.305, 34.2202, 1.26632, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Vile Fin Oracle - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1908, 1179, 3, 1, 0, 1, 1),
(1908, 2455, 6, 1, 0, 1, 1),
(1908, 2996, 9, 1, 0, 3, 4),
(1908, 5784, 9, 1, 0, 1, 1),
(1908, 21071, 3, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- Vile Fin Tidehunter  (ID: 46574) and (ID: 1768) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Vile Fin Tidehunter - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(1768, 0, 0, 0, 0, 0, 346, 0, 0, 0, 'Vile Fin Tidehunter', NULL, NULL, 0, 11, 12, 0, 18, 18, 0, 1, 1, 1, 0, 16, 21, 0, 42, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 10, 15, 0, 7, 0, 1768, 1768, 0, 0, 0, 0, 0, 0, 0, 12544, 12748, 4980, 0, 0, 0, 0, 0, 0, 0, 16, 26, 'SmartAI', 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1768, 0, 0, '', 0),
(46574, 0, 0, 0, 1908, 0, 346, 0, 0, 0, 'Vile Fin Tidehunter', NULL, NULL, 0, 11, 12, 0, 18, 18, 0, 1, 1, 1, 0, 16, 21, 0, 42, 1, 2000, 0, 2, 32768, 2048, 0, 0, 0, 0, 0, 10, 15, 0, 7, 0, 46574, 46574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 46574, 0, 0, '', 0);

-- Vile Fin Tidehunter - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(1768, 2023, 0, 0),
(46574, 2023, 0, 0);

-- Vile Fin Tidehunter - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1768, 0, 0, 0, 0, 0, ''),
(46574, 0, 0, 0, 0, 0, '');

-- Vile Fin Tidehunter - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1768, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 9000, 11000, 11, 78542, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Tidehunter - cast Splash'),
(46574, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 9000, 11000, 11, 78542, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Tidehunter - cast Splash');

-- Vile Fin Tidehunter - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 46574, 0, 1, 1, 0, 0, 489.926, 749.052, 38.1347, 1.05815, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 375.147, 624.999, 40.6646, 4.8262, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 390.374, 639.388, 36.0726, 5.97581, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 475.522, 718.21, 33.803, 4.42355, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 371.361, 665.034, 39.3226, 1.52211, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 389.879, 652.662, 34.6976, 2.25273, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 405.375, 620.463, 35.8001, 6.15012, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 412.744, 703.325, 40.4831, 4.30839, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 482.224, 723.155, 34.178, 5.85021, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 486.829, 727.696, 34.1781, 4.43691, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 460.135, 734.293, 37.3425, 1.06404, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46574, 0, 1, 1, 0, 0, 476.166, 723.657, 35.053, 4.40614, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1205.78, 371.706, 34.4353, 4.11524, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1195.4, 343.768, 34.6888, 5.00135, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1154.45, 395.013, 35.3106, 5.89292, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1188.28, 324.133, 36.2023, 2.89432, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1210.71, 381.418, 33.9353, 5.73766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1205.08, 380.264, 35.4352, 1.7786, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1109.34, 325.515, 35.3037, 3.58651, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1214.49, 367.831, 33.3102, 4.51514, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1187.43, 354.307, 33.4388, 0.583706, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1173.79, 375.168, 34.2719, 3.9512, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1211.08, 357.875, 34.221, 6.07437, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1088.34, 356.177, 33.0932, 1.33944, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1206.77, 393.076, 33.9352, 1.93417, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1188.2, 375.935, 34.0222, 2.86894, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1121.54, 295.689, 33.3453, 0.428312, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1205.53, 322.181, 35.7917, 4.67988, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1176.6, 308.944, 34.4523, 5.90164, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1188.97, 393.086, 33.6469, 0.407942, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1160.62, 348.627, 34.6723, 0.070905, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1170.41, 329.479, 33.8617, 0.36993, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1169, 402.783, 48.8925, 2.53128, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1173.91, 352.734, 33.8138, 2.93344, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1184.43, 418.736, 49.5175, 3.22507, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1209.46, 384.436, 33.8102, 0.050787, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1197.25, 316.198, 36.5773, 2.07682, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 791.618, 75.3592, 35.2005, 3.45708, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 786.581, 190.273, 36.2716, 5.01052, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 820.372, 170.672, 33.7021, 5.13477, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 727.633, 190.414, 33.3426, 1.27488, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 718.391, 198.099, 34.3426, 1.82352, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 796.738, 103.72, 36.675, 4.98026, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 859.619, 64.7364, 33.067, 0.573176, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 723.547, 221.06, 38.3686, 4.24514, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 787.5, 154.166, 34.3224, 2.30119, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 709.472, 206.346, 34.1186, 2.21231, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 713.495, 211.403, 35.4936, 0.939263, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 719.442, 207.583, 36.1186, 2.88086, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 810.442, 127.949, 38.8562, 3.23394, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1095.67, 224.599, 36.139, 2.49747, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1203.32, 386.4, 35.3102, 3.17278, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1007.21, 193.122, 33.716, 1.51144, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 854.236, 212.433, 34.654, 1.9054, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1085.88, 236.311, 35.8662, 4.13093, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1062.06, 295.528, 36.673, 1.1677, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 789.365, 102.418, 35.425, 1.2017, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1205.58, 360.35, 33.971, 1.81689, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 956.88, 181.082, 38.4571, 5.39973, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 805.002, 163.576, 34.337, 4.95804, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1094.6, 280.166, 34.5893, 4.75478, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 750.158, 229.242, 42.9123, 5.89634, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1092.05, 293.051, 35.5893, 5.79385, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1050.69, 220.847, 35.4825, 3.53688, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 794.323, 189.633, 34.3966, 5.50503, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1071.01, 212.679, 34.139, 4.2111, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1108.38, 322.094, 35.5537, 4.03573, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 717.856, 241.252, 37.5445, 6.00021, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 723.296, 292.997, 37.1271, 2.01367, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1206.8, 372.49, 34.5602, 0.917595, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 765.236, 218.36, 42.7873, 3.04248, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 858.939, 174.458, 34.2022, 2.67459, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 944.961, 181.021, 38.5823, 0.008984, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1062.22, 311.449, 36.239, 0.216182, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1095.83, 254.166, 34.3662, 4.78089, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1012.48, 168.937, 39.841, 5.96958, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1170.04, 312.336, 33.8273, 1.72134, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1109.28, 209.12, 35.7761, 0.893894, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1198.96, 313.541, 36.3273, 1.5708, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 707.763, 275.443, 36.2522, 2.98965, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 788.11, 249.326, 35.9749, 6.03815, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1209.02, 328.246, 35.2916, 2.63894, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 959.249, 172.06, 38.0821, 2.00046, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1087.01, 346.951, 34.9682, 4.54541, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 938.177, 131.057, 34.4574, 5.13845, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1186.46, 323.959, 36.0773, 4.63989, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1004.78, 137.749, 34.9258, 6.23399, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1190.77, 390.412, 34.2564, 5.92707, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 953.152, 210.001, 35.4654, 1.8286, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1155.64, 395.984, 35.4356, 0.522768, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 736.277, 189.93, 33.9258, 0.829054, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 780.319, 189.126, 37.3966, 2.10759, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1028.65, 274.142, 35.2274, 2.95023, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 754.091, 178.903, 34.0508, 3.9004, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 883.854, 186.979, 39.9588, 4.49378, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1115.31, 293.147, 33.7202, 3.41102, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 989.988, 149.984, 39.347, 2.90235, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 857.269, 125.626, 36.5038, 5.881, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 962.5, 129.166, 33.9574, 4.74537, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 723.519, 201.978, 35.2436, 0.247241, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 799.439, 200.252, 37.2463, 5.63688, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 811.043, 196.434, 33.8271, 5.48476, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1190.95, 376.458, 34.5219, 1.54255, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 789.99, 196.804, 38.0216, 2.6172, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1165.03, 390.259, 42.6856, 1.28349, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1108.67, 241.508, 34.0567, 5.08376, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 845.645, 144.537, 36.3833, 6.10003, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1185.96, 355.594, 33.3138, 2.49135, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 994.69, 196.631, 34.3584, 0.863323, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 806.38, 168.165, 33.5771, 6.05587, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1192.49, 347.356, 34.3138, 2.01198, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1043.33, 304.392, 34.239, 4.41766, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1088.58, 315.767, 36.5178, 5.1462, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 961.893, 208.287, 35.3404, 5.316, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 1768, 0, 1, 1, 0, 0, 1160.28, 375.522, 35.0606, 5.97384, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Vile Fin Tidehunter - loot --
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1768, 727, 0.04, 1, 0, -727, 1),
(1768, 730, 52.8, 1, 0, 1, 1),
(1768, 858, 0.5, 1, 0, 1, 1),
(1768, 954, 0.2138, 1, 0, -954, 1),
(1768, 1179, 2.7788, 1, 0, 1, 1),
(1768, 1210, 1, 1, 0, 1, 1),
(1768, 1497, 1, 1, 0, 1, 1),
(1768, 1498, 15, 1, 0, -1498, 1),
(1768, 1501, 0.5, 1, 0, 1, 1),
(1768, 1503, 1, 1, 0, 1, 1),
(1768, 1507, 1.6, 1, 0, 1, 1),
(1768, 1512, 0.5, 1, 0, 1, 1),
(1768, 1513, 0.5, 1, 0, 1, 1),
(1768, 1514, 2.1, 1, 0, 1, 1),
(1768, 1734, 0.5, 1, 0, 1, 1),
(1768, 2073, 0.81, 1, 0, -2073, 1),
(1768, 2075, 0.46, 1, 0, -2075, 1),
(1768, 2079, 0.21, 1, 0, -2079, 1),
(1768, 2406, 0.3564, 1, 0, -2406, 1),
(1768, 2409, 0.0647, 1, 0, -2409, 1),
(1768, 2632, 0.88, 1, 0, -2632, 1),
(1768, 2763, 2.1, 1, 0, 1, 1),
(1768, 2970, 0.32, 1, 0, -2970, 1),
(1768, 2971, 1.8, 1, 0, -2971, 1),
(1768, 2972, 1, 1, 0, 1, 1),
(1768, 3213, 0.7, 1, 0, -3213, 1),
(1768, 3258, -11, 1, 0, 1, 1),
(1768, 3283, 0.88, 1, 0, -3283, 1),
(1768, 3374, 1, 1, 0, 1, 1),
(1768, 3651, 0.5, 1, 0, 1, 1),
(1768, 4677, 0.5, 1, 0, 1, 1),
(1768, 4690, 0.5, 1, 0, 1, 1),
(1768, 5503, 0.0874, 1, 0, 1, 1),
(1768, 5523, 53.9, 1, 0, 1, 1),
(1768, 5574, 0.3, 1, 0, -5574, 1),
(1768, 6268, 1, 1, 0, 1, 1),
(1768, 6289, 5.2, 1, 0, 1, 2),
(1768, 6550, 0.5, 1, 0, 1, 1),
(1768, 9746, 1, 1, 0, 1, 1),
(1768, 9752, 1, 1, 0, 1, 1),
(1768, 15268, 0.5, 1, 0, 1, 1);


-- -- -- -- -- -- -- -- -- -- 
-- Reef Frezy   (ID: 2173) --
-- -- -- -- -- -- -- -- -- -- 

-- Reef Frezy - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(2173, 0, 0, 0, 0, 0, 245, 0, 0, 0, 'Reef Frenzy', NULL, NULL, 0, 14, 15, 0, 1878, 1878, 0, 1, 1, 1, 0, 22, 29, 0, 54, 1, 800, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 15, 22, 2, 1, 0, 2173, 0, 2173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2173, 0, 0, '', 12340);

-- Reef Frezy - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(2173, 0, 0, 0);

-- Reef Frezy - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(2173, 0, 0, 0, 0, 0, '');

-- Reef Frezy - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 2173, 0, 1, 1, 0, 0, 1008.24, 2015.04, -8.74219, 6.28061, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -500.886, 1852.72, -6.41235, 6.12831, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 300.785, 1984.93, -35.4672, 6.16973, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -481.567, 1878.26, -10.3649, 3.89129, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -646.858, 1892.47, -15.6051, 1.50436, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 249.732, 1977.11, -31.1535, 0.673246, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 328.87, 2015.66, -38.0932, 1.25707, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 271.202, 1961.29, -29.677, 2.33674, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 621.161, 1999.85, -25.1416, 1.48298, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 654.602, 1985.2, -19.5592, 0.470576, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -451.562, 1817.52, -7.7725, 0.323032, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 658.785, 1998.19, -21.2325, 4.71915, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 975.085, 2047.94, -11.6763, 3.0771, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 831.323, 1986.92, -16.8529, 2.03588, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 744.277, 1911.04, -3.12703, 4.92491, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 412.177, 1986.89, -20.5666, 1.36823, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 784.36, 2104.15, -39.6424, 1.5452, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1170.09, 2155.75, -8.3884, 2.82405, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 815.411, 2072.07, -26.2176, 1.51331, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 845.391, 2013.21, -20.8597, 4.05367, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -586.81, 1878.12, -9.16699, 3.96601, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 945.824, 2049.99, -8.79004, 4.1468, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -516.746, 1882.34, -10.0603, 1.41681, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 916.172, 2004.73, -5.4838, 4.48453, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 721.962, 2030.12, -20.0085, 1.55416, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1131.74, 2161.64, -11.3565, 0.492014, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1204, 2179.03, -11.9238, 3.767, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 810.439, 1987.44, -16.8966, 2.70855, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -500.878, 1883.53, -10.7871, 0.002519, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 845.324, 2076.75, -28.0575, 4.75265, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1006.54, 2014.66, -9.15402, 6.19776, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -453.623, 1919.79, -18.7956, 1.80612, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 880.499, 2098.48, -27.526, 4.72037, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 751.489, 2049.09, -20.4728, 4.59787, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 769.433, 1920.06, -4.52694, 0.070027, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1054.25, 2073.83, -24.3081, 5.21882, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1247.46, 2206.45, -18.5069, 4.34105, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1189.36, 2213.39, -11.952, 5.81254, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -510.489, 1818.06, -7.10319, 6.25368, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1124.36, 2181.16, -12.5003, 3.32328, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 697.014, 1996.92, -19.6425, 0.924254, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -515.6, 1943.64, -26.2655, 1.56452, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 895.343, 2083.48, -32.299, 3.24826, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 810.197, 1948.15, -6.32403, 3.2659, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 727.212, 1982.82, -17.5214, 3e-06, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 1080.38, 2096.72, -13.6262, 4.67174, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, 883.184, 1985.75, -16.4781, 4.74001, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 2173, 0, 1, 1, 0, 0, -550.045, 1901.3, -18.1544, 4.70851, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);
