ALTER TABLE `world_db_version` CHANGE  `required_226_The_Flameseer's_Staff` `required_227_A_Gap_in_Their_Armor` BIT(1);

-- Fix for quest The Flameseers Staff
UPDATE quest_template SET ObjectiveText1 = 'Charred Staff Fragment' WHERE entry = 25472;
DELETE FROM gameobject WHERE id = 202846;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(202846,1,1,1,5369.74,-2976.56,1549.84,0.127947,0,0,0.06393,0.997954,300,0,1),
(202846,1,1,1,5378.95,-2977.25,1550.56,5.14743,0,0,0.537845,-0.843044,300,0,1),
(202846,1,1,1,5384.12,-2988.36,1551.66,4.70446,0,0,0.709904,-0.704299,300,0,1),
(202846,1,1,1,5378.95,-2999.7,1552.56,3.83267,0,0,0.940893,-0.338704,300,0,1),
(202846,1,1,1,5372.98,-3000.17,1552.4,3.39285,0,0,0.992119,-0.125297,300,0,1),
(202846,1,1,1,5370.6,-3007.24,1553.57,2.90276,0,0,0.992878,0.119134,300,0,1),
(202846,1,1,1,5355.69,-3003.62,1552.04,2.90276,0,0,0.992878,0.119134,300,0,1),
(202846,1,1,1,5350.28,-2978.84,1548.08,2.21789,0,0,0.895229,0.445606,300,0,1),
(202846,1,1,1,5361.48,-2969,1547.07,0.942403,0,0,0.453957,0.891023,300,0,1),
(202846,1,1,1,5374.65,-2966.27,1547.98,0.893709,0,0,0.432131,0.901811,300,0,1),
(202846,1,1,1,5391.34,-2992.95,1552.88,6.04514,0,0,0.118744,-0.992925,300,0,1),
(202846,1,1,1,5363.85,-3009.69,1553.38,3.98425,0,0,0.912547,-0.408973,300,0,1);

-- Fix for quest A Gap in Their Armor
UPDATE quest_template SET ObjectiveText1 = 'Twilight Armor Plate' WHERE entry = 25758;
REPLACE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, AIName, ScriptName, WDBVerified) VALUES 
(203197, 3, 7041, 'Twilight Armor Plate', '', 'Collecting', '', 0, 0, '0.8', 55809, 0, 0, 0, 0, 0, 43, 203197, 0, 1, 0, 0, 0, 0, 25758, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

DELETE FROM gameobject WHERE id = 203197;
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(203197, 1, 1, 1, 3613.73, -2332.68, 1091.35, 3.4208, 0, 0, 0.990271, -0.139153, 300, 0, 1),
(203197, 1, 1, 1, 3640.62, -2281.98, 1083.29, 2.51289, 0, 0, 0.950997, 0.3092, 300, 0, 1),
(203197, 1, 1, 1, 4036.29, -2244.29, 1133.91, 1.6182, 0, 0, 0.723665, 0.690151, 300, 0, 1),
(203197, 1, 1, 1, 4020.55, -2263.44, 1133.94, 5.43288, 0, 0, 0.412462, -0.910975, 300, 0, 1),
(203197, 1, 1, 1, 4004.52, -2255.18, 1133.83, 6.19236, 0, 0, 0.0453987, -0.998969, 300, 0, 1);

DELETE FROM creature_loot_template WHERE entry = 41030 AND item = 55809;
INSERT INTO creature_loot_template VALUES 
(41030, 55809, -100, 1, 0, 1, 1);