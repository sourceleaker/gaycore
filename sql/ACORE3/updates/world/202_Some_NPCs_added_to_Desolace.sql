ALTER TABLE `world_db_version` CHANGE  `required_201_Keeping_the_Enemy_at_Bay` `required_202_Some_NPCs_added_to_Desolace`  BIT(1);

-- Some NPC's added to Desolace (by Bastek)
-- Officer Jankie
DELETE FROM creature WHERE id = 36410;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(36410,1,1,1,0,0,174.066,1794.819,86.32273,1.082104,120,0,0,1,0,0,0,0,0);
UPDATE creature_template SET npcflag = 2, minlevel = 45, maxlevel = 45 WHERE entry = 36410;
-- Jankie's Mount
DELETE FROM creature WHERE id = 36416;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(36416,1,1,1,0,0,171.2066,1793.292,86.31238,0.9773844,120,0,0,1,0,0,0,0,0);
UPDATE creature_template SET minlevel = 40, maxlevel = 40 WHERE entry = 36416;