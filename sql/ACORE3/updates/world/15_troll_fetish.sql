ALTER TABLE `world_db_version` CHANGE  `required_11_troll_start_quest` `required_15_troll_fetish`  BIT(1);
SET @ENTRY :=38560;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,60000,120000,80000,140000,28,72072,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Spitescale Flag Bunny - OOC - Remove Territorial Fetish');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=72070;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,72070,0,35,72072,38560,5,0,'','Place Territorial Fetish can cast only  when Spitescale Flag Bunny don''t have Territorial Fetish');

DELETE FROM spell_script_names WHERE spell_id=72070;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(72070,'spell_place_territorial_fetish');