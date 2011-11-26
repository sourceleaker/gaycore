ALTER TABLE `world_db_version` CHANGE  `required_236_Questrelation_added_to_GO` `required_237_Removal_of_old_Wetlands_NPCs` BIT(1);

-- Removal of old Wetlands NPC's (by Bastek)
DELETE FROM creature WHERE id IN
(1028,30720,4062,1069,1044,2089,1015,1018,1017,1020,1023,1021,1022,1042,1353,37703,1400,1417);