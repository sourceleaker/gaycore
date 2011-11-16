ALTER TABLE `world_db_version` CHANGE  `required_106_Blood_Theory` `required_107_Quest_Trolling_the_information`  BIT(1);

UPDATE `creature_template` SET `ScriptName` = 'npc_Frostmane_Soothsayer' WHERE entry IN(37173, 37174, 37108);