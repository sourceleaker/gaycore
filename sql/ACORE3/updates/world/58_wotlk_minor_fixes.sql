ALTER TABLE `world_db_version` CHANGE  `required_56_quests_wotlk_ships` `required_58_wotlk_minor_fixes`  BIT(1);
--  Webbed Crusader - Fix Move --
UPDATE `creature_template` SET `unit_flags` = 131076 WHERE `entry` IN (30273,30268);

--  Primordial Drake Egg - Fix Move --
UPDATE `creature_template` SET `unit_flags` = 131076 WHERE `entry` = 28408;