ALTER TABLE `world_db_version` CHANGE  `required_08_quest_template` `required_11_troll_start_quest`  BIT(1);
-- Warlock
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (26273, 26274, 26275, 26276, 26277);
-- Warrior
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24639, 24640, 24641, 24642, 24643);
-- Mage
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24751, 24752, 24753, 24754, 24755);
-- Shaman
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24761, 24763, 24762, 24760, 24759);
-- Rogue
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24772, 24773, 24774, 24775, 24771);
-- Hunter
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24777, 24778, 24779, 24780, 24781);
-- Priest
UPDATE quest_template SET RequiredRaces=128 WHERE entry IN (24783, 24784, 24785, 24786, 24787);


UPDATE quest_template SET StartScript=24607 WHERE entry IN (24607, 24750, 24758, 24764, 24770, 26272, 24776, 24782);

DELETE FROM `quest_start_scripts` WHERE id = 24607;
INSERT INTO `quest_start_scripts` (id, delay, command, datalong, dataint) VALUES
(24607, 0, 0, 12, 2000000050);

DELETE FROM `db_script_string` WHERE `entry` = 2000000050;
INSERT INTO `db_script_string` (entry, content_default) VALUES
(2000000050, "Bektroz. Zuni. Ya'll find ya trainer in the trainin' grounds to the east. Bring pride to the Darkspear.");

-- Tiki Target
UPDATE creature_template SET minlevel = 1, maxlevel = 1, Health_mod = 42, unit_flags = unit_flags | 4, AIName = '', ScriptName = 'npc_tiki_target' WHERE entry = 38038;
UPDATE creature SET spawnMask = 15, spawntimesecs = 6, spawndist = 0, MovementType = 0 WHERE id = 38038;

UPDATE creature_template SET ScriptName = 'npc_jailor' where entry = 39062;
UPDATE gameobject_template SET flags = 4 where entry = 201968;