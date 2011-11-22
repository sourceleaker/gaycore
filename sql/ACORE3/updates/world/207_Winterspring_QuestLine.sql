ALTER TABLE `world_db_version` CHANGE  `required_205_To_All_the_Squirrels` `required_207_Winterspring_QuestLine`  BIT(1);

UPDATE creature_template SET minlevel=50,maxlevel=50,mindmg=47,maxdmg=59,baseattacktime=2000 WHERE entry=48765;

DELETE FROM creature WHERE id=48765;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48765','1','1','1','0','0','6390.58','-2768.23','587.227','0.574542','95','0','0','4430','0','0','0','0','0','0');

UPDATE quest_template SET PrevQuestId=26449,QuestFlags=262152, ReqCreatureOrGOId1='-194612', ReqCreatureOrGOCount1=12 WHERE entry=13806;
UPDATE creature_template SET npcflag=3 WHERE entry=33726;
UPDATE quest_template SET SrcSpell=63704 WHERE entry=13798;

UPDATE quest_template SET OfferRewardText='Thank goodness you\'re here. I\'ve discovered the secret of the fierce Winterfall furbolg. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28460 WHERE entry=28544;#Hero's Call: Winterspring!
UPDATE quest_template SET OfferRewardText='Thank goodness you\'re here. I\'ve discovered the secret of the fierce Winterfall furbolg. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28460 WHERE entry=28768;#Winterspring!
UPDATE quest_template SET OfferRewardText='Perhaps you can help me make sense of my discoveries about the source of the Winterfall Furbolgs\' strength. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28460 WHERE entry=28545;#Warchief's Command: Winterspring!
UPDATE quest_template SET OfferRewardText='Thanks so much, $N! Now I can get back to work here.\n
Did you find anything of interest at the Winterfall camp? ', RequestItemsText='I appreciate your help!', PrevQuestID=28524, NextQuestID=0, NextQuestInChain=0 WHERE entry=28460;#Threat of the Winterfall
UPDATE quest_template SET OfferRewardText='Thank you for what you have done, as saddening as it is.  Accept this as a token of thanks.\n
I would ask of you to please continue helping us, $N.  We have very few allies on which to call upon, and without your aid, the threats against my tribe would surely be too much for us to handle alone. ', RequestItemsText='We very much appreciate what you have done for the Timbermaw, $N.  Your continued efforts will surely earn my tribe\'s trust and respect. ', PrevQuestID=0, NextQuestID=0, NextQuestInChain=0 WHERE entry=28522;#Winterfall Activity
UPDATE quest_template SET OfferRewardText='Oh, how nice of those dear furbolg. I feel so bad for them, cooped up in that hold, afraid of the world.\n
But can you blame them? These Winterfall furbolg are turning just as vicious as any in Felwood. I\'d like to put a stop to it... if only for the sake of my own research, let alone the dear Timbermaw. ', RequestItemsText='Welcome to the hot springs. What\'ve you got there? ', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28460 WHERE entry=28524;#Delivery for Donova
UPDATE quest_template SET OfferRewardText='Dis is nice, big heart! If you be interested, Mau\'ari tell ya how I be gettin\' de E\'ko.... ', RequestItemsText='You got de bear? Let\'s see de bear. ', PrevQuestID=0, NextQuestID=0, NextQuestInChain=0 WHERE entry=28540;#Doin' De E'ko Magic
UPDATE quest_template SET OfferRewardText='What\'s dis? You got de smell of de E\'ko on ya! Let Mau\'ari tell ya a little bit about de E\'ko and what it do.\n
You\'re lucky, $r. De E\'ko searched you out. A troll like me\'s gotta go find de E\'ko herself.\n
All de creatures of Winterspring have E\'ko. De furbolg, de chillwind, de shardtooth... even de Ice Thistle yeti! You kill dese creatures, and sometimes, a bit of E\'ko comes out. Different creatures... different E\'ko.\n
Go on now. Go find de other E\'ko! ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=0 WHERE entry=28656;#Strange Life Forces
UPDATE quest_template SET OfferRewardText='Disturbing news indeed. This stuff\'s much more like what you\'d see in Felwood than in Winterspring... ', RequestItemsText='I hope you found something, $N. The Winterfall are becoming increasingly aggressive! ', PrevQuestID=28464, NextQuestID=0, NextQuestInChain=28469 WHERE entry=28467;#Mystery Goo
UPDATE quest_template SET OfferRewardText='Inside the cauldron bubbles a rotting, repulsive-smelling substance... ', RequestItemsText='', PrevQuestID=28462, NextQuestID=0, NextQuestInChain=28467 WHERE entry=28464;#Falling to Corruption
UPDATE quest_template SET OfferRewardText='', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28464 WHERE entry=28462;#Winterfall Firewater
UPDATE quest_template SET OfferRewardText='Once again, you prove your honor to us!  I will make sure that your deeds are known amongst my kind.\n
Remember to bring any of the Winterfall\'s beads you find to me.  For each set you continue to bring to me, I will speak on your behalf to the tribe. ', RequestItemsText='You\'ve certainly earned my trust. $N, but you may need to continue to earn the trust of my untrusting tribe. There is something you can do to earn that trust.\n
The Winterfall are known to carry spirit beads to ward against foul spirits. These beads have clearly failed in their purpose, as the Winterfall themselves are the agents of corruption. Bring to me these spirit beads from fallen Winterfall furbolgs; for every set of five you bring me, you will earn recognition amongst the Timberm', PrevQuestID=28522, NextQuestID=0, NextQuestInChain=0 WHERE entry=28523;#More Beads for Salfa
UPDATE quest_template SET OfferRewardText='<Donova examines the contents of the crate.>\n
I wonder if consuming this substance makes the furbolg more aggressive. They do seem much larger... ', RequestItemsText='We\'ll see what happens when the Winterfall don\'t get their firewater! ', PrevQuestID=28467, NextQuestID=0, NextQuestInChain=28470 WHERE entry=28469;#Winterfall Runners
UPDATE quest_template SET OfferRewardText='That\'s quite a bit of it... the Winterfall are slipping further and further. And now we\'ll have to worry about the other wildlife as well, in time. ', RequestItemsText='What did you find? ', PrevQuestID=28467, NextQuestID=0, NextQuestInChain=0 WHERE entry=28530;#Scalding Signs
UPDATE quest_template SET OfferRewardText='Thank you so much, $N. I hope to get back to my studies without worry that I will be ambushed. Please accept this as a reward. ', RequestItemsText='Maybe you will find out more in Winterfall VIllage, $N.', PrevQuestID=28469, NextQuestID=0, NextQuestInChain=0 WHERE entry=28470;#High Chief Winterfall
UPDATE quest_template SET OfferRewardText='I wonder what all of this means... I can\'t make anything out... ', RequestItemsText='Now, what\'s this, $N? ', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28472 WHERE entry=28471;#The Final Piece
UPDATE quest_template SET OfferRewardText='Yes, if you let me examine this for a while, I might be able to translate it for you.\n
<Kelek flips through the pages.>\n
When I am able to look over this fully, I will send word to you.\n
Thank you for sharing this with me, $N. Very little is known about the Winterfall furbolg. ', RequestItemsText='What is it you carry, $c? ', PrevQuestID=28471, NextQuestID=0, NextQuestInChain=28479 WHERE entry=28472;#Words of the High Chief
UPDATE quest_template SET OfferRewardText='Pity me, stranger, and all the Highborne, for it was here our folly began... our folly that cursed our children, and our children\'s children, to this day. ', RequestItemsText='', PrevQuestID=28472, NextQuestID=0, NextQuestInChain=28513 WHERE entry=28479;#The Ruins of Kel'Theril
UPDATE quest_template SET OfferRewardText='The Crystal of Zin-Malor was stolen from a far-off temple without remorse. Its ability to control the arcane was too tempting, and when it was toyed with, its shattering cursed us all. Kel\'theril suffered until the Sundering destroyed it for good.\n
The curse of Zin-Malor binds all who seek its power here. I was the first to fall to its temptation. Thousands of years later, our long lost descendants would be next... ', RequestItemsText='Death is not always a relief', PrevQuestID=28479, NextQuestID=0, NextQuestInChain=28534 WHERE entry=28513;#Pride of the Highborne
UPDATE quest_template SET OfferRewardText='We were proud and noble. Our faith in the light protected us, and with the Sunwell, we wanted for nothing.\n
Because of that blindness, we came here to repeat the tragedy of history, as our entire race would in time. ', RequestItemsText='', PrevQuestID=29513, NextQuestID=0, NextQuestInChain=28518 WHERE entry=28534;#Descendants of the Highborne
UPDATE quest_template SET OfferRewardText='We were shocked before we died. Shocked that one among our noble and austere kind could descend into vicious obsession so quickly. We died as naive fools, the victims of our own blithe assumptions.\n
The living would know that these events would play out yet again... both here, and among the entire elven race with the fall of Quel\'thalas. ', RequestItemsText='Maenius was a powerful mage and an honorable elf.  His spirit did not deserve such an ignoble fate. ', PrevQuestID=28534, NextQuestID=0, NextQuestInChain=28535 WHERE entry=28518;#Legacy of the High Elves
UPDATE quest_template SET OfferRewardText='We were not naive, as our forefathers were. We were suspicious and cunning and ready for betrayal at every turn.\n
Yet our pride and greed drove us to ruin once more. How many more will be lost to Kel\'theril? ', RequestItemsText='', PrevQuestID=28518, NextQuestID=0, NextQuestInChain=28519 WHERE entry=28535;#Descendants of the High Elves
UPDATE quest_template SET OfferRewardText='The living farstrider who sent you here could not bear to see our fate. He ran... a wise decision.\n
If one now holds the Crystal of Zin-Malor again, it will spell the doom of all around them. It should never have been reassembled. ', RequestItemsText='Do not loiter too long. There are few escapes from Kel\'theril.', PrevQuestID=28535, NextQuestID=0, NextQuestInChain=28536 WHERE entry=28519;#Pain of the Blood Elves
UPDATE quest_template SET OfferRewardText='The shade! Yes, I saw it too! ', RequestItemsText='', PrevQuestID=28519, NextQuestID=0, NextQuestInChain=28537 WHERE entry=28536;#The Curse of Zin-Malor
UPDATE quest_template SET OfferRewardText='Let me see... faintly written, among the engraved incantations, is the name of its master!\n
"Umbranse..." ', RequestItemsText='Did you find the shade? Was anything left to indicate its origin? ', PrevQuestID=28536, NextQuestID=0, NextQuestInChain=28848 WHERE entry=28537;#In Pursuit of Shades
UPDATE quest_template SET OfferRewardText='Umbranse... I see. I will carry this information onto my people.\n
You will be contacted if you are needed again. ', RequestItemsText='', PrevQuestID=28537, NextQuestID=0, NextQuestInChain=0 WHERE entry=28848;#Trailing the Spiritspeaker
UPDATE quest_template SET OfferRewardText='Lilith wants a boulder moved inside the observatory, eh? That\'s my business: consolidated materials. I usually don\'t get individual buyers, but hey, I won\'t ask questions. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=28610 WHERE entry=28609;#Hammer Time
UPDATE quest_template SET OfferRewardText='Looks like a good amount! Here\'s your pay, as promised... ', RequestItemsText='You got that rubble? ', PrevQuestID=28609, NextQuestID=0, NextQuestInChain=28618 WHERE entry=28610;#Rubble Trouble
UPDATE quest_template SET OfferRewardText='For decades has the garrison at Nethergarde held firm against the threat of the Horde and we do not intend to surrender now. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=25710 WHERE entry=28857;#Blasted Lands: The Other Side of the World
UPDATE quest_template SET OfferRewardText='Our enemies are numerous, $c. It will take skill and bravery to overcome them all. ', RequestItemsText='', PrevQuestID=0, NextQuestID=0, NextQuestInChain=25674 WHERE entry=28858;#Blasted Lands: The Other Side of the World
UPDATE quest_template SET OfferRewardText='Ah, you actually brought the boulder! I\'m a bit surprised.\n
Stand back and witness the pinnacle of craftsmanship. ', RequestItemsText='Oh, it\'s you again. Where\'s that boulder? ', PrevQuestID=28610, NextQuestID=28624, NextQuestInChain=0 WHERE entry=28618;#Boulder Delivery
UPDATE quest_template SET OfferRewardText='They want a tree now? Let\'s see what I got. ', RequestItemsText='', PrevQuestID=28618, NextQuestID=0, NextQuestInChain=28625 WHERE entry=28624;#Kilram's Boast
UPDATE quest_template SET OfferRewardText='Not a bad haul. Maybe we should look into growin\' those treants instead... ', RequestItemsText='Show me the lumber. ', PrevQuestID=28624, NextQuestID=0, NextQuestInChain=28624 WHERE entry=28625;#Chop Chop
UPDATE quest_template SET OfferRewardText='Alright! Stand back now and watch what a true quality weapon can do! ', RequestItemsText='Chop chop!', PrevQuestID=28625, NextQuestID=28627, NextQuestInChain=0 WHERE entry=28626;#Tree Delivery
UPDATE quest_template SET OfferRewardText='Oh, it\'s you again! I\'m so surprised! ', RequestItemsText='', PrevQuestID=28626, NextQuestID=0, NextQuestInChain=28632 WHERE entry=28627;#Seril's Boast
UPDATE quest_template SET OfferRewardText='These furs are perfect, $N. We\'re off to a great start here! ', RequestItemsText='I\'ve got lots to get started on here. Please get me those furs as soon as you can! ', PrevQuestID=28626, NextQuestID=0, NextQuestInChain=28722 WHERE entry=28629;#Are We There, Yeti?
UPDATE quest_template SET OfferRewardText='Part of this machine is still moving, but on closer inspection it\'s been severely manhandled. The metal is dented and cracked, and there\'s huge footprints in the snow all around it.\n
In fact, it sounds like something\'s approaching right now... ', RequestItemsText='', PrevQuestID=28626, NextQuestID=0, NextQuestInChain=0 WHERE entry=28630;#Echo Three
UPDATE quest_template SET OfferRewardText='Not bad! Let\'s hope they don\'t ask for lava or something next, right? ', RequestItemsText='Oh, you\'re back! How were the yetis? ', PrevQuestID=28627, NextQuestID=0, NextQuestInChain=28628 WHERE entry=28632;#Fresh From The Hills
UPDATE quest_template SET OfferRewardText='Hah! She\'ll think twice before making fun of my ideas again!\n\n
Thanks for your help, $N. I couldn\'t have had so much fun without you! ', RequestItemsText='She\'ll never expect it! ', PrevQuestId=28629, NextQuestID=0, NextQuestInChain=0 WHERE entry=28722;#Yetiphobia
UPDATE quest_template SET OfferRewardText='Perfect. Now you\'ll see what really matters in a weapon... finesse. ', RequestItemsText='Ah, you\'re back! ', PrevQuestId=28632, NextQuestID=8798, NextQuestInChain=0 WHERE entry=28628;#Ice Delivery
UPDATE quest_template SET OfferRewardText='Say! You know what?! You\'re an engineer too! So, since you helped me teach my friends a lesson, I\'m going to teach you how to make your very own mechanical yeti! Now the fun can go on forever and ever, and you can scare whoever you want! Provided that you can scare up the components to make it that is.\n
What do you say, $N? Do you want to learn the secret to making a mechanical yeti? ', RequestItemsText='', PrevQuestId=28722, NextQuestID=0, NextQuestInChain=0 WHERE entry=8798;#A Yeti of Your Own
UPDATE quest_template SET OfferRewardText='You are $N, yes?\n
Good, you will serve well. I require the aid of a $c such as yourself. ', RequestItemsText='', PrevQuestId=28722, NextQuestID=0, NextQuestInChain=28837 WHERE entry=28847;#The Pursuit of Umbranse
UPDATE quest_template SET OfferRewardText='Let\'s see what I can do with these... ', RequestItemsText='Mazthoril belongs to the blue dragonflight. This is not right. ', PrevQuestId=28847, NextQuestID=28838, NextQuestInChain=0 WHERE entry=28837;#Altered Beasts
UPDATE quest_template SET OfferRewardText='Good. It is just as Jaron described it.', RequestItemsText='The owlbeasts\' magic will be the key to our retaking of Mazthoril. ', PrevQuestId=28837, NextQuestID=0, NextQuestInChain=28839 WHERE entry=28838;#The Owlbeasts' Defense
UPDATE quest_template SET OfferRewardText='The dreamcatcher is charged.  We are nearly ready to retake Mazthoril. ', RequestItemsText='What are you doing, $N? We need that essence. ', PrevQuestId=28838, NextQuestID=0, NextQuestInChain=28840 WHERE entry=28839;#Magic Prehistoric
UPDATE quest_template SET OfferRewardText='<Haleh applies the water to your dreamcatcher.>\n
You\'ve done well, $N. ', RequestItemsText='Welcome back. ', PrevQuestId=28839, NextQuestID=0, NextQuestInChain=0 WHERE entry=28840;#Winterwater
UPDATE quest_template SET OfferRewardText='My honor is restored.\n
Partially.\n
My tale continues, $c, for I have left portions of my honor elsewhere in this forest.\n
It has not been a very easy journey for me. ', RequestItemsText='They came at me two at a time, $c. I stood no chance.', PrevQuestId=0, NextQuestID=0, NextQuestInChain=0 WHERE entry=28829;#Razor Beak and Antlers Pointy
UPDATE quest_template SET OfferRewardText='If I survive my wounds, I will always remember your name, $c.\n
Whenever the wind whistles through the trees, I will always hear your name.\n
Thank you. ', RequestItemsText='Will this torment never end?', PrevQuestId=28829, NextQuestID=0, NextQuestInChain=0 WHERE entry=28831;#Damn You, Frostilicus
UPDATE quest_template SET OfferRewardText='Be glad that the adult giants are trapped on the other side of that gorge. They are far hardier than these tumblers you fight.\n
I feel rejuvenated by your courage, $c. Perhaps all hope is not lost after all... ', RequestItemsText='I fear I will die on this snowbank, $c.', PrevQuestId=28829, NextQuestID=0, NextQuestInChain=0 WHERE entry=28830;#Chips off the Old Block
UPDATE quest_template SET OfferRewardText='It will take some time for Mazthoril to recover... but she will.\n
The Blue Dragonflight is far from dead. ', RequestItemsText='I\'m counting on you, $N.', PrevQuestId=28840, NextQuestID=28674, NextQuestInChain=0, ExclusiveGroup='-28841' WHERE entry=28841;#The Arcane Storm Within
UPDATE quest_template SET OfferRewardText='You have our thanks, $N. ', RequestItemsText='You must finish this for me, $N.', PrevQuestId=28840, NextQuestID=28674, NextQuestInChain=0, ExclusiveGroup='-28841' WHERE entry=28842;#Umbranse's Deliverance
UPDATE quest_template SET OfferRewardText='Welcome to Starfall, $c. We have opened our doors to all travelers in our time of need. ', RequestItemsText='', PrevQuestId=0, NextQuestID=0, NextQuestInChain=0 WHERE entry=28674;#Starfall Village
UPDATE quest_template SET OfferRewardText='Oh good, another warm body!\n
I hope that elf up there didn\'t bore you to death. We\'ve got a lot of bugs to kill here. ', RequestItemsText='', PrevQuestId=28674, NextQuestID=0, NextQuestInChain=0 WHERE entry=28676;#Exterminators at Work
UPDATE quest_template SET OfferRewardText='They may not look like much to you, but these relics hold great value to the people of Starfall.  You are kind, $N. ', RequestItemsText='I hope you found them intact... ', PrevQuestId=28674, NextQuestID=0, NextQuestInChain=0 WHERE entry=28701;#Out of Harm's Way
UPDATE quest_template SET OfferRewardText='Hey, nice work!\n
If you ever want to come back and kill some more bugs for absolutely no additional reward, please, feel free! ', RequestItemsText='I figured a talented $c like you would have no problem taking care of a few bugs.\n
I GUESS I FIGURED WRONG.', PrevQuestId=28674, NextQuestID=0, NextQuestInChain=0 WHERE entry=28703;#Step into my Barrow
UPDATE quest_template SET OfferRewardText='We\'re bringing out the bug spray, eh? I guess it can\'t be helped. ', RequestItemsText='', PrevQuestId=28674, NextQuestID=0, NextQuestInChain=28707 WHERE entry=28706;#Spray it Forward
UPDATE quest_template SET OfferRewardText='Fumigators? From Rinno? Geez... ', RequestItemsText='Wasn\'t expecting to see a stranger down here! ', PrevQuestId=28706, NextQuestID=0, NextQuestInChain=28710 WHERE entry=28707;#Spray it Again
UPDATE quest_template SET OfferRewardText='Rinno sent you! And you brought... fumigators? Ugh! ', RequestItemsText='What\'re you doing here? ', PrevQuestId=28707, NextQuestID=0, NextQuestInChain=28718 WHERE entry=28710;#Spray it One More Time
UPDATE quest_template SET OfferRewardText='Look around you; you\'re looking at the largest goblin-owned hunting reserve in Kalimdor! I\'ve got the licenses to shoot and eat everything that walks on the snow from here to Everlook... and lemme tell you, they\'re good eatin\'! ', RequestItemsText='', PrevQuestId=28710, NextQuestID=0, NextQuestInChain=28640 WHERE entry=28718;#Where There's Smoke, There's Delicious Meat
UPDATE quest_template SET OfferRewardText='Alright! Don\'t stop now, we\'re after the big ones next! ', RequestItemsText='Those frostsabers aren\'t going to kill, skin, and smoke themselves!', PrevQuestId=28718, NextQuestID=0, NextQuestInChain=28641 WHERE entry=28718;#Fresh Frostsabers
UPDATE quest_template SET OfferRewardText='Nice. Eggs.\n
These will go great with a little bear bacon.  Hey Francis, got any bear meat left over? ', RequestItemsText='Mmmm.... ', PrevQuestId=28710, NextQuestID=0, NextQuestInChain=0 WHERE entry=28828;#You Gotta Have Eggs
UPDATE quest_template SET OfferRewardText='The Captain\'s been bringin\' back bags full of owl, and I can\'t wait to try it! Maybe Mr. Fancypants Francis here will even try some.', RequestItemsText='', PrevQuestId=28710, NextQuestID=0, NextQuestInChain=28745 WHERE entry=28638;#The Owls Have It
UPDATE quest_template SET OfferRewardText='Simply splendid! I\'ve been watching the Captain bring bear after bear back to camp and I can\'t wait to see them thrown on the smoker.\n
Perhaps I\'ll have a taste of them raw... ', RequestItemsText='Don\'t wander too far to the south. The Captain will follow you there later.', PrevQuestId=28710, NextQuestID=0, NextQuestInChain=28719 WHERE entry=28637;#A Taste for Bear
UPDATE quest_template SET OfferRewardText='<Francis smacks his lips.>\n
You\'ve got to try some of this, $N.  These maulers are perfectly tenderized... possibly because of the pummeling you delivered. ', RequestItemsText='I\'m so hungry I could eat a bear. Bare.', PrevQuestId=28637, NextQuestID=0, NextQuestInChain=28639 WHERE entry=28719;#A Little Gamy
UPDATE quest_template SET OfferRewardText='You\'ve put us in enough owls for us to sell for a month, friend. Gotta hand it to ya.', RequestItemsText='', PrevQuestId=28638, NextQuestID=0, NextQuestInChain=28782 WHERE entry=28745;#Screechy Keen
UPDATE quest_template SET OfferRewardText='Beautiful! I\'m watching the Captain drag this all back right now and it\'s a gorgeous sight.\n
And the next course... ', RequestItemsText='Ztopping by to chat?', PrevQuestId=28640, NextQuestID=0, NextQuestInChain=28742 WHERE entry=28641;#Pride of the Dinner Table
UPDATE quest_template SET OfferRewardText='Amazing, kid. You\'re a cut above! I went through about five different contracted hunters trying to get that cat.\n
Well, we found two of them after the Captain got the corpse, but let\'s not dwell on that... ', RequestItemsText='Shy-Rotam\'s in the north. No food \'til you finish!', PrevQuestId=28641, NextQuestID=0, NextQuestInChain=0 WHERE entry=28742;#Shy-Rotam
UPDATE quest_template SET OfferRewardText='Hell-Hoot is slain, and her meat is just as succulent as you\'d expect.\n
Today, we eat a legend.  Thank you, $N. ', RequestItemsText='I want that owl, $N.', PrevQuestId=28745, NextQuestID=0, NextQuestInChain=0 WHERE entry=28782;#A Bird of Legend
UPDATE quest_template SET OfferRewardText='Ursius is... not delicious.  He tastes like a combination of pinecones and curdled milk, only... oilier.\n
Are you sure this is Ursius?  The big bear?  In the cave?\n
This is horrible.  It honestly tastes like his meat has been steeped in urine.\n
I don\'t feel like I\'m getting any stronger.\n
Ugh.  It\'s really bad.  Do you want to try some? ', RequestItemsText='Good hunting, $N.', PrevQuestId=28719, NextQuestID=0, NextQuestInChain=0 WHERE entry=28639;#Ursius
UPDATE quest_template SET OfferRewardText='These cubs are just the right age to begin their training. A few of them even have the proper traits to be trained as mounts. As promised, I\'ll select one of these cubs for you to train. This fellow here seems to have an affinity for you.\n
I\'ll train the more common, docile cubs for the market in Darnassus. ', RequestItemsText='We must get the saber cubs while they\'re still young enough to bond with people. If they get too old, the cats will remain feral forever.', PrevQuestId=0, NextQuestId=0, NextQuestInChain=29034 WHERE entry=29032;#Get Them While They're Young
UPDATE quest_template SET OfferRewardText='It looks like you\'ve done an admirable job of raising your cub, $N. Your saber has grown up to be strong, healthy, and loyal. Both of you are well-matched.\n
Your Winterspring frostsaber will respond to your call anytime you wish to ride together. ', RequestItemsText='How fares your young saber? ', PrevQuestId=29032, NextQuestId=0, NextQuestInChain=0 WHERE entry=29034;#They Grow Up So Fast

