ALTER TABLE `world_db_version` CHANGE  `required_59_wotlk_quest` `required_61_quest`  BIT(1);
DELETE FROM creature WHERE id = 3121; -- Remove wrong spawns (durotar tiger)

DELETE FROM creature WHERE id IN (38423, 38302); -- Zuni and Manifestation of the Sea Witch is summoned by script...

UPDATE creature_template SET Health_mod = 491000, Mana_mod = 255, rank = 3, minlevel = 16, maxlevel = 16 WHERE entry = 38306;

SET @ENTRY = 38437;
UPDATE creature_Template SET Health_mod = 10.01 WHERE entry = @ENTRY;
UPDATE creature SET position_x=-740.3889, position_y=-5617.327, position_z=25.01457 WHERE id = @ENTRY;


-- Vol'jin
SET @ENTRY := 38225;
SET @SOURCETYPE := 0;
SET @GOSSIP := 11020;
SET @VANIRA := 38437;
SET @ZARJIRA := 38306;
SET @ZUNI := 38423;

DELETE FROM creature WHERE id IN (@ZARJIRA);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(null, @ZARJIRA, 1, 1, 65534, 0, 38306, -710.565, -5579.21, 25.5008, 4.02621, 300, 0, 0, 491000, 91035, 0, 0, 0, 0, 0);
UPDATE creature SET phasemask = 1 WHERE id IN (@ENTRY, @VANIRA, @ZARJIRA, @ZUNI);

UPDATE creature_template SET gossip_menu_id = @GOSSIP, AIName="SmartAI", ScriptName = '', IconName = 'Interact' WHERE entry=@ENTRY;
UPDATE creature SET position_x = -741.5434, position_y = -5615.521, position_z = 25.11356 WHERE id = @ENTRY;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,62,0,100,0,11020,0,0,0,80,38225,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Start Timed Action List");

DELETE FROM gossip_menu WHERE entry = @GOSSIP AND text_id = 15318;
INSERT INTO gossip_menu (entry, text_id) VALUES
(@GOSSIP, 15318);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=15 AND `SourceEntry`=@GOSSIP AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES 
(15,0,@GOSSIP,9,0,24814,0,0,0,'Show gossip when quest is incomplete'),
(15,0,@GOSSIP,31,0,0,0,0,0,'Show gossip when quest is incomplete');

DELETE FROM gossip_menu_option WHERE menu_id = @GOSSIP;
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) values
(@GOSSIP,0,0,"I am ready, Vol'jin.",1,3,0,0,0,0,0,NULL);

DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY, @VANIRA, @ZARJIRA, @ZUNI);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,1,"Ya were foolish to come 'ere, Sea Witch. Ya escaped our vengeance once, but the Darkspear Tribe will not abide ya trespassin' again.",14,0,100,1,0,20119,'say 1'), -- DONE

(@ZARJIRA,0,1,"You are weak Vol'jin, like your father was weak. Today I will finish what I started long ago - the Darkspear shall be wiped from existence!",14,0,100,1,0, 21810,'say 1'),

(@ENTRY,1,1,"ZUNI! NOOOO!",14,0,100,1,0,20119,'say 1'),
(@ENTRY,2,1,"It be done. Our ancient enemy is defeated.",14,0,100,1,0,20121,'say 1'), -- DONE
(@ENTRY,3,1,"I been waitin' a long time for a chance to avenge my father. A greater weight has been lifted from my shoulders.",14,0,100,1,0,20122,'say 1'), -- DONE
(@ENTRY,4,1,"I must be returnin' ta Darkspear Hold. Please meet me there once Vanira is done with her healin' of the boy.",14,0,100,1,0,20123,'say 1'), -- DONE


(@ZARJIRA,1,1,"You were a fool to touch my fires! When Vol'jin falls, you know who dies next!",14,0,100,1,0,21814,'say 1'),
(@ZARJIRA,2,1,"Not so fast, little troll!",14,0,100,1,0,21815,'say 1'),

(@ZUNI,0,1,"I'll get the fires dis time!",14,0,100,1,0,21388,'say 1'),

(@VANIRA,0,1,"Take care of her spirits! We be handlin' Zar'jira.",14,0,100,1,0,20119,'say 1'),
(@VANIRA,0,2,"I'm afraid there's nothin' I can do for our brother... he power tore away at his soul.",14,0,100,1,0,20119,'say 1'),
(@VANIRA,0,3,"I'll send some watchers ta get his body so we can offer a proper farewell... I wish I could do more.",14,0,100,1,0,20119,'say 1'),
(@VANIRA,0,4,"Vol'jin rushed off in his eagerness, but I can take us back to safety. Just give me the word when ya ready, mon.",14,0,100,1,0,20119,'say 1');

SET @SOURCETYPE := 9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Close Gossip"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,4000,4000,0,0,86,73589,2,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Invoker cast kill credit"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,500,500,0,0,69,0,0,0,0,0,0,8,0,0,0,-720.984,-5595.98,25.6244,0.0,"Move To Pos"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,0,0,0,0,69,0,38437,20,0,0,0,8,0,0,0,-719.816,-5600.21,25.5129,0.0,"Move To Pos"),
(@ENTRY,@SOURCETYPE,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say 1");