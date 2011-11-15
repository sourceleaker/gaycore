ALTER TABLE `world_db_version` CHANGE  `required_47_reature_worgen_infiltrators_and_quests_with_them` `required_48_world_npc_34512`  BIT(1);

UPDATE `creature_template` SET `minlevel`=31, `maxlevel`=31 WHERE entry = 34512;
delete from `creature` WHERE id = 34512;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('34512','1','1','1','0','0','2492.99','-1300.67','134.88','4.58506','300','0','0','1006','0','0','0','0','0','0');
