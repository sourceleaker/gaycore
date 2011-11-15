ALTER TABLE `world_db_version` CHANGE  `required_33_quest` `required_34_unded_quest_relation`  BIT(1);
/*                    
					Fresh out of the Grave (24959)
					        |
					The Shadow Grave (28608)
                            |
                    ---------------------
                    |                    |
                The Wakening (24960)	Those That Couldn't Be Saved(26799)
                    |                    |
                    ----------------------
                               |
                       Beyond the Graves (25089)
                                |
						   Recruitment (26800)
						         |
						Shadow Priest Sarvis (28653)
						         |
						Scourge on our Perimeter (26801)
						         |
				------------------------------------------------------------------
				|                                                                |
				Glyphic Scrol (3098) -> Magic Training (24965)              The Truth of the Grave (24961)
				Simple Scroll (3095) -> Charging into Battle (24969)              |
				Encrypted Scroll (3096) -> Stab! (24967)                     The Executor In the Field (28672)
				Hallowed Scroll (3097) -> Of Light and Shadows (24966)            |
				Tainted Scroll (3099) -> Dark Deeds (24968)                  The Damned (26802)
				Trail-Worn Scroll (24962) -> The Thrill of the Hunt(24964)        |
				                                     |                       Night Web's Hollow (24973)
											 Novice Elreth (28651)                |
											                                 No Better Than the Zombies (24970)
                                                                                   |
                                                                             Assault on the Rotbrain Encampment (24971)
                                                                                    |
                                                                              Vital Intelligence (24972)																					
					
*/

UPDATE `quest_template` SET `PrevQuestId`=0,`NextQuestId` = 28608 WHERE `entry` IN (24959);
UPDATE `quest_template` SET `PrevQuestId` = 28608, `NextQuestId` = 25089, `ExclusiveGroup` = -26799 WHERE `entry` IN (26799, 24960);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 26800 WHERE `entry` IN (25089);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 28653 WHERE `entry` IN (26800);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 26801 WHERE `entry` IN (28653);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 28672 WHERE `entry` IN (24961);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 26802 WHERE `entry` IN (28672);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 24970 WHERE `entry` IN (24973);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 24971 WHERE `entry` IN (24970);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId` = 24972 WHERE `entry` IN (24971);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24965 WHERE `entry` IN (3098);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24969 WHERE `entry` IN (3095);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24967 WHERE `entry` IN (3096);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24966 WHERE `entry` IN (3097);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24968 WHERE `entry` IN (3099);
UPDATE `quest_template` SET `PrevQuestId`=26801, `NextQuestId` = 24964 WHERE `entry` IN (24962);
UPDATE `quest_template` SET `PrevQuestId`=3097, `NextQuestId` = 28651 WHERE `entry` IN (24966);
UPDATE `quest_template` SET `PrevQuestId`=24962, `NextQuestId` = 28651 WHERE `entry` IN (24964);
UPDATE `quest_template` SET `PrevQuestId`=3098, `NextQuestId` = 28651 WHERE `entry` IN (24965);
UPDATE `quest_template` SET `PrevQuestId`=3095, `NextQuestId` = 28651 WHERE `entry` IN (24969);
UPDATE `quest_template` SET `PrevQuestId`=3096, `NextQuestId` = 28651 WHERE `entry` IN (24967);
UPDATE `quest_template` SET `PrevQuestId`=3099, `NextQuestId` = 28651 WHERE `entry` IN (24968);
UPDATE `quest_template` SET `RequiredRaces`=16 WHERE `entry` IN (24959, 28608, 26799, 24960, 25089,26800,3098,3095,3096,3097,3099,24962,24965,24969,24967,24966,24968,24964,28651,24961,26801,24973,24970,28653,28672,26802,24971);


UPDATE `quest_template` SET `CompletedText`='I will be here to train you as you grow in experience... find me as often as you like. I charge a minimal fee, but you\'ll find everything I can teach you to be worthwhile.\r\n\r\nGo now and test your skill. Many more things will become known to you as you gain experience, some of which I am unable to discuss with you here. Just know that Sylvanas will need warriors with your type of strength in the future. You will be the backbone of our salvation. Do not forget it.' WHERE `entry`=3095;
UPDATE `quest_template` SET `CompletedText`='I spend most of my time here in the inn keeping an eye out for new faces and just keeping tabs on up-and-coming prospects. Keep your nose clean and I\'ll do what I can to teach you a few things. Just come back to me whenever you want, and we\'ll see if you\'re ready for a new skill or two.' WHERE `entry`=3096;
UPDATE `quest_template` SET `CompletedText`='There is only one thing you must know: we have survived through will alone. It is faith in ourselves that separates us from others, and with our powers, we will cause great change in all of Azeroth. The weak will come to lean on you. The lepers will call you Lord. And the ignorant will look to you for guidance. It is my duty to make sure you have the necessary tools so when the time comes, you are prepared. As you grow in experience, seek me out. I will teach you greater powers if you are ready.' WHERE `entry`=3097;
UPDATE `quest_template` SET `CompletedText`='You must return to me often if you are to become powerful enough to destroy those who would oppose us. The rules of magic still apply to you, <name>. You will still find corruption follows you like hungry wolves in the night. You will find its caress is not unlike an addiction, an old lover still wanting to be by your side. But these things can be staved off. These things will only control you if you allow them to.\r\n\r\nGo now, return to me when you\'ve grown more powerful.' WHERE `entry`=3098;
UPDATE `quest_template` SET `CompletedText`='I mentioned a slave still being a slave, no matter the master. Do you remember? We both know that it is that type of control--that type of power--that now drives us. We seek to have creatures serve us. We know we are more powerful and deserve more respect than others give us ... and so now we look to take it.\r\n\r\nI will be your ally in this struggle--the struggle for our own freedom. Freedom to seek our own allegiances. When you feel ready, return to me and I will teach you all I know.' WHERE `entry`=3099;
UPDATE `quest_template` SET `CompletedText`='I will be here to train you as you grow in experience... find me as often as you like. I charge a minimal fee, but you\'ll find everything I can teach you to be worthwhile.\r\n\r\nGo now and test your skill. Many more things will become known to you as you gain experience, some of which I am unable to discuss with you here. Just know that Sylvanas will need hunters with your type of cunning in the future.\r\n\r\nYou will be the backbone of our salvation. Do not forget it.' WHERE `entry`=24962;
UPDATE `quest_template` SET `OfferRewardText`='$N.  You made it.\r\n\r\nYou see those tents up there?  That\'s where we\'re headed.  The battle\'s probably already started.' WHERE `entry`=24970;
UPDATE `quest_template` SET `CompletedText`='Greetings, $N.\r\n\r\nI see you wield a weapon.  Can you fight?' WHERE `entry`=28653;

-- Tego questa na globie nie widzialem
DELETE FROM `creature_questrelation` WHERE `quest`=28652;
DELETE FROM `creature_involvedrelation` WHERE `quest`=28652;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=1508 AND `item`=3265;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=1512 AND `item`=3264;