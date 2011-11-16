ALTER TABLE `world_db_version` CHANGE  `required_104_Aberrant_Flora` `required_105_quest_27980`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=5857 WHERE `entry` IN (5858);