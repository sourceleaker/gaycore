-- ------ --
-- DELETE --
-- ------ --
DELETE FROM `quest_template` WHERE `entry` IN (26964,28568,26965,27039);


-- -------------------- -- 
-- Escaped from Gilneas --
-- -------------------- -- 
UPDATE `quest_template` SET `OfferRewardText` = 'Hmm... yes, that makes sense.  Since the worgen have come streaming out of Gilneas, I knew it would only be a matter of time before they arrived here in Tirisfal.  ' WHERE `entry` = 24978;
	

-- --------------------- -- 	
-- Annihilate the Worgen --
-- --------------------- -- 
UPDATE `quest_template` SET `OfferRewardText` = 'To think, they''ve been right under our noses!  I''ll put my deathguards on alert... this will NOT happen again. ' WHERE `entry` = 24993;
	

-- ------------------- -- 	
-- A Thorn in our Side --
-- ------------------- -- 
UPDATE `quest_template` SET `OfferRewardText` = 'It sounds like we''ll have to keep our eyes out for this Voss character.  I don''t expect any Forsaken to receive a reward if we capture her... I''m just worried she''ll eventually turn against us. ', `RequestItemsText` = 'We shall herd the Scarlet Crusade like cattle to their demise. ' WHERE `entry` = 24981;
	

-- ------------------- -- 	
-- Reaping the Reapers --
-- ------------------- -- 
UPDATE `quest_template` SET `OfferRewardText` = 'You''ve the makings of a mighty $C, $R.  I heard the cries of those humans from all the way over here.  Perhaps soon we will be rid of this human blight. ', `RequestItemsText` = 'You''ve not completed my task, $N. It is time for the harvesters to become the harvested! ' WHERE `entry` = 24978;
	
	
-- -------------------- -- 	
-- The Scarlet Palisade --
-- -------------------- -- 
UPDATE `quest_template` SET `OfferRewardText` = 'Most excellent, $C. Your skill in the art of combat is undeniable. ', `RequestItemsText` = 'If you wish to prove your worth to The Dark Lady, slay 10 Scarlet Warriors, $C. ' WHERE `entry` = 24980;

-- Planting the Seed of Fear --
UPDATE `quest_template` SET `OfferRewardText` = 'Did they run from you, $N?  Good.  This is better than killing them... if they live to tell the tale, then future generations of murlocs will learn to fear us. ', `RequestItemsText` = 'Chase them until they pass out in fear, $N. Let them grow up in fear of the Forsaken. ' WHERE `entry` = 24999;

-- The New Forsaken --
UPDATE `quest_template` SET `OfferRewardText` = 'Yes, I''m Brill''s local magistrate, reporting directly to the Dark Lady.  Impress me, and you may end up meeting the Banshee Queen herself.  Now, onto your first task... ' WHERE `entry` = 24982;	

-- Forsaken Duties --
UPDATE `quest_template` SET `OfferRewardText` = 'Magistrate Sevren wants a report?  Very well: the defenders at The Bulwark are holding the majority of the Scourge at bay, but some do slip through on occasion.$B$BWe have seen sporadic Scourge activity east of this station, with a concentration around the Balnir Farmstead. ' WHERE `entry` = 24983;

-- Return to the Magistrate --
UPDATE `quest_template` SET `OfferRewardText` = 'It is troubling to hear of the Scourge slipping past the Bulwark.  Even now, they are ceaseless in their assaults.$B$BBut we will not give in.  The Lich King is dead; we will not be taken again! ' WHERE `entry` = 24898;

-- Fields of Grief --
UPDATE `quest_template` SET `OfferRewardText` = 'You have performed your bidding well, young $C.  You are proving yourself to be quite an asset to the Dark Lady''s army. ', `RequestItemsText` = 'Were you able to gather 10 pumpkins yet, $N? ' WHERE `entry` = 24975;	
	
-- Variety is the Spice of Death --
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent work, $N.  Now comes the fun part. ', `RequestItemsText` = 'I''ve got a feeling this will be my best batch yet, good $C. ' WHERE `entry` = 24976;

-- Johaan's Experiment --
UPDATE `quest_template` SET `OfferRewardText` = 'By the Light!  Finally some food!  Sweet, sweet pumpkin.... ', `RequestItemsText` = 'Stay away, foul and unholy creature!  May the Light protect me!  The Scarlet Crusade shall rid Azeroth of your...$B$B...oh wait.  Is that food for me?  I am so hungry... ' WHERE `entry` = 24977;

-- Gordo's Task --
UPDATE `quest_template` SET `OfferRewardText` = 'What''s this? Gloom weed?! I''ve no need for gloom weed! That mindless mass of flesh is out there picking daisies and convincing the Lady knows how many dupes like you into doing the same. No offense.$B$BWe''ll deal with the gloom weed later.  For now, we''ve got other matters to discuss. ', `RequestItemsText` = 'Where''s that useless abomination? Either you have what I need or you''d best get out there and find it. ' WHERE `entry` = 25038;

-- Supplying Brill --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, an order for supplies.  You will want to take this to the Undercity, no doubt.  And quickly, for Brill must not be left under stocked. ', `RequestItemsText` = 'You appear to be on official business... ' WHERE `entry` = 6321;

-- Ride to the Undercity --
UPDATE `quest_template` SET `OfferRewardText` = 'An order from Brill? Very well. It is an honor to serve those who serve our Dark Lady. ', `RequestItemsText` = 'I keep my weapons in top condition. They are cleaned and ready for use. ' WHERE `entry` =6323;

-- Michael Garrett --
UPDATE `quest_template` SET `OfferRewardText` = 'This crate must reach Brill quickly?  That is easily done; our bats fly there daily. ', `RequestItemsText` = 'If you must travel a long distance, then a bat is your best option. ' WHERE `entry` = 6322;
	
-- Return to Morris --
UPDATE `quest_template` SET `OfferRewardText` = 'Good work, $N.  These weapons will ensure our Deathguards don''t get caught unprepared.$B$BYou have done a valuable service for our Dark Lady. ', `RequestItemsText` = '$N, you return.  Do you have our supplies from the Undercity? ' WHERE `entry` = 6324;

-- A Putrid Task --
UPDATE `quest_template` SET `OfferRewardText` = 'Well done.  I enjoyed watching you smash those $R into rotting pulp! ', `RequestItemsText` = 'Have you completed the task with which I have charged you?  Do you have those putrid claws? ' WHERE `entry` = 25090;

-- Head for the Mills --
UPDATE `quest_template` SET `OfferRewardText` = 'Argh!  Get back!  Oh, you''re not Scourge, are you?$B$BThank the Banshee Queen that you''re here.  I''ve greatly underestimated how bad it''s gotten up here. ' WHERE `entry` = 25031;

-- The Family Crypt --
UPDATE `quest_template` SET `OfferRewardText` = 'Your actions struck a telling blow against the Scourge.  And your victory will not go unnoticed - not by the Forsaken, nor by our enemies.$B$BContinue the struggle as we all do, $N, and one day the Forsaken will have the dominion over Azeroth that they are owed! ' WHERE `entry` = 25003;

-- Maggot Eye --
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent work!  Now if only I can convince Jerrod to let us move our operation into that shack... ', `RequestItemsText` = 'Yes?' WHERE `entry` = 24998;

-- Graverobbers --
UPDATE `quest_template` SET `OfferRewardText` = 'Expertly done, $N.  The Scourge are mistaken if they think they can use those corpses against us, and the fluid you gathered from the Rot Hide slaves will be studied by my master.  It may have secrets we can use against them. ', `RequestItemsText` = 'Is your task complete?  Have you destroyed those dog-things and drained them of their ichor? ' WHERE `entry` = 24997;

-- Deaths in the Family --
UPDATE `quest_template` SET `OfferRewardText` = 'Revenge has a sweet taste, don''t you think?  When you destroyed the Agamands, did you catch any hint of free will within them?  I hope so.  I hope they knew fear before they were smashed into oblivion.$B$BIt is a foolish hope, I know.  But it is a hope I foster nonetheless.', `RequestItemsText` = 'Do you have the remains of the Agamands?  Are those cursed beasts finally destroyed?' WHERE `entry` = 25029;

-- Darkhound Pounding --
UPDATE `quest_template` SET `OfferRewardText` = 'You have done well, $N and I thank you for your efforts. ', `RequestItemsText` = 'Have you collected the darkhound blood yet, $N? Time is fleeting! ' WHERE `entry` = 24990;

-- Holland's Experiment --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, a drink at last.  What matter of ale is this?  I''m sure it''s no Rhapsody Malt but I''ll take anything to wet the old whistle at this point. ', `RequestItemsText` = 'Why if I had my trusted rifle you''d be as good as dead, $C.  Just wait until the Steam Tank Brigade arrives to rescue me! ' WHERE `entry` = 24996;

-- Grisly Grizzlies --
UPDATE `quest_template` SET `OfferRewardText` = '$N, you''ve done it again!  These are perfect. ', `RequestItemsText` = 'Let''s see... do you have enough hides? ' WHERE `entry` = 25056;

-- A Little Oomph --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, this venom will do perfectly, $N.  Everything else has been added to my concoction and boiled down.  Thank you, $C! ', `RequestItemsText` = 'Do you have some venom from a Vicious Night Web Spider yet, $N?  It''s the final component I need in order to test my experiment. ' WHERE `entry` = 25013;

-- Learn to Ride in Tirisfal Glades --
UPDATE `quest_template` SET `OfferRewardText` = 'So, shall we begin your Apprentice Riding training? ', `RequestItemsText` = 'Ah, you received my letter? Good. ' WHERE `entry` = 14089;

-- Off the Scales --
UPDATE `quest_template` SET `OfferRewardText` = '$N, were you able to obtain those scales from the murlocs? ', `RequestItemsText` = 'The scales are perfect, $N. Exactly what I needed for this concoction. ' WHERE `entry` = 24995;

-- Doom Weed --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, my doom weed. Excellent!$B$B<Apothecary Jerrod rubs his hands together greedily.>$B$BThese will come in quite handy. You''ve done me, uh, the Lady, a fine service today, $N. As promised, here is the reward that you deserve. ', `RequestItemsText` = '<The apothecary mutters to himself.>$B$BThey brought me gloom weed?  GLOOM WEED?! ' WHERE `entry` = 24994;

-- Speak with Sevren --
UPDATE `quest_template` SET `OfferRewardText` = 'Devlin Agamand?  Is that him you carry in your sack there?  Ha!$b$bYes, I know what Coleman wants to try, and I want to try it too.  I hope you''re prepared, $N. ', `RequestItemsText` = 'The fetor of Scourge hangs about you, $N.  What is it you seek? ' WHERE `entry` = 25005;

-- The Grasp Weakens --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, how unfortunate. Perhaps the Scourge''s dominion over Devlin''s mind remained too strong. Or perhaps our methods are simply not strong enough. It''s also possible that Devlin was too simple-minded to comprehend what we were asking him. ', `RequestItemsText` = 'What did you find out? ' WHERE `entry` =25006;

-- East... Always to the East --
UPDATE `quest_template` SET `OfferRewardText` = '<The High Executor sizes you up.>$B$BNot much of a $c, are you? Well, you will be when I''m done with you. ' WHERE `entry` =25007;
	
-- At War With The Scarlet Crusade --
UPDATE `quest_template` SET `OfferRewardText` = 'Your actions will slow down the Scarlet Crusade''s advancement in Tirisfal quite a bit... hopefully for good.  But other threats loom. ', `RequestItemsText` = 'I see you have returned but your task is not complete. Perhaps you are at ease with the mere humans interfering with The Dark Lady''s plan? Or perhaps you can heed the call of duty and slay the Scarlet band that lies only moments away! ' WHERE `entry` = 25009;
	
-- A Deadly New Ally --
UPDATE `quest_template` SET `OfferRewardText` = 'As you look over the ruins of the camp, you hear a whisper behind you.$B$B<"I could kill you right now if I wanted to. You''d better watch your step, $R."> ' WHERE `entry` = 25010;

-- A Daughter's Embrace --
UPDATE `quest_template` SET `OfferRewardText` = 'From birth to undeath, we all have our own path to follow. Some are easier than others. It sounds like this Voss girl has had a rough path so far.$b$bHopefully she ultimately chooses to join us and follow the Dark Lady. With power like hers, we could do incredible things.$b$bBy the way, $N... excellent work out there. If you''re ever ready and willing, I may have some work for you in the Plaguelands. ' WHERE `entry` = 25046;
	
-- To Bigger and Better Things --
UPDATE `quest_template` SET `OfferRewardText` = 'Sure, I''ll give you a ride. If High Executor Derrington asks for it, then technically I have to. ' WHERE `entry` = 25011;	
	
	
-- Take to the Skies --
UPDATE `quest_template` SET `OfferRewardText` = 'Ah, perfect timing. I was just preparing a missive to send to Renferrel at the Sepulcher. ' WHERE `entry` = 25012;


-- Warchief's Command: Silverpine Forest! --
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(26964, 2, 130, 0, 9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262152, 0, 0, 0, 0, 0, 0, 26965, 26964, 26965, 5, 0, 0, 0, 'Warchief''s Command: Silverpine Forest!', 'All able-bodied members of the Horde are hereby ordered to report to Grand Executor Mortuus at Forsaken High Command in Silverpine Forest.$B$BNow, more than ever, your help is needed in routing the enemy infestation of the region and conquering the port of Gilneas!$B$BTo reach Forsaken High Command you must travel south through Tirisfal Glades and enter Silverpine Forest. From there, follow the road south until you reach Forsaken High Command.$B$BOnward, $g brother:sister;! Destiny calls!', 'Report to Grand Executor Mortuus at Forsaken High Command in Silverpine Forest.', 'Most excellent! A new recruit has arrived. There is much to do... much to do I say. ', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 0);


-- Warchief's Command: Silverpine Forest! --
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(28568, 1, 130, 0, 9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262152, 0, 0, 0, 0, 0, 0, 26965, 26964, 26965, 5, 0, 0, 0, 'Warchief''s Command: Silverpine Forest!', 'All able-bodied members of the Horde are hereby ordered to report to Grand Executor Mortuus at Forsaken High Command in Silverpine Forest.$B$BNow, more than ever, your help is needed in routing the enemy infestation of the region and conquering the port of Gilneas!$B$BTo reach Forsaken High Command you must travel south through Tirisfal Glades and enter Silverpine Forest. From there, follow the road south until you reach Forsaken High Command.$B$B Destiny calls!', 'Report to Grand Executor Mortuus at Forsaken High Command in Silverpine Forest.', 'Most excellent! A new recruit has arrived. There is much to do... much to do I say. ', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);


-- The Warchief Cometh --
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(26965, 2, 130, 0, 9, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 'The Warchief Cometh', 'You''re just in time, $Nnub. It is $Nnub, right?$B$B<Grand Executor Mortuus looks at a sheet of paper.>$B$BYes, that''s what the paperwork says: "$Nnub."$B$B<Grand Executor Mortuus points to your name on the sheet of paper.>$B$BWhere was I? Oh yes, you''re just in time! The Warchief should be arriving at any moment to meet with our leader and savior, the Dark Lady herself. Just stand by and be at your best behavior. I expect that when this demonstration is over we will all receive commendations!', 'Stand by for Warchief Garrosh Hellscream''s arrival.', 'Stand at attention, $Nnub! ', 'Well that was unexpected. I am not one to doubt our Warchief, but...$B$BNevermind! We have work to do. I''m sure the Dark Lady and the Warchief will get this all worked out. ', '', 'Speak with Grand Executor Mortuus at Forsaken High Command in Silverpine Forest.', 'Stand by for Warchief Garrosh Hellscream''s arrival', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44629, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 780, 0, 0, 0, 0, 0, 0, 0, 0, 1, 66, 0, 0, 1500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream', 'Garrosh Hellscream', '', '', 0, 0, 890, 878, 0, 0, 0, 0);


-- Guts and Gore --
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent! With these guts and the ferocious doomweed we''ll be able to test out our new strain of blight. Now to select a suitable target... ', `RequestItemsText` = 'Remember, I can only use clean beast guts for the new strain of blight we''re developing. ' WHERE `entry` =26995;


-- The Gilneas Liberation Front --
UPDATE `quest_template` SET `OfferRewardText` = '$Nnub has returned! And in one piece!$B$B Defender of Silverpine! Redeemer of the Horde! $nnub, your bravery must be rewarded! ', `RequestItemsText` = 'What have you to report, $Nnub? ' WHERE `entry` = 26989;


-- Agony Abounds --
UPDATE `quest_template` SET `OfferRewardText` = 'Agony abounds, friend! The land itself threatens to devour us, and yet we persist. I wonder why that is? WIth this doomweed and the guts that T''Veen needs, we might have something suitable to send to the Forsaken front. ', `RequestItemsText` = 'Have you collected the ferocious doomweed I requested? ' WHERE `entry` = 26992;


-- Iterating Upon Success --
UPDATE `quest_template` SET `OfferRewardText` = 'Potent enough to exterminate a thousand Murillo! I think I''ll put that on the label. You''ve done well, $N, and great work around here gets rewarded. ', `RequestItemsText` = 'Have you exterminated the Vile Fin murlocs of the Dawning Isles? ' WHERE `entry` = 26998;


-- Dangerous Intentions --
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(27039, 2, 130, 0, 9, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 27045, 0, 0, 4, 0, 0, 0, 'Dangerous Intentions', 'Do you know why Mortuus appends ''nub'' to your name, $N? Because he is an incompetent sycophant that has trouble seeing through his oversized helmet. ''NUB'' is your classification. You are now part of the NEW UNDERCITY BATALLION.$B$BBut enough with the comedy! I sent Deathstalker Yorick on a shadow operation two days ago. Her goal was to get information on the Gilneas Liberation Front and return. Three days and no word from her.$B$BHead southwest to the Ivar Patch and look for Yorick, $N.', 'Find Deathstalker Yorick at the Ivar Patch in Silverpine Forest. ', 'Belmont gets a little nervous and sends some newbie to look for me? Listen, I''ve been staking out the old Ivar cottage from inside this outhouse for three days. Your presence threatens the whole damn operation!$B$BThere''s no time to explain. We have to act now or this mission will be compromised. ', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1136, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 0);


-- Waiting to Exsanguinate --
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES
(27045, 2, 130, 0, 9, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 27056, 0, 0, 7, 0, 0, 0, 'Waiting to Exsanguinate', 'The Gilneas Liberation Front leader, Darius Crowley, has been meeting with another worgen inside this cottage for the past three days. I''m not sure what''s going on, but we need to get inside the cottage and find a good hiding place from where we can eavesdrop.$B$BIt''s now or never, $r. We may never get another shot.$B$BJust promise me that if I don''t make it, you''ll return to Forsaken High Command and inform Belmont of whatever we discover.', 'Enter the Ivar Cottage and find a suitable hiding place upstairs. Then eavesdrop on Lord Darius Crowley.', 'Alas, poor Yorick! I knew her, $N. An assassin of infinite courage...$B$BNow, tell me what''s going on? What did you and Yorick discover? ', NULL, '', 'Return to Deathstalker Commander Belmont at Forsaken High Command in Silverpine Forest.', 'Learn of Darius Crowley''s Plans', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44882, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 62833, 62832, 62831, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 1560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathstalker Rane Yorick', 'Deathstalker Rane Yorick', '', '', 0, 0, 890, 878, 0, 0, 0, 0);


-- Belmont's Report --
UPDATE `quest_template` SET `OfferRewardText` = 'Crowley... A gnat. An insect, waiting to be crushed beneath my boot heel.$B$BSo he thinks to rouse the feral worgen of Silverpine? We shall show him and his allies the might of the Forsaken!$B$BBut first we must clean up the mess made by the Warchief''s fleet. Without their aid we may lose this war. ', `RequestItemsText` = 'Kneel before your queen, $N. ' WHERE `entry` = 27056;

-- The Warchief's Fleet --
UPDATE `quest_template` SET `OfferRewardText` = 'This fiasco may go down as one of the biggest embarrassments in the history of naval warfare. How did this happen? Drunk happened. That''s how.' WHERE `entry` = 27065;

-- Steel Thunder --
UPDATE `quest_template` SET  `OfferRewardText` =  'Within these creates are held STEEL THUNDER! With our weaponry returned we might have a chance to redeem ourselves.', `RequestItemsText` =  'The pups might be the only orcs nut drunk at this base.' WHERE  `entry` = 27069;

-- Give 'em Hell! --
UPDATE `quest_template` SET  `OfferRewardText` = 'Looks as if you really gave those worgen a beating and, in the process, lifted the "shame haze" they cast over us. Perhaps the sea dogs will quit drinkin'' now.$B$BWho am I kidding?$b$bHah!', `RequestItemsText` =  'Give ''em hell, <race>!' WHERE  `entry` = 27073;

-- Playing Dirty --
UPDATE `quest_template` SET  `OfferRewardText` =  'Excellent. Now to prepare the "meal."', `RequestItemsText` =  'We are Forsaken! This is how we do it, $c.' WHERE  `entry` = 27082;

-- It's Only Poisonous if You Ingest It --
UPDATE `quest_template` SET  `OfferRewardText` =  '<Apothecary Wormcrud laughs maniacally.$B$BWas there every any doubt? An etting is no match for science!', `RequestItemsText` =  'Have you dealt with the ettin?' WHERE  `entry` = 27088;

-- Lost in the Darkness --
UPDATE `quest_template` SET  `OfferRewardText` =  'Lok''tar, $n! Once the ale wears off my orcs will be ready!', `RequestItemsText` =  'Thankfully we''re almost out of ale.' WHERE  `entry` = 27093;

-- Skitterweb Menace --
UPDATE `quest_template` SET  `OfferRewardText` =  'The root of this evil must be found at the destroyed! The Skitterweb matriarch must be nearby. No doubt hiding in the nearby cave!', `RequestItemsText` =  'The matriarch must be found!' WHERE  `entry` = 27095;

-- Deeper into Darkness --
UPDATE `quest_template` SET  `OfferRewardText` = 'You rescued our orcs and killed the Skitterweb matriarch? We owe you a great debt of gratitude. You''ve saved us all from certain execution, $N. I''m sure we can rouse these drunken idiots now.' WHERE  `entry` = 27094;

-- Orcs are in Order --
UPDATE `quest_template` SET  `OfferRewardText` =  '<Sylvanas raises an eyebrow.>$B$BSo the orcs are in order?$B$B<Sylvanas reads the commendation letter.>$B$BRecovered their supplies? Killed a dozen worgen? Toppled an ettin? Freed their soldiers and destroyed the Skitterweb matriarch?$B$BI say this rarely, $n but I am impressed. Perhaps your ability matches your aspirations. We shall see, for now you will be tested!', `RequestItemsText` =  'And the orcs?' WHERE  `entry` = 27096;

-- Rise, Forsaken --
UPDATE `quest_template` SET  `OfferRewardText` =  'I see everything, $N. Through Agatha all is known to me.', `RequestItemsText` =  'Victory!' WHERE  `entry` = 27097;

-- No Escape --
UPDATE `quest_template` SET  `OfferRewardText` = 'It would seem that Crowley is more formidable than I anticipated. Still, he is a man - flesh and bone - full of secrets. Secrets that I know all about...&B&BYou have served me well, <name>. I could use someone of your ability at the Sepulcher. I have a plan to deal with Crowley and his insurgents one and for all. Will you help?', `RequestItemsText` =  'What have you to report?' WHERE  `entry` = 27099;

-- Lordaeron --
UPDATE `quest_template` SET  `OfferRewardText` =  'Do you now understand the importance of our mission here? Crowley and his Alliance dogs must be stopped!' WHERE  `entry` = 27098;

-- Honor the Dead --
UPDATE `quest_template` SET  `OfferRewardText` =  'I will see to it that these insignias are turned to the Undercity at once. The registrar will place their names in our records so that their sacrifice may never be forgotten.', `RequestItemsText` =  'Have you recovered the insignias?' WHERE  `entry` = 27180;

-- Hair of the Dog --
UPDATE `quest_template` SET  `OfferRewardText` =  'A-HA! I knew it! Lesson learned, I suppose. We will not fall again. I will be sure to have some ale on hand at the front lines.', `RequestItemsText` =  'Don''t let my sea dogs die!' WHERE  `entry` = 27226;

-- Reinforcements from Fenris --
UPDATE `quest_template` SET  `OfferRewardText` =  '<Hatchet''s communication device crackles.>$B$BHatchet here, are they all dead?' WHERE  `entry` = 27231;

-- The Waters Run Red...  --
UPDATE `quest_template` SET  `OfferRewardText` =  'Though you killed a large number of the newly turned worgen, many more are sure to appear. Still, their assault will have softened. Well done, $n!' WHERE  `entry` = 27232;

-- Excising the Taint --
UPDATE `quest_template` SET  `OfferRewardText` =  '<The Banshee Queen''s voice invades your thoughts.>$B$BYou have avenged the fallen, $n, but there is more to be done.' WHERE  `entry` = 27181;

-- Seek and Destroy --
UPDATE `quest_template` SET  `OfferRewardText` = '<The Banshee Queen''s words float in your head.>$B$BThis book documents a recent meeting with Ivus Bloodfang. The location mentioned is the Deep Elem Mine. I know of this place. It has only one entrance.$B$BWe shall corner and crush them!', `RequestItemsText` =  'What is your status?' WHERE  `entry` =27193;

-- Cornered and Crushed! --
UPDATE `quest_template` SET  `OfferRewardText` =  'I ''spose we''re to corner them first then crush, eh?' WHERE  `entry` =27194;

-- Nowhere to Run --
UPDATE `quest_template` SET  `OfferRewardText` = 'WHAT!?$B$B<Sylvanas shrieks.>$B$BCROWLEY!!!!!$B$BBastards. Those were some of our strongest soldiers. I have underestimated Darius Crowley <Crowley> and Bloodfang for the last time. Clearly they are an enemy the likes of which we have never seen - willing to sacrifice their own to set a trap like this... unheard of in Alliance warfare.' WHERE  `entry` =27195;

-- To Forsaken Forward Command --
UPDATE `quest_template` SET  `OfferRewardText` = 'Well if it isn''t $n nub!$B$BI hope you''re ready for battle, because that''s all you''ll find in this hellhole. We''re at the heart of contested territory and these worgen mongrels won''t give an inch!' WHERE  `entry` =27290;

-- In Time, All Will Be Revealed --
UPDATE `quest_template` SET  `OfferRewardText` = '<Belmont takes the wolfsbane from you.>$B$BGood. Now just do as Forward Commander Onslaught try. Try your best to fit in with the rest of the soldiers. We won''t want the Gilneas Liberation Front to get suspicious.$B$BOh, you didn''t know they were watching us? Right now there are five different worgen spies looking down on our position. Just be calm and follow orders. I''ll let you know when we are ready to proceed.', `RequestItemsText` =  'Did you gather the wolfsbane?' WHERE  `entry` =27342;

-- Losing Ground --
UPDATE `quest_template` SET `OfferRewardText` = 'If I could still breathe I''d let our a sigh of relief.$B$BDon''t get too comfortable, though, $N, your mission here has just begun. ', `RequestItemsText` = 'Kill the rebels! ' WHERE `entry` = 27333;

-- The F.C.D. --
UPDATE `quest_template` SET `OfferRewardText` = 'With this device I will be able to communicate with you in the field. Now to check the rest of our frontline outposts. ', `RequestItemsText` = 'Recover the F.C.D. ' WHERE `entry` = 27345;

-- Break in Communications: Dreadwatch Outpost --
UPDATE `quest_template` SET `OfferRewardText` = '<The F.C.D. crackles with static.>$B$BDreadwatch is lost? This is bad, <name>. Real bad.$B$BIf Dreadwatch is compromised it means we''ve lost Gilneas City. ', `RequestItemsText` = 'Status?' WHERE `entry` = 27349;

-- Break in Communications: Rutsak's Guard --
UPDATE `quest_template` SET `OfferRewardText` = 'Th... Af... After we lost Gilneas City, the port fell.$B$BHU... HUM... HUMANS ARE HERE! Reinforcements from Stormwind! They slaughtered my men. Left me alive to witness their strength. To tell high command... To tell them that the 7th Legion are here... ' WHERE `entry` = 27350;

-- Vengeance for Our Soldiers --
UPDATE `quest_template` SET `OfferRewardText` = 'Though we were shamed in battle, the enemy was not victorious. I will not soon forget this, $N.$B$BIf I make it back to Silverpine I will likely retire from the service. War is not in my blood. ', `RequestItemsText` = 'The 7th Legion must pay for what they did! ' WHERE `entry` = 27360;

-- On Whose Orders? --
UPDATE `quest_template` SET `OfferRewardText` = '<The F.C.D. crackles with electricity.>$B$BAn Alliance armada is en route? How could this have happened?$B$B<Forward Commander Onslaught cuts out for a moment. You hear worgen howling in the background.>$B$BYou''ve got to hurry, $N. We''re being overrun up here at Forward Command. ' WHERE `entry` = 27364;

-- What Tomorrow Brings --
UPDATE `quest_template` SET `OfferRewardText` = '<The F.C.D. crackles with electricity.>$B$BTORPEDOED! We have everything at the water line covered, but nothing below the line. They must have snuck in beneath our defenses and then blown our warships to smithereens.$B$BAnd now the rest of the Alliance fleet is nearly here... ' WHERE `entry` = 27401;

-- Fall Back! --
UPDATE `quest_template` SET `OfferRewardText` = 'Forward Commander Onslaught fought until the bitter end, $N. It took a pack of bloodthirsty worgen to finally bring him down. We must not let his death, or the death of all of our soldiers in Gilneas, go in vain. Our mission MUST succeed.$B$BNow I will reveal to you why we are here. ' WHERE `entry` = 27405;

-- A Man Named Godfrey --
UPDATE `quest_template` SET `OfferRewardText` = 'Here we are, $N. He is a little rotted, but no worse for the wear. We must hurry before the Alliance finds us! ', `RequestItemsText` = 'Lord Vincent Godfrey. The name itself evokes feelings of dread in the hearts of worgen. ' WHERE `entry` = 27406;

-- Resistance is Futile --
UPDATE `quest_template` SET `OfferRewardText` = 'No time to bask in the battle glory, $N. We have a job to do. I have no doubt more of those beasts are on the way. ', `RequestItemsText` = 'Surrender? Coward talk... ' WHERE `entry` = 27423;

-- The Great Escape --
UPDATE `quest_template` SET `OfferRewardText` = 'I had no doubt that you would success, $N. I hope you can understand why I kept the true purpose of your mission a secret. Should Crowley and Bloodfang have found out about our plan, they would have surely gotten to Godfrey first and disposed of the body.$B$BStand by, $N. The time of their rebirth is at hand. ' WHERE `entry` = 27438;

-- Rise, Godfrey --
UPDATE `quest_template` SET `OfferRewardText` = 'Today marks a new beginning for the Forsaken and the end of the Alliance in Lordaeron! ' WHERE `entry` =27472;

-- Breaking the Barrier --
UPDATE `quest_template` SET `OfferRewardText` = 'Clever mages. The codex is sealed by a magical ward.$B$BPity that they weren''t clever enough to realize that former archmages of Dalaran are now Forsaken. ', `RequestItemsText` = 'Have you found anything yet? ' WHERE `entry` = 27474;

-- Unyielding Servitors --
UPDATE `quest_template` SET `OfferRewardText` = 'Well done, $N. The praise the Banshee Queen lavishes upon you is apparently not unfounded. ', `RequestItemsText` = 'Have you recovered the servitor cores? ' WHERE `entry` = 27475;

-- Dalar Dawnweaver --
UPDATE `quest_template` SET `OfferRewardText` = 'The Dark Lady requires my expertise? Well off course! Give it here, $Ggirl:boy. ', `RequestItemsText` = 'Yes? What is it? ' WHERE `entry` = 27476;

-- Relios the Relic Keeper --
UPDATE `quest_template` SET `OfferRewardText` = 'Perfect. I hope this wasn''t too much trouble to come by, $N. Relios was a pupil of mine when I was a mortal man thereby making him a competent and formidable adversary. I suppose I could have warned you ahead of time.$B$BNow let us see the ring.$B$B<Dalar trails the ring across the spine of the codex.>$B$BThere we are... ', `RequestItemsText` = 'Did you recover a Dalaran Archmage''s Signet Ring? ' WHERE `entry` = 27478;

-- Practical Vengeance --
UPDATE `quest_template` SET `OfferRewardText` = 'I thought for sure that with the death of a dozen of my most hated enemies I would feel a great burden lifted from my shoulders. Sadly, I do not feel a thing. Perhaps I am a psychopath. ', `RequestItemsText` = 'The people of Dalaran must suffer for what they did to me! ' WHERE `entry` = 27483;

-- Ley Energies --
UPDATE `quest_template` SET `OfferRewardText` = 'Smart $Gboy:girl! I can most definitely use these arcane remnants in my studies. Indeed, Dalaran was built upon a massive ley line. It''s no wonder, then, that such things exist at the crater. ', `RequestItemsText` = 'What''s that you''ve got there, $N>? ' WHERE `entry` = 27480;

-- Only One May Enter --
UPDATE `quest_template` SET `OfferRewardText` = 'Only one may enter? I know just the person for this mission.$B$B<Sylvanas nods at you.>$B$BI will prepare our forces and have them at the ready. ', `RequestItemsText` = 'What have you learned? ' WHERE `entry` = 27848;

-- Transdimensional Warfare: Chapter I --
UPDATE `quest_template` SET `OfferRewardText` = '<The Banshee Queen''s voice invades your thoughts.>$B$BYes, this is it. Now run the ring along the runes of the portal and you should become attuned for transdimensional travel. ', `RequestItemsText` = '<The portal hums.> ' WHERE `entry` = 27512;

-- A Wolf in Bear's Clothing --
UPDATE `quest_template` SET `OfferRewardText` = 'I only hope that we don''t end up getting beat down by inconspicuous birds, cats and trees next... or seals. Could you imagine it? ', `RequestItemsText` = 'Have you killed the "bears?" ' WHERE `entry` = 27510;

-- Transdimensional Warfare: Chapter II --
UPDATE `quest_template` SET `OfferRewardText` = '<The Banshee Queen''s voice invades your thoughts.>$B$BExcellent work, $N. Now to eject them into our waiting hands! ' WHERE `entry` = 27513;

-- Transdimensional Warfare: Chapter III --
UPDATE `quest_template` SET `OfferRewardText` = 'Had I not witnessed what you did with my own eyes I would not have believed it, $N. Now, with the Ambermill magi on our side, there is but one thing left to do before we retake Gilneas and send those Alliance dogs running for Stormwind.' WHERE `entry` = 27518;

-- Taking the Battlefront --

-- Pyrewood's Fall --
UPDATE `quest_template` SET `OfferRewardText` = 'The part of me that was Gilnean died at Tempest''s Reach. Only vengeance remains, $N. To that end, we have work to do. Spare me your pointless queries. ', `RequestItemsText` = 'I feel no remorse. ' WHERE `entry` = 27550;

-- Lessons in Fear --
UPDATE `quest_template` SET `OfferRewardText` = 'I suspect we''ll see fewer humans at the Battlefront. The risk for these cowards is too great.', `RequestItemsText` = 'Pyrewood Village must be reduced to ashes and our enemies slain! ' WHERE `entry` = 27548;

-- Of No Consequence --
UPDATE `quest_template` SET `OfferRewardText` = 'What happened here today is between us. Say a word to anyone and you will find yourself in a corpse pit next to these poor fools. ', `RequestItemsText` = 'The sooner we rescue the survivors the sooner we can burn down the whole of Pyrewood. ' WHERE `entry` = 27547;

-- 7th Legion Battle Plans --
UPDATE `quest_template` SET `OfferRewardText` = '<Walden flips through the battle plan.>$B$BIt looks like the reinforcements from the ships in Gilneas are marching soon. Crowley and Bloodfang have set up an encampment to the southeast for the Gilneas Liberation front. ', `RequestItemsText` = 'Search every filthy dwarven corpse. ' WHERE `entry` = 27577;

-- Sowing Discord --
UPDATE `quest_template` SET `OfferRewardText` = 'The rest of the Alliance fleet will arrive shortly, only to find their base camp decimated. Now for the second and most important part of our plan. ', `RequestItemsText` = 'Marstone is a decorated field general. He will not go down easy. ' WHERE `entry` = 27580;

-- On Her Majesty's Secret Service --
UPDATE `quest_template` SET `OfferRewardText` = 'You have done it! Finally, everything is in place. Should Crowley not accept our terms, his daughter will be turned. ' WHERE `entry` = 27594;

-- Cities in Dust --
UPDATE `quest_template` SET `OfferRewardText` = '<Lady Sylvanas Windrunner grimaces in pain.>$B$BThis... is not over. Godfrey and his traitorous allies will pay for what they have done as will the remaining Alliance forces occupying Lordaeron.$B$BOur work has only just begun. ' WHERE `entry` = 27601;

-- Empire of Dirt --
UPDATE `quest_template` SET `OfferRewardText` = 'News of your conquest in Silverpine emboldens us, $N. We are prepared to fight at your command and beat back the last remaining vestiges of humanity in Hillsbrad. ' WHERE `entry` = 27746;

-- Skitterweb Menace --
UPDATE `quest_template` SET `OfferRewardText` = 'The root of this evil must be found at the destroyed! The Skitterweb matriarch must be nearby. No doubt hiding in the nearby cave! ', `RequestItemsText` = 'The matriarch must be found!' WHERE `entry` = 27095;

-- Deeper into Darkness --
UPDATE `quest_template` SET `OfferRewardText` = 'You rescued our orcs and killed the Skitterweb matriarch? We owe you a great debt of gratitude. You''ve saved us all from certain execution, $N. I''m sure we can rouse these drunken idiots now. ' WHERE `entry` = 27094;