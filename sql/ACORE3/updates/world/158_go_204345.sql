ALTER TABLE `world_db_version` CHANGE  `required_157_npc_Icy_Tomb` `required_158_go_204345`  BIT(1);

DELETE FROM `gameobject` WHERE `id`=204345;
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'204345','0','1','1','-9459.37','-1902.44','82.4646','4.2038','0','0','0.862249','-0.506484','300','100','1');
