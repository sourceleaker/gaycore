ALTER TABLE `world_db_version` CHANGE  `required_242_instance_hoo` `required_243_Fix_for_quest_Eliminate_the_Outcast` BIT(1);

-- Fix for quest Eliminate the Outcast (by Cumbi)

UPDATE quest_template SET ReqCreatureOrGOId1 = 43245 WHERE entry = 26551;