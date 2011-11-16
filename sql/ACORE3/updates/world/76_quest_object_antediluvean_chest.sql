ALTER TABLE `world_db_version` CHANGE  `required_75_quest_lost` `required_76_quest_object_antediluvean_chest`  BIT(1);

-- Antediluvean Chest (ID: 202474) --

-- DELETE --
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 202474;
DELETE FROM `gameobject_questrelation` WHERE `id` = 202474;

-- Antediluvean Chest - start quests --
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
('202474', '25421'), 
('202474', '25107'), 
('202474', '25070');

-- Antediluvean Chest - end quests --
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
('202474', '25566'), 
('202474', '25069'), 
('202474', '25070');