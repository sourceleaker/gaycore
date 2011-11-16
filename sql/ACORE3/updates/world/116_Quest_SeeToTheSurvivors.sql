ALTER TABLE `world_db_version` CHANGE  `required_115_The_Rod_of_Lianthe` `required_116_Quest_SeeToTheSurvivors`  BIT(1);

UPDATE `creature` SET `spawntimesecs` = '30' WHERE id = 33024;
DELETE FROM `spell_scripts` WHERE `id` = '86264' AND `command` = '18';
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('86264', '18', '1000');
DELETE FROM `conditions` WHERE `SourceEntry` = 86264 AND `ConditionValue1` = '46268';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('17', '86264', '19', '46268');

