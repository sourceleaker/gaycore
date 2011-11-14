ALTER TABLE `world_db_version` CHANGE `required_06_quest_template` `required_07_quest_template` BIT(1);

UPDATE quest_template SET NextQuestId = 24622 WHERE entry = 25064;
UPDATE quest_template SET NextQuestId = 24623 WHERE entry = 24622;