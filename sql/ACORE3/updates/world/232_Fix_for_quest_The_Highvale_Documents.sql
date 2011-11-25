ALTER TABLE `world_db_version` CHANGE  `required_231_Fix_for_GO_Lobster_Trap` `required_232_Fix_for_quest_The_Highvale_Documents` BIT(1);

-- Fix for quest The Highvale Documents (by Bastek)

DELETE FROM gameobject_template WHERE entry IN (205890,205891,205892);
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, AIName, ScriptName, WDBVerified) VALUES
(205890, 3, 210, 'Highvale Report', '', '', '', 0, 0, 1, 61972, 0, 0, 0, 0, 0, 43, 205890, 0, 1, 0, 0, 0, 0, 27626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 1),
(205891, 3, 210, 'Highvale Records', '', '', '', 0, 0, 1, 61973, 0, 0, 0, 0, 0, 43, 205891, 0, 1, 0, 0, 0, 0, 27626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 1),
(205892, 3, 210, 'Highvale Notes', '', '', '', 0, 0, 1, 61974, 0, 0, 0, 0, 0, 43, 205892, 0, 1, 0, 0, 0, 0, 27626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 1);
DELETE FROM gameobject WHERE id IN (205890,205891,205892);
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(205890, 0, 1, 1, 284.798, -2674.51, 119.949, 3.31213, 0, 0, 0.996367, -0.0851638, 300, 0, 1),
(205891, 0, 1, 1, 264.673, -2805.09, 123.369, 0.126574, 0, 0, 0.0632448, 0.997998, 300, 0, 1),
(205892, 0, 1, 1, 217.369, -2715.43, 121.663, 1.13736, 0, 0, 0.538521, 0.842612, 300, 0, 1);

DELETE FROM gameobject_loot_template WHERE entry IN (205890,205891,205892);
INSERT INTO gameobject_loot_template VALUES
(205890, 61972, -100, 1, 0, 1, 1),
(205891, 61973, -100, 1, 0, 1, 1),
(205892, 61974, -100, 1, 0, 1, 1);



