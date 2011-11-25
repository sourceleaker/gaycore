ALTER TABLE `world_db_version` CHANGE  `required_227_A_Gap_in_Their_Armor` `required_228_Lightning_in_a_Bottle` BIT(1);

-- Fix for quest Lightning in a Bottle
UPDATE quest_template SET ObjectiveText1 = 'Charged Condenser Jar' WHERE entry = 25355;
DELETE FROM gameobject WHERE id = 202731;
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(202731, 1, 1, 1, 5099.75, -2395.26, 1425.51, 1.2423, 0, 0, 0.581972, 0.813209, 300, 0, 1),
(202731, 1, 1, 1, 5067.42, -2280.54, 1401.86, 3.36759, 0, 0, 0.993623, -0.112758, 300, 0, 1),
(202731, 1, 1, 1, 5104.58, -2229.06, 1388.05, 3.48383, 0, 0, 0.985395, -0.170283, 300, 0, 1),
(202731, 1, 1, 1, 5042.96, -2165.66, 1386.98, 0.193009, 0, 0, 0.0963547, 0.995347, 300, 0, 1),
(202731, 1, 1, 1, 5070.87, -2128.11, 1375.32, 0.0249324, 0, 0, 0.0124659, 0.999922, 300, 0, 1),
(202731, 1, 1, 1, 5071.25, -2070.32, 1369.55, 4.06973, 0, 0, 0.894238, -0.447592, 300, 0, 1),
(202731, 1, 1, 1, 5124.61, -2054.12, 1366.39, 3.0872, 0, 0, 0.99963, 0.0271935, 300, 0, 1),
(202731, 1, 1, 1, 5292.42, -1899.74, 1346.4, 4.50091, 0, 0, 0.777788, -0.628527, 300, 0, 1);