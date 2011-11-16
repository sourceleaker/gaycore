ALTER TABLE `world_db_version` CHANGE  `required_135_kezan` `required_136_naga_trolle`  BIT(1);

UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=38142;