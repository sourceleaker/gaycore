ALTER TABLE `world_db_version` CHANGE  `required_63_npc_trained_razorbeak` `required_64_Stomp_To_My_Beat`  BIT(1);

DELETE FROM conditions WHERE SourceEntry=57920 AND ConditionValue2=42536;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(18,0,57920,0,24,1,42536,0,0,0,'Revantusk War Drums can hit only Revantusk Stalker.');

UPDATE `quest_template` SET `ReqCreatureOrGOId1`=42536,`ReqSpellCast1`=0 WHERE `entry`=26240;

DELETE FROM `spell_script_names` WHERE `spell_id`=79402;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES 
(79402, 'spell_q26240_revantusk_drums');