ALTER TABLE `world_db_version` CHANGE  `required_130_instance_hoo` `required_131_Quest_Poison_Water`  BIT(1);

-- Poison Water quest items drop fix (by Bastek)
DELETE FROM creature_loot_template WHERE entry IN (2958, 2956, 2957) AND item IN (4758, 4759);
INSERT INTO creature_loot_template VALUES
(2958, 4758, -40, 1, 0, 1, 1),
(2956, 4759, -51, 1, 0, 1, 1),
(2957, 4759, -6, 1, 0, 1, 1);
