ALTER TABLE `world_db_version` CHANGE  `required_137_Mohawk_Grenade` `required_138_Centaur_Bracers`  BIT(1);

-- Centaur Bracers quest items drop fix (by Bastek)
DELETE FROM creature_loot_template WHERE entry IN (9523,9524,3275,44170,3396,3397) AND item = 5030;
INSERT INTO creature_loot_template VALUES
(9523, 5030, -100, 1, 0, 1, 1),
(9524, 5030, -93, 1, 0, 1, 1),
(3275, 5030, -80, 1, 0, 1, 1),
(44170, 5030, -39, 1, 0, 1, 1),
(3396, 5030, -22, 1, 0, 1, 1),
(3397, 5030, -11, 1, 0, 1, 1);