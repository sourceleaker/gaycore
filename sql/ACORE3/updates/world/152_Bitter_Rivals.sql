ALTER TABLE `world_db_version` CHANGE  `required_149_quest_26146` `required_152_Bitter_Rivals`  BIT(1);

DELETE FROM `creature_questrelation` WHERE `quest`=310;
DELETE FROM `creature_involvedrelation` WHERE `quest`=310;