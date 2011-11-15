ALTER TABLE `world_db_version` CHANGE  `required_62_ongolongo` `required_63_npc_trained_razorbeak`  BIT(1);

UPDATE `creature_template` SET  `ScriptName`='npc_trained_razorbeak' WHERE `entry`=2657;