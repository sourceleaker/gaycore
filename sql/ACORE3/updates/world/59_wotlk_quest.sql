ALTER TABLE `world_db_version` CHANGE  `required_58_wotlk_minor_fixes` `required_59_wotlk_quest`  BIT(1);
--
-- DB/Quest: Fix quest "Rejek: First Blood" (12734)
--

-- DELETE --
DELETE FROM creature_ai_scripts WHERE creature_id IN (28086,28096,28109,28110);
DELETE FROM smart_scripts WHERE entryorguid IN (28086, 28096, 28109, 28110);

-- Update creature_template --
UPDATE creature_template SET AIName='SmartAI' WHERE entry IN (28086,28096,28109,28110);

-- SAI --
INSERT INTO smart_scripts (entryorguid, source_type, id, event_type, event_chance, event_param1, event_param3, event_param4, action_type, action_param1, target_type, comment) VALUES
(28086, 0, 1, 8, 100, 52992, 60000, 60000, 33, 28040, 7, 'Blade blooded on Sapphire Hive Wasp  c28086 - KC 28040 - q12734'),
(28096, 0, 1, 8, 100, 52992, 60000, 60000, 33, 36189, 7, 'Blade blooded on Hardknuckle Charger c28096 - KC 28046 - q12734'),
(28109, 0, 1, 8, 100, 52992, 60000, 60000, 33, 29043, 7, 'Blade blooded on Mistwhisper members c28109 - KC 29043 - q12734'),
(28110, 0, 1, 8, 100, 52992, 60000, 60000, 33, 29043, 7, 'Blade blooded on Mistwhisper members c28110 - KC 29043 - q12734');
