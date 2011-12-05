ALTER TABLE `world_db_version` CHANGE  `required_243_Fix_for_quest_Eliminate_the_Outcast` `required_246_quest_28415` BIT(1); 

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry`=48671;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48671;
INSERT INTO `npc_spellclick_spells` VALUES
(48671,90672,28415,1,28415,3,0,0,0),
(48671,79588,28415,1,28415,1,0,0,0);

DELETE FROM `spell_scripts` WHERE `id`=79588;
INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(79588,0,0,18,0,0,0,0,0,0,0);