ALTER TABLE `world_db_version` CHANGE  `required_172_q_27410` `required_173_q_26801`  BIT(1);

UPDATE `creature_template` SET `KillCredit1`=1890 WHERE `entry` IN (1502);