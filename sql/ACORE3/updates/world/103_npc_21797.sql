ALTER TABLE `world_db_version` CHANGE  `required_102_quest_26187` `required_103_npc_21797`  BIT(1);

-- Ancient Shadowmoon Spirit quests (by Bastek)
UPDATE quest_template SET NextQuestId = 10635 WHERE entry = 10634;
UPDATE quest_template SET NextQuestId = 10636, PrevQuestId = 10634 WHERE entry = 10635;
UPDATE quest_template SET NextQuestId = 10637, PrevQuestId = 10635 WHERE entry = 10636;
UPDATE quest_template SET RequiredRaces = 690 WHERE entry = 10639;
UPDATE quest_template SET RequiredRaces = 1101 WHERE entry = 10645;