ALTER TABLE `world_db_version` CHANGE  `required_64_Stomp_To_My_Beat` `required_65_Faces_of_Evil`  BIT(1);

UPDATE `creature_template` SET`InhabitType`=5 WHERE `entry` in (42704);
UPDATE `item_template` SET `ScriptName`='item_tiki_torch' WHERE `entry`=58209;