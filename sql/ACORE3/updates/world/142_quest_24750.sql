ALTER TABLE `world_db_version` CHANGE  `required_141_TikiTarget` `required_142_quest_24750`  BIT(1);

UPDATE `quest_template` SET `SkillOrClassMask`=-8 WHERE `entry`=24750;