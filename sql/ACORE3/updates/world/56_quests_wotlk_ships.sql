ALTER TABLE `world_db_version` CHANGE  `required_54_world_quest_13907` `required_56_quests_wotlk_ships`  BIT(1);

--
-- DB/Quest: Organizing the quest on Icecrown's battle ships (Horde + Alliance)
--

-- First Quest - unlocked chain --
-- The Crusaders' Pinnacle with ID: 13157 --

-- Horde Quests --
UPDATE `quest_template` SET `PrevQuestId` = '13157' WHERE `quest_template`.`entry` =13419; -- Preperations for War
UPDATE `quest_template` SET `PrevQuestId` = '13157' WHERE `quest_template`.`entry` =13224; -- Orgrim's Hammer
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13258; -- Opportunity
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13228; -- The Broken Front
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13230; -- Avenge Me!
UPDATE `quest_template` SET `PrevQuestId` = '13230' WHERE `quest_template`.`entry` =13234; -- Make Them Pay!
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13308; -- Mind Tricks
UPDATE `quest_template` SET `PrevQuestId` = '13308' WHERE `quest_template`.`entry` =13302; -- Slaves to Saronite
UPDATE `quest_template` SET `PrevQuestId` = '13308' WHERE `quest_template`.`entry` =13293; -- Get to Ymirheim
UPDATE `quest_template` SET `PrevQuestId` = '13293' WHERE `quest_template`.`entry` =13283; -- King of the Mountain
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13330; -- Bloody of the Chosen
UPDATE `quest_template` SET `PrevQuestId` = '13224' WHERE `quest_template`.`entry` =13340; -- Joining the Assault
UPDATE `quest_template` SET `PrevQuestId` = '13340' WHERE `quest_template`.`entry` =13310; -- Assault by Air
UPDATE `quest_template` SET `PrevQuestId` = '13340' WHERE `quest_template`.`entry` =13301; -- Assault by Ground
UPDATE `quest_template` SET `PrevQuestId` = '13228' WHERE `quest_template`.`entry` =13238; -- Good for Something?
UPDATE `quest_template` SET `PrevQuestId` = '13228' WHERE `quest_template`.`entry` =13239; -- Volatility
UPDATE `quest_template` SET `PrevQuestId` = '13239' WHERE `quest_template`.`entry` =13261; -- Volatility (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '1' WHERE `quest_template`.`entry` =13379; -- Green Technology
UPDATE `quest_template` SET `PrevQuestId` = '1' WHERE `quest_template`.`entry` =13373; -- Fringe Science Benefits
UPDATE `quest_template` SET `PrevQuestId` = '13373' WHERE `quest_template`.`entry` =13406; -- Riding the Wavelength: The Bombardment
UPDATE `quest_template` SET `PrevQuestId` = '13228' WHERE `quest_template`.`entry` =13260; -- Takes One to Know One
UPDATE `quest_template` SET `PrevQuestId` = '13260' WHERE `quest_template`.`entry` =13237; -- Poke and Prod
UPDATE `quest_template` SET `PrevQuestId` = '13237' WHERE `quest_template`.`entry` =13264; -- That's Abominable!
UPDATE `quest_template` SET `PrevQuestId` = '13264' WHERE `quest_template`.`entry` =13276; -- That's Abominable! (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13277' WHERE `quest_template`.`entry` =13351; -- Snake Preview
UPDATE `quest_template` SET `PrevQuestId` = '13351' WHERE `quest_template`.`entry` =13354; -- Chain of Command
UPDATE `quest_template` SET `PrevQuestId` = '13351' WHERE `quest_template`.`entry` =13355; -- Cannot Reproduce
UPDATE `quest_template` SET `PrevQuestId` = '13355' WHERE `quest_template`.`entry` =13356; -- Retest Now
UPDATE `quest_template` SET `PrevQuestId` = '13356' WHERE `quest_template`.`entry` =13357; -- Retest Now (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13356' WHERE `quest_template`.`entry` =13352; -- Drag and Drop
UPDATE `quest_template` SET `PrevQuestId` = '13352' WHERE `quest_template`.`entry` =13353; -- Drag and Drop (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13356' WHERE `quest_template`.`entry` =13358; -- Not a Bug 
UPDATE `quest_template` SET `PrevQuestId` = '13358' WHERE `quest_template`.`entry` =13365; -- Not a Bug (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13237' WHERE `quest_template`.`entry` =13277; -- Against the Giants
UPDATE `quest_template` SET `PrevQuestId` = '13277' WHERE `quest_template`.`entry` =13278; -- Coprous the Defiled
UPDATE `quest_template` SET `PrevQuestId` = '13277' WHERE `quest_template`.`entry` =13279; -- Basic Chemistry
UPDATE `quest_template` SET `PrevQuestId` = '13279' WHERE `quest_template`.`entry` =13281; -- Neutralizing the Plague
UPDATE `quest_template` SET `PrevQuestId` = '13358' WHERE `quest_template`.`entry` =13366; -- Need More Info
UPDATE `quest_template` SET `PrevQuestId` = '13258', `NextQuestId` = '133121', `ExclusiveGroup` = '-13312' WHERE `quest_template`.`entry` =13367; -- No Rest For The Wicked
UPDATE `quest_template` SET `PrevQuestId` = '13367' WHERE `quest_template`.`entry` =13368; -- No Rest For The Wicked (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13366', `NextQuestId` = '13312', `ExclusiveGroup` = '-13312' WHERE `quest_template`.`entry` =13306; -- Raise the Barricades
UPDATE `quest_template` SET `PrevQuestId` = '0', `NextQuestId` = '133129', `ExclusiveGroup` = '-13329'  WHERE `quest_template`.`entry` =13312; -- The Ironwall Rampart
UPDATE `quest_template` SET `PrevQuestId` = '13366' WHERE `quest_template`.`entry` =13313; -- Blinding the Eyes in the Sky
UPDATE `quest_template` SET `PrevQuestId` = '13313' WHERE `quest_template`.`entry` =13331; -- Keeping the Alliance Blind
UPDATE `quest_template` SET `PrevQuestId` = '13306', `NextQuestId` = '133129', `ExclusiveGroup` = '-13329' WHERE `quest_template`.`entry` =13307; -- Bloodspattered Banners
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `quest_template`.`entry` =13329; -- Before the Gate of Horror
UPDATE `quest_template` SET `PrevQuestId` = '13329' WHERE `quest_template`.`entry` =13328; -- Shatter the Shards
UPDATE `quest_template` SET `PrevQuestId` = '13329' WHERE `quest_template`.`entry` =13316; -- The Guardians of Corp'rethar

-- Alliance Quests --
UPDATE `quest_template` SET `PrevQuestId` = '13157' WHERE `quest_template`.`entry` =13418; -- Preperations for War
UPDATE `quest_template` SET `PrevQuestId` = '13157' WHERE `quest_template`.`entry` =13225; -- The Skybreaker
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13386; -- Exploiting an Opening
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13231; -- The Broken Front
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13232; -- Finish me!
UPDATE `quest_template` SET `PrevQuestId` = '13232' WHERE `quest_template`.`entry` =13233; -- No Mercy!
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13308; -- Mind Tricks
UPDATE `quest_template` SET `PrevQuestId` = '13308' WHERE `quest_template`.`entry` =13300; -- Slaves to Saronite
UPDATE `quest_template` SET `PrevQuestId` = '13308' WHERE `quest_template`.`entry` =13296; -- Get to Ymirheim
UPDATE `quest_template` SET `PrevQuestId` = '13296' WHERE `quest_template`.`entry` =13280; -- King of the Mountain
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13336; -- Bloody of the Chosen
UPDATE `quest_template` SET `PrevQuestId` = '13225' WHERE `quest_template`.`entry` =13341; -- Joining the Assault
UPDATE `quest_template` SET `PrevQuestId` = '13341' WHERE `quest_template`.`entry` =13309; -- Assault by Air
UPDATE `quest_template` SET `PrevQuestId` = '13341' WHERE `quest_template`.`entry` =13284; -- Assault by Ground
UPDATE `quest_template` SET `PrevQuestId` = '13231' WHERE `quest_template`.`entry` =13238; -- Your Attention, Please
UPDATE `quest_template` SET `PrevQuestId` = '13228' WHERE `quest_template`.`entry` =13239; -- Borrowed Technology
UPDATE `quest_template` SET `PrevQuestId` = '13239' WHERE `quest_template`.`entry` =13261; -- The Solution Solution
UPDATE `quest_template` SET `PrevQuestId` = '1' WHERE `quest_template`.`entry` =13383; -- Killohertz
UPDATE `quest_template` SET `PrevQuestId` = '1' WHERE `quest_template`.`entry` =13380; -- Leading the Charge
UPDATE `quest_template` SET `PrevQuestId` = '13373' WHERE `quest_template`.`entry` =13406; -- Static Shock Troops: the Bombardment
UPDATE `quest_template` SET `PrevQuestId` = '13231' WHERE `quest_template`.`entry` =13286; -- ...All the Help We Can Get.
UPDATE `quest_template` SET `PrevQuestId` = '13286' WHERE `quest_template`.`entry` =13287; -- Poke and Prod
UPDATE `quest_template` SET `PrevQuestId` = '13287' WHERE `quest_template`.`entry` =13288; -- That's Abominable!
UPDATE `quest_template` SET `PrevQuestId` = '13264' WHERE `quest_template`.`entry` =13289; -- That's Abominable! (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13294' WHERE `quest_template`.`entry` =13315; -- Snake Preview
UPDATE `quest_template` SET `PrevQuestId` = '13315' WHERE `quest_template`.`entry` =13319; -- Chain of Command
UPDATE `quest_template` SET `PrevQuestId` = '13315' WHERE `quest_template`.`entry` =13320; -- Cannot Reproduce
UPDATE `quest_template` SET `PrevQuestId` = '13320' WHERE `quest_template`.`entry` =13321; -- Retest Now
UPDATE `quest_template` SET `PrevQuestId` = '13321' WHERE `quest_template`.`entry` =13322; -- Retest Now (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13321' WHERE `quest_template`.`entry` =13318; -- Drag and Drop
UPDATE `quest_template` SET `PrevQuestId` = '13318' WHERE `quest_template`.`entry` =13323; -- Drag and Drop (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13318' WHERE `quest_template`.`entry` =13342; -- Not a Bug 
UPDATE `quest_template` SET `PrevQuestId` = '13358' WHERE `quest_template`.`entry` =13344; -- Not a Bug (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13287' WHERE `quest_template`.`entry` =13294; -- Against the Giants
UPDATE `quest_template` SET `PrevQuestId` = '13294' WHERE `quest_template`.`entry` =13298; -- Coprous the Defiled
UPDATE `quest_template` SET `PrevQuestId` = '13294' WHERE `quest_template`.`entry` =13295; -- Basic Chemistry
UPDATE `quest_template` SET `PrevQuestId` = '13295' WHERE `quest_template`.`entry` =13297; -- Neutralizing the Plague
UPDATE `quest_template` SET `PrevQuestId` = '13342' WHERE `quest_template`.`entry` =13345; -- Need More Info
UPDATE `quest_template` SET `PrevQuestId` = '13345', `NextQuestId` = '13337', `ExclusiveGroup` = '-13337' WHERE `quest_template`.`entry` =13346; -- No Rest For The Wicked
UPDATE `quest_template` SET `PrevQuestId` = '13346' WHERE `quest_template`.`entry` =13350; -- No Rest For The Wicked (Daily)
UPDATE `quest_template` SET `PrevQuestId` = '13345', `NextQuestId` = '13337', `ExclusiveGroup` = '-13337' WHERE `quest_template`.`entry` =13332; -- Raise the Barricades
UPDATE `quest_template` SET `PrevQuestId` = '0', `NextQuestId` = '13335', `ExclusiveGroup` = '-13335' WHERE `quest_template`.`entry` =13337; -- The Ironwall Rampart
UPDATE `quest_template` SET `PrevQuestId` = '13332' WHERE `quest_template`.`entry` =13314; -- Get the Message
UPDATE `quest_template` SET `PrevQuestId` = '13314' WHERE `quest_template`.`entry` =13333; -- Capture More Dispatches
UPDATE `quest_template` SET `PrevQuestId` = '13332', `NextQuestId` = '13335', `ExclusiveGroup` = '-13335' WHERE `quest_template`.`entry` =13334; -- Bloodspattered Banners
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `quest_template`.`entry` =13335; -- Before the Gate of Horror
UPDATE `quest_template` SET `PrevQuestId` = '13335' WHERE `quest_template`.`entry` =13339; -- Shatter the Shards
UPDATE `quest_template` SET `PrevQuestId` = '13335' WHERE `quest_template`.`entry` =13338; -- The Guardians of Corp'rethar

--
-- DB/NPC: Add spawn for Brother Keltan on Horde ship in Icecrown --
--

-- DELETE --
DELETE FROM `creature` WHERE `id` = 31261;
DELETE FROM `creature_transport` WHERE `npc_entry` = 31261;

-- Add spawn for Brother Keltan on Horde ship in Icecrown --
INSERT INTO `creature_transport` (`guid`, `transport_entry`, `npc_entry`, `TransOffsetX`, `TransOffsetY`, `TransOffsetZ`, `TransOffsetO`, `emote`) VALUES
(null, 192241, 31261, -7.40282, 13.4028, 34.5268, -0.57529, 0);
