ALTER TABLE `world_db_version` CHANGE  `required_116_Quest_SeeToTheSurvivors` `required_117_Creature_TAD`  BIT(1);

UPDATE `creature_template` SET `unit_flags` = unit_flags | 33554432, `InhabitType` = '4', `MovementType`='1' WHERE entry = 46012;
UPDATE `creature` SET `spawndist` = '10' WHERE id = 46012;