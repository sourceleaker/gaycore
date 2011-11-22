ALTER TABLE `world_db_version` CHANGE  `required_214_quest_24928` `required_215_Winterspring_zonefix`  BIT(1);

DELETE FROM creature_loot_template WHERE item=21383;
INSERT INTO creature_loot_template VALUES
('7439', '21383', '59', '1', '0', '1', '1'),
('7438', '21383', '58', '1', '0', '1', '1'),
('7442', '21383', '54', '1', '0', '1', '1'),
('7440', '21383', '54', '1', '0', '1', '1'),
('7441', '21383', '53', '1', '0', '1', '1'),
('10916', '21383', '48', '1', '0', '1', '1'),
('10738', '21383', '27', '1', '0', '1', '1');

DELETE FROM creature_loot_template WHERE item=64353;
INSERT INTO creature_loot_template VALUES
('10916', '64353', '6', '1', '0', '1', '1'),
('7440', '64353', '5', '1', '0', '1', '1'),
('7441', '64353', '3', '1', '0', '1', '1'),
('7438', '64353', '2', '1', '0', '1', '1'),
('7439', '64353', '2', '1', '0', '1', '1'),
('7442', '64353', '1', '1', '0', '1', '1');

DELETE FROM gameobject_questrelation WHERE quest=28467;
INSERT INTO gameobject_questrelation VALUES
('176091', '28467'),
('207179', '28467');

UPDATE quest_template SET PrevQuestId=28464 WHERE entry=28467;
UPDATE quest_template SET ReqCreatureOrGOId1=48586,ReqCreatureOrGOId2=0,ReqCreatureOrGOId3=0,ReqCreatureOrGOId4=0 WHERE entry=28460;
UPDATE creature_template SET KillCredit1= 48586 WHERE entry IN(7440,7441,7442,10916);

DELETE FROM creature_involvedrelation WHERE quest=28462 AND id=9298;
INSERT INTO creature_involvedrelation VALUES
('9298', '28462');

DELETE FROM gameobject_involvedrelation WHERE quest=28464 AND id=207179;
INSERT INTO gameobject_involvedrelation VALUES
('207179', '28464');

UPDATE creature_loot_template SET ChanceOrQuestChance='100' WHERE item=12842;

DELETE FROM spell_area WHERE spell IN(60922,49416,94569) AND AREA=2251;
INSERT INTO spell_area (spell, AREA, quest_start, quest_start_active, quest_end, aura_spell, racemask, gender, autocast)VALUES
('60922', '2251', '28479', '1', '28536', '0', '0', '2', '1'),
('49416', '2251', '28534', '1', '28515', '0', '0', '2', '1'),
('94569', '2251', '28535', '1', '28848', '0', '0', '2', '1');

UPDATE creature_template SET npcflag=3 WHERE entry IN(48658,48659);

DELETE FROM creature_questrelation WHERE quest=28534;
INSERT INTO creature_questrelation VALUES
('48658', '28534');

UPDATE creature_template SET minlevel=53,maxlevel=53 WHERE entry IN(48659,48660);

DELETE FROM creature_template_addon WHERE entry IN(48659,48660);
INSERT INTO creature_template_addon VALUES
('48659', '0', '0', '65536', '1', '0', '49415 0 91218 0'),
('48660', '0', '0', '65536', '1', '0', '78718 0 91218 0');

DELETE FROM creature WHERE id IN(48659,48660);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48659','1','1','1','0','0','6533.77','-4116.12','664.129','1.03314','300','0','0','42','0','0','0','0','0','0'),
('48660','1','1','1','0','0','6533.57','-4108.27','662.441','6.15394','300','0','0','42','0','0','0','0','0','0');

UPDATE creature_template SET minlevel=51,maxlevel=52,faction_A=14,faction_H=14 WHERE entry=48678;

DELETE FROM creature WHERE id=48678;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48678','1','1','1','0','0','6185.12','-4113.01','748.25','0.002707','60','0','0','4584','0','0','0','0','0','0');

DELETE FROM gameobject WHERE id=175927;

UPDATE quest_template SET RequestItemsText='You must\'ve done something really bad to us or our friends, $N. At any rate, I\'m here to offer you a way to get our good graces back.\n
As you know, Winterspring is quite cold. With so many of us goblins coming from other cities, we could use a hand keeping warm. Bring me some runecloth and coal and I\'ll put in the good word for ya. Be warned though, our enemies are not going to take kindly to your helping us. ' WHERE entry=9266;
UPDATE creature_template SET ScriptName='npc_kilram' WHERE entry=11192;
UPDATE creature_template SET VehicleId=622, Inhabittype=4, ScriptName='npc_icicle_winterspring' WHERE entry=48916;
UPDATE gameobject_template SET ScriptName='go_echo_three' WHERE entry=207291;

DELETE FROM creature_template_addon WHERE entry = 48916;
INSERT INTO creature_template_addon VALUES
('48916', '0', '0', '33554432 ', '1', '0', '91686 0');

UPDATE creature_template SET minlevel=50,maxlevel=50,faction_A=14,faction_H=14,ScriptName='ice_yeti_ambusher' WHERE entry=48905;

DELETE FROM spell_target_position WHERE id=91178;
INSERT INTO spell_target_position VALUES
('91178' ,'1', '6745.46', '-5274.42', '761.20', '1.12');

DELETE FROM creature WHERE id=48916;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48916','1','1','1','0','0','6747.16','-5273.86','761.451','1.72868','300','0','0','42','0','0','0','0','0','0'),
('48916','1','1','1','0','0','6752.63','-5279.87','761.828','3.81394','300','0','0','42','0','0','0','0','0','0');

UPDATE quest_template SET RewSpellCast=0 WHERE entry=28630;

UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE entry=49235 AND item=64664;
UPDATE creature_template SET AIName='SmartAI' WHERE entry=49233;

DELETE FROM `smart_scripts` WHERE entryorguid=49233;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(49233,0,0,0,6,0,100,0,0,0,0,0,11,91850,0,0,0,0,0,7,0,0,0,0,0,0,0,'Solid Icicle gives q item on dead');

UPDATE creature_template SET AIName='SmartAI' WHERE entry=10978;

DELETE FROM `smart_scripts` WHERE entryorguid=10978;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(10978,0,0,0,8,0,100,0,17166,0,0,0,33,10978,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scare Legacki gives credit');

UPDATE quest_template SET RequestItemsText='Are they perfect? They better be perfect!', OfferRewardText='I can\'t wait to show my friends! Now, just wait a moment while I attach these...\n
Perfect!' WHERE entry=28631;

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=17166;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
('13', '0', '17166', '0', '18', '1', '10978', '0', '0', '0', 'Target Legacki with Spell');

UPDATE creature_template SET ScriptName='npc_seril' WHERE entry=11193;

UPDATE quest_template SET QuestFlags=8 WHERE entry=28838;

DELETE FROM creature WHERE id = 50263;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('50263','1','1','1','0','0','5737.38','-4785.8','775.008','1.37209','120','0','0','42','0','0','0','0','0','0');

DELETE FROM creature_template_addon WHERE entry = 50263;
INSERT INTO creature_template_addon VALUES
('50263', '0', '0', '65536', '1', '0', '81238 0');

UPDATE creature_template SET npcflag=3 WHERE entry=50263;
UPDATE creature_template SET KillCredit1=7452 WHERE entry IN(7453,7454);

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=93392;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
('13', '0', '93392', '0', '18', '1', '50291', '0', '0', '0', 'Target Arcane Tesseract with Spell');

UPDATE creature_template SET AIName='SmartAI' WHERE entry=50291;

DELETE FROM `smart_scripts` WHERE entryorguid=50291;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(50291,0,0,0,8,0,100,0,93392,0,0,0,33,50291,0,0,0,0,0,7,0,0,0,0,0,0,0,'Arcane Tesseract gives credit'),
(50291,0,1,0,8,0,100,0,93392,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arcane Tesseract Despawn');

UPDATE quest_template SET PrevQuestId=28710,NextQuestInChain=28640 WHERE entry=28718;
UPDATE quest_template SET PrevQuestId=28718,NextQuestInChain=28641,QuestFlags=8 WHERE entry=28718;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28641;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28638;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28745;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28637;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28719;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28640;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28742;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28639;
UPDATE quest_template SET QuestFlags=8 WHERE entry=28782;

DELETE FROM creature_involvedrelation WHERE quest=28638;
INSERT INTO creature_involvedrelation VALUES
('49537', '28638');

DELETE FROM creature_involvedrelation WHERE quest=28745;
INSERT INTO creature_involvedrelation VALUES
('49537', '28745');

DELETE FROM creature_involvedrelation WHERE quest=28782;
INSERT INTO creature_involvedrelation VALUES
('49537', '28782');

DELETE FROM creature_questrelation WHERE quest=28745;
INSERT INTO creature_questrelation VALUES
('49537', '28745');

DELETE FROM creature_questrelation WHERE quest=28782;
INSERT INTO creature_questrelation VALUES
('49537', '28782');

UPDATE creature_template SET npcflag=0 WHERE entry=7456;

DELETE FROM creature WHERE id =10806;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('10806','1','1','1','0','0','-7121.27','-4663.79','638.67','1.55504','120','0','0','3374','0','0','0','0','0','0');