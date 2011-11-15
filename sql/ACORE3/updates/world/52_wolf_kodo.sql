ALTER TABLE `world_db_version` CHANGE  `required_51_norther_barrens` `required_52_wolf_kodo`  BIT(1);

DELETE FROM gossip_menu_option WHERE menu_id=60040;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('60040', '0', '0', 'Can you tell me your fable, Shin?', '1', '3', '0', '0', '0', '0', '0', NULL);

UPDATE `creature_template` SET `npcflag`=3, `gossip_menu_id`=60040 WHERE `entry`=39380; 

DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup IN (60040);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,60040,0,0,9,25205,0,0,0,'','Show gossip 60040 if player has Quest 25205');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=39380;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=39380;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(39380,0,0,0,62,0,100,0,60040,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Shin Stonepillar - On gossip option select - Close gossip menu'),
(39380,0,1,0,62,0,100,0,60040,0,0,0,85,73840,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Shin Stonepillar - On gossip option select - Cast Spell Summon The Wolf');

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000,`VehicleId`=300,`Spell1`=73851,`ScriptName`='npc_the_wolf' WHERE `entry`=39364;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=39364;
INSERT INTO `npc_spellclick_spells` VALUES
(39364,86319,0,0,0,1,0,0,0);