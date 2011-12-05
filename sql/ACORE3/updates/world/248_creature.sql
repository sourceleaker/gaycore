ALTER TABLE `world_db_version` CHANGE  `required_247_creature` `required_248_creature` BIT(1); 
 
DELETE FROM `creature` WHERE `id` IN (8717,8718,12396,8716);