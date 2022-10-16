# Full Game Timer Guide
This is a guide for setting up the timer for full game runs.

This timer includes an autosplitter specifically designed for this game, which will automatically:
* Start the timer once Devil's Canyon 1 is loaded
* Split the timer upon starting a new level
* Stop the timer on the final cutscene in Devil's Canyon 3
* Pause the timer during any loads

Note that the timer is programmed to only split if you do levels in the correct order. For example, if you complete level 1, the timer will only split once level 2 is loaded. If you complete level 1 then accidentally select level 3, you can back out and go to level 2 and the splits will proceed as normal.


## Requirements
Must use Windows PC. 

The autoplitter was created using PC version 1.5.8.r36101.F. The autosplitter may not work with other versions of the game. You can find the version you have in the bottom left corner of the main menu screen in the game.


## Getting LiveSplit
LiveSplit is a timer app which has access to the 
Download LiveSplit here: https://livesplit.org/downloads/


## Configuring LiveSplit
When you launch LiveSplit.exe, you should see a black box with 0.00 appear.

(1) Right-click the box and select "Edit Splits..."
(2) In Game Name, start typing "Desperados III" and select the same from the dropdown.
(3) There should be text that says "Auto start, split... by smorrs". Click the Activate button to the right of this text
(4) Add a split for each level of the game. They can be called anything but there must be 16 of them. Here is an example:
