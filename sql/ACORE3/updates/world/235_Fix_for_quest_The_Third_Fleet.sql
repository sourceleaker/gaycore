ALTER TABLE `world_db_version` CHANGE  `required_234_Fix_for_quest_Got_Some_Flotsam` `required_235_Fix_for_quest_The_Third_Fleet` BIT(1);

-- Fix for quest The Third Fleet (by Bastek)
DELETE FROM gameobject_template WHERE entry = 203247;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, AIName, ScriptName, WDBVerified) VALUES
(203247, 3, 1727, 'Fitzsimmon\'s Mead', '', '', '', 0, 0, 1, 56031, 0, 0, 0, 0, 0, 43, 203247, 0, 0, 0, 0, 0, 0, 25815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 13329);

DELETE FROM gameobject WHERE id = 203247;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(203247, 0, 1, 1, -3846.27, -825.721, -6.51973, 4.136433, 0, 0, -0.8788166, 0.4771597, 300, 0, 1);

DELETE FROM gameobject_loot_template WHERE entry = 203247;
INSERT INTO gameobject_loot_template VALUES
(203247, 56031, -100, 1, 0, 1, 1);
