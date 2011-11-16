ALTER TABLE `world_db_version` CHANGE  `required_95_Cozzles_Plan` `required_96_quest_26280`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=42621 WHERE `entry` IN (4460,4458,4461,4457,4459);