ALTER TABLE `world_db_version` CHANGE  `required_78_Ashenvale_2` `required_79_ashes_to_ashes`  BIT(1);

UPDATE `item_template` SET `ScriptName`='item_kromgar_flame_thrower' WHERE `entry`=56473;
UPDATE `gameobject_template` SET `flags`=1 WHERE `entry`=203431;