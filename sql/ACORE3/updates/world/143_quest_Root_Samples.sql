ALTER TABLE `world_db_version` CHANGE  `required_142_quest_24750` `required_143_quest_Root_Samples`  BIT(1);

-- Fix for quest Root Samples (by Bastek)
UPDATE quest_template SET SkillOrClassMask = 182 WHERE entry = 866;