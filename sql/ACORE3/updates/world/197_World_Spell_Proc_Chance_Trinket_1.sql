ALTER TABLE `world_db_version` CHANGE  `required_196_npc_Fleetfoot` `required_197_World_Spell_Proc_Chance_Trinket_1`  BIT(1);

DELETE FROM `spell_proc_event` WHERE `entry`=89086;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `CustomChance`) VALUES (89086, 1, 340, 3);
DELETE FROM `spell_proc_event` WHERE `entry`=89088;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `Cooldown`) VALUES (89088, 126, 65792, 45);