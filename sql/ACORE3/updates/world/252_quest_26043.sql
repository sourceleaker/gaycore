ALTER TABLE `world_db_version` CHANGE  `required_251_quest_25684` `required_252_quest_26043` BIT(1); 

DELETE FROM `gameobject_questrelation` WHERE `id`=203186;
INSERT INTO `gameobject_questrelation`(`id`,`quest`)VALUES
(203186,26043);