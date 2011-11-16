ALTER TABLE `world_db_version` CHANGE  `required_136_naga_trolle` `required_137_Mohawk_Grenade`  BIT(1);

-- Makes Mohawk Grenade unique (by Bastek)
UPDATE item_template SET maxcount = 1 WHERE entry = 43489;