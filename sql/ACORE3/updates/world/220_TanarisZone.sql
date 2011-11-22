ALTER TABLE `world_db_version` CHANGE  `required_219_Another_fix_for_proper_spawns` `required_220_TanarisZone`  BIT(1);

UPDATE quest_template SET OfferRewardText='I could use your help, $c. That blasted gnome is trying to persuade the Steemwheedle Cartel to favor her side! ', RequestItemsText='', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=28509;#Warchief's Command: Tanaris!
UPDATE quest_template SET OfferRewardText='We have to persuade the goblins of Gadgetzan to side with us, $c. ', RequestItemsText='', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=28507;#Hero's Call: Tanaris!
UPDATE quest_template SET OfferRewardText='Greetings and salutations, friend. Welcome to Tanaris! ', RequestItemsText='', PrevQuestID=0 , NextQuestID=25048 , NextQuestInChain=0 WHERE entry=27446;#Tanaris is Calling
UPDATE quest_template SET OfferRewardText='Most of this looks just fine! How lucky!\n
The Steamwheedle goblins will be so happy to see their cargo back safe and sound. And here\'s a reward for your good deeds, of course!\n
We\'ve got lots of other stuff to do though! Busy busy! ', RequestItemsText='Do you have a whole buncha boxes? Let\'s see! ', PrevQuestID=27446 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25048;#Seaside Salvage Ally
UPDATE quest_template SET OfferRewardText='Hmm, mostly usable. This is good stuff. I\'ve already got buyers lined up, of course.\n
Here\'s your advance for the rest of the work you\'re gonna do for me and the Bilgewater Cartel...partner. ', RequestItemsText='Let\'s see what you\'ve got. ', PrevQuestID=27447 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=24906;#Seaside Salvage Horde
UPDATE quest_template SET OfferRewardText='Well hello there, $c. Welcome to Tanaris! ', RequestItemsText='', PrevQuestID=0 , NextQuestID=24906 , NextQuestInChain=0 WHERE entry=27447;#Tanaris is Calling
UPDATE quest_template SET OfferRewardText='Oh, it\'s going to be so much nicer around here now that they\'re gone!\n
At least until more show up. But thank you! ', RequestItemsText='Gosh, it really looks like there\'s a bunch still out there. You should probably kill more!', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25049;#Puddle Stomping
UPDATE quest_template SET OfferRewardText='An impressive start. Be prepared for more. ', RequestItemsText='Stop wasting my time. Enter and fight!', PrevQuestID=0 , NextQuestID=25094 , NextQuestInChain=0 WHERE entry=25067;#Thunderdrome: The Ginormus!
UPDATE quest_template SET OfferRewardText='Not bad. You\'ve got a ways to go, however. ', RequestItemsText='Stop wasting my time. Enter and fight!', PrevQuestID=25067 , NextQuestID=25095 , NextQuestInChain =0 WHERE entry=25094;#Thunderdrome: Zumonga!
UPDATE quest_template SET OfferRewardText='Rather impressive. Few can bear to see a silithid reaver face to face, let alone defeat it. ', RequestItemsText='Stop wasting my time. Enter and fight!', PrevQuestID=25094 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25095;#Thunderdrome: Sarinexx!
UPDATE quest_template SET OfferRewardText='Nice going, kid. Didn\'t lose any fingers? Good, we can get some more work for you then. ', RequestItemsText='You\' ll need to fill the little bot\'s hopper up completely.', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=25111 WHERE entry=25112;#Butcherbot
UPDATE quest_template SET OfferRewardText='My... my hat! So... it WAS you. I\'d thought so. The old scars ached when you drew near, but... so young! You\'ve not changed at all!\n
Well... so now you know my secret. I WAS beaten... once. Here: take this hat, in return for mine. You\'ve more than earned it. ', RequestItemsText='I was unbeatable, in those days... proud, and rightly so. No challenger ever won this fine hat... ', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=12513;#Nice Hat
UPDATE quest_template SET OfferRewardText='That was great! It looks like most of the goblins we helped made it back here and didn\'t blow up. We really showed that goblin girl!\n
Here\'s a special reward for you, mister. ', RequestItemsText='Let\'s not wait around, silly! We weren\'t done yet! We\' ve gotta get out there!', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=25121 WHERE entry=25050;#Rocket Rescue
UPDATE quest_template SET OfferRewardText='Hi there! The fun\'s already started! ', RequestItemsText='', PrevQuestID=25050 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25121;#Momentum
UPDATE quest_template SET OfferRewardText='Alchemists pay through the nose for these things. Sure, maybe I tell some of them they\'re dragon parts, but that ain\'t my problem, right? ', RequestItemsText='Are you done? I don\'t want fire roc gizzards left sitting in Butcherbot\'s tank for too long, it\'s harsh on the machinery.', PrevQuestID=25112 , NextQuestID=0 , NextQuestInChain=25115 WHERE entry=25111;#Scavengers Scavenged
UPDATE quest_template SET OfferRewardText='Good job! We\'re really cleaning up around here! ', RequestItemsText='Well, gosh, it looks like there\'s still a lot of pirates not dying. Do you think you could kill a few more, and stop wasting my precious time?\n
Um, I mean, please?', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=26886 WHERE entry=25052;#Dead Man's Chest
UPDATE quest_template SET OfferRewardText='Fantastic! Gosh, this will make enough wire for an entire army.\n
Lucky us! ', RequestItemsText='I hope you don\'t think you\'re hiding any for yourself, silly! These goggles can see right through your bags.\n
And your armor. ', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=26887 WHERE entry=25054;#Lootin' Plunder
UPDATE quest_template SET OfferRewardText='Isn\'t that just so pretty to watch? ', RequestItemsText='Mitsy over there is really doing her best to burn those things down in her Pounder, but I keep telling her she\'s using the wrong fuel yield for dry wood.', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25053;#To The Ground
UPDATE quest_template SET OfferRewardText='Wonderful! I hope you didn\'t get hit with too many cannonballs. ', RequestItemsText='What\'s wrong? Scared of a few cannonballs?', PrevQuestID=25052 , NextQuestID=25166 , NextQuestInChain=0, ExclusiveGroup='-26886' WHERE entry=26886;#Going Off-Task
UPDATE quest_template SET OfferRewardText='More gold! We\'ll be sure to give some of this to Mister Noggenfogger to smoothly ensure our continued relations.\n
And only a little bit of it will go back to Gnomeregan for experimental weapons development! ', RequestItemsText='Have you got the fillings? ', PrevQuestID=25054 , NextQuestID=25166 , NextQuestInChain=0, ExclusiveGroup='-26886' WHERE entry=26887;#Filling Our Pockets
UPDATE quest_template SET OfferRewardText='He was controlling a sea giant? Fascinating. If we\'d managed to investigate further...\n
Oh, I mean, wow, that\'s totally crazy! But thank goodness he\'s gone, hooray! Mister Noggenfogger will be so pleased.\n
Here\'s a nice big reward, you! ', RequestItemsText='My patience is beginning to wear thin. I don\'t have enough time to wait around for you, so kill that captain already.\n
Um, I mean, please? Tee-hee?', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=26889 WHERE entry=25166;#Captain Dreadbeard
UPDATE quest_template SET OfferRewardText='You know, I\'m usually not impressed when I see a $r, but I\'ve heard about what you\'ve been doin\' for the Steamwheedle. You\'re alright, kid. ', RequestItemsText='', PrevQuestID=25166, NextQuestID=0 , NextQuestInChain=0 WHERE entry=26889;#All Cheered Out
UPDATE quest_template SET OfferRewardText='Beautiful! We\'ll have these puppies shined up and ready to sell in no time. ', RequestItemsText='Got enugh?', PrevQuestID=25111 , NextQuestID=0 , NextQuestInChain=25091 WHERE entry=25115;#Blisterpaw Butchery
UPDATE quest_template SET OfferRewardText='Marin sent you? I\'m appreciative of his help.\n
I\'m here to seek out Sul\'thraze. If you wish to help, speak with Mazoga...he\'s been cooperative so far. ', RequestItemsText='', PrevQuestID=25115 , NextQuestID=0, NextQuestInChain=0 WHERE entry=25091;#Sandsorrow Watch
UPDATE quest_template SET OfferRewardText='Oh thank you, thank you! I know a bit of alchemy, I\'m not totally useless. Here goes... ', RequestItemsText='Do you have them? Oh, please... ', PrevQuestID=0 , NextQuestID=25522 , NextQuestInChain=0 WHERE entry=25521;#I'm With Scorpid
UPDATE quest_template SET OfferRewardText='<Mazoga gathers the pile of blood in his hands and raises it to his mouth. It liquifies and pours gorily down his throat.>\n
Dey drink de blood, dey get de power. I drink dere blood...\n
<Mazoga gives you a wide, blood-smeared grin.> ', RequestItemsText='Ya ain\'t been drinkin\' it yaself, eh? I need all of it... ', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=25025 WHERE entry=25021;#Blood to Thrive
UPDATE quest_template SET OfferRewardText='I can\'t believe it! You\'re amazing! Here, please, take your reward, take anything you want! I\'ve gotta save Chelsea! ', RequestItemsText='You\'re back! Do you have it? ', PrevQuestID=25521 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25522;#Gargantapid
UPDATE quest_template SET OfferRewardText='<Mazoga grins as he takes the sword from you in both hands.>\n
Didn\'t like ya much, eh? More in this world craves blood than just trolls, mon.\n
Let\'s find the other blade... ', RequestItemsText='Did the spirits speak true, mon? You got it? ', PrevQuestID=25021 , NextQuestID=0 , NextQuestInChain=25026 WHERE entry=25025;#Sang'thraze the Deflector
UPDATE quest_template SET OfferRewardText='<Mazoga tilts his head back and inhales the clumps of mysterious material. His eyes flash.>\n
Powerful stuff, mon...ah, if ya could see what I see now...mebbe you go try it yaself sometime.\n
The spirits call... ', RequestItemsText='You got de stuff, mon? ', PrevQuestID=25022 , NextQuestID=0 , NextQuestInChain=25032 WHERE entry=25026;#Darkest Mojo
UPDATE quest_template SET OfferRewardText='Mazoga? He\'s taken the sword? That filthy...\n
<Trenton glowers for a moment.>\n
At least you escaped with your life. The Lasher\'s bite is a vicious one. ', RequestItemsText='Don\'t be gawkin\' here at me all day, mon.\n
Best get goin\'.', PrevQuestID=25026 , NextQuestID=25556 , NextQuestInChain=0 WHERE entry=25032;#Secrets in the Oasis
UPDATE quest_template SET OfferRewardText='<Mazoga\'s ghost gives you a blood-smeared grin.>\n
How you doin\', mon? ', RequestItemsText='', PrevQuestID=25032 , NextQuestID=0 , NextQuestInChain=27068 WHERE entry=25556;#Into Zul'Farrak
UPDATE quest_template SET OfferRewardText='He\'s gone? Did he have the sword?\n
Nah...don\'t tell me. Don\'t matter no more. Mazoga don\'t care.\n
I\'m off now, mon. De consequences of my actions await me. Take whatever I was holdin\'... I don\'t need it where I\'m goin\'... ', RequestItemsText='', PrevQuestID=25556 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=27068;#Chief Ukorz Sandscalp
UPDATE quest_template SET OfferRewardText='This isn\'t goin\' fast enough. There\'s gotta be a faster way... ', RequestItemsText='There\'s still plenty of those things out there, pal. Keep at it!', PrevQuestID=26889, NextQuestID=0 , NextQuestInChain=24933 WHERE entry=24932;#Cutting Losses
UPDATE quest_template SET OfferRewardText='Thanks for the help, this was really killin\' things here. Once you start losing men, you start losing manpower. And morale. And weapons. And the magazines you loaned to that one guy.\n
You know how it is. ', RequestItemsText='This camp is still feelin\' pretty lonely. Mind savin\' a few more?', PrevQuestID=26889 , NextQuestID=24931 , NextQuestInChain=0 WHERE entry=25072;#A Few Good Goblins
UPDATE quest_template SET OfferRewardText='Ahh, perfect! Just what I need...full of potent focusing energies...\n
...ahem! I mean, perfect for my collection! Narain Soothfancy is in no need of artificial enhancement of any kind!\n
Now take your pay and be off! ', RequestItemsText='Do, ah, do you have them? ', PrevQuestID=24932 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=24931;#Gazer Tag
UPDATE quest_template SET OfferRewardText='Man, this stuff looks delicious. I\'m half tempted to just fry some up myself.\n
No! We\'ve gotta focus on gettin\' out of here.\n
Maybe just one piece... ', RequestItemsText='This is fresh, right? They won\'t go after anything that\'s been withering in the sun. ', PrevQuestID=24932 , NextQuestID=0, NextQuestInChain=24951 WHERE entry=24933;#Chicken of the Desert
UPDATE quest_template SET OfferRewardText='Look at the size of it! It\'s glorious. This ugly sucker\'s gonna help us bring down the whole hive. ', RequestItemsText='I don\'t see any bug with you, pal.', PrevQuestID=24933 , NextQuestID=0 , NextQuestInChain=24953 WHERE entry=24951;#A Great Idea
UPDATE quest_template SET OfferRewardText='Oh man, that was awesome! You should\'ve seen the flames coming out of the hive!\n
Here\'s your reward, for entertaining me as much as for clearing the hive! ', RequestItemsText='I didn\'t hear no cave-ins, pal! Try again!', PrevQuestID=24951 , NextQuestID=25061 , NextQuestInChain=0 WHERE entry=24953;#Just Trying to Kill Some Bugs
UPDATE quest_template SET OfferRewardText='I\'m amazed that Soothfancy was capable of following a simple set of instructions. And ones that required him to keep his foolish mouth silenced as well.\n
In addition, it is honestly good to see you again, $N. Now that I\'ve dropped the charade, you\'ll get to see how gnomes get things done around here. ', RequestItemsText='', PrevQuestID=24953 , NextQuestID=25060 , NextQuestInChain=0 WHERE entry=25061;#Land's End
UPDATE quest_template SET OfferRewardText='Your reports of their behavior are truly disturbing...but also slightly amusing.\n
If only that Dreadshredder wench had escaped on these vessels instead... ', RequestItemsText='I sincerely doubt you\'d prefer to adjust our mechanostriders or oil my boots for spare copper instead, $N. Go kill more goblins.', PrevQuestID=25061 , NextQuestID=25063 , NextQuestInChain=0, ExclusiveGroup='-25060' WHERE entry=25060;#Define "Crazy"
UPDATE quest_template SET OfferRewardText='<Kelsey takes the journal and gingerly flips through it.>\n
I\'m trying not to laugh. This is classic. They have no idea they\'re even on Kalimdor!\n
These later pages though...something more significant may be occuring here. ', RequestItemsText='What have you found? ', PrevQuestID=0 , NextQuestID=25063 , NextQuestInChain=0, ExclusiveGroup='-25060' WHERE entry=25062;#What We Came For
UPDATE quest_template SET OfferRewardText='Well, gosh, this day just keeps getting better and better! I may actually smile.\n
When you\'re not looking. You\'ve seen enough of that already. ', RequestItemsText='Hopefully your spree of turtle destruction left it intact. ', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=25065 WHERE entry=25063;#Terrapination
UPDATE quest_template SET OfferRewardText='Well done, $N. The contents of this chest are sure to advance Gnomeregan\'s knowledge base significantly. I believe you\'ve earned a reward. ', RequestItemsText='Do be careful with the contents of the chest. ', PrevQuestID=26063 , NextQuestID=0 , NextQuestInChain=28881 WHERE entry=25065;#You Too, Brute?
UPDATE quest_template SET OfferRewardText='What, you here to help? ', RequestItemsText='What, you here to help?', PrevQuestID=25065 , NextQuestID=0 , NextQuestInChain=25420 WHERE entry=28881;#Prospector Gunstan
UPDATE quest_template SET OfferRewardText='Good work, $c. We\'re that much closer to the secrets of Uldum. ', RequestItemsText='Make sure you decomission enough of those stony buggers.', PrevQuestID=28881 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25420;#Ancient Obstacles
UPDATE quest_template SET OfferRewardText='That\'ll teach the Horde twofold! Don\'t mess with dwarven history, and don\'t send a bunch of frail couch-dwellers to do your fighting! ', RequestItemsText='What\'re you still hanging around camp for?\n
Don\'t tell me you want a pillow too!', PrevQuestID=25065 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25559;#Laying Claim
UPDATE quest_template SET OfferRewardText='Hey Hol\'anyee, look at the getup on this one!\n
<Williden turns to face you.>\n
Ahem.  Our recruiter sent you?  Good.  Let\'s start out with a bit of honesty: Un\'Goro isn\'t the perfect nirvana that you may have been promised.  You\'ve probably figured that out on the way over here, though.\n
Shall we get to work? ', RequestItemsText='', PrevQuestID=25065 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=24911;#Tropical Paradise Beckons
UPDATE quest_template SET OfferRewardText='Would you take a look at these...not troll, not qiraji, just pure mystery waiting to be unlocked.\n
These aren\'t going anywhere now that they\'re safely in our hands. It\'s time to make our way into the ruins! ', RequestItemsText='Do you have the tablets? ', PrevQuestID=25065 , NextQuestID=25566 , NextQuestInChain=0 WHERE entry=25565;#Fragments of Language
UPDATE quest_template SET OfferRewardText='This chest lies undisturbed, sealed for thousands of years. ', RequestItemsText='', PrevQuestID=25565 , NextQuestID=0 , NextQuestInChain=25070 WHERE entry=25566;#The Secrets of Uldum
UPDATE quest_template SET OfferRewardText='The chest now grinds open again, the rest of the antechamber fallen silent. ', RequestItemsText='', PrevQuestID=25566 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25070;#What Lies Within
UPDATE quest_template SET OfferRewardText='This is amazing. These hieroglyphs are undoubtedly titan, but the markings below it...

If I had to hope, this is the same passage written over and over again in an entire assortment of ancient languages. We might be able to use this to decipher the hieroglyphs! If the antechamber was covered in them as you say, who knows what else we\'ll learn.\n
I\'d like to grant you a fine reward, $N. We\'ve made the find of the century! ', RequestItemsText='You\'re back! What have you found? ', PrevQuestID=0 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25421;#The Grand Tablet
UPDATE quest_template SET OfferRewardText='Fantastic. I might challenge you to a duel myself someday. ', RequestItemsText='Stop wasting my time. Enter and fight!', PrevQuestID=25065 , NextQuestID=0 , NextQuestInChain=0 WHERE entry=25513;#Thunderdrome: Grudge Match!