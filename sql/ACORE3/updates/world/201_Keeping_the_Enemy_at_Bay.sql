ALTER TABLE `world_db_version` CHANGE  `required_200_quest_13514` `required_201_Keeping_the_Enemy_at_Bay`  BIT(1);

-- Fix for quest Keeping the Enemy at Bay (by Bastek)
-- Triggers
DELETE FROM creature WHERE id IN (25090,25091,25092);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(25090, 530, 1, 1, 0, 0, 13200.6, -7048.38, 3.82285, 3.17961, 180, 0, 0, 57, 0, 0, 0, 0, 0),
(25091, 530, 1, 1, 21072, 0, 13317.5, -6988.85, 4.13809, 3.11521, 180, 0, 0, 57, 0, 0, 0, 0, 0),
(25092, 530, 1, 1, 0, 0, 13272.2, -7144.51, 4.93783, 3.72311, 180, 0, 0, 57, 0, 0, 0, 0, 0);