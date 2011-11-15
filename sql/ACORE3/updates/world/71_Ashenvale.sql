ALTER TABLE `world_db_version` CHANGE  `required_69_Summoning_Shadra` `required_71_Ashenvale`  BIT(1);

DELETE FROM creature WHERE id IN(33266,33295,33294);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('266898','33266','1','1','1','4264','33266','1304.6','-2337.53','97.4691','4.15388','300','0','0','457','0','0','0','0','0','0'),
('265404','33266','1','1','1','4262','33266','1343.9','-2305.12','96.7345','4.93928','300','0','0','457','0','0','0','0','0','0'),
('6390860','33266','1','1','1','0','33266','1438.96','-2149.74','92.9147','4.50491','300','0','0','457','0','0','0','0','0','0'),
('288354','33266','1','1','1','4262','33266','1206.7','-2242.13','92.9735','0.034907','300','0','0','457','0','0','0','0','0','0'),
('6390859','33266','1','1','1','0','33266','1418.91','-2178.6','94.4519','2.10316','300','0','0','457','0','0','0','0','0','0'),
('290158','33266','1','1','1','4262','33266','1315.08','-2196.16','92.6446','4.15388','300','0','0','457','0','0','0','0','0','0'),
('290398','33266','1','1','1','4262','33266','1210.95','-2234.8','92.5723','4.95674','300','0','0','457','0','0','0','0','0','0'),
('290623','33266','1','1','1','4262','33266','1304.6','-2337.53','97.4691','4.15388','300','0','0','457','0','0','0','0','0','0'),
('290652','33266','1','1','1','4262','33266','1206.45','-2238.49','92.8922','0.034907','300','0','0','457','0','0','0','0','0','0'),
('6390861','33266','1','1','1','0','33266','1450.97','-2182.79','92.5565','1.31383','300','0','0','457','0','0','0','0','0','0'),
('6390862','33266','1','1','1','0','33266','1481.46','-2198.01','94.3634','4.23944','300','0','0','457','0','0','0','0','0','0'),
('6390865','33266','1','1','1','12166','33266','1466.97','-2265.23','91.9936','5.40576','300','0','0','457','0','0','0','0','0','0'),
('6390866','33266','1','1','1','0','33266','1316.01','-2269.35','91.6673','2.92782','300','0','0','457','0','0','0','0','0','0'),
('6390867','33266','1','1','1','12166','33266','1360.48','-2167.21','93.649','2.74326','300','0','0','457','0','0','0','0','0','0'),
('6390868','33266','1','1','1','12165','33266','1324.96','-2139.98','94.6022','0.614832','300','0','0','457','0','0','0','0','0','0'),
('6390869','33266','1','1','1','12166','33266','1408','-2123.87','93.6931','4.7853','300','0','0','457','0','0','0','0','0','0'),
('6390870','33266','1','1','1','0','33266','1394.82','-2060.81','94.4512','4.99342','300','0','0','457','0','0','0','0','0','0'),
('6390871','33294','1','1','1','0','0','1425.85','-1994.65','96.5976','1.79136','300','0','0','968','0','0','0','0','0','0'),
('6390872','33295','1','1','1','0','0','1411.18','-1991.22','96.6071','4.35568','300','0','0','1398','0','0','0','0','0','0'),
('6390873','33295','1','1','1','0','0','1409.08','-2004.56','95.6047','4.43422','300','0','0','1398','0','0','0','0','0','0'),
('6390874','33295','1','1','1','0','0','1415.7','-1973.52','97.0902','4.446','300','0','0','1398','0','0','0','0','0','0'),
('6390875','33295','1','1','1','0','0','1433.49','-1970.64','95.1858','4.30857','300','0','0','1398','0','0','0','0','0','0'),
('6390876','33295','1','1','1','0','0','1438.63','-2004.33','94.1335','5.29424','300','0','0','1398','0','0','0','0','0','0');

DELETE FROM script_texts WHERE npc_entry=33266;
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('33266', '-1934655', 'Death to the Alliance!', '0', 'SAY_SALVE_1'),
('33266', '-1934656', 'For the Horde!', '0', 'SAY_SALVE_2'),
('33266', '-1934657', 'Many thanks, $C!', '0', 'SAY_SALVE_3');

UPDATE quest_template SET RequestItemsText='Have you administered the salve to our fallen warriors, $R?', OfferRewardText='Thank you, $R. I shall include your service to the Horde in my report.\n
I should have these troops fit to fight again in no time! ' WHERE entry=13613;#Rescue the Fallen
UPDATE quest_template SET RequestItemsText='Have you collected the arrows we need, $C', OfferRewardText='Well done, $C.\n
This should help get us by until our shipment arrives. ' WHERE entry=13615;#Empty Quivers
UPDATE quest_template SET RequestItemsText='Was your hunt successful, $R?', OfferRewardText='Good work, $C!\n
Your efforts will help keep the enemy on their heels while our forces sweep across the land! ', PrevQuestId=28876 WHERE entry=13612;#Mor'shan Defense
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Listen carefully, $R....', PrevQuestId=0, NextQuestInChain=13619 WHERE entry=13618;#Find Gorat
UPDATE quest_template SET RequestItemsText='Did you find Gorat, $C?! ', OfferRewardText='<Kadrak listens intently as you share Gorat\'s last words.>\n
It is as I feared, then. May his rest be peaceful - only not yet! ', PrevQuestId=13618, NextQuestInChain=13620 WHERE entry=13619;#Final Report
UPDATE quest_template SET RequestItemsText='What have you there, $R? ', OfferRewardText='Let\'s have a look, $C. ', PrevQuestId=13619, NextQuestId=13621 WHERE entry=13620;
UPDATE quest_template SET RequestItemsText='Have you done your task?', OfferRewardText='Well done, $R.\n
The elf captain is dead and the soul of one of our beloved brethren can sleep in peace.\n
I shall pass on word of your deeds to my superiors in Orgrimmar. ', PrevQuestId=13620, NextQuestId=13628 WHERE entry=13621;#Gorat's Vengeance

DELETE FROM script_texts WHERE npc_entry=33304;
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('33304', '-1934658', 'Thank you, friend. I could not rest knowing that my mission had not been completed.', '0', 'SAY_GORAT_1'),
('33304', '-1934659', '...and that my mens''s sacriface had not been avenged.', '0', 'SAY_GORAT_2'),
('33304', '-1934660', 'We must hurry, now. I sense that my time is short.', '0', 'SAY_GORAT_3'),
('33304', '-1934661', 'Follow me closely, and prepare for battle!', '0', 'SAY_GORAT_4'),
('33304', '-1934662', 'Captain Elendilad conceals himself on the island ahead, cowardly issuing orders to his underlings.', '0', 'SAY_GORAT_5'),
('33304', '-1934663', 'He must fall!', '0', 'SAY_GORAT_6'),
('33304', '-1934664', 'Show yourself, elf-coward! Face your death with honor!', '1', 'SAY_GORAT_7'),
('33304', '-1934665', 'How many times must I have you killed, $R?!', '1', 'SAY_ELENDILAD_1'),
('33304', '-1934666', 'Curse you, $R vermin! This forest belongs to the Kaldorei', '0', 'SAY_ELENDILAD_2');

UPDATE creature_template SET dynamicflags=32,minlevel=25,maxlevel=25 WHERE entry=33295;
UPDATE creature_template SET minlevel=20,maxlevel=20 WHERE entry=33294;
UPDATE creature_addon SET emote=65 WHERE guid IN(6390871,6390872,6390873,6390874,6390875,6390876);
UPDATE creature_template SET ScriptName='npc_wounded_morshan',AIName='',unit_flags=768 WHERE entry=33266;

DELETE FROM creature_template_addon WHERE entry=33295;
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras)VALUES
('33295', '0', '0', '7', '1', '65', '');

DELETE FROM creature_template_addon WHERE entry=33294;
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras)VALUES
('33294', '0', '0', '7', '1', '65', '');
UPDATE creature_template SET minlevel=20,maxlevel=21,faction_A=14,faction_H=35,ScriptName='npc_spirit_gorat',MovementType=0 WHERE entry=33304;
UPDATE creature_template SET minlevel=20,maxlevel=21,faction_A=14,faction_H=14 WHERE entry=33302;
UPDATE creature SET curhealth=464,curmana=510 WHERE id =33302;
UPDATE creature SET curhealth=464 WHERE id =33304;

DELETE FROM gameobject_template WHERE entry=3001598;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('3001598','8','0','Gorat\'s Corpse','','','','0','0','3','0','0','0','0','0','0','1598','25','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','14545');

DELETE FROM gameobject WHERE id=194263;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('194263','1','1','1','1341.81','-2168.05','94.2795','3.95353','0','0','0.91872','-0.394909','180','100','1'),
('194263','1','1','1','1343.44','-2124.39','92.7568','2.2877','0','0','0.910234','0.414094','180','100','1'),
('194263','1','1','1','1303.03','-2109.29','102.32','3.59539','0','0','0.974369','-0.224955','180','100','1'),
('194263','1','1','1','1397.25','-2184.82','92.9354','5.5903','0','0','0.339556','-0.940586','180','100','1'),
('194263','1','1','1','1406.1','-2123.91','93.8749','2.05208','0','0','0.855253','0.518211','180','100','1'),
('194263','1','1','1','1360.2','-2079.03','96.9094','2.04815','0','0','0.854234','0.519889','180','100','1'),
('194263','1','1','1','1407.18','-2071.66','95.9666','0.265296','0','0','0.132259','0.991215','180','100','1'),
('194263','1','1','1','1447.88','-2055.2','93.1004','5.20153','0','0','0.514847','-0.857282','180','100','1'),
('194263','1','1','1','1460.77','-2013.78','95.8423','1.09389','0','0','0.520082','0.854116','180','100','1'),
('194263','1','1','1','1375.7','-2037.4','99.2722','3.99202','0','0','0.910952','-0.412513','180','100','1'),
('194263','1','1','1','1309.3','-2066.08','110.772','1.81254','0','0','0.787208','0.616688','180','100','1'),
('194263','1','1','1','1276.57','-2105.35','94.9719','3.09274','0','0','0.999702','0.0244261','180','100','1'),
('194263','1','1','1','1276.69','-2115.43','95.1224','5.94766','0','0','0.166979','-0.98596','180','100','1'),
('194263','1','1','1','1304.27','-2170.75','95.77','1.79683','0','0','0.782341','0.62285','180','100','1'),
('194263','1','1','1','1337.83','-2184.62','94.7768','2.67255','0','0','0.972626','0.232376','180','100','1'),
('194263','1','1','1','1350.61','-2209.06','94.7893','3.89777','0','0','0.929371','-0.369146','180','100','1'),
('194263','1','1','1','1350.22','-2228.96','95.2194','3.88599','0','0','0.93153','-0.363665','180','100','1'),
('194263','1','1','1','1377.65','-2237.63','94.2046','1.23527','0','0','0.579109','0.81525','180','100','1'),
('194263','1','1','1','1399.34','-2240.69','93.9044','1.18029','0','0','0.556483','0.830859','180','100','1'),
('194263','1','1','1','1376.88','-2218.51','92.8415','5.5903','0','0','0.339554','-0.940587','180','100','1'),
('194263','1','1','1','1444.53','-2153.49','91.6216','0.0846574','0','0','0.0423161','0.999104','180','100','1'),
('194263','1','1','1','1444.53','-2153.49','91.6216','4.79312','0','0','0.677996','-0.735066','180','100','1'),
('194263','1','1','1','1441.84','-2188.55','94.9361','4.71851','0','0','0.704941','-0.709266','180','100','1'),
('194263','1','1','1','1465.53','-2204.3','93.033','4.58892','0','0','0.749386','-0.662134','180','100','1'),
('194263','1','1','1','1452.35','-2227.19','93.3133','1.73792','0','0','0.763659','0.64562','180','100','1'),
('194263','1','1','1','1462.07','-2268.29','92.5699','4.88737','0','0','0.642616','-0.766189','180','100','1'),
('194263','1','1','1','1432.98','-2320.6','93.8448','4.51038','0','0','0.774802','-0.632203','180','100','1'),
('194263','1','1','1','1365.47','-2291.77','94.1825','0','0','0','0','1','180','100','1'),
('194263','1','1','1','1375.85','-2341.85','103.83','0','0','0','0','1','180','100','1'),
('194263','1','1','1','1411.16','-2344.72','95.3539','0','0','0','0','1','180','100','1'),
('194263','1','1','1','1389.7','-2316.11','93.9085','0','0','0','0','1','180','100','1'),
('194263','1','1','1','1357.4','-2328.37','100.276','0','0','0','0','1','180','100','1'),
('194263','1','1','1','1341.56','-2320.16','99.6318','0','0','0','0','1','180','100','1');