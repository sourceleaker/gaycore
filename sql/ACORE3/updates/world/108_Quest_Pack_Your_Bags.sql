ALTER TABLE `world_db_version` CHANGE  `required_107_Quest_Trolling_the_information` `required_108_Quest_Pack_Your_Bags`  BIT(1);

DELETE FROM `gameobject_loot_template` WHERE entry = 201706;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('201706', '49754', '-100');