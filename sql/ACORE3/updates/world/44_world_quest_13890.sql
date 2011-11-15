ALTER TABLE `world_db_version` CHANGE  `required_43_quest_johaans_experiment` `required_44_world_quest_13890`  BIT(1);

DELETE FROM `gameobject` WHERE id = 301607;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('301607','1','1','1','3308.98','1035.33','4.05773','5.91195','0','0','0.184555','-0.982822','300','0','1');
DELETE FROM `gameobject_template` WHERE entry = 301607;
INSERT INTO `gameobject_template` (`entry`, `type`, `name`, `data0`, `data1`, `data6`) VALUES ('301607', '8', 'TEMP Zoram\'gar Forge', '1607', '15', '0');