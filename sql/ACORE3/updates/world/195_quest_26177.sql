ALTER TABLE `world_db_version` CHANGE  `required_194_Shaman_Trainer_Stormwind` `required_195_quest_26177`  BIT(1);

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=42339;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42339;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(42339,78975,26177,1,26177,3,0,0,0),
(42339,78974,26177,1,26177,0,0,0,0);

INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(78974,0,0,18,0,0,0,0,0,0,0);