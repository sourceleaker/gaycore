/* File contains:
- Franny Mertz (ID: 50463),
- Karos Razok (ID: 2226),
- Steven Stutzka (ID: 46552),
- Fenwick Thatros (ID: 47008),
- Killian Sanatha (ID: 5748),
- Bolgaff (ID: 47003),
- Admiral Hatchet (ID: 44916),
- Warlord Torok (ID: 44917),
- Advisor Sorrelon (ID: 16288),
- Alexandre Lefevre (ID: 3552),
- Andrea Boynton (ID: 3554),
- Andrew Hilbert (ID: 3556),
- Angela Hipple (ID: 49870),
- Apothecary Renferrel (ID: 1937),
- Bee Bruxworthy (ID: 49718),
- Commander Hickley (ID: 45496),
- Innkeeper Bates (ID: 6739),
- Dark Cleric Pordon (ID: 49715),
- Eugene Daller (ID: 49720),
- Elemental Servitor (ID: 45711),
- Guillaume Sorouy (ID: 3557),
- Johan Focht (ID: 3555),
- Patrice Dwyer (ID: 3551),
- Mura Runetotem (ID: 8385),
- Deathguard Podrig (ID: 6389),
- High Executor Hadrec (ID: 1952),
- Sebastian Meloche (ID: 3553),
- Shadow Priest Allister (ID: 2121),
- Nadia Vernon (ID: 9553),
- Thom Denger (ID: 49716),
- Astor Hadren (ID: 6497),
- Hobbes (ID: 49960),
- Matt Bruxworthy (ID: 49958),
- Sarah Goode (ID: 9979),
- Dalar Dawnweaver (ID: 1938),
- Lost Son of Arugal (ID: 47015),
- Tiev Mordune (ID: 7007),
- Corrupt Minor Manifestation of Water (ID: 5894),
- Manifestation of Water (ID: 11256),
- Minor Manifestation of Water (ID: 5895); */


-- -------- --
--  DELETE  --
-- -------- --
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (47008,47003,44916,44917);
DELETE FROM `creature_equip_template` WHERE `entry` IN (50463,2226,46552,47008,5748,47003,44916,44917,16288,3552,3554,3556,49870,1937,49718,45496,6739,49715,49720,45711,3557,3555,3551,8385,6389,1952,3553,2121,9553,49716,6497,49960,49958,9979,1938);
DELETE FROM `creature_template_addon` WHERE `entry` IN (50463,2226,46552,47008,5748,47003,44916,44917,16288,3552,3554,3556,49870,1937,49718,45496,6739,49715,49720,45711,3557,3555,3551,8385,6389,1952,3553,2121,9553,49716,6497,49960,49958,9979,1938);
DELETE FROM `creature_text` WHERE `entry` IN (47008,44916,44917);
DELETE FROM `creature_template` WHERE `entry` IN (50463);
DELETE FROM `creature` WHERE `id` IN (50463,2226,46552,47008,5748,47003,44916,44917,16288,3552,3554,3556,49870,1937,49718,45496,6739,49715,49720,45711,3557,3555,3551,8385,6389,1952,3553,2121,9553,49716,6497,49960,49958,9979,1938,47015,7007,5894,11256,5895);

-- -- -- -- -- -- -- -- -- -- --
-- Franny Mertz   (ID: 50463) --
-- -- -- -- -- -- -- -- -- -- --

-- Franny Mertz - new template --
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(50463, 0, 0, 0, 0, 0, 36797, 0, 0, 0, 'Franny Mertz', 'Bat Handler', '', 0, 85, 85, 3, 68, 68, 8193, 1, 1, 1, 1, 530, 713, 0, 827, 4.6, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 50463, 613097436, 0, '', 14480);

-- Franny Mertz - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(50463, 1117, 0, 0);

-- Franny Mertz - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(50463, 0, 0, 0, 1, 0, '');

-- Franny Mertz - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 50463, 0, 1, 1, 0, 0, 1054, 1520.78, 30.0964, 6.03884, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Karos Razok  (ID: 2226) --
-- -- -- -- -- -- -- -- -- --

-- Karos Razok - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(2226, 5303, 0, 0);

-- Karos Razok - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(2226, 0, 0, 0, 1, 0, '');

-- Karos Razok - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 2226, 0, 1, 1, 0, 0, 477.035, 1542.86, 130.627, 6.26573, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Steven Stutzka (ID: 46552) --
-- -- -- -- -- -- -- -- -- -- --

-- Steve Stutzka - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 46552, 0, 1, 1, 0, 0, -114.764, 1313.55, 56.8249, 4.36332, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Fenwick Thatros   (ID: 47008) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Fenwick Thatros - new template --

-- Fenwick Thatros - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(47008, 1117, 0, 0);

-- Fenwick Thatros - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(47008, 0, 0, 0, 1, 0, '');

-- Fenwick Thatros - text --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(47008, 0, 0, 'All I wanted was a little peace and quiet!', 1, 0, 100, 0, 0, 0, 'Fenwick Thatros 1');

-- Fenwick Thatros - SAI --

-- Fenwick Thatros - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 47008, 0, 1, 1, 0, 0, 730.127, 956.674, 34.8391, 0.471239, 3600, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Killian Sanatha (ID: 5748) --
-- -- -- -- -- -- -- -- -- -- --

-- Killian Sanatha - new template --

-- Killian Sanatha - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(5748, 1117, 0, 0);

-- Killian Sanatha - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(5748, 0, 0, 0, 257, 379, '');

-- Killian Sanatha - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 5748, 0, 1, 1, 0, 0, 727.578, 959.929, 34.8391, 0.925025, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- --
-- Bolgaff  (ID: 47003) --
-- -- -- -- -- -- -- -- --

-- Bolgaff - new template --

-- Bolgaff - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(47003, 0, 0, 61967);

-- Bolgaff - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(47003, 0, 27660, 0, 1, 0, '');

-- Bolgaff - SAI --

-- Bolgaff - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 47003, 0, 1, 1, 0, 0, 980.066, 1414.4, 41.3021, 0.453786, 3600, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Admiral Hatchet   (ID: 44916) --
-- -- -- -- -- -- -- -- -- -- -- --

-- need gossip --

-- Admiral Hatchet - new template --

-- Admiral Hatchet - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44916, 11763, 11762, 0);

-- Admiral Hatchet - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44916, 0, 0, 65536, 0, 0, '83847 0');

-- Admiral Hatchet - SAI --

-- Admiral Hatchet - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44916, 0, 1, 1, 0, 0, 1068.75, 1601.3, 28.0847, 2.28638, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Warlord Torok  (ID: 44917) --
-- -- -- -- -- -- -- -- -- -- --

-- Warlord Torok - new template --

-- Warlord Torok - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(44917, 0, 0, 0);

-- Warlord Torok - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44917, 0, 0, 65536, 1, 0, NULL);

-- Warlord Torok - SAI --

-- Warlord Torok - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 44917, 0, 1, 1, 0, 0, 1070.59, 1602.1, 28.0824, 1.97222, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Advisor Sorrelon  (ID: 16288) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Advisor Sorrelon - new template --

-- Advisor Sorrelon - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(16288, 0, 0, 0);

-- Advisor Sorrelon - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(16288, 0, 0, 0, 257, 0, '');

-- Advisor Sorrelon - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 16288, 0, 1, 1, 0, 0, 525.679, 1627.3, 104.895, 2.16421, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Alexandre Lefevre  (ID: 3552) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Alexandre Lefevre - new template --

-- Alexandre Lefevre - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3552, 2184, 0, 0);

-- Alexandre Lefevre - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3552, 0, 0, 0, 257, 0, '');

-- Advisor Sorrelon - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3552, 0, 1, 1, 0, 0, 567.634, 1576.57, 132.376, 3.38594, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Andrea Boynton  (ID: 3554) --
-- -- -- -- -- -- -- -- -- -- --

-- Andrea Boynton - new template --

-- Andrea Boynton - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3554, 5281, 0, 0);

-- Andrea Boynton - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3554, 0, 0, 0, 257, 0, '');

-- Andrea Boynton - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3554, 0, 1, 1, 0, 0, 570.564, 1571.17, 132.376, 1.76278, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Andrew Hilbert  (ID: 3556) --
-- -- -- -- -- -- -- -- -- -- --

-- Andrew Hilbert - new template --

-- Andrew Hilbert - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3556, 2184, 0, 0);

-- Andrew Hilbert - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3556, 0, 0, 0, 257, 0, '');

-- Andrew Hilbert - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3556, 0, 1, 1, 0, 0, 528.068, 1634.62, 104.706, 3.26377, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Angela  Hipple (ID: 49870) --
-- -- -- -- -- -- -- -- -- -- --

-- Angela  Hipple - new template --

-- Angela  Hipple - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49870, 10616, 10616, 0);

-- Angela  Hipple - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49870, 0, 0, 1, 257, 0, '10022 0');

-- Angela Hipple - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49870, 0, 1, 1, 0, 0, 497.67, 1644.61, 126.222, 3.40339, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Apothecary Renferrel  (ID: 1937) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Apothecary Renferrel - new template --

-- Apothecary Renferrel - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(1937, 2200, 0, 0);

-- Apothecary Renferrel - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1937, 0, 0, 0, 257, 0, '');

-- Apothecary Renferrel - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1937, 0, 1, 1, 0, 0, 457.809, 1475.54, 147.328, 1.11701, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Bee Bruxworthy (ID: 49718) --
-- -- -- -- -- -- -- -- -- -- --

-- Bee Bruxworthy - new template --

-- Bee Bruxworthy - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49718, 11343, 0, 0);

-- Bee Bruxworthy - addon --

-- Bee Bruxworthy - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49718, 0, 1, 1, 0, 0, 536.858, 1638.68, 104.895, 3.08923, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Commander Hickley (ID: 45496) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Commander Hickley - new template --

-- Commander Hickley - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45496, 2179, 18166, 0);

-- Commander Hickley - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45496, 0, 0, 0, 257, 0, '');

-- Commander Hickley - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45496, 0, 1, 1, 0, 0, 1097.57, 1587.29, 28.6136, 0.261799, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Innkeeper Bates (ID: 6739) --
-- -- -- -- -- -- -- -- -- -- --

-- Innkeeper Bates - new template --

-- Innkeeper Bates - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(6739, 5278, 0, 0);

-- Innkeeper Bates - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(6739, 0, 0, 0, 257, 0, '');

-- Innkeeper Bates - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 6739, 0, 1, 1, 0, 0, 471.135, 1500.55, 135.605, 1.0821, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Dark Cleric Pordon   (ID: 49715) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Dark Cleric Pordon - new template --

-- Dark Cleric Pordon - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49715, 2813, 0, 0);

-- Dark Cleric Pordon - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49715, 0, 0, 0, 257, 0, '');

-- Dark Cleric Pordon - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49715, 0, 1, 1, 0, 0, 505.402, 1577.26, 127.766, 1.71668, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Eugene Daller  (ID: 49720) --
-- -- -- -- -- -- -- -- -- -- --

-- Eugene Daller - new template --

-- Eugene Daller - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49720, 57762, 0, 0);

-- Eugene Daller - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49720, 0, 0, 0, 257, 0, '');

-- Eugene Daller - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49720, 0, 1, 1, 0, 0, 489.606, 1643.8, 125.853, 0.191986, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Elemental Servitor   (ID: 45711) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Elemental Servitor - new template --

-- Elemental Servitor - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(45711, 0, 0, 0);

-- Elemental Servitor - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(45711, 0, 0, 0, 1, 0, '');

-- Elementral Servitor - spawns --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 45711, 0, 1, 1, 0, 0, -126.212, 813.934, 66.1057, 1.65806, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -41.0336, 840.812, 66.2893, 0.067282, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -205.693, 891.036, 66.2713, 4.24874, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -30.7673, 1090.49, 65.1018, 0.218457, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -178.833, 925.41, 65.6262, 0.069813, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -141.573, 852.314, 61.9062, 1.55334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -86.4653, 811.995, 64.0173, 2.54818, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -98.4046, 976.826, 68.6887, 2.54024, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -130.049, 852.731, 61.9426, 4.71706, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -234.048, 1042.64, 65.7881, 1.46296, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -115.332, 1018.29, 66.0801, 1.99658, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -77.2083, 935.946, 69.2913, 2.80998, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -214.84, 1005.51, 71.98, 0.349066, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -112.932, 945.802, 67.8771, 1.50882, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -211.75, 970.712, 72.4488, 0.506145, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -187.475, 1025.87, 64.6528, 3.34785, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -88.6993, 854.412, 62.2032, 3.17576, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -284.617, 861.668, 85.1271, 3.58076, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -24.6288, 1014.36, 70.0455, 1.79684, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -127.021, 781.488, 66.1066, 0.174533, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -121.884, 855.288, 61.7621, 1.55334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -126.266, 1080.67, 65.5383, 1.55334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -190.751, 863.348, 67.3425, 3.25117, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -242.476, 1106.9, 62.7733, 3.00883, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -89.4975, 904.143, 65.6692, 2.39482, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -209.428, 1079.96, 60.5367, 2.04754, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -157.858, 884.63, 62.3092, 3.34623, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -176.961, 1135.58, 57.8369, 1.62064, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -89.4396, 1117.49, 65.1474, 2.96439, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -144.448, 1080.78, 65.5677, 1.55334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -246.475, 823.779, 74.0204, 6.20503, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -21.0362, 1129.55, 67.1176, 4.18904, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -37.2402, 970.484, 66.4277, 1.45149, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -37.8196, 895.89, 67.62, 4.79081, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -66.2951, 991.219, 67.4719, 3.1765, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -164.153, 803.373, 63.8996, 1.55334, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -157.944, 978.103, 65.0678, 1.36924, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -55.4124, 1047.32, 63.7987, 1.19786, 300, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 45711, 0, 1, 1, 0, 0, -133.878, 1055.32, 67.286, 1.60165, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Guillaume Sorouy   (ID: 3557) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Guillaume Sorouy - new template --

-- Guillaume Sorouy - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3557, 1903, 0, 0);

-- Guillaume Sorouy - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3557, 0, 0, 0, 257, 0, '');

-- Guillaume Sorouy - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3557, 0, 1, 1, 0, 0, 520.0434, 1649.03, 125.7474, 4.956735, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Johan Focht  (ID: 3555) --
-- -- -- -- -- -- -- -- -- --

-- Johan Focht - new template --

-- Johan Focht - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3555, 1910, 0, 0);

-- Johan Focht - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3555, 0, 0, 0, 257, 0, '');

-- Johan Focht - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3555, 0, 1, 1, 0, 0, 534.024, 1626.95, 104.895, 2.54818, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Patrice Dwyer   (ID: 3551) --
-- -- -- -- -- -- -- -- -- -- --

-- Patrice Dwyer - new template --

-- Patrice Dwyer - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3551, 2201, 3694, 0);

-- Patrice Dwyer - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3551, 0, 0, 0, 257, 0, '');

-- Patrice Dwyer - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3551, 0, 1, 1, 0, 0, 495.9965, 1647.856, 125.6638, 3.874631, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- --
-- Mura Runetotem  (ID: 8385) --
-- -- -- -- -- -- -- -- -- -- --

-- Mura Runetotem - new template --

-- Mura Runetotem - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(8385, 6334, 0, 0);

-- Mura Runetotem - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(8385, 0, 0, 0, 257, 0, '');

-- Mura Runetotem - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 8385, 0, 1, 1, 0, 0, 490.9365, 1647.894, 125.6788, 5.131268, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
--  Deathguard Podrig  (ID: 6389)--
-- -- -- -- -- -- -- -- -- -- -- --

--  Deathguard Podrig - new template --

--  Deathguard Podrig - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(6389, 1905, 0, 0);

--  Deathguard Podrig - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(6389, 0, 0, 0, 257, 0, '');

--  Deathguard Podrig - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 6389, 0, 1, 1, 0, 0, 502.101, 1625.51, 125.7453, 4.677482, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- High Executor Hadrec  (ID: 1952) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- High Executor Hadrec - new template --

-- High Executor Hadrec - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(1952, 2183, 0, 0);

-- High Executor Hadrec - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1952, 0, 0, 0, 257, 0, '');

-- High Executor Hadrec - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1952, 0, 1, 1, 0, 0, 522.4488, 1626.148, 104.9969, 1.48353, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Sebastian Meloche  (ID: 3553) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Sebastian Meloche - new template --

-- Sebastian Meloche - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(3553, 1903, 0, 0);

-- Sebastian Meloche - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(3553, 0, 0, 0, 257, 0, '');

-- Sebastian Meloche - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 3553, 0, 1, 1, 0, 0, 508.9108, 1630.156, 104.895, 0.8028514, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Shadow Priest Allister   (ID: 2121) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Shadow Priest Allister - new template --

-- Shadow Priest Allister - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(2121, 2176, 0, 0);

-- Shadow Priest Allister - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(2121, 0, 0, 0, 257, 0, '');

-- Shadow Priest Allister - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 2121, 0, 1, 1, 0, 0, 478.549, 1566.14, 127.666, 3.31613, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Nadia Vernon (ID: 9553) --
-- -- -- -- -- -- -- -- -- --

-- Nadia Vernon - new template --

-- Nadia Vernon - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(9553, 0, 0, 5259);

-- Nadia Vernon - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(9553, 0, 0, 0, 257, 0, '');

-- Nadia Vernon - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 9553, 0, 1, 1, 0, 0, 556.339, 1568.4, 132.05, 3.07178, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Thom Denger (ID: 49716) --
-- -- -- -- -- -- -- -- -- --

-- Thom Denger - new template --

-- Thom Denger - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49716, 5277, 0, 0);

-- Thom Denger - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49716, 0, 0, 0, 257, 0, '93451 0');

-- Thom Denger - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49716, 0, 1, 1, 0, 0, 568.6658, 1579.345, 132.2932, 0.2712138, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Astor Hadren (ID: 6497) --
-- -- -- -- -- -- -- -- -- --

-- Astor Hadren - new template --

-- Astor Hadren - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(6497, 0, 0, 0);

-- Astor Hadren - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(6497, 0, 0, 0, 1, 0, '');

-- Astor Hadren - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 6497, 0, 1, 1, 0, 0, 565.488, 1576.17, 139.6783, 4.939282, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- --
-- Hobbes   (ID: 49960) --
-- -- -- -- -- -- -- -- --

-- Hobbes - new template --

-- Hobbes - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49960, 0, 0, 0);

-- Hobbes - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49960, 0, 0, 0, 1, 0, '');

-- Hobbes - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49960, 0, 1, 1, 0, 0, 470.4392, 1520.806, 134.9576, 0.7330383, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Matt Bruxworthy   (ID: 49958) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Matt Bruxworthy - new template --

-- Matt Bruxworthy - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(49958, 56807, 0, 52692);

-- Matt Bruxworthy - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(49958, 0, 0, 0, 257, 0, '');

-- Matt Bruxworthy - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 49958, 0, 1, 1, 0, 0, 471.4931, 1519.497, 135.2258, 0.8028514, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- --
-- Sarah Goode  (ID: 9979) --
-- -- -- -- -- -- -- -- -- --

-- Sarah Goode - new template --

-- Sarah Goode - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(9979, 11424, 0, 0);

-- Sarah Goode - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(9979, 0, 0, 0, 257, 0, '');

-- Sarah Goode - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 9979, 0, 1, 1, 0, 0, 475.345, 1515.57, 135.8363, 0.9599311, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- --
-- Dalar Dawnweaver   (ID: 1938) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Dalar Dawnweaver - new template --

-- Dalar Dawnweaver - equip --
INSERT INTO `creature_equip_template` (`entry`, `itementry1`, `itementry2`, `itementry3`) VALUES
(1938, 1908, 0, 0);

-- Dalar Dawnweaver - addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(1938, 0, 0, 0, 257, 0, '');

-- Dakar Dawnweaver - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 1938, 0, 1, 1, 0, 0, 456.391, 1472.7, 125.083, 1.15192, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- --
-- Lost Son of Arugal   (ID: 47015) --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- Lost Son of Arugal - spawn --


-- -- -- -- -- -- -- -- -- --
-- Tiev Mordune (ID: 7007) --
-- -- -- -- -- -- -- -- -- --

-- Tiev Mordune - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 7007, 0, 1, 3, 0, 0, 430.385, 1881.86, 15.4168, 5.13127, 300, 0, 0, 0, 0, 0, 0, 0, 0);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Corrupt Minor Manifestation of Water (ID: 5894) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Manifestation of Water  (ID: 11256) --
-- -- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Minor Manifestation of Water   (ID: 5895) --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- only delete old spawns --


-- -- -- -- -- -- -- -- -- -- -- --
-- Harris Franklin   (ID: 51709) --
-- -- -- -- -- -- -- -- -- -- -- --

-- Harris Franklin

-- Harris Franklin - spawn --
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 51709, 0, 1, 3, 0, 0, -140.5608, 1292.561, 49.8385, 4.153883, 300, 0, 0, 0, 0, 0, 0, 0, 0);