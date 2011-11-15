ALTER TABLE `world_db_version` CHANGE  `required_67_The_Eye_of_Shadra` `required_68_The_Shell_of_Shadra`  BIT(1);

UPDATE `creature` SET `id`=42919 WHERE `id`=7996;
UPDATE `creature_template` SET `minlevel`=34,`maxlevel`=34,`faction_A`=14,`faction_H`=14,`mindmg`=75,`maxdmg`=125,`attackpower`=50,`dmg_multiplier`=1.5 WHERE `entry`=42919;