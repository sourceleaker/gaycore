ALTER TABLE `world_db_version` CHANGE  `required_19_from_old_repository` `required_21_from_old_repository`  BIT(1);

UPDATE quest_template SET OfferRewardText='Deep claw marks run through the man\'s corpse.',StartScript=14078 WHERE entry=14078;
UPDATE quest_template SET PrevQuestId=14078, OfferRewardText='It\'s you again.  Looks like you\'re not one to hide in the face of danger.  Very well, then.' WHERE entry=14091;
UPDATE quest_template SET NextQuestInChain=14091 WHERE entry=14078;
UPDATE quest_template SET OfferRewardText='We\'re all fine here.  A little shaken... but alive. ' WHERE entry=14099;
UPDATE quest_template SET OfferRewardText='Oh, hey!  There you are! ', NextQuestInChain=14272 WHERE entry=14269;
UPDATE quest_template SET OfferRewardText='Don\'t get ahead of yourself now.  Just remember who taught you everything you know.\n
And now let\'s see if we can get out of this city with our skins attached. ', NextQuestInChain=14285 WHERE entry=14272;
UPDATE quest_template SET NextQuestId=14157, OfferRewardText='You\'ve done well in coming here.  If we Gilneans stick together we might yet defeat this terrible enemy.' WHERE entry=14285;
UPDATE quest_template SET PrevQuestId=14091, RequestItemsText='Have the worgen been dealt with?', OfferRewardText='It\'s no use, $N!  They\'re not letting up. ' WHERE entry=14093;
UPDATE quest_template SET PrevQuestId=14091, OfferRewardText='Good job, $N.  Thanks to you, many Gilneans will live to see another day.', RequestItemsText='Have you succeeded, $N?' WHERE entry=14098;
UPDATE quest_template SET QuestFlags=0,RequiredRaces=0 WHERE entry=14272;
UPDATE quest_template SET QuestFlags=0,RequiredRaces=0 WHERE entry=14285;
UPDATE quest_template SET RequestItemsText='Have you salvaged the supplies, $N?', OfferRewardText='Excellent!  I\'ll make sure these get taken to a safe place.' WHERE entry=14094;
UPDATE quest_template SET OfferRewardText='If I hadn\'t seen you kill a few of the mangy things with my own eyes, I\'d think you did not complete the task I asked of you.\n
It looks like we\'re hardly putting a dent in their numbers. ' WHERE entry=24930;
UPDATE quest_template SET OfferRewardText='Greymane wants to save Crowley?  Has he gone mad?' WHERE entry=14157;
UPDATE quest_template SET OfferRewardText='Greymane\'s right.  These beasts do not give a damn about our politics.\n
Gilneas needs to stand together.' WHERE entry=28850;
UPDATE quest_template SET OfferRewardText='We did it, $N. Thanks to you a good man has survived.' WHERE entry=14154;


UPDATE creature_template SET mingold=1,maxgold=4,faction_A=7,faction_H=7,maxlevel=2,npcflag=0,mindmg=2,maxdmg=4,attackpower=26,baseattacktime=2000,dynamicflags=2048,type_flags=8,MovementType=1 WHERE entry = 34884;

DELETE FROM gameobject WHERE id=195306;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('195306', '638', '15', '3', '-1455.528', '1344.042', '35.879', '3.352', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1423.768', '1381.199', '35.998', '4.71', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1383.02', '1379.27', '35.961', '6.27', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1412.699', '1404.439', '36.004', '3.168', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1394.03', '1438.881', '35.96', '3.136', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1429.439', '1396.739', '36.003', '6.172', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1462.170', '1375.439', '36.004', '3.191', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1429.770', '1442.78', '36.002', '1.558', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1452.650', '1441.380', '35.988', '1.558', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1461.209', '1412.600', '35.556', '4.774', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1485.839', '1442.069', '35.996', '1.550', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1520.729', '1413.400', '35.556', '4.766', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1541.709', '1443.010', '36.013', '1.66', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1560.579', '1418.01', '35.819', '3.164', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1575.280', '1391.689', '36.644', '3.168', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1545.430', '1374.219', '36.004', '0.0463', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1585.609', '1355.979', '35.712', '3.171', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1512.010', '1367.510', '35.999', '3.164', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1523.079', '1407.03', '35.556', '1.860', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1527.410', '1380.069', '36.003', '4.715', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1477.969', '1380.209', '36.004', '4.664', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1476.910', '1406.650', '35.556', '1.655', '0', '0', '0', '0', '60', '0', '1'),
('195306', '638', '15', '3', '-1479.270', '1362.660', '36.047', '1.566', '0', '0', '0', '0', '60', '0', '1');


DELETE FROM gameobject_loot_template WHERE entry=195306;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('195306', '46896', '-100', '1', '0', '1', '1');

UPDATE `creature_template` SET `scriptname`='' WHERE `entry`=34863;
DELETE FROM `creature` WHERE `id` IN(34916, 34884);
REPLACE INTO `creature` VALUES
 ('326163','34884','638','1','2','0','0','-1439.43','1405.23','35.5559','4.71942','120','0','0','42','0','0','1','0','0','0'),
 ('326164','34884','638','1','2','0','0','-1435.94','1438.07','35.9046','1.48044','120','0','0','42','0','0','1','0','0','0'),
 ('326165','34884','638','1','2','0','0','-1458.56','1440.99','35.9821','3.44394','120','0','0','42','0','0','1','0','0','0'),
 ('326166','34884','638','1','2','0','0','-1461.91','1422.87','35.5563','5.78049','120','0','0','42','0','0','1','0','0','0'),
 ('326167','34884','638','1','2','0','0','-1480.98','1437.62','35.8635','3.69919','120','0','0','42','0','0','1','0','0','0'),
 ('326168','34884','638','1','2','0','0','-1490.84','1425.26','35.5561','4.14686','120','0','0','42','0','0','1','0','0','0'),
 ('326169','34884','638','1','2','0','0','-1485.53','1405.15','35.5561','6.14963','120','0','0','42','0','0','1','0','0','0'),
 ('326170','34884','638','1','2','0','0','-1463.89','1387.12','36.0063','5.63127','120','0','0','42','0','0','1','0','0','0'),
 ('326171','34884','638','1','2','0','0','-1446.08','1406.03','35.5559','6.13392','120','0','0','42','0','0','1','0','0','0'),
 ('326172','34884','638','1','2','0','0','-1443.76','1396.58','35.5559','0.671476','120','0','0','42','0','0','1','0','0','0'),
 ('326173','34884','638','1','2','0','0','-1500.66','1384.03','35.5562','3.12977','120','0','0','42','0','0','1','0','0','0'),
 ('326174','34884','638','1','2','0','0','-1571.4','1396.08','36.2559','5.14825','120','0','0','42','0','0','1','0','0','0'),
 ('326175','34884','638','1','2','0','0','-1552.71','1409.4','35.5561','1.28409','120','0','0','42','0','0','1','0','0','0'),
 ('326176','34884','638','1','2','0','0','-1545.27','1428.41','35.5561','0.632205','120','0','0','42','0','0','1','0','0','0'),
 ('326177','34884','638','1','2','0','0','-1519.72','1430.35','35.5569','5.19144','120','0','0','42','0','0','1','0','0','0'),
 ('326178','34884','638','1','2','0','0','-1497.93','1359.5','35.5912','3.83663','120','0','0','42','0','0','1','0','0','0'),
 ('326179','34884','638','1','2','0','0','-1473.87','1351.81','35.5561','0.369097','120','0','0','42','0','0','1','0','0','0'),
 ('326180','34884','638','1','2','0','0','-1447.91','1362.6','35.5561','0.569373','120','0','0','42','0','0','1','0','0','0'),
 ('326181','34884','638','1','2','0','0','-1410.09','1367.8','35.5561','0.514395','120','0','0','42','0','0','1','0','0','0'),
 ('326182','34884','638','1','2','0','0','-1404.93','1398.21','35.5561','1.83779','120','0','0','42','0','0','1','0','0','0'),
 ('326183','34884','638','1','2','0','0','-1522.22','1328.85','35.5563','4.18613','120','0','0','42','0','0','1','0','0','0'),
 ('326184','34884','638','1','2','0','0','-1544.08','1333.63','35.5563','2.61533','120','0','0','42','0','0','1','0','0','0'),
 ('326185','34884','638','1','2','0','0','-1558.26','1347.43','35.5563','2.26976','120','0','0','42','0','0','1','0','0','0'),
 ('326186','34884','638','1','2','0','0','-1549.15','1368.94','35.5563','1.14664','120','0','0','42','0','0','1','0','0','0'),
 ('326187','34884','638','1','2','0','0','-1571.02','1366.44','35.8581','3.16904','120','0','0','42','0','0','1','0','0','0'),
 ('326188','34884','638','1','2','0','0','-1504.68','1432.49','35.556','3.17297','120','0','0','42','0','0','1','0','0','0'),
 ('326189','34884','638','1','2','0','0','-1503.25','1410.14','35.556','5.23464','120','0','0','42','0','0','1','0','0','0'),
 ('326190','34884','638','1','2','0','0','-1537.63','1417.16','35.5547','3.63243','120','0','0','42','0','0','1','0','0','0'),
 ('326191','34884','638','1','2','0','0','-1541.98','1383.11','36.0052','4.53563','120','0','0','42','0','0','1','0','0','0'),
 ('327726','34916','638','1','2','0','0','-1461.83','1392.25','35.5561','4.34923','300','0','0','84000','0','0','0','0','0','0'),
 ('327723','34916','638','1','2','0','0','-1445.38','1411.16','35.5561','4.69873','300','0','0','84000','0','0','0','0','0','0'),
 ('327724','34916','638','1','2','0','0','-1441.32','1410.98','35.5561','4.66732','300','0','0','84000','0','0','0','0','0','0'),
 ('327725','34916','638','1','2','0','0','-1437.13','1410.79','35.5561','4.66732','300','0','0','84000','0','0','0','0','0','0'),
 ('323447','34916','638','1','1','0','0','-1440.89','1354.19','35.556','1.33675','5000','0','0','2650','0','0','0','0','0','0'),
 ('323450','34916','638','1','1','29467','0','-1489.21','1399.97','35.5562','3.56414','5000','0','0','84000','0','0','0','0','0','0'),
 ('323451','34916','638','1','1','29466','0','-1459.29','1420.38','35.556','2.60988','5000','0','0','83964','0','0','0','0','0','0'),
 ('323452','34916','638','1','1','29467','0','-1505.67','1399.53','35.5563','5.38234','5000','0','0','83890','0','0','0','0','0','0'),
 ('323453','34916','638','1','1','29467','0','-1536.85','1399.85','35.5562','5.68079','5000','0','0','83974','0','0','0','0','0','0'),
 ('323454','34916','638','1','1','29466','0','-1527.05','1419.62','35.5559','2.4208','5000','0','0','84000','0','0','0','0','0','0'),
 ('327727','34916','638','1','2','0','0','-1495.15','1406.66','35.5561','0.665709','300','0','0','84000','0','0','0','0','0','0'),
 ('327728','34916','638','1','2','0','0','-1497.96','1426.4','35.5561','3.18291','300','0','0','84000','0','0','0','0','0','0'),
 ('327729','34916','638','1','2','0','0','-1523.36','1422.42','35.5561','2.66455','300','0','0','84000','0','0','0','0','0','0'),
 ('327730','34916','638','1','2','0','0','-1543.8','1426.14','35.5561','3.79945','300','0','0','84000','0','0','0','0','0','0'),
 ('327731','34916','638','1','2','0','0','-1549.84','1406.78','35.5561','4.59663','300','0','0','84000','0','0','0','0','0','0'),
 ('327732','34916','638','1','2','0','0','-1551.87','1384.98','35.5576','6.19098','300','0','0','84000','0','0','0','0','0','0'),
 ('327733','34916','638','1','2','0','0','-1556.37','1363.08','35.5634','5.31526','300','0','0','84000','0','0','0','0','0','0'),
 ('327734','34916','638','1','2','0','0','-1524.38','1337.7','35.5562','3.86228','300','0','0','84000','0','0','0','0','0','0'),
 ('327735','34916','638','1','2','0','0','-1488.74','1359.32','35.8546','6.17527','300','0','0','84000','0','0','0','0','0','0'),
 ('327736','34916','638','1','2','0','0','-1441.02','1364.07','35.5561','3.14756','300','0','0','84000','0','0','0','0','0','0'),
 ('327737','34916','638','1','2','0','0','-1401.97','1364.78','35.5561','2.3386','300','0','0','84000','0','0','0','0','0','0');

UPDATE creature SET spawnMask=15,phaseMask =3 WHERE id=34936;


UPDATE creature_template SET minlevel=5,maxlevel=5,npcflag=2,mindmg=2,maxdmg=4,baseattacktime=2000,attackpower=30 WHERE entry=34913;
UPDATE creature SET curhealth=115 WHERE id=34913;

UPDATE gameobject SET spawnMask=15,phaseMask=3,spawntimesecs=20 WHERE id =195327;
UPDATE quest_template SET PrevQuestId=14099 WHERE entry IN(14277,14278,14273,14275,14280,14265,14269);
DELETE FROM creature_ai_scripts WHERE creature_id IN(35869,35873,35871,35118,34884);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`,`action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)VALUES
('3587301', '35873', '1', '0', '100', '1', '1000', '1000', '0', '0','11', '13236', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Celestine of the Harvest-Channeling'),
('3586901', '35869', '1', '0', '100', '1', '1000', '1000', '0', '0','11', '29322', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Vitus Darkwalker-Channeling'),
('3587101', '35871', '1', '0', '100', '1', '1000', '1000', '1800000', '1800000','11', '7104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loren the Fence-Sneak'),
('3511801', '35118', '2', '0', '100', '0', '35', '0', '0', '0', '11', '8599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodfang Worgen - Cast Enrage'),
('3488401', '34884', '2', '0', '100', '0', '35', '0', '0', '0', '11', '8599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rampaging Worgen - Cast Enrage');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN(34884,35869,35873,35871,35118);

UPDATE creature SET DeathState=1 WHERE id=35912;

UPDATE creature_template SET minlevel=2,maxlevel=3,mindmg=3,maxdmg=5,attackpower=30,mingold=3,maxgold=8 WHERE entry=35118;
UPDATE creature SET curhealth=71 WHERE id=35118;


-- other quest stuff
UPDATE `quest_template` SET `QuestFlags`='0',`NextQuestId`='14099', `ExclusiveGroup`='-14093', `NextQuestInChain`='0' WHERE (`entry`='14098');
UPDATE `quest_template` SET `NextQuestId`='14099', `ExclusiveGroup`='-14093', `NextQuestInChain`='0' WHERE (`entry`='14093');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='-195327' WHERE (`entry`='14098');
UPDATE `quest_template` SET `CompletedText`='Good job, $N. Thanks to you, many Gilneans will live to see another day\r\n' WHERE (`entry`='14098');
UPDATE `quest_template` SET `PrevQuestId`='14099' WHERE (`entry`='14277');
UPDATE quest_template SET QuestFlags=0 WHERE entry=14157;


-- phasing

UPDATE quest_template SET RewSpell=0 WHERE entry=14099;
UPDATE `quest_template` SET `RewSpell`='59073' WHERE (`entry`='14078'); -- to phase 2


-- Gilneas City Guard
DELETE FROM creature WHERE map = 638 AND id IN (39095,34863,34864,35830,34850,34913,35840,34936,34916);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(34864, 638, 1, 3, 0, 0, -1441.17, 1415.11, 35.5561, 3.0442, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1407.62, 35.5561, 3.13066, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1441.17, 1418.94, 35.5561, 3.0442, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1415.11, 35.5564, 3.11047, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1400.05, 35.5564, 3.11102, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1459.31, 1400.08, 35.556, 3.79426, 5000, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1431.72, 1349.03, 35.5545, 1.94936, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1441.17, 1404.17, 35.5561, 3.0442, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1441.17, 1400.05, 35.5561, 3.0874, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1404.17, 35.5564, 3.05526, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1418.94, 35.5564, 3.11047, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1444.09, 1412.21, 35.5561, 3.11888, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1441.17, 1412.21, 35.5561, 3.0874, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
(34864, 638, 1, 3, 0, 0, -1441.17, 1407.62, 35.5564, 3.12932, 300, 0, 0, 2650, 0, 0, 0, 0, 0, 0),
-- Prince Liam Greymane phase 1
(34850, 638, 1, 1, 29463, 0, -1447.71, 1409.86, 35.5561, 0.0125672, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
-- Prince Liam Greymane phase 2
(34913, 638, 1, 2, 0, 0, -1448.73, 1410.13, 35.556, 0.167291, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
-- quest markers (not in use yet)
(35830, 638, 1, 2, 17612, 0, -1425.47, 1436.56, 36.5066, 3.08923, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1487.21, 1338.23, 35.6393, 3.24631, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1507.77, 1370.99, 35.6392, 6.23082, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1498.91, 1371.11, 35.6392, 3.24631, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1464.09, 1440.08, 36.0566, 4.62512, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1537.74, 1439.45, 36.0326, 4.62512, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1421.07, 1415.78, 35.6393, 3.24631, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
(35830, 638, 1, 2, 17612, 0, -1398.88, 1403.54, 35.6393, 3.24631, 5000, 5, 0, 4120, 0, 0, 1, 0, 0, 0),
-- Gwen Armstead 1
(34936, 638, 1, 3, 0, 0, -1465.47, 1403.72, 35.5561, 4.73202, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
-- Gwen Armstead 2 and 4
(35840, 638, 1, 6, 29290, 0, -1633.14, 1303.79, 19.7463, 3.33358, 5000, 5, 0, 42, 0, 0, 0, 0, 0, 0),
-- Slain Guard
(39095, 638, 1, 3, 0, 0, -1403.51, 1440.61, 35.5562, 3.25941, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(39095, 638, 1, 3, 0, 0, -1400.37, 1446.6, 35.5563, 0.812893, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
-- Lieutenant Walden
(34863, 638, 1, 3, 29476, 0, -1405.52, 1445.8, 35.5562, 2.99158, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
-- equip guards
UPDATE `creature_template` SET `equipment_id`='107' WHERE (`entry`='34916');
UPDATE `creature_template` SET `equipment_id`='107' WHERE (`entry`='35915');
UPDATE `creature_template` SET `equipment_id`='107' WHERE (`entry`='50474');
UPDATE `creature_template` SET `equipment_id`='107' WHERE (`entry`='34864');
-- other guards with guid required for creature_addon
DELETE FROM creature WHERE guid IN(327170,327171,327168,327165,327167,327163,327166,327169,327164,323454,323453,323452,323451,323450,323447,327405,327409,327403,327402,327407,327401,327410,327408,327399,327406);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(323447, 34916, 638, 1, 3, 0, 0, -1440.89, 1354.19, 35.556, 1.33675, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(323450, 34916, 638, 1, 3, 29467, 0, -1489.21, 1399.97, 35.5562, 3.56414, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(323451, 34916, 638, 1, 3, 29466, 0, -1459.29, 1420.38, 35.556, 2.60988, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(323452, 34916, 638, 1, 3, 29467, 0, -1505.67, 1399.53, 35.5563, 5.38234, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(323453, 34916, 638, 1, 3, 29467, 0, -1536.85, 1399.85, 35.5562, 5.68079, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(323454, 34916, 638, 1, 3, 29466, 0, -1527.05, 1419.62, 35.5559, 2.4208, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327163, 35915, 638, 1, 8, 29466, 0, -1800.25, 1414.33, 19.9698, 1.73222, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327164, 35915, 638, 1, 8, 29467, 0, -1810.35, 1418.33, 20.0443, 0.895773, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327165, 35915, 638, 1, 8, 29826, 0, -1798.84, 1424.04, 20.2797, 2.43437, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327166, 35915, 638, 1, 8, 29466, 0, -1808.85, 1428.78, 19.5872, 1.20522, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327167, 35915, 638, 1, 8, 29826, 0, -1806.92, 1414.84, 19.8536, 1.5021, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327168, 35915, 638, 1, 8, 29467, 0, -1804.31, 1414.41, 19.9236, 1.45498, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327169, 35915, 638, 1, 8, 29466, 0, -1801.79, 1427.57, 19.8429, 1.39214, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327170, 35915, 638, 1, 8, 29467, 0, -1807.09, 1416.55, 19.8531, 1.51781, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327171, 35915, 638, 1, 8, 29826, 0, -1804.45, 1416.43, 19.9406, 1.52959, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327399, 50474, 638, 1, 1024, 0, 0, -1810.57, 1471.76, 19.11, 0.306727, 5000, 2, 0, 84000, 0, 0, 1, 0, 0, 0),
(327401, 50474, 638, 1, 1024, 0, 0, -1800.72, 1501.24, 19.7819, 1.64976, 5000, 2, 0, 84000, 0, 0, 1, 0, 0, 0),
(327402, 50474, 638, 1, 1024, 0, 0, -1806.66, 1511.58, 19.7923, 1.54373, 5000, 2, 0, 84000, 0, 0, 1, 0, 0, 0),
(327403, 50474, 638, 1, 1024, 0, 0, -1797.06, 1531.51, 20.1547, 4.84397, 5000, 2, 0, 84000, 0, 0, 1, 0, 0, 0),
(327405, 50474, 638, 1, 1024, 0, 0, -1798.13, 1535.1, 20.5483, 4.69632, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327406, 50474, 638, 1, 1024, 0, 0, -1799.93, 1535.07, 20.5633, 4.57851, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327407, 50474, 638, 1, 1024, 0, 0, -1802.17, 1535.28, 20.5138, 4.62563, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327408, 50474, 638, 1, 1024, 0, 0, -1796.84, 1533.58, 20.2876, 3.68394, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327409, 50474, 638, 1, 1024, 0, 0, -1792.95, 1455.91, 19.3592, 4.23372, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0),
(327410, 50474, 638, 1, 1024, 0, 0, -1790.19, 1455.14, 19.3592, 4.18267, 5000, 0, 0, 84000, 0, 0, 0, 0, 0, 0);
-- guards stance
DELETE FROM creature_addon WHERE guid IN(327170,327171,327168,327165,327167,327163,327166,327169,327164,323454,323453,323452,323451,323450,323447,327405,327409,327403,327402,327407,327401,327410,327408,327399,327406,500005);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES 
('327170', '333'),
('327168', '333'),
('327171', '333'),
('327165', '333'),
('327167', '333'),
('327163', '333'),
('327166', '333'),
('327169', '333'),
('327164', '333'),
('323454', '333'),
('323453', '333'),
('323452', '333'),
('323451', '333'),
('323450', '333'),
('323447', '333'),
('327405', '333'),
('327409', '333'),
('327403', '333'),
('327402', '333'),
('327407', '333'),
('327401', '333'),
('327410', '333'),
('327408', '333'),
('327399', '333'),
('327406', '333'),
('500005', '333');

-- panicked citizen
DELETE FROM creature WHERE map = 638 AND id IN (44086,34851);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(323455, 34851, 638, 1, 3, 0, 0, -1495.47, 1371, 35.8774, 3.21405, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323456, 34851, 638, 1, 3, 0, 0, -1428.57, 1436.88, 35.8386, 3.04913, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323457, 34851, 638, 1, 3, 0, 0, -1489.92, 1428.47, 35.5564, 2.86514, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323458, 34851, 638, 1, 3, 0, 0, -1560.34, 1409.57, 36.0118, 6.26532, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323459, 34851, 638, 1, 3, 0, 0, -1514.37, 1426.8, 35.556, 6.01008, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323460, 34851, 638, 1, 3, 0, 0, -1529.65, 1323.64, 35.9953, 1.84019, 5000, 0, 0, 250, 0, 0, 0, 0, 0, 0),
(323461, 34851, 638, 1, 3, 30216, 0, -1487.44, 1336.11, 35.8521, 1.89458, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323437, 44086, 638, 1, 3, 0, 0, -1437.86, 1354.48, 35.5545, 5.24411, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323438, 44086, 638, 1, 3, 0, 0, -1432.97, 1356.84, 35.5545, 4.85219, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323439, 44086, 638, 1, 3, 0, 0, -1429.58, 1357.67, 35.5545, 4.47756, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323440, 44086, 638, 1, 3, 0, 0, -1425.92, 1358.6, 35.5545, 4.18068, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323441, 44086, 638, 1, 3, 0, 0, -1435.62, 1356.34, 35.5545, 5.16635, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323442, 44086, 638, 1, 3, 0, 0, -1430.93, 1360.55, 35.5545, 4.57102, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323443, 44086, 638, 1, 3, 0, 0, -1434.45, 1362.22, 35.5545, 4.85769, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323444, 44086, 638, 1, 3, 0, 0, -1439.85, 1359.66, 35.5545, 5.43653, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323445, 44086, 638, 1, 3, 0, 0, -1426.98, 1361.93, 35.5545, 4.46106, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(323446, 44086, 638, 1, 3, 0, 0, -1436.58, 1360.1, 35.5545, 5.15614, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_addon` WHERE guid IN(323455,323456,323457,323458,323459,323460,323461,323437,323438,323439,323440,323441,323442,323443,323444,323445,323446,500011);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES 
('323455','431'),
('323456','431'),
('323457','431'),
('323458','431'),
('323459','431'),
('323460','431'),
('323461','431'),
('323437','431'),
('323438','431'),
('323439','431'),
('323440','431'),
('323441','431'),
('323442','431'),
('323443','431'),
('323444','431'),
('323445','431'),
('323446','431'),
('500011','431');

UPDATE creature_template SET npcflag=3 WHERE entry=34913;

UPDATE creature SET phaseMask=1 WHERE guid IN(1005716,323447,323437,323444,323441,323446,323438,323443,323442,323439,323445,323440);
UPDATE creature SET MovementType='1',spawndist='10' WHERE id=34884;

UPDATE `quest_template` SET `OfferRewardText`='You\'ve learned with such speed and ease.  Soon you\'ll be the one doing the teaching. ',`RequiredRaces`='0',`PrevQuestId`='14277', `NextQuestId`='0',`NextQuestInChain`='14288', `ReqCreatureOrGOId1`='35118' WHERE (`entry`='14281');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14280', `NextQuestId`='0', `NextQuestInChain`='14291',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14283');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14275', `NextQuestId`='0', `NextQuestInChain`='14290',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14276');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14278', `NextQuestId`='0', `NextQuestInChain`='14289',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14279');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14273', `NextQuestId`='0', `NextQuestInChain`='14287',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14274');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14265', `NextQuestId`='0', `NextQuestInChain`='14286',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14266');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14269', `NextQuestId`='0', `NextQuestInChain`='14285',`ReqCreatureOrGOId1`='35118' WHERE (`entry`='14272');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14281', `NextQuestId`='0', `NextQuestInChain`='14157' WHERE (`entry`='14288');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14283', `NextQuestId`='0', `NextQuestInChain`='14157' WHERE (`entry`='14291');
UPDATE `quest_template` SET `RequiredRaces`='0',`PrevQuestId`='14276', `NextQuestId`='0', `NextQuestInChain`='14157' WHERE (`entry`='14290');
UPDATE `quest_template` SET `RequiredRaces`='0',`NextQuestId`='0', `NextQuestInChain`='14157', `PrevQuestId`='14279' WHERE (`entry`='14289');
UPDATE `quest_template` SET `RequiredRaces`='0',`NextQuestId`='0', `NextQuestInChain`='14157', `PrevQuestId`='14274' WHERE (`entry`='14287');
UPDATE `quest_template` SET `RequiredRaces`='0',`NextQuestId`='0', `NextQuestInChain`='14157', `PrevQuestId`='14266' WHERE (`entry`='14286');
UPDATE `quest_template` SET `RequiredRaces`='0',`NextQuestId`='0', `NextQuestInChain`='14157', `PrevQuestId`='14272' WHERE (`entry`='14285');
UPDATE `quest_template` SET `NextQuestId`='0', `NextQuestInChain`='28850' WHERE (`entry`='14157');
UPDATE `quest_template` SET `PrevQuestId`='14157', `NextQuestId`='0', `NextQuestInChain`='14154' WHERE (`entry`='28850');
UPDATE `quest_template` SET `PrevQuestId`='28850', `NextQuestId`='0', `NextQuestInChain`='26129' WHERE (`entry`='14154');
UPDATE `quest_template` SET `PrevQuestId`='14154', `NextQuestId`='0', `NextQuestInChain`='14159' WHERE (`entry`='26129');
UPDATE `quest_template` SET `PrevQuestId`='26129', `NextQuestId`='0', `NextQuestInChain`='14204' WHERE (`entry`='14159');
UPDATE `quest_template` SET `PrevQuestId`='14159', `NextQuestId`='0', `NextQuestInChain`='14214' WHERE (`entry`='14204');
UPDATE `quest_template` SET `PrevQuestId`='14204', `NextQuestId`='0', `NextQuestInChain`='14293' WHERE (`entry`='14214');
UPDATE `quest_template` SET `PrevQuestId`='14214', `NextQuestId`='0', `NextQuestInChain`='14294' WHERE (`entry`='14293');
UPDATE `quest_template` SET `PrevQuestId`='14293', `NextQuestId`='0', `NextQuestInChain`='14212' WHERE (`entry`='14294');
UPDATE `quest_template` SET `PrevQuestId`='14294', `NextQuestId`='0', `NextQuestInChain`='14218' WHERE (`entry`='14212');
UPDATE `quest_template` SET `PrevQuestId`='14212', `NextQuestId`='0', `NextQuestInChain`='14221' WHERE (`entry`='14218');
UPDATE `quest_template` SET `PrevQuestId`='14218', `NextQuestId`='0', `NextQuestInChain`='14222' WHERE (`entry`='14221');
UPDATE `quest_template` SET `PrevQuestId`='14221', `NextQuestId`='0', `NextQuestInChain`='0' WHERE (`entry`='14222');

-- gilneas prison
-- Vincent Hersham (kneel)
DELETE FROM creature_addon WHERE guid=500009;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('500009', '8');
-- Sean Dempsey (using sleep because emote isn't working)
DELETE FROM creature_addon WHERE guid=500006;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('500006', '3');
-- tobias mistmantle
DELETE FROM creature_equip_template WHERE entry=60000 AND ItemEntry1=2130;
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`) VALUES ('60000', '2130');

DELETE FROM `creature_questrelation` WHERE `id`='35840';
INSERT INTO `creature_questrelation` SET quest=14277, id=35840;
INSERT INTO `creature_questrelation` SET quest=14278, id=35840;
INSERT INTO `creature_questrelation` SET quest=14273, id=35840;
INSERT INTO `creature_questrelation` SET quest=14275, id=35840;
INSERT INTO `creature_questrelation` SET quest=14269, id=35840;
INSERT INTO `creature_questrelation` SET quest=14280, id=35840;
INSERT INTO `creature_questrelation` SET quest=14265, id=35840;

-- Required races are redundant, you have to be a Worgen to be in the phase, no other race can be there. 

/* quests from (phase 2)npc 35840 gwen armstead */
DELETE FROM `quest_template` WHERE `entry` IN (14277, 14278, 14273, 14275, 14269, 14280, 14265);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14277','2','4755','-128','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14281','0','0','5','0','0','0','Arcane Inquiries','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  It was a mage named Myriam.  She mentioned something about you being \"ready.\"','Speak to Myriam Spellwaker in the Military District.','A disciple of the arcane always finds a way forward. I\'m glad to see you, $N.',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14278','2','4755','-16','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14279','0','0','5','0','0','0','Seek the Sister','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  A member of the clergy, Sister Almyra, said that you were in great peril and needed the Light\'s protection.$B$BYou should go talk to her.  She seemed very concerned.','Speak to Sister Almyra in the Military District.','The Light is with you, $N. It\'s still quite a relief to see you.',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14273','2','4755','-256','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','0','14274','0','0','5','0','0','0','Shady Associates','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  A strange fellow named Vitus... he was really giving me the creeps.$B$BHe kept talking about some \"forbidden knowledge\" he\'d uncovered.','Speak to Vitus Darkwalker in the Military District.','A darkness has descended over our lands. And not our kind of darkness, if you know what I mean.',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14275','2','4755','-4','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14276','0','0','5','0','0','0','Someone\'s Keeping Track of You','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  A man named Blake.  Said something about a plan to escape into the woods.','Speak to Huntsman Blake in the Military District.','$N! I knew you had to be around here.',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14269','2','4755','-8','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14272','0','0','5','0','0','0','Someone\'s Looking for You','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  A woman named Loren... she seemed a little disappointed when I told her you were all right.$B$BI think she mentioned she owes you money.','Speak to Loren the Fence in the Military District.',NULL,NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14280','2','4755','-1024','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14283','0','0','5','0','0','0','The Winds Know Your Name... Apparently','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  It was that harvest-witch, Celestine; she said the winds spoke your name.$B$BYou\'d best hurry, $N.  We\'re going to need you to get back to the worgen-smashing once you\'re done conversing with nature.','Speak to Celestine of the Harvest in the Military District.','We have been blessed today! You are alive and well!',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14265','2','4755','-1','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14099','14266','0','0','5','0','0','0','Your Instructor','Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  A fellow by the name of Cleese said you were one of his students and wanted to make sure you were all right.','Speak to Sergeant Cleese in the Military District.',NULL,NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','35','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');


UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14091; /* Something's amiss 14091 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14098; /* Evacuate the Merchant Square 14098 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14099; /* Royal orders 14099 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14277; /* Arcane Inquiries 14277 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14278; /* Seek the Sister 14278 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14273; /* Shady Associates 14273 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14275; /* Someone's Keeping Track of You 14275 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14269; /* Someone's Looking for You 14269 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14280; /* The Winds Know Your Name... Apparently 14280 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14265; /* Your Instructor 14265 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14283; /* Un toque de rejuvenecimiento 14283 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14279; /* flash heal 14279 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14274; /* inmolate 14274 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14276; /* Steady shot 14276 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14272; /* eviscerate 14272 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14266; /* charge 14266 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14281; /* Arcane misiles 14281 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14289; /* cuantos mas mejor #1 14289 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14287; /* cuantos mas mejor #2 14287 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14290; /* cuantos mas mejor #3 14290 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14285; /* cuantos mas mejor #4 14285 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14286; /* cuantos mas mejor #5 14286 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14288; /* cuantos mas mejor #6 14288 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14291; /* cuantos mas mejor #7 14291 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14157; /* Viejas diviciones 14157 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 24930; /* while you're at it 24930 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 28850; /* The Prison Rooftop 28850 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14154; /* by the skin of his theet 14154 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 26129; /* brothers in arms 26129 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14159; /* The Rebel Lord's Arsenal 14159 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14204; /* From the Shadows 14204 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14214; /* Message to Greymane 14214 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14293; /* Save krennan aranas 14293 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14294; /* time to regroup 14294 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14212; /* Sacrifices 14212 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14218; /* By Blood and Ash 14218 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14221; /* Never Surrender, Sometimes Retreat 14221 */
UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14222; /* last stand 14222 */

SET @ENTRY := 35378;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,19,0,100,0,14204,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Accept Quest');

-- NPC talk text insert
SET @ENTRY := 35378;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'This mastiff will help you find those hidden worgen.',0,0,100,0,0,0, 'Text on Quest Accept');

UPDATE `quest_template` SET `SpecialFlags`='0' WHERE (`entry`='14204');

SET @ENTRY := 35911;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,20,0,100,0,14294,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest'),
(@ENTRY,0,1,0,20,0,100,0,14294,0,0,0,1,1,14000,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest'),
(@ENTRY,0,2,0,20,0,100,0,14294,0,0,0,1,2,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest');

-- NPC talk text insert
SET @ENTRY := 35911;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'If we can make it past the gates into Duskhaven we\'ll be safe. The eastern mountains are virtually impassable.',0,0,100,0,0,0, 'Text on Quest Finish'),
(@ENTRY,1,0, 'I\'ll stay behind with the Royal Guard, father. It is my duty to Gilneas.',0,0,100,0,0,0, 'Text on Quest Finish'),
(@ENTRY,2,0, 'We were fools to take up arms against each other, Darius. The worgen would\'ve never stood a chance.',0,0,100,0,0,0, 'Text on Quest Finish');


SET @ENTRY := 35906;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,20,0,100,0,14294,0,0,0,1,0,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest'),
(@ENTRY,0,1,0,20,0,100,0,14294,0,0,0,1,1,21000,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest'),
(@ENTRY,0,2,0,20,0,100,0,14294,0,0,0,1,2,28000,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text On Finish Quest');

-- NPC talk text insert
SET @ENTRY := 35906;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'We need to keep the worgen\'s attention in the city, Genn. It\'s the only shot we have for the survivors to make it to Duskhaven.',0,0,100,0,0,0, 'Text on Quest Finish'),
(@ENTRY,1,0, 'Not a chance, boy. Gilneas is going to need its king\'s undivided attention. Can\'t have your father wondering whether his child is alive or not.',0,0,100,0,0,0, 'Text on Quest Finish'),
(@ENTRY,2,0, 'My men and I will hole up inside the Light\'s Dawn Cathedral. I\'ve already given the order and the cannons are on their way. Lead our people well, Genn.',0,0,100,0,0,0, 'Text on Quest Finish');


DELETE FROM creature WHERE map = 638 AND id IN (35077, 35081, 35112, 35115, 35123, 35124, 35369, 50371);
INSERT INTO `creature`(`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(500005, 35077, 638, 1, 2, 29593, 0, -1679.73, 1442.12, 52.3705, 0.750492, 5000, 5, 0, 1122, 0, 0, 1, 0, 0, 0),
(500006, 35081, 638, 1, 2, 29619, 0, -1684.76, 1444.62, 52.2871, 0.58638, 300, 0, 0, 84, 0, 0, 0, 0, 0, 0),
(500007, 35112, 638, 1, 2, 29613, 0, -1765.21, 1349.64, 19.9148, 0.51845, 5000, 5, 0, 178, 191, 0, 0, 0, 0, 0),
(500008, 35115, 638, 1, 2, 29675, 0, -1765.34, 1351.92, 19.9054, -0.381638, 5000, 5, 0, 96, 115, 0, 0, 0, 0, 0),
(500009, 35123, 638, 1, 2, 1518, 0, -1685.58, 1445.52, 52.2871, 5.45585, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(500010, 35124, 638, 1, 2, 0, 0, -1674.84, 1438.94, 52.2871, 5.45506, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(500011, 35369, 638, 1, 2, 1695, 0, -1813.62, 1428.32, 12.5465, 3.85718, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(500012, 50371, 638, 1, 2, 0, 0, -1757.7, 1421.33, 25.5379, 6.06563, 300, 0, 0, 126, 0, 0, 0, 0, 0, 0);


-- Bloodfang Worgen 
DELETE FROM creature WHERE map = 638 AND id IN (35118, 35233,35869,35839,35870,35871,35872,35873,35874);
INSERT INTO `creature`(`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(35118, 638, 1, 2, 203, 0, -1699.7, 1372.67, 22.9465, -1.35665, 5000, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1730.78, 1399.67, 21.7655, 4.44717, 5000, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1685.2, 1381.61, 52.3705, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1747.15, 1453.98, 55.256, 4.71649, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1696.25, 1370.39, 23.1025, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1724, 1455.06, 52.2833, 4.4772, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1678.7, 1339.38, 15.2599, 0.576783, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1700.72, 1377.52, 23.0798, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1705.24, 1420.86, 21.7936, 4.04822, 5000, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1768.11, 1436.39, 20.0958, 1.51244, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1669.66, 1371.6, 15.2243, 5.61707, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1729.31, 1399.48, 21.752, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1753.55, 1420.28, 38.7269, 2.85891, 5000, 5, 0, 8, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1669.28, 1435.12, 52.2871, 5.80553, 5000, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1754.38, 1424.03, 41.8588, -1.38344, 5000, 5, 0, 44, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1693.44, 1387.39, 21.752, 2.60054, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1742.91, 1420.76, 23.0667, 5.84002, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1751.08, 1420.62, 36.8817, 2.91601, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1663.78, 1364.61, 15.2599, 4.57213, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1708.81, 1418.1, 21.7936, 4.06503, 5000, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 729, 0, -1700.72, 1377.52, 23.0798, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1733.3, 1417.55, 21.752, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1769.41, 1449.16, 20.0669, 3.06187, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1696.25, 1370.39, 23.1025, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1673.04, 1369.59, 15.3154, 4.13491, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1683.65, 1401.74, 21.752, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 729, 0, -1662.08, 1343.86, 15.2599, 5.4733, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1729.31, 1399.48, 21.752, 0, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1680.71, 1351.7, 15.2599, 1.40235, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1663.46, 1370.52, 15.2599, 3.89276, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1712.05, 1437.54, 21.6988, -2.02325, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1723.53, 1395.21, 21.752, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1733.58, 1392.1, 20.5242, -3.12052, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1749.18, 1429.06, 52.8262, 4.38759, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1693.05, 1418.95, 21.7599, 2.33244, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1715.03, 1413.74, 21.752, 5.70929, 5000, 5, 0, 55, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 203, 0, -1752.63, 1427.86, 23.1025, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1696.25, 1370.39, 23.1025, 0.444685, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1711.08, 1431.64, 21.7263, 2.3493, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 202, 0, -1723.53, 1395.21, 21.752, 0, 5000, 5, 0, 71, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1698.25, 1456.2, 52.2872, 2.98263, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1708.49, 1457.85, 52.7419, 1.56263, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1715.26, 1464.2, 52.7419, 4.66966, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1722.34, 1449.36, 52.2862, 3.8552, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1717.4, 1461.35, 52.7434, 6.10459, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1701.77, 1475.82, 52.2871, 5.63099, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1663.97, 1414.28, 52.7425, 1.88228, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1672.48, 1396.11, 52.2869, 4.17564, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1682.03, 1388.73, 52.2869, 5.75901, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1667.3, 1405.9, 52.7425, 0.689264, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1659.25, 1403.57, 52.7414, 3.46643, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1651.25, 1417.11, 52.2871, 4.40891, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1655.61, 1433.86, 52.2871, 3.60073, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1656.15, 1426.4, 52.2871, 4.64139, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1691.86, 1461.76, 52.2872, 3.29522, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1684.94, 1462.84, 52.2872, 2.35274, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1661.04, 1438.43, 52.2872, 3.16405, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1736.51, 1441.99, 52.2862, 5.50768, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1738.66, 1432.75, 52.2956, 2.41635, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(35118, 638, 1, 2, 0, 0, -1751.72, 1430.59, 52.7429, 5.08907, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0),
-- gilneas survivor
(35233, 638, 1, 2, 30218, 0, -1778.18, 1344.86, 19.9724, 0.15708, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30214, 0, -1775.91, 1351.91, 19.9379, 5.65487, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30215, 0, -1778.99, 1342.89, 19.9008, 0.541052, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30218, 0, -1758.41, 1338.69, 19.9441, 2.28638, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30215, 0, -1773.8, 1350.97, 19.8858, 5.89921, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1761.03, 1336.86, 20.0216, 1.79769, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1760.65, 1338.83, 19.9856, 2.19912, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1771.66, 1351.13, 19.8657, 5.65487, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30215, 0, -1778.11, 1340.14, 19.902, 0.820305, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1777.22, 1343.55, 19.8877, 0.680678, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1774.11, 1353.19, 19.8484, 4.81711, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1766.58, 1362.36, 19.7916, 5.65487, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30214, 0, -1764.77, 1340.02, 19.9655, 1.69297, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
-- gilneas survivor(with Gwen phase 2+4)
(35233, 638, 1, 2, 30214, 0, -1634.5, 1306.88, 19.7463, 5.46288, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30214, 0, -1634.95, 1300.27, 20.3687, 1.20428, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30217, 0, -1634.91, 1311.22, 19.7658, 4.92183, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
(35233, 638, 1, 2, 30215, 0, -1637.02, 1305.24, 19.7463, 5.75959, 5000, 5, 0, 186, 191, 0, 0, 0, 0, 0),
-- trainers
(35869, 638, 1, 2, 29959, 0, -1688.85, 1297.92, 20.3675, 1.6057, 5000, 5, 0, 102, 0, 0, 0, 0, 0, 0),
(35839, 638, 1, 2, 29935, 0, -1687.95, 1332.11, 15.2182, 0.687232, 5000, 5, 0, 306, 0, 0, 0, 0, 0, 0),
(35870, 638, 1, 2, 29958, 0, -1695.43, 1306.85, 19.8657, 1.53589, 5000, 5, 0, 98, 115, 0, 0, 0, 0, 0),
(35871, 638, 1, 2, 29957, 0, -1696.63, 1298.15, 20.3675, 2.23402, 5000, 5, 0, 102, 0, 0, 0, 0, 0, 0),
(35872, 638, 1, 2, 29956, 0, -1690.36, 1328.24, 16.3329, 1.44862, 5000, 5, 0, 285, 690, 0, 0, 0, 0, 0),
(35873, 638, 1, 2, 29961, 0, -1697.47, 1308.94, 19.8657, 6.14356, 5000, 5, 0, 98, 115, 0, 0, 0, 0, 0),
(35874, 638, 1, 2, 29960, 0, -1670.31, 1297.23, 21.3317, 5.88176, 5000, 5, 0, 98, 115, 0, 0, 0, 0, 0);

UPDATE creature_template SET npcflag=0,faction_A=14,faction_H=14 WHERE entry=35118;
UPDATE creature SET spawndist='5', MovementType='1' WHERE id=35118;

UPDATE quest_template SET OfferRewardText='You\'ve done well in coming here.  If we Gilneans stick together we might yet defeat this terrible enemy. ' WHERE entry IN(14288,14285,14286,14287,14289,14290,14291);

UPDATE creature SET MovementType=0,position_x='-1679.80',position_y='1442.01',position_z='52.28',orientation='0.82' WHERE id =35077;
UPDATE creature SET MovementType=0,position_x='-1678.47',position_y='1437.161',position_z='52.28',orientation='0.80' WHERE id =35124;

DELETE FROM quest_start_scripts WHERE id=14154;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14154', '0', '15', '68218', '2');

UPDATE quest_template SET StartScript=14154, CompleteScript=14154 WHERE entry=14154;

UPDATE creature_template SET faction_A=14, faction_H=14 WHERE entry IN(35188,35456);

UPDATE quest_template SET OfferRewardText='Rebel arsenals?  In my own city?\n
What in the bloody hell was Crowley up to? ' WHERE entry=26129;

UPDATE quest_template SET OfferRewardText='Don\'t look at me!  Leave me alone!' WHERE entry=14159;

DELETE FROM quest_start_scripts WHERE id=14154;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14154', '0', '15', '68218', '2'),
('14154', '0', '15', '67503', '2');

DELETE FROM quest_end_scripts WHERE id=14154;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14154', '0', '14', '67503', '0');

DELETE FROM quest_end_scripts WHERE id=14159;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14159', '0', '15', '72870', '2'),
('14159', '0', '15', '81040', '2');


UPDATE quest_template SET CompleteScript=14159 WHERE entry=14159;

UPDATE quest_template SET SrcSpell=67503 WHERE entry=14154;
UPDATE quest_template SET OfferRewardText='$N!  I knew you had to be around here. ' WHERE entry=14275;
UPDATE quest_template SET OfferRewardText='Excellent work, $N.  These $R will regret ever setting foot in our lands. ' WHERE entry=14276;


UPDATE `creature_template` SET `equipment_id` = 663 WHERE `entry` = 34913;
UPDATE `creature_template` SET `equipment_id` = 663 WHERE `entry` = 34850;

DELETE FROM npc_trainer WHERE entry=35873;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES('35873','774','390','573','0','3');

DELETE FROM quest_template WHERE entry=14283;
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14283','2','4755','-1024','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14280','14291','0','14291','3','0','0','0','A Rejuvenating Touch','We were driven to the edge of extinction once before, $N.  But we druids, keepers of the old ways, saved our people from famine.$B$BWhen we cut ourselves off from the outside world and our crops failed, it was our order who called upon the earth\'s blessings and restored the harvest.$B$BJust as we did then, it is best to put our fate in the hands of a higher power.  Join me now and learn what the wild has to teach us.','Speak to Celestine of the Harvest and learn Rejuvenation. Practice using Rejuvenation on a Wounded Guard. ','Not bad at all. Perhaps there is still hope for the old ways.','The earth speaks to us, $N. It will not abandon us even in these perilous times.','','','Practice Rejuvenation','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','1','0','0','0','774','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','774','0','0','1');

DELETE FROM `quest_template` WHERE `entry` IN (14279);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14279','2','4755','-16','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14278','14289','0','0','3','0','0','0','Flash Heal','You have much to learn, $N.  And I\'ve much to teach you.$B$BThese are perilous times, however, and I fear that we might have to accelerate certain lessons.$B$BHave no fear, $g brother:sister;.  The Light will guide us through this.','Speak to Sister Almyra and learn Flash Heal. Use Flash Heal 2 times on a Wounded Guard.','You are blessed, $N. The Light shines upon you, even in these dark times.','You are learning swiftly, my dear.','','','Practice Flash Heal','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','2061','0','0','1');

DELETE FROM `quest_template` WHERE `entry` IN (14289);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14289','2','4755','-16','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14279','14157','0','0','2','0','0','0','Safety in Numbers','I\'ve taught you all that is practical for now.$B$BIt is time we joined with the other survivors.  The others mentioned that King Greymane and his royal guard are just south of here.$B$BThe others are going to need the aid of the Light in these troubling times.','Speak to King Genn Greymane in the military district.','You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.',NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','2','0','0','0','0','0','0','0','0','0','0','0','0','13','30','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');

DELETE FROM `quest_template` WHERE `entry` IN (14266);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14266','2','4755','-1','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14265','14286','0','0','3','0','0','0','Charge','You\'re alive, $N!  That must mean I did something right.$B$BIt\'s a shame our lessons were cut off a little short.  But perhaps there\'s a thing or two I can teach you that might be handy in a time like this.$B$BTry out your new technique against the bloodfang worgen to our west.','Speak to Sergeant Cleese and learn Charge. Practice using Charge against a Bloodfang Worgen.',NULL,NULL,'','','Practice Charge','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','100','0','0','1');

DELETE FROM `quest_template` WHERE `entry` IN (14272);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14272','2','4755','-8','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14269','14285','0','0','3','0','0','0','Eviscerate','Good to see you alive!$B$BNo, of course I don\'t have that gold I owe you.  Now\'s not really the time to bring that up is it?$B$BListen, maybe I can teach you a trick or two that might save your skin with all the carnage going on.  I\'d call it more than even then.  What do you say?$B$BAfter your lesson is over, try using your new technique against the Bloodfang worgen to our west.','Speak to Loren the Fence and learn Eviscerate. Practice using Eviscerate against a Bloodfang Worgen.',NULL,NULL,'','','Practice Eviscerate','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','2098','0','0','1');

DELETE FROM `quest_template` WHERE `entry` IN (14276);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14276','2','4755','-4','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14275','14290','0','0','3','0','0','0','Steady Shot','So I\'ve got good news and bad news.$B$BThe bad news is that there are more worgen in the woods than in here... so we really have no safe place to go to.$B$BThe good news is that I still have a thing or two to teach you.  Who knows the sort of skill that might save your life in a time like this.$B$BTry your hand at it against the bloodfang worgen to our west.','Speak to Huntsman Blake and learn Steady Shot. Practice using Steady Shot 2 times against a Bloodfang Worg.','Excellent work, $N. These worgen will regret ever setting foot in our lands.','You\'re a fast learner. We\'ll show these worgen who the real hunters are.','','','Practice Steady Shot','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','2','0','0','0','56641','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','56641','0','0','13623');

DELETE FROM `quest_template` WHERE `entry` IN (14281);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('14281','2','4755','-128','1','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','14277','14288','0','0','3','0','0','0','Arcane Missiles','The path ahead is difficult, $N.  We must devote the entirety of our mental power to the task at hand.$B$BYet sometimes, that is not enough.  Sometimes the situation calls for raw firepower.$B$BI know just the spell for such a situation and I\'ll be more than glad to share it with you. Once you\'ve learned it, practice using it against the Bloodfang Worgen to our west. You\'ll only get the chance to use your new spell after casting a different spell.','Speak to Myriam Spellwaker and learn Arcane Missiles. Use Arcane Missiles against a Bloodfang Worgen.','You\'ve learned with such speed and ease. Soon you\'ll be the one doing the teaching.','I always knew you were a quick study!','','','Practice Arcane Missiles','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44175','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','5143','0','0','1');

DELETE FROM creature WHERE guid = 504605;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('504605','35378','638','1','4','0','1959','-1788.6','1427.42','12.9477','3.07264','300','0','0','210','0','0','0','0','0','0');
UPDATE `creature_template` SET `equipment_id` = 60000 WHERE `entry` = 35378;

DELETE FROM creature_template_addon WHERE entry=35115;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35115','0','2410','0','0','0',NULL);

UPDATE quest_template SET RewSpell=72870 WHERE entry=14159;
UPDATE creature_template SET equipment_id=60000 WHERE entry=35077;


DELETE FROM creature_template_addon WHERE entry=35112;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35112','0','2410','0','0','0',NULL);

DELETE FROM creature WHERE guid = 504605;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('504605','35378','638','1','4','0','1959','-1788.6','1427.42','12.9477','3.07264','300','0','0','210','0','0','0','0','0','0');
UPDATE `creature_template` SET `equipment_id` = 60000 WHERE `entry` = 35378;

UPDATE `quest_poi` SET `mapid` = 638 WHERE `questId` = 14204;
DELETE FROM creature WHERE id =14204;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1766.47','1443.34','20.2313','1.77129','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1780.68','1455.72','19.3592','3.11746','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1802.83','1452.33','18.9654','4.37331','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1810','1429.08','19.6853','0.882217','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1798.89','1464.32','19.8671','1.54666','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1755.89','1481.44','24.9476','1.77993','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1764.92','1482.17','24.3507','4.68669','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1758.29','1470.24','21.9009','4.76523','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1776.85','1418.4','19.9378','5.31343','300','5','0','42','0','0','1','0','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1811.79','1494','20.0482','5.27024','300','5','0','42','0','0','0','1','0','0');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35463','638','1','4','0','0','-1796.75','1509.16','19.7811','4.50369','300','5','0','42','0','0','1','0','0','0');
UPDATE `creature_template` SET `maxlevel` = 3 WHERE `entry` = 35463;
UPDATE `creature_template` SET `faction_A` = 16 WHERE `entry` = 35463;
UPDATE `creature_template` SET `faction_H` = 16 WHERE `entry` = 35463;


DELETE FROM creature_template_addon WHERE entry=34913;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('34913','0','2410','0','0','0',NULL);

UPDATE quest_template SET StartScript=14204,OfferRewardText='Excellent.  I\'ll start rounding up some help to get these cannons positioned. ',CompleteScript=14204 WHERE entry=14204;

DELETE FROM quest_end_scripts WHERE id=14204;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14204', '0', '15', '43511', '2');

DELETE FROM creature WHERE id=38844;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1006597','38844','638','1','4','0','0','-1788.54','1428.91','12.9117','3.29289','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1006598','38844','638','1','4','0','0','-1788.28','1426.7','12.9716','3.28111','300','0','0','42','0','0','0','0','0','0');

DELETE FROM `quest_template` WHERE `entry` IN (24930);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES('24930','2','4755','0','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','524288','4','0','0','0','0','0','0','0','0','4','0','0','0','While You\'re At It','Fine by me if King Greymane wants you to risk your life to rescue a known traitor.$B$BDo me a favor and do something useful while you\'re out there and kill these cursed fleabags.','Kill 5 Bloodfang Worgen.','If I hadn\'t seen you kill a few of the mangy things with my own eyes, I\'d think you did not complete the task I asked of you.$B$BIt looks like we\'re hardly putting a dent in their numbers.',NULL,'Return to Lord Godfrey at the Military District in Gilneas City.','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','35118','0','0','0','5','0','0','0','0','0','0','0','54975','54978','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','1134','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','40','120','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','1');

DELETE FROM creature WHERE guid=504834;
DELETE FROM creature_template_addon WHERE entry=35550;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('504834','35550','638','1','4','0','0','-1800.78','1402.4','19.8848','4.95045','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35550','0','2410','0','0','0',NULL);

UPDATE quest_template SET OfferRewardText='I knew Crowley would come through.  His weapons will be more than useful to us. ' WHERE entry=14214;
UPDATE quest_template SET StartScript=14293,OfferRewardText='Well done, $N.  We\'ll make sure Krennan makes it out of the city alive. ' WHERE entry=14293;

DELETE FROM quest_start_scripts WHERE id=14204;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14204', '0', '15', '68234', '2');

DELETE FROM quest_start_scripts WHERE id=14293;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14293', '0', '15', '68232', '2');

DELETE FROM creature WHERE id=35753;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)VALUES
('35753', '638', '1', '4', '0', '0', '-1675.061', '1347.229', '22.26', '3.689', '30', '0', '0', '42', '0', '0', '0', '0', '0', '0');

UPDATE creature_template SET ScriptName='npc_king_genn' WHERE entry=35905;
UPDATE creature_template SET ScriptName='npc_greymane' WHERE entry=35550;

UPDATE creature_template SET speed_walk=4.5 WHERE entry=35905;

UPDATE creature_template SET `minlevel` = 3, `maxlevel` = 4 WHERE `entry` = 35188;
UPDATE creature_template SET `minlevel` = 3, `maxlevel` = 4 WHERE `entry` = 35456;


DELETE FROM creature_addon WHERE guid IN (1007387,1007386,1007389);
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('1007387', '8');
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('1007386', '8');
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('1007389', '8');

DELETE FROM creature_template_addon WHERE entry=35906;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35906','0','2410','0','0','0',NULL);
DELETE FROM creature WHERE id =35906;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('1008165','35906','638','1','4','0','0','-1784.31','1438.01','20.2015','5.85829','300','0','0','98','115','0','0','0','0','0');

UPDATE creature_template SET minlevel=5,maxlevel=5 WHERE entry=35906;

UPDATE creature_template SET AIName='EventAI' WHERE entry=47091;
DELETE FROM creature_ai_scripts WHERE creature_id = 47091;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`,`action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)VALUES
('4709101', '47091', '8', '0', '100', '1', '2061', '-1', '0', '0', '33', '44175', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flash Heal - Kill Credit'),
('4709102', '47091', '8', '0', '100', '1', '774', '-1', '0', '0', '33', '44175', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rejuvenation - Kill Credit');

DELETE FROM creature WHERE guid IN (1007386,1007387,1007389);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1007386','47091','638','1','2','0','0','-1703.15','1305.2','19.7825','6.18973','300','0','0','2100','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1007387','47091','638','1','2','0','0','-1701.05','1309.04','19.7825','6.18973','300','0','0','2100','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1007389','47091','638','1','2','0','0','-1701.67','1312.45','19.7825','6.14104','300','0','0','2100','0','0','0','0','0','0');


DELETE FROM script_texts WHERE entry IN(-1035369, -1035370,-1035371,-1035372,-1035373);
INSERT INTO script_texts(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT)VALUES
(-1035369, 'Make it stop!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_josiah'),
(-1035370, 'The pain is unbearable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_josiah'),
(-1035371, 'My face! What\'s wrong with my face!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_josiah'),
(-1035372, 'I can\'t fight it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_josiah'),
(-1035373, 'My hands... Don\'t look at my hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_josiah');

UPDATE creature_template SET ScriptName='npc_josiah' WHERE entry=35369;

DELETE FROM quest_end_scripts WHERE id=14293;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14293', '0', '15', '72872', '2');

UPDATE quest_template SET CompleteScript=14293 WHERE entry=14293;
UPDATE quest_template SET ReqCreatureOrGOid1='44175', ReqCreatureOrGOCount1='1' WHERE entry=14283;

DELETE FROM creature WHERE guid IN(1008589,1008587,1008590,1008591,1008592,1008593,1008594,1008595,1008596,1008597,1008598,1008599,1008600,1008601,1008602,1008603,1008604,1008605);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008587','38832','638','1','2','0','0','-1669.16','1299.81','20.2853','5.7121','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008589','44470','638','1','2','0','0','-1694.98','1309.37','19.7825','4.58663','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008590','34864','638','1','2','0','107','-1769.81','1349.59','19.8228','0.770367','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008591','34864','638','1','2','0','107','-1768.48','1348.07','19.891','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008592','34864','638','1','2','0','107','-1767.17','1346.58','19.8787','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008593','34864','638','1','2','0','107','-1769.39','1344.64','19.842','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008594','34864','638','1','2','0','107','-1770.74','1346.18','19.7958','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008595','34864','638','1','2','0','107','-1772.01','1347.64','19.7856','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008596','34864','638','1','2','0','107','-1773.85','1346.02','19.7856','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008597','34864','638','1','2','0','107','-1772.56','1344.55','19.7856','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008598','34864','638','1','2','0','107','-1771.29','1343.09','19.9169','0.719316','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008599','34864','638','1','2','0','107','-1743.47','1387.39','19.7824','0.804137','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008601','34864','638','1','2','0','107','-1739.8','1376.87','19.929','0.741305','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008602','34864','638','1','2','0','107','-1734.44','1377.21','19.782','0.741305','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008603','34864','638','1','2','0','107','-1714.53','1439.9','21.6688','5.36337','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008604','34864','638','1','2','0','107','-1715.39','1402.79','21.6688','1.29894','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008605','34864','638','1','2','0','107','-1699.09','1403.01','21.6688','2.67103','300','0','0','42','0','0','0','0','0','0');


DELETE FROM creature_addon WHERE guid=1008589;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('1008589', '3');

DELETE FROM creature_addon WHERE guid=1006148;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('1006148', '8');

DELETE FROM creature_addon WHERE guid BETWEEN 1008599 AND 1008605;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES
('1008599', '333'),
('1008600', '333'),
('1008601', '333'),
('1008602', '333'),
('1008603', '333'),
('1008604', '333'),
('1008605', '333');


DELETE FROM creature WHERE guid IN(1008588,1008566,1008567,1008568,1008569,1008570,1008571);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008588','44463','638','1','8','0','0','-1737.66','1639.88','20.5992','6.2069','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008566','44470','638','1','8','0','0','-1763.79','1654.97','20.9103','4.08791','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008567','44470','638','1','8','0','0','-1762.06','1654.26','20.9103','1.92178','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008568','44470','638','1','8','0','0','-1759.78','1656.23','20.9103','4.02507','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008569','44470','638','1','8','0','0','-1763.41','1651.77','20.9103','5.72546','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008570','44470','638','1','8','0','0','-1761.44','1651.64','20.9103','2.12441','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008571','44470','638','1','8','0','0','-1759.23','1654.42','20.9103','5.66655','300','0','0','42','0','0','0','0','0','0');

DELETE FROM creature_addon WHERE guid IN(1008588,1008566,1008567,1008568,1008569,1008570,1008571);
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES 
('1008588', '3'),
('1008566', '3'),
('1008567', '3'),
('1008568', '3'),
('1008569', '3'),
('1008570', '3'),
('1008571', '3');

DELETE FROM creature WHERE id =35916;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009321','35916','638','1','4','0','0','-1760.35','1351.2','19.7635','4.00236','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009301','35916','638','1','4','0','0','-1759.01','1382.25','19.775','1.88571','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009302','35916','638','1','4','0','0','-1754.1','1390.44','19.7829','4.48145','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009303','35916','638','1','4','0','0','-1752.03','1385.69','19.7829','5.13726','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009304','35916','638','1','4','0','0','-1755','1380.13','19.8025','4.06912','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009305','35916','638','1','4','0','0','-1759.8','1374.57','19.7699','4.01021','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009306','35916','638','1','4','0','0','-1763.9','1368.3','19.751','4.32044','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009307','35916','638','1','4','0','0','-1760.74','1359.18','19.911','5.17652','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009308','35916','638','1','4','0','0','-1756.68','1364.88','19.7683','0.955006','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009309','35916','638','1','4','0','0','-1755.1','1370.4','19.7649','1.28487','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009310','35916','638','1','4','0','0','-1751.58','1375.44','19.8944','0.680116','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009311','35916','638','1','4','0','0','-1747.01','1378.98','19.8603','0.526964','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009312','35916','638','1','4','0','0','-1739.42','1377.29','19.9117','6.06402','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009313','35916','638','1','4','0','0','-1737.07','1371.15','19.8126','4.80346','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009314','35916','638','1','4','0','0','-1736.74','1362.11','19.8501','4.74848','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009315','35916','638','1','4','0','0','-1742.74','1358.24','19.7871','3.71568','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009316','35916','638','1','4','0','0','-1750.99','1359.34','19.8541','3.00883','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009317','35916','638','1','4','0','0','-1744.36','1364.83','19.8506','0.687974','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009318','35916','638','1','4','0','0','-1745.85','1370.24','19.9988','3.18554','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009319','35916','638','1','4','0','0','-1750.35','1366.8','19.7506','4.45396','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009320','35916','638','1','4','0','0','-1756.38','1355.82','19.8943','4.10053','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009322','35916','638','1','4','0','0','-1768.58','1351.97','19.9387','1.88178','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009323','35916','638','1','4','0','0','-1763.09','1356.85','19.824','2.87138','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009324','35916','638','1','4','0','0','-1771.49','1358.43','19.601','2.96563','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009325','35916','638','1','4','0','0','-1780.38','1358.57','19.6326','2.82033','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009326','35916','638','1','4','0','0','-1782.75','1366.18','19.9194','1.75219','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009327','35916','638','1','4','0','0','-1777.88','1370.61','19.7853','1.22205','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009328','35916','638','1','4','0','0','-1778.53','1377.73','19.7864','2.45905','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009329','35916','638','1','4','0','0','-1788.84','1367.72','19.7341','4.27332','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009330','35916','638','1','4','0','0','-1733.77','1366.73','19.8094','6.19754','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009331','35916','638','1','4','0','0','-1724.29','1367.54','19.7822','0.138195','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009332','35916','638','1','4','0','0','-1719.47','1369.02','19.7822','4.19478','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009333','35916','638','1','4','0','0','-1715.72','1366.71','19.7822','4.15943','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009334','35916','638','1','4','0','0','-1720.59','1357.07','19.7053','2.94992','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009335','35916','638','1','4','0','0','-1726.82','1351.05','19.6036','4.87022','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009336','35916','638','1','4','0','0','-1720.59','1343.94','19.6609','5.58493','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009337','35916','638','1','4','0','0','-1710.88','1345.22','19.7205','0.134265','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009338','35916','638','1','4','0','0','-1707.39','1353.7','19.7823','1.1867','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009339','35916','638','1','4','0','0','-1698.64','1353.51','17.6222','0.310979','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009340','35916','638','1','4','0','0','-1691.15','1355.52','15.1351','5.46319','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009341','35916','638','1','4','0','0','-1689.49','1346.72','15.1351','4.882','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009342','35916','638','1','4','0','0','-1685.33','1339.38','15.1351','5.6242','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009343','35916','638','1','4','0','0','-1673.32','1340.24','15.1351','0.0714323','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009344','35916','638','1','4','0','0','-1662.01','1341.05','15.1351','0.0714323','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009345','35916','638','1','4','0','0','-1659.4','1354.27','15.1351','2.46297','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009346','35916','638','1','4','0','0','-1668.37','1357.38','15.1351','2.86352','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009347','35916','638','1','4','0','0','-1679.81','1360.65','15.1351','2.86352','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009348','35916','638','1','4','0','0','-1685.6','1350.66','15.1351','4.08089','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009349','35916','638','1','4','0','0','-1697.61','1346.38','16.7914','3.48399','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009350','35916','638','1','4','0','0','-1705.48','1343.25','19.7359','3.54289','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009351','35916','638','1','4','0','0','-1730.38','1358.87','19.7924','2.64361','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009352','35916','638','1','4','0','0','-1734.48','1355.05','19.7672','5.00766','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009353','35916','638','1','4','0','0','-1733.18','1350.18','19.7651','4.46967','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009354','35916','638','1','4','0','0','-1734.73','1343.96','19.7854','4.7367','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009355','35916','638','1','4','0','0','-1734.07','1335.17','19.6478','5.42','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009356','35916','638','1','4','0','0','-1742.92','1334.88','19.7768','2.41192','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009357','35916','638','1','4','0','0','-1748.1','1328.9','19.8243','2.42763','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009358','35916','638','1','4','0','0','-1752.91','1333.07','19.8475','2.42763','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009359','35916','638','1','4','0','0','-1761.01','1340.08','19.8517','2.42763','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009360','35916','638','1','4','0','0','-1772.13','1339.82','19.949','3.21303','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009361','35916','638','1','4','0','0','-1757.19','1348.75','19.7867','0.562308','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009362','35916','638','1','4','0','0','-1713.52','1352.92','19.7817','2.49832','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009363','35916','638','1','4','0','0','-1739.88','1388.95','19.7822','2.35302','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009364','35916','638','1','4','0','0','-1748.07','1394.58','19.7822','2.55329','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009365','35916','638','1','4','0','0','-1740.76','1381.2','19.9896','5.31004','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009366','35916','638','1','4','0','0','-1735.01','1386.12','19.7906','5.42','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009367','35916','638','1','4','0','0','-1727.49','1377.26','19.7819','5.25899','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009368','35916','638','1','4','0','0','-1664.41','1364.19','15.1349','4.08481','300','5','0','71','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009369','35916','638','1','4','0','0','-1739.48','1324.5','19.9036','4.36362','300','5','0','71','0','0','1','0','0','0');

UPDATE creature_template SET minlevel=2,maxlevel=3,faction_A=14,faction_H=14 WHERE entry=35916;
UPDATE creature SET curhealth=207,curmana=79 WHERE id IN(35509,35504);
UPDATE creature_template SET minlevel=3,maxlevel=3,mindmg=12,maxdmg=14,equipment_id=107 WHERE entry IN(35509,35504);
UPDATE quest_template SET OfferRewardText='We\'re left with very few choices, $N.  What we do next will be a critical decision. ' WHERE entry=14294;

DELETE FROM creature WHERE id IN(35504,35509);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009371','35504','638','1','4','0','0','-1773.51','1399.33','20.2929','5.18042','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009372','35504','638','1','4','0','0','-1768.09','1398.84','19.8769','4.92516','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009373','35504','638','1','4','0','0','-1770.14','1402.47','19.8076','5.16863','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009374','35504','638','1','4','0','0','-1760.27','1402.16','19.7829','5.3964','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009375','35504','638','1','4','0','0','-1800.69','1408.37','19.8748','5.0838','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009376','35504','638','1','4','0','0','-1799.48','1410.59','19.9077','5.05631','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009377','35504','638','1','4','0','0','-1803.17','1409.27','19.8676','5.05631','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009378','35504','638','1','4','0','0','-1794.75','1397.11','19.8503','5.07203','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009379','35504','638','1','4','0','0','-1796.04','1400.53','19.8356','5.07203','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009380','35504','638','1','4','0','0','-1801.31','1398.55','19.9033','5.07203','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009381','35504','638','1','4','0','0','-1799.59','1393.96','19.8761','5.07203','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009382','35504','638','1','4','0','0','-1798.28','1398.27','19.8969','5.07203','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009383','35509','638','1','4','0','0','-1765.35','1405.13','19.7998','5.23696','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009384','35509','638','1','4','0','0','-1756.61','1409.55','19.7822','5.40974','300','0','0','207','79','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009385','35509','638','1','4','0','0','-1757.37','1405.18','19.7822','5.19768','300','0','0','207','79','0','0','0','0','0');

-- Bloodfang Lurker
SET @ENTRY := 35463;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,120000,120000,11,5916,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Spawn'),
(@ENTRY,0,1,0,0,1,100,0,9000,12000,20000,24000,11,80515,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Undying Frenzy');


UPDATE creature_template SET minlevel=10,maxlevel=10 WHERE entry=35554;

DELETE FROM creature WHERE id =35554;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008576','35554','638','1','8','0','0','-1755.16','1664.87','21.7349','6.10245','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008577','35554','638','1','8','0','0','-1751.59','1669.13','21.7349','6.10245','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008578','35554','638','1','8','0','0','-1743.41','1674.87','21.7349','3.58918','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008579','35554','638','1','8','0','0','-1749.7','1656.05','20.4375','0.178195','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008580','35554','638','1','8','0','0','-1752.35','1662.96','21.7351','6.11973','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008581','35554','638','1','8','0','0','-1749.17','1652.9','20.4339','0.657287','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008582','35554','638','1','8','0','0','-1752.33','1653.1','20.4116','0.657287','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008583','35554','638','1','8','0','0','-1728.91','1652.82','20.4995','3.06453','300','0','0','186','191','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008584','35554','638','1','8','0','0','-1729.08','1650.57','20.4995','3.06453','300','0','0','186','191','0','0','0','0','0');


DELETE FROM creature WHERE guid IN(1008820,1008511,1008508,1008510);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008508','35231','638','1','8','0','0','-1736.86','1654.91','20.4792','1.4529','300','0','0','420','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008510','35552','638','1','8','0','0','-1734.33','1655.28','20.4906','1.87701','300','0','0','462','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008511','35551','638','1','8','0','0','-1733.16','1662.63','20.4803','3.868','300','0','0','98','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008820','35911','638','1','8','0','0','-1738.77','1664.45','20.4793','5.24637','300','0','0','50000','0','0','0','0','0','0');

DELETE FROM creature WHERE guid IN(1009981,1009982,1009980,1009977,1009978,1009979,1009983,1009985,1009987,1009988);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009977','35914','638','1','8','0','0','-1766.46','1398.74','19.9348','5.28327','300','0','0','1020','120','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009978','35504','638','1','8','0','107','-1768.46','1400.01','19.8967','5.27934','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009979','35504','638','1','8','0','107','-1766.66','1401.25','19.9312','5.35003','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009980','35914','638','1','8','0','0','-1793.95','1384.39','19.8702','5.31468','300','0','0','1020','120','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009981','35504','638','1','8','0','107','-1796.02','1385.46','19.8905','5.31468','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009982','35504','638','1','8','0','107','-1794.37','1386.9','19.8812','5.46391','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009983','35504','638','1','8','0','107','-1791.2','1507.23','19.7826','6.28072','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009985','35504','638','1','8','0','107','-1791.19','1512.97','19.7825','6.28072','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009987','35504','638','1','8','0','107','-1788.39','1511.28','19.7826','6.28072','300','0','0','213','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1009988','35504','638','1','8','0','107','-1790.52','1516.96','20.3198','6.28072','300','0','0','213','0','0','0','0','0','0');


UPDATE creature_template SET minlevel=5,maxlevel=5 WHERE entry=35914;

DELETE FROM creature WHERE guid IN(1010209,1010205,1010208,1010206,1010204,1010203,1010207,1010211,1010210,1010212,1010209);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010203','50471','638','1','8','0','0','-1775.4','1516.57','24.1729','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010204','50471','638','1','8','0','0','-1775.35','1514.86','23.9488','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010205','50471','638','1','8','0','0','-1777.82','1512.06','22.9848','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010206','50471','638','1','8','0','0','-1776.86','1509.05','23.3478','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010207','50471','638','1','8','0','0','-1774.72','1507','24.1731','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010208','50471','638','1','8','0','0','-1780.47','1507.94','21.937','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010209','50471','638','1','8','0','0','-1780.71','1514.94','21.8456','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010210','50471','638','1','8','0','0','-1771.56','1509.89','25.1341','3.17996','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010211','50471','638','1','8','0','0','-1771.69','1513.51','25.1064','3.17603','300','0','0','86','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010212','50471','638','1','8','0','0','-1769.69','1516.35','26.4402','3.17603','300','0','0','86','0','0','0','0','0','0');


UPDATE creature_template SET minlevel=3,maxlevel=4,faction_A=14,faction_H=14 WHERE entry=50471;

DELETE FROM creature WHERE guid IN(1008572,1008573,1008574,1008575,1008585,1008586,1008506,1008505,1008588);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008505','44469','638','1','8','0','0','-1743.97','1632.27','20.48','1.88487','300','0','0','102','168','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008506','44461','638','1','8','0','0','-1736.85','1637.43','21.52','6.27131','300','0','0','98','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008572','44468','638','1','8','0','0','-1759.82','1652.97','20.9103','2.49119','300','0','0','98','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008573','44459','638','1','8','0','0','-1765.7','1659.1','20.9103','5.65241','300','0','0','98','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008574','44460','638','1','8','0','0','-1768.09','1656.15','20.9103','5.70504','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008575','44464','638','1','8','0','0','-1766.55','1668.61','22.2882','5.50869','300','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008585','44455','638','1','8','0','0','-1729.43','1657.04','20.4897','3.50829','300','0','0','306','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008586','44465','638','1','8','0','0','-1729.6','1647.53','20.4998','2.79279','300','0','0','285','690','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1008588','44463','638','1','8','0','0','-1737.66','1639.88','20.5992','6.2069','300','0','0','71','0','0','0','0','0','0');

update creature_template set minlevel=5,maxlevel=5 where entry in(44469,44461,44468,44459,44464,44455,44465,44463);


DELETE FROM creature WHERE id=51277;

UPDATE creature_template SET faction_A=14,faction_H=14,maxlevel=5,minlevel=4 WHERE entry=51277;


INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010214','51277','638','1','8','0','0','-1713.19','1674.29','20.4935','5.24375','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010215','51277','638','1','8','0','0','-1709.51','1666.58','20.6389','5.15735','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010216','51277','638','1','8','0','0','-1704.32','1656.44','20.4912','5.6011','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010217','51277','638','1','8','0','0','-1694.74','1655.92','20.4897','0.134729','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010218','51277','638','1','8','0','0','-1686.12','1663.5','20.4897','1.31283','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010219','51277','638','1','8','0','0','-1694.2','1675.89','20.6484','1.98434','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010220','51277','638','1','8','0','0','-1692.39','1691.17','20.3759','1.40707','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010221','51277','638','1','8','0','0','-1683.75','1703.75','20.3838','0.240758','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010222','51277','638','1','8','0','0','-1678.95','1696.97','20.4962','4.99242','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010223','51277','638','1','8','0','0','-1675.53','1685.21','20.4999','4.99635','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010224','51277','638','1','8','0','0','-1671.96','1672.98','20.4881','4.99635','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010225','51277','638','1','8','0','0','-1663.36','1665.69','20.4893','5.9938','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010226','51277','638','1','8','0','0','-1669.85','1653.92','20.4893','5.04347','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010227','51277','638','1','8','0','0','-1661.99','1638.92','20.4893','4.95707','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010228','51277','638','1','8','0','0','-1668.92','1628.65','20.4893','4.12062','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010229','51277','638','1','8','0','0','-1664.98','1615.51','20.4893','5.0042','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010230','51277','638','1','8','0','0','-1677.73','1614.36','20.4893','3.16244','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010231','51277','638','1','8','0','0','-1681.75','1625.94','20.4893','1.92544','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010232','51277','638','1','8','0','0','-1699.37','1627.28','20.4893','3.15851','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010233','51277','638','1','8','0','0','-1716.54','1635.91','20.4857','2.31814','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010234','51277','638','1','8','0','0','-1714.76','1626.85','20.4857','4.91388','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010235','51277','638','1','8','0','0','-1709.32','1618.02','20.4871','5.35763','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010236','51277','638','1','8','0','0','-1698.73','1619.02','20.4896','0.107237','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010237','51277','638','1','8','0','0','-1690.33','1629.5','20.4896','1.11255','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010238','51277','638','1','8','0','0','-1689.94','1641.81','20.5481','1.54059','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010239','51277','638','1','8','0','0','-1684.52','1651.61','20.4894','0.876927','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010240','51277','638','1','8','0','0','-1674.95','1653.6','20.4894','6.06448','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010241','51277','638','1','8','0','0','-1668.45','1641.36','20.491','5.20055','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010242','51277','638','1','8','0','0','-1664.71','1625.2','20.4895','4.92173','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010243','51277','638','1','8','0','0','-1672.18','1612.29','20.4895','4.14419','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010244','51277','638','1','8','0','0','-1682.97','1598.34','20.4854','4.05387','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010245','51277','638','1','8','0','0','-1695.98','1592.66','20.4854','3.33523','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010246','51277','638','1','8','0','0','-1706.77','1591.66','20.4854','2.26316','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010247','51277','638','1','8','0','0','-1718.56','1590.97','20.4854','3.3313','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010248','51277','638','1','8','0','0','-1731.92','1587.53','20.4854','3.39413','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010249','51277','638','1','8','0','0','-1735.84','1575.7','20.7063','3.89679','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010250','51277','638','1','8','0','0','-1759.64','1573.59','21.4859','2.75404','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010251','51277','638','1','8','0','0','-1746.06','1589.1','20.4846','0.335009','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010252','51277','638','1','8','0','0','-1733.88','1597.77','20.4846','0.715926','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010253','51277','638','1','8','0','0','-1724.43','1607.03','20.4846','0.790539','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010254','51277','638','1','8','0','0','-1726.09','1619.66','20.4846','1.7016','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010255','51277','638','1','8','0','0','-1705.7','1640.92','20.489','1.15182','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010256','51277','638','1','8','0','0','-1716.42','1649.35','20.487','1.72909','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010257','51277','638','1','8','0','0','-1714.82','1663.05','20.5038','1.45813','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010258','51277','638','1','8','0','0','-1725.52','1678.35','20.2554','1.18324','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010259','51277','638','1','8','0','0','-1720.86','1689.38','20.1512','0.794466','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010260','51277','638','1','8','0','0','-1704.56','1699.59','20.1512','0.519576','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010261','51277','638','1','8','0','0','-1702.4','1711.19','21.073','1.26178','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010262','51277','638','1','8','0','0','-1687.6','1714.05','21.0266','0.107242','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010263','51277','638','1','8','0','0','-1676.24','1722.87','21.2955','6.00166','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010264','51277','638','1','8','0','0','-1667.74','1715.15','21.2763','5.54612','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010265','51277','638','1','8','0','0','-1660.92','1709.56','20.5014','6.10376','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010266','51277','638','1','8','0','0','-1651.69','1716.05','20.5014','0.888711','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010267','51277','638','1','8','0','0','-1641.87','1721.42','21.2981','0.0561892','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010268','51277','638','1','8','0','0','-1642.72','1711.17','20.4881','6.20586','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010269','51277','638','1','8','0','0','-1643.33','1703.28','20.7053','6.20586','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010270','51277','638','1','8','0','0','-1658.91','1702.48','20.5107','3.20564','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010271','51277','638','1','8','0','0','-1656.47','1674.11','20.4877','0.209338','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010272','51277','638','1','8','0','0','-1645.04','1676.16','20.4079','0.170068','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010273','51277','638','1','8','0','0','-1635.72','1677.76','20.415','0.170068','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010274','51277','638','1','8','0','0','-1673.03','1668.25','20.4896','3.3902','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010275','51277','638','1','8','0','0','-1692.14','1668.61','20.5122','3.12316','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010276','51277','638','1','8','0','0','-1703.19','1668.42','20.798','5.95845','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010277','51277','638','1','8','0','0','-1702.15','1680.81','20.6233','1.89401','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010278','51277','638','1','8','0','0','-1710.07','1684.74','20.206','4.98456','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010279','51277','638','1','8','0','0','-1626.58','1712.64','21.584','3.31558','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010280','51277','638','1','8','0','0','-1632.81','1696.94','20.4884','4.72537','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010281','51277','638','1','8','0','0','-1631.37','1662.82','20.4884','4.70966','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010282','51277','638','1','8','0','0','-1631.83','1642.03','20.4884','4.69003','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010283','51277','638','1','8','0','0','-1635.68','1617.3','20.4306','4.00281','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010284','51277','638','1','8','0','0','-1634.84','1605.71','20.4872','3.51193','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010285','51277','638','1','8','0','0','-1659.75','1620.3','20.4897','2.96608','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010288','51277','638','1','8','0','0','-1570.64','1712.1','20.485','3.01712','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010289','51277','638','1','8','0','0','-1566.74','1707.71','20.485','4.85495','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010290','51277','638','1','8','0','0','-1565.85','1689.51','20.787','2.10212','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010291','51277','638','1','8','0','0','-1573.82','1691.68','20.5049','2.98962','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010292','51277','638','1','8','0','0','-1581.05','1687.99','20.5612','4.12845','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010293','51277','638','1','8','0','0','-1578.19','1678.23','20.5853','5.4165','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010294','51277','638','1','8','0','0','-1568.89','1681.75','20.4878','0.362466','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010295','51277','638','1','8','0','0','-1556.91','1686.3','20.4853','0.362466','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010296','51277','638','1','8','0','0','-1546.45','1694.04','20.4853','0.637356','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010297','51277','638','1','8','0','0','-1539.42','1699.25','20.4853','0.637356','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010298','51277','638','1','8','0','0','-1549.17','1708.6','20.4853','3.20561','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010299','51277','638','1','8','0','0','-1556.52','1707.61','20.4853','4.5722','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010300','51277','638','1','8','0','0','-1554.62','1701.9','20.4853','5.03558','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010301','51277','638','1','8','0','0','-1544.31','1683.53','20.5867','5.22801','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010302','51277','638','1','8','0','0','-1532.95','1686.66','20.5991','0.448858','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010303','51277','638','1','8','0','0','-1519.98','1682.61','20.5221','5.97806','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010304','51277','638','1','8','0','0','-1516.13','1667.41','20.6376','4.96097','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010305','51277','638','1','8','0','0','-1522.58','1659.67','20.6315','3.98315','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010306','51277','638','1','8','0','0','-1528.74','1653.25','20.7218','3.94781','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010307','51277','638','1','8','0','0','-1537.24','1644.39','20.6816','3.94781','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010308','51277','638','1','8','0','0','-1545.4','1635.84','20.4851','3.97137','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010309','51277','638','1','8','0','0','-1549.49','1626.05','20.7304','4.31694','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010310','51277','638','1','8','0','0','-1560.48','1614.76','20.7253','3.93995','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010311','51277','638','1','8','0','0','-1571.75','1618.81','20.595','2.7972','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010312','51277','638','1','8','0','0','-1577.51','1630.79','20.5166','2.01573','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010313','51277','638','1','8','0','0','-1568.48','1643.08','20.4944','0.841558','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010314','51277','638','1','8','0','0','-1556.44','1642.85','20.4856','6.26473','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010315','51277','638','1','8','0','0','-1543.5','1654.21','20.4856','0.759091','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010316','51277','638','1','8','0','0','-1542.14','1663.06','20.4856','1.32065','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010317','51277','638','1','8','0','0','-1533.09','1672.81','20.6408','0.774799','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010318','51277','638','1','8','0','0','-1524.9','1672.82','21.0569','0.00118174','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010319','51277','638','1','8','0','0','-1532.02','1665.38','20.4938','6.15085','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010320','51277','638','1','8','0','0','-1524','1669.52','21.0081','0.0129623','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010321','51277','638','1','8','0','0','-1536.22','1656.37','20.5938','4.64288','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010322','51277','638','1','8','0','0','-1543.04','1647.77','20.4853','3.95959','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010323','51277','638','1','8','0','0','-1552.62','1635.92','20.4853','4.17165','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010324','51277','638','1','8','0','0','-1553.24','1627.36','20.6955','3.0446','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010325','51277','638','1','8','0','0','-1561.78','1630.91','20.7419','2.64405','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010326','51277','638','1','8','0','0','-1570.52','1635.01','20.6901','4.21484','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010327','51277','638','1','8','0','0','-1567.03','1626.61','20.6599','5.10627','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010328','51277','638','1','8','0','0','-1557.97','1620.28','20.8191','5.71495','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010329','51277','638','1','8','0','0','-1576.38','1624.58','20.7399','3.05245','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010330','51277','638','1','8','0','0','-1582.03','1618.55','20.6357','3.95959','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010331','51277','638','1','8','0','0','-1582.37','1631.22','20.4948','3.16241','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010332','51277','638','1','8','0','0','-1589.44','1631.07','20.5711','1.45417','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010333','51277','638','1','8','0','0','-1588.51','1638.71','20.799','1.45024','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010334','51277','638','1','8','0','0','-1581.01','1643.87','20.7099','0.602009','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010335','51277','638','1','8','0','0','-1579.63','1653','20.4915','1.42668','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010336','51277','638','1','8','0','0','-1579.63','1653','20.4915','2.13746','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010337','51277','638','1','8','0','0','-1588.52','1664.97','20.6295','2.21993','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010338','51277','638','1','8','0','0','-1587.57','1676.13','20.5679','1.48558','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010339','51277','638','1','8','0','0','-1574.47','1669.48','20.4858','5.44399','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010340','51277','638','1','8','0','0','-1567.62','1668.43','20.485','6.13121','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010341','51277','638','1','8','0','0','-1552.94','1670.78','20.485','0.303556','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010342','51277','638','1','8','0','0','-1535.77','1676.16','20.4939','0.303556','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010343','51277','638','1','8','0','0','-1541.38','1686.42','20.5688','2.76971','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010344','51277','638','1','8','0','0','-1551.34','1689.5','20.4854','2.84039','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010345','51277','638','1','8','0','0','-1567.85','1694.63','20.5187','2.84039','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010346','51277','638','1','8','0','0','-1578.21','1697.85','20.8417','3.11528','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010347','51277','638','1','8','0','0','-1585.93','1692.37','21.0194','4.16379','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010348','51277','638','1','8','0','0','-1594.17','1676.75','20.4853','4.89028','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010349','51277','638','1','8','0','0','-1579.64','1667.87','20.4895','5.82097','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010350','51277','638','1','8','0','0','-1565.69','1661.54','20.4849','5.97413','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010351','51277','638','1','8','0','0','-1559.03','1666.17','20.4849','0.751229','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010352','51277','638','1','8','0','0','-1558.52','1677.29','20.4849','2.21992','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010353','51277','638','1','8','0','0','-1550.63','1677.89','20.4849','0.0757856','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010354','51277','638','1','8','0','0','-1542.18','1669.91','20.4935','5.52645','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010355','51277','638','1','8','0','0','-1534.86','1662.99','20.5095','5.52645','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010356','51277','638','1','8','0','0','-1540.76','1651.15','20.4853','4.25018','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010357','51277','638','1','8','0','0','-1548.9','1634.79','20.4853','4.25018','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010358','51277','638','1','8','0','0','-1558.95','1628.48','20.5171','3.69647','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010359','51277','638','1','8','0','0','-1565.57','1618','20.7151','4.17949','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010360','51277','638','1','8','0','0','-1566.68','1610.17','20.4849','4.42689','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010361','51277','638','1','8','0','0','-1578','1619.27','20.526','0.766935','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010362','51277','638','1','8','0','0','-1562.45','1638.54','20.492','0.951503','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010363','51277','638','1','8','0','0','-1551.87','1653.64','20.4852','0.959357','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010364','51277','638','1','8','0','0','-1552.04','1665.89','20.4852','1.75654','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010365','51277','638','1','8','0','0','-1585.21','1673.83','20.6422','5.02379','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010366','51277','638','1','8','0','0','-1576.11','1655.36','20.4863','5.31832','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010367','51277','638','1','8','0','0','-1567.12','1650.65','20.4863','5.80526','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010368','51277','638','1','8','0','0','-1556.61','1647.43','20.4863','0.00902081','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010369','51277','638','1','8','0','0','-1547.79','1652.84','20.4863','1.68977','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010370','51277','638','1','8','0','0','-1566.96','1685.38','20.6849','2.16494','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010371','51277','638','1','8','0','0','-1521.89','1677.09','20.7944','6.22937','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010372','51277','638','1','8','0','0','-1511.37','1672.76','20.8306','5.25548','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010373','51277','638','1','8','0','0','-1513.46','1659.51','20.816','3.82998','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010374','51277','638','1','8','0','0','-1526.28','1649.31','20.5931','3.95958','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010375','51277','638','1','8','0','0','-1535.33','1639.09','21.3117','3.98706','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010376','51277','638','1','8','0','0','-1543.2','1630.74','20.4853','3.89674','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010377','51277','638','1','8','0','0','-1567.06','1622.18','20.5059','3.50404','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010378','51277','638','1','8','0','0','-1575.87','1637.11','20.706','1.77617','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010379','51277','638','1','8','0','0','-1570.75','1648.85','20.4852','1.59945','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010380','51277','638','1','8','0','0','-1573.56','1678.26','20.7771','1.66621','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010381','51277','638','1','8','0','0','-1590.85','1685.15','20.4957','2.52622','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010382','51277','638','1','8','0','0','-1584.79','1684.36','20.569','6.13513','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010383','51277','638','1','8','0','0','-1529.71','1682.46','20.871','0.295693','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010384','51277','638','1','8','0','0','-1528.02','1671.32','21.0208','4.86278','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010385','51277','638','1','8','0','0','-1533.32','1621.69','20.486','1.24602','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010386','51277','638','1','8','0','0','-1526.8','1632.63','20.486','1.00647','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010387','51277','638','1','8','0','0','-1524.22','1632.87','20.486','0.225003','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010388','51277','638','1','8','0','0','-1519.74','1639.3','20.486','0.849395','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010389','51277','638','1','8','0','0','-1519.74','1639.3','20.486','0.849395','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010390','51277','638','1','8','0','0','-1513.13','1646.82','20.486','0.849395','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010391','51277','638','1','8','0','0','-1507.79','1652.84','20.486','0.845468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010392','51277','638','1','8','0','0','-1501.52','1659.92','20.486','0.845468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010393','51277','638','1','8','0','0','-1494.28','1668.09','20.486','0.845468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010394','51277','638','1','8','0','0','-1487.64','1675.58','20.486','0.845468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010395','51277','638','1','8','0','0','-1491.16','1680.63','20.486','2.47124','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010396','51277','638','1','8','0','0','-1498.07','1683.7','20.486','2.72257','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010397','51277','638','1','8','0','0','-1508.39','1688.4','20.486','2.66759','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010398','51277','638','1','8','0','0','-1516.11','1692.51','20.486','2.65188','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010399','51277','638','1','8','0','0','-1533.26','1704.35','20.486','2.51051','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010400','51277','638','1','8','0','0','-1544.15','1707.74','20.486','4.60753','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010401','51277','638','1','8','0','0','-1516.16','1697.14','20.486','5.83667','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010402','51277','638','1','8','0','0','-1491.49','1685.62','20.486','5.65211','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010403','51277','638','1','8','0','0','-1480.01','1675.49','20.486','5.52644','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010404','51277','638','1','8','0','0','-1474.69','1670.42','20.486','5.52252','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010405','51277','638','1','8','0','0','-1461.85','1663.11','20.486','5.88772','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010406','51277','638','1','8','0','0','-1458.09','1653.54','20.486','4.97666','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010407','51277','638','1','8','0','0','-1469.45','1652.51','20.486','3.20559','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010408','51277','638','1','8','0','0','-1478.44','1658.47','20.486','3.68076','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010409','51277','638','1','8','0','0','-1486.68','1651.43','20.486','4.30122','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010410','51277','638','1','8','0','0','-1497.29','1647.54','20.486','2.97783','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010411','51277','638','1','8','0','0','-1505.02','1639.25','20.486','3.9635','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010412','51277','638','1','8','0','0','-1513.4','1632.48','20.486','3.78286','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010413','51277','638','1','8','0','0','-1516.68','1620.67','20.486','4.44652','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010414','51277','638','1','8','0','0','-1527.03','1616.98','20.486','3.48441','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010415','51277','638','1','8','0','0','-1522.48','1607.52','20.486','0.963279','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010416','51277','638','1','8','0','0','-1511.99','1619.08','20.486','0.833688','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010417','51277','638','1','8','0','0','-1507','1624.57','20.486','0.833688','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010418','51277','638','1','8','0','0','-1500.5','1631.72','20.486','0.833688','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010419','51277','638','1','8','0','0','-1492.22','1640.85','20.486','0.833688','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010420','51277','638','1','8','0','0','-1485.9','1644.26','20.486','0.437062','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010421','51277','638','1','8','0','0','-1478.92','1647.52','20.486','0.892593','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010422','51277','638','1','8','0','0','-1474.38','1656.05','20.486','1.08109','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010423','51277','638','1','8','0','0','-1454.39','1647.31','20.486','4.13236','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010424','51277','638','1','8','0','0','-1461.83','1642.32','20.486','3.76322','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010425','51277','638','1','8','0','0','-1468.63','1637.15','20.486','3.79071','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010426','51277','638','1','8','0','0','-1480.44','1634.16','20.486','3.39016','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010427','51277','638','1','8','0','0','-1490.28','1619.68','20.486','4.15592','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010428','51277','638','1','8','0','0','-1493.96','1625.59','20.486','3.37445','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010429','51277','638','1','8','0','0','-1499.13','1613.33','20.486','4.313','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010430','51277','638','1','8','0','0','-1498.92','1624.64','20.486','3.72003','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010431','51277','638','1','8','0','0','-1503.79','1618.55','20.486','4.15199','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010432','51277','638','1','8','0','0','-1509.3','1609.69','20.486','4.15592','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010433','51277','638','1','8','0','0','-1511.78','1601.37','20.486','4.92561','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010434','51277','638','1','8','0','0','-1498.31','1601.16','20.486','0.315323','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010435','51277','638','1','8','0','0','-1495.12','1606.43','20.486','1.02611','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010436','51277','638','1','8','0','0','-1488.56','1609.9','20.486','0.484183','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010437','51277','638','1','8','0','0','-1486.87','1618.27','20.486','1.16355','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010438','51277','638','1','8','0','0','-1478.38','1622.41','20.486','0.452767','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010439','51277','638','1','8','0','0','-1475.41','1630.57','20.486','1.22246','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010440','51277','638','1','8','0','0','-1468.07','1629.53','20.486','6.15869','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010441','51277','638','1','8','0','0','-1462.8','1634.76','20.486','0.782634','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010442','51277','638','1','8','0','0','-1452.95','1639.13','20.486','0.417424','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010443','51277','638','1','8','0','0','-1443.25','1637.29','20.486','6.09585','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010444','51277','638','1','8','0','0','-1441.2','1628.64','20.486','4.6468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010445','51277','638','1','8','0','0','-1445.81','1629.26','20.486','3.4255','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010446','51277','638','1','8','0','0','-1450.03','1634.23','20.486','3.40194','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010447','51277','638','1','8','0','0','-1455.02','1629.22','20.486','4.26195','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010448','51277','638','1','8','0','0','-1448.1','1623.86','20.486','5.6521','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010449','51277','638','1','8','0','0','-1451.82','1617.85','20.486','4.01848','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010450','51277','638','1','8','0','0','-1456.74','1622.01','20.486','4.01062','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010451','51277','638','1','8','0','0','-1465.83','1624.37','20.486','4.01062','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010452','51277','638','1','8','0','0','-1470.39','1618.97','20.486','4.01062','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010453','51277','638','1','8','0','0','-1466.17','1613.84','20.486','5.40863','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010454','51277','638','1','8','0','0','-1459.59','1613.48','20.4856','0.89259','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010455','51277','638','1','8','0','0','-1460.19','1618.21','20.4856','1.74867','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010456','51277','638','1','8','0','0','-1470.54','1628.56','20.4856','3.14276','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010457','51277','638','1','8','0','0','-1478.15','1619.23','20.4856','4.68213','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010458','51277','638','1','8','0','0','-1474.82','1612.69','20.4856','5.33794','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010459','51277','638','1','8','0','0','-1466.74','1608.82','20.4856','5.83667','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010460','51277','638','1','8','0','0','-1469.65','1602.22','20.4856','4.29729','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010461','51277','638','1','8','0','0','-1470.23','1607.51','20.4856','3.35481','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010462','51277','638','1','8','0','0','-1477','1606.04','20.4856','3.35481','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010463','51277','638','1','8','0','0','-1481.01','1611.78','20.4856','2.18064','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010464','51277','638','1','8','0','0','-1485.13','1605.36','20.4856','4.15984','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010465','51277','638','1','8','0','0','-1482.22','1601.77','20.4856','5.39292','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010466','51277','638','1','8','0','0','-1477.85','1596.12','20.4856','5.33009','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010467','51277','638','1','8','0','0','-1484.06','1589.95','20.4856','3.92422','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010468','51277','638','1','8','0','0','-1489.12','1594.58','20.4856','2.40055','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010469','51277','638','1','8','0','0','-1488.36','1598.57','20.4856','1.38346','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010470','51277','638','1','8','0','0','-1494.35','1601.47','20.4856','3.3391','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010471','51277','638','1','8','0','0','-1495.06','1593.8','20.4856','4.62323','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010472','51277','638','1','8','0','0','-1493.68','1587.44','20.4856','4.9256','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010473','51277','638','1','8','0','0','-1492.49','1580.9','20.4856','4.74104','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010474','51277','638','1','8','0','0','-1497.4','1577.65','20.4856','3.71217','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010475','51277','638','1','8','0','0','-1495.53','1585.33','20.4856','2.2474','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010476','51277','638','1','8','0','0','-1499.56','1590.08','20.4856','2.27489','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010477','51277','638','1','8','0','0','-1506.76','1591.15','20.4856','2.99745','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010478','51277','638','1','8','0','0','-1505.22','1581.97','20.536','4.92168','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010479','51277','638','1','8','0','0','-1502.54','1568.01','20.4856','3.64933','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010480','51277','638','1','8','0','0','-1498.68','1558.86','20.4858','4.44651','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010481','51277','638','1','8','0','0','-1502.02','1556.09','20.4858','3.84176','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010482','51277','638','1','8','0','0','-1505.99','1550.32','20.4858','5.07876','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010483','51277','638','1','8','0','0','-1498.99','1545.42','20.7554','5.6953','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010484','51277','638','1','8','0','0','-1494.44','1547.4','20.8929','0.574499','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010485','51277','638','1','8','0','0','-1493.85','1553.39','20.4926','1.47378','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010486','51277','638','1','8','0','0','-1489.74','1561.35','20.6524','1.05752','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010487','51277','638','1','8','0','0','-1482.27','1562.91','20.4933','0.205361','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010488','51277','638','1','8','0','0','-1483.44','1573.13','20.4856','1.53268','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010489','51277','638','1','8','0','0','-1473.9','1576.41','20.4856','0.331025','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010490','51277','638','1','8','0','0','-1472.33','1588.2','20.4856','1.39917','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010491','51277','638','1','8','0','0','-1461.77','1592.13','20.7209','0.354587','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010492','51277','638','1','8','0','0','-1458.57','1600.72','20.7059','1.2146','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010493','51277','638','1','8','0','0','-1450.34','1605.22','20.8452','0.499886','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010494','51277','638','1','8','0','0','-1442.19','1604.46','20.72','6.1901','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010495','51277','638','1','8','0','0','-1434.27','1597.77','20.6181','5.28296','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010496','51277','638','1','8','0','0','-1435.65','1588.56','20.5479','4.56432','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010497','51277','638','1','8','0','0','-1431.02','1581.22','20.5876','5.27511','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010498','51277','638','1','8','0','0','-1422.21','1576.17','20.4957','6.11548','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010499','51277','638','1','8','0','0','-1418.33','1583.46','20.4849','1.11642','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010500','51277','638','1','8','0','0','-1422.54','1594.93','20.4849','2.11781','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010501','51277','638','1','8','0','0','-1416.72','1601.93','20.4849','1.30885','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010502','51277','638','1','8','0','0','-1424.39','1609.6','20.4849','2.48694','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010503','51277','638','1','8','0','0','-1432.08','1611.99','20.4849','2.63617','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010504','51277','638','1','8','0','0','-1436.09','1617.56','20.4889','2.18064','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010505','51277','638','1','8','0','0','-1433.79','1625.63','20.4861','1.29314','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010506','51277','638','1','8','0','0','-1438.5','1634.31','20.4861','1.97251','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010507','51277','638','1','8','0','0','-1428','1622.85','20.4861','5.32616','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010508','51277','638','1','8','0','0','-1420.19','1609.09','20.4861','5.33009','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010509','51277','638','1','8','0','0','-1417.51','1595.42','20.4861','4.90597','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010510','51277','638','1','8','0','0','-1412.93','1588.21','20.4843','5.22013','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010511','51277','638','1','8','0','0','-1411.72','1581.6','20.4807','4.89027','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010512','51277','638','1','8','0','0','-1412.36','1575.23','20.4792','4.41117','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010513','51277','638','1','8','0','0','-1413.36','1567.45','20.4792','4.58396','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010514','51277','638','1','8','0','0','-1409.33','1574.21','20.4743','0.692313','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010515','51277','638','1','8','0','0','-1407.49','1566.39','20.4681','4.85493','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010516','51277','638','1','8','0','0','-1406.98','1560.12','20.4638','4.10487','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010517','51277','638','1','8','0','0','-1411.21','1554.37','20.4708','4.07738','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010518','51277','638','1','8','0','0','-1405.25','1552.57','20.4565','5.98983','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010519','51277','638','1','8','0','0','-1406.05','1545.19','20.458','4.6036','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010520','51277','638','1','8','0','0','-1401.83','1542.58','20.4436','5.24763','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010521','51277','638','1','8','0','0','-1407.36','1531.8','20.4654','4.23839','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010522','51277','638','1','8','0','0','-1401.48','1524.76','20.4533','5.05521','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010523','51277','638','1','8','0','0','-1401.8','1516.92','20.4593','4.66644','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010524','51277','638','1','8','0','0','-1409.76','1510.86','21.0801','2.82468','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010525','51277','638','1','8','0','0','-1406.85','1515.72','20.4709','1.33242','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010526','51277','638','1','8','0','0','-1407.08','1521.32','20.4691','1.61124','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010527','51277','638','1','8','0','0','-1424.12','1549.57','20.6926','4.74498','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010528','51277','638','1','8','0','0','-1421.74','1538.56','20.5454','4.93347','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010529','51277','638','1','8','0','0','-1419.05','1525.89','20.638','4.92169','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010530','51277','638','1','8','0','0','-1420.95','1515.56','20.5658','4.51329','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010531','51277','638','1','8','0','0','-1428.78','1510.27','20.4941','3.73574','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010532','51277','638','1','8','0','0','-1439.34','1505.5','20.5879','3.18989','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010533','51277','638','1','8','0','0','-1438.13','1513.46','20.548','1.41489','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010534','51277','638','1','8','0','0','-1433.4','1524.28','20.8475','1.15571','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010535','51277','638','1','8','0','0','-1428.83','1534.66','20.6403','1.15571','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010536','51277','638','1','8','0','0','-1430.01','1543.82','20.542','1.72905','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010537','51277','638','1','8','0','0','-1432.67','1557.43','20.486','1.76439','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010538','51277','638','1','8','0','0','-1434.41','1566.29','20.558','1.76439','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010539','51277','638','1','8','0','0','-1440.28','1573.78','20.6655','2.23563','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010540','51277','638','1','8','0','0','-1451.77','1588.44','20.641','1.61517','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010541','51277','638','1','8','0','0','-1444.5','1592.05','20.7422','5.96627','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010542','51277','638','1','8','0','0','-1448.41','1581.78','20.4963','4.34835','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010543','51277','638','1','8','0','0','-1447.04','1574.13','20.5611','4.89028','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010544','51277','638','1','8','0','0','-1443.41','1553.95','20.4868','4.89028','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010545','51277','638','1','8','0','0','-1441.52','1543.47','20.4868','4.89028','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010546','51277','638','1','8','0','0','-1439.73','1533.48','20.4896','4.89028','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010547','51277','638','1','8','0','0','-1441.81','1527.31','20.6442','4.38763','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010548','51277','638','1','8','0','0','-1446.67','1519.13','20.5938','4.05383','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010549','51277','638','1','8','0','0','-1455.77','1515.49','20.6068','3.51976','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010550','51277','638','1','8','0','0','-1470.02','1509.83','20.7723','3.51976','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010551','51277','638','1','8','0','0','-1478.67','1506.39','20.5173','3.51976','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010552','51277','638','1','8','0','0','-1486.58','1508.25','20.8019','2.76185','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010553','51277','638','1','8','0','0','-1488.74','1517.88','20.6759','1.79188','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010554','51277','638','1','8','0','0','-1487.71','1527.34','20.8151','1.4306','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010555','51277','638','1','8','0','0','-1486.32','1534.49','20.657','1.37955','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010556','51277','638','1','8','0','0','-1480.81','1541.55','20.5401','0.900457','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010557','51277','638','1','8','0','0','-1474.87','1548.9','20.6034','0.888676','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010558','51277','638','1','8','0','0','-1469.45','1555.41','20.4854','0.872968','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010559','51277','638','1','8','0','0','-1460.25','1572.31','20.6195','1.27352','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010560','51277','638','1','8','0','0','-1457.02','1585.5','20.9245','1.77618','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010561','51277','638','1','8','0','0','-1463.63','1581.55','20.587','3.79465','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010562','51277','638','1','8','0','0','-1470.22','1561.59','20.4855','4.25804','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010563','51277','638','1','8','0','0','-1482.99','1551.9','20.8542','3.79072','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010564','51277','638','1','8','0','0','-1497.16','1531.9','20.4868','4.32479','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010565','51277','638','1','8','0','0','-1478.06','1521.18','20.6982','0.319258','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010566','51277','638','1','8','0','0','-1470.6','1528.48','20.7876','1.37562','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010567','51277','638','1','8','0','0','-1470.26','1539.95','20.4854','1.54055','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010568','51277','638','1','8','0','0','-1464.44','1548.7','20.4854','0.959358','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010569','51277','638','1','8','0','0','-1457.97','1552.74','20.4854','0.692322','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010570','51277','638','1','8','0','0','-1447.67','1563.23','20.4854','0.794424','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010571','51277','638','1','8','0','0','-1460.82','1561.75','20.4856','2.92678','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010572','51277','638','1','8','0','0','-1453.52','1568.33','20.6904','1.32849','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010573','51277','638','1','8','0','0','-1440.22','1567.5','20.6189','4.2384','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010574','51277','638','1','8','0','0','-1423.88','1525.41','20.4996','5.45184','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010575','51277','638','1','8','0','0','-1434.15','1528.8','20.8942','2.82075','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010576','51277','638','1','8','0','0','-1452.85','1528.88','20.4984','3.453','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010577','51277','638','1','8','0','0','-1460.14','1523.9','20.5179','3.74359','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010578','51277','638','1','8','0','0','-1467.26','1519.46','20.4938','3.67684','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010579','51277','638','1','8','0','0','-1479.24','1514.2','20.4883','3.46478','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010580','51277','638','1','8','0','0','-1481.91','1527.08','20.9271','0.731592','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010581','51277','638','1','8','0','0','-1475.35','1558.76','20.4906','1.41096','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010582','51277','638','1','8','0','0','-1467.1','1584.31','20.8438','1.1989','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010583','51277','638','1','8','0','0','-1485.43','1549.4','20.5993','5.18873','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010584','51277','638','1','8','0','0','-1474.4','1537.73','20.486','5.49503','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010585','51277','638','1','8','0','0','-1452.86','1519.98','20.6278','5.69138','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010586','51277','638','1','8','0','0','-1447.6','1509.6','20.5906','5.12197','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010587','51277','638','1','8','0','0','-1421.61','1532.62','20.6837','1.56804','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010588','51277','638','1','8','0','0','-1446.69','1552.1','20.4858','2.40842','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010589','51277','638','1','8','0','0','-1460.96','1568.99','20.4856','2.26705','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010590','51277','638','1','8','0','0','-1474.33','1584.73','20.486','2.2749','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010591','51277','638','1','8','0','0','-1453.26','1597.48','20.6669','3.54725','300','5','0','102','0','0','1','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010592','51277','638','1','8','0','0','-1494.51','1537.77','20.5567','3.97922','300','5','0','102','0','0','1','0','0','0');


DELETE FROM creature WHERE id=35317;

UPDATE creature_template SET minlevel=10,maxlevel=10,IconName='vehicleCursor',spell1=67279,VehicleId=156 WHERE entry=35317;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010593','35317','638','1','8','0','0','-1527.83','1588.18','26.5366','0.817992','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010594','35317','638','1','8','0','0','-1521.16','1574.68','26.5361','0.519543','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010595','35317','638','1','8','0','0','-1519.6','1551.24','28.1079','0.158258','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010596','35317','638','1','8','0','0','-1522.6','1558.18','28.1043','0.154331','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010597','35317','638','1','8','0','0','-1538.69','1592.31','26.5382','1.30887','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010598','35317','638','1','8','0','0','-1548.5','1592.15','26.5372','1.517','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010599','35317','638','1','8','0','0','-1565.94','1596.62','28.1118','1.63088','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010600','35317','638','1','8','0','0','-1558.95','1594.01','28.1019','1.4738','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010601','35317','638','1','8','0','0','-1525.14','1566.01','26.5376','0.154331','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010602','35317','638','1','8','0','0','-1510.06','1568.36','22.6373','0.154331','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010603','35317','638','1','8','0','0','-1511.97','1590.07','21.4477','0.609862','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010604','35317','638','1','8','0','0','-1521.39','1603.56','20.5208','0.735526','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010605','35317','638','1','8','0','0','-1532.45','1611.3','20.4857','1.18713','300','0','0','1020','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010606','35317','638','1','8','0','0','-1549.05','1610.38','20.4858','0.739451','300','0','0','1020','115','0','0','0','0','0');


DELETE FROM creature WHERE id=36057;

UPDATE creature_template SET minlevel=4,maxlevel=5,equipment_id=36057 WHERE entry=36057;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010607','36057','638','1','8','0','0','-1529.79','1590.29','26.5363','0.842342','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010608','36057','638','1','8','0','0','-1524.94','1585.14','26.5367','0.795218','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010609','36057','638','1','8','0','0','-1524.32','1577.31','26.537','0.744168','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010610','36057','638','1','8','0','0','-1524.05','1564.46','26.539','0.0726521','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010611','36057','638','1','8','0','0','-1512.6','1565.29','23.4603','0.0726521','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010612','36057','638','1','8','0','0','-1513.36','1574.71','24.8589','0.214024','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010613','36057','638','1','8','0','0','-1516.13','1583.53','24.854','0.536037','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010614','36057','638','1','8','0','0','-1521.11','1591.48','25.0436','0.559599','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010615','36057','638','1','8','0','0','-1528.76','1597.39','25.0723','1.08189','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010616','36057','638','1','8','0','0','-1536.07','1601.28','25.2233','1.08189','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010617','36057','638','1','8','0','0','-1543.11','1603.16','24.6627','1.51386','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010618','36057','638','1','8','0','0','-1550.79','1600.62','24.9914','1.57669','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010619','36057','638','1','8','0','0','-1542.7','1590.72','26.5372','1.31751','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010620','36057','638','1','8','0','0','-1554.68','1591.52','26.5489','1.00335','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010621','36057','638','1','8','0','0','-1562.38','1593.99','28.0996','1.60418','300','0','0','294','115','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010622','36057','638','1','8','0','0','-1523.9','1554.17','28.0987','0.131561','300','0','0','294','115','0','0','0','0','0');

UPDATE quest_template SET OfferRewardText='Brace yourself, $N.\n
Here they come. ',RequestItemsText='We must take out as many of them as we can, $N.' WHERE entry=14212;

UPDATE creature_template SET minlevel=5,maxlevel=5,equipment_id=107 WHERE entry=35618;

DELETE FROM creature WHERE id=35618;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010623','35618','638','1','8','0','0','-1542.56','1572.8','29.2042','0.803078','300','0','0','98','115','0','0','0','0','0');
update creature set spawntimesecs=30 where id=51277;

UPDATE quest_template SET OfferRewardText='You\'ve done well, $N.  You\'ve done more than could be asked of any Gilnean.\n
We\'re running low on ammunition.  It\'s time to regroup inside now. ', RequestItemsText='We must take out as many of them as we can, $N.' WHERE entry=14218;

DELETE FROM creature WHERE guid IN(1010625,1010624);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010624','36057','638','1','1032','0','0','-1583.06','1520.91','29.23','1.04929','300','0','0','126','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010625','36057','638','1','1032','0','0','-1595.84','1533.87','29.2309','0.499513','300','0','0','126','0','0','0','0','0','0');

DELETE FROM creature_addon WHERE guid IN(1010625,1010624);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES 
('1010625', '333'),
('1010624', '333');

UPDATE creature_template SET minlevel=5,maxlevel=5, equipment_id=35566 WHERE entry=35566;
DELETE FROM creature WHERE id=35566;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010626','35566','638','1','1032','0','0','-1622.66','1494.56','33.5409','0.830169','300','0','0','462','0','0','0','0','0','0');


DELETE FROM quest_end_scripts WHERE id=14221;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14221', '0', '15', '76642', '2');

UPDATE quest_template SET QuestFlags=524288,OfferRewardText='We\'ve given them everything we have... yet still they come.  Do not worry, $N.  We\'ll slay many more before today is over. ',CompleteScript=14221 WHERE entry=14221;

DELETE FROM creature_template_addon WHERE entry=35911;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35911','0','2410','0','0','0',NULL);

DELETE FROM creature_template_addon WHERE entry=35551;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES('35551','0','2410','0','0','0',NULL);



DELETE FROM creature WHERE id=35627;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010966','35627','638','1','1024','0','0','-1584.64','1510.42','29.2301','6.03697','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010967','35627','638','1','1024','0','0','-1587.99','1507.24','29.2301','5.47934','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010968','35627','638','1','1024','0','0','-1610.51','1530.03','29.2291','2.45555','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010969','35627','638','1','1024','0','0','-1606.33','1533.55','29.2291','0.700189','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010970','35627','638','1','1024','0','0','-1578.4','1544.46','29.214','1.21462','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010971','35627','638','1','1024','0','0','-1573.29','1538.14','29.2132','5.39294','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010972','35627','638','1','1024','0','0','-1576.73','1530.87','29.2261','4.26982','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010973','35627','638','1','1024','0','0','-1588.47','1536.94','29.2268','2.72259','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010974','35627','638','1','1024','0','0','-1592.22','1530.95','29.231','4.15594','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010975','35627','638','1','1024','0','0','-1590.4','1523.03','29.2342','4.96097','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010976','35627','638','1','1024','0','0','-1580.84','1536.02','29.2231','0.845484','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010977','35627','638','1','1024','0','0','-1568.21','1548.03','29.2029','0.751237','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010978','35627','638','1','1024','0','0','-1557.87','1548.22','29.1904','6.21368','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010979','35627','638','1','1024','0','0','-1565.73','1561.74','29.2033','0.83763','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010980','35627','638','1','1024','0','0','-1556.35','1568.24','29.1906','0.221093','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010981','35627','638','1','1024','0','0','-1546.95','1563.62','29.1935','5.38116','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010982','35627','638','1','1024','0','0','-1551.55','1554.72','29.1995','3.96352','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010983','35627','638','1','1024','0','0','-1582.33','1541.05','29.2228','3.5394','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010984','35627','638','1','1024','0','0','-1604.83','1525.88','29.2362','3.88262','30','0','0','102','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010985','35627','638','1','1024','0','0','-1594.73','1515.1','29.2452','3.89833','30','0','0','102','0','0','0','0','0','0');


UPDATE creature_template SET minlevel=4,maxlevel=5,faction_A=14,faction_H=14 WHERE entry=35627;
UPDATE creature SET curhealth=102,spawntimesecs=30,MovementType=1,spawndist=3 WHERE id=35627;

DELETE FROM creature WHERE guid IN(1010986,1010989,1010987,1010988);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010986','36057','638','1','1024','0','0','-1589.47','1532.09','29.2288','0.7693','300','0','0','306','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010987','36057','638','1','1024','0','0','-1585.69','1528.55','29.2288','0.812497','300','0','0','258','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010988','36057','638','1','1024','0','0','-1584.84','1523.62','29.231','0.7693','300','0','0','258','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1010989','36057','638','1','1024','0','0','-1585.37','1532.14','29.2268','0.686833','300','0','0','258','0','0','0','0','0','0');

DELETE FROM creature_addon WHERE guid IN(1010625,1010624);
DELETE FROM creature_addon WHERE guid BETWEEN 1010986 AND 1010989;
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES 
('1010986', '333'),
('1010987', '333'),
('1010988', '333'),
('1010989', '333');


UPDATE quest_template SET QuestFlags=524288,OfferRewardText='They... they\'ve stopped coming.\n
No, $N.  That\'s not a good thing. ',StartScript=14222,CompleteScript=14222 WHERE entry=14222;

DELETE FROM quest_start_scripts WHERE id=14222;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14222', '0', '15', '67503', '2');

DELETE FROM quest_end_scripts WHERE id=14222;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14222', '0', '15', '72794', '2');

DELETE FROM quest_end_scripts WHERE id=14222;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('14222', '0', '14', '67503', '0');


DELETE FROM `event_scripts` WHERE id = 10675;
INSERT INTO `event_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('10675', '10', '17318', '110000', '-5107.50', '-11253.13', '1.2873', '6.15');

DELETE FROM `script_texts` WHERE `npc_entry` IN(17318, 17243);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `type`, `comment`) VALUES 
('17318', '-1000629', 'What\'s the big idea, Spark? Why\'d you call for this meeting?', '0', 'GEEZLE_1'),
('17243', '-1000630', 'What\'s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.', '0', 'GEEZLE_2'),
('17243', '-1000631', 'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.', '0', 'GEEZLE_1'),
('17318', '-1000632', 'Relax, Spark! I have it all under control. We\'ll strip mine the Exodar right out from under \'em - making both you and I very, very rich in the process.', '0', 'GEEZLE_1'),
('17243', '-1000633', 'Relax? Do you know what Kael\'thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.', '0', 'GEEZLE_1'),
('17243', '-1000634', 'Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless long enough for us to strike! Now get out of my sight before I vaporize you...', '0', 'GEEZLE_1'),
('17318', '-1000635', 'Yes, sir. It won\'t happen again...', '0', 'GEEZLE_1'),
('17318', '-1000636', 'Engineer "Spark" Overgrind picks up the naga flag.', '2', 'EMOTE1');

UPDATE `quest_template` SET `ReqCreatureOrGOId1`='-180916', `ReqCreatureOrGOId2`='-180919', `ReqCreatureOrGOId3`='-180920', `ReqCreatureOrGOCount1`='1', `ReqCreatureOrGOCount2`='1', `ReqCreatureOrGOCount3`='1' WHERE (`entry`='8889');
UPDATE `gameobject_template` SET `flags`='4' WHERE entry IN ('180916', '180919', '180920');

UPDATE `areatrigger_teleport` SET `target_position_x`='3465.8', `target_position_y`='-4477.003', `target_position_z`='137.35', `target_orientation`='2.11' WHERE (`id`='4386');


-- Blood Elf Scout
SET @ENTRY := 16521;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,2000,35000,36000,11,25602,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Faerie Fire');

-- Surveyor Candress
SET @ENTRY := 16522;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Fireball Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Fireball Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,3200,3200,6300,6300,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball');

-- Blood Elf Bandit
SET @ENTRY := 17591;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,11,5916,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadowstalker Stealth'),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,6000,6000,11,14873,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sinister Strike'),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,13000,13000,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Backstab'),
(@ENTRY,0,3,0,0,0,100,0,18000,18000,37000,37000,11,15691,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Eviscerate');

-- Moongraze Buck
SET @ENTRY := 17201;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,1000,18000,18000,11,31274,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Knockdown');

-- Wrathscale Myrmidon
SET @ENTRY := 17194;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,6000,6000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Strike');

-- Wrathscale Naga
SET @ENTRY := 17193;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,9000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Hamstring');

-- Wrathscale Siren
SET @ENTRY := 17195;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,500,12000,12000,11,31273,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Screech');

-- Barbed Crawler
SET @ENTRY := 17217;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,31271,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Throns');

-- Barbed Crawler
SET @ENTRY := 31272;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,14000,14000,11,31273,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wind Shock');

-- Aberrant Owlbeast
SET @ENTRY := 17187;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,10000,10000,11,31270,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast moonfire');

-- Ravager Specimen
SET @ENTRY := 17199;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,2000,19000,19000,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend');

-- Raving Owlbeast
SET @ENTRY := 17188;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP');

-- Siltfin Hunter
SET @ENTRY := 17192;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,1,100,1,0,0,0,0,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw on Aggro');

-- Siltfin Oracle
SET @ENTRY := 17191;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,12550,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Shield on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Wrath Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Wrath Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,200,200,2300,2300,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath');

-- Stillpine Defender
SET @ENTRY := 17432;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,6000,6000,11,25710,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike');

-- Stillpine Raider
SET @ENTRY := 17495;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,6000,6000,11,25710,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike');

-- Death Ravager
SET @ENTRY := 17556;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,18000,18000,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend'),
(@ENTRY,0,1,0,0,0,100,0,6000,6000,24000,24000,11,30736,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Enraging Bite'),
(@ENTRY,0,2,0,0,0,100,0,5000,5000,68000,68000,11,3019,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frenzy');

-- Warlord Sriss'tiz
SET @ENTRY := 17298;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,18000,18000,11,31275,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Watery Strike');

-- Stillpine Hunter
SET @ENTRY := 17439;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES


(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,81655,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Chieftain Oomooroo
SET @ENTRY := 17448;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,1000,6000,6000,11,13446,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Strike'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,18501,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP');

-- Azuremyst Peacekeeper
SET @ENTRY := 18038;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES


(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Azuremyst Peacekeeper
SET @ENTRY := 51905;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES


(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Ammen Vale Guardian
SET @ENTRY := 16921;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES


(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- npc Veren Tallstrider || npc Morin Cloudstalker || npc Chillmere Coastrunner
UPDATE creature_template SET npcflag=3 WHERE entry IN(3050,2988,24459);

-- Bristleback Invader
SET @ENTRY := 36943;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback'),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,15000,16000,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast rend');

-- Plainstrider
SET @ENTRY := 2955;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,250,500,35000,37000,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sprint');

-- Bristleback Invaders
SET @ENTRY := 2952;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback');

-- Young Battleboar

SET @ENTRY := 2966;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,20000,21000,11,79581,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Angry Snort');

-- Bristleback Gun Thief
SET @ENTRY := 36708;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,81655,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,9,0,100,0,5,30,2000,30000,11,81654,0,0,0,0,0,2,0,0,0,0,0,0,0,'Clumsy Shot'),
(@ENTRY,0,9,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback');

-- Bristleback Thorncaller
SET @ENTRY := 36697;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback'),
(@ENTRY,0,1,0,0,0,100,1,2000,3000,16000,17500,11,31287,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Entangling Roots');

-- Thornguard
SET @ENTRY := 43599;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback'),
(@ENTRY,0,1,0,0,0,100,0,3300,8300,8900,10000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');

-- Armored Battleboar
SET @ENTRY := 36696;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,500,1000,24000,25000,11,3385,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Boar Charge');

-- "Pokey" Thornmantle
SET @ENTRY := 43720;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2500,5000,25000,27500,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,'Quillhorn');

-- Chief Squealer Thornmantle
SET @ENTRY := 36712;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2500,5000,25000,27500,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,'Quillhorn'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,30000,31000,11,81695,0,0,0,0,0,2,0,0,0,0,0,0,0,'Torch Toss');

-- Fledgling Brave
SET @ENTRY := 36942;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,81655,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,60,3500,4100,11,81655,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot Gun'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,0,0,100,0,3300,8300,8900,10000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');

-- Snagglespear
SET @ENTRY := 5786;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,5000,9000,21000,25000,11,81705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Scalp Slash'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP');

-- Adult Plainstrider
SET @ENTRY := 2956;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,250,500,35000,37000,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sprint'),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,20000,23000,11,81678,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Eye Peck');

-- Grimtotem Straggler
SET @ENTRY := 36825;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,10000,21000,24000,11,80382,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dirt Toss'),
(@ENTRY,0,1,0,0,0,100,0,500,1000,18000,18500,11,78648,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Grim Totem');

-- Palemane Poacher
SET @ENTRY := 2951;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,81655,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,9,0,100,0,5,30,4000,30000,11,80009,0,0,0,0,0,2,0,0,0,0,0,0,0,'Serpent Sting');

-- Palemane Skinner
SET @ENTRY := 2950;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,5000,9000,21000,25000,11,81705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Scalp Slash');

-- Prairie Wolf
SET @ENTRY := 2958;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,5000,7000,52000,54000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Threatening Growl');

-- Swoop
SET @ENTRY := 2970;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,5300,7300,9900,11000,11,77522,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Swoop');

-- Wiry Swoop
SET @ENTRY := 2969;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,4000,5000,15000,16000,11,81680,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Howling Screech');

-- Arra'chea
SET @ENTRY := 3058;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,3000,4000,25000,26000,11,81140,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Thunderclap'),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,15000,16000,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rushing Charge');

-- Agitated Earth Spirit
SET @ENTRY := 36845;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,500,1000,11500,12000,11,81305,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rock Barrage');

-- Grimtotem Defiler
SET @ENTRY := 36828;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,20000,21000,11,78705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison Bottle'),
(@ENTRY,0,1,0,0,0,100,0,500,1000,18000,18500,11,78648,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Grim Totem');

-- Grimtotem Vagabond
SET @ENTRY := 36827;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2500,22000,22500,11,80146,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bonk'),
(@ENTRY,0,1,0,0,0,100,0,500,1000,18000,18500,11,78648,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Grim Totem');

-- Venture Co. Laborer
SET @ENTRY := 2976;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,1000,20000,25000,11,81772,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Overtime');

-- Mazzranache
SET @ENTRY := 3068;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,3000,16000,17000,11,24331,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rake'),
(@ENTRY,0,1,0,0,0,100,0,3500,4000,21000,21500,11,7272,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dust Cloud'),
(@ENTRY,0,2,0,0,0,100,0,500,1000,25000,26000,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rushing Charge');

-- Kodo Calf
SET @ENTRY := 2972;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,15000,16000,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rushing Charge');

-- Prairie Stalker
SET @ENTRY := 2959;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,16000,17000,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Leaping Rush');

-- Venture Co. Supervisor
SET @ENTRY := 2979;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,4000,5000,20000,21000,11,81754,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Motivate'),
(@ENTRY,0,1,0,0,0,100,0,500,1000,35000,36000,11,81753,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Threatening Shout');

-- Venture Co. Worker
SET @ENTRY := 2978;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,250,500,39000,40000,11,53824,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw'),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,48000,49000,11,81753,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pierce Armor');


-- Windfury Harpy
SET @ENTRY := 2962;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,250,500,19000,20000,11,19514,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield'),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,15000,15000,11,81707,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Windfury');

-- Windfury Wind Witch
SET @ENTRY := 2963;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,81181,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Air Blast on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Air Blast Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Air Blast Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,4500,4750,9500,9750,11,81181,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Air Blast'),
(@ENTRY,0,12,0,0,0,100,0,3500,4000,15250,15500,11,81707,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Windfury');


-- Supervisor Fizsprocket
SET @ENTRY := 3051;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,4000,5000,20000,21000,11,81754,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Motivate'),
(@ENTRY,0,1,0,0,0,100,0,500,1000,119000,120000,11,79733,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Commanding Shout'),
(@ENTRY,0,2,0,0,0,100,0,1500,2000,16000,17000,11,81764,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw Lantern');

-- Doomsayer Wiserunner <Twilight's Hammer>
SET @ENTRY := 43613;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,79849,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Molten Armor on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Fireball Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Fireball Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,400,400,6500,6500,11,79854,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,12,0,0,0,100,0,3500,3500,20000,20000,11,79857,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blast Wave');

-- Enforcer Emilgund
SET @ENTRY := 5787;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,3000,15000,16000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Uppercut'),
(@ENTRY,0,1,0,0,0,100,0,4000,4000,21000,22000,11,81173,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frenzy');

-- Elder Plainstrider
SET @ENTRY := 2957;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,250,500,35000,37000,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sprint'),
(@ENTRY,0,1,0,0,0,100,0,1000,1500,20000,21000,11,7272,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dust Cloud');

-- Grimtotem Vagabond
SET @ENTRY := 36832;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,500,18000,18500,11,78648,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Grim Totem'),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,21000,21000,11,78828,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Grim Totem');

-- Taloned Swoop
SET @ENTRY := 2971;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,4000,5000,15000,16000,11,81680,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Howling Screech'),
(@ENTRY,0,1,0,0,0,100,0,5300,7300,9900,11000,11,77522,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Swoop');

-- Flatland Prowler
SET @ENTRY := 3566;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,11,81683,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Prowl');

-- The Rake
SET @ENTRY := 5807;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,3000,25000,26000,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Leaping Rush');

-- Bristleback Interloper
SET @ENTRY := 3232;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,81653,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bristleback'),
(@ENTRY,0,1,0,0,0,100,0,2000,3000,10000,11000,11,79584,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fan of Knives');

-- Prairie Wolf Alpha
SET @ENTRY := 2960;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,3000,25000,26000,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Leaping Rush'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,52000,53000,11,5781,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Threatening Growl');


-- Windfury Matriarch
SET @ENTRY := 2965;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,81707,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast WindFury on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Lightning Bolt Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Lightning Bolt Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,200,200,3300,3300,11,79884,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt');

-- Grimtotem Defender
SET @ENTRY := 37178;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,10000,11000,11,77558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bloody Strike');

-- Hulfnar Stonetotem
SET @ENTRY := 10599;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,23000,24000,11,16740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast War Stomp');

-- Thunder Bluff Brave
SET @ENTRY := 37175;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,500,1000,9700,10000,11,81502,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Clave');

-- Una Wildmane
SET @ENTRY := 37024;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,1126,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of the Wild');

-- Orno Grimtotem
SET @ENTRY := 36931;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,10000,11000,11,77558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bloody Strike');

-- Sister Hatelash
SET @ENTRY := 5785;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,81181,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Air Blast on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Air Blast Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Air Blast Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,4500,4750,9500,9750,11,81181,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Air Blast'),
(@ENTRY,0,12,0,0,0,100,0,3500,4000,15250,15500,11,81707,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Windfury'),
(@ENTRY,0,13,0,0,0,100,0,8000,8000,21000,21000,11,32914,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wing Buffet');

-- Kodo Bull
SET @ENTRY := 2973;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,7000,8000,11,5568,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Trample');

-- Thontek Rumblehoof
SET @ENTRY := 10600;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,23000,24000,11,16740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast War Stomp');

-- Kodo Matriarch
SET @ENTRY := 2974;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,1000,2000,7000,8000,11,5568,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Trample');

-- Brave Darksky
SET @ENTRY := 3220;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Brave Leaping Deer
SET @ENTRY := 3219;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Brave Wildrunner
SET @ENTRY := 3222;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Mulgore Protector
SET @ENTRY := 51515;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Brave Lightninghorn
SET @ENTRY := 3211;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Camp Narache Brave
SET @ENTRY := 7975;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Brave Running Wolf
SET @ENTRY := 3213;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Bluffwatcher
SET @ENTRY := 3084;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,18395,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dismounting Shot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,45,3500,4100,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,1,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,1,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,1,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range'),
(@ENTRY,0,8,0,9,0,100,0,5,30,4000,30000,11,18395,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dismounting Shot'),
(@ENTRY,0,9,0,0,0,100,0,3000,3000,20000,21000,11,12024,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Net'),
(@ENTRY,0,10,0,0,0,100,0,5000,5000,11000,11000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Strike'),
(@ENTRY,0,11,0,0,0,100,0,4000,4000,15000,15000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast BlackHand'),
(@ENTRY,0,12,0,0,0,100,0,6000,6000,17000,17000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Clave');

-- Ghost Howl 
SET @ENTRY := 3056;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@ENTRY,0,0,0,0,0,100,0,2000,3000,16000,17000,11,78832,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Blast'),
(@ENTRY,0,1,0,2,0,100,1,0,50,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 50% HP');

-- Windfury Sorceress 
SET @ENTRY := 2964;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,81707,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast WindFury on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Lightning Bolt Range'),
(@ENTRY,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Lightning Bolt Range'),
(@ENTRY,0,6,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,7,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,9,0,2,2,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 3 at 15% HP'),
(@ENTRY,0,10,0,7,3,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,11,0,0,0,100,0,300,300,6600,6600,11,79884,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,12,0,0,0,100,0,3500,3500,9700,9700,11,13322,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt');

-- quest Meet with Tyelis (28307)
UPDATE quest_template SET SkillOrClassMask='16', RequiredRaces='128', OfferRewardText='The Horde has need of your talents, $N.' WHERE entry=28307;
-- quest Meet with Shadow-Walker Zuru (28309)
UPDATE quest_template SET SkillOrClassMask='16', RequiredRaces='128', OfferRewardText='The Horde be needin\' you, $n.' WHERE entry=28309;
-- quest Meet with Sunwalker Atohmo (28302)
UPDATE quest_template SET SkillOrClassMask='2', RequiredRaces='32', OfferRewardText='The Horde will soon have need of your skills, $N.' WHERE entry=28302;
-- quest Meet with Master Pyreanor (28303)
UPDATE quest_template SET SkillOrClassMask='2', RequiredRaces='512', OfferRewardText='You are one of the most promising young paladins I have ever trained, $N. It is for that reason that I wish to offer you a dangerous mission.' WHERE entry=28303;

DELETE FROM `gameobject_template` WHERE entry = 401610;
INSERT INTO `gameobject_template` (`entry`, `type`, `name`, `data0`, `data1`, `data4`, `data6`) VALUES
('401610', '8', 'TEMP Flamestone at the Blazing Strand', '1610', '10', '13580', '0');

delete from `gameobject` where `id` = 401610;


insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('401610','1','1','1','5535.87','467.385','30.0655','5.04844','0','0','0.578896','-0.815401','300','0','1');

UPDATE `creature_template` SET `ScriptName`='npc_SoothingTotem' WHERE (`entry`='34367');

UPDATE `creature_template` SET `minlevel`='14', `maxlevel`='15', `faction_A`='2170', `faction_H`='2170', `mindmg`='13', `maxdmg`='18', `attackpower`='3', `baseattacktime`='2000' WHERE (`entry`='34368');
UPDATE `creature_template` SET `minlevel`='14', `maxlevel`='15', `faction_A`='2170', `faction_H`='2170', `mindmg`='10', `maxdmg`='15', `attackpower`='4', `baseattacktime`='2000' WHERE (`entry`='34370'); 	 	

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` = 44959 AND `ConditionTypeOrReference` = 24 AND `ConditionValue1` = 2 AND `ConditionValue2` = 32999;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES('18', '44959', '24', '2', '32999', 'Unbound Fire Elemental');

UPDATE `quest_template` SET `ReqCreatureOrGOId1`='-180516', `ReqCreatureOrGOCount1`='1' WHERE (`entry`='8345');

DELETE FROM `gameobject_involvedrelation` WHERE id = 181748;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('181748', '9565');
DELETE FROM `creature_questrelation` WHERE (`id`='16483') AND (`quest`='9283');

INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('46185', '86106', '27635', '1', '27635', '1');
UPDATE `creature` SET `spawntimesecs`='30' WHERE id = 46185;

delete from `spell_area` where spell = 80653;
insert into `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) values('80653','1','0','0','27635','0','64','2','1');

UPDATE `quest_template` SET `ReqCreatureOrGOId1`='5504', `ReqCreatureOrGOCount1`='4', `EndText`=NULL WHERE (`entry`='24852');
UPDATE `gameobject_template` SET `ScriptName`='go_quilboar_cage' WHERE (`entry`='202112');

UPDATE `quest_template` SET `PrevQuestId`='14458', `ExclusiveGroup` ='-14456' WHERE entry IN(14456, 14455);
UPDATE `quest_template` SET `PrevQuestId`='14456', `ExclusiveGroup` ='-14461', `NextQuestId`='14460' WHERE entry IN(14461, 14459);
UPDATE `quest_template` SET `QuestFlags`='524288' WHERE (`entry`='14461');

UPDATE `quest_template` SET `OfferRewardText`='More trials lay ahead, $n, I hope you\'re prepared.' WHERE (`entry`='14458');
UPDATE `quest_template` SET `OfferRewardText`='With the corruptors slain, the Earth Mother will mend her own wounds in due time. $B The roots are not meant to thrive here, and will wither. Balance will return.' WHERE (`entry`='14455');
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. Respect your prey, and the danger it carries, but never fear it. In fear, you become prey yourself.' WHERE (`entry`='14456');
UPDATE `quest_template` SET `OfferRewardText`='Good work, $N. Those beasts could have been a greater threat than the quilboar themselves, if we had no taken action now.' WHERE (`entry`='14459');
UPDATE `quest_template` SET `OfferRewardText`='If you are prepared to leave Camp Narache behind, I will help call the spirits to guide you onwards.' WHERE (`entry`='23733');

UPDATE `creature_template` SET `VehicleId`='550', `ScriptName`='npc_eagle_spirit' WHERE (`entry`='36790');
UPDATE `quest_template` SET `PrevQuestId`='24215' WHERE (`entry`='14438');

delete from `gameobject` WHERE `id` =301640;
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('301640','1','1','1','-2930.82','-42.2283','189.554','5.54935','0','0','0.358739','-0.933438','300','0','1');
delete from `gameobject_template` WHERE `entry`=301640;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) values
('301640','8','0','TEMP Fargaze Mesa','','','','0','0','1','0','0','0','0','0','0','1640','8','0','0','24215','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','1');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry`='3035') AND (`item`='4805');

UPDATE `creature_template` SET `dynamicflags`='0' WHERE entry IN(44848, 44820, 44614, 44794, 44171, 44389);

UPDATE `quest_template` SET `QuestFlags` = QuestFlags|524288, `SpecialFlags`='4' WHERE entry IN(26966, 24528, 27023, 10069, 26918);

UPDATE `creature_template` SET `npcflag` = npcflag | 16777216 WHERE entry = 37738;

DELETE FROM `npc_spellclick_spells` WHERE npc_entry = 37738;
INSERT INTO `npc_spellclick_spells` VALUES(37738, 70441, 24570, 1, 0, 1, 0, 0, 0);
 	 	
UPDATE `creature_template` SET `minlevel`='32', `maxlevel`='32', `faction_A`='14', `faction_H`='14', `ScriptName`='npc_sabresnout' WHERE (`entry`='37513');
delete from `event_scripts` where id = 22771;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('22771', '1', '10', '37513', '250000', '-1874.3', '-1831.56', '90.1839', '0.05');

delete from `gameobject_template` where entry = 301637;
INSERT INTO `gameobject_template` (`entry`, `type`, `name`, `data0`, `data1`, `data6`) VALUES ('301637', '8', 'TEMP Bristleback Challenge Ring', '1637', '20', '0');

delete from `gameobject` where id = 301637;
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('301637','1','1','1','-1862.43','-1830.75','90.6434','0.0721821','0','0','0.0360832','0.999349','300','0','1');

UPDATE playercreateinfo SET position_x='1700.1993',position_y='1704.832',position_z='135.732',orientation='4.653' WHERE race=5;

UPDATE creature_template SET ScriptName='npc_agatha' WHERE entry=49044;
UPDATE creature SET spawndist=10,MovementType=1 WHERE id=1501;
DELETE FROM quest_start_scripts WHERE id=24959;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`)VALUES
('24959', '0', '15', '73523', '0');

UPDATE quest_template SET QuestFlags=0,StartScript=24959,RewSpellCast =0 WHERE entry=24959;


DELETE FROM waypoint_data WHERE id = 2507820;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`)VALUES
('2507820', '0', '1746.47', '1681.27', '139.130', '0', '0', '0', '100', '0'),
('2507820', '1', '1747.34', '1661.85', '139.130', '0', '0', '0', '100', '0'),
('2507820', '2', '1729.64', '1653.68', '136.014', '0', '0', '0', '100', '0'),
('2507820', '3', '1710.68', '1661.46', '139.130', '0', '0', '0', '100', '0'),
('2507820', '4', '1707.03', '1676.92', '141.09', '0', '0', '0', '100', '0'),
('2507820', '5', '1715.15', '1696.04', '139.201', '0', '0', '0', '100', '0'),
('2507820', '6', '1732.407', '1710.49', '142.325', '0', '0', '0', '100', '0'),
('2507820', '7', '1743.66', '1699.42', '141.680', '0', '0', '0', '100', '0');

UPDATE creature_addon SET path_id=2507820 WHERE guid=250782;
UPDATE creature_template SET MovementType=2 WHERE entry=49129;
UPDATE creature SET MovementType = 2 WHERE guid=250782;

UPDATE creature_template SET ScriptName='npc_rised_dead' WHERE entry=50374;

DELETE FROM script_texts WHERE npc_entry = 50374;
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
(50374,-1750374,'I never asked for this! Leave me alone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_rised_dead'),
(50374,-1750375,'If the Banshee Queen has offered me this chance, I will gladly serve.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_rised_dead'),
(50374,-1750376,'What...what\'s happening to me? Why have you done this to me? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_rised_dead'),
(50374,-1750377,'I should be dead and to death I will return!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_rised_dead');

DELETE FROM creature WHERE id =50373;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1014918','50373','0','1','1','0','50373','1694.73','1688.27','135.938','4.49671','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1014919','50373','0','1','1','0','50373','1707.56','1704.28','135.131','1.56324','300','0','0','42','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('1014923','50373','0','1','1','0','50373','1693.13','1681.39','135.902','4.56974','300','0','0','42','0','0','0','0','0','0');


DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=93446;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '93446', '0', '18', '1', '50373', '0',  'Raise Dead Trigger');

UPDATE creature_template SET modelid1= 27401,unit_flags=33554432 WHERE entry=50373;
UPDATE creature_template SET Scriptname='npc_deathknell_grave' WHERE entry=50373;


DELETE FROM creature_addon WHERE guid = 258144;
INSERT INTO creature_addon VALUES
('258144', '0', '0', '50331648', '1', '0' ,''); 

DELETE FROM creature_template_addon WHERE entry = 49044;
INSERT INTO creature_template_addon VALUES
('49044', '0', '0', '50331648', '1', '0' ,''); 

UPDATE creature SET position_z='136.347' WHERE id=49044;

DELETE FROM quest_start_scripts WHERE id=9756;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2` )VALUES
('9756', '0', '15', '31609', '2');

UPDATE quest_template SET StartScript=9756 WHERE entry=9756;
UPDATE quest_template SET ReqCreatureOrGOId1='-182026',ReqCreatureOrGOCount1='1' WHERE entry=9740;


DELETE FROM gameobject WHERE id =181898;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('85522','181898','530','1','1','-2158.83','-11376.7','65.9939','-1.91986','0','0','0','1','180','100','1'),
('85523','181898','530','1','1','-2014.98','-11348.5','65.6022','-2.3911','0','0','0','1','180','100','1'),
('85524','181898','530','1','1','-2144.11','-11395.2','68.0003','1.37881','0','0','0','1','180','100','1'),
('85525','181898','530','1','1','-2080.05','-11393.5','61.7525','0.191985','0','0','0','1','180','100','1'),
('85526','181898','530','1','1','-2057.14','-11409.9','57.8194','-1.67551','0','0','0','1','180','100','1'),
('85527','181898','530','1','1','-2005.52','-11315.5','62.9678','2.32129','0','0','0','1','180','100','1'),
('85528','181898','530','1','1','-2128.94','-11347.8','63.1824','-0.436332','0','0','0','1','180','100','1'),
('85529','181898','530','1','1','-2116.34','-11416.4','66.4483','2.65289','0','0','0','1','180','100','1'),
('85530','181898','530','1','1','-2090.86','-11338','62.1044','0.872664','0','0','0','1','180','100','1'),
('85531','181898','530','1','1','-2094.64','-11376.9','63.561','2.58308','0','0','0','1','180','100','1'),
('85532','181898','530','1','1','-2123.05','-11274.4','65.9207','2.94959','0','0','0','1','180','100','1'),
('85533','181898','530','1','1','-2090.29','-11311.2','63.2956','1.22173','0','0','0','1','180','100','1'),
('85534','181898','530','1','1','-2075.02','-11327','62.1804','0.401425','0','0','0','1','180','100','1'),
('85535','181898','530','1','1','-2108.11','-11325.4','63.2868','3.01941','0','0','0','1','180','100','1'),
('85536','181898','530','1','1','-2072.34','-11255.3','68.5893','-0.261798','0','0','0','1','180','100','1'),
('85537','181898','530','1','1','-2092.11','-11241.6','68.3309','3.05433','0','0','0','1','180','100','1'),
('85538','181898','530','1','1','-2093.05','-11278.7','64.9558','2.82743','0','0','0','1','180','100','1'),
('85539','181898','530','1','1','-2136.23','-11360.7','63.3872','-2.87979','0','0','0','1','180','100','1'),
('85540','181898','530','1','1','-2121.75','-11306.3','63.2741','-1.36136','0','0','0','1','180','100','1'),
('85541','181898','530','1','1','-2021.3','-11386.2','63.5603','-2.25147','0','0','0','1','180','100','1'),
('85542','181898','530','1','1','-2055.86','-11367.6','63.9101','1.43117','0','0','0','1','180','100','1'),
('85543','181898','530','1','1','-2072.56','-11347.1','62.1168','0.925024','0','0','0','1','180','100','1'),
('85544','181898','530','1','1','-2103.41','-11396.3','63.3343','-0.157079','0','0','0','1','180','100','1'),
('85545','181898','530','1','1','-2102.47','-11289.8','63.2742','-0.820303','0','0','0','1','180','100','1'),
('85546','181898','530','1','1','-2106.36','-11361.4','63.5015','2.84488','0','0','0','1','180','100','1'),
('85547','181898','530','1','1','-2073.55','-11372.2','63.8179','3.12412','0','0','0','1','180','100','1'),
('85548','181898','530','1','1','-2019.35','-11285.5','70.6607','-0.506145','0','0','0','1','180','100','1'),
('85549','181898','530','1','1','-2047.77','-11247.6','78.1543','-2.82743','0','0','0','1','180','100','1'),
('85550','181898','530','1','1','-2036.57','-11329.7','66.3521','0.95993','0','0','0','1','180','100','1'),
('85551','181898','530','1','1','-2074.02','-11286.2','65.4094','-1.0472','0','0','0','1','180','100','1'),
('85552','181898','530','1','1','-2114.61','-11316.9','63.3113','2.63544','0','0','0','1','180','100','1'),
('85553','181898','530','1','1','-2012.04','-11293.3','66.6079','2.02458','0','0','0','1','180','100','1'),
('85554','181898','530','1','1','-2126.77','-11243.8','66.185','-0.802851','0','0','0','1','180','100','1'),
('85555','181898','530','1','1','-2108.32','-11212','78.0577','1.69297','0','0','0','1','180','100','1'),
('85556','181898','530','1','1','-2050.69','-11285','67.2437','2.16421','0','0','0','1','180','100','1');

UPDATE gameobject_loot_template SET entry=181898 WHERE item=24236;

DELETE FROM gameobject_involvedrelation WHERE id =181756;
INSERT INTO gameobject_involvedrelation VALUES
(181756,9550);

UPDATE quest_template SET NextQuestId=6569 WHERE entry=6567;
UPDATE creature_loot_template SET ChanceOrQuestChance=96 WHERE entry=17496 AND item=23870;
UPDATE gameobject_template SET data2=11027,data3=3000 WHERE entry=181964;

DELETE FROM event_scripts WHERE id=11027;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`)VALUES
('11027', '2', '10', '17715', '90000', '0', '-1953.43', '-12887.1', '86.1', '0.86');

UPDATE gameobject_template SET ScriptName='go_princess' WHERE entry=181928;

DELETE FROM event_scripts WHERE id=11087;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`)VALUES
('11087', '3', '10', '17592', '90000', '0', '-1062.92', '-12594', '110.761', '0.492');

DELETE FROM gameobject_involvedrelation WHERE quest=9561;
INSERT INTO gameobject_involvedrelation VALUES
('181758','9561');

DELETE FROM gameobject_loot_template WHERE entry=182532;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182532', '23859', '-100', '1', '0', '1', '1');

UPDATE quest_template SET OfferRewardText='Ah, that\'s my parchment. I heard you\'d be coming to the Valley, $N. I\'m glad to see you made it--let\'s hope you survive the trials ahead.',RequestItemsText='What\'s that you have there?  A parchment?  You\'re not a scholar, I hope... ' WHERE entry=2383;
UPDATE creature_template SET npcflag=0, type_flags=8, unit_flags=32768 WHERE entry=3101;
UPDATE creature_template SET type_flags=8, unit_flags=32768 WHERE entry=3102;
UPDATE quest_template SET OfferRewardText='<Hana\'zua groans in pain.>' WHERE entry=25128;
UPDATE quest_template SET OfferRewardText='My blow was not enough to kill him, but looking at the damage I inflicted gives me some small measure of pride. That small measure will be all I have to sustain myself if I die, and in that light, the short list of my life\'s accomplishments fills me with anger. ',RequestItemsText='Ahhh... my father always said I would never amount to much, and here, lying beneath a tree as life seeps away, I\'m afraid it looks like he was right.\n
At least I wish to die knowing that my last enemy in life lays dead.' WHERE entry=25129;
UPDATE quest_template SET OfferRewardText='From your description of the beast, I believe you must be speaking of Sarkoth! It IS NO wonder that Hana\'zua was overtaken by it. Aid will be dispatched to him immediately, trouble yourself no more with Hana\'zua\'s plight.\n
However, I must say, I am most impressed to hear that you brought Sarkoth to death. It is a feat to be proud of, <name>. And that you would fight for a stranger\'s honor, while other tasks occupied your time, your own honor is heightened. ' WHERE entry=25130;
UPDATE quest_template SET OfferRewardText='Wonderful, $N! As promised, here is your cactus apple surprise plus a little something extra.', RequestItemsText='Have you finished collecting cactus apples?' WHERE entry=25136;
UPDATE quest_template SET OfferRewardText='Good, good.  Maybe they\'ll think twice before slacking next time!  Thanks for the help! ', RequestItemsText='No good lazy...\n
Eh?  Do you have my blackjack?  Did you catch any peons sleeping on the job?! ' WHERE entry=25134;
UPDATE quest_template SET OfferRewardText='There is an important lesson that you must take away from fighting scorpids. The smallest or largest of opponents can still send you to your doom. In fierce combat, any number of things can prove your downfall.\n
I have no more to teach you, $N. You have done well, and I will watch your progress with interest. ', RequestItemsText='The carapace of a scorpid isn\'t so thick that the strength of a determined warrior will be deterred. Strike strongly and without doubt, and the scorpids should prove easy prey.' WHERE entry=25127;
UPDATE quest_template SET RequiredRaces=0, PrevQuestId=2383, OfferRewardText='You understand now?  Good, let\'s try it out.', ReqSpellCast1=100 WHERE entry=25147;
UPDATE quest_template SET OfferRewardText='Great, you got it!  Thanks a lot, $N.  This is my favorite pick!  Now if my peons ever finish chopping down these trees, maybe we can find a nice cave to mine!', RequestItemsText='Have you entered the Burning Blade Coven, $N?  Did you find my pick? ' WHERE entry=25135;
UPDATE quest_template SET OfferRewardText='You have done well, $N.\n
Although the Vile Familiars were merely pets of the darker powers within the Burning Blade, your success against them foretells greater deeds ahead. ' WHERE entry=25131;
UPDATE quest_template SET OfferRewardText='You retrieved it!  Well done!\n
Your efforts within the Burning Blade Coven are key in rooting out this cult in the Valley of Trials.  But I fear they have further aims in our land.\n
We have not seen the end of them. ', RequestItemsText='Have you entered the Burning Blade Coven, $N?  Did you find my pick? ', RequestItemsText='Is your task complete, $N?' WHERE entry=25132;
UPDATE quest_template SET OfferRewardText= 'Hm... your report comes at a bad time.  The Burning Blade is no longer seen here in Sen\'jin, but we will be vigilant in our efforts to prevent their return to the area.\n
The orcs are friends of the Darkspear Trolls.  Honorable friends.  We want to help the orcs, but... we need help too. ' WHERE entry=25133;
UPDATE quest_template SET ReqCreatureOrGOId1='-3189',ReqCreatureOrGOId2='-3190',ReqCreatureOrGOId3='-3192',ReqCreatureOrGOCount1='1',ReqCreatureOrGOCount2='1',ReqCreatureOrGOCount3='1', OfferRewardText='Good work, hero.  You done good for Sen\'jin today.  No... you done good for all of Durotar.' WHERE entry=25169;
UPDATE creature_template SET speed_walk='0',speed_run='0',unit_flags=262148,dynamicflags=0 WHERE entry=39251;
UPDATE quest_template SET OfferRewardText= 'Thanks, $C.  The spirits can rest now.  As long as we show them respect they will bless us and our new home for a long time.  Spirits be with you, $N.', RequestItemsText='Have you gathered the masks, $C?' WHERE entry=26951;
UPDATE quest_template SET OfferRewardText= 'Ya mon, that\'s tha stuff.  Now we get the other jujus. ', RequestItemsText='You bring the jujus, I show you my mojo. ' WHERE entry=25170;
UPDATE creature_template SET AIName='EventAI' WHERE entry=39251;
DELETE FROM creature_ai_scripts WHERE creature_id =39251;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`,`action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)VALUES
('3925101', '39251', '6', '0', '100', '1', '0', '0', '0', '0', '41', '1000','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Northwatch Credit-ForceDespawn on Dead');
UPDATE quest_template SET OfferRewardText= 'Well, we\'ve stymied their efforts for now, but they\'re still here.  We\'ll have to press on, $N.' WHERE entry=25167;
UPDATE creature_template SET ScriptName='mob_scorpid' WHERE entry=3125;
UPDATE quest_template SET OfferRewardText='This is it!  The scorpid juju Bom\'bay been waitin\' for!  Now we gonna fix you right up, $C.\n
You come back to Bom\'bay when you be needin\' a pickup.  Bom\'bay got the spells to fix ya!' WHERE entry=25165;
UPDATE quest_template SET OfferRewardText='A battle well-fought, $C, but I still have my doubts about our effectiveness.  These humans don\'t seem to be going anywhere.\n
You, however, have done more than could reasonably be asked of any loyal member of the Horde.  Thank you.' WHERE entry=25168;
UPDATE quest_template SET OfferRewardText='That $R wants us to send help?  Bah, he can forget it.  I\'ve got my own human problems to worry about, and even those are the least of my worries right now.\n
Sen\'jin Village is right next to Echo Isles and the Valley of Trials.  Old Gadrin should find plenty of youngbloods to help him with his human infestation.' WHERE entry=25171;
UPDATE quest_template SET OfferRewardText='You have to get this meat to Orgrimmar?  That is no problem.  For a small fee, my wind rider can take you there.', RequestItemsText='You need to get somewhere fast?  Then you\'re talking to the right orc!' WHERE entry=6365;
UPDATE quest_template SET OfferRewardText='Word of your bravery travels fast, $C. Tales of your victory at Tiragarde Keep will be heralded in Orgrimmar. ' WHERE entry=25173;
UPDATE quest_template SET OfferRewardText='The scent of the sea hangs about you, $N.  Your efforts may have purchased another day for Razor Hill.\n
I will pass word of your deeds up my chain of command.  You have our gratitude. ' WHERE entry=25177;
UPDATE quest_template SET OfferRewardText='This is quite interesting.  These rites aren\'t all that different from the spells which are taught to Horde warlocks.  This merits further investigation!', RequestItemsText='The scrolls, $N, the scrolls! ' WHERE entry=25232;
UPDATE quest_template SET OfferRewardText='You\'re the one who handled the Burning Blade to the south?  I\'ve got ears in all kinds of places, boy, and word travels fast.' WHERE entry=25196;
UPDATE quest_template SET OfferRewardText='Hey, now isn\'t that just the thing! You\'ve got our supplies back for us. That\'s great. I\'ll be able to get back to work just as soon as I can find someone to haul these sacks for me. ',RequestItemsText='I\'m great at what I do, don\'t get me wrong, but this is ridiculous! What am I supposed to do, build sand castles? ' WHERE entry=834;
UPDATE quest_template SET OfferRewardText='I think I can breathe easy now, knowing that the harpies won\'t be bothering our supply caravans anymore. And not one moment too soon, either. I hear I\'m being sent some fun little toys with the next shipment!\n
You\'re pretty good at what you do, $N, you ought to track down my boss in Ratchet. I\'ll bet he could find some work for you.\n
Oh, and don\'t worry, I wouldn\'t forget to pay you for the service you provided me.' WHERE entry=835;
UPDATE quest_template SET OfferRewardText='See?  The shaman\'s tales are nothing but that... a youngling\'s bedtime stories.  The new Horde takes what it wants, and doesn\'t waste time with such frivolity.\n
If you get a chance, I recommend you tell Shin... and those like him... not to waste any more of your time. ' WHERE entry=25206;
UPDATE creature_questrelation SET id=3139 WHERE quest=25171;
UPDATE quest_template SET QuestFlags=0, NextQuestInChain=25178, OfferRewardText='You brought me my treasure!  What a sweetheart!', RequestItemsText='Has my knight in shining armor returned? ' WHERE entry = 25176;
UPDATE quest_template SET QuestFlags=0, NextQuestInChain=25227, PrevQuestId=25176, OfferRewardText='You really know how to treat a girl, you know that?  If you ever need anything... ', RequestItemsText='<Gail purrs disarmingly at you.>' WHERE entry = 25178;
UPDATE creature_template SET npcflag=3 WHERE entry=39423;
UPDATE quest_template SET OfferRewardText='Gail sent you?  Did... did she say anything about me? ' WHERE entry = 25227;
UPDATE quest_template SET OfferRewardText='Oh, wonderful!  Those are fine cuts!  These are from Grimtak, are they?  That orc sure knows his way into a lady\'s heart...\n
Oh, I can\'t wait to cook it.  But not too much!  Meat is best served rare, don\'t you think?', RequestItemsText='Something smells good!  You don\'t have raw meat on you, do you?' WHERE entry = 6384;
UPDATE quest_template SET OfferRewardText='You have to get this to Razor Hill in Durotar?  Yes, I can get you there... ', RequestItemsText='Do you need one of my wind riders?' WHERE entry = 6385;
UPDATE quest_template SET OfferRewardText='Hah!  I guess she liked it!  Nothing brings red to a lady\'s cheeks like a big, juicy steak!\n
Thank you, $N.  You\'ve done me a great service.  Here is some money for your trouble, and don\'t be surprised if I invite you to my wedding! ', RequestItemsText='Have you returned from Orgrimmar?  Did Gryshka like the meat I sent her? ' WHERE entry = 6386;
UPDATE quest_template SET OfferRewardText='<Raggaran appears to have calmed down a bit since your last encounter.>\n
Good, good.  One step closer to eliminating those beady-eyed, basket-wearing, hog-nosed, two-toed...\n
<Raggaran\'s anger is clearly rising again.>\n
...hunchbacked, squealing, prickly... no-good... gnome-loving... GREEEAAAAGH!  Quilboar! ', RequestItemsText='Have perish them!?' WHERE entry=25190;
UPDATE quest_template SET OfferRewardText='<Again, Raggaran appears calmer.>\n
You\'ve done well, stranger.\n
I\'m sorry you had to see me like that.  Thank you for killing the quilboar, but maybe you should leave before I fly into another one of my rages.', RequestItemsText='Have perish them!?' WHERE entry=25192;


DELETE FROM gameobject_template WHERE entry=3001657;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,  `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `WDBVerified`)VALUES
('3001657', '8', '629', 'Razor Hill Watchtower', '0', '1', '1657', '10', '0', '0', '25187', '13329');


UPDATE creature_template SET ScriptName='npc_waystrider' WHERE entry=39337;

DELETE FROM gameobject WHERE id='3001657';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('3001657', '1', '1', '1', '393.36', '-4582.50', '76.60', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '292.59', '-3733.21', '24.19', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '227.11', '-3726.76', '21.93', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '59.34', '-3724.18', '18.58', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '25.61', '-3729.29', '19.15', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '-19.46', '-3732.30', '18.02', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '-119.14', '-3751.81', '19.74', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '405.47', '-3748.59', '19.51', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '503.75', '-3748.54', '21.85', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '567.03', '-3744.76', '22.90', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '754.45', '-3748.71', '22.09', '0', '0', '0', '0', '0', '180', '100', '1'),
('3001657', '1', '1', '1', '816.71', '-3759.00', '19.53', '0', '0', '0', '0', '0', '180', '100', '1');
DELETE FROM gameobject_template WHERE entry=3001657;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,  `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `WDBVerified`)VALUES
('3001657', '8', '629', 'Razor Hill Watchtower', '0', '1', '1657', '10', '0', '0', '25187', '13329');

UPDATE creature_template SET npcflag=3 WHERE entry=39324;
UPDATE quest_template SET OfferRewardText='I love ALL the little animals, mon.  I love the big ones, too.  I just hate TO see you hurt them LIKE that... but it\'s for the best. ' WHERE entry=25194;
UPDATE quest_template SET OfferRewardText='Thank you, $R.  I will get to work on the necklace right away.\n
Before Kron died, I had made this for him to wear.  I have no use for it now, but perhaps you might.', RequestItemsText='Kron will be remembered. ' WHERE entry=25193;
UPDATE quest_template SET OfferRewardText='Oh, so Takrin sent you?\n
<Kargal warily eyes your recruitment letter and shoves it unceremoniously into his vest>\n
I\'ll sign this when you\'ve earned it. I\'ve got reports from down south that this whole continent is being torn apart. Meanwhile, we\'ve got supply caravans backed up to the river and outposts under siege from here to Stonetalon. You want to prove your worth to the horde? Start by proving it here.',RequestItemsText='What do you want, pup? If you\'re not here for recruitment, I don\'t have time for you. ' WHERE entry=840; 
UPDATE quest_template SET OfferRewardText='Vek\'nag sent you?  Without telling you that I need wagon wheels, nails, and rations?  That idiot. ' WHERE entry=25256;
UPDATE quest_template SET OfferRewardText='Ah, and where did you get this?  Good Margoz sent you to me, did he?\n
Well, let me take a closer look... ',RequestItemsText='My most humble greetings, $C.  How might I help my <race> brother today? ' WHERE entry=25263;
UPDATE quest_template SET OfferRewardText='This is not news to me.  While I appreciate your efforts, the Burning Blade will have to wait.  We have other matters to which we must attend. ' WHERE entry=25264;
UPDATE creature_template SET ScriptName='npc_griswold_hanniston' WHERE entry=39353;
UPDATE quest_template SET OfferRewardText='I\'m at a crossroads now, $N... you defeated him easily in combat, but then again, I did get him for free, and he\'s pretty cheap to feed.  Maybe we\'ll keep him around for a bit. ',RequestItemsText='How did you do.' WHERE entry=25258;
UPDATE quest_template SET OfferRewardText='I watched you fight out there.  How long you been a $C?\n
You\'re alright, kid. ',RequestItemsText='How\'d you fare?' WHERE entry=25257;
UPDATE quest_template SET OfferRewardText='Fine, here\'s the money... but you\'d better make yourself scarce before I reconsider my policy on keeping Horde slaves. ',RequestItemsText='You don\t stand a chance against Gaur.' WHERE entry=25259;

UPDATE creature SET position_x='562.496', position_y='-4104.35', position_z='16.78' WHERE id=39325;
UPDATE creature_template SET npcflag=3, ScriptName='npc_grand_tekla',MovementType=2 WHERE entry=39325;

DELETE FROM script_waypoint WHERE entry =39325;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(39325,0,562.496,-4104.35,16.78,4000, 'npc_grand_tekla'),
(39325,1,553.285,-4102.23,14.90,0, 'npc_grand_tekla'),
(39325,2,520.39,-4103.64,17.51,0, 'npc_grand_tekla'),
(39325,3,513.496,-4103.55,19.028,0, 'npc_grand_tekla'),
(39325,4,477.88,-4098.09,20.32,0, 'npc_grand_tekla'),
(39325,5,466.827,-4085.27,20.28,0, 'npc_grand_tekla'),
(39325,6,449.11,-4079.08,19.87,0, 'npc_grand_tekla'),
(39325,7,390.136,-4082.53,20.54,0, 'npc_grand_tekla'),
(39325,8,356.133,-4095.51,22.90,0, 'npc_grand_tekla'),
(39325,9,311.59,-4110.18,20.05,4000, 'npc_grand_tekla'),
(39325,10,311.59,-4110.18,20.05,1000, 'npc_grand_tekla'),
(39325,11,305.676,-4116.819,18.50,0, 'npc_grand_tekla'),
(39325,12,258.189,-4148.35,17.88,0, 'npc_grand_tekla'),
(39325,13,193.717,-4163.57,23.09,2000, 'npc_grand_tekla'),
(39325,14,193.717,-4163.57,23.09,1000, 'npc_grand_tekla'),
(39325,15,193.292,-4164.104,31.980,0, 'npc_grand_tekla'),
(39325,16,173.239,-4169.848,32.061,0, 'npc_grand_tekla'),
(39325,17,164.37,-4172.30,31.82,0, 'npc_grand_tekla'),
(39325,18,149.52,-4176.375,31.86,0, 'npc_grand_tekla'),
(39325,19,119.771,-4185.59,31.91,0, 'npc_grand_tekla'),
(39325,20,89.53,-4196.43,31.563,0, 'npc_grand_tekla'),
(39325,21,63.61,-4206.90,32.968,0, 'npc_grand_tekla'),
(39325,22,48.98,-4213.55,34.58,7000, 'npc_grand_tekla'),
(39325,23,48.98,-4213.55,34.58,5000, 'npc_grand_tekla');

UPDATE creature_template SET ScriptName='npc_griswold_hanniston' WHERE entry=39353;
UPDATE creature_template SET ScriptName='npc_ghislania' WHERE entry=39351;
UPDATE creature_template SET ScriptName='npc_gaur_icehorn' WHERE entry=39352;
UPDATE creature_template SET dynamicflags='32', ScriptName='npc_drowning_lizard' WHERE entry=39464;

DELETE FROM npc_spellclick_spells WHERE npc_entry = 39464;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`)VALUES
('39464', '73945', '25236', '1', '25236', '1', '0', '0', '0');

UPDATE quest_template SET SrcSpell=52909 WHERE entry=25236;

UPDATE creature_template SET dynamicflags='32', ScriptName='npc_fizzle' WHERE entry=3203;

UPDATE quest_template SET OfferRewardText='I ask for an orb, and you bring half of the goblin\'s arm with you?  I like the way you work.\n
Tell you what... you\'ve already given me a hand.  Allow me to return the favor. ', RequestItemsText='Run into any trouble on the way?' WHERE entry=25260;

UPDATE quest_template SET OfferRewardText='Welcome, $N.  Word reached me of your coming, and of your exploits in Durotar.\n
You are a <class> of growing skill and renown.\n
Stay on the pure path, and your future will be great indeed. ' WHERE entry=25261;

UPDATE quest_template SET OfferRewardText='Good.  Hiding within these collars is the secret behind the Burning Blade.  And I will uncover that secret...',RequestItemsText='Have you yet entered Skull Rock, $N?  Do you have the Searing Collars? ' WHERE entry=25262;

UPDATE creature SET spawndist='5', MovementType='1' WHERE id IN(3098,3102,3195,3197,3198,5822,3204,42504,10685);
UPDATE creature SET spawndist='25',MovementType='1' WHERE id IN(5823,39596,3108,3100,3124,3110,3281,3099,3300,3125,3106,39272,3122,3126,42859,3123,3118,39595,3117);
UPDATE creature SET spawndist='10',MovementType='1' WHERE id IN(39385,3116,3127,1420,3101,39261,39260,39268,39267,43331,39603,39452,3115,3114,3113,3112,3111);
UPDATE creature SET spawndist='0',MovementType='0' WHERE guid IN(242559,242429,241738,239225,239424);
UPDATE quest_template SET OfferRewardText='The electricity was only one of the dangers.  If those carcasses rot too long under the water, that entire source becomes undrinkable.\n
Well done, $C. ', RequestItemsText='I need that canyon clean, $N. Water is normally scarce in Durotar... we should take advantage of this.' WHERE entry=25236;

UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44564', `ReqSpellCast1`='2061' WHERE (`entry`='26919');
UPDATE `quest_template` SET `SkillOrClassMask`='-1', `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='100' WHERE (`entry`='24531');
UPDATE `quest_template` SET `SkillOrClassMask`='-2', `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='20271' WHERE (`entry`='24528');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='2098' WHERE (`entry`='24532');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44405', `ReqSpellCast1`='2061' WHERE (`entry`='24533');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='73899' WHERE (`entry`='24527');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='5143' WHERE (`entry`='24526');
UPDATE `quest_template` SET `ZoneOrSort`='-61', `ReqCreatureOrGOId1`='44389', `ReqSpellCast1`='348' WHERE (`entry`='26904');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44171', `ReqSpellCast1`='100' WHERE (`entry`='26204');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44171', `ReqSpellCast1`='2098' WHERE (`entry`='26207');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='42501', `ReqSpellCast1`='2061' WHERE (`entry`='26200');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44171', `ReqSpellCast1`='5143' WHERE (`entry`='26198');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44171', `ReqSpellCast1`='348' WHERE (`entry`='26201');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44848', `ReqSpellCast1`='100' WHERE (`entry`='27020');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='44848', `ReqSpellCast1`='73899' WHERE (`entry`='27027');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='45199', `ReqSpellCast1`='5185' WHERE (`entry`='27067');

UPDATE `quest_template` SET `QuestFlags`='786432' WHERE (`entry`='28167');
UPDATE `quest_template` SET `QuestFlags`='786432' WHERE entry IN(26197, 26199, 26202, 26203, 26206);
UPDATE `creature_template` SET `npcflag` ='3' WHERE entry = 2948;
DELETE FROM `creature` WHERE id = 731 AND map = 1;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-75' WHERE (`item`='33009');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= '13' AND `SourceEntry` = '42222';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES ('13', '42222', '18', '1', '23616');
 	 	
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You have heard the call of the Lich King, death knight. Now is the time to answer your master.', PrevQuestId = 0, NextQuestId = 0, NextQuestInChain = 12619,StartScript = 12593  WHERE entry=12593;
UPDATE quest_template SET RequestItemsText='The runeblade is an extension of your being. A death knight cannot battle without a runeblade.', OfferRewardText='The runeblade is an extension of your being. A death knight cannot battle without a runeblade.', PrevQuestId = 12593, NextQuestId = 0, NextQuestInChain = 12842 WHERE entry=12619;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='', PrevQuestId = 0, NextQuestId = 0, NextQuestInChain = 0 WHERE entry=12625;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='The time to spill the blood of our enemies approaches. You must first learn what it is that you seek to destroy, before rushing headlong into battle. It is what separates a death knight from a mindless ghoul.$B$BI will grant you sight beyond sight, my champion. You will use the eye of Acherus to gather information on our agents.', PrevQuestId = 12848, NextQuestId = 0, NextQuestInChain = 12641 WHERE entry=12636;
UPDATE quest_template SET RequestItemsText='Our assault upon the Scarlet Crusade will become legend.', OfferRewardText='They prepare for battle - as expected - but there is something else. I sense an old enemy. An enemy that I destroyed long ago...$B$BIt matters not. We will send the full might of the Scourge against them before they have a chance to evacuate their homes and put in place their defenses.', PrevQuestId = 12636, NextQuestId = 0, NextQuestInChain = 12657  WHERE entry=12641;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='The horns of war will soon echo across this land, waking the dead and calling forth the Scourge war machine. Woe unto those that would stand in our way!$B$BYou and your brethren will lead the charge, $N. When next I look upon the Scarlet lands, my sights will be obscured by the legions of Acherus. The march upon New Avalon begins now.', PrevQuestId = 12641, NextQuestId = 0, NextQuestInChain = 12850  WHERE entry=12657;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Do you smell it?$B$B<Valanar sniffs at the air.>$B$BFresh meat... The scent of Scarlet Crusader wafts through the air.$B$B<Valanar salivates.>$B$BApologies, death knight, I\'m sure you\'re not interested in my choice of fine cuisine. You are here to work! To lead the charge! Yes... I know. The Lich King has told me all that I need to know about you, $N.$B$BThe time for bloodshed is now.', PrevQuestId = 12850, NextQuestId = 0, NextQuestInChain = 12678  WHERE entry=12670;
UPDATE quest_template SET RequestItemsText='This is the opening sonata, $c. The Scourge death march begins with the eradication of the front lines.', OfferRewardText='Do you feel it, %N? That sensation is raw power coursing through your body. Such a thing cannot exist for mortals.$B$BThe front lines are now dismantled. The geist will finish the job and prepare the grounds for Razuvious. We turn our attention now to more practical targets.', PrevQuestId = 12670, NextQuestId = 0, NextQuestInChain = 0  WHERE entry=12678;
UPDATE quest_template SET RequestItemsText='The trajectories they are firing at would have most of the arrows land at or near the Havenshire Farm, south of us.', OfferRewardText='Well done, death knight! You feed the Scourge war machine with your deeds!$B$BAh yes, your reward - as promised.', PrevQuestId = 12670, NextQuestId = 12697,ExclusiveGroup ='-12733', NextQuestInChain = 0  WHERE entry=12679;
UPDATE quest_template SET RequestItemsText='You don\'t want to walk forever, do you?', OfferRewardText='Now for the true test. Can you show mastery over an unbound charger and brutally overtake the thing that you desire most?', PrevQuestId = 12670, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12687 WHERE entry=12680;
UPDATE quest_template SET RequestItemsText='You must take the deathcharger by force, $c!', OfferRewardText='You have succeeded where most initiates fail, $N. For that you will be rewarded handsomely.$B$B<Salanar bows.>', PrevQuestId = 12680, NextQuestId = 12697,ExclusiveGroup ='-12733', NextQuestInChain = 0  WHERE entry=12687;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You have fought hard to invade the realm of the harvester... Wait.$B<Gothik looks at his notes.>$B$BMy apologies, $C. Old habits die hard.$B$BValanar sent you, then? I trust you are somewhat competent.$B$BI do have a gift for the Scarlet dogs. One that is sure to speed up their work in the mines.', PrevQuestId = 0, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12698  WHERE entry=12697;
UPDATE quest_template SET RequestItemsText='One small note: miners don\'t always become ghouls. Sometimes they turn into enraged spirits, hell-bent on killing you.', OfferRewardText='They now know that the mines are no longer safe. They will double their efforts in retreating, leaving their backs open to us!', PrevQuestId = 12697, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12700 WHERE entry=12698;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You have served us well, death knight. Few of your brethren have survived our initial attack upon the Scarlet interlopers. You remain as one of the strongest.$B<Prince Valanar nods.>$B$BEast of us, past the Havenshire Mine, is the coast - called Light\'s Point by the Scarlet Crusade. A thousand soldiers stand between us and their ships. Insurmountable? Hardly the point...', PrevQuestId = 12698, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12701 WHERE entry=12700;
UPDATE quest_template SET RequestItemsText='Death knights know no fear!', OfferRewardText='The entire Scarlet fleet wiped out in a matter of minutes! I will receive a commendation from the Lich King for this! $BAll that remains of the Scarlet Crusade now are the denizens of New Avalon.$B$BI\'ll set the fire starters and necromancers upon Havenshire immediately. You will carry my report to the Highlord!', PrevQuestId = 12700, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12706 WHERE entry=12701;
UPDATE quest_template SET RequestItemsText='I was certain you wouldn\'t make it back here in one piece, death knight. Perhaps there is more to you than I first surmised.', OfferRewardText='<Highlord Mograine reads over the report.>$B$BThe ENTIRE Scarlet fleet?$B$B<Highlord Mograine nods.>$B$BSuch power, $N... I have not seen such a display of domination in years... Since my father wielded...$B$B<Highlord Mograine shakes his head.>$B$BIt\'s not important...$B$BYes, your commendation, lest I forget.', PrevQuestId = 12701, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12714 WHERE entry=12706;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Atop the mailbox are several illegible letters and scrolls. Useless...$B$BPerhaps you should check inside?', PrevQuestId = 12670, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12711;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Havenshire is ours! A thousand corpses litter the ground, patiently awaiting rebirth. We now strike at our enemy with the awakened strength of the Scourge!$B$BThe ghouls have already begun their assault upon New Avalon. Our forces have moved in behind them and taken the Crypt of Remembrance.', PrevQuestId = 12706, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12715 WHERE entry=12714;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Hail, death knight. I am the blood lord, Keleseth, ruler of the southeastern reaches of Northrend. The Lich King has sought to utilize my talents in ending this mortal affront to the Scourge. As with all things the Lich King asks of me, I am happy to oblige. Of course, a sea of endless souls to sate my thirst certainly sweetened the deal, don\'t you think?', PrevQuestId = 12714, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12719 WHERE entry=12715;
UPDATE quest_template SET RequestItemsText='Have you gathered the materials I requested?', OfferRewardText='Perfect! Now give me a moment to get things set up.', PrevQuestId = 12715, NextQuestId = 12723,ExclusiveGroup = 0, NextQuestInChain = 12717 WHERE entry=12716;
UPDATE quest_template SET RequestItemsText='The plague cauldron stands idle.', OfferRewardText='The plague cauldron jumps to life when the skulls are placed inside.$B$BAfter a few seconds the plague cauldron grants you the dark and frothy splendor of Noth\'s Special Brew.', PrevQuestId = 12716, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12717;
UPDATE quest_template SET RequestItemsText='The plague cauldron bubbles and churns its toxic brew, spewing a thick gas all around.$B$BDo you have more Crusader skulls to place inside?', OfferRewardText='The plague cauldron jumps to life when the skulls are placed inside.$B$BAfter a few seconds the plague cauldron grants you the dark and frothy splendor of Noth\'s Special Brew.', PrevQuestId = 12717, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12718;
UPDATE quest_template SET RequestItemsText='There is nowhere to run!', OfferRewardText='The registry will tell us many things about the Scarlet insects.$B$B<Keleseth flips through the pages of the registry.>$B$BDeath rates, births, but most importantly, movement.$B$BLook here, $N, they have already sent three vessels abroad. Let me see here... Where are they headed?$B$B<Keleseth mutters something about latitude and longitude under his breath as he calculates the route.>$B$BWHAT? This is impossible. They sail to Northrend!$B$BBeside the coordinates are the words: "Crimson Dawn."', PrevQuestId = 12715, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12720 WHERE entry=12719;
UPDATE quest_template SET RequestItemsText='Use the persuaders on Scarlet Crusaders. One of them will eventually... crack.', OfferRewardText='An awakening? What nonsense do you speak, $g boy:girl;! What kind of fool would deliver their people into the very heart of the frozen wastes? Perhaps, though, this courier holds the answer.', PrevQuestId = 12719, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12723 WHERE entry=12720;
UPDATE quest_template SET RequestItemsText='Like lambs to the slaughter...', OfferRewardText='You are quite effective with that blade, $N. Perhaps, Lich King permitting, you would be interested in becoming one of my minions? Stratholme is looking for a new mayor.', PrevQuestId = 12715, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12722;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Looks like we\'ll let anyone into the dark order these days. When I was given the gift, things were different. Much different!$B$BAs to this courier...', PrevQuestId = 12720, NextQuestId = 12724,ExclusiveGroup = 0, NextQuestInChain = 12724 WHERE entry=12723;
UPDATE quest_template SET RequestItemsText='Tear the hold apart! The schedule is there!', OfferRewardText='<Orbaz flips through the schedule.>$B$BThese worthless cretins have been busy! Northern patrol routes, southern patrol routes, western patrol routes, eastern patrol routes, but nothing about their couriers\' routes. Wait a minute. What\'s this? It looks like a western patrol route, coming out of Western Plaguelands? This patrol will path through here today! I\'m going to need time to plan.', PrevQuestId = 12723, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12724;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You were foolish in coming after me. I failed. I should have been left for dead - now two of us might be killed.$B$B<Koltira shakes his head.>$B$BWe are death knights of the Scourge. This flies in the face of the dark brotherhood\'s covenants.$B$BThassarian, you blasted fool!', PrevQuestId = 12723, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12727 WHERE entry=12725;
UPDATE quest_template SET RequestItemsText='What of Koltira?', OfferRewardText='I\'ll feed this monster\'s head to the ghouls!$B$B<Thassarian tosses the head into the back room.>$B$BDid Koltira make it out?$B$B<Thassarian pauses.>$B$BI\'m certain he did. Those walls can\'t hold him.$B$BTime for some payback.', PrevQuestId = 12725, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12738  WHERE entry=12727;
UPDATE quest_template SET RequestItemsText='Have you completed Death\'s Challenge?', OfferRewardText='To the victor goes the glory, death knight! Well done! The Lich King looks upon you favorably this day.', PrevQuestId = 12670, NextQuestId = 12697,ExclusiveGroup ='-12733', NextQuestInChain = 0  WHERE entry=12733;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='They\'re only flesh and bone - no match for the Scourge.$B$BWe didn\'t find any of our brothers, but we did stumble upon something special.', PrevQuestId = 12727, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0  WHERE entry=12738;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 32,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751  WHERE entry=12739;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 1,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12742;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 8,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12743;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 4,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12744;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 64,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12745;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 1024,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12746;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 512,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12747;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 2,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12748;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 128,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12749;
UPDATE quest_template SET RequestItemsText='How does it feel?', OfferRewardText='Felt good, didn\'t it? You\'re not one of them anymore, $n. You\'re Scourge. You\'re one of us. Forever... ', RequiredRaces = 16,PrevQuestId = 12738, NextQuestId = 12751,ExclusiveGroup = 0, NextQuestInChain = 12751   WHERE entry=12750;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Another Scourge victory! These Scarlet dogs have nowhere left to run and hide. It\'s only a matter of time now...', PrevQuestId = 0, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12751;
UPDATE quest_template SET RequestItemsText='You\'re going to miss the courier and then I\'m going to be forced to kill you. By forced I mean I will take great pleasure in ending your life.$B$BHURRY UP!', OfferRewardText='<Orbaz reads the message.>$B$BThe armies of Hearthglen and Tirisfal will be marching into a massacre.$B$B<Orbaz smiles.>$B$BNow for the second part of the plan. You\'re going to deliver this message right into the hands of High General Abbendis. That\'s what the clothes are for...', PrevQuestId = 12751, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12755 WHERE entry=12754;
UPDATE quest_template SET RequestItemsText='Where have you been? You are two hours late. We were about to send a courier out to the High Commander.', OfferRewardText='<High General Abbendis reads the message.>$B$BDamn it! The armies of Hearthglen and Tirisfal must not reach New Avalon! The Scourge will slaughter them all.', PrevQuestId = 12754, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12756 WHERE entry=12755;
UPDATE quest_template SET RequestItemsText='<Orbaz laughs.>$B$BWhat is this? Some child\'s coloring book?', OfferRewardText='<Orbaz flips through the journal.>$B$BWhat rubbish! This is the "Crimson Dawn?"$B$BThey sail to their deaths! Let us turn our focus to the encroaching armies.', PrevQuestId = 12755, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12757 WHERE entry=12756;
UPDATE quest_template SET RequestItemsText='You did what?', OfferRewardText='You have become an instrument of doom, death knight! We will ravage these approaching armies and raise the dead as our own!', PrevQuestId = 12756, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0, StartScript = 12757 WHERE entry=12757;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You have served me well, $N. The mark of the Scourge has been burned into these Scarlet lands. You have reaped death and destruction for as far as the eye can see and delivered to me the last of the Scarlet armies.$B$B<The Lich King points to the ruins of Havenshire and the burning city of New Avalon.>$B$BIt is now time to finish what you started.', PrevQuestId = 12757, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12779 WHERE entry=12778;
UPDATE quest_template SET RequestItemsText='Kill them all...', OfferRewardText='Kneel, champion. I place this helm upon your head to complete your terrifying visage. Any that dare look upon your dark countenance will know that death comes. Let none stand so boldly against your king so as to face your merciless wrath, $N.$B$BThere remains only one final task...$B$B<The Lich King looks west.>$B$BLight\'s Hope Chapel.', PrevQuestId = 12778, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12800 WHERE entry=12779;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='The Highlord and the other death knights are preparing to strike! We will squeeze the last remnants of life out of this place.', PrevQuestId = 12779, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0   WHERE entry=12800;
UPDATE quest_template SET RequestItemsText='<Highlord Mograine nods.>', OfferRewardText='There will be no atonement for us, $N. We are forever damned to walk the earth as monsters. While the Lich King may have loosed his grip upon us, the specters of our past will forever haunt our memories.$B$BWe must make amends in the only way we know how: Death...$B$BI ask you now to join me in Acherus as a Knight of the Ebon Blade. Together we will destroy the Lich King and end the Scourge.', PrevQuestId = 12800, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 13165 WHERE entry=12801;
UPDATE quest_template SET RequestItemsText='Do not waste time, $N. We are on the brink of apocalypse!', OfferRewardText='Do not waste time, $N. We are on the brink of apocalypse!', PrevQuestId = 12619, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12848 WHERE entry=12842;
UPDATE quest_template SET RequestItemsText='Two lives, one key... Do not fail me, $N.', OfferRewardText='The horns of war will soon echo across this land, waking the dead and calling forth the Scourge war machine. Woe unto those that would stand in our way!$B$BYou and your brethren will lead the charge, $N. When I next look upon the Scarlet lands, my sights will be obscured by the legions of Acherus. The march upon New Avalon begins now.', PrevQuestId = 12842, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12636 WHERE entry=12848;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Within the Hall of Command you will find the schools of blood, frost and unholy. Each school has a trainer that can provide you with knowledge in the various dark arts.$B$BI, Lord Thorval, am the headmaster of the school of blood. Lady Alistra reigns over unholy and the arch-lich, Amal\'thazad, holds dominion over frost.$B$BYou must return here whenever you gain power and train!', PrevQuestId = 12657, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=12849;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='The war has begun, death knight! I shall place you on my finest gryphon and deliver you to Death\'s Breach. Chaos, death, destruction! You will herald in all of this and more!', PrevQuestId = 12657, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 12670 WHERE entry=12850;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='The Lich King has returned to Northrend, wounded by the Ashbringer, but the second floor still holds the last of his armies.', PrevQuestId = 12801, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 13166 WHERE entry=13165;
UPDATE quest_template SET RequestItemsText='Acherus will be ours!', OfferRewardText='Well done, death knight. The remaining Scourge will be dealt with in short order and the rebuilding process will begin anew.$B$BI have but one last task for you.', PrevQuestId = 13165, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=13166;
UPDATE quest_template SET RequestItemsText='You have mere moments to live.', OfferRewardText='<Varian stares off into the distance.>$B$BIndeed old friend... Blood and honor.$B$B<Varian affixes his gaze upon you.>$B$BWere it not for this letter from Tirion, you would be a stain upon my floor. Only an endorsement from one of the greatest paladins to ever live could have ensured your survival.$B$BWe... We will work together against the Scourge. Against the Lich King!$B$BGLORY TO THE ALLIANCE!', RequiredRaces = 1101,PrevQuestId = 13166, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=13188;
UPDATE quest_template SET RequestItemsText='An interesting turn of events.', OfferRewardText='Eitrigg is alive because of this paladin. He would have been executed had Lord Fordring not broken him out of Stratholme.$b$bTirion Fordring, to have sacrificed everything to save the life of an orc... I have ever only known one other human to make such a sacrifice.$b$b<Thrall blinks back a tear.>$b$bYou will be in my heart always, Taretha.$b$bYes. For Tirion Fordring and for Eitrigg! We will accept you as a member of the Horde and your order as allies.$b$bBlood and honor! For the Horde!', RequiredRaces = 690,PrevQuestId = 13166, NextQuestId = 0,ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry=13189;

DELETE FROM quest_start_scripts WHERE id=12593;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
('12593','3','15','58204','0');

DELETE FROM quest_start_scripts WHERE id=12757;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
('12757','3','15','53097','0');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `dataint`) VALUES
('12757','0','0','0','2000000008');

DELETE FROM db_script_string WHERE entry = 2000000008;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES('2000000008','Make haste, $N. Use the portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

UPDATE item_template SET spellid_1=51769 WHERE entry=38607;
UPDATE creature_template SET npcflag=3 WHERE entry IN(28911,29053,28444);

DELETE FROM item_loot_template WHERE entry=39418;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('39418','39371','-100','0','0','2','2');


DELETE FROM script_texts WHERE npc_entry = 28939;
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
(28939,-1609501,'I''ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE1'),
(28939,-1609502,'Tell me what you know about "Crimson Dawn" or the beatings will continue!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE2'),
(28939,-1609503,'I''m through being courteous with your kind, human! What is the "Crimson Dawn?"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE3'),
(28939,-1609504,'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I''ll end your suffering quickly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE4'),
(28939,-1609505,'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE5'),
(28939,-1609506,'What is the "Crimson Dawn?"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE6'),
(28939,-1609507,'"Crimson Dawn!" What is it! Speak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE7'),
(28939,-1609508,'You''ll be hanging in the gallows shortly, Scourge fiend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER1'),
(28939,-1609509,'You''ll have to kill me, monster! I will tell you NOTHING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER2'),
(28939,-1609510,'You hit like a girl. Honestly. Is that the best you can do?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER3'),
(28939,-1609511,'ARGH! You burned my last good tabard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER4'),
(28939,-1609512,'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER5'),
(28939,-1609513,'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER6'),
(28939,-1609514,'I''ll tell you everything! STOP! PLEASE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED1'),
(28939,-1609515,'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED2'),
(28939,-1609516,'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED3'),
(28939,-1609517,'I know very little else... The High General chooses who may go and who must stay behind. There''s nothing else... You must believe me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED4'),
(28939,-1609518,'LIES! The pain you are about to endure will be talked about for years to come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'break crusader SAY_PERSUADED5'),
(28939,-1609519,'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED6');


DELETE FROM script_texts WHERE npc_entry IN(28912,29001);
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
(28912,-1609561,'I''ll need to get my runeblade and armor... Just need a little more time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,399,'Koltira Deathweaver SAY_BREAKOUT1'),
(28912,-1609562,'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT2'),
(28912,-1609563,'Maintaining this barrier will require all of my concentration. Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,16,'Koltira Deathweaver SAY_BREAKOUT3'),
(28912,-1609564,'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT4'),
(28912,-1609565,'I can''t keep barrier up much longer... Where is that coward?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT5'),
(28912,-1609566,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT6'),
(28912,-1609567,'Stay in the anti-magic field! Make them come to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT7'),
(28912,-1609568,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT8'),
(28912,-1609569,'I''ll draw their fire, you make your escape behind me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT9'),
(28912,-1609570,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Koltira Deathweaver SAY_BREAKOUT10'),
(29001,-1609581,'The Crusade will purge your kind from this world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'High Inquisitor Valroth start'),
(29001,-1609582,'It seems that I''ll need to deal with you myself. The High Inquisitor comes for you, Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'High Inquisitor Valroth aggro'),
(29001,-1609583,'You have come seeking deliverance? I have come to deliver!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
(29001,-1609584,'LIGHT PURGE YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
(29001,-1609585,'Coward!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
(29001,-1609586,'High Inquisitor Valroth''s remains fall to the ground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'High Inquisitor Valroth death');


DELETE FROM `script_waypoint` WHERE `entry`=28912;
INSERT INTO `script_waypoint` VALUES
(28912,0,1653.518,-6038.374,127.585,0, 'Jump off'),
(28912,1,1653.978,-6034.614,127.585,5000, 'To Box'),
(28912,2,1653.854,-6034.726,127.585,500, 'Equip'),
(28912,3,1652.297,-6035.671,127.585,3000, 'Recover'),
(28912,4,1639.762,-6046.343,127.948,0, 'Escape'),
(28912,5,1640.963,-6028.119,134.740,0, ''),
(28912,6,1625.805,-6029.197,134.740,0, ''),
(28912,7,1626.845,-6015.085,134.740,0, ''),
(28912,8,1649.150,-6016.975,133.240,0, ''),
(28912,9,1653.063,-5974.844,132.652,5000, 'Mount'),
(28912,10,1654.747,-5926.424,121.191,0, 'Disappear');

DELETE FROM gameobject_loot_template WHERE entry = 191092;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('191092', '39510', '-100', '1', '0', '1', '1');


DELETE FROM script_texts WHERE npc_entry = 29032;
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
   (29032,-1609025,'Come to finish the job, have you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_1'),
   (29032,-1609026,'Come to finish the job, have ye?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_2'),
   (29032,-1609027,'Come ta finish da job, mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_3'),
   (29032,-1609028,'You''ll look me in the eyes when...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_1'),
   (29032,-1609029,'Well this son o'' Ironforge would like...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_2'),
   (29032,-1609030,'Ironic, isn''t it? To be killed...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_3'),
   (29032,-1609031,'If you''d allow me just one...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_4'),
   (29032,-1609032,'I''d like to stand for...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_5'),
   (29032,-1609033,'I want to die like an orc...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_6'),
   (29032,-1609034,'Dis troll gonna stand for da...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_7'),
   (29032,-1609035,'$N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NAME_1'),
   (29032,-1609036,'$N? Mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NAME_2'),
   (29032,-1609037,'$N, I''d recognize that face anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_1'),
   (29032,-1609038,'$N, I''d recognize those face tentacles anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_2'),
   (29032,-1609039,'$N, I''d recognize that face anywhere... What... What have they done to ye, $Glad:lass;?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_3'),
   (29032,-1609040,'$N, I''d recognize that decay anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_4'),
   (29032,-1609041,'$N, I''d recognize those horns anywhere... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_5'),
   (29032,-1609042,'$N, I''d recognize dem tusks anywhere... What... What have dey done ta you, mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_6'),
   (29032,-1609043,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_1'),
   (29032,-1609044,'Ye don''t remember me, do ye? Blasted Scourge... They''ve tried to drain ye o'' everything that made ye a righteous force o'' reckoning. Every last ounce o'' good... Everything that made you a $Gson:daughter; of Ironforge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_2'),
   (29032,-1609045,'You don''t remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_3'),
   (29032,-1609046,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_4'),
   (29032,-1609047,'You don''t remember me, do you? Blasted Scourge...They''ve tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_5'),
   (29032,-1609048,'You don''t remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep''s milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_6'),
   (29032,-1609049,'You don''t recognize me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_7'),
   (29032,-1609050,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_8'),
   (29032,-1609051,'You don''t remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin'' dat made ya a troll hero, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_9'),
   (29032,-1609052,'A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_THINK_1'),
   (29032,-1609053,'You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn''t you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_THINK_2'),
   (29032,-1609054,'Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin''dorei once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_3'),
   (29032,-1609055,'Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_4'),
   (29032,-1609056,'Think, $N. Think back. Try and remember the snow capped mountains o'' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o'' life, $N! Ye were a champion o'' the dwarves once! This isn''t ye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_5'),
   (29032,-1609057,'Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_6'),
   (29032,-1609058,'Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_7'),
   (29032,-1609059,'Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn''t you. You were a champion of the Horde once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_8'),
   (29032,-1609060,'Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_9'),
   (29032,-1609061,'TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_10'),
   (29032,-1609062,'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_1'),
   (29032,-1609063,'Listen to me, $N Ye must fight against the Lich King''s control. He''s a monster that wants to see this world - our world - in ruin. Don''t let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_2'),
   (29032,-1609064,'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_3'),
   (29032,-1609065,'Listen ta me, $Gbrudda:sista;. You must fight against da Lich King''s control. He be a monstar dat want ta see dis world - our world - be ruined. Don''t let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_4'),
   (29032,-1609066,'What''s going on in there? What''s taking so long, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'special_surprise SAY_PLAGUEFIST'),
   (29032,-1609067,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Silvermoon. This world is worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_1'),
   (29032,-1609068,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Argus. Don''t let that happen to this world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_2'),
   (29032,-1609069,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_3'),
   (29032,-1609070,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Tirisfal! This world is worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_4'),
   (29032,-1609071,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Gnomeregan! This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_5'),
   (29032,-1609072,'There... There''s no more time for me. I''m done for. FInish me off, $N. Do it or they''ll kill us both. $N...Remember Elwynn. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_6'),
   (29032,-1609073,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_7'),
   (29032,-1609074,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... For the Horde! This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_8'),
   (29032,-1609075,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Mulgore. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_9'),
   (29032,-1609076,'Der... Der''s no more time for me. I be done for. Finish me off $N. Do it or they''ll kill us both. $N... Remember Sen''jin Village, mon! Dis world be worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_10'),
   (29032,-1609077,'Do it, $N! Put me out of my misery!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_WAITING'),
   (29032,-1609078,'%s dies from his wounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'special_surprise EMOTE_DIES');


DELETE FROM script_texts WHERE npc_entry = 29076;
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
(29076,-1609531,'Hrm, what a strange tree. I must investigate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Scarlet Courier SAY_TREE1'),
(29076,-1609532,'What''s this!? This isn''t a tree at all! Guards! Guards!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Scarlet Courier SAY_TREE2');


DELETE FROM creature_questrelation WHERE `quest` = 12779;
DELETE FROM creature_questrelation WHERE `id` = 29110;
INSERT INTO creature_questrelation VALUES('29110', '12779');

DELETE FROM `script_waypoint` WHERE `entry`=29173;
INSERT INTO `script_waypoint` VALUES
   (29173,0,2431.639,-5137.05,83.843,0, 'intro'),
   (29173,1,2319.242,-5266.486,82.825,0, 'summon & on hold'),
   (29173,2,2318.775,-5266.832,82.783,0, 'cast light of dawn'),
   (29173,3,2280.812,-5284.091,82.608,0, 'move to here and start'),
   (29173,4,2280.727,-5286.839,82.930,0, 'move forward to talk'),
   (29173,5,2280.812,-5284.091,82.608,0, 'when baba pop'),
   (29173,6,2281.461,-5263.014,81.164,0, 'charge to lich king'),
   (29173,7,2257.479,-5296.702,82.165,0, 'being kicked by Lich King'),
   (29173,8,2261.237,-5294.983,82.167,0, 'throw'),
   (29173,9,2259.34,-5294.379,82.167,0, 'event end');

DELETE FROM script_texts WHERE npc_entry IN (28406,29519,29173);
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
   (29173,-1609201,'Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14677,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609202,'The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14678,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609203,'Death knights of Acherus, the death march begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14681,1,0,0,'Highlord Darion Mograine'),
-- intro
   (29173,-1609204,'Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14679,1,0,22,'Highlord Darion Mograine'),
   (29173,-1609205,'RISE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14680,1,0,15,'Highlord Darion Mograine'),
   (29173,-1609206,'The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14682,1,0,25,'Highlord Darion Mograine'),
-- During the fight
   (29173,-1609207,'Scourge armies approach!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Korfax, Champion of the Light'),
   (29173,-1609208,'Stand fast, brothers and sisters! The Light will prevail!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14487,1,0,0,'Lord Maxwell Tyrosus'),
   (29173,-1609209,'Kneel before the Highlord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14683,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609210,'You stand no chance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14684,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609211,'The Scourge will destroy this place!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14685,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609212,'Your life is forfeit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14686,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609213,'Life is meaningless without suffering.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14687,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609214,'How much longer will your forces hold out?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14688,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609215,'The Argent Dawn is finished!"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14689,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609216,'Spare no one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14690,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609217,'What is this?! My... I cannot strike...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14691,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609218,'Obey me, blade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14692,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609219,'You will do as I command! I am in control here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14693,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609220,'I can not... the blade fights me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14694,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609221,'What is happening to me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14695,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609222,'Power...wanes...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14696,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609223,'Ashbringer defies me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14697,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609224,'Minions, come to my aid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14698,0,0,0,'Highlord Darion Mograine'),
-- After the fight
   (29173,-1609225,'You cannot win, Darion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14584,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609226,'Bring them before the chapel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14585,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609227,'Stand down, death knights. We have lost... The Light... This place... No hope...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14699,0,0,68,'Highlord Darion Mograine'),
   (29173,-1609228,'Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14586,0,0,378,'Highlord Tirion Fordring'),
   (29173,-1609229,'Your master knows what lies beneath the chapel. It is why he dares not show his face! He''s sent you and your death knights to meet their doom, Darion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14587,0,0,25,'Highlord Tirion Fordring'),
   (29173,-1609230,'What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14588,0,0,1,'Highlord Tirion Fordring'),
   (29173,-1609231,'Save your breath, old man. It might be the last you ever draw.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14700,0,0,25,'Highlord Darion Mograine'),
   (29173,-1609232,'My son! My dear, beautiful boy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14493,0,0,0,'Highlord Alexandros Mograine'),
   (29173,-1609233,'Father!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14701,0,0,5,'Highlord Darion Mograine'),
   (29173,-1609234,'Argh...what...is...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14702,0,0,68,'Highlord Darion Mograine'),
   (29173,-1609235,'Father, you have returned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14703,0,0,0,'Darion Mograine'),
   (29173,-1609236,'You have been gone a long time, father. I thought...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14704,0,0,0,'Darion Mograine'),
   (29173,-1609237,'Nothing could have kept me away from here, Darion. Not from my home and family.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14494,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609238,'Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14705,0,0,6,'Darion Mograine'),
   (29173,-1609239,'Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn''t bear losing you. Even the thought...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14495,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609240,'If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14706,0,0,6,'Darion Mograine'),
   (29173,-1609241,'My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14496,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609242,'Do not forget...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14497,0,0,6,'Highlord Alexandros Mograine'),
   (29173,-1609243,'Touching...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14803,1,0,0,'The Lich King'),
   (29173,-1609244,'You have''ve betrayed me! You betrayed us all you monster! Face the might of Mograine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14707,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609245,'He''s mine now...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14805,0,0,0,'The Lich King'),
   (29173,-1609246,'Pathetic...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14804,0,0,0,'The Lich King'),
   (29173,-1609247,'You''re a damned monster, Arthas!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14589,0,0,25,'Highlord Tirion Fordring'),
   (29173,-1609248,'You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14806,0,0,1,'The Lich King'),
   (29173,-1609249,'How simple it was to draw the great Tirion Fordring out of hiding. You''ve left yourself exposed, paladin. Nothing will save you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14807,0,0,1,'The Lich King'),
   (29173,-1609250,'ATTACK!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14488,1,0,0,'Lord Maxwell Tyrosus'),
   (29173,-1609251,'APOCALYPSE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14808,1,0,0,'The Lich King'),
   (29173,-1609252,'That day is not today...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14708,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609253,'Tirion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14709,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609254,'ARTHAS!!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14591,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609255,'What is this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14809,1,0,0,'The Lich King'),
   (29173,-1609256,'Your end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14592,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609257,'Impossible...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14810,1,0,0,'The Lich King'),
   (29173,-1609258,'This... isn''t... over...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14811,1,0,25,'The Lich King'),
   (29173,-1609259,'When next we meet it won''t be on holy ground, paladin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14812,1,0,1,'The Lich King'),
   (29173,-1609260,'Rise, Darion, and listen...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14593,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609261,'We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14594,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609262,'And while such things can never be forgotten, we must remain vigilant in our cause!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14595,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609263,'The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14596,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609264,'I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14597,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609265,'The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14598,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609266,'We will take the fight to Arthas and tear down the walls of Icecrown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14599,0,0,15,'Highlord Tirion Fordring'),
   (29173,-1609267,'The Argent Crusade comes for you, Arthas!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14600,1,0,15,'Highlord Tirion Fordring'),
   (29173,-1609268,'So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14710,0,0,1,'Highlord Darion Mograine'),
-- Emotes
   (29173,-1609269,'Thousands of Scourge rise up at the Highlord''s command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609270,'The army marches towards Light''s Hope Chapel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609271,'After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609272,'%s flee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Orbaz'),
   (29173,-1609273,'%s kneels in defeat before Tirion Fordring.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609274,'%s arrives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Alexandros Mograine'),
   (29173,-1609275,'%s becomes a shade of his past, and walks up to his father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609276,'%s hugs his father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Darion Mograine'),
   (29173,-1609277,'%s disappears, and the Lich King appears.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Alexandros'),
   (29173,-1609278,'%s becomes himself again...and is now angry.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609279,'%s casts a spell on Tirion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609280,'%s gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Tirion Fordring'),
   (29173,-1609281,'%s casts a powerful spell, killing the Defenders and knocking back the others.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609282,'%s throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609283,'%s collapses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609284,'%s charges towards the Lich King, Ashbringer in hand and strikes the Lich King.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Tirion Fordring'),
   (29173,-1609285,'%s disappears. Tirion walks over to where Darion lay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609286,'Light washes over the chapel ? the Light of Dawn is uncovered.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (28406,-1609080,'No potions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_A'),
   (28406,-1609081,'Remember this day, $n, for it is the day that you will be thoroughly owned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_B'),
   (28406,-1609082,'I''m going to tear your heart out, cupcake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_C'),
   (28406,-1609083,'Don''t make me laugh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_D'),
   (28406,-1609084,'Here come the tears...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_E'),
   (28406,-1609085,'You have challenged death itself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_F'),
   (28406,-1609086,'The Lich King will see his true champion on this day!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_G'),
   (28406,-1609087,'You''re going down!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_H'),
   (28406,-1609088,'You don''t stand a chance, $n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_I'),
   (29519,-1609000,'You have made a grave error, fiend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_1'),
   (29519,-1609001,'I was a soldier of the Light once... Look at what I have become... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_2'),
   (29519,-1609002,'You are hopelessly outmatched\, $R.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_3'),
   (29519,-1609003,'They brand me unworthy? I will show them unmorthy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_4'),
   (29519,-1609004,'You will allow me a weapon and armor, yes?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_5'),
   (29519,-1609005,'I will win my freedom and leave this cursed place!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_6'),
   (29519,-1609006,'I will dismantle this festering hellhole!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_7'),
   (29519,-1609007,'There can be only one survivor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_8'),
   (29519,-1609008,'To battle!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_1'),
   (29519,-1609009,'Let your fears consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_2'),
   (29519,-1609010,'HAH! You can barely hold a blade! Yours will be a quick death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_3'),
   (29519,-1609011,'And now you die',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_4'),
   (29519,-1609012,'To battle!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_5'),
   (29519,-1609013,'There is no hope for our future...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_6'),
   (29519,-1609014,'Sate your hunger on cold steel\, $R',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_7'),
   (29519,-1609015,'It ends here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_8'),
   (29519,-1609016,'Death is the only cure!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_9');
   
DELETE FROM spell_target_position WHERE id = 53822;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`)VALUES
('53822', '0', '2353.53', '-5665.82', '426.028', '0.596');

DELETE FROM spell_area WHERE spell=51721;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`)VALUES
('51721', '4281', '12657', '0', '0', '0', '0', '2', '1'),
('51721', '4342', '12657', '0', '0', '0', '0', '2', '1');

UPDATE creature_template SET speed_run=2 WHERE entry=28782;

UPDATE creature_template SET ScriptName='npc_restless_earth' WHERE entry=36845;
DELETE FROM gameobject_involvedrelation WHERE id = 2908;
INSERT INTO gameobject_involvedrelation VALUES
('2908', '749');

UPDATE quest_template SET OfferRewardText='All sides of the crate are stamped with the sign of the Venture Co. Mining Division. Notes printed carefully on the side of the carton indicate that the contents are due for processing at one of their central plants.' WHERE entry=749;

UPDATE creature_template SET npcflag=3 WHERE entry=36644;
UPDATE creature_template SET AIName='EventAI' WHERE entry=15274;

DELETE FROM creature_ai_scripts WHERE creature_id = 15274;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT)VALUES
('1527400', '15274', '0', '0', '100', '0', '5000', '8000', '12000', '12000', '11', '25602', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Faeroe Fire'),
('1527401', '15274', '8', '0', '100', '0', '28730', '-1', '0', '0', '16', '15468', '28730', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Wyrm - Quest Credit for Casting Arcane Torrent (Quest: 8346)'),
('1527402', '15274', '8', '0', '100', '0', '50613', '-1', '0', '0', '16', '15468', '28730', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Wyrm - Quest Credit for Casting Arcane Torrent (Quest: 8346)'),
('1527403', '15274', '8', '0', '100', '0', '80483', '-1', '0', '0', '16', '15468', '28730', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Wyrm - Quest Credit for Casting Arcane Torrent (Quest: 8346)'),
('1527404', '15274', '8', '0', '100', '0', '25046', '-1', '0', '0', '16', '15468', '28730', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Wyrm - Quest Credit for Casting Arcane Torrent (Quest: 8346)'),
('1527405', '15274', '8', '0', '100', '0', '69179', '-1', '0', '0', '16', '15468', '28730', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Wyrm - Quest Credit for Casting Arcane Torrent (Quest: 8346)');

UPDATE quest_template SET ReqCreatureOrGOId1=15468 WHERE entry=8346;
UPDATE quest_template SET SpecialFlags = 2, PrevQuestId=8487 WHERE entry=8488;

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=27907;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '27907', '0', '18', '1', '15941', '0',  'Apprentice Ralen item belong'),
('13', '0', '27907', '0', '18', '1', '15945', '0',  'Apprentice Meledor item belong');

UPDATE quest_template SET OfferRewardText = 'You\'ve proven a capable student. When it is time to resume your training, return to me and I will show you other techniques.' WHERE entry = 26945;	
UPDATE quest_template SET RequestItemsText = 'How might I be of service to you, young one? Are you here to rest in the inn? Do you require a hearthstone?', OfferRewardText = 'Ah yes, the delivery of herbs from Shadowglen. It is shame Porthannius could not bring it himself, for we have much to discuss, he and I. But I am glad to get the herbs nonetheless, and I am glad you came. $b $bWhile you are here, please, rest yourself. Heroes must keep their strenght and spirits high, and must find rest and solace whenever they may. For to neglect one\'s peace of body and mind is a sure path to failure. $b $bSo... rest.' WHERE entry = 2159;
UPDATE quest_template SET RequestItemsText = 'Greeting, $c. For what purpose do I owe the pleasure of our meeting?', OfferRewardText = 'Ah, I see. You were sent by Tenaron. Well then, it would seem we have much to talk about, much to do. $b$bBefore we get to the task at hand, you should take in the lesson of this moonwell.' WHERE entry = 28731;
UPDATE quest_template SET RequestItemsText = 'How can I help you?', OfferRewardText = 'That\'s very thoughful of Nyoma. For a few coins, I can arrange quick transportation to the capital by hippogryph.' WHERE entry = 6344;
UPDATE quest_template SET RequestItemsText = 'Hello again, $N. Have you completed your task?', OfferRewardText = 'It is only natural that our race, once immortal and revered, would struggle with regarding ourselves in the humbled manner that we likely should. We must remember to embrace our connection with nature, and with Elune, and push aside our mortal shortcomings.' WHERE entry = 929;
UPDATE quest_template SET OfferRewardText = 'Thank the forest spirits you are here! I knew Athridas would sense trouble and send help.' WHERE entry = 475;
UPDATE quest_template SET RequestItemsText = 'Are you ready to return to Dolanaar?', OfferRewardText = 'Do you need a ride back to Dolanaar?' WHERE entry = 6342;
UPDATE quest_template SET RequestItemsText = 'You have something for me? ', OfferRewardText = 'Ah, it\'s here!  I have waited for this rare earth for quite some time. I hope it\'s still fresh... $B $B Thank you for bringing it to me, $N.  You are a $R who is generous with his time.' WHERE entry = 997;
UPDATE quest_template SET OfferRewardText = 'I am finally free of the control of the Gnarlpine. Thank you, $N. $B $B My spirit may now rest peacefully forever in the Emerald Dream. $B $B Perhaps one day we may meet again, young $C. But, for now, please accept this reward as a symbol of my gratitude.' WHERE entry = 2561;
UPDATE quest_template SET RequestItemsText = 'Ferocitas and the Gnarlpine mystics must return what is mine.  Please retrieve the emerald so that I may repair my emerald dreamcatcher.', OfferRewardText = 'Now I can repair my dreamcatcher.  Thank you, $N.' WHERE entry = 2459;
UPDATE quest_template SET RequestItemsText = 'By the stars!  This is quite disturbing indeed! $B $B We\'ve had troubles in the past with the corruption of the furbolgs, but such troubles should be long past since the cleansing of Teldrassil. I fear for our all people if the blessings of the aspects themselves cannot redeem our great tree.' WHERE entry = 476;
UPDATE quest_template SET RequestItemsText = 'How fare you, young one?', OfferRewardText = 'Ah, the blessed waters from our moonwells. You have borne witness to the Spirit of the Kaldorei, then? $B $B In recent times, I\'ve come to find that the spirit offers more questions than it does answers, but such is the continuing nature of discovery that drives us in our darkest hours. $B $B I will offer you the simplest answers that I can. Malfurion has returned to me... to us... but harsh times are yet upon us. Staghelm is gone and the world is wracked with pain - Malfurion has much to mend, and he will need help.' WHERE entry = 14039;
UPDATE quest_template SET RequestItemsText = 'Our dear friend is not doing well, even with my mending. Have you brought the supplies I require?', OfferRewardText = 'These will do perfectly. Thank you, <name>. Your swiftness is appreciated.' WHERE entry = 28724;
UPDATE quest_template SET OfferRewardText = 'Oh, thank you, <name>! I feared I would never see Mist again, knowing only her death in my heart, never to be united with my faithful companion. I owe you more than you can know, and you have my eternal gratitude.' WHERE entry = 938;
UPDATE quest_template SET RequestItemsText = 'Have you been to Wellspring Lake, <name>?  Have you been hunting the timberlings there?', OfferRewardText = 'Well done! These tumors are the symptom of the timberling\'s disease. They are filled with a poison that we must cleanse from our new land. $B $B I will dispose of these tumors. Thank you, $N.' WHERE entry = 923;
UPDATE quest_template SET OfferRewardText = 'Good. I know this probably wasn\'t very pleasant work, but we greatly appreciate it. $B $BI fear for our dear Teldrassil... it seems it is becoming more corrupt by the day, and our ignorance to the cause is plaguing me greatly.' WHERE entry = 13946;
UPDATE quest_template SET RequestItemsText = 'Have you located Oakenscowl yet, $R?', OfferRewardText = 'I knew you were more than capable of ridding the lake of that horrible beast. $B $BIt is a distressing situation; Oakenscowl was once a grand leader amongst his kind... but corruption does not discriminate between the lowly and the noble. $B $BThe size of this tumor is quite disturbing, but I must study it to learn more about the disease that upsets the timberling population. $B $BThank you, $N.' WHERE entry = 2499;
UPDATE quest_template SET RequestItemsText = 'This planter is filled with soil, specially prepared by Denalan.', OfferRewardText = 'You place the heart within the planter, and it quickly digs itself in! $B $BA few seconds later it wriggles back out, cleansed.  It pulses slightly... beckoning for you to take it.' WHERE entry = 941;
UPDATE quest_template SET RequestItemsText = 'The moonwells hold the waters of the Well of Eternity, the ancient source of magic that has wrought so many horrors upon our world. $B $BThe druids take advantage of its properties, the Sentinels revere the wells as shrines to Elune, and now even the returning Highborne look to the wells longingly.', OfferRewardText = 'So you have heard the first part of the aftermath of the Battle of Mount Hyjal. There is much more for you to learn and the task you have begun here will continue through the rest of your journey through Teldrassil and into Darnassus.' WHERE entry = 28730;
UPDATE quest_template SET RequestItemsText = 'Hello...$B$BAnd how may I help you?', OfferRewardText = 'Ah, a timberling seed? I wanted to try growing one of these to help Denalan with his studies.$B$BBut I\'m afraid I\'ve discovered that a corruption has grown in many of the timberlings, and seeds from such creatures carry their parent\'s taint. They are beyond my talents to repair.$B$BDenalan is very skilled with things that grow. He may find a cure for future timberlings. He may be their only hope.' WHERE entry = 922;
UPDATE quest_template SET RequestItemsText = 'How can I help you?', OfferRewardText = 'That\'s very thoughtful of Nyoma. For a few coins, I can arrange quick transportation to the capital by hippogryph.' WHERE entry = 6344;
UPDATE quest_template SET OfferRewardText = 'Impressive. I hope my huntress carried her weight.$B$BIf we continue with this fervor, we may yet still free Teldrassil from the corruption that Alexstrasza herself could not burn out.' WHERE entry = 13945;
UPDATE quest_template SET RequestItemsText = '$N, you\'re back from Darnassus? ', OfferRewardText = 'It sounds like she loved it. Thank you for bringing the book to Sister Aquinne, $N. One of these days, I intend to take her up on her invitation to visit her in Darnassus. ' WHERE entry = 6343;
UPDATE quest_template SET RequestItemsText = 'What do you have for me, $N?  A lovely snack I presume?', OfferRewardText = 'Ah, what a sweet $R! I knew you would come in handy!' WHERE entry = 489;
UPDATE quest_template SET RequestItemsText = 'I regret the task that I have asked you to carry out; but Lady Sathrah is beyond hope.$B$BIt is our hope to offer the sacrifice of the spinnerets to Elune. With this sacrifice, Elune will bless Sathrah so that she might be reborn, and at peace.', OfferRewardText = 'The forest mourns for Lady Sathrah, but it was something that had to be done. I hope now that she can rest in peace.$B$BThank you, $N. ' WHERE entry = 2518;
UPDATE quest_template SET RequestItemsText = 'To be in the presence of the Oracle Tree... it is almost to feel wisdom take form.', OfferRewardText = 'Along with the druids, the Oracle Tree has been carefully monitoring the growth of Teldrassil. Our observations have been disheartening, but all is not without hope.$B$BThe tree is indeed recovering since it\'s blessing, but the growth is still somehow stunted... hindered.$B$BWe suspect some portion of the corruption remains within the tree, waiting to be cleansed. We simply need to find it.' WHERE entry = 7383;
UPDATE quest_template SET RequestItemsText = 'It is good to see you again, $N. I see you have succeeded in collecting the waters of the moonwells on behalf of Corithras Moonrage. I hope you have learned much along the way.', OfferRewardText = 'Indeed, I have spoken to Corithras on my way here, and he has gifted me with the waters you have been gathering. They may well prove useful sooner than we\'d imagined.$B$BStrangely, the growing corruption we\'ve felt is actually a good sign. Teldrassil has been burdened with this taint for a long time, and thanks to the blessing of the dragon aspects, only now is it coming to the surface in a form that we might strike against.' WHERE entry = 933;
UPDATE quest_template SET RequestItemsText = 'Hello again, $N. Have you completed your task?', OfferRewardText = 'It is only natural that our race, once immortal and revered, would struggle with regarding ourselves in the humbled manner that we likely should. We must remember to embrace our connection with nature, and with Elune, and push aside our mortal shortcomings.' WHERE entry = 929;
UPDATE quest_template SET OfferRewardText = 'You performed your duties well, $N.' WHERE entry = 28713;
UPDATE quest_template SET RequestItemsText = 'Please move swiftly. I can only hope that my emerald dreamcatcher has been unharmed by the furbolg.$B$BHave you recovered it yet, $N?', OfferRewardText = 'My emerald dreamcatcher is of great importance to me. It is a gift only given to few. Thank you for returning it, $N.' WHERE entry = 2438;
UPDATE quest_template SET RequestItemsText = 'Their slashing talons and piercing beaks may prove a difficult match for your own abilities, <name>, but I have faith that you will not fail in this task.', OfferRewardText = 'I am impressed by what you have accomplished here in so short a time, $N. Would that I could ask you to remain here to assist me with my duties... but I know in my heart that greater tasks lie ahead for you.' WHERE entry = 937;
UPDATE quest_template SET RequestItemsText = '$N, you look like you have something to tell me.  Do you have news concerning the timberlings?', OfferRewardText = 'You found this on Teldrassil?  Intriguing... this fruit is exotic.  Perhaps its seeds were brought here from far off.  Perhaps even as far as Azeroth! And there\'s something about this fruit... it seems to have reacted very strangely with the soil of Teldrassil.$B$BThank you, $N.  Now if you\'ll excuse me, I must study this further...' WHERE entry = 930;
UPDATE quest_template SET RequestItemsText = '$N! You have something for me?', OfferRewardText = '...What is this?  A timberling heart??  It\'s covered with a foul moss!$B$BThank you for bringing this to me, $N.  I will examine the heart and, if fortune shines, determine the nature of the moss about it.' WHERE entry = 927;
UPDATE quest_template SET RequestItemsText = '$N, the kidnapped Druids of the Talon will be forever trapped in the Emerald Dream if we cannot retrieve the Relics of Wakening from the Ban\'ethil Barrow Den to the west.$B$BFor every minute we delay their fate comes one step closer to eternal doom.', OfferRewardText = 'You have succeeded, young $C! Well done.  And just in time I might add.' WHERE entry = 483;
UPDATE quest_template SET OfferRewardText = 'You have served the good people of Dolanaar and Darnassus well, brave $C. As a member of the Sentinel force of Teldrassil, I salute your efforts.' WHERE entry = 487;
UPDATE quest_template SET RequestItemsText = 'You have something for me?', OfferRewardText = 'Where did you get this?  I haven\'t seen a plant like this since a sojourn I made to the Swamp of Sorrows... decades ago! It\'s amazing that a specimen made its way to Teldrassil. And it\'s grown to such a size!$B$BThank you, $N. Forgive my shortness of words, but there is a test I would like to perform on this frond...' WHERE entry = 931;
UPDATE quest_template SET RequestItemsText = 'If I can examine the charm, I may be able to figure out how to break the enchantment. Have you found one?', OfferRewardText = 'Thank you, $N. What an odd trinket this is... I can sense the vile aura emanating from it; this is a very powerful enchantment.' WHERE entry = 2541;
UPDATE quest_template SET OfferRewardText = 'Elune be praised!$B$BEverything I had encountered suggested this corruption to be buried deep within Teldrassil itself... I had worried we might never be able to strike at the source without killing the world tree. I am thankful I was wrong!$B$BMalfurion was the start to this great turn of fortune. Perhaps I will seek him out before I depart to the wilds again.$B$BThank you, $N. Thank you for everything you have done. You are sure to be a great hero someday!' WHERE entry = 14005;
UPDATE quest_template SET RequestItemsText = 'It is good to see you again. I sense that Tarindrella\'s task went smoothly with you by her side.', OfferRewardText = 'Thank you for returning to me so swiftly. I have but one last task to ask of you. Shall we?' WHERE entry = 935;
UPDATE quest_template SET OfferRewardText = 'I see you found me, young $R.  Dentaria was wise to have sent you.' WHERE entry = 28725;
UPDATE quest_template SET RequestItemsText = 'Do you have the seeds? I am eager to plant them.', OfferRewardText = 'You got them. This is good! I\'m hoping that careful study might lead me to understand where the timberling corruption stems from.$B$BI will plant these seeds in special soil I have prepared. I believe the seeds will sprout into timberlings who are much more docile.$B$BPerhaps later you can see the results!' WHERE entry = 918;
UPDATE quest_template SET RequestItemsText = 'Hello, $N. Have you found any sprouts near the waters?', OfferRewardText = 'That\'s a lot!  I\'m afraid they\'re spreading at a dangerous rate. I hope I can solve the riddle of what is tainting them.$B$BThank you for your help, $N.  The land is a cleaner place from your efforts.' WHERE entry = 919;
UPDATE quest_template SET RequestItemsText = 'How may I help you?', OfferRewardText = 'Something for me? I wonder who sent it...' WHERE entry = 6341;
UPDATE quest_template SET RequestItemsText = 'Did you kill Lord Melenas yet? It is vital that he be taken care of quickly and quietly, $N. His continued existence is an embarrassment to us all.', OfferRewardText = 'With Lord Melenas laid to rest I can finally move on to other matters. Thank you, $N.' WHERE entry = 932;
UPDATE quest_template SET OfferRewardText = '$N you have proven yourself a most worthy and able $C.  A $R who follows the path of honor as sure as you do is certain to find great glory in this world.Ursal\'s death brings safety to our once slumbering druids, but the source of his corruption yet remains within our forests. With time, I trust that you will find this evil and cleanse it for the sake of all of our people. You are destined for great things, young $N.' WHERE entry = 486;
UPDATE quest_template SET OfferRewardText = 'Githyiss and her brood were being corrupted by this totem. This is a furbolg totem. This is very troubling indeed.$B$BThis means the Gnarlpine are still a danger to these forests. We let our guard down too soon.' WHERE entry = 28727;
UPDATE quest_template SET OfferRewardText = 'This corruption these spiders suffer from is not simply surface deep. It cannot be magic or subtle mal intent. It is bred into them.$B$BIt seems our next task is clear.' WHERE entry = 28726;  	
UPDATE quest_template SET RequestItemsText = 'Have you been a busy little bee, $N? I\'ve been waiting for you to bring me what I need.', OfferRewardText = 'Ha ha!  Well, done indeed.$B$BWho would have ever guessed that I, Zenn Foulhoof, would have a $R to do my bidding?  Certainly not me!  But so it goes... this beloved world of ours is full of surprises.$B$BThree cheers for the naive and gullible!' WHERE entry = 488;
UPDATE quest_template SET OfferRewardText = 'Ilthalaine sent you? He was wise to do so. I am indeed in need of help. ' WHERE entry = 28734;
UPDATE quest_template SET OfferRewardText = 'Until then, know that our kind are needed more than ever in this tenuous time. Peace with the other races can fail at any moment, and there is much talk about members of the Horde looking to sow even greater seeds of distrust. Remember that.', RequestItemsText='Hello, $N. I\'m glad you found me. I was thinking that perhaps you got lost on the way here.\n
Nothing really new has happened in Shadowglen since I sent you my sigil, but I\'ll leave all the information gathering to you. Speak to the rest of the people around Aldrassil if you\'d like.' WHERE entry = 3118;

UPDATE quest_template SET RequiredRaces=0 WHERE entry IN(26940,26945,26946,26947,26948,26949,3116,3117,3118,3119,3120,26841);

DELETE FROM npc_trainer WHERE entry=3597;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
('3597','467','142','574','0','5'),
('3597','774','390','573','0','8'),
('3597','8921','97','574','0','4');

UPDATE `quest_template` SET `Title`='Rejuvenating Touch', `Objectives`='Learn Rejuvination from Mardant Strongoak. Use Rejuvenation to treat a Wounded Sentinel in Aldrassil.', `ObjectiveText1`='Use Rejuvenation on Wounded Sentinel', `ReqCreatureOrGOId1`='44617', `ReqSpellCast1`='774', `RequiredSpell`='774' WHERE entry=26948;
UPDATE quest_template SET `ReqCreatureOrGOId1`='44614', `ReqSpellCast1`='5143', `RequiredSpell`='5143' WHERE entry=26940;
UPDATE quest_template SET `ReqCreatureOrGOId1`='44614', `ReqSpellCast1`='100', `RequiredSpell`='100' WHERE entry=26945;
UPDATE quest_template SET `ReqCreatureOrGOId1`='44614', `ReqSpellCast1`='2098', `RequiredSpell`='2098' WHERE entry=26946;
UPDATE quest_template SET `ReqCreatureOrGOId1`='44614', `ReqSpellCast1`='56641', `RequiredSpell`='56641' WHERE entry=26947;
UPDATE quest_template SET `ReqCreatureOrGOId1`='44617', `ReqSpellCast1`='2061', `RequiredSpell`='2061' WHERE entry=26949;


UPDATE gameobject_loot_template SET ChanceOrQuestChance='-100' WHERE entry=4608;	

DELETE FROM gameobject WHERE id=19550;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('19550','1','1','1','9859.32','588.394','1300.64','4.55755','0','0','0.759677','-0.650301','300','0','1');
 	

DELETE FROM gameobject WHERE id=19551;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('19551','1','1','1','9555.02','1655.17','1299.39','2.95465','0','0','0.995635','0.0933339','300','0','1');


UPDATE quest_template SET QuestFlags=0, StartScript=14005, CompleteScript=14005 WHERE entry=14005;

DELETE FROM `quest_start_scripts` WHERE id=14005;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`)VALUES
('14005', '0', '15', '66027', '0');

DELETE FROM `quest_end_scripts` WHERE id=14005;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`)VALUES
('14005', '0', '14', '65602', '0');

DELETE FROM gameobject_involvedrelation WHERE id=7923;
INSERT INTO gameobject_involvedrelation VALUES
('7923','941');


DELETE FROM creature WHERE guid IN(1000000,1000001,1000002,1000003,1000004,1000005,1000006,1000007);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('1000000','4262','1','1','1','14613','4262','8336.16','1064.39','6.49478','6.28186','300','0','0','116235','0','0','0','0','0','0'),
('1000001','4262','1','1','1','14613','4262','8352.67','1064.45','5.41306','3.18347','300','0','0','116235','0','0','0','0','0','0'),
('1000002','4262','1','1','1','14613','4262','8363.06','981.55','24.0039','2.03366','300','0','0','116235','0','0','0','0','0','0'),
('1000003','4262','1','1','1','14613','4262','8385.83','995.987','29.6857','3.51413','300','0','0','116235','0','0','0','0','0','0'),
('1000004','4262','1','1','1','14613','4262','8381.79','1002.64','29.9368','3.69006','300','0','0','116235','0','0','0','0','0','0'),
('1000005','4262','1','1','1','14613','4262','8258.63','992.216','7.38909','4.61526','300','0','0','116235','0','0','0','0','0','0'),
('1000006','4262','1','1','1','14613','4262','8313.53','1019.73','11.0421','5.75801','300','0','0','116235','0','0','0','0','0','0'),
('1000007','4262','1','1','1','14613','4262','8344.21','888.906','4.2827','6.19391','300','0','0','116235','0','0','0','0','0','0');

DELETE FROM creature WHERE id IN(42970,42968,3838,3607,10118);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('42970','1','1','1','0','0','8352.39','994.926','20.9232','5.26164','300','0','0','328','0','0','0','0','0','0'),
('42968','1','1','1','0','0','8353.32','993.202','21.2335','2.00067','300','0','0','328','0','0','0','0','0','0'),
('3838','1','1','1','0','0','8384.41','980.182','30.8298','2.62035','300','0','0','232470','0','0','0','0','0','0'),
('3607','1','1','1','0','13','8325.56','1069.1','10.3579','1.54749','300','0','0','1536','0','0','0','0','0','0'),
('10118','1','1','1','0','13','8323.32','1069.32','10.6013','1.49251','300','0','0','713','0','0','0','0','0','0');


UPDATE areatrigger_teleport SET target_position_x='8383.016', target_position_y='998.708', target_position_z='29.632', target_orientation='3.70' WHERE id =527;


DELETE FROM creature WHERE id=48736;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48736','1','1','1','0','0','10316.2','2446.57','1330.43','5.09168','300','0','0','25200','0','0','0','0','0','0');


UPDATE creature_template SET Scriptname='npc_grellkin' WHERE entry IN(2003,2005);

##Uzupelnienie do quest?

UPDATE quest_template SET OfferRewardText='Oh SWEET justice! Killin\' those kobolds won\'t make me walk like a normal person and it sure won\'t get me a job, but damn does it feel good.\n
<Jimb reaches into a crusty old sack.>\n
Here, I think I got somethin\' for you from my kobold huntin\' days. Maybe you can put it to good use. ' WHERE entry=26229;
UPDATE quest_template SET  OfferRewardText='Murder, rookie. That\'s what you\'re looking at on the ground in front of us.' WHERE entry IN(28562,26378); 
UPDATE quest_template SET NextQuestId=26209 WHERE entry=26378;
UPDATE quest_template SET  NextQuestId = 26228, NextQuestInChain = 26228, OfferRewardText='Look, we ain\'t got no room for no more...\n
Horatio sent you? Right then... um, how can I help you?\n
He\'s not here is he? Heh, he knows I wasn\'t hidin\' from him, right? Was just tryin\' to lay low and all that, ya know? ' WHERE entry=26215;
UPDATE quest_template SET OfferRewardText='Just smellin\' you comin\' got my stomach rumblin\'! We\'re gonna eat like kings tonight! ', RequestItemsText='Dirt pies don\'t make themselves - usually. ' WHERE entry=26230;
UPDATE quest_template SET OfferRewardText='Well done, $N. You have provided us a temporary reprieve from the onslaught of gnolls, but there is more work to be done.' WHERE entry = 26287;
UPDATE quest_template SET OfferRewardText='Excellent work, $N. It will take the Riverpaw weeks to recover from the blow you just dealt. Please take an item of your choosing as a reward for what you have done.' WHERE entry=26288;
UPDATE quest_template SET  OfferRewardText='Helix? I\'ve heard that name before. Recently as a matter of fact, but who is this admiral?  ', RequestItemsText='Have you recovered the attack orders? '  WHERE entry=26286;
UPDATE quest_template SET  OfferRewardText='The natives are restless, <name>. I don\'t know what\'s going on, but homeless activity in this area has quadrupled in the past two days. If I didn\'t know any better I\'d say they were planning something...  '  WHERE entry=26292;
UPDATE quest_template SET  OfferRewardText='V? The only V I know is VanCleef, but he died many years ago. ', RequestItemsText=' Any luck?  '  WHERE entry=26295;
UPDATE quest_template SET OfferRewardText='Helix IS the ONE responsible FOR the gnoll attacks?\n
<Kearnen nods AT the tower.>\n
He\'s inside. He\'s been there FOR days. I\'ve just been waiting for an excuse to bust him. ' WHERE entry=26289;
UPDATE quest_template SET QuestFlags=0 WHERE entry IN(26213,26214);


DELETE FROM creature WHERE id = 42405;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('42405','0','1','1','0','0','-9852.79','1276.86','40.933','3.94542','300','0','0','102','0','0','0','0','0','0');

DELETE FROM gameobject_template WHERE entry=3001672;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,  `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `WDBVerified`)VALUES
('3001672', '8', '0', 'End of Jangelode Mine', '0', '1', '1672', '10', '0', '0', '26228', '13329');

DELETE FROM gameobject_template WHERE entry=3001673;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,  `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `WDBVerified`)VALUES
('3001673', '8', '0', 'Entrance of Deadmines', '0', '1', '1673', '10', '0', '0', '26320', '13329');

delete from creature where id IN(233,235);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('233','0','1','1','0','106','-10127.3','1053.95','36.231','2.50244','300','0','0','484','0','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('235','0','1','1','0','91','-10110.8','1041.22','37.465','2.52208','300','0','0','484','0','0','0','0','0','0');

UPDATE creature_template SET npcflag=3 WHERE entry=235;
UPDATE creature_template SET npcflag=3 WHERE entry=392;
UPDATE creature_template SET ScriptName='npc_homeless_citizen' WHERE entry IN(42384,42386);
UPDATE creature_template SET ScriptName='npc_shadowy_trigger' WHERE entry=43515;
UPDATE creature_template SET ScriptName='npc_shadowy_tower' WHERE entry=45561;
UPDATE creature_template SET ScriptName='' WHERE entry=42662;
UPDATE creature_template SET npcflag=3 WHERE entry=7024;
UPDATE creature_template SET npcflag=3 WHERE entry=821;
UPDATE creature_template SET baseattacktime=2000,mindmg=38,maxdmg=52,attackpower=48,minlevel=12,maxlevel=13,spell1=79425,spell2=79430,type_flags=262184,unit_flags=16384 WHERE entry=42601;
UPDATE creature SET curhealth=1638 WHERE id=42601;
UPDATE creature_template SET VehicleId=463 WHERE entry=42500;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=79778;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '79778', '0', '18', '1', '45937', '0',  'Toss Torch Trigger');
UPDATE creature_template SET ScriptName='npc_fire_trigger' WHERE entry=45937;
UPDATE creature_template SET ScriptName='npc_summoner' WHERE entry IN(42753,42755);


DELETE FROM script_texts WHERE npc_entry = 42384;
INSERT INTO `script_texts`(`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)VALUES
(42384,-1642384,'Bless you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_homeless_citizen'),
(42384,-1642385,'Thank you for this!I will recompense you later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_homeless_citizen'),
(42384,-1642386,'Jammmy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_homeless_citizen');

UPDATE quest_template SET QuestFlags=0 WHERE entry=26322;
UPDATE creature_template SET ScriptName='npc_defias_blackguard' WHERE entry=42769;
UPDATE creature_template SET ScriptName='npc_rise_br' WHERE entry=234;
UPDATE creature_template SET modelid1= 27401,unit_flags=33554432 WHERE entry=45937;

##Captain Sanders' Hidden Treasure 1##
DELETE FROM gameobject_involvedrelation WHERE quest=26353;
INSERT INTO gameobject_involvedrelation VALUES (35,26353);
UPDATE quest_template SET NextQuestInChain=26354, OfferRewardText='The footlocker slowly creaks open.  Sand and water seem to be its only contents. But wait!  A small crab scurries out with a clue to the treasure in his claws! 'WHERE entry=26353;
##Captain Sanders' Hidden Treasure 2##
DELETE FROM gameobject_questrelation WHERE quest=26354;
INSERT INTO gameobject_questrelation VALUES (35,26354);
DELETE FROM gameobject_involvedrelation WHERE quest=26354;
INSERT INTO gameobject_involvedrelation VALUES (36,26354);
UPDATE quest_template SET NextQuestInChain=26355, OfferRewardText='Good work, treasure hunter!', RequestItemsText='This looks like the right barrel. ' WHERE entry=26354;
##Captain Sanders' Hidden Treasure 3##
DELETE FROM gameobject_questrelation WHERE quest=26355;
INSERT INTO gameobject_questrelation VALUES (36,26355);
DELETE FROM gameobject_involvedrelation WHERE quest=26355;
INSERT INTO gameobject_involvedrelation VALUES (34,26355);
UPDATE quest_template SET NextQuestInChain=26356, OfferRewardText='You\'re on your way to the jackpot, treasure seeker! ', RequestItemsText='There\'s a clue sticking out of the empty jug.  ' WHERE entry=26355;
##Captain Sanders' Hidden Treasure 4##
DELETE FROM gameobject_questrelation WHERE quest=26356;
INSERT INTO gameobject_questrelation VALUES (34,26356);
DELETE FROM gameobject_involvedrelation WHERE quest=26356;
INSERT INTO gameobject_involvedrelation VALUES (33,26356);
UPDATE quest_template SET OfferRewardText='The hinges on the old chest are rusty but they still work.  You force the chest open and take the booty. ', RequestItemsText='The lost treasure of Captain Sanders awaits!   ' WHERE entry=26356;
DELETE FROM gameobject WHERE id=33;
INSERT INTO gameobject(id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES('33', '0', '1', '1', '-9793.04', '2108.27', '12.4385', '3.928764', '0', '0', '0', '0', '180', '100', '1');

UPDATE creature_addon SET auras='29266 0' WHERE guid IN(305440,305232,306209);
UPDATE creature_addon SET auras='' WHERE guid IN (305725,305936,304861);
UPDATE creature_addon SET bytes1=7 WHERE guid IN (305232,305440,306209);
UPDATE creature_template SET ScriptName='npc_horatio' WHERE entry=42308;
UPDATE creature_template SET npcflag=1,ScriptName='npc_westplains_drifter' WHERE entry IN(42391,42400);
UPDATE creature_template SET VehicleId=520 WHERE entry=42500;
UPDATE creature_template SET VehicleId=552 WHERE entry=42601;


UPDATE quest_template SET PrevQuestId=26209, `QuestFlags`='0',`NextQuestId`='26215', `ExclusiveGroup`='-26213' WHERE entry=26213;
UPDATE quest_template SET PrevQuestId=26209, `QuestFlags`='0',`NextQuestId`='26215', `ExclusiveGroup`='-26213'  WHERE entry=26214;
UPDATE quest_template SET RequestItemsText='Anything yet?',RequestItemsText='Gnolls and murlocs? Horse poopy, pal! Gnolls and murlocs didn\'t kill these people. I\'ve seen what gnolls and murlocs do to people that they kill and this... isn\'t it. Too pretty. Too... perfect.\n
Furthermore, the Furlbrow\'s had been squatting on this farm for 5 years. No, whoever wiped them out had a reason. This is murder, plain and simple and we\'re gonna get to the bottom of it... '  WHERE entry=26209;
UPDATE creature_template SET npcflag=1,ScriptName='npc_westplains_drifter' WHERE entry=42383;
UPDATE creature SET MovementType=1,spawndist=15 WHERE id IN(42391,42383);
DELETE FROM creature_addon WHERE guid IN(304973,304889,306232,304958,306058,305478,305336,305766);

UPDATE creature_template SET npcflag=3 WHERE entry=42558;
UPDATE creature_template SET dynamicflags=32 WHERE entry=42560;

DELETE FROM creature_addon WHERE guid IN(1016833,1016834,1016835,1017054,1017055);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('1016833','0','0','0','8','0','49415 0'),
('1016834','0','0','0','3','0','49415 0'),
('1016835','0','0','0','0','0','49415 0'),
('1017054','0','0','0','0','0','49415 0'),
('1017055','0','0','0','0','431','49415 0');

DELETE FROM creature_template_addon WHERE entry IN(42558,42559,42560);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('42558','0','0','0','3','0','49415 0'),
('42559','0','0','0','0','0','49415 0'),
('42560','0','0','0','8','0','49415 0');

UPDATE creature_template SET ScriptName='npc_horatio_investigate' WHERE entry=42558;

delete from creature where id=42562;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('42562','0','1','1','15435','42562','-9861.56','1333.89','41.9858','0','300','0','0','42','0','0','0','0','0','0');

UPDATE quest_template SET NextQuestId=26237 WHERE entry=26236;
UPDATE quest_template SET PrevQuestId=26236,NextQuestId=26241 WHERE entry=26237;
UPDATE quest_template SET PrevQuestId=26237,NextQuestId=26270 WHERE entry=26241;
UPDATE quest_template SET PrevQuestId=26241,NextQuestId=26266 WHERE entry=26270;
UPDATE quest_template SET PrevQuestId=26266 WHERE entry=26271;

DELETE FROM creature WHERE guid IN(10172751,10172761);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('10172751','42391','0','1','1','0','42391','-10128.4','1051.98','36.2079','2.4944','300','0','0','198','0','0','0','0','0','0'),
('10172761','42383','0','1','1','0','42383','-10125.7','1055.82','36.2609','2.47477','300','0','0','198','0','0','0','0','0','0');


UPDATE quest_template SET PrevQuestId=26266 WHERE entry=26271;
UPDATE quest_template SET NextQuestId=26289 WHERE entry=26286;
UPDATE quest_template SET PrevQuestId=26286,NextQuestId=26290 WHERE entry=26289;
UPDATE quest_template SET PrevQuestId=26289,NextQuestId=26291 WHERE entry=26290;
UPDATE quest_template SET PrevQuestId=26290,NextQuestId=26292 WHERE entry=26291;

delete from creature where guid = 10125240;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('10125240','45561','0','1','1','15435','0','-11154.4','547.827','70.3418','1.1761','300','0','0','42','0','0','0','0','0','0');

DELETE FROM creature WHERE guid=10120860;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('10120860','43515','0','1','1','15435','43515','-11016.3','1480.34','48.0816','4.74927','300','0','0','42','0','0','0','0','0','0');


UPDATE creature SET MovementType=1,spawndist=15 WHERE id IN(1216,127,517,42357,520,831,171,458,154,513,456,830,463,515,519,117,500,1065,454,199,834,832,501,42342,123,157,1109,114,452,42669,124,453,2442);
UPDATE creature SET MovementType=1,spawndist=5 WHERE id=1236;

UPDATE creature_template SET ScriptName='npc_demoniac_scryer',npcflag=1 WHERE entry=22258;

UPDATE quest_template SET RequiredRaces=690,SpecialFlags=0 WHERE entry=10162;


DELETE FROM gameobject_loot_template WHERE entry=184980;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('184980', '5369', '44.9', '1', '0', '1', '1'),
('184980', '6456', '35.6', '1', '0', '1', '1'),
('184980', '30794', '-20', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=183394;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('183394', '28116', '-100', '1', '0', '1', '1');


DELETE FROM gameobject WHERE id IN(185122,183122);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('183122','530','1','1','-298.617','2401.31','45.9132','2.89725','0','0','0.992546','0.121869','181','100','1'),
('185122','530','1','1','-356.968','2706.36','31.7072','-1.74533','0','0','0.766044','-0.642788','181','100','1');

DELETE FROM event_scripts WHERE id =13037;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('13037','0','10','19599','3000000','-1239.64','1358.05','5.44','1.09'),
('13037','0','10','19599','3000000','-1227.52','1353.46','4.29','1.36'),
('13037','0','10','16939','3000000','-1232.51','1357.32','5.81','1.14');

DELETE FROM event_scripts WHERE id=14379;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('14379','2','10','22374','300000','-248.426','3032.92','-65.5952','1.309'),
('14379','2','10','16878','300000','-246.012','3027.31','-65.4702','1.309'),
('14379','2','10','16878','300000','-252.792','3030.24','-65.7743','1.309');

DELETE FROM creature_loot_template WHERE item=23270;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('16863','23270','100','1','0','1','1'),
('16879','23270','100','1','0','1','1'),
('16880','23270','100','1','0','1','1'),
('16992','23270','100','1','0','1','1');

DELETE FROM `script_waypoint` WHERE `entry`=17077;
INSERT INTO `script_waypoint` VALUES
   (17077,0,-16.950142,3801.409424,95.064,5000, 'EMOTE_WOLF_LIFT_HEAD'),
   (17077,1,-15.577404,3805.170898,94.833,2500, ''),
   (17077,2,-20.011766,3806.609863,92.476,5000, 'EMOTE_WOLF_HOWL'),
   (17077,3,-18.594666,3816.207764,91.482,0, ''),
   (17077,4,-19.293468,3838.218750,85.012,0, ''),
   (17077,5,-16.504408,3871.034668,82.327,0, ''),
   (17077,6,2.064510,3898.678711,85.623,0, ''),
   (17077,7,16.403864,3921.174072,86.024,0, ''),
   (17077,8,47.307926,3932.001465,83.302,0, ''),
   (17077,9,90.067230,3942.906250,77.000,0, ''),
   (17077,10,106.886024,3944.388428,76.502,0, ''),
   (17077,11,139.085480,3941.897217,80.617,0, ''),
   (17077,12,150.092346,3942.782959,80.399,0, ''),
   (17077,13,193.511475,3950.396484,74.366,0, ''),
   (17077,14,226.274948,3958.003418,73.257,0, ''),
   (17077,15,246.686981,3963.309326,76.376,0, ''),
   (17077,16,264.206177,3977.726563,83.704,0, ''),
   (17077,17,279.857422,3986.417236,88.245,0, ''),
   (17077,18,304.039642,3998.354004,95.649,0, ''),
   (17077,19,328.071503,3995.832764,104.434,0, ''),
   (17077,20,347.485229,3990.817627,113.608,0, ''),
   (17077,21,351.257202,3954.260254,125.747,0, ''),
   (17077,22,345.625977,3932.016113,132.358,0, ''),
   (17077,23,347.971893,3908.549561,135.520,0, ''),
   (17077,24,351.887878,3891.062744,139.957,0, ''),
   (17077,25,346.116852,3864.634277,146.647,0, ''),
   (17077,26,330.012360,3839.859375,154.148,0, ''),
   (17077,27,297.250610,3811.855225,166.893,0, ''),
   (17077,28,290.783112,3800.188477,172.130,0, ''),
   (17077,29,288.125427,3782.474365,180.825,0, ''),
   (17077,30,296.817841,3771.629639,184.961,0, ''),
   (17077,31,305.256256,3765.380615,185.360,0, ''),
   (17077,32,311.447906,3757.902100,184.312,0, ''),
   (17077,33,325.258026,3730.282227,184.076,0, ''),
   (17077,34,341.158630,3717.757080,183.904,0, ''),
   (17077,35,365.589020,3717.200684,183.902,0, ''),
   (17077,36,387.395081,3731.750732,183.645,0, ''),
   (17077,37,396.574127,3732.604248,179.831,0, ''),
   (17077,38,404.303192,3737.313232,180.151,0, ''),
   (17077,39,410.995972,3742.286865,183.364,0, ''),
   (17077,40,434.904541,3761.058838,186.219,0, ''),
   (17077,41,460.128815,3774.436768,186.348,0, ''),
   (17077,42,467.643951,3788.506104,186.446,0, ''),
   (17077,43,491.551666,3815.446777,189.848,0, ''),
   (17077,44,496.957855,3836.875244,193.078,0, ''),
   (17077,45,502.889191,3855.458740,194.834,0, ''),
   (17077,46,508.208466,3863.689453,194.024,0, ''),
   (17077,47,528.907593,3887.348633,189.762,0, ''),
   (17077,48,527.722229,3890.686523,189.240,0, ''),
   (17077,49,524.637329,3891.768066,189.149,0, ''),
   (17077,50,519.146057,3886.701660,190.128,60000, 'SAY_WOLF_WELCOME');

DELETE FROM `script_texts` WHERE npc_entry IN(16993,17077);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(17077,-1000496,'%s lifts its head into the air, as if listening for something.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ancestral wolf EMOTE_WOLF_LIFT_HEAD'),
(17077,-1000497,'%s lets out a howl that rings across the mountains to the north and motions for you to follow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ancestral wolf EMOTE_WOLF_HOWL'),
(17077,-1000498,'Welcome, kind spirit. What has brought you to us?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ancestral wolf SAY_WOLF_WELCOME'),
(16993,-1000117,'Thank you for agreeing to help. Now, let''s get out of here $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_START'),
(16993,-1000118,'Over there! They''re following us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_SUMMON1'),
(16993,-1000119,'Allow me a moment to rest. The journey taxes what little strength I have.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,16,'wounded elf SAY_ELF_RESTING'),
(16993,-1000120,'Did you hear something?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_SUMMON2'),
(16993,-1000121,'Falcon Watch, at last! Now, where''s my... Oh no! My pack, it''s missing! Where has -',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_COMPLETE'),
(16993,-1000122,'You won''t keep me from getting to Falcon Watch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_AGGRO');
UPDATE creature_template SET npcflag=3 WHERE entry=16577;
UPDATE creature_template SET ScriptName='npc_dreghood' WHERE entry IN(20677,20678,20679);

DELETE FROM `script_waypoint` WHERE `entry`=16993;
INSERT INTO `script_waypoint` VALUES
   (16993,0,-1137.72,4272.10,14.04,5000, ''),
   (16993,1,-1141.34,4232.42,14.63,0, ''),
   (16993,2,-1133.47,4220.88,11.78,0, ''),
   (16993,3,-1126.18,4213.26,13.51,0, ''),
   (16993,4,-1100.12,4204.32,16.41,0, ''),
   (16993,5,-1063.68,4197.92,15.51,0, ''),
   (16993,6,-1027.28,4194.36,15.52,0, ''),
   (16993,7,-995.68,4189.59,19.84,0, ''),
   (16993,8,-970.90,4188.60,24.61,0, ''),
   (16993,9,-961.93,4193.34,26.11,15000, 'Summon 1'),
   (16993,10,-935.52,4210.99,31.98,0, ''),
   (16993,11,-913.42,4218.27,37.29,0, ''),
   (16993,12,-896.53,4207.73,43.23,0, ''),
   (16993,13,-868.49,4194.77,46.75,30000, 'Kneel and Rest Here'),
   (16993,14,-852.83,4198.29,47.28,15000, 'Summon 2'),
   (16993,15,-819.85,4200.50,46.37,0, ''),
   (16993,16,-791.92,4201.96,44.19,0, ''),
   (16993,17,-774.42,4202.46,47.41,0, ''),
   (16993,18,-762.90,4202.17,48.81,0, ''),
   (16993,19,-728.25,4195.35,50.68,0, ''),
   (16993,20,-713.58,4192.07,53.98,0, ''),
   (16993,21,-703.09,4189.74,56.96,0, ''),
   (16993,22,-693.70,4185.43,57.06,0, ''),
   (16993,23,-686.38,4159.81,60.26,0, ''),
   (16993,24,-679.88,4147.04,64.20,0, ''),
   (16993,25,-656.74,4147.72,64.11,0, ''),
   (16993,26,-652.22,4137.50,64.58,0, ''),
   (16993,27,-649.99,4136.38,64.63,30000, 'Quest Credit');

UPDATE quest_template SET PrevQuestId='-9472',SpecialFlags=1 WHERE entry=9483;

DELETE FROM creature_ai_scripts WHERE creature_id=19354;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1935403','19354','8','0','100','0','35460','-1','0','0','36','20680','1','0','0','0','0','0','0','0','0','0','Arzeth the Merciless - Changes Template to Arzeth the Powerless After Using Staff of the Dreghood Elders (Quest: 10369)');

UPDATE creature_template SET AIName='EventAI' WHERE entry=19354;

UPDATE quest_template SET RequiredSkillValue=325,ExclusiveGroup=10905 WHERE entry IN(10905,10906,10907);

DELETE FROM gameobject_loot_template WHERE entry=184478;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('184478', '23343', '-100', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=184466;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('184466', '29501', '-100', '1', '0', '1', '1');

DELETE FROM creature_ai_scripts WHERE creature_id=17226;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1722601','17226','8','0','100','0','30077','-1','0','0','33','17226','6','0','0','0','0','0','0','0','0','0','Arzeth the Merciless - Changes Template to Arzeth the Powerless After Using Staff of the Dreghood Elders (Quest: 10369)');

UPDATE creature_template SET AIName='EventAI' WHERE entry=17226;

DELETE FROM creature_ai_scripts WHERE creature_id=16847;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1684701','16847','8','0','100','0','29314','-1','0','0','33','16847','6','0','25','0','0','0','41','2500','0','0','Debiliated Mag\'har healed');

UPDATE creature_template SET AIName='EventAI' WHERE entry=16847;



DELETE FROM gameobject_loot_template WHERE entry=182938;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182938', '67419', '-100', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=182936;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182936', '67420', '-100', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=182937;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182937', '67419', '-100', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=182798;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182798', '67419', '-100', '1', '0', '1', '1');

UPDATE gameobject_template SET data0=1690,data1=182938,data3=1,faction=102,flags=4 WHERE entry=182798;
UPDATE gameobject_template SET data0=1690,data1=182938,data3=1,faction=102,flags=4 WHERE entry=182938;
UPDATE gameobject_template SET data0=1690,data1=182937,data3=1,faction=102,flags=4 WHERE entry=182937;
UPDATE gameobject_template SET data0=1690,data1=182936,data3=1,faction=102,flags=4 WHERE entry=182936;



UPDATE creature_loot_template SET ChanceOrQuestChance='-80' WHERE entry=16907 AND item=31347;

DELETE FROM event_scripts WHERE id =13256;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('13256','0','10','19305','9000000','158.85','4832.04','80.3605','2.99085');


DELETE FROM event_scripts WHERE id=10346;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('10346','0','10','16994','3000000','106.73','3504.38','63.6','2.21'),
('10346','0','10','16996','3000000','104.05','3504.84','63.66','2.21'),
('10346','0','10','16996','3000000','106.65','3508.66','63.35','2.21');


DELETE FROM creature_ai_scripts WHERE creature_id =20143;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('2014301','20143','1','0','100','1','2000','5000','15000','23000','11','34943','0','0','0','0','0','0','0','0','0','0','Void Spawner - Summon Unstable Voidwalker');

UPDATE creature_template SET AIName='EventAI' WHERE entry=20143;

UPDATE creature_template SET AIName='EventAI' WHERE entry IN (20816,20815,20814,20813);

DELETE FROM creature_ai_scripts WHERE creature_id IN(20816,20815,20814,20813);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('2081601','20816','8','0','100','0','35724','-1','0','0','33','20816','6','0','0','0','0','0','0','0','0','0','Western Hovel burned'),
('2081301','20813','8','0','100','0','35724','-1','0','0','33','20813','6','0','0','0','0','0','0','0','0','0','Barracks burned'),
('2081401','20814','8','0','100','0','35724','-1','0','0','33','20814','6','0','0','0','0','0','0','0','0','0','Stable burned'),
('2081501','20815','8','0','100','0','35724','-1','0','0','33','20815','6','0','0','0','0','0','0','0','0','0','Eastern Hovel burned');

UPDATE creature_template SET npcflag=3 WHERE entry=19683;


DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=38530;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '38530', '0', '18', '1', '22177', '0',  'Eye of Grillok Trigger');

UPDATE creature_template SET AIName='EventAI' WHERE entry=22177;

DELETE FROM creature_ai_scripts WHERE creature_id =22177;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('2217701','22177','8','0','100','0','38530','-1','0','0','33','22177','6','0','0','0','0','0','0','0','0','0','Eye of grillok quest credit');


UPDATE creature_template SET AIName='EventAI' WHERE entry IN(18849,19008);

DELETE FROM creature_ai_scripts WHERE creature_id IN(18849,19008);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1884901','18849','8','0','100','0','33067','-1','0','0','33','18849','6','0','0','0','0','0','0','0','0','0','Eastern Cannon burned'),
('1900801','19008','8','0','100','0','33067','-1','0','0','33','19008','6','0','0','0','0','0','0','0','0','0','Western Cannon burned');



DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=33067;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '33067', '0', '18', '1', '19008', '0',  'Western Cannon Trigger'),
('13', '0', '33067', '0', '18', '1', '18849', '0',  'Eastern Cannon Trigger');


DELETE FROM gameobject WHERE id IN(183122,185122);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES('188793','185122','530','1','1','-356.968','2706.36','31.7072','-1.74533','0','0','0.766044','-0.642788','181','100','1'),
('188792','183122','530','1','1','-298.617','2401.31','45.9132','2.89725','0','0','0.992546','0.121869','181','100','1'),
('188865','183122','530','1','1','-306.574','2371.44','47.7223','1.28362','0','0','0.598645','0.801014','300','0','1'),
('188889','183122','530','1','1','-287.179','2368.66','49.637','1.79413','0','0','0.781499','0.623907','300','0','1'),
('188890','183122','530','1','1','-278.316','2390.52','49.3199','1.17759','0','0','0.55536','0.83161','300','0','1'),
('188891','183122','530','1','1','-283.06','2415.86','46.6745','2.29678','0','0','0.912106','0.409955','300','0','1'),
('188892','183122','530','1','1','-306.09','2427.86','43.9595','2.66121','0','0','0.971292','0.237889','300','0','1'),
('188893','183122','530','1','1','-324.217','2437.3','41.3371','3.08847','0','0','0.999647','0.0265604','300','0','1'),
('188894','183122','530','1','1','-340.759','2428.6','42.4135','4.75979','0','0','0.69015','-0.723667','300','0','1'),
('188895','183122','530','1','1','-339.063','2398.49','41.3604','5.20197','0','0','0.514656','-0.857397','300','0','1'),
('188896','183122','530','1','1','-319.999','2384.72','45.4912','5.6575','0','0','0.307763','-0.951463','300','0','1'),
('188897','183122','530','1','1','-329.674','2371.33','45.2859','5.6575','0','0','0.307763','-0.951463','300','0','1'),
('188899','185122','530','1','1','-369.353','2670.02','42.7163','0.964751','0','0','0.463885','0.885895','300','0','1'),
('188900','185122','530','1','1','-342.927','2683.1','34.819','0.560271','0','0','0.276486','0.961018','300','0','1'),
('188901','185122','530','1','1','-332.611','2707.01','28.1519','1.16346','0','0','0.549469','0.835514','300','0','1'),
('188902','185122','530','1','1','-326.688','2722.36','24.1146','1.8012','0','0','0.7837','0.62114','300','0','1'),
('188903','185122','530','1','1','-340.283','2739.18','22.3481','2.25045','0','0','0.902364','0.430974','300','0','1'),
('188904','185122','530','1','1','-344.141','2738.85','23.7432','3.22748','0','0','0.999078','-0.0429326','300','0','1'),
('188905','185122','530','1','1','-365.39','2731.91','27.9174','3.60762','0','0','0.972975','-0.230909','300','0','1'),
('188906','185122','530','1','1','-391.967','2718.54','36.6436','3.60762','0','0','0.972975','-0.230909','300','0','1'),
('188907','185122','530','1','1','-398.759','2699.4','41.5495','4.97421','0','0','0.608753','-0.79336','300','0','1'),
('188908','185122','530','1','1','-383.179','2693.98','39.3628','0.349001','0','0','0.173616','0.984813','300','0','1');

UPDATE creature_loot_template SET ChanceOrQuestChance='-10' WHERE item=24373 AND entry=18124;
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=24373 AND entry=19519;
UPDATE creature_loot_template SET ChanceOrQuestChance = 8 WHERE item=24484 AND entry =18124;

DELETE FROM gameobject_loot_template WHERE entry=182122;	
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182122', '24411', '-100', '1', '0', '1', '1');

DELETE FROM `script_waypoint` WHERE `entry`=17969;
INSERT INTO `script_waypoint` VALUES
   (17969,0,-930.048950,5288.080078,23.848402,0, ''),
   (17969,1,-925.677917,5296.482910,18.183748,0, ''),
   (17969,2,-924.297180,5299.016113,17.710915,0, ''),
   (17969,3,-928.390076,5317.022949,18.208593,0, ''),
   (17969,4,-930.620972,5329.915039,18.773422,0, 'SAY_AMBUSH1'),
   (17969,5,-931.490295,5357.654785,18.027155,0, 'SAY_PROGRESS'),
   (17969,6,-934.777771,5369.341797,22.278048,0, ''),
   (17969,7,-934.521851,5373.407227,22.834690,0, ''),
   (17969,8,-937.008545,5382.980469,22.699078,0, ''),
   (17969,9,-941.948059,5404.141602,22.669743,0, ''),
   (17969,10,-931.244263,5415.846680,23.063961,0, 'at crossroad'),
   (17969,11,-901.497925,5420.315430,24.213270,0, ''),
   (17969,12,-860.311707,5415.617676,23.671139,0, ''),
   (17969,13,-777.988953,5391.982422,23.001669,0, ''),
   (17969,14,-750.362000,5385.786621,22.765791,0, ''),
   (17969,15,-731.339417,5382.449707,22.517065,0, ''),
   (17969,16,-681.235901,5381.377930,22.050159,2500, 'end bridge SAY_AMBUSH2'),
   (17969,17,-637.944458,5384.338379,22.205647,0, 'SAY_END'),
   (17969,18,-608.954407,5408.715332,21.630386,0, ''),
   (17969,19,-598.134277,5413.608398,21.412275,0, ''),
   (17969,20,-571.268982,5420.771973,21.184925,0, ''),
   (17969,21,-553.099915,5424.616211,21.193716,0, ''),
   (17969,22,-524.745483,5443.945313,20.977013,0, ''),
   (17969,23,-502.984985,5446.283691,22.149435,0, ''),
   (17969,24,-472.463959,5449.546875,22.561453,0, ''),
   (17969,25,-454.533264,5461.302246,22.602837,30000, 'quest complete');

DELETE FROM `script_texts` WHERE npc_entry=17969;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (17969,-1000343,'Is the way clear? Let''s get out while we can, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_START'),
 (17969,-1000344,'Looks like we won''t get away so easy. Get ready!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_AMBUSH1'),
 (17969,-1000345,'Let''s keep moving. We''re not safe here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_PROGRESS'),
 (17969,-1000346,'Look out, $N! Enemies ahead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_AMBUSH2'),
 (17969,-1000347,'We''re almost to the refuge! Let''s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_END');




DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=31736;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '31736', '0', '18', '1', '17998', '0',  'Steam Pump Umbrafen Trigger'),
('13', '0', '31736', '0', '18', '1', '17999', '0',  'Lagoon Steam Umbrafen Trigger'),
('13', '0', '31736', '0', '18', '1', '18000', '0',  'Serpent Steam Umbrafen Trigger'),
('13', '0', '31736', '0', '18', '1', '18002', '0',  'Marshlight Steam Umbrafen Trigger');

DELETE FROM creature_ai_scripts WHERE creature_id IN(17998,17999,18000,18002);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1799801','17998','8','0','100','0','31736','-1','0','0','33','17998','6','0','0','0','0','0','0','0','0','0','Steam Steam Kill Credit'),
('1799901','17999','8','0','100','0','31736','-1','0','0','33','17999','6','0','0','0','0','0','0','0','0','0','Lagoon Steam Kill Credit'),
('1800001','18000','8','0','100','0','31736','-1','0','0','33','18000','6','0','0','0','0','0','0','0','0','0','Serpent Steam Kill Credit'),
('1800201','18002','8','0','100','0','31736','-1','0','0','33','18002','6','0','0','0','0','0','0','0','0','0','Marshlight Steam Kill Credit');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN(17998,17999,18000,18002);



DELETE FROM gameobject WHERE id=300080;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('300080','530','1','1','-297.46','7245.69','29.48','0','0','0','0','0','180','0','1'),
('300080','530','1','65534','-285.492','7242.69','26.0982','5.98816','0','0','0.146979','-0.98914','300','0','1'),
('300080','530','1','65534','-277.5','7255.74','24.3203','4.49197','0','0','0.780588','-0.625046','300','0','1'),
('300080','530','1','65534','-286.946','7225.05','24.5279','4.00896','0','0','0.907425','-0.420214','300','0','1'),
('300080','530','1','65534','-297.162','7263.32','31.0519','2.32899','0','0','0.918589','0.395215','300','0','1'),
('300080','530','1','65534','-306.338','7234.37','30.3718','4.24615','0','0','0.851333','-0.524626','300','0','1');

DELETE FROM event_scripts WHERE id =11413;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('11413','0','10','18185','3000000','-301.42','7247.97','30.92','5.86');


UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=24472;
UPDATE quest_template SET RequiredSkillValue=300 WHERE entry=9635;


UPDATE gameobject_template SET data0=1690,data1=182256 WHERE entry=182256;
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=24248;

DELETE FROM gameobject_loot_template WHERE entry=182166;	
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182166', '24471', '-100', '1', '0', '1', '1');

DELETE FROM event_scripts WHERE id=11424 AND command =9;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
('11424','1','9','6781','180');

DELETE FROM event_scripts WHERE id=11424 AND command =8;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
('11424','20','8','18152','0');

DELETE FROM event_scripts WHERE id=11424 AND command =10;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('11424','5','10','18152','10800','1176.53','8130.83','20.13','1.86');

UPDATE creature_template SET npcflag=3 WHERE entry=18530;
UPDATE quest_template SET RequiredRaces=690,SpecialFlags=2 WHERE entry=10052;

DELETE FROM `script_waypoint` WHERE `entry`=18760;
INSERT INTO `script_waypoint` VALUES
   (18760 ,0,-2265.21,3091.14,13.91,0, ''),
   (18760 ,1,-2266.80,3091.33,13.82,1000, ''),
   (18760 ,2,-2268.20,3091.14,13.82,7000, 'progress1'),
   (18760 ,3,-2278.32,3098.98,13.82,0, ''),
   (18760 ,4,-2294.82,3110.59,13.82,0, ''),
   (18760 ,5,-2300.71,3114.60,13.82,20000, 'progress2'),
   (18760 ,6,-2300.71,3114.60,13.82,3000, 'progress3'),
   (18760 ,7,-2307.36,3122.76,13.79,0, ''),
   (18760 ,8,-2312.83,3130.55,12.04,0, ''),
   (18760 ,9,-2345.02,3151.00,8.38,0, ''),
   (18760 ,10,-2351.97,3157.61,6.27,0, ''),
   (18760 ,11,-2360.35,3171.48,3.31,0, ''),
   (18760 ,12,-2371.44,3185.41,0.89,0, ''),
   (18760 ,13,-2371.21,3197.92,-0.96,0, ''),
   (18760 ,14,-2380.35,3210.45,-1.08,0, ''),
   (18760 ,15,-2384.74,3221.25,-1.17,0, ''),
   (18760 ,16,-2386.15,3233.39,-1.29,0, ''),
   (18760 ,17,-2383.45,3247.79,-1.32,0, ''),
   (18760 ,18,-2367.50,3265.64,-1.33,0, ''),
   (18760 ,19,-2354.90,3273.30,-1.50,0, ''),
   (18760 ,20,-2348.88,3280.58,-0.09,0, ''),
   (18760 ,21,-2349.06,3295.86,-0.95,0, ''),
   (18760 ,22,-2350.43,3328.27,-2.10,0, ''),
   (18760 ,23,-2346.76,3356.27,-2.82,0, ''),
   (18760 ,24,-2340.56,3370.68,-4.02,0, ''),
   (18760 ,25,-2318.84,3384.60,-7.61,0, ''),
   (18760 ,26,-2313.99,3398.61,-10.40,0, ''),
   (18760 ,27,-2320.85,3414.49,-11.49,0, ''),
   (18760 ,28,-2338.26,3426.06,-11.46,0, ''),
   (18760 ,29,-2342.67,3439.44,-11.32,12000, 'progress4'),
   (18760 ,30,-2342.67,3439.44,-11.32,7000, 'emote bye'),
   (18760 ,31,-2342.67,3439.44,-11.32,5000, 'cat form'),
   (18760 ,32,-2344.60,3461.27,-10.44,0, ''),
   (18760 ,33,-2396.81,3517.17,-3.55,0, ''),
   (18760 ,34,-2439.23,3523.00,-1.05,0, '');

DELETE FROM `script_texts` WHERE entry IN(-1000571,-1000572,-1000573,-1000574);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1000571,'Ok let''s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_1'),
(0,-1000572,'You sure you''re ready? Take a moment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_2'),
(0,-1000573,'Alright, let''s do this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_3'),
(0,-1000574,'Ok, I think I can make it on my own from here. Thank you so much for breaking me out of there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_4');

UPDATE quest_template SET RequiredRaces=1101 WHERE entry=10012;
UPDATE quest_template SET RequiredRaces=1101,Specialflags=2 WHERE entry=10051;


DELETE FROM spell_scripts WHERE id = 25140;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`)VALUES
('25140', '0', '6', '530', '0', '-2263.56', '3112.12', '136.35', '3.66');

DELETE FROM spell_scripts WHERE id = 29129;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`)VALUES
('29129', '0', '6', '530', '0', '-2211.41', '3129.27', '12.16', '2.19');

UPDATE gameobject_template SET data1=10447, data2=0, data10=25140 WHERE entry=182543;
UPDATE gameobject_template SET data1=10447, data2=0, data10=29129 WHERE entry=182546;

DELETE FROM event_scripts WHERE id=13470;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`)VALUES
('13470', '0', '8', '21039', '0');

UPDATE quest_template SET RequiredRaces=1101 WHERE entry=9994;
UPDATE quest_template SET RequiredRaces=690 WHERE entry=9994;

UPDATE creature_template SET ScriptName='npc_shadowy' WHERE entry IN(18716,18717,18719);
UPDATE creature_template SET npcflag=3 WHERE entry=22272;
UPDATE creature_template SET ScriptName='npc_grek' WHERE entry=19606;

DELETE FROM event_scripts WHERE id =13894;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('13894','0','10','18707','9000000','-3030.75','5598.43','-1.61','4.49');


DELETE FROM creature WHERE id = 21636;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('21636','530','1','1','0','0','-2961.02','4415.7','-47.2958','5.98817','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2973.32','4400.53','-49.2284','4.0341','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2977.05','4382.5','-49.2284','4.50848','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2962.57','4373.67','-49.2262','5.72428','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2973.4','4356.83','-49.2277','5.72428','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2973.58','4455.12','-47.295','1.62685','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2975.93','4497.97','-41.019','1.57188','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2945.83','4505.01','-42.2023','0.872871','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-3012.41','4496.47','-42.9482','3.57385','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-3029.29','4507.36','-42.9477','2.56854','30','5','0','5914','0','0','1','0','0','0'),
('21636','530','1','1','0','0','-2967.32','4333.84','-49.7975','4.7543','30','5','0','5914','0','0','1','0','0','0');



DELETE FROM waypoint_data WHERE id = 669510;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`)VALUES
('669510', '0', '-3157.95', '5603.21', '63.87', '0', '0', '0', '100', '0'),
('669510', '1', '-3117.10', '5595.87', '38.97', '0', '0', '0', '100', '0'),
('669510', '2', '-3085.8', '5604.00', '43.014', '0', '0', '0', '100', '0'),
('669510', '3', '-3059.99', '5610.7', '45.73', '0', '0', '0', '100', '0'),
('669510', '4', '-3014.45', '5604.78', '47.73', '0', '0', '0', '100', '0'),
('669510', '5', '-2990.53', '5593.89', '56.34', '0', '0', '0', '100', '0'),
('669510', '6', '-2936.06', '5585.19', '52.156', '0', '0', '0', '100', '0'),
('669510', '7', '-2881.62', '5567.4', '48.62', '0', '0', '0', '100', '0'),
('669510', '8', '-2871.55', '5598.55', '50.06', '0', '0', '0', '100', '0'),
('669510', '9', '-2891.00', '5607.77', '52.26', '0', '0', '0', '100', '0'),
('669510', '10', '-2965.48', '5606.17', '62.18', '0', '0', '0', '100', '0'),
('669510', '11', '-2995.05', '5626.59', '66.7', '0', '0', '0', '100', '0'),
('669510', '12', '-3034.33', '5653.73', '68.49', '0', '0', '0', '100', '0'),
('669510', '13', '-3087.72', '5661.36', '66.73', '0', '0', '0', '100', '0'),
('669510', '14', '-3145.30', '5642.64', '61.03', '0', '0', '0', '100', '0');


UPDATE creature_addon SET path_id=669510,bytes1=50331648 WHERE guid=66951;
UPDATE creature_template SET MovementType=2 WHERE entry=18707;
UPDATE creature SET MovementType = 2 WHERE guid=66951;
UPDATE creature_template_addon SET path_id=669510,bytes1=50331648 WHERE entry=18707;

UPDATE gameobject_template SET data0=1726,data1=185220 WHERE entry=185220;

DELETE FROM gameobject_loot_template WHERE entry=185220;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('185220', '31697', '100', '1', '0', '1', '1');


DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=39189;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`)VALUES
('13', '0', '39189', '0', '18', '1', '21846', '0',  'Auchenai Warrior Trigger'),
('13', '0', '39189', '0', '18', '1', '21859', '0',  'Sha\'tar Vindicator Trigger');

DELETE FROM creature_ai_scripts WHERE creature_id IN(21846,21859);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('2184601','21846','8','0','100','0','39189','-1','0','0','33','21846','6','0','41','3000','0','0','11','78573','0','1','Slain Auchenai Warrior Kill Credit'),
('2185901','21859','8','0','100','0','39189','-1','0','0','33','21859','6','0','41','3000','0','0','11','78573','0','1','Slain Sha\'tar Vindicator Steam Kill Credit');

UPDATE creature_template SET AIName='EventAI' WHERE entry IN(21846,21859);

DELETE FROM event_scripts WHERE id =14484 AND command = 7;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
('14484','1','7','10923','50');
DELETE FROM event_scripts WHERE id =14484 AND command = 10;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('14484','0','10','22441','9000000','-3418.21','4453.82','-7.96','0.8');

DELETE FROM `script_waypoint` WHERE `entry`=22377;
INSERT INTO `script_waypoint` VALUES
   (22377,0,-2766.31,5429.65,-34.53,0, ''),
   (22377,1,-2769.35,5416.25,-34.53,0, ''),
   (22377,2,-2780.07,5416.06,-34.53,1000, ''),
   (22377,3,-2812.56,5415.20,-34.53,1000, ''),
   (22377,4,-2816.95,5415.02,-34.52,0, ''),
   (22377,5,-2827.86,5414.56,-28.29,0, ''),
   (22377,6,-2878.32,5414.11,-28.26,0, ''),
   (22377,7,-2893.17,5413.15,-18.59,0, ''),
   (22377,8,-2896.36,5409.65,-18.59,0, ''),
   (22377,9,-2896.50,5396.76,-8.77,0, ''),
   (22377,10,-2896.67,5366.20,-9.59,0, ''),
   (22377,11,-2888.23,5330.39,-11.19,2000, '');


DELETE FROM gameobject_loot_template WHERE entry=182507;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182507', '25638', '100', '1', '0', '1', '1');

DELETE FROM gameobject_loot_template WHERE entry=182505;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182505', '25642', '100', '1', '0', '1', '1');


UPDATE creature_template SET ScriptName='npc_captive_child' WHERE entry=22314;

UPDATE gameobject_template SET ScriptName='go_veil_skith_cage' WHERE entry IN(185202,185203,185204,185205);

UPDATE creature SET spawntimesecs=25 WHERE id=22314;

DELETE FROM gameobject_loot_template WHERE entry=183050;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('183050', '27634', '100', '1', '0', '1', '1');

DELETE FROM gameobject_involvedrelation WHERE id=182947;
INSERT INTO gameobject_involvedrelation VALUES
('182947', '10094');

DELETE FROM event_scripts WHERE id=14444;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
('14444','1','10','22452','900000', '-3361.84','5149.58','-8.26','1.52');


DELETE FROM gameobject_loot_template WHERE entry=182940;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)VALUES
('182940', '27480', '100', '1', '0', '1', '1');

DELETE FROM `script_waypoint` WHERE `entry`=19685;
INSERT INTO `script_waypoint` VALUES
   (19685,0,-1863.369019,5419.517090,-10.463668,5000, ''),
   (19685,1,-1861.749023,5416.465332,-10.508068,0, ''),
   (19685,2,-1857.036133,5410.966309,-12.428039,0, ''),
   (19685,3,-1831.539185,5365.472168,-12.428039,0, ''),
   (19685,4,-1813.416504,5333.776855,-12.428039,0, ''),
   (19685,5,-1800.354370,5313.290039,-12.428039,0, ''),
   (19685,6,-1775.624878,5268.786133,-38.809181,0, ''),
   (19685,7,-1770.147339,5259.268066,-38.829231,0, ''),
   (19685,8,-1762.814209,5261.098145,-38.848995,0, ''),
   (19685,9,-1740.110474,5268.858398,-40.208965,0, ''),
   (19685,10,-1725.837402,5270.936035,-40.208965,0, ''),
   (19685,11,-1701.580322,5290.323242,-40.209187,0, ''),
   (19685,12,-1682.877808,5291.406738,-34.429646,0, ''),
   (19685,13,-1670.101685,5291.201172,-32.786007,0, ''),
   (19685,14,-1656.666870,5294.333496,-37.862648,0, ''),
   (19685,15,-1652.035767,5295.413086,-40.245499,0, ''),
   (19685,16,-1620.860596,5300.133301,-40.208992,0, ''),
   (19685,17,-1607.630981,5293.983398,-38.577045,5000, ''),
   (19685,18,-1607.630981,5293.983398,-38.577045,5000, ''),
   (19685,19,-1607.630981,5293.983398,-38.577045,5000, ''),
   (19685,20,-1622.140869,5301.955566,-40.208897,0, ''),
   (19685,21,-1621.131836,5333.112793,-40.208897,0, ''),
   (19685,22,-1637.598999,5342.134277,-40.208790,0, ''),
   (19685,23,-1648.521606,5352.309570,-47.496170,0, ''),
   (19685,24,-1654.606934,5357.419434,-45.870892,0, ''),
   (19685,25,-1633.670044,5422.067871,-42.835541,0, ''),
   (19685,26,-1656.567505,5426.236328,-40.405815,0, ''),
   (19685,27,-1664.932373,5425.686523,-38.846405,0, ''),
   (19685,28,-1681.406006,5425.871094,-38.810928,0, ''),
   (19685,29,-1730.875977,5427.413574,-12.427910,0, ''),
   (19685,30,-1743.509521,5369.599121,-12.427910,0, ''),
   (19685,31,-1877.217041,5303.710449,-12.427989,0, ''),
   (19685,32,-1890.371216,5289.273438,-12.428268,0, ''),
   (19685,33,-1905.505737,5266.534668,2.630672,0, ''),
   (19685,34,-1909.381348,5273.008301,1.663714,10000, ''),
   (19685,35,-1909.381348,5273.008301,1.663714,12000, ''),
   (19685,36,-1909.381348,5273.008301,1.663714,8000, ''),
   (19685,37,-1909.381348,5273.008301,1.663714,15000, ''),
   (19685,38,-1927.561401,5275.324707,1.984987,0, ''),
   (19685,39,-1927.385498,5300.879883,-12.427236,0, ''),
   (19685,40,-1921.063965,5314.318359,-12.427236,0, ''),
   (19685,41,-1965.425415,5379.298828,-12.427236,0, ''),
   (19685,42,-1981.233154,5450.743652,-12.427236,0, ''),
   (19685,43,-1958.022461,5455.904297,0.487659,0, ''),
   (19685,44,-1951.991455,5463.580566,0.874490,10000, ''),
   (19685,45,-1951.991455,5463.580566,0.874490,12000, ''),
   (19685,46,-1968.730225,5481.752930,-12.427846,0, ''),
   (19685,47,-1881.839844,5554.040039,-12.427846,0, ''),
   (19685,48,-1841.566650,5545.965332,-12.427846,0, ''),
   (19685,49,-1837.658325,5523.780273,0.558756,0, ''),
   (19685,50,-1831.321777,5534.821777,1.221819,6000, ''),
   (19685,51,-1831.321777,5534.821777,1.221819,8000, ''),
   (19685,52,-1831.321777,5534.821777,1.221819,5000, ''),
   (19685,53,-1850.060669,5472.610840,0.857320,6000, ''),
   (19685,54,-1850.060669,5472.610840,0.857320,8000, ''),
   (19685,55,-1850.060669,5472.610840,0.857320,9000, ''),
   (19685,56,-1850.060669,5472.610840,0.857320,9000, ''),
   (19685,57,-1850.060669,5472.610840,0.857320,4000, '');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000255 AND -1000234;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (19685,-1000234,'Follow me, stranger. This won''t take long.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_KHAD_SERV_0'),
   (19685,-1000235,'Shattrath was once the draenei capital of this world. Its name means "dwelling of light."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_1'),
   (19685,-1000236,'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_2'),
   (19685,-1000237,'The city was left in ruins and darkness... until the Sha''tar arrived.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_3'),
   (19685,-1000238,'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_4'),
   (19685,-1000239,'The Sha''tar, or "born from light" are the naaru that came to Outland to fight the demons of the Burning Legion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_5'),
   (19685,-1000240,'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_6'),
   (19685,-1000241,'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_7'),
   (19685,-1000242,'It wouldn''t be long, however, before the city came under attack once again. This time, the attack came from Illidan''s armies. A large regiment of blood elves had been sent by Illidan''s ally, Kael''thas Sunstrider, to lay waste to the city.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_8'),
   (19685,-1000243,'As the regiment of blood elves crossed this very bridge, the Aldor''s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_9'),
   (19685,-1000244,'The blood elves laid down their weapons in front of the city''s defenders; their leader, a blood elf elder known as Voren''thal, stormed into the Terrace of Light and demanded to speak to A''dal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_10'),
   (19685,-1000245,'As the naaru approached him, Voren''thal kneeled before him and uttered the following words: "I''ve seen you in a vision, naaru. My race''s only hope for survival lies with you. My followers and I are here to serve you."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_11'),
   (19685,-1000246,'The defection of Voren''thal and his followers was the largest loss ever incurred by Kael''s forces. And these weren''t just any blood elves. Many of the best and brightest amongst Kael''s scholars and magisters had been swayed by Voren''thal''s influence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_12'),
   (19685,-1000247,'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_13'),
   (19685,-1000248,'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael''s command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_14'),
   (19685,-1000249,'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_15'),
   (19685,-1000250,'The Aldor''s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_16'),
   (19685,-1000251,'The attacks against Shattrath continued, but the city did not fall, as you can see. On the contrary, the naaru known as Xi''ri led a successful incursion into Shadowmoon Valley - Illidan''s doorstep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_17'),
   (19685,-1000252,'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_18'),
   (19685,-1000253,'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A''dal. The armies gather here to receive A''dal''s blessing before heading to Shadowmoon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_19'),
   (19685,-1000254,'Khadgar should be ready to see you again. Just remember that to serve the Sha''tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others'' dislike.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_20'),
   (19685,-1000255,'Good luck stranger, and welcome to Shattrath City.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_21');

UPDATE quest_template SET NextQuestId=10211 WHERE entry=10210;
UPDATE quest_template SET PrevQuestId=10210,SpecialFlags=2,SrcSpell=34444 WHERE entry=10211;

UPDATE quest_template SET PrevQuestID=10211,ExclusiveGroup=10551,RewRepFaction1=932,RewRepValueID1=5,RewRepValue1=350000 WHERE entry = 10551;
UPDATE quest_template SET PrevQuestID=10211,ExclusiveGroup=10551,RewRepFaction1=934,RewRepValueID1=5,RewRepValue1=350000 WHERE entry = 10552;

UPDATE `spell_proc_event` SET `procEx`='2' WHERE (`entry`='56800');


 	 	