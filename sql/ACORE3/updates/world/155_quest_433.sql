ALTER TABLE `world_db_version` CHANGE  `required_154_quest_relation` `required_155_quest_433`  BIT(1);

DELETE FROM `creature_template_addon` WHERE `entry`=41671;
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(41671,0,0,8,0,430, NULL);

DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id`=41671);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=41671;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41671 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41671*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41671,0,0,0,8,0,100,0,77819,0,0,0,80,41671*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Trapped Miner - On SpellHit - run script'),
(41671*100,9,0,0,0,0,100,0,1000,1000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Stand'),
(41671*100,9,1,0,0,0,100,0,1000,1000,0,0,17,26,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Remove all emotes'),
(41671*100,9,2,0,0,0,100,0,1000,1000,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Bow'),
(41671*100,9,3,0,0,0,100,0,1000,1000,0,0,33,41671,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Trapped Miner - Script - Kill Credit'),
(41671*100,9,4,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Say'),	
(41671*100,9,5,0,0,0,100,0,1000,1000,0,0,11,83889,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Cast Cosmetic Hearthstone'),
(41671*100,9,6,0,0,0,100,0,1000,1000,0,0,41,4500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trapped Miner - Script - Despawn');

DELETE FROM `creature_text` WHERE `entry`=41671;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(41671,0,0,'I can''t wait to get home to my family. Thank you, stranger.',0,0,100,0,0,0,'Trapped Miner'),
(41671,0,1,'I thought I would die down here.',0,0,100,0,0,0,'Trapped Miner'),
(41671,0,2,'I thought they were going to tear me apart!',0,0,100,0,0,0,'Trapped Miner'),
(41671,0,3,'Light bless you, stranger. You''ve saved me!',0,0,100,0,0,0,'Trapped Miner'),
(41671,0,4,'Thank you!',0,0,100,0,0,0,'Trapped Miner'),
(41671,0,5,'You''re the best thing I''ve seen since the troggs showed up!',0,0,100,0,0,0,'Trapped Miner');