ALTER TABLE `world_db_version` CHANGE  `required_248_creature` `required_249_gameobject_questrelation` BIT(1); 

DELETE FROM `gameobject_questrelation` WHERE `quest`=720;
DELETE FROM `creature_involvedrelation` WHERE `quest`=720;