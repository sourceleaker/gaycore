ALTER TABLE `world_db_version` CHANGE  `required_66_All_That_Skitters` `required_67_The_Eye_of_Shadra`  BIT(1);

UPDATE `gameobject` SET `id`=204120 WHERE `id`=177951;