ALTER TABLE `world_db_version` CHANGE  `required_213_quest_24927` `required_214_quest_24928`  BIT(1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=72520 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,72520,18,0,1,38660,0,0,'Throw Burning Rum must hit trigger'),
(13,0,72520,18,0,1,38662,0,0,'Throw Burning Rum must hit trigger'),
(13,0,72520,18,0,1,38665,0,0,'Throw Burning Rum must hit trigger');