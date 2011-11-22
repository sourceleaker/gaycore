ALTER TABLE `world_db_version` CHANGE  `required_215_Winterspring_zonefix` `required_217_Set_proper_drop_chance_for_some_items`  BIT(1);

-- Set proper drop chance for some items
DELETE FROM creature_loot_template Where item = 21377;
INSERT INTO creature_loot_template VALUES
(7153, 21377, -25, 1, 0, 1, 1),
(7154, 21377, -24, 1, 0, 1, 1),
(7155, 21377, -23, 1, 0, 1, 1),
(7156, 21377, -47, 1, 0, 1, 1),
(7157, 21377, -47, 1, 0, 1, 1),
(7158, 21377, -47, 1, 0, 1, 1),
(9462, 21377, -26, 1, 0, 1, 1),
(9464, 21377, -47, 1, 0, 1, 1),
(14342, 21377, -6, 1, 0, 1, 1);

UPDATE creature_loot_template SET ChanceOrQuestChance = 9 WHERE entry = 14523 AND item = 13140;
UPDATE creature_loot_template SET ChanceOrQuestChance = 87 WHERE entry = 10648 AND item = 11668;
UPDATE creature_loot_template SET ChanceOrQuestChance = 1 WHERE item = 20742 AND entry IN (10738,10916,7438,7439,7440,7441,7442);