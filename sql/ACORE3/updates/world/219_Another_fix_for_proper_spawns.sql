ALTER TABLE `world_db_version` CHANGE  `required_218_quest_14309` `required_219_Another_fix_for_proper_spawns`  BIT(1);

-- Another fix for proper spawns
DELETE FROM creature WHERE id IN (2766,3411,3995,12816,11821,2771);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(2766, 0, 1, 1, 610, 0, -2117.71, -2010.82, 6.29982, 2.91768, 400, 0, 0, 1678, 0, 0, 0, 0, 0, 0),
(3411, 1, 1, 1, 4357, 3411, -182.988, -348.691, 8.5921, 4.74729, 600, 0, 0, 713, 0, 0, 0, 0, 0, 0),
(3995, 1, 1, 1, 4104, 0, -272.48, -394.084, 17.2051, 6.19592, 600, 0, 0, 713, 0, 0, 0, 0, 0, 0),
(12816, 1, 1, 1, 12709, 12816, -177.568, -233.317, 8.87961, 5.84685, 600, 0, 0, 713, 0, 0, 0, 0, 0, 0),
(11821, 1, 1, 1, 11751, 11821, 158.443, 71.4323, 48.7988, 3.17976, 600, 0, 0, 1003, 0, 0, 0, 0, 0, 0),
(2771, 0, 1, 1, 4045, 2771, -947.488, -3539.4, 71.0106, 0.453786, 400, 0, 0, 1003, 0, 0, 0, 0, 0, 0);