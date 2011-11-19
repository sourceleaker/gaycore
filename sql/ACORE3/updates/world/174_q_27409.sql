ALTER TABLE `world_db_version` CHANGE  `required_173_q_26801` `required_174_q_27409`  BIT(1);

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND ConditionValue2 IN(4329,4328,4331);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
('13', '0', '42411', '0', '18', '2', '4329', '0', '0', '0', 'Target only Firemane Scout'),
('13', '0', '42411', '0', '18', '2', '4328', '0', '0', '0', 'Target only Firemane Scalebane'),
('13', '0', '42411', '0', '18', '2', '4331', '0', '0', '0', 'Target only Firemane Ashtail');

DELETE FROM conditions WHERE SourceTypeOrReferenceId=18 AND ConditionValue2 IN(4329,4328,4331);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
('18', '0', '33088', '0', '24', '2', '4329', '0', '0', '0', 'Item Target only dead Firemane Scout'),
('18', '0', '33088', '0', '24', '2', '4328', '0', '0', '0', 'Item Target only dead Firemane Scalebane'),
('18', '0', '33088', '0', '24', '2', '4331', '0', '0', '0', 'Item Target only dead Firemane Ashtail');