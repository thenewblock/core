DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210118151528');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210118151528');
-- Add your query below.
--The Test of Skulls for Scryer, Somnus, and Chronalis must be completed one at a time pre 1.3
REPLACE INTO `quest_template` VALUES (6582, 0, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6570, 6583, 0, 0, 0, 0, 0, 'The Test of Skulls, Scryer', 'We are Deathwing\'s children, whelp. Our dominance over the lesser Aspects must be enforced.$B$BIf you are truly worthy of ascension, the lesser dragonflight will wilt in your presence.$B$BFind their champions and lay waste to them in the name of our Father!$B$BTravel to Winterspring and track down the mighty blue drake, Scryer. Crush him and any of the Blue Flight that stand in your path. Tear out his skull and return it to me.', 'You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.$B$BYou know that Scryer can be found in Winterspring.', 'One of ssseveral complete...', '<Emberstrife hisses.>', '', '', '', '', '', 16869, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_template` VALUES (6583, 0, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6582, 6584, 0, 0, 0, 0, 0, 'The Test of Skulls, Somnus', 'Just as our Father crushes the Aspects themselves, so too must we strive to bring chaos and destruction to their children.$B$BYou must test your battle prowess against the sleepless dreamers: The children of the Green Flight.$B$BTravel to the Swamp of Sorrows and track down Somnus, drake champion of the Green Flight. Let flow your hatred; dominate the insect... Return to me with his skull...', 'Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.', 'Another complete...', 'Do not return here until you have bathed in the blood of our enemies and drank in their suffering.', '', '', '', '', '', 16870, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_template` VALUES (6584, 0, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6583, 6585, 0, 0, 0, 0, 0, 'The Test of Skulls, Chronalis', 'The time watchers, children of Nozdormu - Lord of the Centuriesss...$B$BIt is three that guard the Caverns of Time, but only one that holds the interests of the Black Flight: The Time Shifter, Chronalis, favored drakeling of Nozdormu.$B$BSsstrike at this champion, a blow to make even the stoic sands of time weep. Return to me with his skull.', 'Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.', 'The most hated remainsss...', 'Ironically, whelp, time is of the essencccce.', '', '', '', '', '', 16871, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quest_template` VALUES (6582, 1, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6570, 6585, -6582, 0, 0, 0, 0, 'The Test of Skulls, Scryer', 'We are Deathwing\'s children, whelp. Our dominance over the lesser Aspects must be enforced.$B$BIf you are truly worthy of ascension, the lesser dragonflight will wilt in your presence.$B$BFind their champions and lay waste to them in the name of our Father!$B$BTravel to Winterspring and track down the mighty blue drake, Scryer. Crush him and any of the Blue Flight that stand in your path. Tear out his skull and return it to me.', 'You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.$B$BYou know that Scryer can be found in Winterspring.', 'One of ssseveral complete...', '<Emberstrife hisses.>', '', '', '', '', '', 16869, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quest_template` VALUES (6583, 1, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6570, 6585, -6582, 0, 0, 0, 0, 'The Test of Skulls, Somnus', 'Just as our Father crushes the Aspects themselves, so too must we strive to bring chaos and destruction to their children.$B$BYou must test your battle prowess against the sleepless dreamers: The children of the Green Flight.$B$BTravel to the Swamp of Sorrows and track down Somnus, drake champion of the Green Flight. Let flow your hatred; dominate the insect... Return to me with his skull...', 'Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.', 'Another complete...', 'Do not return here until you have bathed in the blood of our enemies and drank in their suffering.', '', '', '', '', '', 16870, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quest_template` VALUES (6584, 1, 2, 15, 55, 0, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 6570, 6585, -6582, 0, 0, 0, 0, 'The Test of Skulls, Chronalis', 'The time watchers, children of Nozdormu - Lord of the Centuriesss...$B$BIt is three that guard the Caverns of Time, but only one that holds the interests of the Black Flight: The Time Shifter, Chronalis, favored drakeling of Nozdormu.$B$BSsstrike at this champion, a blow to make even the stoic sands of time weep. Return to me with his skull.', 'Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.', 'The most hated remainsss...', 'Ironically, whelp, time is of the essencccce.', '', '', '', '', '', 16871, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6600, 0, 39600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
