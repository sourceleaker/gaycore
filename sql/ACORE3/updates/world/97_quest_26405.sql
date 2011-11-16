ALTER TABLE `world_db_version` CHANGE  `required_96_quest_26280` `required_97_quest_26405`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=43024 WHERE `entry` IN (1059,783,782,42858,781,672,784,669,670);