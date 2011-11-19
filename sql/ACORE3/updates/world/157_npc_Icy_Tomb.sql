ALTER TABLE `world_db_version` CHANGE  `required_156_Delete_old_quests_from_db` `required_157_npc_Icy_Tomb`  BIT(1);

UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=41768;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|4 WHERE `entry`=41768;