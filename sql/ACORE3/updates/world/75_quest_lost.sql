ALTER TABLE `world_db_version` CHANGE  `required_74_wolves_and_quest_protecing_our_own` `required_75_quest_lost`  BIT(1);

-- DELETE --
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 202264;

-- Quest relation for Ringo's Sack --
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
('202264', '24734');