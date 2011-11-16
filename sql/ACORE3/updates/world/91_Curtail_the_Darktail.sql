ALTER TABLE `world_db_version` CHANGE  `required_90_Attune_the_Bloodstone` `required_91_Curtail_the_Darktail`  BIT(1);

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=42235;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42235;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42235 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42235,0,0,0,8,0,100,0,78838,0,0,0,33,42235,0,0,0,0,0,7,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - kill credit'),
(42235,0,1,0,8,0,100,0,78838,0,0,0,11,78834,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - cast Flaming Arrow (Hit)'),
(42235,0,2,0,8,0,100,0,78838,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - die');

DELETE FROM conditions WHERE SourceEntry=78838 AND SourceTypeOrReferenceId=13;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(13,0,78838,0,18,1,42235,0,0,0,'Enohar''s Explosive Arrow can hit only Darktail Bonepicker.');