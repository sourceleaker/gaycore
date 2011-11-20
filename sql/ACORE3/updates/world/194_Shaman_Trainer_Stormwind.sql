ALTER TABLE `world_db_version` CHANGE  `required_193_Azshara_NPCs` `required_194_Shaman_Trainer_Stormwind`  BIT(1);

-- Shaman Trainer at Stormwind POI and spawn fix (by Bastek)
DELETE FROM creature WHERE id = 20407;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(20407, 0, 1, 1, 19598, 20407, -8359.28, 577.384, 104.331, 5.37561, 600, 0, 0, 3297, 2434, 0, 0, 0, 0, 0);
UPDATE npc_text SET text0_0 = 'I\'v heard there\'s a pair of Wildhammer shamans visiting the Dvarven District, so you might try your luck there.$B$BThe draenei Farseer who used to lounge about the Valley of Heroes went off to meet them too.', text0_1 = 'I\'v heard there\'s a pair of Wildhammer shamans visiting the Dvarven District, so you might try your luck there.$B$BThe draenei Farseer who used to lounge about the Valley of Heroes went off to meet them too.' WHERE id = 10106;
UPDATE points_of_interest SET x = -8359, y = 577.383 WHERE entry = 37;