ALTER TABLE `world_db_version` CHANGE  `required_192_npc_unit_flags` `required_193_Azshara_NPCs`  BIT(1);

-- Azshara NPC's
-- Kroum
UPDATE creature_template SET minlevel = 85,maxlevel = 85 WHERE entry = 36728;
DELETE FROM creature WHERE id = 36728;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(36728,1,1,1,0,0,2990.2,-4164.109,101.4216,0.8377581,120,0,0,1,0,0,0,0,0);
-- Valormok Grunt
UPDATE creature_template SET minlevel = 19,maxlevel = 20 WHERE entry = 36815;
DELETE FROM creature WHERE id = 36815;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(36815,1,1,1,0,0,2924.523,-4137.929,101.0537,2.949606,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2991.527,-4217.135,97.41331,4.118977,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2982.563,-4057.266,100.9007,1.727876,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2964.362,-4206.807,98.48338,5.826658,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2960.394,-4062.658,103.195,2.268928,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2950.682,-4093.368,103.9977,2.75762,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2940.821,-4114.222,104.4351,2.356194,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2936.291,-4164.899,100.8526,3.263766,120,0,0,1,0,0,0,0,0),
(36815,1,1,1,0,0,2935.081,-4166.321,100.9208,2.176859,120,0,0,1,0,0,0,0,0);

-- Valormok Guard
DELETE FROM creature_template WHERE entry = 51508;
INSERT INTO creature_template VALUES
(51508,0,0,0,0,0,30329,30330,0,0,'Valormok Guard','','',0,85,85,0,35,35,0,1,1.14286,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,1.5,1,1,0,0,0,0,0,0,0,0,1,0,0,0,'',1);

DELETE FROM creature WHERE id = 51508;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(51508,1,1,1,0,0,3012.109,-4125.611,101.3594,0,120,0,0,1,0,0,0,0,0);