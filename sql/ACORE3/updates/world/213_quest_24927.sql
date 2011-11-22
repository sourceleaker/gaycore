ALTER TABLE `world_db_version` CHANGE  `required_212_quest_13569` `required_213_quest_24927`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=39026 WHERE `entry` IN (7856,7855,7858);