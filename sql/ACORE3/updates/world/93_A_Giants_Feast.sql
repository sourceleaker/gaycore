ALTER TABLE `world_db_version` CHANGE  `required_92_False_Idols` `required_93_A_Giants_Feast`  BIT(1);

DELETE FROM npc_vendor WHERE item IN (59036,59037);
insert into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) values
(2664,0,59036,0,0,0),
(2491,0,59037,0,0,0);
