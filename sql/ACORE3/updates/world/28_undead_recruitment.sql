ALTER TABLE `world_db_version` CHANGE  `required_25_Young_and_vicious` `required_28_undead_recruitment`  BIT(1);

UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=49340;

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=49340);
DELETE FROM `creature_template_addon` WHERE `entry`=49340;
INSERT INTO `creature_template_addon`(`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(49340,0,0,7,0,65, NULL);

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=49340;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=49340;
INSERT INTO `npc_spellclick_spells` VALUES
(49340,91942,26800,1,26800,1,0,0,0);

UPDATE `creature_template` SET `VehicleId`=1392 WHERE `entry`=49141;


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=49340;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=49340; 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(49340,0,0,0,8,0,100,0,91942,0,0,0,11,46598,2,0,0,0,0,19,49141,0,0,0,0,0,0, 'Scarlet Corpse - On Spellihit - Cast Ride Vehicle Hardcoded'),
(49340,0,1,0,8,0,100,0,91942,0,0,0,33,49340,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Scarlet Corpse - On Spellihit - Give quest credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=1740;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(1740, 1741); 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1740,0,0,0,20,0,100,0,26800,0,0,0,41,0,0,0,0,0,0,19,49141,0,0,0,0,0,0, 'Deathguard Saltain - On Quest Rewarded - Despawn Darnell'),	
(1740,1,0,0,20,0,100,0,26800,0,0,0,41,0,0,0,0,0,0,19,49340,0,0,0,0,0,0, 'Deathguard Saltain - On Quest Rewarded - Despawn Scarlet Corpses');