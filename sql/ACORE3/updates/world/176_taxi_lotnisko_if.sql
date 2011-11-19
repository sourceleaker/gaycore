ALTER TABLE `world_db_version` CHANGE  `required_175_dk_minor_fixes` `required_176_taxi_lotnisko_if`  BIT(1);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=41848;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41848;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(41848,78025,25998,1,0,1,0,0,0);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=42175;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42175;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(42175,78680,25998,1,0,1,0,0,0);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=42092;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42092;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(42092,78510,26094,1,26094,1,0,0,0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=78499 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,78499,18,0,1,42003,0,0,'Iron Hammer Bomb must hit Dark Iron Golem'),
(13,0,78499,18,0,1,41924,0,0,'Iron Hammer Bomb must hit Dark Iron Invader'),
(13,0,78499,18,0,1,42012,0,0,'Iron Hammer Bomb must hit Dark Iron Invader'),
(13,0,78499,18,0,1,41902,0,0,'Iron Hammer Bomb must hit Dark Iron Pyromancer');