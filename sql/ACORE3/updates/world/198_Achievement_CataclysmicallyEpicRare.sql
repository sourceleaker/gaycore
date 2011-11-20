ALTER TABLE `world_db_version` CHANGE  `required_197_World_Spell_Proc_Chance_Trinket_1` `required_198_Achievement_CataclysmicallyEpicRare`  BIT(1);

DELETE FROM `achievement_criteria_data` WHERE criteria_id BETWEEN 15346 AND 15361;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
(15346, 19, 333, 3),
(15347, 19, 333, 3),
(15348, 19, 333, 3),
(15349, 19, 333, 3),
(15350, 19, 333, 3),
(15351, 19, 333, 3),
(15352, 19, 333, 3),
(15353, 19, 333, 3),
(15354, 19, 333, 3),
(15355, 19, 333, 3),
(15356, 19, 333, 3),
(15357, 19, 333, 3),
(15358, 19, 333, 3),
(15359, 19, 333, 3),
(15360, 19, 333, 3),
(15361, 19, 333, 3);

DELETE FROM `achievement_criteria_data` WHERE criteria_id BETWEEN 15330 AND 15345;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
(15330, 19, 359, 4),
(15331, 19, 359, 4),
(15332, 19, 359, 4),
(15333, 19, 359, 4),
(15334, 19, 359, 4),
(15335, 19, 359, 4),
(15336, 19, 359, 4),
(15337, 19, 359, 4),
(15338, 19, 359, 4),
(15339, 19, 359, 4),
(15340, 19, 359, 4),
(15341, 19, 359, 4),
(15342, 19, 359, 4),
(15343, 19, 359, 4),
(15344, 19, 359, 4),
(15345, 19, 359, 4);