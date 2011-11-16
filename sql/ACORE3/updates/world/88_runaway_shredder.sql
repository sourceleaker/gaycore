ALTER TABLE `world_db_version` CHANGE  `required_86_World_Quest_13526` `required_88_runaway_shredder`  BIT(1);

UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry`='14129';


UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry` IN (35111,35129);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (35111,35129);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(35111,66778,0,0,0,2,0,0,0),
(35129,66787,0,1,0,2,0,0,0);

DELETE FROM `spell_scripts` WHERE `id`=66778;
INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(66778,1,0,18,0,0,0,0,0,0,0),
(66778,1,0,8,35111,0,0,0,0,0,0);

UPDATE `creature_template` SET `ScriptName` = 'npc_runaway_shredder' WHERE `entry` = 35111;
UPDATE `creature_template` SET `VehicleId`=49, `spell1`=66811,`spell2`=66868,`spell3`=66893,`spell4`=66937,`minlevel`=11,`maxlevel`=11 WHERE `entry`=35129;
