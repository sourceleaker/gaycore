ALTER TABLE `world_db_version` CHANGE  `required_204_NPC_Gek_Nozzlerocket` `required_205_To_All_the_Squirrels`  BIT(1);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` BETWEEN 16214 AND 16226;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`) VALUES 
('16214', '1', '49779'),
('16215', '1', '48630'),
('16216', '1', '50419'),
('16217', '1', '48706'),
('16218', '1', '50496'),
('16219', '1', '50491'),
('16220', '1', '48686'),
('16221', '1', '50481'),
('16222', '1', '48848'),
('16223', '1', '47682'),
('16224', '1', '48802'),
('16225', '1', '47667'),
('16226', '1', '48683');