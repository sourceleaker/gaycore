ALTER TABLE `world_db_version` CHANGE  `required_191_quest_13565` `required_192_npc_unit_flags`  BIT(1);

update `creature_template` set `unit_flags`=0 where `entry`=2647;