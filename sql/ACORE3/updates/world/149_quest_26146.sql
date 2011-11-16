ALTER TABLE `world_db_version` CHANGE  `required_148_npc_42553` `required_149_quest_26146`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=1161 WHERE `entry`=1162;