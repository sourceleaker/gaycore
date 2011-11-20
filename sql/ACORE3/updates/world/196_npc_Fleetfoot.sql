ALTER TABLE `world_db_version` CHANGE  `required_195_quest_26177` `required_196_npc_Fleetfoot`  BIT(1);

DELETE FROM `creature` WHERE `id`=32997;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL,32997,1,1,1,0,0,4812.737,71.86166,51.33166,0.5170139,120,10,0,1,0,1,0,0,0);


UPDATE `creature_template` SET `minlevel`=17,`maxlevel`=19,`faction_A`=15,`faction_H`=15,`mindmg`=20,`maxdmg`=40 WHERE `entry`=32997;

DELETE FROM `creature_loot_template` WHERE `entry`=32997 AND `item`=44886;
INSERT INTO `creature_loot_template`(`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`)VALUES
('32997','44886','100','1','0','1','1');
