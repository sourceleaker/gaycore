ALTER TABLE `world_db_version` CHANGE  `required_170_q_27336` `required_171_q_13648`  BIT(1);
-- Add quest 13648 to GO
DELETE FROM gameobject_questrelation WHERE id = 256;
INSERT INTO gameobject_questrelation VALUES
(256, 13648);