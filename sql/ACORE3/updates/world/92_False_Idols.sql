ALTER TABLE `world_db_version` CHANGE  `required_91_Curtail_the_Darktail` `required_92_False_Idols`  BIT(1);

UPDATE `quest_template` SET `ReqCreatureOrGOId1`=-203289,`ReqCreatureOrGOCount1`=8 WHERE `entry`=25705;

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=203289;
DELETE FROM `smart_scripts` WHERE `entryorguid`=203289 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(203289,1,0,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Azsh''ir Idol - On GossipHello - despawn');
