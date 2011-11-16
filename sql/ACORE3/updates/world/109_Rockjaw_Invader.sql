ALTER TABLE `world_db_version` CHANGE  `required_108_Quest_Pack_Your_Bags` `required_109_Rockjaw_Invader`  BIT(1);
UPDATE creature SET `spawntimesecs`=10 WHERE id = 37070;