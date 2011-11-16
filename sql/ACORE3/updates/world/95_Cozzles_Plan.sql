ALTER TABLE `world_db_version` CHANGE  `required_94_The_Holy_Spring` `required_95_Cozzles_Plan`  BIT(1);

DELETE FROM gameobject_loot_template WHERE item=5852;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(20691,5852,100,1,0,1,1);
