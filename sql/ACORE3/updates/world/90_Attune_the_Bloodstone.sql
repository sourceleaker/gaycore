ALTER TABLE `world_db_version` CHANGE  `required_89_quest_26047` `required_90_Attune_the_Bloodstone`  BIT(1);

DELETE FROM spell_target_position WHERE id IN (78923,78924);
insert into `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values
(78923,0,-11217.9,-3504.9,7.837,1.71435),
(78924,0,-11314.7,-3442.4,7.4682,6.06764);

UPDATE `quest_template` SET `ReqCreatureOrGOId1`=-203753,`ReqCreatureOrGOId2`=-203752,`ReqCreatureOrGOCount1`=1,`ReqCreatureOrGOCount2`=1 WHERE `entry` in (26158,25684);