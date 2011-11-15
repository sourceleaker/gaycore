ALTER TABLE `world_db_version` CHANGE  `required_44_world_quest_13890` `required_45_world_quest_26063`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`='4006' WHERE entry IN(4005, 4007);