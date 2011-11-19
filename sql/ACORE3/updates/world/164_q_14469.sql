ALTER TABLE `world_db_version` CHANGE  `required_163_toxic_tolearnce` `required_164_q_14469`  BIT(1);

DELETE FROM `creature_template_addon` WHERE `entry`=36756;
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(36756,0,0,7,0,65, '');

DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id`=36756);

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=36756;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36756;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(36756,69261,14469,1,14469,3,0,0,0),
(36756,69262,14469,1,14469,1,0,0,0);

INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(69262,0,0,18,0,0,0,0,0,0,0);