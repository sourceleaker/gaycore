ALTER TABLE `world_db_version` CHANGE  `required_190_Q_13882` `required_191_quest_13565`  BIT(1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=64306 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,64306,18,0,2,33206,0,0,'Call Withered Ent must hit dead Darkscale Scout');

DELETE FROM conditions WHERE SourceEntry=45911 AND SourceTypeOrReferenceId=18;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=33206;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33206 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33206,0,0,0,8,0,100,1,64306,0,0,0,33,34010,0,0,0,0,0,7,0,0,0,0,0,0,0,'Darkscale Scout - On SpellHit - Kill Credit');