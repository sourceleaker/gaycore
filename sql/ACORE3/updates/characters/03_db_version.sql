CREATE TABLE `characters_db_version`
(
    `required_01_create` BIT(1)
);
INSERT INTO `characters_db_version` VALUES(0);

-- HOW TO USE: IN YOUR SQL, THIS LINE MUST BE FIST !!!
-- FORMULA: ALTER TABLE `characters_db_version` CHANGE `current_column_name` `required_file_sql_name` BIT(1);
-- SQL FILE NAME: revision_table !!!!!!!! (example: 30_guild_members)
ALTER TABLE `characters_db_version` CHANGE `required_01_create` `required_03_db_version` BIT(1);