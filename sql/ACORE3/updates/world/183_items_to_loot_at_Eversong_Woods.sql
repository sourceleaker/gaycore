ALTER TABLE `world_db_version` CHANGE  `required_182_deactivating_the_spires` `required_183_items_to_loot_at_Eversong_Woods`  BIT(1);

-- Add some items to loot at Eversong Woods
DELETE FROM creature_loot_template WHERE entry = 15298 AND item = 20483;
INSERT INTO creature_loot_template VALUES
(15298, 20483, 47, 1, 0, 1, 1);
DELETE FROM creature_loot_template WHERE entry = 15968 AND item = 20765;
INSERT INTO creature_loot_template VALUES
(15968, 20765, 88, 1, 0, 1, 1);