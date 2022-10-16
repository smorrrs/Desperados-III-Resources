# Full Game Timer Guide
This is a guide for setting up the timer for full game runs.

This timer includes an autosplitter specifically designed for Desperados III, which will automatically:
* Start the timer once Devil's Canyon 1 is loaded
* Split the timer upon starting a new level
* Stop the timer on the final cutscene in Devil's Canyon 3
* Pause the timer during any loads

The timer does not include automated reset.

The timer is programmed to only split if you do levels in the correct order. For example, if you complete level 1, the timer will only split once level 2 is loaded. If you complete level 1 then accidentally select level 3, you can back out and go to level 2 and the splits will proceed as normal.


## Requirements
Windows PC only.

The autosplitter was created using version 1.5.8.r36101.F of Desperados III and may not work with other versions of the game. You can find the version you have in the bottom left corner of the main menu screen in the game. 

If the timer isn't working try updating to a newer version. If you're still having trouble/ the autosplitter doesn't work with the latest version of the game, feel free to contact smorrs#4260 on discord for assisstance.


## Getting LiveSplit
LiveSplit is a timer app which has access to the Desperados III autosplitter.

Download LiveSplit here: https://livesplit.org/downloads/


## Configuring LiveSplit
When you launch LiveSplit.exe, you should see a black box with 0.00 appear.

1. Right-click the box and select "Edit Splits..." to open the Splits Editor

![splits editor](https://user-images.githubusercontent.com/104397629/196058305-74aace7d-ebe4-4da8-9e94-10ab4eec9395.PNG)

2. For *Game Name*, start typing "Desperados III" and select the same from the dropdown.
3. For *Run Category*, enter the name of the category you're running (can be anything).
4. Click the *Activate* button to enable the autosplitter.
5. In the table, add a segment for each level of the game (use *Insert Below* to add more rows). You can call them anything but there must be 16 of them.

![splits](https://user-images.githubusercontent.com/104397629/196058538-ea6cdfc4-d6c2-400f-a2b5-cc795234743e.PNG)

6. Press *OK*

The timer should now be fully configured and automatically run when you start the first level of the game.
