ALTER TABLE `world_db_version` CHANGE  `required_79_ashes_to_ashes` `required_80_reinforcements`  BIT(1);

UPDATE `creature_template` SET `ScriptName`='npc_boulderslide_kobold', `AIName`= '' WHERE `entry` in (11917,11915,11918);

DELETE FROM `creature_text` WHERE `entry` IN (11917);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(11917,0,0,'Me make you eat whip!',0,0,100,0,0,0,'Boulderslide Geomancer'),
(11917,0,1,'Me shove whip down face!',0,0,100,0,0,0,'Boulderslide Geomancer'),
(11917,0,2,'ME SO ANGRY!',0,0,100,0,0,0,'Boulderslide Geomancer'),
(11917,0,3,'NO! ME NO HELP HORDE!',0,0,100,0,0,0,'Boulderslide Geomancer'),
(11917,0,4,'Whip make me angry!',0,0,100,0,0,0,'Boulderslide Geomancer'),
(11917,0,5,'You is BAD $R',0,0,100,0,0,0,'Boulderslide Geomancer');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`=42024; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=42024; 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42024,0,0,0,1,0,100,1,60000,90000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Subdued Kobold - After about 1 min - Despawn ');

UPDATE `creature_template` SET `name`='Boulderslide Rock Keeper',`minlevel`=27,`maxlevel`=28 WHERE `entry`=11915;
UPDATE `creature_template` SET `name`='Boulderslide Geomancer', `minlevel`=28,`maxlevel`=28 WHERE `entry`=11917;
UPDATE `creature_template` SET `name`='Boulderslide Stonepounder',`minlevel`=27,`maxlevel`=28 WHERE `entry`=11918;