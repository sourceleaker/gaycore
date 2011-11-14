ALTER TABLE `world_db_version` CHANGE  `required_17_troll_artof` `required_18_from_old_repository`  BIT(1);
-- AREATRIGGER_QUESTSTART
CREATE TABLE IF NOT EXISTS `areatrigger_queststart`(`Trigger_ID` int NOT NULL , `Quest_ID` int NOT NULL);

-- Support For Quest: http://www.wowhead.com/quest=26284
UPDATE `gameobject_template` SET `ScriptName`='go_makeshift_cage' WHERE (`data4`='20138' AND `data7`='10023' AND `data1`='99');

-- Quest Fix: http://www.wowhead.com/quest=2579
DELETE FROM `conditions` WHERE `SourceEntry` = 77314 AND `ConditionValue2` = 41202;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES ('13', '77314', '18', '1', '41202', 'Constriction Totem- Burn Constriction Totem');

-- Fix for quest 13946[Teldrassil] - KillCredit on dead with active aura. 
UPDATE creature_template SET ScriptName='npc_grellkin' WHERE entry IN (2003,2005);

-- Area Elwynn Forest Complete Zone -> (gameobjects,quests,npc,events) 
UPDATE quest_template SET QuestFlags=524288, OfferRewardText='I think you now understand the power of the Light. The Light giveth hope, brother and the Light taketh from the darkness! BLESSED BE THE LIGHT!', RequestItemsText='Have you help our soldiers?' WHERE entry IN (28812,28813,29082,28811,28810,28808,28809,28806);
UPDATE quest_template SET OfferRewardText='This is bad news. What\'s next, dragons?!? We\'ll have to increase our patrols near that mine. Thanks for your efforts, $N. And hold a moment... I might have another task for you.', RequestItemsText='What do you have to report, $N? Have you been to the Fargodeep Mine?',NextQuestInChain=76 WHERE entry=62;
UPDATE quest_template SET OfferRewardText='Thanks for the dust, $N. Here\'s your cash, and...here is a token from associates of mine. You might find it useful...useful.',RequestItemsText='Psst! You have that Gold Dust for me...for me?' WHERE entry=47;
UPDATE quest_template SET OfferRewardText='You have to get this note to Stormwind?  That\'s not a problem, you can take one of my gryphons! ', RequestItemsText='You look like you\'re in a hurry. Well, then you came to the right place!' WHERE entry=26393;
UPDATE creature_template SET npcflag=3 WHERE entry IN(251,253,261);
UPDATE quest_template SET OfferRewardText='Kobolds at the Jasperlode Mine, you say? Curses! The situation is worsening by the minute!$B$BThank you for the report, $N. But I wish that the news you brought was good news.', RequestItemsText='Hail, $N. What do you have to report? Have you scouted the Jasperlode Mine?' WHERE entry=76;
DELETE FROM creature WHERE id=261;
INSERT INTO `creature` ( `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)VALUES
('261', '0', '1', '1', '0', '0', '-9610.23', '-1032.05', '41.3058', '3.1459', '300', '0', '0', '1003', '0', '0', '0', '0', '0', '0');
UPDATE quest_template SET OfferRewardText='You were busy hunting kobolds, were you? Thanks for the candles, $N, and here\'s your reward...', RequestItemsText='Did you gather those candles yet?', NextQuestInChain=61 WHERE entry=60;
UPDATE quest_template SET OfferRewardText='Yes, I spoke with Remy. I respect him as a merchant, though all reports of Murlocs to the east have been sketchy at best.$B$BYour concerns are noted, but unless I receive a military report of a murloc threat, we can\'t afford to send more troops east.', NextQuestInChain=35 WHERE entry=40;
UPDATE quest_template SET OfferRewardText='Thanks, $N! And come back if you want to trade again.', RequestItemsText='Farming is thirsty work, and I\'m always looking for refreshing spring water.$B$BIf you have any, then I\'m willing to make a trade.' WHERE entry=16;
UPDATE quest_template SET OfferRewardText='Yes, murlocs have settled in and around the streams of eastern Elwynn. We don\'t know why they are here, but they are aggressive and at least semi-intelligent.' WHERE entry=35;
UPDATE quest_template SET OfferRewardText='Thanks a lot for the help, $N. Something in the forest must be making these animals so bold.$B$BWhatever it is, I hope it stays there.', RequestItemsText='Have you killed those wolves and bears?' WHERE entry=52;
DELETE FROM `gameobject_involvedrelation` WHERE quest=37;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`)VALUES
('55', '37');
UPDATE quest_template SET OfferRewardText='Although much has been stripped from the corpse, strewn nearby is a medallion with the words: "Footman Malakai Stone" etched upon it.' WHERE entry=37;
DELETE FROM gameobject WHERE id=176793;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('176793','0','1','1','-9405.82','-1217.06','56.3241','1.02974','0','0','0.492424','0.870356','60','100','1'),
('176793','0','1','1','-9362.34','-1249.63','63.1472','-0.366519','0','0','0.182236','-0.983255','60','100','1'),
('176793','0','1','1','-9382.79','-1184.88','62.9284','-1.79769','0','0','0.782608','-0.622515','60','100','1'),
('176793','0','1','1','-9353.76','-1204.15','66.7748','-1.88496','0','0','0.809017','-0.587785','60','100','1'),
('176793','0','1','1','-9308.91','-1302.8','68.2527','-0.680679','0','0','0.333807','-0.942641','60','100','1'),
('176793','0','1','1','-9216.81','-1258.01','77.3716','0.785398','0','0','0.382683','0.92388','60','100','1'),
('176793','0','1','1','-9251.74','-1232.97','73.6682','2.89725','0','0','0.992546','0.121869','60','100','1'),
('176793','0','1','1','-9186.53','-1271.85','77.5322','-1.74533','0','0','0.766044','-0.642788','60','100','1'),
('176793','0','1','1','-9106.29','-1242.62','72.0848','-0.907571','0','0','0.438371','-0.898794','60','100','1'),
('176793','0','1','1','-9147.28','-1271.13','77.2768','0.331613','0','0','0.165048','0.986286','60','100','1'),
('176793','0','1','1','-9150.39','-1230.15','70.4289','-0.366519','0','0','0.182236','-0.983255','60','100','1'),
('176793','0','1','1','-9309.43','-1362.21','69.9119','0.383972','0','0','0.190809','0.981627','60','100','1'),
('176793','0','1','1','-9339.49','-1375.02','64.6252','1.71042','0','0','0.75471','0.656059','60','100','1'),
('176793','0','1','1','-9425.35','-1126.99','58.4709','-2.42601','0','0','0.936672','-0.350207','60','100','1'),
('176793','0','1','1','-9397.9','-1141.84','59.9588','0.680678','0','0','0.333807','0.942641','60','100','1'),
('176793','0','1','1','-9316.88','-1146.7','69.7394','2.96706','0','0','0.996195','0.087156','60','100','1'),
('176793','0','1','1','-9329.07','-1246.56','66.3978','1.5708','0','0','0.707107','0.707107','60','100','1'),
('176793','0','1','1','-9389.48','-1295.82','55.0306','1.0821','0','0','0.515038','0.857167','60','100','1'),
('176793','0','1','1','-9380.64','-1262.96','56.987','2.84489','0','0','0.989016','0.147809','60','100','1'),
('176793','0','1','1','-9351.74','-1310.34','59.6748','-1.48353','0','0','0.67559','-0.737277','60','100','1'),
('176793','0','1','1','-9365','-1285.28','59.5279','-2.26893','0','0','0.906308','-0.422618','60','100','1'),
('176793','0','1','1','-9331.11','-1338.23','64.414','0.453786','0','0','0.224951','0.97437','60','100','1'),
('176793','0','1','1','-9340.38','-1142.91','67.7554','-0.20944','0','0','0.104528','-0.994522','60','100','1'),
('176793','0','1','1','-9369.15','-1128.57','63.9992','-1.71042','0','0','0.75471','-0.656059','60','100','1'),
('176793','0','1','1','-9383.15','-1101.23','62.5236','-2.40855','0','0','0.93358','-0.358368','60','100','1'),
('176793','0','1','1','-9364.32','-1387.31','60.4559','-2.61799','0','0','0','1','60','100','1'),
('176793','0','1','1','-9318.07','-1207.99','69.8322','-1.83259','0','0','0','1','60','100','1'),
('176793','0','1','1','-9350.76','-1421.43','63.5312','0.383971','0','0','0','1','60','100','1'),
('176793','0','1','1','-9354.37','-1354.66','61.4834','-0.558504','0','0','0','1','60','100','1');
UPDATE quest_template SET OfferRewardText='Ah, these are nice bandanas, if a little rough...$b$bHere you are!',RequestItemsText='I\'m running low on linen, $N. Do you have any for me?' WHERE entry=83;
UPDATE quest_template SET OfferRewardText='Oh...my! I feel guilty deceiving my family, but my feelings for Tommy Joe are too strong to ignore.$b$bThank you, $N. I\'ll drink this liquor as soon as I have the chance and sneak away to my love.$b$bAnd for you... please take this.',RequestItemsText='Did you deliver my letter to Tommy Joe? What did he say??' WHERE entry=114;
UPDATE quest_template SET OfferRewardText='William sent you? Bless his soul. I... I\'m ok... It\'s just... Well... ' WHERE entry=26150;
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=1006 AND entry=330;
UPDATE quest_template SET OfferRewardText='Ah! I can\'t stand us being apart. I have to see her!!', RequestItemsText='You have what?? Maybell is the light of my dull life. Hurry, let me see her letter!' WHERE entry=106;
UPDATE quest_template SET OfferRewardText='You lost a what? Well I didn\'t take no necklace, because I ain\'t NO thief!$b$bI might know who did but...<grin>...I\'m too hungry to remember.' WHERE entry=85;
UPDATE quest_template SET OfferRewardText='Thank goodness! That pig was getting so big she\'d have eaten our whole crop! Thank you, $N.$b$bNow, do either of these suit you?', RequestItemsText='Did you see her yet? Did you get her?' WHERE entry=88;
UPDATE quest_template SET OfferRewardText='Mm, yum! This pie is the best!$b$bI think my memory is coming back to me...', RequestItemsText='Ugh... I\'m starving! Do you have that pie for me, $N?' WHERE entry=84;
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=60401 AND entry=113;
UPDATE creature_loot_template SET ChanceOrQuestChance='-10' WHERE item=60401 AND entry=330;
UPDATE creature_loot_template SET ChanceOrQuestChance='-50' WHERE item=60401 AND entry=524;
UPDATE quest_template SET OfferRewardText='While our families are feuding, Tommy Joe and Maybell don\'t have much of a future, but... maybe we can get them together for just a little while.$B$BHm, what can we do...', RequestItemsText='I can\'t wait to hear how my friends react!$B$BThey\'ll never expect it.' WHERE entry=111;
UPDATE quest_template SET OfferRewardText='Though this wild boar meat is tough, simmer it enough and it sure does make for some tasty pie!', RequestItemsText='I don\'t think it\'s right feeding the boy who stole my necklace in the first place, but if that\'s what it takes to get back what\'s mine, then so be it!$b$bDo you have that boar meat?' WHERE entry=86;
UPDATE quest_template SET OfferRewardText='Oh, you found it! Thank you, thank you dear!$B$BHere, take this. It was my husband\s and he always said it was lucky. If only he didn\'t forget it on his last campaign! *sniff*', RequestItemsText='Hello, $N. Have you found my necklace?' WHERE entry=87;
UPDATE quest_template SET OfferRewardText='My heart goes out to those two poor souls, Maybell and Tommy Joe. I remember being young and in love, once.$b$bThere must be something I can do to help them! Let me think...', RequestItemsText='You have a note from "Gramma" Stonefield, eh? I haven\'t seen Mildred in years! I wonder what she has to say...' WHERE entry=107;
UPDATE quest_template SET OfferRewardText='You got them. Good show! Now, just one moment while I concoct the potion...', RequestItemsText='Do you have that crystal kelp? I\'m sure Maybell is anxious to see her beau...' WHERE entry=112;
UPDATE quest_template SET OfferRewardText='You\'re here to help with my delivery? Very good!' WHERE entry=1097;
UPDATE quest_template SET OfferRewardText='Ah, a note from Smith Argus?  I\'m not surprised he needs more gear.  There are so many new recruits these days.\n
Well thank you, $N.  Here\'s some money to cover your travel costs.', RequestItemsText='You\'ve been traveling, eh?  Have you been anywhere interesting? ' WHERE entry=26394;
UPDATE quest_template SET OfferRewardText='Excellent! Thanks to you, I should be able to complete the order in time. To show my gratitude, I would like to offer some coin as compensation for your troubles.$b$bThank you and farewell.', RequestItemsText='That deadline isn\'t getting any further away, $C. Please hurry and collect those bundles of wood.' WHERE entry=5545;
UPDATE quest_template SET OfferRewardText='Marshall Dughan sent you, eh? Well you\'re not from the army, but if Dughan sent you then that\'s good enough for me!$b$bOur situation is, to say the least, a stressed one. I hope you can give us a hand.' WHERE entry=239;
UPDATE quest_template SET OfferRewardText='You find around the neck of the corpse a metal medallion inscribed WITH the words "Footman Rolf Hartford."' WHERE entry=45;
UPDATE quest_template SET OfferRewardText='You have confirmed my fears, $N. The murlocs are a threat we cannot ignore.', RequestItemsText='Hello, $N. Have you discovered the fates of Rolf and Malakai?' WHERE entry=71;
UPDATE quest_template SET OfferRewardText='Ah, thank you for the marker. Please feel free to pick your choice of armor.$b$bLuck to you, brave $C. And may this armor serve you well.', RequestItemsText='I have been commissioned by the Stormwind Army to supply their people with cloth and leather armor.$b$bIf you have a marker for me, then I\'d be happy to make you something.' WHERE entry=59;
UPDATE quest_template SET OfferRewardText='I see you\'ve been busy! You have our thanks, $N.', RequestItemsText='Hail, $N. Have you been killing Gnolls...?' WHERE entry=11;
UPDATE quest_template SET OfferRewardText='Hah! Well done! I was starting to think no one would take down that monster!$B$BHere you are, $N. And thanks - that Gnoll was giving me a headache the size of Blackrock Spire!', RequestItemsText='Yes, Hogger has been a real pain for me and my men. You have something to report about the beast?' WHERE entry=176;
UPDATE quest_template SET OfferRewardText='Bless your heart, $N. You truly are a hero of the Alliance! Though the land is completely incinerated and there is nothing left of the vineyard but ash and debris, I still might be able to recover. Right? How bad can it be?', RequestItemsText='Have you extinguished a fire?' WHERE entry=26391;
UPDATE quest_template SET OfferRewardText='And justice is served!',  RequestItemsText='Turning in a bounty?' WHERE entry=26152;
UPDATE quest_template SET OfferRewardText='You have the fins?  Great!  Marshal Dughan is anxious about the Murloc situation in eastern Elwynn, and I\'d like to tell him that it\'s becoming under control.\n
Your actions have helped realize that. ',  RequestItemsText='How goes the hunting, $N?' WHERE entry=46;
UPDATE quest_template SET OfferRewardText='This is useless. Look at the date on this letter. The Furlbrows have been squatting on the Jansen Steed for five years.\n
They never could quite get their wagon... fixed.',  RequestItemsText='We don\'t need any civilian vigilante types getting involved, kid. Leave this one to the professionals.' WHERE entry=184;
UPDATE quest_template SET OfferRewardText='Get yourself squared away, learn the layout of the land, and come back to me whenever you need training. I\'ll be here night or day.\n
The Knights of the Silver Hand have done well in making this place fairly safe, but as you meet the other citizens, I think you\'ll find they all have problems they could use some help with--help a <class> can give them. Good luck.', RequestItemsText='Ah, you got my letter, $N... good.\n
There\'s been an influx of warriors in Elwynn recently--which is good for Stormwind, but bad for the orcs in the area. ' WHERE entry=3100;
UPDATE quest_template SET OfferRewardText='In the meantime, you should know one or two other things. You are a symbol to many here in this land--act accordingly. The Holy Light shines within you, and it will be obvious to both your allies and your enemies.
Also, as you gain in wisdom and power, you will need to train to learn new abilities. That\'s where I come in. When you feel you\'ve gained some experience here in Northshire, come back to me and I will teach you what I feel you are ready to learn. Good luck... $C!',RequestItemsText='Finally! We meet face to face, brother to brother. I welcome you to Northshire. This will be your home for a short time while you learn the ins and outs of how things are done, but know that Stormwind is not far off, and sooner or later, your path will take you there. But until then, be patient... Knight of the Silver Hand.' WHERE entry=3101;
UPDATE quest_template SET OfferRewardText='You\'re gonna find a number of outfits that covet our skills, <name>. Adventurers, SI:7... heck, even the disorganized rabble wouldn\'t mind a spy or two inside Stormwind. But you remember this: You\'re your own man. Don\'t let nobody bully you into doing something you don\'t wanna do! Besides, we hold all the cards... at least, we do before the game\'s done. Know what I mean?\n
Anyway, just wanted to introduce myself and let you know that I\'m here if you need any training. Come by anytime. ',RequestItemsText='You made it here in one piece, and it doesn\'t look like too many people saw you. Good enough for me. I don\'t like to have much attention drawn to me back here... nice and quiet. I\'m sure you can understand.\n
Have any trouble yet? I\'m glad to hear not. That\'ll change soon enough. ' WHERE entry=3102;
UPDATE quest_template SET OfferRewardText='As you grow in experience, return to me and I will do what I can to impart my knowledge upon you. Until then, go with compassion in your heart, and let wisdom be your guide. Remember, the world only becomes a better place if you make it so. ',RequestItemsText='Ah, at last you\'ve come. I knew you would find your way to me. The Holy Light shines upon you, and the path you\'ve chosen. These times are harsh--the Burning Legion still has a presence upon Azeroth, the entirety of Kalimdor seeks new ways to defend itself from its own tribulations, and it is up to you to aid as many as you can.' WHERE entry=3103;
UPDATE quest_template SET OfferRewardText='Haha, I knew my note would not dissuade you from your path. So, you\'re prepared then, are you? Prepared to accept your fate? Prepared to challenge the gods and any other forces that stand before you in the pursuit of knowledge and power?\n
I will not lie, $N, you will be feared as much as respected. But also know this, I will be here for you when you need training. Simply seek me out as you grow more powerful. ', RequestItemsText='Hello, $N. I am Khelden. Is there something I can do for you?' WHERE entry=3104;
UPDATE quest_template SET OfferRewardText='As you grow in power, you will be tempted--you must always remember to control yourself. I will not lie--corruption can come to any practitioner of the arcane; especially one who deals with creatures from the Twisting Nether. Be patient, and be prudent... but do not let that repress your ambition.\n
As you grow more powerful, return to me and I will teach you more about our ways. ', RequestItemsText='Ah, so you\'ve arrived, and not a moment too soon, $N. Some of the guards were over here a moment ago and were giving me curious looks... pathetic mundanes. ' WHERE entry=3105;
UPDATE quest_template SET OfferRewardText='So you received my note? Excellent. You\'ve proven yourself quite capable in dealing with those orcs. As you continue to grow in power, I will teach you some new techniques. ',RequestItemsText='Hello, $N. Is there something I can do for you?' WHERE entry=26910;
DELETE FROM `gameobject_questrelation` WHERE quest=45;
INSERT INTO `gameobject_questrelation` (`id`, `quest`)VALUES
('55', '45');
DELETE FROM `gameobject_questrelation` WHERE quest=71;
INSERT INTO `gameobject_questrelation` (`id`, `quest`)VALUES
('56', '71');
DELETE FROM `gameobject_involvedrelation` WHERE quest=45;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`)VALUES
('56', '45');
DELETE FROM creature WHERE id=1416;
INSERT INTO `creature` ( `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)VALUES
('1416', '0', '1', '1', '0', '0', '-8387', '685.202', '95.356', '2.286', '300', '0', '0', '2769', '0', '0', '0', '0', '0', '0');
DELETE FROM gameobject_questrelation WHERE id=68;
INSERT INTO gameobject_questrelation VALUES
('68', '176');
DELETE FROM gameobject WHERE id=203733;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('203733','0','1','1','-9623.94','-1035.28','39.6825','0.205775','0','0','0.102706','0.994712','300','100','1');
DELETE FROM gameobject_questrelation WHERE id =203733;
INSERT INTO gameobject_questrelation VALUES
('203733', '46'),
('203733', '26152');
DELETE FROM gameobject_template WHERE entry=203734;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `WDBVerified`)VALUES
('203734', '2', '8032', 'Westfall Dead', '', '', '', '84', '0', '1', '0', '0', '0', '0', '0', '0', '0', '15261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','12340');
DELETE FROM gameobject_questrelation WHERE id=203734;
INSERT INTO gameobject_questrelation VALUES
('203734', '184');
DELETE FROM gameobject WHERE id=203734;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('203734','0','1','1','-10144.622','682.518','35.966','6.06','0','0','0','0','300','100','1');
DELETE FROM creature_questrelation WHERE quest=46;
INSERT INTO creature_questrelation VALUES
('261', '46');
UPDATE creature_template SET ScriptName='npc_hogger' WHERE entry=448;

-- A lot of changes to gnome start location, still 1 quest don't work ;/
delete from `creature` where id = 1128;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('1128','0','1','1','-5211.67','-97.0443','398.604','4.32843','300','0','122','0','0','0'),
('1128','0','1','1','-5310.54','-47.8904','396.996','3.16604','300','0','144','0','0','0'),
('1128','0','1','1','-5741.66','163.159','434.81','4.83528','300','0','144','0','0','0'),
('1128','0','1','1','-5233.62','-105.049','403.01','4.50646','300','0','122','0','0','0'),
('1128','0','1','1','-5253.79','-56.3961','399.52','6.06155','300','0','122','0','0','0'),
('1128','0','1','1','-5797.7','392.433','429.847','1.45283','300','0','144','0','0','0'),
('1128','0','1','1','-5818.15','363.762','419.487','5.50548','300','0','122','0','0','0'),
('1128','0','1','1','-5601.97','-14.9528','542.512','2.44348','300','0','122','0','0','0'),
('1128','0','1','1','-5662.7','25.6956','506.32','3.30218','300','0','122','0','0','0'),
('1128','0','1','1','-5743.75','457.288','427.014','0.99206','300','0','122','0','0','0'),
('1128','0','1','1','-5621.5','46.5393','501.298','4.15565','300','0','122','0','0','0'),
('1128','0','1','1','-5560.51','-25.839','538.84','0.317667','300','0','122','0','0','0'),
('1128','0','1','1','-5298.57','-33.9532','394.06','5.45941','300','0','122','0','0','0'),
('1128','0','1','1','-5424.39','-45.4163','390.279','2.99326','300','0','122','0','0','0'),
('1128','0','1','1','-5347.56','-34.7408','395.81','5.53271','300','0','122','0','0','0'),
('1128','0','1','1','-5439.46','-21.7866','393.953','3.74724','300','0','144','0','0','0'),
('1128','0','1','1','-5764.17','405.564','441.563','0.8088','300','0','122','0','0','0'),
('1128','0','1','1','-5760.66','129.384','424.613','3.11892','300','0','122','0','0','0'),
('1128','0','1','1','-5777.1','116.789','421.882','3.16604','300','0','122','0','0','0'),
('1128','0','1','1','-5871.39','65.2872','362.834','1.60572','300','0','122','0','0','0'),
('1128','0','1','1','-5828.11','20.7301','360.067','4.33367','300','0','122','0','0','0'),
('1128','0','1','1','-5816.89','48.96','358.824','4.86774','300','0','122','0','0','0'),
('1128','0','1','1','-5863.46','354.95','436.063','2.60474','300','0','122','0','0','0'),
('1128','0','1','1','-5570.73','84.4583','489.508','1.78898','300','0','122','0','0','0'),
('1128','0','1','1','-5579.31','106.948','483.663','2.22357','300','0','144','0','0','0'),
('1128','0','1','1','-5607.22','-33.2498','556.435','4.17659','300','0','144','0','0','0'),
('1128','0','1','1','-5512.74','36.2549','500.827','2.52725','300','0','122','0','0','0'),
('1128','0','1','1','-5737.24','117.671','423.662','3.71582','300','0','122','0','0','0'),
('1128','0','1','1','-5789.58','268.453','408.796','5.95054','300','0','122','0','0','0'),
('1128','0','1','1','-5761.32','184.536','446.149','2.34818','300','0','144','0','0','0'),
('1128','0','1','1','-5596.3','104.277','492.356','3.18175','300','0','144','0','0','0'),
('1128','0','1','1','-5738.45','483.804','403.655','1.78793','300','0','122','0','0','0'),
('1128','0','1','1','-5682.75','83.3668','458.813','2.09267','300','0','122','0','0','0'),
('1128','0','1','1','-5698.53','110.804','432.364','2.36494','300','0','144','0','0','0'),
('1128','0','1','1','-5846.48','332.646','429.096','6.25423','300','0','122','0','0','0');
DELETE FROM `creature` WHERE id IN(40991, 40994, 41056);
INSERT INTO `creature` (`id`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES
('40991', '1', '1', '-5477.28', '-229.915', '354.392', '2.78688', '30', '42'),
('40994', '1', '1', '-5502.63', '-273.163', '354.238', '5.94942', '30', '42'),
('41056', '1', '1', '-5388.79', '-278.588', '363.119', '2.15856', '30', '42');
DELETE FROM `npc_text` WHERE ID IN(15972, 15973, 15974);
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
('15972', 'Watch yerself down here, $c. These wendingos are savage fighters.'),
('15973', 'I\'ve seen enough of tis cave for a lifetime. I can\'t wait to get back to Kharanos.'),
('15974', 'These wendingos are an annouance, sure, but the real fight is with those Frostmane refugees.');
UPDATE `creature_template` SET `gossip_menu_id`='40991', `npcflag`='1' WHERE (`entry`='40991');
UPDATE `creature_template` SET `gossip_menu_id`='40994', `npcflag`='1' WHERE (`entry`='40994');
UPDATE `creature_template` SET `gossip_menu_id`='41056', `npcflag`='1' WHERE (`entry`='41056');
DELETE FROM `gossip_menu` WHERE entry IN(40991, 40994, 41056);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
('40991', '15972'),
('40994', '15973'),
('41056', '15974');
DELETE FROM `gossip_menu_option` WHERE menu_id IN(40991, 40994, 41056);
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_script_id`) VALUES
('40991', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '40991'),
('40994', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '40994'),
('41056', 'Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos', '1', '1', '41056');
DELETE FROM `db_script_string` WHERE entry IN(2000005408, 2000005409, 2000005410);
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
('2000005408', 'Tell Captain Tharran that I\'ll be back in Kharanos as soon as I\'ve verified that the bot is working correctly'),
('2000005409', 'I can\'t wait to get out there and help in the fight against those trolls.'),
('2000005410', 'We\'ve been fighting nonstop since the cataclysm. It\'ll be nice to get a rest, if a brief one.');
DELETE FROM `gossip_scripts` WHERE id IN(40991, 40994, 41056);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `dataint`) VALUES 
('40991', '1', '8', '40991', '0'),
('40991', '0', '33', '0', '0'),
('40991', '2', '0', '0', '2000005408'),
('40994', '1', '8', '40994', '0'),
('40994', '0', '33', '0', '0'),
('40994', '2', '0', '0', '2000005409'),
('41056', '1', '8', '41056', '0'),
('41056', '0', '33', '0', '0'),
('41056', '2', '0', '0', '2000005410');
DELETE FROM `conditions` WHERE SourceGroup IN(40991, 40994, 41056) AND (SourceTypeOrReferenceId = 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES
('15', '40991', '9', '313'),
('15', '40994', '9', '313'),
('15', '41056', '9', '313');
delete from `creature` where id = 42773;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('42773','0','1','1','-5527.56','720.46','377.995','5.03757','300','0','63','0','0','0');
delete from `creature_template` where entry = 42773;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('42773','0','0','0','0','0','32731','0','0','0','Boss Bruggor','','','0','3','3','0','14','14','0','1','1.14286','1','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','7','0','42773','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3','3','','0','3','1.5','1','1','0','0','0','0','0','0','0','100','1','0','0','0','','1');
delete from `gameobject_template` where entry = 204042;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) values
('204042','10','9277','Detonator','','','','0','0','1','0','0','0','0','0','0','0','26318','0','20000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','go_detonator','1');
delete from `gameobject` where id = 204042;
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('204042','0','1','1','-5524.61','715.622','377.544','5.03466','0','0','0.584499','-0.811394','300','0','1');
delete from `quest_template` where `entry` = 26285;
insert into `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewSkillLineId`, `RewSkillPoints`, `RewRepMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewCurrencyId1`, `RewCurrencyCount1`, `RewCurrencyId2`, `RewCurrencyCount2`, `RewCurrencyId3`, `RewCurrencyCount3`, `RewCurrencyId4`, `RewCurrencyCount4`, `ReqCurrencyId1`, `ReqCurrencyCount1`, `ReqCurrencyId2`, `ReqCurrencyCount2`, `ReqCurrencyId3`, `ReqCurrencyCount3`, `ReqCurrencyId4`, `ReqCurrencyCount4`, `QuestGiverPortraitText`, `QuestGiverPortraitUnk`, `QuestTurnInPortraitText`, `QuestTurnInPortraitUnk`, `QuestTargetMark`, `QuestStartType`, `SoundAccept`, `SoundTurnIn`, `RequiredSpell`, `StartScript`, `CompleteScript`, `WDBVerified`) values('26285','2','801','0','2','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','26318','0','0','5','0','0','0','Get Me Explosives Back!','It\'s gonna take a lot of powder ta collapse those caves. I don\'t know whether th\' damnable troggs understood that when they stole me supplies and kidnapped me demolitionists! But th\' outcome\'s th\' same.$B$BAin\'t gonna be able ta blow nothin\' up until I\'ve got that powder back.$B$BGo south to Frostmane Hold and kill any o\' those troggs you find. Any one o\' \'em could be carryin\' me kegs o\' powder.','Recover 7 Stolen Powder Kegs from Rockjaw Bonepickers or Rockjaw Marauders at Frostmane Hold.',NULL,NULL,'Return to Jessup McCree at Frostmane Hold.',NULL,NULL,NULL,NULL,NULL,'58202','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','47','54','0','0','0','5','5','0','0','0','0','0','0','0','0','0','0','0','50','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'0','0','890','878','0','0','0','1');
DELETE FROM `gameobject_template` WHERE entry IN(206037, 205919, 205938, 205920, 205921, 205936, 205585, 206103, 205937, 206552);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data1`, `data6`) VALUES
('205585', '5', '9588', 'Gnomeregan Table', '1', '0', '0'),
('205919', '5', '9956', 'Gnomeregan Larget Tesla', '1', '0', '0'),
('205920', '5', '9957', 'Suspended Tesla', '1', '0', '0'),
('205921', '5', '6839', 'Decontamination Control Unit', '1', '0', '0'),
('205936', '5', '5311', 'Warning Light', '3', '0', '0'),
('205938', '5', '9967', 'Steam Cleansing', '1', '0', '0'),
('206037', '5', '2047', 'Gnomeregan Teleporter', '1', '0', '0'),
('206103', '5', '8491', 'Gnomeregan Mat', '1', '0', '0'),
('205937', '5', '2029', 'Gnomeregan Machine', '1', '0', '0'),
('206552', '5', '7416', 'Gnomeregan Construction Barricade', '1', '0', '0');
UPDATE `gameobject_template` SET `displayId`='9796' WHERE (`entry`='203975');
UPDATE `quest_template` SET `NextQuestId`='27674' WHERE (`entry`='27635');
UPDATE `quest_template` SET `QuestFlags`='589824', `PrevQuestId`='27674' WHERE entry IN(26203, 26206, 26202, 26199, 26197);
UPDATE `quest_template` SET `OfferRewardText`='It\'s good to see you again, $N. Without your help, we wouldn\'t have been able to get so many survivors out of Gnomeregan this time. Everyone is going to be thrilled to meet you and hear your story.' WHERE (`entry`='27674');
UPDATE `quest_template` SET `QuestFlags`='589824', `OfferRewardText`='Did Nevin send you ahead? That means he\'s getting ready to end the mission, but there are still survivors to be rescued. We have to help them.' WHERE (`entry`='28167');
UPDATE `quest_template` SET `OfferRewardText`='I know Nevin will be pleased with all the survivors you managed to help. I still can\'t believe you managed to stay so strong down here in the radiation. You\'ve seen the shape the other survivors are in. $B $BLet\'s get you to the loading room for decontamination.' WHERE (`entry`='27671');
UPDATE `quest_template` SET `OfferRewardText`='It\'s good to meet you, $N. You\'ve probably heard others speaking of Operation: Gnomeregan. Let me tell you a bit about what happened and why we left the dwarven city of Ironforge.' WHERE `entry` IN(26421, 26422, 26423, 26424, 26425);
UPDATE `quest_template` SET `OfferRewardText`='Even now, only the S.A.F.E. teams dare to venture far into the city to search for survivors. Meanwhile, Thermaplugg has sent one of his followers, Crushcog, to distract us and buy time for him to dig in.' WHERE (`entry`='26208');
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. My men can take it from here. Let\'s focus on getting the other survivors out now.' WHERE (`entry`='27670');
UPDATE `quest_template` SET `OfferRewardText`='It\'s good to meet you, $C. We rarely come across suvivors as strong and capable as you are. I can help get you decontaminated and on your way out of here.' WHERE (`entry`='28169');
DELETE FROM `npc_text` WHERE `ID` = 16988;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('16988', 'There will be more time to talk once we get back to the surface safely.');
UPDATE `creature_template` SET `gossip_menu_id`='45966' WHERE (`entry`='45966');
DELETE FROM `gossip_menu` WHERE `entry` = 45966;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('45966', '16988');
DELETE FROM `npc_text` WHERE `ID` = 17350;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('17350', 'I\'m sure I don\'t need to remind you to stay alert down here.');
UPDATE `creature_template` SET `gossip_menu_id`='47250' WHERE (`entry`='47250');
DELETE FROM `gossip_menu` WHERE `entry` = 47250;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('47250', '17350');
DELETE FROM `npc_text` WHERE `ID` = 17349;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('17349', 'This is where we gather the surivors to prepare them for decontamination. From there, it\'s just a short trip to the surface!');
UPDATE `creature_template` SET `gossip_menu_id`='46274' WHERE (`entry`='46274');
DELETE FROM `gossip_menu` WHERE `entry` = 46274;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('46274', '17349');
DELETE FROM `npc_text` WHERE `ID` = 16215;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES ('16215', 'Operation: Gnomeregan was a success. $BSure, that dastardly Thermaplugg has an unforseen trick up his sleeve, but we have him on the run! It\'s only a matter of time before Gnomeregan is cleaned up and in our hands again!');
UPDATE `creature_template` SET `gossip_menu_id`='42317' WHERE (`entry`='42317');
DELETE FROM `gossip_menu` WHERE `entry` = 42317;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('42317', '16215');
DELETE FROM `npc_text` WHERE `ID` = 16995;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
('16995', 'Torben Zapblast, teleportation solutions engineer at your service!');
UPDATE `creature_template` SET `gossip_menu_id`='46293' WHERE (`entry`='46293');
DELETE FROM `gossip_menu` WHERE `entry` = 46293;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('46293', '16995');
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 46293;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_script_id`) VALUES ('46293', 'Send me to the surface, Torben', '1', '1', '46293');
DELETE FROM `gossip_scripts` WHERE `id` = 46293;
INSERT INTO `gossip_scripts` (`id`, `command`, `x`, `y`, `z`, `o`) VALUES ('46293', '6', '-5201.946', '477.844', '388.23', '5.13');
UPDATE `creature_template` SET `npcflag`='0', unit_flags = unit_flags | 16384 WHERE entry IN(42419, 42420, 42422, 42452, 42423);
UPDATE `creature_template` SET `ScriptName`='npc_MekkaTorqueTinkertown' WHERE (`entry`='42317');
UPDATE `gameobject_template` SET `flags`='4', `data0`='1691', `data1`='203964' WHERE entry IN(203964, 203966, 203965, 203968, 203967, 203443);
DELETE FROM `gameobject_loot_template` WHERE item = 57764;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('203964', '57764', '-100');
UPDATE `quest_template` SET `PrevQuestId`='26222' WHERE (`entry`='26264');
UPDATE `quest_template` SET `PrevQuestId`='26205' WHERE (`entry`='26316');
UPDATE `quest_template` SET `NextQuestId`='0' WHERE (`entry`='26316');
UPDATE `quest_template` SET `PrevQuestId`='26316', `NextQuestId`='26318', `ExclusiveGroup`='-26285' WHERE (`entry`='26285');
UPDATE `quest_template` SET `PrevQuestId`='26316', `NextQuestId`='26318', `ExclusiveGroup`='-26285' WHERE (`entry`='26284');
UPDATE `quest_template` SET `PrevQuestId`='26329', `NextQuestId`='26339', `ExclusiveGroup`='-26333' WHERE (`entry`='26333');
UPDATE `quest_template` SET `PrevQuestId`='26329', `NextQuestId`='26339', `ExclusiveGroup`='-26333' WHERE (`entry`='26331');
UPDATE `quest_template` SET `PrevQuestId`='26364' WHERE (`entry`='26373');
delete from `creature` where id = 42291;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('42291','0','1','1','-5277.83','185.182','386.112','0.314991','300','42','0','0','0'),
('42291','0','1','1','-5371.91','182.483','386.111','0.791463','300','42','0','0','0'),
('42291','0','1','1','-5310.14','201.169','386.112','5.88608','300','42','0','0','0'),
('42291','0','1','1','-5333.51','51.4779','386.111','4.98051','300','42','0','0','0'),
('42291','0','1','1','-5327.83','208.587','386.112','5.94892','300','42','0','0','0'),
('42291','0','1','1','-5239.07','186.908','386.112','4.23674','300','42','0','0','0'),
('42291','0','1','1','-5206.74','185.717','386.113','3.21599','300','42','0','0','0'),
('42291','0','1','1','-5283.68','51.0488','386.111','5.546','300','42','0','0','0'),
('42291','0','1','1','-5206.97','76.8771','386.111','0.435678','300','42','0','0','0'),
('42291','0','1','1','-5350.78','87.4451','386.112','2.63453','300','42','0','0','0'),
('42291','0','1','1','-5238.7','62.1062','386.111','0.435678','300','42','0','0','0'),
('42291','0','1','1','-5229.99','207.422','386.112','1.60854','300','42','0','0','0'),
('42291','0','1','1','-5175.15','160.749','386.111','2.08501','300','42','0','0','0'),
('42291','0','1','1','-5371.6','152.979','386.111','2.51934','300','42','0','0','0'),
('42291','0','1','1','-5312.13','75.343','386.111','1.58236','300','42','0','0','0'),
('42291','0','1','1','-5289.7','183.178','386.112','5.56145','300','42','0','0','0'),
('42291','0','1','1','-5276.39','222.14','386.112','1.1894','300','42','0','0','0'),
('42291','0','1','1','-5172.99','110.714','386.111','1.32056','300','42','0','0','0'),
('42291','0','1','1','-5337.05','227.832','386.111','2.42508','300','42','0','0','0'),
('42291','0','1','1','-5350.32','190.889','386.111','0.613439','300','42','0','0','0'),
('42291','0','1','1','-5335.22','100.816','386.112','3.66602','300','42','0','0','0'),
('42291','0','1','1','-5256.81','216.38','386.112','3.95426','300','42','0','0','0'),
('42291','0','1','1','-5362.37','120.37','386.111','1.99574','300','42','0','0','0'),
('42291','0','1','1','-5328.63','196.579','386.111','3.38324','300','42','0','0','0');

UPDATE `creature_template` SET `minlevel`='4', `maxlevel`='5', `faction_A`='14', `faction_H`='14', `mingold`='3', `maxgold`='3' WHERE (`entry`='42291');

delete from `creature_ai_texts` where `entry` IN(-423171, -423172, -424191, -424231, -424232, -424233, -424192, -424521, -424193, -424194, -424234, -424522, -424195, -423173);
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423171','We assembled a mighty force and defeated Thermaplugg\'s servants, fighting our way into the city. But, the usurper Thermaplugg had one last trick up his sleeve...','0','0','0','High Tinker Mekkatorque #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423172','Take a look at this holotable. I want to show you a bit about Operation: Gnomeregan.','0','0','0','High Tinker Mekkatorque #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424191','It\'s too quiet. Where are Thermaplugg\'s defense forces?','0','0','0','Image of High Tinker Mekkatorque #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424231','No! No, no, NO!!! I won\'t allow you into my kingdom, usurper! I WON\'T ALLOW IT!','0','0','0','Thermaplugg\'s Brag-bot #1\r\n');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424232','Activate the Ultimate Atomic Protection System.','0','0','0','Thermaplugg\'s Brag-bot #2\r\n');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424233','...DISINTEGRATE THEM ALL!','0','0','0','Thermaplugg\'s Brag-bot #3');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424192','IT\'S A TRAP! That\'s a fully functional irradiator!','0','0','0','Image of High Tinker Mekkatorque #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424521','Irradiator 3000 activated. Attention. Emergency. You now have ten minutes to reach minimum safe distance.','0','0','0','Irradiator 3000 #1');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424193','Ten minutes? Plenty of time to disarm the device.','0','0','0','Image of High Tinker Mekkatorque #3');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424194','Hinkles, hand me that Whirring Bronze Gizmo and some Fresh Spring Water. Cogspin, toss me that Dirty trogg Cloth and a Handful of Copper Bolts...','0','0','0','Image of High Tinker Mekkatorque #4');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424234','TEN MINUTES?! You left the factory setting on? Give me that controller, you idiot!','0','0','0','Thermaplugg\'s Brag-bot #4');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424522','*BEEP* Attention. Emergency. You now have ten seconds to reach minimum safe distance.','0','0','0','Irradiator 3000 #2');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-424195','Whuh-oh! We\'ve got to get out of here! Lapforge, beam us back, quickly!','0','0','0','Image of High Tinker Mekkatorque #5');
insert into `creature_ai_texts` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) values('-423173','We were forced to retreat. Thermaplugg continues to hide behind the radiation, sending his crony, Crushcog, to harass us here on the surface.','0','0','0','High Tinker Mekkatorque #3');


-- Fix For Quest War Supplies
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 62624 AND `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 1 AND `ConditionValue2` = 33056;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES ('13', '62624', '18', '1', '33056');
UPDATE `quest_template` SET `ReqSpellCast1`='62624' WHERE (`entry`='13509');

-- Fix for Tauren Quest: "Last Rites, First Rites"
DELETE FROM `gameobject_template` WHERE entry = 401647;
INSERT INTO `gameobject_template` (`entry`, `type`, `name`, `data0`, `data1`, `data4`) VALUES('401647', '8', 'TEMP You to be standing near Greatmother Hawkwind', '1647', '15', '24861');

DELETE FROM `spell_scripts` WHERE id = 71898;

INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`) VALUES ('71898', '1', '1', '8', '38438');
UPDATE `quest_template` SET `StartScript`='24861' WHERE (`entry`='24861');

DELETE FROM `db_script_string` WHERE entry IN(2000005411, 2000005412, 2000005413, 2000005414);
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
('2000005411', 'Earth Mother, into your arms we give one of our own. She is Unaya Hawkwind, my mother, and Greatmother to us all; the wisest of out tribe.'),
('2000005412', 'May her spirit fly to you swiftly; may the winds carry her gently, and the grass whisper her name.'),
('2000005413', 'Watch over her as she has watched over us; let her look down on us with joy, through the eternal gaze of An\'she and Mu\'sha, until we too join her in death.'),
('2000005414', 'For we are all born of you, and shall all return to you.');

DELETE FROM `quest_start_scripts` WHERE id = 24861;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `dataint`) VALUES
('24861', '1', '2000005411'),
('24861', '6', '2000005412'),
('24861', '12', '2000005413'),
('24861', '16', '2000005414');

DELETE FROM `gameobject` WHERE id = 401647;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`) VALUES('401647', '1', '-2909.949', '-256.526', '59.68');


-- Small Updates for quests + fix Whitebark Memory
DELETE FROM gameobject_loot_template WHERE entry=148499;
INSERT INTO gameobject_loot_template VALUES ('148499','10438','-100','1','0','1','1');

UPDATE creature_template SET faction_A=14,faction_H=14,npcflag=0,mindmg=8,maxdmg=10,unit_flags=8 WHERE entry=808;
UPDATE creature_template SET faction_A=14,faction_H=14,minlevel=5,maxlevel=5,unit_class=8,npcflag=0,mindmg=8,maxdmg=10,unit_flags=8 WHERE entry=37112;

DELETE FROM creature WHERE id IN (37112,808);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)VALUES
('37112', '0', '1', '1', '-6500.389', '298.337', '370.050', '1.4194', '60', '0', '0', '98', '115', '0', '0', '0', '0', '0'),
('808', '0', '1', '1', '-6527.821', '304.037', '382.431', '3.59', '60', '0', '0', '147', '115', '0', '0', '0', '0', '0');

UPDATE gameobject_template SET data1=201706 WHERE entry=201706;
UPDATE gameobject_loot_template SET ChanceOrQuestChance="-100" WHERE entry IN (201705,201706,201704);

UPDATE creature_template SET AIName='EventAI' WHERE entry=41202;
DELETE FROM creature_ai_scripts WHERE creature_id=41202;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`,`action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)VALUES
('4120201', '41202', '8', '0', '100', '1', '77314', '-1', '0', '0', '33', '41202', '6', '0', '37', '0', '0', '0', '0', '0', '0', '0', 'Constriction Totem- KillCredit');

##Botanical Legwork##9799

DELETE FROM gameobject_loot_template WHERE entry=182127;
INSERT INTO gameobject_loot_template VALUES('182127','24416','-100','1','0','1','1');

##QUERY DLA INNOCULATION->SCRIPT##

UPDATE creature_template SET ScriptName='npc_nestlewood_owlkin' WHERE entry=16518;

##Captain Sanders' Hidden Treasure 1##
DELETE FROM gameobject_involvedrelation WHERE quest=26353;
INSERT INTO gameobject_involvedrelation VALUES (35,26353);
UPDATE quest_template SET NextQuestInChain=26354, OfferRewardText='The footlocker slowly creaks open.  Sand and water seem to be its only contents. But wait!  A small crab scurries out with a clue to the treasure in his claws! 'WHERE entry=26353;
##Captain Sanders' Hidden Treasure 2##
DELETE FROM gameobject_questrelation WHERE quest=26354;
INSERT INTO gameobject_questrelation VALUES (35,26354);
DELETE FROM gameobject_involvedrelation WHERE quest=26354;
INSERT INTO gameobject_involvedrelation VALUES (36,26354);
UPDATE quest_template SET NextQuestInChain=26355, OfferRewardText='Good work, treasure hunter!', RequestItemsText='This looks like the right barrel. ' WHERE entry=26354;
##Captain Sanders' Hidden Treasure 3##
DELETE FROM gameobject_questrelation WHERE quest=26355;
INSERT INTO gameobject_questrelation VALUES (36,26355);
DELETE FROM gameobject_involvedrelation WHERE quest=26355;
INSERT INTO gameobject_involvedrelation VALUES (34,26355);
UPDATE quest_template SET NextQuestInChain=26356, OfferRewardText='You\'re on your way to the jackpot, treasure seeker! ', RequestItemsText='There\'s a clue sticking out of the empty jug.  ' WHERE entry=26355;
##Captain Sanders' Hidden Treasure 4##
DELETE FROM gameobject_questrelation WHERE quest=26356;
INSERT INTO gameobject_questrelation VALUES (34,26356);
DELETE FROM gameobject_involvedrelation WHERE quest=26356;
INSERT INTO gameobject_involvedrelation VALUES (33,26356);
UPDATE quest_template SET OfferRewardText='The hinges on the old chest are rusty but they still work.  You force the chest open and take the booty. ', RequestItemsText='The lost treasure of Captain Sanders awaits!   ' WHERE entry=26356;
DELETE FROM gameobject WHERE id=33;
INSERT INTO gameobject(id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES('33', '0', '1', '1', '-9793.04', '2108.27', '12.4385', '3.928764', '0', '0', '0', '0', '180', '100', '1');


DELETE FROM event_scripts WHERE id=12530;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
('12530','0','10','19456','120000','0','8216.55','-6335.38','64.5098','3.48');

DELETE FROM creature_ai_scripts WHERE creature_id =15409;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1540901','15409','0','0','100','1','12800','17400','36200','48800','11','11442','1','32','0','0','0','0','0','0','0','0','Old Whitebark - Cast Withered Touch');


UPDATE creature_template SET AIName='EventAI' WHERE entry=15409;

DELETE FROM script_texts WHERE entry IN(-1019456,-1019457);
INSERT INTO script_texts(npc_entry,entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT)VALUES
(19456,-1019456, 'Haven\'t you done enough harm? Must you also disturb my slumber?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_old_whitebark'),
(19456,-1019457, 'What good does this violence serve? What is done is done. I have failed my people.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_old_whitebark');

UPDATE creature_template SET ScriptName='npc_old_whitebark' WHERE entry=19456;

UPDATE  quest_template SET OfferRewardText='I no longer belong to this world and must admit defeat.  The land has forever changed and nothing will ever be the same.Leave the pendant here with me, maybe one day, long after the elves are gone, a new tree will grow on this very spot - amongst a burnt forest and the husks of dead treants. ', RequestItemsText='You\'ve returned, haven\'t you done enough?' WHERE entry=10166;

UPDATE creature_template SET npcflag=3 WHERE `entry` IN(15402,2083,16200,16239,3567,3515,2080,7740,16237,33166,32967,46255);


-- Fix for Quest: Extinguishing Hope 
DELETE FROM `creature_questrelation` WHERE (`id`='42940');
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`entry`='42940');
DELETE FROM `creature_ai_scripts` WHERE `id`=4294001;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `action1_type`, `action1_param1`, `comment`) VALUES
('4294001', '42940', '11', '11', '80175', 'Northshire Vineyards Fire Trigger - Cast Fire at Respawn');
DELETE FROM `conditions` WHERE `SourceEntry` = 80187;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('13', '80187', '18', '1');
