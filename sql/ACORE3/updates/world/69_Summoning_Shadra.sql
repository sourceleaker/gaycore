ALTER TABLE `world_db_version` CHANGE  `required_68_The_Shell_of_Shadra` `required_69_Summoning_Shadra`  BIT(1);

DELETE FROM conditions WHERE SourceEntry=80469 AND SourceTypeOrReferenceId=13;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(13,0,80469,0,18,1,43067,0,0,0,'Ritual of Shadra can hit only Altar Bunny.'),
(13,0,80469,0,18,1,43069,0,0,0,'Ritual of Shadra can hit only Altar Bunny.'),
(13,0,80469,0,18,1,43068,0,0,0,'Ritual of Shadra can hit only Altar Bunny.');

DELETE FROM `spell_script_names` WHERE `spell_id`=80469;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES 
(80469, 'spell_q26531_26558_ritual_of_shadra');
