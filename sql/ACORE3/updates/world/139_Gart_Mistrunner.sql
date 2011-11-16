ALTER TABLE `world_db_version` CHANGE  `required_138_Centaur_Bracers` `required_139_Gart_Mistrunner`  BIT(1);

-- Some fix for Gart Mistrunner and quest Rejuvenating Touch (by Bastek)
UPDATE quest_template SET ReqCreatureOrGOCount1 = 2, ReqSpellCast1 = 0, RequiredSpell = 774, Title='Rejuvenating Touch', Objectives='Learn Rejuvination from Gart Mistrunner. Practice using Rejuvination on a Wounded Brave in Camp Narache. ', ObjectiveText1='Practice Rejuvenation' WHERE entry = 27067;
UPDATE npc_trainer SET spell = 774, reqlevel = 3 WHERE entry = 3060 AND spell = 5185;
 
SET @ENTRY :=45199;
UPDATE `creature_template` SET `AIName`='SmartAI',`RegenHealth`=0 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,99,10,50,0,0,0,0,1,0,0,0,0,0,0,0, 'Wounded Brave Watcher - On respawn - Change hp'),
(@ENTRY,0,1,0,8,0,100,0,774,0,0,0,33,44175,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Wounded Brave Watcher - On spell hit - Quest credit');