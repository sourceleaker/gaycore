ALTER TABLE `world_db_version` CHANGE  `required_161_error_fixes` `required_162_Fix_for_768_769`  BIT(1);

-- Fix for quest Gathering Leather
UPDATE quest_template SET SkillOrClassMask='393', RequiredSkillValue='1', OfferRewardText='Ah, these are very nice pieces.  They\'ll make fine leather goods.\nHere, $N.  Take this in trade...',  RequestItemsText='Hello again.  Have you been hunting?  Do you have skins for me?' WHERE entry = 768; 
-- Fix for quest Kodo Hide Bag
UPDATE quest_template SET SkillOrClassMask='165', RequiredSkillValue='10',OfferRewardText='Ah, good.  Thank you, $N.  My heart swells with pride to see youths interested in the craft of leatherworking.', RequestItemsText='Do you have my supplies, $N?' WHERE entry = 769;