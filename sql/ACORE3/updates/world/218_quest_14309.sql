ALTER TABLE `world_db_version` CHANGE  `required_217_Set_proper_drop_chance_for_some_items` `required_218_quest_14309`  BIT(1);

INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(195679,5,7040, 'Kodo Conconction', '', '',35,0,1.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '');

UPDATE `gameobject_template` SET `ScriptName`='npc_enraged_kodo_kc_bunny' WHERE `entry`=36079;