ALTER TABLE `world_db_version` CHANGE  `required_105_quest_27980` `required_106_Blood_Theory`  BIT(1);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=36059;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36059;
INSERT INTO `npc_spellclick_spells` VALUES
(36059,68291,14304,1,14304,2,0,0,0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=36059;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36059 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36059,0,1,0,31,0,100,0,68291,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood-filled Leech - On SpellHitTarget - Despawn');

UPDATE `creature_template` SET `ScriptName`='npc_rejuvenated_thunder_lizard' WHERE `entry`=35412;