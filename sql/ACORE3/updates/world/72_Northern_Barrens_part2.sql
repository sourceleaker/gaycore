ALTER TABLE `world_db_version` CHANGE  `required_71_Ashenvale` `required_72_Northern_Barrens_part2`  BIT(1);

UPDATE quest_template SET RequestItemsText='Do you have the spores, $N? My associates and I are eager to study this phenomenon... ', OfferRewardText='Ah, yes. These are good specimens. Potent.\n I am Forsaken, and we honor our contracts. Here is your reward, $N. ', NextQuestInChain=13998 WHERE entry=848;#Fungal Spores
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Explosive spore clouds? You don\'t say ... tell me more. Choking? Stinging? Burning of the eyes? Was there itching? Nausea? Mortification? Delightful, DELIGHTFUL! You\'ve certainly earned your commission, $N.\n That skin rash of yours should pass in a day or two. ',PrevQuestId=848,NextQuestInChain=13999 WHERE entry=13998;#In Fungus We Trust
UPDATE quest_template SET RequestItemsText='Who are you? Did Helbrim send you? Keep a low profile. ', OfferRewardText='Quiet! Give me those notes. Were you followed here? ' WHERE entry=13999;#Who Shrommin who
UPDATE quest_template SET RequestItemsText='Have you been to the Forgotten Pools, $N? Did you find anything?', OfferRewardText='You found a fissure in the earth, with power emanating from it? Strange. Something is causing that oasis to bubble over suddenly with life.\n Come, $C - there is something else I\'d like you to investigate with me. ',NextQuestInChain=13988 WHERE entry=870;#Forgotten Pools
UPDATE quest_template SET RequestItemsText='How many zhevra have you slain? ', OfferRewardText='Not bad, $N. Those zhevra hold a lot of strength in their legs. I\'ve seen them knock even a tauren on its haunches!\n It looks like you have some strength in you too. ',ExclusiveGroup='-845',NextQuestID=881 WHERE entry=845;#The Zhevra
UPDATE quest_template SET RequestItemsText='How goes your hunt, $N? ', OfferRewardText='Ah, I see you\'ve been busy. I hope you learned a lot from this prey, $N. You\'ll need the strength and cunning of beasts like these to serve my beloved Horde. ',ExclusiveGroup='-845',NextQuestID=881 WHERE entry=903;#Hunting the Huntress
UPDATE quest_template SET RequestItemsText='I love watchin\' these guys scurry all over.', OfferRewardText='Oh, ho! That was beautiful. I probably shouldn\'t have stayed to watch. Now that they\'re looking for you, I\'ll slip quietly away in the dust of their aimless gallopin\'.\n Be sure to look for my buds at the other pools. Boss has agents at every one. ' WHERE entry=13992;#A Little Diversion
UPDATE quest_template SET RequestItemsText='Hello, $N. Do you have Kodobane\'s head for me? ', OfferRewardText='Well done, $N. Kodobane is just one strand of a tangled thread - there are other Kolkar leaders to kill elsewhere in the Barrens. Seek out my companions at the other oases if you wish to press the assault. ' WHERE entry=850;#Kolkar Leaders
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Yes, $C? What brings you to this place? ' WHERE entry=26878;#Disciples of Naralex
UPDATE quest_template SET RequestItemsText='Tonga knows these lands better than any of us, and I believe it physically hurt him to see it torn asunder. ', OfferRewardText='I am glad Tonga was able to witness the overgrowth firsthand - words can\'t convey the scope of the damage. Did you bring his totem? I will return it to him when I am finished here. ',SrcSpell=65753,PrevQuestId=870,NextQuestInChain=877 WHERE entry=13988;#A Growing Problem
UPDATE quest_template SET RequestItemsText='The great cat calls to you, $N', OfferRewardText='You\'ve beaten Echeyakee, and though his days of hunting are over... his spirit is with you. He will show you the strength found in subtlety, and the honor in mercy.\n I underestimated you, $C. The Horde is fortunate to have you in its ranks. ',RewSpell=5320,NextQuestInChain=905 WHERE entry=881;#Echeyakee
UPDATE quest_template SET RequestItemsText='Have you been to the nests, $N?', OfferRewardText='So you\'ve been to the nests and placed the feathers of your prey within them. That took a fair portion of courage, no doubt about it.\n Do you feel a little tougher, $N? Because you look tougher now then when you first came here.  I guess the Barrens is doing its job. ',PrevQuestId=881,NextQuestInChain=13991 WHERE entry=905;#Into the Raptor Den
UPDATE quest_template SET RequestItemsText='Search those tents, $N. Try to ignore the stench. ', OfferRewardText='Good work, $N. Did you look through these? They\'re barely legible - more like angry graffiti than war plans. Hatred, jealousy, rage, personal conflicts - it\'s a wonder Verog can keep these centaur from killing each other, much less form them into an army.\n We can use this to our advantage. ',NextQuestInChain=851 WHERE entry=14072;#Flushing Out Verog
UPDATE quest_template SET RequestItemsText='Did you find Verog, $N? ', OfferRewardText='You did it! That\'ll really upset the balance of power down here. Verog left no clear successor, so I expect this crew of brutes will fall on each other like hungry dogs. I\'ll stay here and keep an eye on what happens next.\nVerog answered directly to the Kolkar Chief - killing him is a good start, but there\'s more work to be done. ',PrevQuestID=14072 WHERE entry=851;#Verog the Dervish
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Ah, I\'ve heard about your work, $C. Your timing is fortunate - I\'ve got a major offensive in the works. ',NextQuestInChain=852 WHERE entry=14073;#Deathagate Reinforcements
UPDATE quest_template SET RequestItemsText='Is Hezrul defeated, $N? ', OfferRewardText='I commend you, $N. These centaur are undisciplined and cannot focus their rage as the orcs can, but they are fierce nonetheless.  In defeating them, your valor is proven. ',PrevQuestId=14073,NextQuestId=4021 WHERE entry=852;#Hezrul Bloodmark
UPDATE quest_template SET RequestItemsText='', OfferRewardText='I was hoping for a squad of grunts... but if you earned Sergra\'s respect, I suppose you\'ll be more than enough. Let me explain what\'s happening here. ',PrevQuestID=905,NextQuestInChain=14066 WHERE entry=13991;#The Purloined Payroll
UPDATE quest_template SET RequestItemsText='How goes your hunting, $N? ', OfferRewardText='Nicely done. I\'m sure you\'ve struck fear into the surviving centaurs, $N. With their greatest warriors slain, they will either stop their advances or lash out at us in a foolhardy strike.\n I hope for the latter. ' WHERE entry=855;#Centaur Bracers
UPDATE quest_template SET RequestItemsText='Do you have the banner? ', OfferRewardText='You have done it!  You have defeated the Kolkar!\n I will be sure Thrall receives word of your actions here, $N.\n Stand tall.  You do yourself, and the Horde, proud. ' WHERE entry=4021;#Counterattack!
UPDATE quest_template SET RequestItemsText='What\'s happening? Something I can help you with? Goods to ship, perhaps an engineering job? ', OfferRewardText='Ahhhh! That sort of business. You know, these pirates are always looking out for their own. No sooner is Baron Longshore in a stockade than this Garvey fellow comes looking for vengeance... You don\'t suppose anyone will come looking to avenge Garvey, do you? Maybe I should put you on retainer. ' WHERE entry=895;#Wanted Cap n Garvey
UPDATE quest_template SET RequestItemsText='Did you get King Reaperclaw\'s horn, $N? I need to test my first smart drink! ', OfferRewardText='Great, you got it! Let\'s grind this up and mix it with some wine, and... ' WHERE entry=865;#It's Gotta be the Horn
UPDATE quest_template SET RequestItemsText='This Horde caravan was not merely robbed. It was savagely brutalized. Crates of supplies have been ripped apart by sharp claws. The wagon has been demolished. The food has been eaten and the silver is gone, and yet useful supplies have been left behind...', OfferRewardText='This Horde caravan was not merely robbed. It was savagely brutalized. Crates of supplies have been ripped apart by sharp claws. The wagon has been demolished. The food has been eaten and the silver is gone, and yet useful supplies have been left behind... ', NextQuestInChain=869 WHERE entry=14066;#Investigate the Wreckage
UPDATE quest_template SET RequestItemsText='Fill my hand with medals from their dead and I will know that vengeance has been given to my fallen privateers. ', OfferRewardText='I see you\'ve made the righteous Rear Admiral suffer as I have. Perhaps this blow will weaken the resolve of Northwatch. His supply of fresh recruits seems inexhaustible, but the loss of his top Lieutenants will weaken him for some time. ' WHERE entry=891;#A Captain's Vengeance
UPDATE quest_template SET RequestItemsText='Did you swash some buckle, $N? Did you BUccan their neers?', OfferRewardText='Superb! Gazlowe will reward me handsomely for this. And I\'ll reward you. Less handsomely, of course. A goblin\'s got to make a living, you know? ' WHERE entry=887;
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Hey hey mon, did Dizzywig send you? Good, good. Did you bring the money? No? ...what about the guns? ',NextQuestInChain=14056 WHERE entry=14052;#Take it up with Tony
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Hah-har! So ol\' Gazzy ain\'t given up on his goods yet, has he? Well, looks like that ol\' floppy-eared goldgrubbler jes\' gave me somethin\' ta bargain with. ',NextQuestInChain=14046, QuestFlags=8 WHERE entry=14045; WHERE entry=14045;#Find Baron Longshore
UPDATE quest_template SET RequestItemsText='You got the goods? ', OfferRewardText='Ah, this is it - this is it right here! So his flagship is named "The Bellipotent" eh?\n Let\'s see what it\'ll take to send this nuisance to the bottom of the sea. ',NextQuestInChain=14038 WHERE entry=14034;#Club Foote
UPDATE quest_template SET RequestItemsText='What else have you brought me? ', OfferRewardText='Thank you, $N. Studying the beasts of an area can tell much about the area itself. We shall see what tale these shells tell, and possibly unravel the mystery of what\'s happening in the barrens.\n
Please accept my gratitude for your aid... and perhaps you can use these coins. I find that I do not need them. ' WHERE entry=880;#Altered Beings
UPDATE quest_template SET RequestItemsText='Get on with it, mate. The guards may be back any moment. Ye know what ta do.',OfferRewardText='<The Baron rubs his sore wrists, his face widening into a malevolent grin.>\n
Oh I won\'t be runnin\' off just yet. I\'ll free me mates and murder my way out of here at a time of me choosin\'. As fer you - a deal\'s a deal. Let\'s talk about that treasure... ',PrevQuestId=14045,NextQuestInChain=14047,SpecialFlags=0 WHERE entry =14046;# The Baron Demands
UPDATE quest_template SET RequestItemsText='Was Baron Longshore alive? Do you have anything for me? ',OfferRewardText='What? What is this? I send you out to fetch my treasure and you bring me a big filthy head? ',PrevQuestId=14046 WHERE entry =14047;#A Most Unusual Map
UPDATE quest_template SET RequestItemsText='You got the cash? That money will go a long way to winnin\' over the hearts and minds of heartless, thoughtless cutthroats.',OfferRewardText='Look at that. We\'re loaded! In mutiny, you gotta make the money first. Then when you get the money, you get the power. Let\'s go get some power, $N... ',PrevQuestId=14052 WHERE entry =14056;#Glomp is Sitting On It

UPDATE quest_template SET RequestItemsText='Guns, mon. You got the stuff?',OfferRewardText='<Tony unhinges one of the weapons and peers down the barrel.>\n
Oooh, very nice. Shiny. Loud. Now we\'re talkin\'.\n
Not much left to do but close the deal... ',PrevQuestId=14056,NextQuestInChain=14063 WHERE entry =14057;#Guns, We Need Guns

UPDATE quest_template SET RequestItemsText='Is that the Maiden\'s Dagger I see weighing anchor in the distance? Did you have anything to do with that? ',OfferRewardText='So Tony is running the show there now? Good! We need more pirates like him in these waters. He\'s a real businessman.\n
<Dizzywig rubs his hands together greedily.>\n
Speaking of business, I suppose I owe you a cut. Would you be interested in insuring any of your new loot? You never know what can happen in a town like this... ',PrevQuestId=14057 WHERE entry =14063;#Mutiny Mon
UPDATE quest_template SET RequestItemsText='I\'m going to close my eyes, $N. And when I open them, I expect to see wall-to-wall treasure. Deal? ',OfferRewardText='Nice work, $N!\n
Oh, the Baron tried to stop you, did he? Well, I hope you gave him a pounding.\n
Now, I promised you a cut of the goods you recovered. Let\'s see... what\'s one percent of a half percent? Ah, here you go. ',PrevQuestId=14049, NextQuestInChain=26769 WHERE entry =14050;#Gazlowe's Fortune
UPDATE quest_template SET RequestItemsText='Welcome, $C. Fresh off the boat from Ratchet? Any news? ',OfferRewardText='<Nozzlepot snatches the bag of gems from you.>\n
Gazlowe calls this 10%? You tell him I\'m going to weigh these!\n
I suppose he expects me to pay you a delivery fee, as well? Fine, fine. Have some spoils! ',PrevQuestId=14050 WHERE entry =26769;#Raging River Ride

UPDATE quest_template SET RequestItemsText='',OfferRewardText='Excellent! I wish I could\'ve seen the look on that Rear Admiral\'s face when his flagship went up like a candle. Let me use my telescope here to take a look at the damage.\n
What - Whhhaaatt!? That thing is still floating? Hartley must\'ve moved the munitions ashore in case his ship was mined.\n
I underestimated you, Hartley... but for the last time! ',PrevQuestId=14034,NextQuestInChain=14042 WHERE entry =14038;#Love it or Limpet
UPDATE quest_template SET RequestItemsText='',OfferRewardText='Hah! Beautiful work, $N. Those Alliance cretins will never trace this back to me. Meanwhile, it\'s back to business as usual: smuggling, double-dealing, price-gouging... I\'ve got a lot of work to catch up on.\n
Here, I\'ll let you in on a cut of my future profits. Enjoy! ',PrevQuestId=14038 WHERE entry =14042;#Ammo Kerblammo

UPDATE quest_template SET RequestItemsText='',OfferRewardText='Before you lies an entire community of raptors, ducking in and out of hovels, snarling at one another, and working together to construct primitive huts. Collections of shiny things surround their nests. Mystery solved! ',PrevQuestId=14066, NextQuestInChain=14067 WHERE entry =869;#To Track a Thief
UPDATE quest_template SET RequestItemsText='You look roughed up, $C. Did you tussle with the thieves? ',OfferRewardText='<Gazrog opens the lockbox and begins counting up the silver while you relate your story.>\n
What!? Raptors? Just the raptors? Assaulting our caravans and looting them? Perhaps they are as intelligent as the rumors say. As if we didn\'t have enough problems, now we\'ve got to deal with brainy lizards with a lust for coin.\n
Here, $N - you\'ve earned a share of the rescued silver. Thank you. ',PrevQuestId=869 WHERE entry =14067;#The Stolen Silver

UPDATE quest_template SET RequestItemsText='Where\'s the wittle waptors? ',OfferRewardText='Hooway! You twapped the waptors I was wooking for! Now we will twain them for twolls to wide to swaughter the Awwiance! ',PrevQuestId=0 WHERE entry =14068;#Waptor Twapping

UPDATE quest_template SET RequestItemsText='I should have bought earplugs. I didn\'t realize the Barrens could be so noisy.', OfferRewardText='Good riddance! Those filthy pests are more trouble than they\'re worth. ', PrevQuestId=0, NextQuestInChain=0 WHERE entry=29088;#Hyena Extermination
UPDATE quest_template SET RequestItemsText='My favorite wrench is missing and all tools are muddy.', OfferRewardText='You look around and notice the lake is covered in slick oil. This once beautiful oasis has been ravaged. You feel a deep sense of foreboding. ', PrevQuestId=0, NextQuestInChain=29089 WHERE entry=29087;#Sludge Investigation
UPDATE quest_template SET RequestItemsText='', OfferRewardText='A variety of buttons, levers, and blinking lights are somewhat erratically arrayed on the face of the control console. A small gauge indicates that the apparatus is currently operating within optimal levels, and indicates that control valves one through three are currently open. There is a small keyhole set into the lower right side of the control panel. ', PrevQuestId=0, NextQuestInChain=29022 WHERE entry=29021;#Samophlange
UPDATE quest_template SET RequestItemsText='I can\'t believe they would stoop so low! Did you get my blueprints back? ', OfferRewardText='Thanks for recovering my blueprints. Now my work on the Silver Bullet X-831 can continue. ', PrevQuestId=0, NextQuestInChain=0 WHERE entry=29086;#Competition Schmompetition
UPDATE quest_template SET RequestItemsText='Blinking lights on the control console indicate that the main control valves have not been closed off.', OfferRewardText='The lights indicating the three control valves dim as they are shut off. Green lights slowly fade into yellow, and the switch controlling the apparatus is now moveable, with the valves closed, it can be turned off. ', PrevQuestId=29021, NextQuestInChain=29023 WHERE entry=29022;#Samophlange
UPDATE quest_template SET RequestItemsText='The console lights are dimmed and the gauges and dials all read at their zero positions, everything idling. ', OfferRewardText='Turning the key in the lock, the control console unlocks. A red light at the top of the console turns off and all power drains from the terminal. ', PrevQuestId=29022, NextQuestInChain=29024 WHERE entry=29023;#Samophlange
UPDATE quest_template SET RequestItemsText='Oh, you\'re back, $N! Do you have the samophlange? ', OfferRewardText='This is... er... interesting... yes. A device this complex is best analyzed by a team of skilled engineers in a clean room, painstakingly reverse engineering each component in a controlled environment.\n
But who has that kind of time?\n
Let\'s just fire this thing up and see what it does... ', PrevQuestId=29023, NextQuestInChain=14003 WHERE entry=29024;#Samophlange
UPDATE quest_template SET RequestItemsText='Did you say ... samophlange!? ', OfferRewardText='Sputtervalve scored us a Samophlange? Lemme see that thing!\n
Yeah, we can get this working again, no problem. Hand me that huge mallet... ', PrevQuestId=29024, NextQuestId=29026 WHERE entry=14003;#Samophlange Repair
UPDATE quest_template SET RequestItemsText='', OfferRewardText='You saw sludge being dumped straight into the lake? I wouldn\'t be surprised if the Sludge Beast were a product of the Venture Co.\'s carelessness. ', PrevQuestId=29087, NextQuestInChain=0 WHERE entry=29089;#Sludge Beast!
UPDATE quest_template SET RequestItemsText='Quick, we need to get out of here before someone gets suspicious! ', OfferRewardText='Yep, this looks like the right key. Let me just make sure I know how to work this thing...\n
Hmm... rotation control... This regulates speed and stability... fine arm movement control. Just look at this! I can\'t believe the Venture Company could design something this much better than ours. I\'ve got to get this back to the outpost! ', PrevQuestId=0, NextQuestInChain=863 WHERE entry=858;#Ignition
UPDATE quest_template SET RequestItemsText='', OfferRewardText='He wrecked it!?\n
<Sputtervalve mutters angrily to himself before continuing>.\n
Hopefully we\'ll be able to get something of value from the wrecked shredder prototype... my business depends on it! I\'ll start tearing that sucker apart and we\'ll see what makes it tick.\n
Oh, let me give you something for your trouble, too. ', PrevQuestId=858, NextQuestInChain=0 WHERE entry=863;#The Escape
UPDATE quest_template SET RequestItemsText='I\'m very busy with my work, $C.  Unless you have something for me, it\'d be best if you moved along... ', OfferRewardText='Oh, what\'s this? A samophlange, you say? What\'s a samophlange??\n
Ah... but look at the way it moves when you handle it.  And there\'s the sound of intricate gears inside. Oh my! I want to fix it and see what it does, don\'t you?? ', PrevQuestId=14003, NextQuestInChain=29027 WHERE entry=29026;#Wenikee 
UPDATE quest_template SET RequestItemsText='Do you have the nugget slugs, $N?  I\'ve been eyeing this Samophlange and I can\'t wait to tinker with it. ', OfferRewardText='Great, you got them!  Now I can get to work... ', PrevQuestId=29026, NextQuestId=14004 WHERE entry=29027;#Nugget Slugs
UPDATE quest_template SET RequestItemsText='I may be old and retired, but my mind is still as sharp as my sword.', OfferRewardText='Thank you, $N. This old orc will sleep more safely at night. ', PrevQuestId=0, NextQuestInChain=0 WHERE entry=29090;#A Burning Threat
UPDATE quest_template SET RequestItemsText='Is that my samophlange? I don\'t even recognize it. ', OfferRewardText='Wenikee said what? Copperplug? BOSS Copperplug? Oh no, this might be tricky. ', PrevQuestId=29027, NextQuestInChain=14006 WHERE entry=14004;#Return to Samophlange
UPDATE quest_template SET RequestItemsText='Did you find Copperplug? ', OfferRewardText='You found it! Wow, it\'s over 600 pages, only 30 of which are intentionally left blank.\n
Let\'s see. Chapter three: Backsplicing the Reverse Crankshaft Flywheel Pulley? Interesting. Chapter seven: Valve Timing for the High-Pressure Expansion Condenser!? This stuff is great! And I still don\'t even know what this thing does.\n
Here, have some of my old tools. Let\'s fire this thing up one last time! ', PrevQuestId=14004, NextQuestID=29094 WHERE entry=14006;#Read the Manual
UPDATE quest_template SET RequestItemsText='', OfferRewardText='I suppose my reputation grows. Yes, yes I kill harpies. I don\'t enjoy it. But their raids on our supply caravans must cease, and someone\'s got to organize a resistance. ', PrevQuestId=14006, NextQuestInChain=0 WHERE entry=28877;#They Call Him Swiftdagger.
UPDATE quest_template SET RequestItemsText='If only we knew which one of the miners had found the emerald, it\'d be a walk in the park... ', OfferRewardText='Look at the size of that thing! We\'re going to be rich! Let\'s see, according to the rates I\'ve seen on gems going into Undermine, I should be able to figure out your cut - fifty percent, don\'t worry!\n
Now let\'s see... I think this should do about right. Pleasure doing business with you, $N. ', PrevQuestId=14004, NextQuestInChain=0 WHERE entry=29015;#Miner's Fortune
UPDATE quest_template SET RequestItemsText='', OfferRewardText='I thought you were a goner. Glad to see you\'re still in one piece. ', PrevQuestId=14006, NextQuestInChain=867 WHERE entry=29094;#The Short Way Home
UPDATE quest_template SET RequestItemsText='Cut up enough of them yet? Keep slicing and taking trophies. I want 8 Witchwing talons. ', OfferRewardText='Oh, these are nice. Real nice... Good job, $N. I look forward to seeing more of your work in the future. ', PrevQuestId=14006, NextQuestInChain=0 WHERE entry=867;#Harpy Raiders
UPDATE quest_template SET RequestItemsText='Do you have 6 Harpy Lieutenant Rings yet? Justice must be dealt to them for their vicious attacks on the Horde. ', OfferRewardText='Excellent work my friend. I think you\'ll go far within the Horde. ', PrevQuestId=14006, NextQuestInChain=876 WHERE entry=875;#Harpy Lieutenants
UPDATE quest_template SET RequestItemsText='You\'re not getting anything until I see Serena\'s head. ', OfferRewardText='HA! Well done, $N! Very well done... I wasn\'t sure you were up to the task, but you\'ve proved yourself quite the cut-throat. Thank you again for helping us suppress the Harpy epidemic. Here is your reward, use it well. ', PrevQuestId=875, NextQuestInChain=29095 WHERE entry=876;#Serena Bloodfeather
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Hello $N. I have heard of your deeds from Darsok. You are a valuable $C of the Horde, indeed.', PrevQuestId=876, NextQuestInChain=29109 WHERE entry=29095;#Report to Thork
UPDATE quest_template SET RequestItemsText='', OfferRewardText='This is terrible news! $N, at least you arrived safely. ', PrevQuestId=29095, NextQuestInChain=29110 WHERE entry=29109;#Mor'shan Caravan Pick-Up
UPDATE quest_template SET RequestItemsText='', OfferRewardText='$N, you came for me! ', PrevQuestId=29109, NextQuestInChain=29112 WHERE entry=29110;#Mor'shan Caravan Rescue

UPDATE quest_template SET RequestItemsText='What did you find at the top of the mountain? ', OfferRewardText='$N, you\'re back! Balgor made it down before you, and he\'s already eaten two bowls of raptor stew. Considering that his appetite hasn\'t suffered, I\'m sure he will be fit to travel in no time.\n
I\'ll make sure that this artifact is taken care of. You\'ve done us a great service today. ', PrevQuestId=29110, NextQuestInChain=29111 WHERE entry=29112;#
UPDATE quest_template SET RequestItemsText='', OfferRewardText='Some days we gain quarter, other days we are beaten back behind our walls. Every day, we bury more of our brothers and sisters.\n
<Kadrak pauses and takes a deep breath.>\n
Not only have the supplies you brought strengthened our troops, but your heroic deeds have inspired them as well. Thank you, $C. ', PrevQuestId=29112, NextQuestInChain=0 WHERE entry=29111;#Mor'shan Caravan Delivery

UPDATE creature_template SET VehicleId=636 WHERE entry=34543;

DELETE FROM vehicle_accessory WHERE guid=34543;
INSERT INTO vehicle_accessory (guid, accessory_entry, seat_id, minion, description)VALUES
('34543', '34544', '0', '0', 'Tortusk rides Fez');

DELETE FROM gameobject WHERE id=164651;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL,'164651','1','1','1','-20.6343','-2378.87','91.6676','1.41659','0','0','0.650538','0.759474','300','0','1');

DELETE FROM event_scripts WHERE id = 2980; 
INSERT INTO event_scripts (id, delay, command, datalong, datalong2, X, Y, z, o)VALUES
('2980', '1', '10', '3475', '90000', '-20.929', '-2369.43', '91.66', '4.83');

DELETE FROM gameobject_template WHERE entry=195160;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, size, data2, data3, data4, WDBVerified)VALUES
('195160', '6', '6432', 'Mutated Fungus', '1.50', '10', '65842', '1', '14545');

DELETE FROM gameobject_template WHERE entry=195148;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, size,  data3, WDBVerified)VALUES
('195148', '5', '2552', 'Horde Banner', '1.25', '1', '14545');

DELETE FROM gameobject_template WHERE entry=195317;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, size,  data3, WDBVerified)VALUES
('195317', '5', '2630', 'Horde Raptor Feather', '2.00', '1', '14545');

DELETE FROM creature WHERE id IN(34967,34962,34963,34964);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('288264','34962','1','1','1','20024','34962','-1056.49','-2588.53','91.7145','0','600','0','0','42','0','0','0','0','0','0'),
('288543','34963','1','1','1','20024','34963','-1106.84','-2557.19','117.815','0','600','0','0','42','0','0','0','0','0','0'),
('290573','34964','1','1','1','20024','34964','-1068.44','-2652.1','91.8814','0','600','0','0','42','0','0','0','0','0','0');

DELETE FROM conditions WHERE SourceEntry=5316 AND ConditionTypeOrReference =18;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
('13', '0', '5316', '0', '18', '1', '34962', '0', '0', '0', 'Yellow Quest Credit'),
('13', '0', '5316', '0', '18', '1', '34963', '0', '0', '0', 'Blue Quest Credit'),
('13', '0', '5316', '0', '18', '1', '34964', '0', '0', '0', 'Red Quest Credit');

UPDATE creature_template SET AIName='SmartAI' WHERE entry IN(34962,34963,34964);

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`IN(34962,34963,34964);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34962,0,0,0,8,0,100,0,5316,0,0,0,33,34962,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yellow Quest Credit'),
(34963,0,0,0,8,0,100,0,5316,0,0,0,33,34963,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Blue Quest Credit'),
(34964,0,0,0,8,0,100,0,5316,0,0,0,33,34964,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Red Quest Credit');

DELETE FROM script_texts WHERE npc_entry=34634;
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('34634', '-1934634', 'Hah, yes $N! That\'s what I want to hear. Let\'s make some noise!', '0', 'SAY_GORGAL_1'),
('34634', '-1934635', 'Come get some, you horsefaced maggot farms!', '1', 'SAY_GORGAL_2'),
('34634', '-1934636', 'More...more!', '0', 'SAY_GORGAL_3'),
('34634', '-1934637', 'Ah, there\'s our target. I can smell him from here.', '0', 'SAY_GORGAL_4'),
('34634', '-1934638', 'Victory!', '0', 'SAY_GORGAL_5'),
('34634', '-1934639', 'Wait\'till Shoe hears about THIS.', '0', 'SAY_GORGAL_6');

DELETE FROM script_waypoint WHERE entry=34634;
INSERT INTO script_waypoint (entry, pointid, location_x, location_y, location_z, waittime, point_comment)VALUES
('34634', '0', '-1186.28', '-2960.82', '91.84', '0', ''),
('34634', '1', '-1172.83', '-2952.76', '93.87', '0', ''),
('34634', '2', '-1178.72', '-2942.10', '99.67', '0', ''),
('34634', '3', '-1180.28', '-2938.35', '102.81', '0', ''),
('34634', '4', '-1183.36', '-2927.61', '107.05', '0', ''),
('34634', '5', '-1191.99', '-2918.82', '113.63', '2000', ''),
('34634', '6', '-1187.80', '-2924.01', '109.54', '1000', ''),
('34634', '7', '-1187.80', '-2924.01', '109.54', '15000', ''),
('34634', '8', '-1187.80', '-2924.01', '109.54', '15000', ''),
('34634', '9', '-1187.80', '-2924.01', '109.54', '1000', ''),
('34634', '10', '-1187.80', '-2924.01', '109.54', '20000', ''),
('34634', '11', '-1187.80', '-2924.01', '109.54', '1000', '');

UPDATE creature_template SET ScriptName='npc_gorgal' WHERE entry=34634;
UPDATE creature SET spawntimesecs=10 WHERE id=34634;
UPDATE creature_template SET ScriptName='npc_twapp' WHERE entry=34831;
UPDATE creature_template SET AIName='SmartAI' WHERE entry IN(3256,44164);

DELETE FROM gameobject_template WHERE entry=195239;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, castBarCaption, size, questItem1, data0, data1, data2, data3, data8, data14, WDBVerified)VALUES
('195239', '3', '8978', 'Woaded Waptor Twap', 'Retrieving', '1.500', '46851', '43', '195239', '0', '0', '14068', '23645', '14545');

DELETE FROM gameobject_loot_template WHERE entry=195239;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount)VALUES
('195239', '46851', '-100', '1', '0', '1', '1');

DELETE FROM smart_scripts WHERE source_type=0 AND entryorguid IN(3256,44164);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(3256,0,0,0,8,0,100,0,66284,0,0,0,11,66286,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor summon object'),
(3256,0,1,0,8,0,100,0,66284,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor despawn after spellhit'),
(3256,0,2,0,11,0,100,1,0,0,0,0,2,48,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor set faction on respawn'),
(44164,0,3,0,8,0,100,0,66284,0,0,0,11,66286,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor summon object'),
(44164,0,4,0,8,0,100,0,66284,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor despawn after spellhit'),
(44164,0,5,0,11,0,100,1,0,0,0,0,2,48,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Raptor set faction on respawn');

DELETE FROM script_texts WHERE npc_entry=3467;
INSERT INTO script_texts (npc_entry, entry, content_default, COMMENT)VALUES
('3467', '-1934640', 'Har! Pleasure doin\' business with ye, $N.', 'Quest end Baron says');

UPDATE creature_template SET ScriptName='npc_baron_longshore' WHERE entry=3467;
UPDATE creature_template SET dynamicflags=32,unit_flags=262150, AIName='SmartAI' WHERE entry=34576;
DELETE FROM smart_scripts WHERE source_type=0 AND entryorguid = 34576;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34576,0,0,0,10,0,100,1,1,20,1000,1000,15,14066,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Discover quest credit');

UPDATE quest_template SET SpecialFlags=2 WHERE entry=14066;
UPDATE quest_template SET QuestFlags=0,SpecialFlags=0 WHERE entry=14046;

UPDATE quest_template SET SpecialFlags=0 WHERE entry=14046;

UPDATE gameobject_template SET ScriptName='go_treasure' WHERE entry=195206;

DELETE FROM script_texts WHERE entry IN (-1000298,-1000299,-1000300,-1000301,-1000302,-1000303,-1000304,-1000305);
INSERT INTO script_texts (npc_entry, entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)VALUES
(3439,-1000298,'Alright, alright I think I can figure out how to operate this thing...',0,0,0,393,'wizzlecrank SAY_START'),
(3439,-1000299,'Arrrgh! This isn''t right!',0,0,0,0,'wizzlecrank SAY_STARTUP1'),
(3439,-1000300,'Okay, I think I''ve got it, now. Follow me, $n!',0,0,0,1,'wizzlecrank SAY_STARTUP2'),
(3439,-1000301,'There''s the stolen shredder! Stop it or Lugwizzle will have our hides!',0,1,0,0,'wizzlecrank SAY_MERCENARY'),
(3439,-1000302,'Looks like we''re out of woods, eh? Wonder what this does...',0,0,0,0,'wizzlecrank SAY_PROGRESS_1'),
(3439,-1000303,'Come on, don''t break down on me now!',0,0,0,393,'wizzlecrank SAY_PROGRESS_2'),
(3439,-1000304,'That was a close one! Well, let''s get going, it''s still a ways to Ratchet!',0,0,0,0,'wizzlecrank SAY_PROGRESS_3'),
(3439,-1000305,'Hmm... I don''t think this blinking red light is a good thing...',0,0,0,0,'wizzlecrank SAY_END');

DELETE FROM script_texts WHERE entry = '-1934642';
INSERT INTO script_texts (npc_entry, entry, content_default,TYPE, COMMENT)VALUES
('3467', '-1934642', 'Hold it, $C! I promised told ye when the treasure is but never promised ye could keep it!', '1', 'Quest end Baron says');

DELETE FROM creature_loot_template WHERE item=5084 AND entry=3467;
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item=5084 AND entry=34750;

UPDATE  gameobject SET spawntimesecs=30 WHERE id=195203;
UPDATE quest_template SET ReqCreatureOrGOId1='-195203', ReqCreatureOrGOCount1=5 WHERE entry=14042;

DELETE FROM `script_waypoint` WHERE `entry`=3439;
INSERT INTO `script_waypoint` VALUES
   (3439,0,1109.15,-3104.11,82.41,6000, ''),
   (3439,1,1105.39,-3102.86,82.74,2000, ''),
   (3439,2,1104.97,-3108.52,83.10,1000, ''),
   (3439,3,1110.01,-3110.48,82.81,1000, ''),
   (3439,4,1111.72,-3103.03,82.21,1000, ''),
   (3439,5,1106.98,-3099.44,82.18,1000, ''),
   (3439,6,1103.74,-3103.29,83.05,1000, ''),
   (3439,7,1112.55,-3106.56,82.31,1000, ''),
   (3439,8,1108.12,-3111.04,82.99,1000, ''),
   (3439,9,1109.32,-3100.39,82.08,1000, ''),
   (3439,10,1109.32,-3100.39,82.08,6000, ''),
   (3439,11,1098.92,-3095.14,82.97,0, ''),
   (3439,12,1100.94,-3082.60,82.83,0, ''),
   (3439,13,1101.12,-3068.83,82.53,0, ''),
   (3439,14,1096.97,-3051.99,82.50,0, ''),
   (3439,15,1094.06,-3036.79,82.70,0, ''),
   (3439,16,1098.22,-3027.84,83.79,0, ''),
   (3439,17,1109.51,-3015.92,85.73,0, ''),
   (3439,18,1119.87,-3007.21,87.08,0, ''),
   (3439,19,1130.23,-3002.49,91.27,5000, ''),
   (3439,20,1130.23,-3002.49,91.27,3000, ''),
   (3439,21,1130.23,-3002.49,91.27,4000, ''),
   (3439,22,1129.73,-2985.89,92.46,0, ''),
   (3439,23,1124.10,-2983.29,92.81,0, ''),
   (3439,24,1111.74,-2992.38,91.59,0, ''),
   (3439,25,1111.06,-2976.54,91.81,0, ''),
   (3439,26,1099.91,-2991.17,91.67,0, ''),
   (3439,27,1096.32,-2981.55,91.73,0, ''),
   (3439,28,1091.28,-2985.82,91.74,4000, ''),
   (3439,29,1091.28,-2985.82,91.74,3000, ''),
   (3439,30,1091.28,-2985.82,91.74,7000, ''),
   (3439,31,1091.28,-2985.82,91.74,3000, '');

DELETE FROM script_texts WHERE npc_entry=34623;
INSERT INTO script_texts (npc_entry, entry, content_default, COMMENT)VALUES
('34623', '-1034623', 'Well done, friend! From here we can survey the land.','SAY_TONGA_1'),
('34623', '-1034624', 'Merciful Earthmother, look at the scope of the devastation! We''re lucky the entirety of the Barrens isn''t crumbling into the sea.','SAY_TONGA_2'),
('34623', '-1034625', 'But what''s this? Something else is happening to the land south of the fissure.','SAY_TONGA_3'),
('34623', '-1034626', 'Indeed, the flora is growing unchecked, devouring the land. Similar to our findings from the oases.','SAY_TONGA_4'),
('34623', '-1034627', 'We must do everything in our power to stop the same from happening here. We''ll have to step up our investigationg of the oases and stop this phenomenon at the source. We''ll talk again at Crossroads!','SAY_TONGA_5');

UPDATE creature_template SET ScriptName='npc_tonga_spirit' WHERE entry=34626; 
UPDATE creature_template SET minlevel=22,maxlevel=22 WHERE entry=34623;
UPDATE creature SET curhealth=573 WHERE id=34623;

UPDATE gameobject_template SET ScriptName='go_bubbling_fissure' WHERE entry=3737;
UPDATE quest_template SET SpecialFlags=2,Objectives='Test the Dried Seeds' WHERE entry=877;

UPDATE quest_template SET SpecialFlags=2,QuestFlags=136 WHERE entry=14046;

DELETE FROM gameobject_template WHERE entry=195202;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, size, data0, data1, WDBVerified)VALUES
('195202', '8', '124', 'Thinnest Part of the Hull', '3.00', '1616', '10', '14545');

DELETE FROM gameobject WHERE id = 195202;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('3001616','195202','1','1','1','-1456.51','-3968.51','-1.57765','1.4056','0','0','0.646355','0.763037','300','0','1');

UPDATE creature_template SET ScriptName='npc_limpet_mine' WHERE entry=34767;
DELETE FROM event_scripts WHERE id = 21873;
INSERT INTO event_scripts (id, delay, command, datalong, datalong2)VALUES	
('21873', '0', '10', '34767', '10000');

UPDATE creature_template SET scriptname='npc_tony_two',mindmg=23,maxdmg=35 WHERE entry=34749;

DELETE FROM gameobject_template WHERE entry=3001617;
INSERT INTO gameobject_template(entry, TYPE, displayId, NAME, size, data0, WDBVerified)VALUES
('3001617', '8', '0', 'Maiden\'s Dagger', '1.0', '1617', '14545');

UPDATE creature_template SET ScriptName='npc_counterattack' WHERE entry=3389;

DELETE FROM script_texts WHERE npc_entry=3389;
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('3389', '-1934643', 'Beware, $N! Look to the west!', '0', 'SAY_RETHGAR'),
('3389', '-1934644', 'A defender has fallen!', '0', 'SAY_RETHGAR_FALL');

DELETE FROM gameobject_loot_template WHERE entry=164690;
INSERT INTO gameobject_loot_template VALUES
('164690', '11227', '-100', '1', '0', '1', '1');

DELETE FROM event_scripts WHERE id=21888;
INSERT INTO event_scripts (id, delay, command, datalong, datalong2, X, Y, z,o)VALUES
('21888', '0', '10', '34790', '180000', '-1670.55', '-4374.63', '10.55', '4.56'),
('21888', '0', '10', '34790', '180000', '-1678.65', '-4373.48', '10.60', '4.63'),
('21888', '0', '10', '34749', '240000', '-1685.60', '-4372.65', '10.66', '4.59'),
('21888', '0', '10', '34790', '180000', '-1655.11', '-4384.47', '15.83', '5.26');

DELETE FROM script_texts WHERE npc_entry=34749;
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('34749', '-1934645', 'C''mon mates! Take the ship and give no quarter!', '1', 'SAY_TONY_YELL'),
('34749', '-1934646', 'Right, Cuthbert should be below decks. Come with me, mon!', '0', 'SAY_TONY_1'),
('34749', '-1934647', 'There she is, mon! Let''s finish this business.', '0', 'SAY_TONY_2'),
('34749', '-1934648', 'We did it! The Maiden''s Dagger is mine, all mine!', '0', 'SAY_TONY_3'),
('34749', '-1934649', 'You tell Dizzywig that I''m open to negotiations...!', '0', 'SAY_TONY_4');

UPDATE creature_template SET minlevel=15, maxlevel=15, mindmg=35,maxdmg=45 WHERE entry=34790;
UPDATE creature_template SET minlevel=15, maxlevel=16, faction_A=230, faction_H=230, mindmg=24,maxdmg=30,attackpower=60 WHERE entry=34782;

DELETE FROM gameobject_template WHERE entry=3001617;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('3001617','8','0','Maiden\'s Dagger','','','','0','0','1','0','0','0','0','0','0','1617','-1','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','14545');

DELETE FROM creature WHERE id=34782;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('6389177','34782','1','1','1','0','0','-1641.88','-4383.78','5.3063','2.85704','300','0','0','84','0','0','0','0','0','0');

DELETE FROM gameobject WHERE id =3001617;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES('3001617','1','1','1','-1667.13','-4375.32','10.543','4.61004','0','0','0.74235','-0.670012','300','0','1');

UPDATE creature SET spawntimesecs = 60 WHERE id=34782;

UPDATE creature_template SET npcflag=16777216, InhabitType=4 WHERE entry=44057;

DELETE FROM npc_spellclick_spells WHERE spell_id=82457;
INSERT INTO npc_spellclick_spells VALUES
('44057', '82457', '26769', '1', '26769', '3', '0', '0', '0');

UPDATE creature_template SET ScriptName='npc_riverboat', VehicleID=91, MovementType=2,unit_flags=0 WHERE entry=44055;


DELETE FROM script_texts WHERE npc_entry=44058;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('44058','-1934650','Whew, that was a bit of a tight squeeze, but the rest of the trip should be a breeze.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','SAY_BOAT1'),
('44058','-1934651','There\'s nothing quite like the smell of Durotar on a warm, comfortable boat ride.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','SAY_BOAT2'),
('44058','-1934652','This is where you\'d expect something to go wrong on a beautiful trip like this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','SAY_BOAT3'),
('44058','-1934653','Everyone always says, \"Horton, why do you drive a boat up and down the river?\" I ask them. \"Why don\'t you?\" ... that\'s usually where I run out of witty retorts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','SAY_BOAT4'),
('44058','-1934654','We\'re pulling up near your stop. head due west along the road to reach Nozzlepot\'s Outpost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','SAY_BOAT5');


DELETE FROM vehicle_template_accessory WHERE accessory_entry=44058;
INSERT INTO vehicle_template_accessory VALUES
('44055', '44058', '4', '0', 'Horton Hornblower steer Riverboat', 8, '0');

UPDATE quest_template SET QuestFlags= 0 WHERE entry=14038;
