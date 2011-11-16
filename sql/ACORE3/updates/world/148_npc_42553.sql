ALTER TABLE `world_db_version` CHANGE  `required_147_quest_28868g` `required_148_npc_42553`  BIT(1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42553;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42553;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42553,0,0,0,20,0,100,0,26800,0,0,0,41,0,0,0,0,0,0,19,42598,0,0,0,0,0,0, 'Engineer Grindspark - On Quest Rewarded - Despawn GS-9x Multi-Bot');