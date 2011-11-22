ALTER TABLE `world_db_version` CHANGE  `required_202_Some_NPCs_added_to_Desolace` `required_203_NPC_Overseer_Oilfist`  BIT(1);

-- NPC added Overseer Oilfist <The Thorium Brotherhood>
DELETE FROM creature WHERE id = 14625;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(14625, 0, 1, 1, 14653, 0, -6501.13, -1173.36, 325.947, 2.30383, 500, 0, 0, 4120, 0, 0, 0, 0, 0, 0);