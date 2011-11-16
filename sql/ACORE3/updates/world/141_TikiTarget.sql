ALTER TABLE `world_db_version` CHANGE  `required_140_kajachunk` `required_141_TikiTarget`  BIT(1);

UPDATE `creature_template` SET `Health_mod`=1.32 WHERE `entry`=38038;