ALTER TABLE `world_db_version` CHANGE `required_253_searing_gorge` `required_256_druid_fixes` BIT(1); 

-- Lacerate Coefs
UPDATE spell_bonus_data SET ap_bonus = 0.0766, ap_dot_bonus = 0.00512 WHERE entry = 33745;

-- Maul Coefs
INSERT INTO spell_bonus_data VALUES (6807, 0.264, 0, 0, 0, "Druid - Maul (Patch4.0.6 - $AP*26.4%)");

-- Thrash Coefs
INSERT INTO spell_bonus_data VALUES (77758, 0, 0, 0.1, 0.017, 'Druid - Thrash');

-- Primal Madness and Tiger Fury spell_link
INSERT INTO spell_linked_spell VALUES
(-5217, -80879, 0, 'Primal Madness Rank 1 - Tigers Fury'),
(-5217, -80886, 0, 'Primal Madness Rank 2 - Tigers Fury');