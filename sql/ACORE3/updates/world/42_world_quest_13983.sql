ALTER TABLE `world_db_version` CHANGE  `required_41_world_quest_6621` `required_42_world_quest_13983`  BIT(1);

UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = "-100" WHERE entry IN(195135, 195136, 195138);

