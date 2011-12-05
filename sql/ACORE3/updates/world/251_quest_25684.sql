ALTER TABLE `world_db_version` CHANGE  `required_250_quest_racemask` `required_251_quest_25684` BIT(1); 

UPDATE `quest_template` SET `ReqCreatureOrGOId1`=-203181,`ReqCreatureOrGOId2`=-203180,`ReqCreatureOrGOCount1`=1,`ReqCreatureOrGOCount2`=1 WHERE `entry`=25684;

DELETE FROM `spell_target_position`  WHERE `id` IN (76897,76896);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(76896,0,-11363.1,-2716.96,13.588,5.21725),
(76897,0,-11456.8,-2634.28,3.912,2.91132);
