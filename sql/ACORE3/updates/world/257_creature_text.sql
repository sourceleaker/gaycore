ALTER TABLE `world_db_version` CHANGE `required_256_druid_fixes` `required_257_creature_text` BIT(1); 

UPDATE `creature_text` SET `type`=12 WHERE `type`=0; -- say
UPDATE `creature_text` SET `type`=14 WHERE `type`=1; -- yell
UPDATE `creature_text` SET `type`=16 WHERE `type`=2; -- emote
UPDATE `creature_text` SET `type`=41 WHERE `type`=3; -- Boss Emote
UPDATE `creature_text` SET `type`=15 WHERE `type`=4; -- Whisper
UPDATE `creature_text` SET `type`=42 WHERE `type`=5; -- Boss Whisper