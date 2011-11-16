ALTER TABLE `world_db_version` CHANGE  `required_98_quest_24963` `required_99_quest_24686`  BIT(1);

UPDATE `creature` SET `MovementType`=1,`spawndist`=10 WHERE `id`=38202;
