ALTER TABLE `world_db_version` CHANGE  `required_249_gameobject_questrelation` `required_250_quest_racemask` BIT(1); 

UPDATE `quest_template` SET `RequiredRaces`=26 WHERE `entry` IN (27273,27356);