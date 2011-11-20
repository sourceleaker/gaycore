ALTER TABLE `world_db_version` CHANGE  `required_198_Achievement_CataclysmicallyEpicRare` `required_199_Fix_for_quest_Rock_Lobster`  BIT(1);

-- Fix for quest Rock Lobster (by Bastek)
DELETE FROM gameobject WHERE id = 204284;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(204284, 0, 1, 1, -8344.98, 1346.31, -49.9491, 1.67832, 0, 0, 0.744081, 0.668089, 120, 0, 1),
(204284, 0, 1, 1, -8398.22, 1373.04, -58.181, 1.02251, 0, 0, 0.489271, 0.872132, 120, 0, 1),
(204284, 0, 1, 1, -8432.17, 1337.68, -54.3599, 1.56836, 0, 0, 0.706243, 0.707969, 120, 0, 1),
(204284, 0, 1, 1, -8433.11, 1312.43, -53.5845, 1.6744, 0, 0, 0.742771, 0.669545, 120, 0, 1),
(204284, 0, 1, 1, -8477.2, 1374.94, -65.991, 6.24149, 0, 0, 0.0208472, -0.999783, 120, 0, 1),
(204284, 0, 1, 1, -8433.12, 1380.48, -62.4973, 4.37223, 0, 0, 0.81659, -0.577217, 120, 0, 1);

DELETE FROM gameobject_loot_template WHERE entry = 204284;
INSERT INTO gameobject_loot_template VALUES
(204284, 58809, -100, 1, 0, 1, 1);

UPDATE gameobject_template SET castBarCaption = 'Collecting', faction = 35, data0 = 1691, data14 = 19676 WHERE entry = 204284;