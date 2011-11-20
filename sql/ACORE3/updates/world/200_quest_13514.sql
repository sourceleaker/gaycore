ALTER TABLE `world_db_version` CHANGE  `required_199_Fix_for_quest_Rock_Lobster` `required_200_quest_13514`  BIT(1);

update `creature_template` set `spell1`=62246,`spell2`=63996,`VehicleId`=50,`minlevel`=20,`maxlevel`=20 where `entry`=32851;

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry` in (32851,43742);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` in (32851,43742);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(43742,64602,13514,1,13514,2,0,0,0),
(32851,98843,13514,1,13514,1,0,0,0);

UPDATE `creature_template` SET `ScriptName`='npc_shattertusk_trigger',`unit_flags`=0,`flags_extra`=130 WHERE `entry`=33913;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=63996 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,63996,18,0,1,33913,0,0,'');

DELETE FROM `creature` WHERE `id` in (11196,10919);