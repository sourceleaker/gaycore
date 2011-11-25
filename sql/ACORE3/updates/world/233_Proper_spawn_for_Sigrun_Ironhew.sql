ALTER TABLE `world_db_version` CHANGE  `required_232_Fix_for_quest_The_Highvale_Documents` `required_233_Proper_spawn_for_Sigrun_Ironhew` BIT(1);

-- Proper spawn for Sigrun Ironhew
DELETE FROM creature WHERE id = 2860;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(2860,0,1,1,0,0,-6610.99,-3421.93,279.3604,2.478368,120,0,0,1,0,0,0,0,0);