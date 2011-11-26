ALTER TABLE `world_db_version` CHANGE  `required_239_synch_revision` `required_240_q_13505` BIT(1);

DELETE FROM `gameobject_template` WHERE `entry` IN (194090,194088,194089);
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) values
('194088','3','404','Highborne Relic','','','','35','0','1.2','44830','0','0','0','0','0','57','26821','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','1');
('194089','3','406','Highborne Relic','','','','35','0','1.4','44830','0','0','0','0','0','57','26821','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','13329');
('194090','3','405','Highborne Relic','','','','35','0','1.5','44830','0','0','0','0','0','57','26821','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','13329');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (26821);
INSERT INTO `gameobject_loot_template`(`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`)VALUES
(26821,44830,-100,1,0,1,1);

