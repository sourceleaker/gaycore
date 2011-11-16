ALTER TABLE `world_db_version` CHANGE  `required_117_Creature_TAD` `required_118_NPC_Windle_Sparkshine`  BIT(1);

UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='29261');
DELETE FROM `creature` WHERE id = 29261 AND map != 530;