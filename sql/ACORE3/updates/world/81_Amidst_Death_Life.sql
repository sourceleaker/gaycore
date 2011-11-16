ALTER TABLE `world_db_version` CHANGE  `required_80_reinforcements` `required_81_Amidst_Death_Life`  BIT(1);

DELETE FROM conditions WHERE SourceEntry=84964 AND SourceTypeOrReferenceId=13;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(13,0,84964,0,18,1,45486,0,0,0,'Rayne''s Seed can hit only Necropolis Flower Controller SE.'),
(13,0,84964,0,18,1,45487,0,0,0,'Rayne''s Seed can hit only Necropolis Flower Controller NE.'),
(13,0,84964,0,18,1,45488,0,0,0,'Rayne''s Seed can hit only Necropolis Flower Controller W.');

DELETE FROM `spell_script_names` WHERE `spell_id`=84964;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES 
(84964, 'spell_q27421_raynes_seed');

DELETE FROM `gameobject_template` WHERE `entry`=205434;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('205434','8','0','Fungal Vale Necropolis Spell Focus','','','','0','0','1','0','0','0','0','0','0','1684','10','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','1');

DELETE FROM `gameobject` WHERE `id`=205434;
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,205434,0,1,65534,2563.41,-3810.78,185.058,2.2886,0,0,0.910421,0.413683,300,0,1),
(NULL,205434,0,1,65534,2406.39,-3800.95,185.472,0.16959,0,0,0.0846937,0.996407,300,0,1),
(NULL,205434,0,1,65534,2509.34,-3644.67,186.61,4.50498,0,0,0.776506,-0.630109,300,0,1);
