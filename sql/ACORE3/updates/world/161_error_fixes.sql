ALTER TABLE `world_db_version` CHANGE  `required_160_minor_fixess` `required_161_error_fixes`  BIT(1);

UPDATE quest_template SET Method=2 WHERE entry IN(14069,14070,14071,14122);
DELETE FROM quest_template WHERE entry IN(28606,28607,14114);
DELETE FROM creature_involvedrelation WHERE quest IN(28606,28607);