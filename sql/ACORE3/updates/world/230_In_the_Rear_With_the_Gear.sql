ALTER TABLE `world_db_version` CHANGE  `required_229_Hyjal_Recycling_Program` `required_230_In_the_Rear_With_the_Gear` BIT(1);

-- Fix for quest In the Rear With the Gear
UPDATE quest_template SET ObjectiveText1 = 'Twilight Supplies' WHERE entry = 25234;
REPLACE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, AIName, ScriptName, WDBVerified) VALUES 
(202652, 3, 9379, 'Twilight Supplies', '', 'Collecting', '', 0, 0, 0.4, 52568, 0, 0, 0, 0, 0, 43, 202652, 0, 1, 0, 0, 0, 0, 25234, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

DELETE FROM gameobject WHERE id = 202652;
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(202652, 1, 1, 1, 5487.32, -2337.84, 1461.96, 0.313166, 0, 0, 0.155944, 0.987766, 300, 0, 1),
(202652, 1, 1, 1, 5467.66, -2339.42, 1462.91, 5.20227, 0, 0, 0.514528, -0.857474, 300, 0, 1),
(202652, 1, 1, 1, 5465.97, -2300.35, 1461, 6.19973, 0, 0, 0.0417175, -0.999129, 300, 0, 1),
(202652, 1, 1, 1, 5435.08, -2299.22, 1459.11, 6.01908, 0, 0, 0.131667, -0.991294, 300, 0, 1),
(202652, 1, 1, 1, 5439.29, -2283.31, 1457.43, 5.54392, 0, 0, 0.361274, -0.93246, 300, 0, 1),
(202652, 1, 1, 1, 5421.58, -2274.86, 1451.27, 0.15216, 0, 0, 0.0760065, 0.997107, 300, 0, 1),
(202652, 1, 1, 1, 5372.44, -2297.85, 1443.97, 6.24685, 0, 0, 0.0181666, -0.999835, 300, 0, 1),
(202652, 1, 1, 1, 5331.68, -2303.28, 1438.02, 0.407415, 0, 0, 0.202302, 0.979323, 300, 0, 1),
(202652, 1, 1, 1, 5307.54, -2303.29, 1434.69, 5.94055, 0, 0, 0.170482, -0.985361, 300, 0, 1),
(202652, 1, 1, 1, 5286, -2333.2, 1433.85, 0.756921, 0, 0, 0.369491, 0.929235, 300, 0, 1);

DELETE FROM creature_loot_template WHERE entry = 39436 AND item = 52568;
INSERT INTO creature_loot_template VALUES 
(39436, 52568, -1, 1, 0, 3, 3);

DELETE FROM creature_loot_template WHERE entry = 39438 AND item = 52568;
INSERT INTO creature_loot_template VALUES 
(39438, 52568, -1, 1, 0, 3, 3);