ALTER TABLE `world_db_version` CHANGE  `required_88_runaway_shredder` `required_89_quest_26047`  BIT(1);

DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id`=41989);

DELETE FROM `creature_template_addon` WHERE `entry`=41989;
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(41989,0,0,8,0,430, NULL);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=41989;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41989;
INSERT INTO `npc_spellclick_spells` VALUES
(41989,78269,26047,1,26047,2,0,0,0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=41989;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41989 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41989*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41989,0,1,0,31,0,100,0,78269,0,0,0,80,41989*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Frightened Peon - On SpellHitTarget - run script'),
(41989*100,9,0,0,0,0,100,0,0,0,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Frightened Peon - Script - Stand'),	
(41989*100,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Frightened Peon - Script - Say'),	
(41989*100,9,2,0,0,0,100,0,1000,1000,0,0,46,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Frightened Peon - Script - Move Forward'),	
(41989*100,9,3,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Frightened Peon - Script - Despawn');


DELETE FROM `creature_text` WHERE `entry`=41989;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(41989,0,0,'Oof! You touch naughty spot!',0,0,100,0,0,0,'Frightened Peon'),
(41989,0,1,'Tanks!',0,0,100,0,0,0,'Frightened Peon'),
(41989,0,2,'Which way to go???',0,0,100,0,0,0,'Frightened Peon'),
(41989,0,3,'Why dis happen???',0,0,100,0,0,0,'Frightened Peon'),
(41989,0,4,'You is friend. Tanks!',0,0,100,0,0,0,'Frightened Peon');