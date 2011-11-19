ALTER TABLE `world_db_version` CHANGE  `required_174_q_27409` `required_175_dk_minor_fixes`  BIT(1);

DELETE FROM creature_questrelation WHERE quest=12779  AND id=25462;
DELETE FROM creature_involvedrelation WHERE quest=12779 AND id =25462;

DELETE FROM creature_questrelation WHERE quest=12779 AND id=29110;
INSERT INTO creature_questrelation VALUES
('29110', '12779');

DELETE FROM creature_involvedrelation WHERE quest=12779 AND id=29110;
INSERT INTO creature_involvedrelation VALUES
('29110', '12779');

UPDATE creature_template SET npcflag=3 WHERE entry IN(29110,31082);

DELETE FROM creature_questrelation WHERE quest=12800 AND id=29110;
INSERT INTO creature_questrelation VALUES
('29110' , '12800');

UPDATE creature_loot_template SET ChanceOrQuestChance='100' WHERE item=39328;
UPDATE quest_template SET questflags=8328, SpecialFlags=1 WHERE entry=12718;

UPDATE quest_template SET SpecialFlags=2 WHERE entry = 12801;
