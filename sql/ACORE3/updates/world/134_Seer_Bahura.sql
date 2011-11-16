ALTER TABLE `world_db_version` CHANGE  `required_133_Delete_old_NPCs_from_database` `required_134_Seer_Bahura`  BIT(1);

-- Set proper spawn point for Seer Bahura (by Bastek)
UPDATE creature SET position_x = 1586.762085, position_y = -4420.654785, position_z = 15.028081, orientation = 1.375939 WHERE id = 39283;