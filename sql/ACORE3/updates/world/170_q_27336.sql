ALTER TABLE `world_db_version` CHANGE  `required_169_unded_recruitment` `required_170_q_27336`  BIT(1);

UPDATE `creature_template` SET `ScriptName`='npc_captured_totem' WHERE `entry`=23811;