ALTER TABLE `world_db_version` CHANGE  `required_145_Preemptive_Methods` `required_146_Stolen_Hyjal_Egg`  BIT(1);
-- Set proper spawn time for Stolen Hyjal Egg (by Bastek)
UPDATE gameobject SET spawntimesecs = 300 WHERE id = 203143;