ALTER TABLE `world_db_version` CHANGE  `required_188_NPC_Maximillian_of_Northshire` `required_189_darkshore_missing_npc_object`  BIT(1);

DELETE FROM `gameobject` WHERE `id`=194105;
INSERT INTO `gameobject`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(NULL,194105,1,1,1,7376.342,-425.0824,2.099702,4.607672,0,0,-0.743144,0.6691315,60,100,1);

DELETE FROM `gameobject_questrelation` WHERE `id`=194105 AND `quest`=13527;
INSERT INTO `gameobject_questrelation`(`id`,`quest`)VALUES
(194105,13527);

DELETE FROM `gameobject_questrelation` WHERE `id`=194105 AND `quest`=13521;
INSERT INTO `gameobject_involvedrelation`(`id`,`quest`)VALUES
(194105,13521);

DELETE FROM `creature` WHERE `id`=32972;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL,32972,1,1,1,0,0,7447.6,-267.3907,12.73817,1.481029,120,0,0,1,0,0,0,0,0);