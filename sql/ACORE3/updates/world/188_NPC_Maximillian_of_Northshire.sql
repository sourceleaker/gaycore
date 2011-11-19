ALTER TABLE `world_db_version` CHANGE  `required_187_quest_13547` `required_188_NPC_Maximillian_of_Northshire`  BIT(1);

-- Maximillian of Northshire <Knight-Errant> (by Bastek)
UPDATE creature_template SET npcflag = 2, minlevel = 60, maxlevel = 60, Health_mod =1, Mana_mod = 1 WHERE entry = 38237;
DELETE FROM creature WHERE id = 38237;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(38237,1,1,'1',0,0,-7228.146,-599.6198,-271.1636,1.151917,120,0,0,1,0,0,0,0,0);

-- Pimento <Maximillian's Steed>
UPDATE creature_template SET minlevel = 60, maxlevel = 60, Health_mod =1 WHERE entry = 38373;
DELETE FROM creature WHERE id = 38373;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(38373,1,1,'1',0,0,-7224.069,-599.1649,-271.091,2.670354,120,0,0,1,0,0,0,0,0);

-- Maximillian's Campfire
DELETE FROM gameobject_template WHERE entry = 202247;
INSERT INTO gameobject_template (entry,type,displayId,name,castBarCaption,unk1,faction,flags,size,data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,ScriptName) VALUES

(202247,5,192, 'Maximillian''s Campfire', '', '',35,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '');
DELETE FROM gameobject WHERE id = 202247;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(202247, 1, 1, 1, -7227.38, -597.131, -271.492, 4.67051, 0, 0, 0.721759, -0.692145, 300, 0, 1);

-- Quests
DELETE FROM creature_questrelation WHERE id = 38237;
INSERT INTO creature_questrelation VALUES
(38237, 24703),
(38237, 24704),
(38237, 24705),
(38237, 24706),
(38237, 24707);
DELETE FROM creature_involvedrelation WHERE id = 38237;
INSERT INTO creature_involvedrelation VALUES
(38237, 24703),
(38237, 24704),
(38237, 24705),
(38237, 24706),
(38237, 24707);
UPDATE quest_template SET QuestFlags = 10, NextQuestId = 24704, OfferRewardText ='You please me, $N.  From this day forward, you are no longer a simple beggar, but a squire loyal to Maximillian of Northshire.  Prepare yourself for our first sally, good squire, for together we shall plunge our fists elbow-deep into what they call adventure!' WHERE entry = 24703;
UPDATE quest_template SET QuestFlags = 10, NextQuestId = 24705, PrevQuestId = 24703, OfferRewardText ='...and that makes 15 of them.$B$BJustice had a name today... and that name was Maximillian of Northshire.  For Doloria!' WHERE entry = 24704;
UPDATE quest_template SET QuestFlags = 10, NextQuestId = 24706, PrevQuestId = 24704, OfferRewardText ='Our duty is fulfilled.  Even so, it troubles me that today\'s damsels were less than gracious... only the fair-haired one by the lake managed to show us any gratitude for our chivalry.  Perhaps tomorrow\'s damsels will have thankfulness to match their beauty.$B$BNow we must ride.  More adventures await!' WHERE entry = 24705;
UPDATE quest_template SET QuestFlags = 10, NextQuestId = 24707, PrevQuestId = 24705, OfferRewardText ='Might I ask you a question?  What act have you committed to make the spirits so angry at you?  I\'m impressed that you had the patience to sit so still while they pummeled you so violently.$B$BNow we may proceed.  The teeth and scales of Un\'Goro\'s greatest dragon await us.' WHERE entry = 24706;
UPDATE quest_template SET QuestFlags = 10, PrevQuestId = 24706, OfferRewardText ='The day is saved!  Huzzah!  Today we learned that while armor can be replaced, valor has no price.$B$BBecause of your key involvement in this task, I hereby graduate you from squire to fledgling knight.  No longer do the chains of servitude bind you to me; you are free to serve other masters.$B$BGo with honor, young hero!  For chivalry, the Light, and the beauty of Doloria!' WHERE entry = 24707;