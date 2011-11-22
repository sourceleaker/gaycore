ALTER TABLE `world_db_version` CHANGE  `required_210_quest_13509` `required_211_npc_flymasters`  BIT(1);

INSERT INTO `gossip_menu_option`(`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
('12428','0','2','I need a ride.','1','8192','0','0','0','0','0','');

UPDATE `creature_template` SET `gossip_menu_id`=12428,`npcflag`=8192 WHERE `entry`='43073';

UPDATE `creature_template` SET `npcflag`=8192 WHERE `entry`=43079;