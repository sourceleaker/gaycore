ALTER TABLE `world_db_version` CHANGE  `required_180_art_of_druid` `required_182_deactivating_the_spires`  BIT(1);

UPDATE gameobject_template SET data1=8889 WHERE entry IN(180916,180919,180920);

UPDATE gameobject_template SET data2=90000 WHERE entry=180911;
UPDATE gameobject_template SET data2=90001 WHERE entry=180912;

DELETE FROM event_scripts WHERE id = 90000;
INSERT INTO event_scripts (id, delay, command, datalong, datalong2, X, Y, z, o)VALUES
('90000', '0', '6', '530', '0', '9332.96', '-7813.38', '136.56', '5.24');

DELETE FROM event_scripts WHERE id = 90001;
INSERT INTO event_scripts (id, delay, command, datalong, datalong2, X, Y, z, o)VALUES
('90001', '0', '6', '530', '0', '9333.98', '-7879.76', '74.9', '2.15');