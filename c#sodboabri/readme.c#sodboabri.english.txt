------------------------------------------------
--- The Boareskyr Bridge Scene ---
------------------------------------------------

a mod for BG:SoD and EET
by jastey

LIST OF CONTENTS
--CONTENTS
--DESCRIPTION OF COMPONENTS
--COMPATIBILITY NOTE
--NOTE TO GERMAN PLAYERS
--INSTALLATION
--CREDITS
--USED TOOLS AND RESSOURCES
--HISTORY
--COPYRIGHT NOTE


CONTENTS

This mod is for the SoD part (also for EET). 
It gives more impact to the important scene at Boareskyr Bridge in SoD. Like Gorion's letter and the PC's dreams in BG1, the transformation into the slayer in SoA, and the trials in ToB, this scene is an important part of the PC's journey to godhood (or rejection of it). This mod tries to place emphasis on this important scene by giving it more depth as well as deeper inclusion into the story by reactions of NPCs and other game characters. 
There will be more warnings before going to the bridge and NPCs will react to what happens on it, and depending on the installed components the actual scene will also be extended with description text and choices for the player how the PC will deal with the erupting divine energy including resulting stat changes.
As usual, my mod uses as many original content as possible.


DESCRIPTION OF COMPONENTS 

The mod consists of 4 components which are optional but build up in each other:

1 Scene at Boareskyr Bridge will be Acknowledged: Add NPC Reactions
---------------------------------------------
This component adds reactions from game characters before entering the Boareskyr Bridge and after the scene on the bridge: comments from Bence Duncan and Corwin make it clear that the PC should not be seen on this route, Jaheira or Khalid explicitly warn the PC not to linger on the bridge to avoid political tension. Immediately after the scene, all the original NPCs and the Flaming Fist soldiers comment before the Hooded Man can talk to the PC about what happened. At the main coalition camp the officers comment on what happened to once again illustrate the impact this scene will have throughout the game.
The actual cutscene on the bridge remains unchanged.


2 Add Description Text to Original Scene at Bridge
---------------------------------------------
This component adds additional description texts to the scene on the bridge, based on the style of the key scenes in BGII (descending to the Tree of Life, transformation into the Slayer).
The actual cutscene on the bridge has been slightly changed to accommodate the flow between cutscenes and description texts but stays true to the happenings ind the original scene.


3 Bridge Scene has Different Choices
---------------------------------------------
This component adds reaction possibilities to how the PC deals with the energy released on the bridge. There are three possibilities:

1. the PC absorbs all the torment to protect the bystanders. In this case, the cutscene proceeds like in the original (with slight changes to accommodate to the interruptions by description texts): the PC briefly loses consciousness, the bystanders are unharmed.
2. The PC diverts the energy away from everyone on the bridge. In this case, those close by will be struck from their feet and receive some damage.
3. the PC channels the energy to the bystanders. In this case, all party members receive damage and most of the Flaming Fist soldiers who are on the bridge will die.

The cutscenes for options 2 and 3 have been altered accordingly.



Note to modders:

After option 1, the variable Global("C#stbb_BoareskyrbridgeScene","GLOBAL",9) is set to 9. However, this is also the value of the variable if component 3 is not installed and the cutscene ran normally (i.e. there was no reaction choice at all).

After option 2, Global("C#stbb_BoareskyrbridgeScene","GLOBAL",10) is displayed.

After option 3 it says Global("C#stbb_BoareskyrbridgeScene","GLOBAL",11).


4 Add Stat Changes to Choices at Bridge
---------------------------------------------
This component adds stat changes to the three choices of component 3:
1. when the PC absorbs the pain, his Wisdom increases by 1 permanently.
2. when the PC directs the energy away, his Dexterity increases by 1 permanently.
3. if the PC directs the energy to the bystanders his constitution increases by 1 permanently.

Note to modders:
After option 1 the variable Global("C#stbb_StatChange", "GLOBAL",1) is set to 1.
After option 2 the variable Global("C#stbb_StatChange", "GLOBAL",2) is set to 2.
After option 3 the variable Global("C#stbb_StatChange", "GLOBAL",3) is set to 3.



COMPATIBILITY NOTE

Install The Boareskyr Bridge Scene as an early quest mod. This mod should be installed before NPC mods so they can install their crossmod content.

The mod has native EET compatibility and needs to be installed before EET_End.


NOTE TO GERMAN PLAYERS

The German version is consistent to the fan-made "Shai Huluds Text-Patch". This means, that names and terms could differ from the official German version shipped with the game. Install the fan made SoD translation for a consistent game experience.
Download Link: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/


INSTALLATION

NOTE: If you've previously installed the mod, remove it before extracting a new version. To do this, uninstall all previously installed components and delete the mod folder and executables. 

When installing or uninstalling, do not close the DOS window by clicking on the X button! Instead, press the Enter key when instructed to do so.

BG:EE
If you use SoD from GOG or Steam, you need to prepare your game with DLC Merger or modmerge before installing any mods:
argent77's DLC Merger:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

General (Windows, Mac OS X, and Linux)

Extract the contents of the mod archive to your game's main directory. 
NOTE: For Enhanced Edition it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

Windows
On successful extraction, there should be an sodrtd folder and a setup-sodrtd.exe file in your game folder. To install, simply double-click setup-c#sodboabri.exe and follow the instructions on screen.
Run setup-c#sodboabri.exe in your game folder to reinstall, uninstall or otherwise change components.

Mac OS X
The Tweak Pack is packaged and installed with WeiDU. To install, extract the mod archive, then copy of the contents of the folder into your game folder (the folder which contains the CHITIN.KEY file). If properly extracted, you should have a "c#sodboabri" folder, setup-c#sodboabri, and setup-c#sodboabri.command in your game folder. To install, simply double-click setup-c#sodboabri.command and follow the instructions on screen.

Linux
Extract the contents of the mod to the folder of the game you wish to modify. Download the latest version of WeiDU for Linux from https://github.com/WeiDUorg/weidu/releases and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal and cd to your BG2 installation directory, run 'tolower' and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. If you're unsure, running tolower and choosing both options is the safe bet.
Run WeInstall c#sodboabri in your game folder to install the mod. Then run wine BGMain.exe and start playing. 

NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 

If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads.


CREDITS

Acifer - ideas
maus - ideas, scripting help

Translations
French: JohnBob, proofreading by Mera (vAlpha_220505)
Italian: improb@bile (v2)
Polish: GoForTheEyes (v5)
Russian: scheele (v4)
Spanish: ElGamerViejuno (v6)


Thanks to BioWare, Black Isle and Wizards of the Coast for Baldur's Gate 1, 2 and the Infinity Engine, and BeamDog for the revival of the games including the SoD campaign.
Thanks to Kerzenburgforum and GibberlingsThree for giving a place for exchange of ideas and technical advice.
Thanks to all modders who developed and are maintaining the IE modding tools, without which this mod would not have been possible.
Thanks to all who play this mod or any of my mods, and also those of you who give feedback to help improving my mods. Modding would not be as much fun without you.
I totally mean this although I use this text modules in other readmes, too! :-)


USED TOOLS AND RESSOURCES

The SoD Road to Discovery Mod was created using the resources provided by the IESDP (https://gibberlings3.github.io/iesdp/index.htm) and with the following software:

Near Infinity		https://github.com/Argent77/NearInfinity/releases/latest
WeiDU			http://www.weidu.org
grepWin			http://tools.stefankueng.com/grepWin.html
winMerge		https://winmerge.org/
Notepad++		https://notepad-plus-plus.org/downloads/

Further links, modding communities, tutorials, technical assistance, walkthroughs used while creating this mod:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/

SoD Walkthrough at GameBanshee http://www.gamebanshee.com/baldursgate/walkthrough/sod-korlaszstomb.php

Filename Prefix Reservation List
https://www.gibberlings3.net/forums/topic/1649-community-filename-prefix-reservations/

DeepL
https://www.deepl.com/translator


HISTORY

Version 7
-Simplified Chinese translation added, by yoshimo0417, setup.tra format corrections by MephistoSatanDevil
-typo ocrrections.

Version 6
-Spanish version added, by ElGamerViejuno

Version 5
-Polish version added, by GoForTheEyes.
-Updated link in readme to "Shai Huluds Text-Patch" (German version).

Version 4
-Russian version added, by scheele.

Version 3
-Correct text lines should be used for EET
-Typo correction

Version 2
-Italian version by improb@bile

Version 1
-French version by JohnBob, proofread by Mera
-Inserted path to forum for AUTHOR tag in tp2

Version Alpha_220425
-fixed copy&paste error in tp2 - mod should install without RtD mod folder present.

Version Alpha_220421
-first public release


COPYRIGHT NOTE

This mod was created to be freely enjoyed by all Baldur's Gate II players, and its content is free of rights. However, it should not be sold, published, compiled or redistributed in any form without the consent of the authors.
Please note that any and all redistribution and/or hosting of this mod is prohibited without permission from the authors.
The modding community for the Infinity Engine has been going strong for more than 10 years now, and is the culmination of thousands of unpaid modding hours by fellow fans of the game. Modders produce their best work and players get the best, well-supported mods when we all work together.
There are two big ways to upset this harmony. One is to claim someone else's work as your own. The second is to host and redistribute a mod without permission from the author(s).
Be kind to your fellow players and modders. Don't do either.

================================================================================
The Boareskyr Bridge Scene mod for SoD is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
================================================================================