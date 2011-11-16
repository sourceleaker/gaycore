ALTER TABLE `world_db_version` CHANGE  `required_101_Latent_Disease` `required_102_quest_26187`  BIT(1);

UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry`=42334;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42334;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42334 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42334,0,0,0,11,0,100,0,0,4,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marl Wormthorn - On Spawn - set react passive'),
(42334,0,1,0,8,0,100,0,78985,0,0,0,28,78986,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marl Wormthorn - On SpellHit - Remove aura Marl''s Shield'),
(42334,0,2,0,8,0,100,0,78985,0,0,0,8,2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Marl Wormthorn - On SpellHit - set react aggresive'),
(42334,0,3,0,4,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marl Wormthorn - On Aggro - yell'),
(42334,0,4,0,6,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marl Wormthorn - On Death - yell');

DELETE FROM `creature_text` WHERE `entry`=42334;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(42334,0,0,'I only wanted to... do something... good...',1,0,100,0,0,0,'Marl Wormthorn'),
(42334,1,0,'What are you doing? You threaten my work! The Tainted Scar''s revival is all thanks to me!',1,0,100,0,0,0,'Marl Wormthorn');

UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=42334;

DELETE FROM conditions WHERE SourceEntry=78985 AND SourceTypeOrReferenceId=13;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(13,0,78985,0,18,1,42334,0,0,0,'Break Marl''s Trance can hit only Marl Wormthorn.');