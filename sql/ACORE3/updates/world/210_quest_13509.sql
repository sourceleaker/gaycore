ALTER TABLE `world_db_version` CHANGE  `required_209_Stormwind_Stockade_Part_1` `required_210_quest_13509`  BIT(1);

UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=13509;