ALTER TABLE `world_db_version` CHANGE  `required_226_The_Flameseer's_Staff` `required_227_A_Gap_in_Their_Armor` BIT(1);

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