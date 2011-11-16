ALTER TABLE `world_db_version` CHANGE  `required_114_goblin_quest` `required_115_The_Rod_of_Lianthe`  BIT(1);

-- The Rod of Lianthe drop fix (by Bastek)
DELETE FROM creature_loot_template WHERE entry IN (19792, 19796, 19806) AND item = 31316;
INSERT INTO creature_loot_template VALUES
(19792, 31316, -6, 1, 0, 1, 1),
(19796, 31316, -6, 1, 0, 1, 1),
(19806, 31316, -5, 1, 0, 1, 1);
