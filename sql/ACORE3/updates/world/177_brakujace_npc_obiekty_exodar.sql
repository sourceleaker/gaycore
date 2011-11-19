ALTER TABLE `world_db_version` CHANGE  `required_176_taxi_lotnisko_if` `required_177_brakujace_npc_obiekty_exodar`  BIT(1);

DELETE FROM `creature` WHERE `id` IN (17555,50306);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL,17555,530,1,1,0,0,-3865.313,-11642.25,-137.5662,2.303835,120,0,0,1,0,0,0,0,0),
(NULL,50306,530,1,1,0,0,-3869.003,-11645.96,-137.5808,1.762783,120,0,0,1,0,0,0,0,0);

DELETE FROM `gameobject` WHERE `id`=207322;
INSERT INTO `gameobject`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(NULL,207322,530,1,1,-3942.478,-11651.42,-138.8192,2.478367,0,0,0.9455185,0.3255684,60,100,1),
(NULL,204879,530,1,1,-3860.474,-11642.74,-137.6218,2.565632,0,0,0.9588194,0.2840165,60,100,1),
(NULL,204879,530,1,1,-3865.031,-11646.55,-137.6409,2.059488,0,0,0.8571672,0.5150382,60,100,1);

DELETE FROM `gameobject_template` WHERE `entry` IN (204879,207322);
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(204879,5,9803, 'Hippogryph Roost', '', '',35,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, ''),
(207322,2,10016, 'Hero''s Call Board', '', '',35,0,1,0,16135,0,12128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '');

DELETE FROM `gameobject_questrelation` WHERE `id`=207322;
INSERT INTO `gameobject_questrelation`(`id`,`quest`) VALUES 
(207322,28492),
(207322,28559),
(207322,27727),
(207322,28531),
(207322,28552),
(207322,28543),
(207322,28511),
(207322,27726),
(207322,28708),
(207322,28528),
(207322,28550),
(207322,28539),
(207322,28507),
(207322,28503),
(207322,28558),
(207322,28525),
(207322,27724),
(207322,28544),
(207322,29156);
