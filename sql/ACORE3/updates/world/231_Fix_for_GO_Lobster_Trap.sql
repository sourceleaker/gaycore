ALTER TABLE `world_db_version` CHANGE  `required_230_In_the_Rear_With_the_Gear` `required_231_Fix_for_GO_Lobster_Trap` BIT(1);

-- Fix for GO Lobster Trap (by Bastek)
DELETE FROM gameobject_template WHERE entry = 204284;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, AIName, ScriptName, WDBVerified) VALUES
(204284, 3, 9713, 'Stormwind Lobster Trap', '', 'Collecting', '', 0, 0, 1, 58809, 0, 0, 0, 0, 0, 43, 204284, 0, 1, 0, 0, 0, 0, 26442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);
