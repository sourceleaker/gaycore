ALTER TABLE `world_db_version` CHANGE  `required_158_go_204345` `required_159_Fixy_brakujace`  BIT(1);

UPDATE creature_template SET ScriptName='npc_crate_mine' WHERE entry=42500;

DELETE FROM gameobject WHERE id=3001672;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('3001672','0','1','1','-9842.87','1395.26','37.4207','3.34131','0','0','0.995018','-0.0996913','300','0','1');

UPDATE creature_template SET ScriptName='npc_thug' WHERE entry=42562;

DELETE FROM creature WHERE guid IN(305227,305784,305923,304853,62836,89773,305936,304861,253361);

UPDATE creature_template_addon SET auras ='54503 0 81238 0' WHERE entry = 42560;
UPDATE creature_template_addon SET auras ='54503 0 68442 0' WHERE entry = 42558;
UPDATE creature_template_addon SET auras ='81238 0' WHERE entry = 238;
UPDATE creature_template_addon SET auras ='81238 0' WHERE entry = 582;

DELETE FROM creature WHERE id IN(42560,42558,582);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('42558','0','1','1','0','0','-9860.55','1274.1','40.7224','0.704305','300','0','0','126','0','0','0','0','0','0'),
('42560','0','1','1','0','0','-9858.42','1275.48','40.8294','2.22405','300','0','0','42','0','0','0','0','0','0'),
('582','0','1','1','0','582','-9852.08','909.974','29.9337','0.509507','300','0','0','55','0','0','0','0','0','0');


UPDATE creature SET modelid=15435 WHERE id=45561;
UPDATE creature_template SET modelid1=15435,modelid2=0 WHERE entry=45561;

