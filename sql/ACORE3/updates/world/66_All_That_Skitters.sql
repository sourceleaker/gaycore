ALTER TABLE `world_db_version` CHANGE  `required_65_Faces_of_Evil` `required_66_All_That_Skitters`  BIT(1);

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=42689;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42689;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(42689,79591,26310,1,26310,3,0,0,0),
(42689,79588,26310,1,26310,1,0,0,0),
(42689,79591,26523,1,26523,3,0,0,0),
(42689,79588,26523,1,26523,1,0,0,0);


INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(79588,0,0,18,0,0,0,0,0,0,0);