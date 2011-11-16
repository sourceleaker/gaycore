ALTER TABLE `world_db_version` CHANGE  `required_81_Amidst_Death_Life` `required_82_Sanitron500_SomeStuffe`  BIT(1);

UPDATE `creature_template` SET `npcflag`='16777216', `InhabitType`='4', `ScriptName`='npc_sanitron500' WHERE (`entry`='46185');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`='46185';
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('46185', '86106', '27635', '1', '27635', '1');
 
UPDATE `creature` SET `spawntimesecs`='30' WHERE id = 46185;

UPDATE `creature_template` SET `dynamicflags`='8' WHERE (`entry`='44171');
UPDATE `quest_template` SET `QuestFlags`='524288' WHERE (`entry`='26205');
DELETE FROM `creature_questrelation` WHERE (`id`='42563');
UPDATE `quest_template` SET `QuestFlags`= QuestFlags | 262144 WHERE entry IN(26197, 26199, 26202, 26203, 26206);
UPDATE `creature_template` SET `VehicleId`='1186' WHERE (`entry`='46449');
UPDATE `creature_template` SET `VehicleId`='1160' WHERE (`entry`='46012');
UPDATE `creature_template` SET `VehicleId`='1172' WHERE (`entry`='46185');
UPDATE `creature_template` SET `ScriptName`='npc_toxicpool' WHERE (`entry`='42563');