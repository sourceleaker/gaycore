ALTER TABLE `world_db_version` CHANGE  `required_152_Bitter_Rivals` `required_153_q_25905`  BIT(1);

UPDATE `creature_template` SET `ScriptName`='npc_stolen_ram' WHERE `entry`=41539;