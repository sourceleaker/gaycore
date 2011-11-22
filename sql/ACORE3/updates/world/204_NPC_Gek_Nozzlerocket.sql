ALTER TABLE `world_db_version` CHANGE  `required_203_NPC_Overseer_Oilfist` `required_204_NPC_Gek_Nozzlerocket`  BIT(1);

-- NPC Gek Nozzlerocket added to Eastern Plaguelands
DELETE FROM creature WHERE id = 48704;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(48704, 0, 1, 1, 36238, 48704, 2278.15, -5259.87, 81.6873, 4.72984, 600, 0, 0, 1848, 0, 0, 0, 0, 0, 0);