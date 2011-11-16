ALTER TABLE `world_db_version` CHANGE  `required_139_Gart_Mistrunner` `required_140_kajachunk`  BIT(1);

DELETE FROM gameobject_loot_template WHERE item=48766;
INSERT INTO gameobject_loot_template VALUES
('195492', '48766', '-100', '1', '0', '1', '1');

UPDATE creature_template SET ScriptName='npc_deffiant_troll' WHERE entry=34830;


DELETE FROM script_texts WHERE npc_entry=34830;
INSERT INTO script_texts (npc_entry, entry, content_default, COMMENT)VALUES
('34830', '-1799990', 'Sorry, mon. It won\'t happen again.', 'defiant_troll_1'),
('34830', '-1799991', 'Ooops, break\'s over.', 'defiant_troll_2'),
('34830', '-1799992', 'Work was bettah in da Undermine!', 'defiant_troll_3'),
('34830', '-1799993', 'I report you to HR!', 'defiant_troll_4'),
('34830', '-1799994', 'I\'m going. I\'m going!', 'defiant_troll_5');

UPDATE creature_template SET npcflag=1 WHERE entry=34830;