ALTER TABLE `world_db_version` CHANGE  `required_52_wolf_kodo` `required_54_world_quest_13907`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`='34344' WHERE entry IN(2207, 34339);

