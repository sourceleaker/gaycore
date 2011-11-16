ALTER TABLE `world_db_version` CHANGE  `required_97_quest_26405` `required_98_quest_24963`  BIT(1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=5471;
DELETE FROM `smart_scripts` WHERE `entryorguid`=5471 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=5471*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5471,0,0,0,8,0,100,0,73068,0,0,0,80,5471*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Dunemaul Ogre - On SpellHit - run script'),
(5471,0,1,0,2,0,100,1,29,30,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dunemaul Ogre - On 30%hp - emote'),
(5471*100,9,0,0,0,0,100,0,0,0,0,0,18,384,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Make unattackable'),
(5471*100,9,1,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Stop combat'),
(5471*100,9,2,0,0,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Stop attack'),
(5471*100,9,3,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Change faction to friendly'),		
(5471*100,9,4,0,0,0,100,0,2000,2000,0,0,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Eat'),	
(5471*100,9,5,0,0,0,100,0,1000,1000,0,0,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Kill credit'),
(5471*100,9,6,0,0,0,100,0,1000,1000,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Run on'),
(5471*100,9,7,0,0,0,100,0,2000,2000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Evade'),
(5471*100,9,8,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Say'),
(5471*100,9,9,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dunemaul Ogre - Script - Despawn');


DELETE FROM `creature_text` WHERE `entry`=5471;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(5471,0,0,'Me sorry! No hurt!',0,0,100,0,0,0,'Dunemaul Ogre'),
(5471,1,0,'%s is ready to be lad.',2,0,100,0,0,0,'Dunemaul Ogre');
