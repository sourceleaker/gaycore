ALTER TABLE `world_db_version` CHANGE  `required_167_Secure_the_Cargo` `required_168_q_24737`  BIT(1);

DELETE FROM conditions WHERE SourceEntry=50742 AND SourceTypeOrReferenceId=18;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(18,0,50742,0,24,2,6517,0,0,0,'You can use Scrape Sticky Tar only on dead Tar Beast'),
(18,0,50742,0,24,2,6527,0,0,0,'You can use Scrape Sticky Tar only on dead Tar Creeper');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=71969 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,71969,18,0,2,6517,0,0,'Dummy effect from Scrape Sticky Tar hit dead Tar Beast'),
(13,0,71969,18,0,2,6527,0,0,'Dummy effect from Scrape Sticky Tar hit dead Tar Creeper');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=6517;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6517 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(6517,0,0,0,11,0,100,0,0,0,0,0,11,14178,2,0,0,0,0,1,0,0,0,0,0,0,0,'Tar Beast - On Respawn- Cast Sticky Tar'),
(6517,0,1,0,8,0,100,0,71969,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tar Beast - On SpellHit - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=6527;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6527 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(6527,0,0,0,11,0,100,0,0,0,0,0,11,14178,2,0,0,0,0,1,0,0,0,0,0,0,0,'Tar Creeper - On Respawn- Cast Sticky Tar'),
(6527,0,1,0,0,0,100,0,8000,8000,14000,19000,11,5568,2,0,0,0,0,2,0,0,0,0,0,0,0,'Tar Creeper - IC - Cast Trample'),
(6527,0,2,0,8,0,100,0,71969,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tar Creeper - On SpellHit - Despawn');
