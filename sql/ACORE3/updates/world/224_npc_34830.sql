ALTER TABLE `world_db_version` CHANGE  `required_223_quest_26078` `required_224_npc_34830`  BIT(1);

UPDATE `creature_template_addon``auras`='45111' WHERE `entry`=34830;
