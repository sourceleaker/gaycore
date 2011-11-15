ALTER TABLE `world_db_version` CHANGE  `required_31_undead_assault_on_the_rotbrain_encampment` `required_32_broyk_faction`  BIT(1);
-- Change Broyk (ID: 34510) faction to good --
UPDATE `creature_template` SET `faction_A` = '29', `faction_H` = '29' WHERE `entry` =34510;
