ALTER TABLE `world_db_version` CHANGE  `required_146_Stolen_Hyjal_Egg` `required_147_quest_28868g`  BIT(1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=41251;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41251 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41251*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41251,0,0,0,8,0,100,1,93773,0,0,0,80,41251*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Frostmane Builder - On SpellHit - run script'),
(41251,0,1,0,8,0,100,1,93773,0,0,0,33,50606,0,0,0,0,0,7,0,0,0,0,0,0,0,'Frostmane Builder - On SpellHit - kill credit'),
(41251*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Frostmane Builder - Script - say'),
(41251*100,9,1,0,0,0,100,0,1000,1000,0,0,89,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Frostmane Builder - Script - random move'),
(41251*100,9,2,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Frostmane Builder - Script - say'),
(41251*100,9,3,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Frostmane Builder - Script - Despawn');

DELETE FROM `creature_text` WHERE `entry`=41251;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(41251,0,0,'Can''t... lift... tools...',0,0,100,0,0,0,'Frostmane Builder'),
(41251,0,1,'No make me small!',0,0,100,0,0,0,'Frostmane Builder'),
(41251,0,2,'What you do to me?',0,0,100,0,0,0,'Frostmane Builder'),
(41251,0,3,'Why everyone else get so big?',0,0,100,0,0,0,'Frostmane Builder'),
(41251,1,0,'Take curse away!',0,0,100,0,0,0,'Frostmane Builder');

UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=41251;