 /* File contains:
- Quest: Honor the Dead (ID: 27180),
- Quest: The Warchief Cometh (ID: 26965),
- Quest: Agony Abounds (ID: 26992),
- Quest: Rise, Forsaken (ID: 27097),
- Quest: It's Only Poisonous if You Ingest It (ID: 27088),
- Quest: Waiting to Exsanguinate (ID: 27045),
- Quest: Steel Thunder (ID: 27069),
- Quest: Iterating Upon Success (ID: 26998),
- Quest: 
- Phasing: Forsaken High Command (ID: 5369), -- before and after Q: The Warchief Cometh
- Phasing: North Tide's Beachhead (ID: 928),
- Phasing: North Tide's Run (ID: 305),
- Phasing: The Ivar Patch (ID: 239), -- after Deathstalker Rane Yorick death and Q: Waiting to Exsanguinate
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
- NPC: Bat Handler Maggotbreath (ID: 44825),
- NPC: Armoire (ID: 44893) and (ID: 44894),
- NPC: Forsaken Bat (ID: 44821),
- NPC: Packleader Ivar Bloodfang (ID: 44884),
- NPC: Lord Darius Crowley (ID: 44883),
- NPC: Deathstalker Rane Yorick (ID: 44882),
- Object: Abandoned Outhouse (ID: 205143),
- NPC: Orc Sea Pup (ID: 44914),
- NPC: Admiral Hatchet (ID: 44916),
- NPC: Orc Crate (ID: 44915); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (44608,44825,44615,44592,44593,45197,44636,44629,44640,44615,44365,44630,44954,44966) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4459200,4459201,4459202,4459203,4459204,4459205,4459206,4459207,4459208,4459209,4459210,4459300,4459301,4459302,4459303,4459200,4459201,4459202,4459203,4460800,8000000,4461500,4436500,4462900,4495400,4495401,4495402,4495403,4495404,4495405,4496600,4496601,4496602,4496603,4496604,4496605,4463000,4463001,4463002) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (205099) AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 44630) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 44592) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 44593) AND `source_type` = 0;
DELETE FROM `creature_text` WHERE `entry` IN (44821,44629,44640,44365,44825);
DELETE FROM `waypoints` WHERE `entry` IN (446400,446080,445930,445931,445932,445933,445935,445920,445921,445922,445923,445924,445925,445926,445927,445928,445929);
DELETE FROM `creature_equip_template` WHERE `entry` IN (44592,44593,44365,44630,44825,44615,45197,44629,44636,44640,44954,44966,4495400,4495401,4495402,4495403,4495404,4495405,4496600,4496601,4496602,4496603,4496604,4496605);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 45197;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 45197;
DELETE FROM `creature_template_addon` WHERE `entry` IN (44592,44593,44365,44630,44825,44636,44615,45197,44608,44951,45104,46034,49213,49044,45583,45609,45625,45802,49128,45105,46033,45775,45761,45584,45610,45626,44609,45318,45473,45555,46032,45106,49129,45314,45585,45611,45627,44610,44608);
DELETE FROM `creature` WHERE `id` IN (44630,44825,44367,44636,44954,44966,44608,44951,45104,46034,49213,49044,45583,45609,45625,45802,49128,45105,46033,45775,45761,45584,45610,45626,44609,45318,45473,45555,46032,45106,49129,45314,45585,45611,45627,44610,44365,44592,44593,44629,44640,44630,44615);
DELETE FROM `creature` WHERE `id` = 39605 AND `map` = 0;
DELETE FROM `spell_area` WHERE `area` IN (5369,928,305,239);
DELETE FROM `creature_template` WHERE `entry` IN (44893,44894,44883,44882,44884,44825,44821,44630,44365,44592,44593);
DELETE FROM `gameobject_template` WHERE `entry` IN (205143,205099);
DELETE FROM `npc_text` WHERE `id` IN (16683,16575);
DELETE FROM `gossip_menu` WHERE `entry` IN (11892,11823);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (11892,11823);
DELETE FROM `gameobject_questrelation` WHERE `id` IN (205143);
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (205143);
DELETE FROM `conditions` WHERE `SourceGroup` IN (11892);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Forsaken High Command (ID: 5369) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Forsaken High Command - phasing --
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(59073, 5369, 0, 0, 26965, 0, 946, 2, 1), -- Forsaken High Command - phase 2
(59074, 5369, 0, 0, 25098, 0, 946, 2, 1); -- Forsaken High Command - phase 4


-- -- -- -- -- -- -- -- -- -- -- -- --
-- North Tide's Beachhead (ID: 928) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- North Tide's Beachhead - phasing --
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(59073, 928, 0, 0, 27073, 0, 946, 2, 1); -- North Tide's Beachhead 


-- -- -- -- -- -- -- -- -- -- -- -- --
-- North Tide's Run (ID: 305) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- North Tide's Run - phasing --
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(59073, 305, 0, 0, 27073, 0, 946, 2, 1); -- North Tide's Run


-- -- -- -- -- -- -- -- -- -- -- -- --
-- The Ivar Patch (ID: 239) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- The Ivar Patch - phasing --
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(59073, 239, 26989, 1, 0, 0, 946, 2, 1), -- The Ivar Patch 
(59087, 239, 0, 0, 27045, 0, 946, 2, 1); -- The Ivar Patch


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Veteran Forsaken Trooper   (ID: 45197) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Veteran Forsaken Trooper - update template --
UPDATE `creature_template` SET `IconName` = 'Pickup', `npcflag` = '16777216', `pickpocketloot` = '45197', `unit_flags` = '131590', `dynamicflags` = '32', `AIName` = 'SmartAI' WHERE `entry` = 45197;

-- Vetaran Forsaken Trooper - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
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


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Portal from Orgrimmar   (ID: 44630) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Portal from Orgrimmar - update template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44630, 0, 0, 0, 0, 0, 32698, 0, 0, 0, 'Portal from Orgrimmar', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

-- Portal from Orgrimmar - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44630, 0, 0, 0);

-- Portal from Orgrimmar - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44630, 0, 0, 0, 0, 0, '');

-- Portal from Orgrimmar - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44630, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 55761, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Portal from Orgrimmar - cast Air Revenant Entrance on reset');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Lady Sylvanas Windrunner   (ID: 44365) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Lady Sylvanas Windrunner - update template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44365, 0, 0, 0, 0, 0, 28213, 0, 0, 0, 'Lady Sylvanas Windrunner', 'Banshee Queen', '', 11823, 88, 88, 3, 118, 118, 3, 1, 1, 1, 3, 650, 856, 0, 2000, 35, 2000, 0, 2, 33600, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 255.05, 144.481, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44365, 1073741823, 0, '', 0);

-- Lady Sylvanas Windrunner - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44365, 2179, 0, 42775);

-- Lady Sylvanas Windrunner - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44365, 0, 29257, 0, 1, 0, '');

-- Lady Sylvanas Windrunner - gossip menu --
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(11823, 16575);

-- Lady Sylvanas Windrunner - npc text --
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
(16575, 'In death, we are reborn.', '', 0, 1, 0, 1, 0, 6, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Lady Sylvanas Windrunner - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44365, 0, 0, 'Where is that Orge headed buffoon?', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 1'),
(44365, 1, 0, 'Ah, speak of the devil...', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 2'),
(44365, 2, 0, 'Warchief, so glad you could make it.', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 3'),
(44365, 3, 0, 'With the death of the Lich King, many of the more intelligent Scourge became...unemployed. Those ''fiends,'' as you so delicately put it, are called val''kyr. They are under my command now...', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 4'),
(44365, 4, 0, '...and they are part of the reason that I asked to see you.', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 5'),
(44365, 5, 0, 'Very well, Warchief. I have solved the plight of the Forsaken!', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 6'),
(44365, 6, 0, 'As a race, we Forsaken are unable to procreate.', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 7'),
(44365, 7, 0, 'With the aid of the val''kyr, we are now able to take the corpses of the fallen and create new Forsaken.', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 8'),
(44365, 8, 0, 'Agatha, show the Warchief!', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 9'),
(44365, 9, 0, 'Warchief, without these new Forsaken my people would die out...Out hold upon Gilneas and northern Lordaeron would crumble.', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 10'),
(44365, 10, 0, 'Isn''t it obvious, Warchief? I serve the Horde. ', 12, 0, 100, 0, 0, 0, 'Lady Sylvanas Windrunner 11');

-- Lady Sylvanas Windrunner - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44365, 0, 1, 4102, 0, 0, 1381.7, 1041.26, 54.3171, 4.02848, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- ----------- --
--  Variables  --
-- ----------- --
SET @AGATHA1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @PORTAL1 = (SELECT MAX(guid)+2 FROM `creature`);


-- Lady Sylvanas Windrunner - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44365, 0, 0, 0, 23, 0, 100, 1, 94688, 1, 0, 0, 80, 4436500, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lady Sylvanas Windrunner - call timed actionlist when Q: The Warchief Cometh is activated'),
(4436500, 9, 0, 0, 28, 0, 100, 1, 94688, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - remove aura'),
(4436500, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 1'),
(4436500, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20459, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 1'),
(4436500, 9, 3, 0, 0, 0, 100, 1, 5000, 5000, 0, 0, 12, 44630, 3, 250000, 0, 0, 0, 8, 0, 0, 0, 1404.71, 1063.73, 60.56173, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44630, 3, 250000, 0, 0, 0, 8, 0, 0, 0, 1393.27, 1021.2, 53.22253, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44630, 3, 250000, 0, 0, 0, 8, 0, 0, 0, 1358.62, 1054.72, 53.12003, 0, 'Sylvanas Windrunner - The Warchief Cometh - spawn Portal to Orgrimmar'),
(4436500, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 10, @PORTAL1, 44630, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set orientation to Portal to Orgrimmar'),
(4436500, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 2'),
(4436500, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20460, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 2'),
(4436500, 9, 9, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, 12, 44636, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 1357.85, 1050.12, 52.99823, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1359.1, 1046.55, 52.97053, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 11, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1360.75, 1048.84, 53.12893, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0,1360.89, 1051.81, 53.19793, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 13, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1363.08, 1048.15, 53.22223, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 14, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1364.08, 1050.84, 53.29163, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 15, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1364.43, 1053.62, 53.29343, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 16, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1366.69, 1050.31, 53.34203, 5.253441, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 17, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1384.33, 1022.04, 53.28123, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 18, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1385.79, 1025.99, 53.22593, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 19, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1386.69, 1023.26, 53.24393, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 20, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1387.9, 1029.71, 53.21853, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 21, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1388.05, 1026.91, 53.20833, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 22, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1388.16, 1020.88, 53.25523, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 23, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1389.79, 1024.51, 53.20833, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 24, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44636, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1391.1, 1027.73, 53.20483, 2.827433, 'Sylvanas Windrunner - The Warchief Cometh - spawn Hellscream''s Elite'),
(4436500, 9, 25, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44629, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1379.41, 1043.7, 54.145, 3.745, 'Sylvanas Windrunner - The Warchief Cometh - spawn Garrosh Hellscream'),
(4436500, 9, 26, 0, 0, 0, 100, 1, 0, 0, 0, 0, 12, 44640, 3, 210000, 0, 0, 0, 8, 0, 0, 0, 1403.3, 1071.4242, 60.479, 1.281524, 'Sylvanas Windrunner - The Warchief Cometh - spawn High Warlord Cromush'),
(4436500, 9, 27, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set home orientation'),
(4436500, 9, 28, 0, 0, 0, 100, 1, 22000, 22000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44629, 0, 25, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set orientation to Garrosh Hellscream'),
(4436500, 9, 29, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 3'),
(4436500, 9, 30, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20461, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 3'),
(4436500, 9, 31, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - set home orientation'),
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
(4436500, 9, 42, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 9'),
(4436500, 9, 43, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 9'),
(4436500, 9, 44, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 75, 94688, 0, 0, 0, 0, 0, 10, @AGATHA1, 44608, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - this is Agatha moment, her moment!'),
(4436500, 9, 45, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 10'),
(4436500, 9, 46, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20468, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 10'),
(4436500, 9, 47, 0, 0, 0, 100, 0, 52000, 52000, 0, 0, 1, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - text 11'),
(4436500, 9, 48, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20469, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sylvanas Windrunner - The Warchief Cometh - sound 11');

-- Portal from Orgrimmar - spawn as trigger for Sylvanas --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@PORTAL1, 44630, 0, 1, 4096, 0, 0, 1403.228, 1062.7825, 60.4785, 4, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Agatha - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@AGATHA1, 44608, 0, 1, 2, 0, 0, 1364.1, 1028.6, 58.4662, 0.715585, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- ----------- --
--  Variables  --
-- ----------- --
SET @FALLEN1 = (SELECT MAX(guid)+1 FROM `creature`);
SET @FALLEN2 = (SELECT MAX(guid)+2 FROM `creature`);
SET @FALLEN3 = (SELECT MAX(guid)+3 FROM `creature`);
SET @FALLEN4 = (SELECT MAX(guid)+4 FROM `creature`);
SET @FALLEN5 = (SELECT MAX(guid)+5 FROM `creature`);
SET @FALLEN6 = (SELECT MAX(guid)+6 FROM `creature`);
SET @FALLEN7 = (SELECT MAX(guid)+7 FROM `creature`);
SET @FALLEN8 = (SELECT MAX(guid)+8 FROM `creature`);
SET @FALLEN9 = (SELECT MAX(guid)+9 FROM `creature`);
SET @FALLEN10 = (SELECT MAX(guid)+10 FROM `creature`);
SET @FALLEN11 = (SELECT MAX(guid)+11 FROM `creature`);


-- -- -- -- -- -- -- -- -- -- --
-- Fallen Human   (ID: 44592) --
-- -- -- -- -- -- -- -- -- -- --

-- Fallen Human - update template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44592, 0, 0, 0, 0, 0, 33978, 33979, 33980, 33981, 'Fallen Human', '', '', 0, 13, 13, 0, 68, 68, 0, 1, 1, 1, 0, 18, 24, 0, 48, 1, 2000, 0, 1, 0, 32, 0, 0, 0, 0, 0, 12, 18, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 7, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44592, 0, 0, '', 0);

-- Fallen Human - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44592, 0, 0, 0);

-- Fallen Human - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44592, 0, 0, 0, 0, 0, '');

-- Fallen Human - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-@FALLEN1, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN1, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459200, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN2, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN2, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459201, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN3, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN3, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459202, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN4, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN4, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459203, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN5, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN5, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459204, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN6, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN6, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459205, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN7, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN7, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459206, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN8, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN8, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459207, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN9, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN9, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459208, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN10, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN10, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459209, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN11, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN11, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459210, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(4459200, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459200, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459200, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459200, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445920, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459200, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459200, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459200, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459200, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459200, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459200, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459200, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459201, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459201, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459201, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459201, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445921, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459201, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459201, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459201, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459201, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459201, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459201, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459201, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459202, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459202, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459202, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459202, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445922, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459202, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459202, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459202, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459202, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459202, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459202, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459202, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459203, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459203, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459203, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459203, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445923, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459203, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459203, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459203, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459203, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459203, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459203, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459203, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459204, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459204, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459204, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459204, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445924, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459204, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459204, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459204, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459204, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459204, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459204, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459204, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459205, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459205, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459205, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459205, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445925, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459205, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459205, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459205, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459205, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459205, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459205, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459205, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459206, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459206, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459206, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459206, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445926, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459206, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459206, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459206, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459206, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459206, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459206, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459206, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459207, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459207, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459207, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459207, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445927, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459207, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459207, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459207, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459207, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459207, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459207, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459207, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459208, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459208, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459208, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459208, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445928, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459208, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459208, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459208, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459208, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459208, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459208, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459208, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459209, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459209, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459209, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459209, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445929, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459209, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459209, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459209, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459209, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459209, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459209, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459209, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459210, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459210, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459210, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459210, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445935, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459210, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459210, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459210, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459210, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459210, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459210, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459210, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag');


-- Fallen Human - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@FALLEN1, 44592, 0, 1, 6, 0, 0, 1372.98, 1041.06, 51.381, 0.226893, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN2, 44592, 0, 1, 6, 0, 0, 1378.16, 1031.71, 51.3717, 0.767945, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN3, 44592, 0, 1, 6, 0, 0, 1372.58, 1038.07, 50.9666, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN4, 44592, 0, 1, 6, 0, 0, 1375.42, 1033.81, 50.6522, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN5, 44592, 0, 1, 6, 0, 0, 1369.65, 1033.67, 50.9668, 0.698132, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN6, 44592, 0, 1, 6, 0, 0, 1367.33, 1035.38, 51.304, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN7, 44592, 0, 1, 6, 0, 0, 1370.66, 1030.82, 51.134, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN8, 44592, 0, 1, 6, 0, 0, 1374.14, 1036.35, 50.9217, 5.53269, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN9, 44592, 0, 1, 6, 0, 0, 1369.57, 1036.9, 50.998, 0.20944, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN10, 44592, 0, 1, 6, 0, 0, 1377.3, 1035.93, 51.0961, 3.14159, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN11, 44592, 0, 1, 6, 0, 0, 1373.35, 1031.58, 50.6189, 0.959931, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Fallen Human - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(445920, 1, 1372.98, 1041.06, 56.38103, 'Fallen Human 1'),
(445921, 1, 1378.16, 1031.71, 56.37173, 'Fallen Human 1'),
(445922, 1, 1372.58, 1038.07, 55.96663, 'Fallen Human 1'),
(445923, 1, 1375.42, 1033.81, 55.65223, 'Fallen Human 1'),
(445924, 1, 1369.65, 1033.67, 55.96683, 'Fallen Human 1'),
(445925, 1, 1367.33, 1035.38, 56.30403, 'Fallen Human 1'),
(445926, 1, 1370.66, 1030.82, 56.13403, 'Fallen Human 1'),
(445927, 1, 1374.14, 1036.35, 55.92173, 'Fallen Human 1'),
(445928, 1, 1369.57, 1036.9, 55.99803, 'Fallen Human 1'),
(445929, 1, 1377.3, 1035.93, 56.09613, 'Fallen Human 1'),
(445935, 1, 1373.35, 1031.58, 55.61893, 'Fallen Human 1');


-- ----------- --
--  Variables  --
-- ----------- --
SET @FALLEN12 = (SELECT MAX(guid)+12 FROM `creature`);
SET @FALLEN13 = (SELECT MAX(guid)+13 FROM `creature`);
SET @FALLEN14 = (SELECT MAX(guid)+14 FROM `creature`);
SET @FALLEN15 = (SELECT MAX(guid)+15 FROM `creature`);


-- -- -- -- -- -- -- -- -- -- --
-- Fallen Human   (ID: 44593) --
-- -- -- -- -- -- -- -- -- -- --

-- Fallen Human - update template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44593, 0, 0, 0, 0, 0, 33982, 33983, 33984, 33985, 'Fallen Human', '', '', 0, 13, 13, 0, 68, 68, 0, 1, 1, 1, 0, 18, 24, 0, 48, 1, 2000, 0, 1, 0, 32, 0, 0, 0, 0, 0, 12, 18, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 7, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44593, 0, 0, '', 0);

-- Fallen Human - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44593, 0, 0, 0);

-- Fallen Human - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44593, 0, 0, 0, 0, 0, '');

-- Fallen Human - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-@FALLEN12, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN12, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459300, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN13, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN13, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459301, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN14, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN14, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459302, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(-@FALLEN15, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - visual death'),
(-@FALLEN15, 0, 2, 0, 8, 0, 100, 0, 83173, 0, 0, 0, 80, 4459303, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - call timed actionlist on spellhit'),
(4459300, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459300, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459300, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459300, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445930, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459300, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459300, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459300, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459300, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459300, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459300, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459300, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459301, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459301, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459301, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459301, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445931, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459301, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459301, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459301, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459301, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459301, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459301, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459301, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459302, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459302, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459302, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459302, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445932, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459302, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459302, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459302, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459302, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459302, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459302, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459302, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag'),
(4459303, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 77619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura Visual Death (death is only an illusion)'),
(4459303, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 61971, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - add aura Permanent Feign Death (Drowned + Stunned + Raped)'),
(4459303, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly (fly fly high!)'),
(4459303, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 445933, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - ascension!! oh my Jesus!!'),
(4459303, 9, 4, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 28, 61971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - remove aura from Permanent... this is too long for me :P'),
(4459303, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Human - set fly off (fly fly down!)'),
(4459303, 9, 6, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 83149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - kaboooom! *Jesus don''t like them :(*'),
(4459303, 9, 7, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - remove dynamic flag'),
(4459303, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - ressurected as Forsaken Trooper... '),
(4459303, 9, 9, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - good bye, despawn and go to Jesus, bitch'),
(4459303, 9, 10, 0, 0, 0, 100, 1, 0, 0, 0, 0, 94, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Forsaken - add dynamic flag');

-- Fallen Human - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@FALLEN12, 44593, 0, 1, 6, 0, 0, 1376, 1029.61, 50.9374, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN13, 44593, 0, 1, 6, 0, 0, 1369.71, 1040.19, 51.0212, 5.58505, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN14, 44593, 0, 1, 6, 0, 0, 1375.2, 1038.58, 51.2451, 4.55531, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FALLEN15, 44593, 0, 1, 6, 0, 0, 1372.08, 1034.98, 50.8489, 0.890118, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Fallen Human - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(445930, 1, 1376, 1029.61, 55.93743, 'Fallen Human 1'),
(445931, 1, 1369.71, 1040.19, 56.02123, 'Fallen Human 1'),
(445932, 1, 1375.2, 1038.58, 56.24513, 'Fallen Human 1'),
(445933, 1, 1372.08, 1034.98, 55.84893, 'Fallen Human 1');


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Garrosh Hellscream   (ID: 44629) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Garrosh Hellscream - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI', `InhabitType` = '1', `speed_run` = '0.8', `equipment_id` = '44629' WHERE `entry` = 44629;

-- Garrosh Hellscream - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(44629, 28773, 0, 0);

-- Garrosh Hellcream - addon --

-- Garrosh Hellcream - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44629, 0, 0, 'This better be important, Sylvanas. You know how I detest this place and its foul stench. Why have you called for me?', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 1'),
(44629, 1, 0, 'And more importantly, what are those Scourge fiends doing here?', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 2'),
(44629, 2, 0, 'Get on with it, Sylvanas.', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 3'),
(44629, 3, 0, 'What you have done here, Sylvanas... it goes against the laws of nature. Disgusting is the only word I have to describe it.', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 4'),
(44629, 4, 0, 'Have you given any thought to what this means, Sylvanas?', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 5'),
(44629, 5, 0, 'What difference is there between you and the Lich King now?', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 6'),
(44629, 6, 0, 'Watch your clever mouth, bitch.', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 7'),
(44629, 7, 0, 'Cromush, you stay behind and make sure the Banshee Queen is well "guarded." I will be expecting a full report when next we meet.', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 8'),
(44629, 8, 0, 'Remember, Sylvanas, eventually we all have to stand before our maker and face judgment. Your day may come sooner than others''....', 12, 0, 100, 0, 0, 0, 'Garrosh Hellscream 9');

-- Garrosh Hellscream - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44629, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 80, 4462900, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - The Warchief Cometh - call timed actionlist on reset'),
(4462900, 9, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - cast Simple Teleport on reset'),
(4462900, 9, 1, 0, 1, 0, 100, 1, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1378.002686, 1045.092773, 53.581989, 4.00257, 'Garrosh Hellscream - jump to Dark Lady'),
(4462900, 9, 4, 0, 0, 0, 100, 1, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 44635, 0, 25, 0, 0, 0, 0, 'Garrosh Hellscream - look at Sylvanas'),
(4462900, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 1'),
(4462900, 9, 6, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20496, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 1'),
(4462900, 9, 7, 0, 0, 0, 100, 1, 13000, 13000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - set home orientation'),
(4462900, 9, 8, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 2'),
(4462900, 9, 9, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20497, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 2'),
(4462900, 9, 10, 0, 0, 0, 100, 1, 500, 500, 0, 0, 11, 48349, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - emote point'),
(4462900, 9, 11, 0, 0, 0, 100, 1, 30000, 30000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 3'),
(4462900, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, 4, 20498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - sound 3'),
(4462900, 9, 13, 0, 0, 0, 100, 1, 45000, 45000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - text 4'),
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
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(44640, 18871, 0, 0);

-- High Warlord Cromush - addon --

-- High Warlord Cromush - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44640, 0, 0, 'As you command, Warchief!', 12, 0, 100, 0, 0, 0, 'High Warlord Cromush 1');

-- High Warlord Cromush - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44640, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'High Warlord Cromush - cast Simple Teleport on reset');

-- High Warlord Cromush - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(446400, 0, 1408.146, 1081.673, 60.479, 'High Warlord Cromush 1'),
(446400, 1, 1406.512, 1090.116, 60.479, 'High Warlord Cromush 2'),
(446400, 2, 1396.526, 1091.166, 58.229, 'High Warlord Cromush 3'),
(446400, 3, 1389.335, 1088.211, 54.888, 'High Warlord Cromush 4'),
(446400, 4, 1380.581, 1079.219, 52.551, 'High Warlord Cromush 5'),
(446400, 5, 1369.57, 1065.622, 53.054, 'High Warlord Cromush 6'),
(446400, 6, 1369.633, 1054.702, 53.155, 'High Warlord Cromush 7'),
(446400, 7, 1373.516, 1047.433, 53.222, 'High Warlord Cromush 8');


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

-- Agatha - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44608, 0, 0, 0, 23, 0, 100, 0, 94688, 1, 0, 0, 80, 4460800, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - call timed actionlist when has aura'),
(4460800, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 94688, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - remove aura from spell'),
(4460800, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 53, 0, 446080, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - start wp'),
(4460800, 9, 2, 0, 0, 0, 100, 1, 9000, 9000, 0, 0, 54, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - pause at wp 2'),
(4460800, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 83173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - cast Raise Forsaken'),
(4460800, 9, 6, 0, 0, 0, 100, 1, 13000, 13000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Agatha - set home orientation');

-- Agatha & Daschla & Arthura - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44608, 0, 1, 4, 0, 0, 1364.02, 1028.54, 55.9914, 0.855211, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44609, 0, 1, 6, 0, 0, 1365.73, 1024.98, 57.0244, 1.13446, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44610, 0, 1, 6, 0, 0, 1360.81, 1030.57, 56.874, 0.645772, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49044, 0, 1, 1, 0, 0, 1700.05, 1699.77, 135.463, 1.762, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49128, 0, 1, 1, 0, 0, 1757.88, 1582, 114.622, 1.72788, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 49129, 0, 1, 1, 0, 0, 1725.54, 1681.13, 139.093, 4.90376, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Agatha - waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(446080, 1, 1364.064, 1028.712, 71.34, 'Agatha 1'),
(446080, 2, 1367, 1030.3, 63.18, 'Agatha 2'),
(446080, 3, 1364.1, 1028.6, 58.466, 'Agatha 3');


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

-- Grand Executor Mortuus - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(44615, 0, 0, 0);

-- Grand Executor Mortuus - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44615, 0, 0, 0, 0, 0, NULL);

-- Grand Executor Mortuus - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44615, 0, 0, 0, 19, 0, 100, 0, 26965, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - set event phase 2 when The Warchief Cometh is activated'),
(44615, 0, 1, 0, 19, 2, 100, 0, 26965, 0, 0, 0, 80, 4461500, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - call timed actionlist'),
(44615, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - set event phase 1 on reset'),
(4461500, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 75, 94688, 0, 0, 0, 0, 0, 9, 44365, 0, 25, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - information for Sylvanas the quest is activated'),
(4461500, 9, 1, 0, 0, 0, 100, 1, 192000, 192000, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Executor Mortuus - The Warchief Cometh - return to event phase 1 after end of event');

-- Grand Executor Mortuus - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44615, 0, 1, 6, 0, 0, 1383.47, 1038.86, 54.3172, 3.89889, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Hellscream's Elite   (ID: 44636) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Hellscream's Elite - update template --
UPDATE `creature_template` SET `minlevel` = '85', `maxlevel` = '85', `faction_A` = '29', `faction_H` = '29', `AIName` = 'SmartAI', `equipment_id` = '44636' WHERE `entry` = 44636;

-- Hellscream's Elite - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(44636, 18831, 0, 0);

-- Hellscream's Elite - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44636, 0, 0, 0, 0, 0, NULL);

-- Hellscream's Elite - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44636, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellscream''s Elite - cast Simple Teleport on reset');


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Ferocious Doomweed  (ID: 205099) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Ferocious Doomweed - new template --
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(205099, 3, 4112, 'Ferocious Doomweed', '', 'Gathering', '', 0, 4, 1, 60741, 0, 0, 0, 0, 0, 259, 205099, 300, 1, 0, 0, 0, 205100, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SmartGameObjectAI', '', 13329);

-- Ferocious Doomweed - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(205099, 1, 1, 0, 64, 0, 100, 1, 0, 0, 0, 0, 80, 8000000, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ferocious Doomweed - call timed actionlist on gossip_hello'),
(8000000, 9, 0, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 75, 83523, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Ferocious Doomweed - add aura Doomweed Haze to player');

-- Ferocious Doomweed - spawns --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 205099, 0, 1, 1, 1300.01, 850.846, 34.7983, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1312.28, 967.269, 54.5992, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1425.78, 827.576, 49.8996, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1394.26, 960.094, 49.7652, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1335.21, 820.444, 39.1371, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1272.92, 923.297, 42.1125, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1231.62, 1155.03, 45.2443, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1448.24, 891.762, 56.5077, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1329.58, 844.313, 42.013, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1357.43, 984.597, 52.9882, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1213.82, 1086.54, 39.3827, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1435.81, 953.023, 54.3454, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1362.4, 937.734, 54.5992, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1412.07, 922.304, 49.0066, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1309.53, 1134.29, 52.4592, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1391.05, 864.71, 48.6364, 0, 0, 0, 0, 1, 180, 100, 1),
(NULL, 205099, 0, 1, 1, 1321.39, 804.915, 33.7252, 0, 0, 0, 0, 1, 180, 100, 1);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Hillsbrad Refugee   (ID: 44954, 44966) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Hillsbrad Refugee - update template --
UPDATE `creature_template` SET `AIName` = 'SmartAI', `equipment_id` = '0', `flags_extra` = '64' WHERE `entry` IN(NULL,44966);

-- Hillsbrad Refugee - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES 
(4496600, 3367, 0, 0),
(4496601, 13609, 0, 0),
(4496602, 13610, 0, 0),
(4496603, 25587, 13604, 0),
(4496604, 1906, 0, 0),
(4496605, 2703, 0, 0),
(4495400, 3346, 0, 0),
(4495401, 13609, 0, 0),
(4495402, 13610, 0, 0),
(4495403, 25587, 13604, 0),
(4495404, 1906, 0, 0),
(4495405, 2703, 0, 0);

-- Hillsbrad Refugee - addon --

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
(NULL, 44367, 0, 1, 3, 0, 0, 860.453, 1547.99, 33.4494, 4.66367, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 1063 veh

-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Bat Handler Maggotbreath   (ID: 44825) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Bat Handler Maggotbreath - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44825, 0, 0, 0, 0, 0, 30840, 0, 0, 0, 'Bat Handler Maggotbreath', 'Flight Master', 'Taxi', 11892, 85, 85, 3, 68, 68, 8193, 1, 1.14286, 1, 0, 530, 713, 0, 827, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 46483, 0, 0, '', 0);

-- Bat Handler Maggotbreath - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44825, 3362, 0, 0);

-- Bat Handler Maggotbreath - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44825, 0, 0, 0, 0, 0, '');

-- Bat Hangler Maggotbreath - gossip menu --
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(11892, 16683);

-- Bat Hangler Maggotbreath - gossip menu option --
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(11892, 0, 0, 'I need to take a bat to the Dawning Isles.', 1, 8193, 0, 0, 0, 0, 0, NULL), 
(11892, 1, 2, 'Show me where I can fly.', 4, 8193, 0, 0, 0, 0, 0, NULL);

-- Bat Hangler Maggotbreath - npc text --
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
(16683, 'What do you want? Can''t you see I have bat droppings to clean up?', '', 0, 1, 0, 1, 0, 6, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Bat Handler Maggotbreath - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44825, 0, 0, 'You better bring that bat back in one piece, $N!', 12, 0, 100, 0, 0, 0, 'Bat Hangler Maggotbreath 1');

-- Bat Handler Maggotbreath - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44825, 0, 0, 0, 62, 0, 100, 0, 11892, 0, 0, 0, 11, 83584, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bat Handler Maggotbreath - Iterating Upon Success - summon Forsaken Bat'),
(44825, 0, 1, 0, 62, 0, 100, 0, 11892, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bat Handler Maggotbreath - Iterating Upon Success - close gossip'),
(44825, 0, 2, 0, 62, 0, 100, 0, 11892, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bat Handler Maggotbreath - Iterating Upon Success - text 1 on gossip select');

-- Bat Handler Maggotbreath - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44825, 0, 1, 6, 0, 0, 1422.931, 1017.771, 52.64933, 2.86234, 120, 0, 0, 0, 0, 0,0, 0, 0, 0);

-- Bat Handler Maggotbreath - condition --
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11892, 0, 0, 9, 26998, 0, 0, 0, '', 'Show gossip 11892 - 0 only when player has Q: Iterating Upon Succes');


-- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- Armoire (ID: 44893) and (ID: 44894) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Armoire - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44893, 0, 0, 0, 0, 0, 34164, 0, 0, 0,  'Armoire',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 212, 1, 0, 0, 0,  ''), 
(44894, 0, 0, 0, 0, 0, 34165, 0, 0, 0, 'Armoire', '', 'Inspect', 0, 1, 1, 0, 35, 35, 16777216, 1, 1.14286, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 0, 0, 'SmartAI', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 212, 1, 44894, 0, 2, '');

-- Armoire - equip --

-- Armoire - addon --

-- Armoire - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(44894, 83788, 27045, 1, 0, 3, 0, 0, 0);

-- Armoire - SAI --

-- Armoire -  spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44894, 0, 1, 8, 0, 0, 1315.06, 1211.81, 58.5562, 4.67748, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Armoire Camera 83763


-- -- -- -- -- -- -- -- -- -- --
-- Forsaken Bat   (ID: 44821) --
-- -- -- -- -- -- -- -- -- -- --

-- Forsaken Bat - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44821, 0, 0, 0, 0, 0, 1566, 0, 0, 0, 'Forsaken Bat', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83573, 0, 0, 0, 0, 0, 0, 0, 0, 1051, 0, 0, 'SmartAI', 0, 7, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 212, 1, 0, 0, 0, '', 1);

-- Forsaken Bat - spellclick --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES 
(44821, 46598, 0, 0, 0, 3, 0, 0, 0);

/*
Waypoint 0: X: 1214.8 Y: 414.792 Z: 61.0968
Waypoint 1: X: 1413.315 Y: 641.131 Z: 131.7808
Waypoint 2: X: 1052.815 Y: 200.631 Z: 130.7808
Waypoint 3: X: 1408.565 Y: 350.881 Z: 129.5308
Waypoint 4: X: 1065.315 Y: 609.631 Z: 131.7808
Waypoint 5: X: 1184.065 Y: 545.131 Z: 130.7808
Waypoint 6: X: 1408.565 Y: 350.881 Z: 129.5308
Waypoint 7: X: 1188.065 Y: 519.881 Z: 131.7808
Waypoint 8: X: 1093.815 Y: 610.631 Z: 130.5308
Waypoint 9: X: 1408.565 Y: 350.881 Z: 129.5308
Waypoint 10: X: 1065.315 Y: 427.381 Z: 131.5308
Waypoint 11: X: 1065.315 Y: 413.381 Z: 130.2808
Waypoint 12: X: 1348.565 Y: 413.131 Z: 129.5308
Waypoint 13: X: 1380.565 Y: 274.631 Z: 131.5308
Waypoint 14: X: 1093.815 Y: 217.631 Z: 130.2808
Waypoint 15: X: 1408.565 Y: 350.881 Z: 129.5308
Waypoint 16: X: 1421.565 Y: 656.381 Z: 131.5308
Waypoint 17: X: 1151.315 Y: 221.131 Z: 130.0308
Waypoint 18: X: 1408.565 Y: 350.881 Z: 129.5308
Waypoint 19: X: 1171.815 Y: 570.631 Z: 131.5308
Waypoint 20: X: 1037.315 Y: 293.881 Z: 129.5308
Waypoint 21: X: 1408.565 Y: 206.881 Z: 129.5308
Waypoint 22: X: 1196.315 Y: 449.381 Z: 131.5308
Waypoint 23: X: 1437.065 Y: 552.131 Z: 129.7808
Waypoint 24: X: 1408.565 Y: 206.881 Z: 129.5308
Waypoint 25: X: 958.8149 Y: 427.381 Z: 131.2808
Waypoint 26: X: 1327.315 Y: 663.631 Z: 130.0308
Waypoint 27: X: 1408.565 Y: 206.881 Z: 129.5308
Waypoint 28: X: 1188.065 Y: 515.131 Z: 131.5308
Waypoint 29: X: 1323.315 Y: 362.881 Z: 130.2808
Waypoint 30: X: 1408.565 Y: 206.881 Z: 129.5308
Waypoint 31: X: 1409.315 Y: 589.131 Z: 131.5308
*/

-- Forsaken Bat - texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(44821, 0, 0, 'Returning to Forsaken High Command!$B$B|r|TInterface\Icons\ACHIEVEMENT_ZONE_SILVERPINE_01.BLP:24|t', 41, 0, 100, 0, 0, 0, 'Forsaken Bat 1'),
(44821, 1, 0, 'Eliminate all murlocs by using the Blight Concoction!$B$B|r|TInterface\Icons\INV_ALCHEMY_POTION_05.BLP:24|t', 41, 0, 100, 0, 0, 0, 'Forsaken Bat 2');

-- Forsaken Bat - SAI --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Packleader Ivar Bloodfang  (ID: 44884) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Packleader Ivar Bloodfang - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44884, 0, 0, 0, 0, 0, 34162, 0, 0, 0, 'Packleader Ivar Bloodfang', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, '', 1);

-- Packleader Ivar Bloodfang 

-- Packleader Ivar Bloodfang 

-- Packleader Ivar Bloodfang 

-- Packleader Ivar Bloodfang 

-- Veh ID: 407

-- Summon Bloodfang 83753

-- Why trust you now, Crowley? You abandoned us. Left us to die.


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Lord Darius Crowley  (ID: 44883) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Lord Darius Crowley - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(44883, 0, 0, 0, 0, 0, 34161, 0, 0, 0, 'Lord Darius Crowley', 'Leader of the Gilneas Liberation Front', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, '', 1);

-- Lord Darius Crowley

-- Lord Darius Crowley

-- Lord Darius Crowley

-- Lord Darius Crowley

-- Summon Crowley 83752

-- Have you given any more thought to my proposal, Ivar?


-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Deathstalker Rane Yorick   (ID: 44882) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Deathstalker Rane Yorick
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(44882, 0, 0, 0, 0, 0, 3540, 0, 0, 0,  'Deathstalker Rane Yorick',  '',  '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '', 0, 0, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,  '');

-- Deathstalker Rane Yorick - equip --

-- Deathstalker Rane Yorick - addon --

-- Deathstalker Rane Yorick - SAI --

-- Deathstalker Rane Yorick - texts --
-- THERE! Hide in the armoire! I'll hide in the shadows next to you.


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Abandoned Outhouse  (ID: 205143) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Abandoned Outhouse - new template --
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(205143, 2, 3332, 'Abandoned Outhouse', '', '', '', 0, 0, 1.03, 0, 0, 0, 0, 0, 0, 0, 15590, 0, 11897, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0);

-- Abandoned Outhouse - quest relation --
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(205143, 27045);

-- Abandoned Outhouse - involved relation --
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
(205143, 27039);

-- Abandoned Outhouse - SAI --

-- Abandoned Outhouse - spawn --
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 205143, 0, 1, 8, 1304.34, 1188.18, 52.1125, 2.76478, 0, 0, 0, 1, 180, 100, 1);


-- -- -- -- -- -- -- -- -- --
-- Orc Sea Pup (ID: 44914) --
-- -- -- -- -- -- -- -- -- --

-- 46598

-- -- -- -- -- -- -- -- -- -- -- --
-- Admiral Hatchet   (ID: 44916) --
-- -- -- -- -- -- -- -- -- -- -- --
 
 
/* 
ServerToClient: SMSG_GOSSIP_MESSAGE (0xCCEB) Length: 55 Time: 11/19/2011 11:53:44.000 Number: 90
GUID: Full: 0xF130AF7400002621 Type: Unit Entry: 44916 Low: 9761
Menu id: 11901
Text id: 16702
- Amount of Options: 0
- Amount of Quest gossips: 1
	Quest ID: 27069
	Icon: 2
	Level: 12
	Flags: 11599871
	Unknown bool: False
	Title: Steel Thunder
*/
	
	
-- -- -- -- -- -- -- -- -- --
-- Orc Crate   (ID: 44915) --
-- -- -- -- -- -- -- -- -- --

-- Orc Crate - new template --

-- Orc Crate - equip --

-- Orc Crate - spellclick --

-- Orc Crate - addon --

-- Orc Crate - SAI --

-- Orc Crate - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44915, 0, 1, 2, 0, 0, 928.754, 1819.33, 9.47788, 0.389824, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 920.561, 1833.38, 7.48124, 0.554758, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 884.283, 1817.97, 8.67689, 3.0255, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 890.443, 1763.35, 15.3323, 1.469, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 882.373, 1829.23, 7.4038, 3.4851, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 874.616, 1889.11, 1.58017, 4.87654, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 852.634, 1874.36, 2.13003, 5.72084, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 809.388, 1856.03, 0.876495, 4.10449, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 809.505, 1817.51, 8.36207, 0.786972, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 862.824, 1830.68, 6.56472, 5.06975, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 818.684, 1802.37, 10.9705, 3.91835, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 874.374, 1780.89, 13.0461, 1.04615, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 44915, 0, 1, 2, 0, 0, 871.619, 1811.87, 8.48706, 0.94012, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Orc Crate - condition --





