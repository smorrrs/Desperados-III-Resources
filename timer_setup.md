# Full Game Timer Guide
This is a guide for setting up the timer for full game runs.

This timer includes an autosplitter specifically designed for Desperados III, which will automatically:
* Start the timer once Devil's Canyon 1 is loaded
* Split the timer upon loading a new level
* Stop the timer on the final cutscene in Devil's Canyon 3
* Pause the timer during any loads

The timer does not include automated reset.

The timer is programmed to only split if you do levels in the correct order. For example, after playing level 1, the timer will only split once level 2 is loaded. If you complete level 1 then accidentally select level 3, you can back out and go to level 2 and the splits will proceed as normal.


## Requirements
Windows PC only.

The autosplitter was created using version 1.5.8.r36101.F of Desperados III and may or may not work with other versions of the game. 


## Download LiveSplit
LiveSplit is a timer app which has access to the Desperados III autosplitter.

Download LiveSplit here: https://livesplit.org/downloads/


## Configuring LiveSplit
When you launch LiveSplit.exe for the first time, you should see a black box with 0.00 appear.

1. Right-click the box and select "Edit Splits..." to open the Splits Editor

![splits editor](https://user-images.githubusercontent.com/104397629/196058305-74aace7d-ebe4-4da8-9e94-10ab4eec9395.PNG)

2. For *Game Name*, start typing "Desperados III" and select the same from the dropdown.
3. For *Run Category*, enter the name of the category you're running (can be anything).
4. Click the *Activate* button to enable the autosplitter.
5. In the table, add a segment for each level of the game (use *Insert Below* to add more rows). You can call them anything but there must be 16 of them.

![splits](https://user-images.githubusercontent.com/104397629/196058538-ea6cdfc4-d6c2-400f-a2b5-cc795234743e.PNG)

6. Press *OK*

The timer should now be fully configured and automatically begin when you start the first level of the game.


## Adding Timer with Loads
In addition to the timer with load removal, you can add a second timer that includes loads:

1. Right-click LiveSplit and select "Edit Layout..."
2. Click the "+" button and select Timer > Timer
3. Click Layout Settings
4. Select the tab for the new Timer (will be the last one by default)
5. Set Timing Method to Real Time
6. The previous Timer should have Timing Method set to Game Time
7. You can set which timer your splits are based off of by going to the Splits tab and setting all Timing Methods to Game Time for loadless or Real Time for time with loads

![layout settings](https://user-images.githubusercontent.com/104397629/196529329-6884209c-d2e0-48b1-8053-e839b10325bf.PNG)


## Troubleshooting
If the timer isn't working, make sure you have the latest version of Desperados III. You can find the version you have in the bottom left corner of the main menu screen in the game. 

If you're still having trouble/ the autosplitter doesn't work with the latest version of the game, feel free to contact smorrs#4260 on discord.


## Feedback
If you'd like the splitting logic to work differerently and you know how to implement the desired changes, please offer your suggestion to smorrs#4260 on discord. 
