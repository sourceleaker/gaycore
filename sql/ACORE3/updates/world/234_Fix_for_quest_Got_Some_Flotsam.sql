ALTER TABLE `world_db_version` CHANGE  `required_233_Proper_spawn_for_Sigrun_Ironhew` `required_234_Fix_for_quest_Got_Some_Flotsam` BIT(1);

-- Fix for quest Got Some Flotsam (by Bastek)
DELETE FROM gameobject_template WHERE entry IN (195042, 195080);
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, AIName, ScriptName, WDBVerified) VALUES
(195042, 3, 8688, 'Greymist Debris', '', 'Gathering', '', 0, 0, 1, 46384, 0, 0, 0, 0, 0, 43, 195042, 0, 1, 0, 0, 0, 0, 13909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1),
(195080, 3, 6682, 'Floating Greymist Debris', '', 'Gathering', '', 0, 0, 1, 46384, 0, 0, 0, 0, 0, 43, 195080, 0, 1, 0, 0, 0, 0, 13909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);

DELETE FROM gameobject WHERE id IN (195042, 195080);
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(195042, 1, 1, 1, 4680.752, 670.2813, 5.874341, 6.143561, 0, 0, -0.06975555, 0.9975641, 300, 0, 1),
(195042, 1, 1, 1, 4592.535, 713.4514, 0.307507, 2.862335, 0, 0, 0.9902678, 0.1391754, 300, 0, 1),
(195080, 1, 1, 1, 4723.093, 714.9028, -0.025332, 0, 0, 0, 0, 0, 300, 0, 1),
(195080, 1, 1, 1, 4756.054, 748.3386, -0.025576, 0, 0, 0, 0, 0, 300, 0, 1),
(195080, 1, 1, 1, 4704.289, 755.5052, 0.012387, 0, 0, 0, 0, 0, 300, 0, 1),
(195080, 1, 1, 1, 4624.233, 745.0521, 0.052223, 0, 0, 0, 0, 0, 300, 0, 1),
(195080, 1, 1, 1, 4775.91, 668.684, -0.0141, 0.3665176, 0, 0, 0.1822348, 0.983255, 300, 0, 1),
(195080, 1, 1, 1, 4508.93, 751.007, 0.00246328, 4.41713, 0, 0, 0.803427, -0.595404, 300, 0, 1),
(195080, 1, 1, 1, 4779.905, 600.7101, 0.019505, 0, 0, 0, 0, 0, 300, 0, 1),
(195080, 1, 1, 1, 4723.093, 714.9028, -0.025332, 0, 0, 0, 0, 0, 300, 0, 1);

DELETE FROM gameobject_loot_template WHERE entry IN (195042, 195080);
INSERT INTO gameobject_loot_template VALUES
(195042, 46384, -100, 1, 0, 1, 1),
(195080, 46384, -100, 1, 0, 1, 1);