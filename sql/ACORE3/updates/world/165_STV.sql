ALTER TABLE `world_db_version` CHANGE  `required_164_q_14469` `required_165_STV`  BIT(1);

UPDATE quest_template SET OfferRewardText='Well done, $N.  Now, let\'s see what they\'ve got in this elixir of theirs... ', RequestItemsText='I\'m a little bit of an alchemist in my spare time, you know.', RewSpell=79648, NextQuestInChain=26733 WHERE entry=26732;#Bad Medicine#
UPDATE quest_template SET OfferRewardText='Oh I see, it\'s a Krazek\'s Crock Pot!  An ingenious piece of work, but it can break a spring or throw a gear now and then.  Let me see what\'s wrong with this one...\n
Aha!  Its steam charger is rusted out, it has a cracked knuckle-gasket and its fobulator is missing teeth.  I\'m surprised the pot could even boil a turnip in this state!\n
Can I fix it?  Of course I can fix it!\n
But there\'s a price.  Oh yes, there is always a price... ', RequestItemsText='Hello! You brought me something?', NextQuestInChain=26763 WHERE entry=26740;#Krazeks Cookery#
UPDATE quest_template SET OfferRewardText='Welcome to our camp, $C.  You couldn\'t have arrived at a better time. ', RequestItemsText='', NextQuestInChain=26735 WHERE entry=26838;#Rebels Without a Clue#
UPDATE quest_template SET OfferRewardText='They KILLED him?  And all this time, I thought he had them underneath an iron bootheel... ', RequestItemsText='What were you able to find, $N', PrevQuestId=26838, NextQuestInChain=26736 WHERE entry=26735;#The Fate of Kurzen#
UPDATE quest_template SET OfferRewardText='Jolly nice to make your acquaintance, $N.  Haven\'t seen a $C around these parts for some time.\n
I\'ve one purpose in being here: to hunt a great and elusive beast.  Seeing that you\'re a hero of sorts I am willing to let you take part in the hunt, but you must first prove yourself.\n
I shall teach the ways of raptor killing to you.  Ajeck will train you with tiger hunting.  And Sir Erlgadin is a master of panther tracking.\n
Prove your skill and I\'ll let you in on the big hunt. ', RequestItemsText='' WHERE entry=583;#Welcome to Jungle#
UPDATE quest_template SET OfferRewardText='These skins should do. Their quality isn\'t too important, given that they\'ll make up the inside layer of the boots, but it\'s still important that they\'re comfortable.\n
If they\'re a bit too rigid, I\'ll use some tiger blood to soften it up. Tricks o\' the trade, you know? ', RequestItemsText='My equipment is all ready to go, $N, I just need those skins. We don\'t want to keep Riddlevox waiting, that\'s for sure.
It\'s not a good idea for anyone to keep the chief inventor of the Tinkers\' Union unsatisfied. ',NextQuestInChain=26344 WHERE entry=26343;#Supply and Demand#
UPDATE quest_template SET OfferRewardText='These will work fine.  Just a moment please.\n
<Krazek thrusts the stones into the cooking pot and wiggles them around a bit.>\n
All fixed! ', RequestItemsText='Do you have those crystals? ',PrevQuestId=26740,NextQuestInChain=26765 WHERE entry=26763;#Venture Company Mining#
UPDATE quest_template SET OfferRewardText='', RequestItemsText='Hello, $N. Did the goblin Krazek fix my pot??',PrevQuestId=26763 WHERE entry=26765;#Return to Corporal Kaleb#
UPDATE quest_template SET OfferRewardText='Stranglethorn raptors were not a problem for a wily $C like you. ', RequestItemsText='I never met a $C who got any kills by standing around the campfire - well, except for my father. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?', PrevQuestId=583,NextQuestInChain=195 WHERE entry=194;#Raptor Hunting#
UPDATE quest_template SET OfferRewardText='You\'ve certainly saved me a heap of trouble, $N!  I can\'t thank you enough.  It shouldn\'t be long now until we see Master Nesingwary\'s book in libraries throughout the world!\n
I\'ll leave a copy of the book right here, if you ever want to take a peek at the finished product.  Thanks again, $N! ', RequestItemsText='Have you found it?  I\'d hate to return an almost-finished book back to Hemet. ', PrevQuestId=583 WHERE entry=26269;#The Green Hills of Stranglethorn#
UPDATE quest_template SET OfferRewardText='You feel more experienced already.  Perhaps it\'s time to move on to bigger prey. ', RequestItemsText='A true panther hunter would be out in the fields, trying to stalk his prey. Show some commitment to your goal, $C, and get back out there.', PrevQuestId=583, NextQuestInChain=191 WHERE entry=190;#Panther Hunting#
UPDATE quest_template SET OfferRewardText='You have finished with the young tigers... but the thrill of the hunt still holds you captive. ', RequestItemsText='I don\'t feel confident in training you further, $N, until you have proven yourself skilled in slaying the youngest of tigers first.', PrevQuestId=583,NextQuestInChain=186 WHERE entry=185;#Tiger Hunting#
UPDATE quest_template SET OfferRewardText='Tiger blood coats your hands, your weapons, and your $C garb.  Yet still you crave more. ', RequestItemsText='If you strive for greater challenges you must first prove yourself with task at hand. Return to me after you\' ve killed 10 Stranglethorn Tigers.', PrevQuestId=185, NextQuestInChain=187 WHERE entry=186;#Tiger Stalking#
UPDATE quest_template SET OfferRewardText='You take a moment to silently congratulate yourself on your panther hunting so far. ', RequestItemsText='Go kill 10 panthers! Show us what you\'ve got!',PrevQuestId=190 WHERE entry=191;#Panther Stalking#
UPDATE quest_template SET OfferRewardText='My boots... they\'re like sausages, $N. Look great, taste great. I tell you they\'re filled with nothing but the finest ingredients and meats, and you eat it, and you love it.\n
It\'s safer--and more enjoyable--if you just trust me, and don\'t ask too carefully what\'s really inside. ', RequestItemsText='Drizzlik\'s Excelsior leather boots, finest workmanship, one-hundred percent high quality saltwater crocolisk skin boots. None finer!\n
Can\'t beat a glowing description like that, can you?\n
Except, maybe, if you have those skins for me? ',PrevQuestId=26343,NextQuestInChain=26345 WHERE entry=26344;#Some Assembly Required#
UPDATE quest_template SET OfferRewardText='Great! Thanks to your help I\'ll have this order filled and sent off to Director Riddlevox on the next boat to Undermine. Ahead of schedule, even!\n
For all your hard work, here, I made some extras, so take a pair. It\'s on Drizzlik.\n
And remember, there\'s no boot so fine as one of Drizzlik\'s Excelsior line! ', RequestItemsText='I read somewhere that the elder crocolisks are slowly dying out... bad news for my business, isn\'t it?\n
Anyways, I hope you have that elder snapjaw crocolisk skin for me! ', PrevQuestId=26344 WHERE entry=26345;#Excelsior#
UPDATE quest_template SET OfferRewardText='Hemet Nesingwary Jr. doubted you, but his doubts were unfounded.  You are absolutely destroying these raptors. ', RequestItemsText='A true $C sets his focus on his prey. You, my friend, seem more concerned with chit-chatting around the campfire. Now get out there and kill 10 lashtails before I go and rid the entire bloody jungle of them in one hunt.', PrevQuestId=194, NextQuestInChain=196 WHERE entry=195;#Raptor Stalking#
UPDATE quest_template SET OfferRewardText='You have defeated the strongest tigers in Stranglethorn.  You have become a great tiger hunter, and have every right to stop your hunt right here and now.\n
Something tells you, however, that a stronger cat still waits for you within that jungle... ', RequestItemsText='You must kill the Elder Stranglethorn Tigers before I give you the final challenge that will determine if you are a true tiger hunting master.',PrevQuestId=186, NextQuestInChain=188 WHERE entry=187;#Tiger Prowess#
UPDATE quest_template SET OfferRewardText='The shadowmaw panthers proved no match for your skills as a hunter.  Only one task remains.', RequestItemsText='What are you doing here, $N! You should be crawling through the brush, trying to kill shadowmaw panthers. I thought you fancied yourself a big game $C?', PrevQuestId=191, NextQuestInChain=193 WHERE entry=192;#Panther Prowess#
UPDATE quest_template SET OfferRewardText='This will do.  Please hold on for a moment while I test this out. ', RequestItemsText='There\'s something not quite healthy about this elixir, $N.  Even though I haven\'t completed my analysis, I can sense it. ', PrevQuestId=26732, NextQuestId=26734 WHERE entry=26733;#Control Sample#
UPDATE quest_template SET OfferRewardText='Yes, the little one seems to have taken a liking to you.  You\'re lucky... at this age, the raptors are calm, peaceful, and easily trained.  Keep her, $N... she may come in handy.\n
In fact... ', RequestItemsText='', NextQuestInChain=26739 WHERE entry=26738;#Just Hatched#
UPDATE quest_template SET OfferRewardText='So the great Bhag\'thera is dead!  Cheers to you, $N.  You are a mighty $C indeed! ', RequestItemsText='You\'re still alive!  Excellent!  How fares the hunt? ', PrevQuestId=192, ExclusiveGroup='-196', NextQuestId=208 WHERE entry=193;#Panther Mastery#
UPDATE quest_template SET OfferRewardText='She looks bigger already!  You can see, these raptors grow quickly.  You are lucky to have found such a strong companion.\n
Keep her by your side as long as you can, $N.  I\'m sure she will prove to be an asset in the future. ', RequestItemsText='She\'s still looking a little scrawny. $N. Maybe some more basilisk meat is in order.', PrevQuestId=26738, NextQuestId=26744 WHERE entry=26739;#I Think She's Hungry#
UPDATE quest_template SET OfferRewardText='Thank you, $N.  It looks like my suspicions were correct... the three prisoners seem to have escaped the affliction that gripped Kurzen and the rest of his men.\n
Before you arrived, Emerine teleported them over to Stormwind to get cleaned up after their ordeal.  They promised to return soon. ', RequestItemsText='Bring those three back here to my camp, $R ... alive or dead.', PrevQuestId=26735,NextQuestInChain=26737 WHERE entry=26736;#Spared from Madness#
UPDATE quest_template SET OfferRewardText='Most impressive, I do say!  I send you out to defeat the kittens, and you return with a paw the size of a gnome!  You are a true Master Tiger Hunter, $N! ', RequestItemsText='How goes the hunt? ', PrevQuestId=187,ExclusiveGroup='-196', NextQuestId=208 WHERE entry=188;#Tiger Mastery#
UPDATE quest_template SET OfferRewardText='You are no longer just a raptor hunter.  You are an honest-to-goodness raptor SLAYER.\n
Though one fabled raptor still eludes you... ', RequestItemsText='Bah! What are you doing standing around, $N! A true big game hunter never gives up once his prey is in his sights. Those Jungle Stalkers aren\'t going to come running up to this campfire and throw themselves in it. Silly bloke.', PrevQuestId=195, NextQuestInChain=197 WHERE entry=196; #Raptor Prowess#
UPDATE quest_template SET OfferRewardText='Master $N, the raptor slayer!\n
Has a nice ring to it, eh? ', RequestItemsText='Ah, so you\'re hunting Tethis?  Tracked her all the way back to camp, did you? ', PrevQuestId=196, ExclusiveGroup='-196', NextQuestId=208 WHERE entry=197; #Raptor Mastery#
UPDATE quest_template SET OfferRewardText='<Brother Nimetz opens up a pouch and lets you place the crystal inside.>\n
I knew they\'d have some more of this substance.  I\'m going to send this to my contacts at Fort Livingston, to the south.  Hopefully they\'ll have some more luck with it.\n
Thank you for everything, $N. ', RequestItemsText='Make sure you handle that stuff carefully, $N.  We don\'t know what it is.',PrevQuestId=26733 WHERE entry=26734; #The Source of the Madnes#
UPDATE quest_template SET OfferRewardText='To be honest, I\'m sending this information home to Stormwind, for my wife and son.  They love to hear about what I\'ve been doing out here in the jungle, and I only get to visit so often.  Every little bit helps.\n
Thank you, $N. ', RequestItemsText='Did you make it down to Bal\'lal Ruins yet?  Did you find the tablet? ',PrevQuestId=26739 WHERE entry=26744; #Deep Roots#
UPDATE quest_template SET OfferRewardText='Marvelously executed, <name>.  My men and I can handle the rest.\n
With Kurzen out of the picture, we may be able to continue our original expedition here in Stranglethorn, which was... ahh...\n
No matter.  Please, feel free to peruse our armor stores.  You may find something that fits you well. ', RequestItemsText='Remove the heads, $N. I know you can do it. My men will clean up the remainder of their forces after you are done.',PrevQuestId=26736 WHERE entry=26737; #Stopping Kurzen Legacy#
UPDATE quest_template SET OfferRewardText='Marvelously executed, $N.  My men and I can handle the rest.\n
With Kurzen out of the picture, we may be able to continue our original expedition here in Stranglethorn, which was... ahh...\n
No matter.  Please, feel free to peruse our armor stores.  You may find something that fits you well. ', RequestItemsText='',PrevQuestId=26736 WHERE entry=26737; #Stopping Kurzen Legacy#
UPDATE quest_template SET OfferRewardText='What do we have here?  A young raptor, and her pet $R.  Hah!\n
More importantly, what is that skull you have there?  This was no ordinary troll.  He was big...', RequestItemsText='',PrevQuestId=0, NextQuestInChain=26746 WHERE entry=26745; #Favored Skull#
UPDATE quest_template SET OfferRewardText='These will provide a bit of... what\'s the troll word?  Voodoo?  Juju?  Tiklabang?\n
It doesn\'t matter.  If we\'re going to re-build a troll, we need troll magic, and these fetishes are full of it. ', RequestItemsText='How many did you find?',PrevQuestId=26745, NextQuestInChain=26747 WHERE entry=26746;#A Nose for this Sort of Thing#
UPDATE quest_template SET OfferRewardText='These will do for my purposes.  Though we can\'t activate the altar with bracers alone... ', RequestItemsText='Yes, $N?',PrevQuestId=0, NextQuestInChain=26730 WHERE entry=26729;#Water Elementals#
UPDATE quest_template SET OfferRewardText='<Berrin studies the inscriptions on the totem.>\n
I think I can read this text... Fascinating!\n
Tsul\'kalu, Mahamba, Pogeyan... what are these names? ', RequestItemsText='Beware: they may put up a fight.',PrevQuestId=0,NextQuestInChain=26743 WHERE entry=26742;#Bloodscalp Insight#
UPDATE quest_template SET OfferRewardText='We have what we need.  Are you ready to activate the Altar of Naias, $N? ', RequestItemsText='The salt?',PrevQuestId=26729, NextQuestInChain=26731 WHERE entry=26730;#You Can Take the Murloc out of the Ocean#
UPDATE quest_template SET OfferRewardText='My colleagues within the Kirin Tor will be happy to learn that the heart is ours.\n
Thank you for your assistance, $N.  I couldn\'t have done it without you. ', RequestItemsText='I eagerly await the results. ',PrevQuestId=26730 WHERE entry=26731;#The Altar of Naias#
UPDATE quest_template SET OfferRewardText='First you save me from the madman\'s jail cell, and now you bring me some keys to understanding trollish shamanism.\n
This is turning out to be a pretty good week!\n
Thank you again, $N.  I will see to it that you have the support of the Wildhammer clan as you continue on your journeys. ', RequestItemsText='It\'s likely that these totemic creatures are based on some of the fantastic creatures that roam this jungle. ',PrevQuestId=26742 WHERE entry=26743;#Sacred to the Bloodscalp#
UPDATE quest_template SET OfferRewardText='You have done well, $N.  We have a head, a body, and some juju-voodoo-mojo nonsense.  Now, just a little shock of electricity to get things started, and...', RequestItemsText='Gan\'zulah was a brute and a tyrant.  I\'ve got a feeling that this troll will be different.  This troll magic is easier than I thought it would be! ',PrevQuestId=26746 WHERE entry=26747;#A Physcial Specimen#
UPDATE quest_template SET OfferRewardText='Balance is restored - for now.  We may call on you again in the future, $N.', RequestItemsText='We appreciate what you\'re doing for us there in Stranglethorn, $N.',PrevQuestId=0 WHERE entry=26751;#Population Con-Troll#
UPDATE quest_template SET OfferRewardText='Bloody well done!  Right-o!  Congratulations, $N, for succeeding where others have failed.\n
I am honored to count you as a comrade of our great hunting party here.  No one will ever doubt your expertise in hunting and tracking!\n
Cheers to you, I say!  Cheers! ', RequestItemsText='I see you\'re back, old bloke.  King Bangalash has caused me to come crawling back to camp many times.  Hang in there. ',PrevQuestId=0 WHERE entry=208;#Big Game Hunter#
UPDATE quest_template SET OfferRewardText='I\'m glad to see you\'ve come to your senses.\n
Come and visit us in Zul\'Gurub sometime, $R.  I\'ll be watching...', RequestItemsText='All I ask is the raptor, $R.  Give it to me, and the gnome lives. ',PrevQuestId=26747, SrcSpell=82340 WHERE entry=26748;#Bloodlord Mandokir#
UPDATE quest_template SET OfferRewardText='Mandokir is alive, yes.\n
You are responsible, yes.\n
You may be able to stop him still, yes. ', RequestItemsText='',PrevQuestId=26748,NextQuestInChain=26772 WHERE entry=26749;#Priestless Thaalia#
UPDATE quest_template SET OfferRewardText='You bring feathers, yes.\n
You can follow directions, yes. ', RequestItemsText='Raptor named Ohgan\'aka, still your friend. ',PrevQuestId=26749, NextQuestInChain=26773 WHERE entry=26772;#Mind Vision#
UPDATE quest_template SET OfferRewardText='<Wulfred peers into the box.>\n
This... this is not like what I expected.  I had thought it would be a... a...\n
<His eyes glaze over.>\n
Ahem!  I\'m sorry.  I\'m not sure what came over me.  I\'ll be sending this south, to the Explorers\' League Digsite in the Cape.  Maybe they\'ll know what to do with it... ', RequestItemsText='Why is it that the OGRES always find the priceless artifacts? ',PrevQuestId=0 WHERE entry=26783;#The Mosh Ogg Bounty#
UPDATE quest_template SET OfferRewardText='You retrieved the eye!  Your might is the stuff of legends, $N!\n
And to think my brother and sister said we wouldn\'t find anything of worth here in the Vale.  Hah!  And I\'m just getting started! ', RequestItemsText='Do you have the Eye? ',PrevQuestId=0 WHERE entry=26781;#The Mind Eye#
UPDATE quest_template SET OfferRewardText='What did Priestess tell you?\n
The raptor is daughter of Ohgan, heir to Mandokir\'s seat.\n
Hah! ', RequestItemsText='Your vision not Ohgan\'aka\'s no. You are not ready.',PrevQuestId=26772, NextQuestInChain=26774 WHERE entry=26773;#See Raptor#
UPDATE quest_template SET OfferRewardText='', RequestItemsText='Extra-big spells need extra-big brains, yes.',PrevQuestId=26773, NextQuestInChain=26775 WHERE entry=26774;#Mind Control#
UPDATE quest_template SET OfferRewardText='As promised, your reward.  You do the troll nation proud. ', RequestItemsText='Zul\'Mamwe, though ruined, is still a defenseible stronghold. Take heed, $R.',PrevQuestId=26773 WHERE entry=26779;#Zulmamwe Mambo#
UPDATE quest_template SET OfferRewardText='I can see the difference already.  I can\'t wait until later tonight, when I get to perform my observations again! ', RequestItemsText='Put out those awful firex.',PrevQuestId=26773 WHERE entry=26780;#Nighttime in the Jungle#
UPDATE quest_template SET OfferRewardText='What a shame, yes.\n
This is what the spirits wanted, yes.\n
Maybe when you are stronger, you will go into Zul\' Gurub and take back your $N\'aka from Mandokir, yes.\n
For now, Priestess give you this.', RequestItemsText='Where is $N\'aka?',PrevQuestId=26774, NextQuestInChain=26776 WHERE entry=26775;#Be Raptor#
UPDATE quest_template SET OfferRewardText='<You explain to Ghaliri what has happened up to this point.>\n
It would seem that Jin\'do has survived, and he is rallying his brothers to once again summon Hakkar into this world.  It was good of you to come to speak with me.\n
There is not much we can do now but to wait, and watch.  Jin\'do is weak, and prime for striking, but I must wait for word from Rastakhan before issuing orders.  Until then, you and your raptor will have to wait. ', RequestItemsText='',PrevQuestId=26775 WHERE entry=26776;#Ghaliri#
