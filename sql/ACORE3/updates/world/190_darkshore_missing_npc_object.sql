ALTER TABLE `world_db_version` CHANGE  `required_189_darkshore_missing_npc_object` `required_190_darkshore_missing_npc_object`  BIT(1);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=10490;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('10490', '0', '0', 'Ancient Onu, where may I find a Seed of the Earth?', '1', '1', '10492', '0', '0', '0', '0', NULL);

DELETE FROM `gossip_menu` WHERE `entry` IN (10490,10492);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
('10490', '14517'),
('10492', '14518');

DELETE FROM `npc_text` WHERE `ID` in (14517,14518);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES 
(14517, 'Be still, little one, and you can hear this ancient land speak. It cries out in pain.', '',0,1,0,1,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0),
(14518, 'Hum, hrm. A powerful reagent for one so young. You will kill many foes in the name of your Alliance, but it is important to remember that in the great cycle, birth is as powerful as death.$B$B<Onu slowly reaches up to his head and withdraws an inconspicuous acorn. He lowers his arm to you with unhurried calm.>$B$BThis is extremely potent.$B$B...I apologize, I did not wish that to sound like a boast.', '',0,1,0,1,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0, '', '',0,0,0,0,0,0,0,0);

UPDATE `creature_template` SET `gossip_menu_id`='10490',`npcflag` = `npcflag`|'1',`AIName` = 'SmartAI' WHERE `entry`='33072';

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=33072;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(33072,0,0,0,62,0,100,0,10490,0,0,0,85,65154,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Onu - On gossip option select - Cast Create Seed of Earth');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10490;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10490,0,0,9,13882,0,0,0,'','Show gossip 10490 if player has Quest 13882');

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=34306;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=34306;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(34306,65125,13882,1,13882,3,0,0,0),
(34306,65127,13882,1,13882,0,0,0,0);

INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(65127,0,0,18,0,0,0,0,0,0,0);

delete from `gameobject_template` WHERE `entry`=195021;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `iconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`) values
('195021','3','261','Glittering Shell','','Opening','','43','27237','0','1','0','0','0','195061','0','0','0','0','0','0','21400','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0.45','46356','0','0','0','0','0');

DELETE FROM `gameobject` WHERE `id`=195021;
INSERT INTO `gameobject`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(NULL,195021,1,1,1,4851.218,519.6476,2.057607,5.131269,0,0,-0.5446386,0.8386708,60,100,1),
(NULL,195021,1,1,1,4910.695,608.5903,-2.852983,5.131269,0,0,-0.5446386,0.8386708,60,100,1),
(NULL,195021,1,1,1,4808.587,556.342,-0.256296,5.131269,0,0,-0.5446386,0.8386708,60,100,1),
(NULL,195021,1,1,1,4815.939,636.1059,-1.980851,5.131269,0,0,-0.5446386,0.8386708,60,100,1),
(NULL,195021,1,1,1,4948.48,679.0243,-13.81849,2.059488,0,0,0.8571672,0.5150382,60,100,1),
(NULL,195021,1,1,1,4757.76,574.2257,0.690481,3.525572,0,0,-0.9816265,0.1908124,60,100,1),
(NULL,195021,1,1,1,4778.524,519.8646,6.181726,4.834563,0,0,-0.6626196,0.7489561,60,100,1),
(NULL,195021,1,1,1,4967.363,514.0035,6.102762,6.0912,0,0,-0.09584522,0.9953963,60,100,1),
(NULL,195021,1,1,1,5015.964,560.9097,1.225466,5.899214,0,0,-0.1908083,0.9816273,60,100,1),
(NULL,195021,1,1,1,4543.027,673.5035,4.871236,4.694937,0,0,-0.7132502,0.7009096,60,100,1),
(NULL,195021,1,1,1,4643.992,696.3611,5.8778,0.3665176,0,0,0.1822348,0.983255,60,100,1),
(NULL,195021,1,1,1,4631.862,733.9583,-2.002156,5.131269,0,0,-0.5446386,0.8386708,60,100,1);

delete from `gameobject_loot_template` WHERE `entry`=27237;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('27237','46356','-100','1','0','1','1');

UPDATE `creature` SET `MovementType`=1,`spawndist`=15 WHERE `id`=34306;