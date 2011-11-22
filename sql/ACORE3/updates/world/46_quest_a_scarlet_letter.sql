ALTER TABLE `world_db_version` CHANGE  `required_45_world_quest_26063` `required_46_quest_a_scarlet_letter`  BIT(1);

-- DELETE --
DELETE FROM `creature_text` WHERE `entry` IN (38999,39002);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (38999,39002) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3899900,3900200) AND `source_type` = 9;
DELETE FROM `gossip_menu` WHERE `entry` IN (11134,11135,11136);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (11134,11135,11136);
DELETE FROM `waypoints` WHERE `entry` = 39002;
DELETE FROM `creature_equip_template` WHERE `entry` IN (38999,39002);
DELETE FROM `creature_template_addon` WHERE `entry` IN (38999,39002);
DELETE FROM `npc_text` WHERE `ID` IN (15487,15488,15489);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND (`SourceGroup` = 11135 OR `ConditionValue1` = 24979);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 39002;

-- Gebler template - update --
UPDATE `creature_template` SET `minlevel` = '15', `maxlevel` = '15', `faction_A` = '19', `faction_H` = '19', `npcflag` = '16777216', `unit_flags` = '131974', `VehicleId` = '618', `AIName` = 'SmartAI', `MovementType` = '2', `equipment_id` = '39002', `flags_extra` = '2' WHERE `entry` = 39002;

-- Gebler - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(39002, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 53, 0, 39002, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - Start walk'),
(39002, 0, 1, 0, 40, 0, 100, 0, 6, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 38999, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - Look at Lilian'),
(39002, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - despawn after dead!'),
(39002, 0, 3, 0, 27, 0, 100, 1, 0, 0, 0, 0, 80, 3900200, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - call timed actionlist when has passanger'),
(39002, 0, 4, 0, 1, 0, 100, 0, 15000, 15000, 0, 0, 86, 73453, 2, 21, 38999, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - mount Lilian on self');

-- Gebler - Timed actionlist --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3900200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 73304, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - Shadow Aura'),
(3900200, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Lieutenant Gebler - DIE !!');

-- Gebler - Texts --
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(39002, 0, 0, 'The time has come, my little captive... word has come back from your father.', 0, 0, 100, 0, 0, 0, 'Scarlet Lieutenant Gebler'),
(39002, 1, 0, 'High Priest Voss denounces you as a daughter.  He''s ordered that you be executed immediately.', 0, 0, 100, 0, 0, 0, 'Scarlet Lieutenant Gebler'),
(39002, 2, 0, 'The High Priest sends his regrets.  He had hoped that one day you would be a powerful weapon against our enemies.', 0, 0, 100, 0, 0, 0, 'Scarlet Lieutenant Gebler'),
(39002, 3, 0, 'Unfortunately, you were too dangerous in life, and you''re far too dangerous in undeath.  I will enjoy killing you, you Scourged witch...', 0, 0, 100, 0, 0, 0, 'Scarlet Lieutenant Gebler');

-- Gebler - Waypoints --
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(39002, 0, 2443.9, 1600.13, 66.5732, 'Scarlet Lieutenant Gebler'),
(39002, 1, 2447.8, 1595.45, 68.976, 'Scarlet Lieutenant Gebler'),
(39002, 2, 2452.34, 1590.12, 72.1558, 'Scarlet Lieutenant Gebler'),
(39002, 3, 2449.55, 1588.38, 72.1558, 'Scarlet Lieutenant Gebler'),
(39002, 4, 2444.64, 1589.6, 72.1558, 'Scarlet Lieutenant Gebler'),
(39002, 5, 2440.91, 1594.31, 72.1558, 'Scarlet Lieutenant Gebler'),
(39002, 6, 2441.78, 1597.64, 72.1558, 'Scarlet Lieutenant Gebler');

-- Gebler - Equip_template --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(39002, 59550, 0, 0);

-- Gebler - spellclick for Lilian (can't be used by player) --
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(39002, 73308, 0, 0, 0, 0, 0, 0, 0);

-- Lilian template - update --
UPDATE `creature_template` SET `gossip_menu_id` = '11135', `faction_A` = '68', `faction_H` = '68', `npcflag` = '1', `unit_flags` = '0', `dynamicflags` = '2048', `AIName` = 'SmartAI', `equipment_id` = '38999' WHERE `entry` = 38999;

-- Lilian Voss - SAI --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(38999, 0, 0, 0, 62, 0, 100, 0, 11136, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - close gossip'),
(38999, 0, 1, 0, 62, 0, 100, 0, 11136, 0, 0, 0, 80, 3899900, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - call timed actionlist'),
(38999, 0, 2, 0, 62, 0, 100, 0, 11136, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Talk 1');

-- Lilian Voss - Timed actionlist --
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3899900, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 39002, 8, 0, 0, 0, 0, 8, 0, 0, 0, 2443.9, 1600.13, 66.5732, 5.5653, 'Lilian Voss - spawn Scarlet Lieutenant Gebler'),
(3899900, 9, 1, 0, 0, 0, 100, 0, 14000, 14000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Gebler - Text 1'),
(3899900, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Look at Gebler'),
(3899900, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Text 1'),
(3899900, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Gebler - Text 2'),
(3899900, 9, 5, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 5, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Cower'),
(3899900, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Text 3'),
(3899900, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Gebler - Text 3'),
(3899900, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 333, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Gebler - ready to fight'),
(3899900, 9, 9, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 39002, 0, 0, 0, 0, 0, 0, 'Gebler - Text 4'),
(3899900, 9, 10, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 73304, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - cast Shadow Aura on self'),
(3899900, 9, 11, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Text 4'),
(3899900, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 73304, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - unaura Shadow Aura'),
(3899900, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 38999, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - Credit for player'),
(3899900, 9, 14, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - gossip flag return'),
(3899900, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - remove cower emote'),
(3899900, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian Voss - return to home orientation');

-- Lilian Voss - Texts -- 
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(38999, 0, 0, 'Yes, my... wait, be quiet!  I hear the lieutenant approaching.', 0, 0, 100, 0, 0, 0, 'Lilian Voss'),
(38999, 1, 0, 'Gebler, you came!  What did he say?', 0, 0, 100, 0, 0, 0, 'Lilian Voss'),
(38999, 2, 0, 'What?  NO!  This can''t be!  Gebler, you know me... we were friends once!', 0, 0, 100, 0, 0, 0, 'Lilian Voss'),
(38999, 3, 0, 'Gebler, father, why would you...', 0, 0, 100, 0, 0, 0, 'Lilian Voss'),
(38999, 4, 0, 'The world of the living may have turned its back on me, but I''m no damned Scourge.  Just go.', 0, 0, 100, 0, 0, 0, 'Lilian Voss');

-- Lilian Voss - Gossip_menu --
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(11134, 15488),
(11135, 15487),
(11136, 15489);

-- Lilian Voss - Gossip_menu_option --
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(11134, 0, 0, 'Lilian, you''re one of the Forsaken, like me.  Which brings the question: why did the Scarlet Crusade put you in a cage?  They usually kill the undead on sight.', 1, 1, 11136, 0, 0, 0, 0, NULL),
(11135, 0, 0, 'I''m here to rescue you.', 1, 1, 11134, 0, 0, 0, 0, NULL),
(11136, 0, 0, 'Your father?', 1, 1, 0, 0, 0, 0, 0, NULL);

-- Lilian Voss - Npc_text --
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
(15487, 'What are you doing here?  Get out of here!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15488, 'First of all, I don''t need to be rescued.  Second of all, I''d never allow myself to be rescued by an abomination like you!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15489, 'I''m NOT undead!  Not for long, anyway.  My father will rescue me, I know it...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Lilian Voss - Template_addon --
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(38999, 0, 0, 0, 1, 0, '');

-- Lilian Voss - Equip_template --
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(38999, 0, 0, 0);

-- Conditions --
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 11135, 0, 0, 9, 24979, 0, 0, 0, '', 'Show gossip 121135 if player has Quest 24979');