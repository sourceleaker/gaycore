ALTER TABLE `world_db_version` CHANGE `required_05_troll` `required_06_quest_template` BIT(1);

/*-- FROM: (never change sql file if isset on repo, You must create new sql update and push to repo)
-- More Than Expected Event
SET @ENTRY := 38966;
SET @GOBJECT := 202434;
SET @SOURCETYPE := 0;
SET @GOSSIP := 11112;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,7,0,20,1,100,0,24781,0,0,0,80,38966,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Event after reward quest More Than Expected.");
*/
UPDATE quest_template SET NextQuestId = 25064 WHERE entry IN (24781, 24787, 26277, 24775, 24769, 24755, 24763, 24643);