ALTER TABLE `world_db_version` CHANGE  `required_93_A_Giants_Feast` `required_94_The_Holy_Spring`  BIT(1);

UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=759 AND `item`=58811;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=759 AND `item`=60386;