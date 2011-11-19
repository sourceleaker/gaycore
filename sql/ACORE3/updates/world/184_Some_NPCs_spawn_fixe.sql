ALTER TABLE `world_db_version` CHANGE  `required_183_items_to_loot_at_Eversong_Woods` `required_184_Some_NPCs_spawn_fixes`  BIT(1);

-- Some NPC's spawn fixes
DELETE FROM creature WHERE id IN (36056);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(36056, 1, 1, 1, 4860, 36056, -1050.29, 1612.84, 60.255, 6.19592, 600, 0, 0, 1220, 0, 0, 0, 0, 0, 0);