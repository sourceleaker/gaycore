ALTER TABLE `world_db_version` CHANGE  `required_131_Quest_Poison_Water` `required_133_Delete_old_NPCs_from_database`  BIT(1);

-- Delete old NPC's from database (by Bastek)
DELETE FROM creature WHERE id = 3207; -- Hexed Troll
DELETE FROM creature WHERE id = 1224; -- Young Threshadon
DELETE FROM creature WHERE guid IN (6475,6473,8435,7913,7357,7911); -- Bloodtalon taillasher
DELETE FROM creature WHERE id IN (1194,1191,1188,1192); -- Loch Modan NPC's
DELETE FROM creature WHERE id IN (1163,1164,1166,1197); -- Stonesplinter's w Loch Modan
DELETE FROM creature WHERE id = 1193; -- Loch Frenzy w Loch Modan
DELETE FROM creature WHERE id IN (1180,1179,1183,1178,1181,1210); -- Mo'grosh w Loch Modan
DELETE FROM creature WHERE id = 2187; -- Elder Darkshore Thresher
DELETE FROM creature WHERE id = 11863; -- Azore Aldamort is no longer in game