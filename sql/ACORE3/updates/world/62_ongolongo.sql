ALTER TABLE `world_db_version` CHANGE  `required_61_quest` `required_62_ongolongo`  BIT(1);

DELETE FROM creature WHERE id IN (42816,42817,42815);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
(null,42815,0,1,1,0,0,-463.806,-3971.57,203.134,3.73742,300,0,0,0,0,0,0,0,0,0),
(null,42816,0,1,1,0,0,-450.119,-3979.21,207.215,2.87505,300,0,0,0,0,0,0,0,0,0),
(null,42817,0,1,1,0,0,-478.251,-3959.63,206.653,5.56098,300,0,0,0,0,0,0,0,0,0);


UPDATE `creature_template` SET `minlevel`=33,`maxlevel`=33,`exp`=0,`faction_A`=14,`faction_H`=14,`unit_flags`=4,`ScriptName`='npc_ongolongo' WHERE `entry`=42815;
UPDATE `creature_template` SET `flags_extra`=130,`InhabitType`=5 WHERE `entry` in (42816,42817);

SET @ENTRY := 42816;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,79806,2,0,0,0,0,19,42815,0,0,0,0,0,0, 'Ongolongo''s Right Shackle - On reset - Cast Ongolongo - Chain Visua');

SET @ENTRY := 42817;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,79806,2,0,0,0,0,19,42815,0,0,0,0,0,0, 'Ongolongo''s Left Shackle - On reset - Cast Ongolongo - Chain Visua');

DELETE FROM waypoint_data WHERE id = 42815;
INSERT INTO waypoint_data (id, point,position_x, position_y, position_z)  VALUES
(42815,0,-467.073151,-3974.223145,203.504395),
(42815,1,-472.930939,-3978.330078,205.348038),
(42815,2,-478.439087,-3982.191895,207.815353),
(42815,3,-481.591522,-3984.402100,209.478027),
(42815,4,-484.503235,-3986.443359,211.055923),
(42815,5,-486.595306,-3987.910156,212.274490),
(42815,6,-490.882599,-3990.916016,214.038788),
(42815,7,-492.368683,-3993.111572,214.576736),
(42815,8,-500.234772,-4002.447510,216.186340),
(42815,9,-505.137543,-4008.266357,215.922867),
(42815,10,-509.923035,-4013.946045,215.824036),
(42815,11,-518.993408,-4024.711182,215.860260);
UPDATE `waypoint_data` SET `move_flag`=1 WHERE `id`=42815;
UPDATE `waypoint_data` SET `action`=42815 WHERE `id`=42815 AND `point`=11;

DELETE FROM `waypoint_scripts` WHERE `id`=42815;
INSERT INTO `waypoint_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(42815,1,18,0,0,0,0,0,0,0,10175599);

SET @ENTRY := 42843;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,79875,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'VILEBRANCH HANDLER - On SpellHit- Despawn');
