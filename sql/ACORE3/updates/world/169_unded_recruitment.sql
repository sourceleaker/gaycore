ALTER TABLE `world_db_version` CHANGE  `required_168_q_24737` `required_169_unded_recruitment`  BIT(1);

UPDATE `creature_template` SET `npcflag`= 0x1000000,`unit_flags`=0 WHERE `entry`=49340;