ALTER TABLE `world_db_version` CHANGE  `required_155_quest_433` `required_156_Delete_old_quests_from_db`  BIT(1);

-- Delete old quests from database
DELETE FROM creature_involvedrelation WHERE id = 3140 AND quest = 786;
DELETE FROM creature_questrelation WHERE id = 3140 AND quest = 786;
DELETE FROM creature_questrelation WHERE quest IN (298,301,302,273,454,281);
DELETE FROM creature_involvedrelation WHERE quest IN (298,301,302,273,454,281);
DELETE FROM gameobject_questrelation WHERE quest = 4449;
DELETE FROM gameobject_involvedrelation WHERE quest = 4449;
