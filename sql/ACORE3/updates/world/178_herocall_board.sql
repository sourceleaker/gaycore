ALTER TABLE `world_db_version` CHANGE  `required_177_brakujace_npc_obiekty_exodar` `required_178_herocall_board`  BIT(1);

DELETE FROM `gameobject_template` WHERE `entry` IN (207321,207320);
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES
(207320,2,10016, 'Hero''s Call Board', '', '',35,0,1,0,16134,0,12128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, ''),
(207321,2,10016, 'Hero''s Call Board', '', '',35,0,1,0,15806,0,12128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '');

DELETE FROM `gameobject` WHERE `id` IN (207321,207320);
INSERT INTO `gameobject`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(NULL,207320,0,1,1,-4937.462,-914.8524,501.4554,5.393069,0,0,-0.4305105,0.9025856,60,100,1),
(NULL,207321,1,1,1,9951.521,2496.556,1317.266,5.131269,0,0,-0.5446386,0.8386708,60,100,1);

DELETE FROM `gameobject_questrelation` WHERE `id` IN (207321,207320);
INSERT INTO `gameobject_questrelation`(`id`,`quest`) VALUES 
(207320,29387),
(207320,28573),
(207320,28579),
(207320,28673),
(207320,28666),
(207320,27727),
(207320,28578),
(207320,28567),
(207320,27726),
(207320,28709),
(207320,28708),
(207320,28582),
(207320,28675),
(207320,26542),
(207320,28716),
(207320,28558),
(207320,27724),
(207320,28576),
(207320,28565),
(207320,29156),
(207321,29387),
(207321,28492),
(207321,28490),
(207321,27727),
(207321,28531),
(207321,28552),
(207321,28543),
(207321,28511),
(207321,27726),
(207321,28709),
(207321,28708),
(207321,28528),
(207321,28550),
(207321,28539),
(207321,28507),
(207321,28503),
(207321,28716),
(207321,28558),
(207321,28525),
(207321,27724),
(207321,28544),
(207321,29156);