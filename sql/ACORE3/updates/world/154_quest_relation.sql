ALTER TABLE `world_db_version` CHANGE  `required_153_q_25905` `required_154_quest_relation`  BIT(1);

-- Add quest relation to GO at Loch Modan (by Bastek)
DELETE FROM gameobject_questrelation WHERE id IN (194387,194378,194388,194389,194391,194390);
INSERT INTO gameobject_questrelation VALUES
(194387, 13656), -- Explorers' League Document (1 of 6)
(194378, 13655), -- Explorers' League Document (2 of 6)
(194388, 13657), -- Explorers' League Document (3 of 6)
(194389, 13658), -- Explorers' League Document (4 of 6)
(194391, 13660), -- Explorers' League Document (5 of 6)
(194390, 13659); -- Explorers' League Document (6 of 6)
