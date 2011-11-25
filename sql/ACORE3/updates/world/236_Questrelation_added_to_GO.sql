ALTER TABLE `world_db_version` CHANGE  `required_235_Fix_for_quest_The_Third_Fleet` `required_236_Questrelation_added_to_GO` BIT(1);

-- Questrelation added to GO (by Bastek)
DELETE FROM gameobject_questrelation WHERE id = 204406;
INSERT INTO gameobject_questrelation VALUES
(204406, 26603);