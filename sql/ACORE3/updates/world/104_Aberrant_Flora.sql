ALTER TABLE `world_db_version` CHANGE  `required_103_npc_21797` `required_104_Aberrant_Flora`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=38358 WHERE `entry` IN (6510,6511,6509,6512);