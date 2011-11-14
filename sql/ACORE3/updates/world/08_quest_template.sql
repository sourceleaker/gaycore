ALTER TABLE `world_db_version` CHANGE `required_07_quest_template` `required_08_quest_template` BIT(1);

/*
                More Than Expected (24781, 24787, 26277, 24775, 24769, 24755, 24763, 24643)
                                                                                |
                                                                --------------------------------- (Can get both)
                                                                |                                                               |
                                                        Moraya (25064)                          Crab fishin (25037)
                                                                |
                                                        A Troll's Trues Companion (24622)
                                                                                |
                                        ------------------------------------------------- (Can get all)
                                        |                               |                                       |
Consort of Seawitch (24625)        Saving the young (24623)                     Mercy for the lost (24624)
                                        |                       |                                       |
                                        ------------------------------------------------- (All required)
                                                                                |
                                                                Young and vicious (24626)
                                                                                |
                                                                Breaking the line (25035)
                                                                                |
                                                        ------------------------- (Can get all)
                                                        |                               |
                                        No more mercy (24812)           Territorial Fetish (24813)
                                                        |                                               |
                                                        ------------------------- (All required)
                                                                                |
                                                                An Ancient Enemy (24814)
                                                                                |
                                                                Sen'Jin Village (25073)
*/
UPDATE quest_template SET NextQuestId = 25037, ExclusiveGroup = 0, NextQuestInChain = 25064 WHERE entry IN (24781, 24787, 26277, 24775, 24769, 24755, 24763, 24643);
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 24622 WHERE entry IN (25064);
UPDATE quest_template SET NextQuestId = 0 WHERE entry IN (24622);
UPDATE quest_template SET PrevQuestId = 24622, NextQuestId = 24626, ExclusiveGroup = -24623 WHERE entry IN (24623, 24624, 24625);
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 25035 WHERE entry IN (24626);
UPDATE quest_template SET PrevQuestId = 25035, ExclusiveGroup = -24812, NextQuestId = 24814 WHERE entry IN (24812, 24813);
UPDATE quest_template SET PrevQuestId = 0, ExclusiveGroup = 0, NextQuestId = 25073 WHERE entry IN (24814);