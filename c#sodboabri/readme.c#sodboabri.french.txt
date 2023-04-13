------------------------------------------------
--- The Boareskyr Bridge Scene ---
------------------------------------------------

un mod pour BG:SoD and EET
par jastey

Sommaire
--Contenu
--Description des composants
--Compatibilité
--NOTE TO GERMAN PLAYERS
--Installation
--CREDITS
--USED TOOLS AND RESSOURCES
--HISTORY
--COPYRIGHT NOTE


Contenu

Ce mod est pour l'extension Siege of Dragonspear (fonctionne aussi pour EET). 
Il donne plus d'impact à la scène cruciale du pont de Boarskyr dans SoD. Comme la lettre de Gorion et les rêves du PC dans BG1, la transformation en écorcheur dans SoA, et les épreuves dans ToB. Cette scène est une étape importante dans le voyage du PC vers sa destiné. Ce mod tente de lui donner plus de profondeur et une meilleur intégration dans l'histoire avec des réactions pour les PNJs et autres personnages du jeu. 
Il y aura des mises en garde avant d'aller sur le pont et les PNJ réagiront au déroulement des événements, selon les composants installés, la scène originale sera également étendue avec des textes descriptifs et la possibilité pour le joueur de choisir comment gérer la déflagration d'énergie divine ainsi que les changements de statistiques qui en résultent.
Comme d'habitude, mon mod utilise autant de contenu original que possible.


Description des composants

Le mod se divise en 4 composants optionnels mais qui se complètent les uns les autres :

1 La scène du pont de Boarskyr est mentionnée par les PNJ
----------------------------------------------------------
Ce composant ajoute des réactions aux personnages du jeu avant et après votre passage sur le pont de Boarskyr : les commentaires de Bence Duncan et Corwin indiquent clairement que le PC ne doit pas être vu à cet endroit, Jaheira ou Khalid avertissent explicitement le PC de ne pas s'attarder sur le pont pour éviter toute tension politique. Immédiatement après la cinématique, tous les PNJ originaux et les soldats du Poing Enflammé font des commentaires avant que l'Homme à Capuche ne s'avance pour parler au PC de ce qui s'est passé. Au camp de commandement de la coalition, les officiers évoquent ce qui s'est passé pour illustrer l'impact que cette histoire aura tout au long du jeu.
La cinématique du pont reste inchangée.


2 Ajouter un texte décrivant la cinématique originale du pont de Boarskyr
---------------------------------------------------------------------------
Ce composant ajoute des textes descriptifs supplémentaires à la cinématique du pont, basés sur le même style que BGII (l'Arbre de vie, transformation en écorcheur).
La scène original a été légèrement modifiée pour s'adapter au rythme entre cinématique et description, tout en restant fidèle aux événements du jeu d'origine.


3 Le déroulement des événements du pont de Boarskyr offre plusieurs choix
---------------------------------------------------------------------------
Ce composant permet au PC de choisir comment réagir à la vague d’énergie libérée sur le pont. Il y a trois possibilités :

1. le PC absorbe toute la douleur pour protéger les autres. Dans ce cas, la scène se déroule comme dans l'original (avec de légères modifications pour tenir compte des interruptions dues aux textes descriptifs) : le PC perd brièvement connaissance, les alliés sont indemnes.

2. Le PC détourne l'énergie vers la rivière. Dans ce cas, les personnes proches de lui seront légèrement touchées et recevront quelques dégâts.

3. le PC canalise l'énergie et la projette autour de lui. Dans ce cas, tous les membres du groupe reçoivent des dégâts et la plupart des soldats du Poing enflammé qui se trouvent sur le pont meurent.

Les séquences des options 2 et 3 ont été modifiées dans ce sens.

Note to modders:
After option 1, the variable Global("C#stbb_BoareskyrbridgeScene","GLOBAL",9) is set to 9. However, this is also the value of the variable if component 3 is not installed and the cutscene ran normally (i.e. there was no reaction choice at all).
After option 2, Global("C#stbb_BoareskyrbridgeScene","GLOBAL",10) is displayed.
After option 3 it says Global("C#stbb_BoareskyrbridgeScene","GLOBAL",11).


4 Ajouter des changements aux caractéristiques en fonction des choix du PC
----------------------------------------------------------------------------
Ce composant ajoute des changements aux caractéristiques en fonction du choix du PC, voir composant 3 :
1. lorsque le PC absorbe la douleur, sa Sagesse augmente de 1 de façon permanente.
2. lorsque le PC dirige l'énergie vers la rivière, sa Dextérité augmente de 1 de façon permanente.
3. si le PC dirige l'énergie vers ses alliés, sa constitution augmente de 1 de façon permanente.

Note to modders:
After option 1 the variable Global("C#stbb_StatChange", "GLOBAL",1) is set to 1.
After option 2 the variable Global("C#stbb_StatChange", "GLOBAL",2) is set to 2.
After option 3 the variable Global("C#stbb_StatChange", "GLOBAL",3) is set to 3.



Compatibilité

Installez The Boarskyr Bridge Scene assez tôt dans votre installation, comme un mod de quête, il doit être installé avant les mods PNJ afin de leurs permettre d'installer leur contenu se rapportant au mod.

Le mod est compatible avec EET et doit être installé avant EET_End


NOTE TO GERMAN PLAYERS
The German version is consistent to the fan-made "Deutsche Übersetzung für SoD". This means, that names and terms could differ from the official German version shipped with the game. Install "Deutsche Übersetzung für SoD" for a consistent game experience.
Download Link: https://baldurs-gate.de/index.php?resources/deutsche-%C3%9Cbersetzung-f%C3%BCr-sod.49/


Installation

NOTE: Si vous avez déjà installé le mod, supprimez-le avant d'extraire une nouvelle version. Pour cela: désinstallez tous les composants installés précédemment via le setup, et supprimez le dossier du mod ainsi que les exécutables. 

Quand vous installez ou désinstallez le mod, ne fermez pas la fenêtre DOS en cliquant sur la croix ! Au lieu de ça, appuyez sur "entrer" quand cela est demandé.


BG:EE
Si vous utilisez SoD depuis GoG ou Steam, vous devez préparer votre jeu avec DLC Merger ou modmerge avant d'installer n'importe quel mod:
DLC Merger par argent77 :
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

modmerge (en cas de doute, utilisez le DLC Merger à la place):
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

 
Général (Windows, Mac OS X, and Linux)

Extrayez le contenu de l'archive du mod dans le dossier de votre jeu. 
NOTE: Pour les Enhanced Edition, il est important d'installer les mods dans le langage que vous utilisez dans le jeu. Autrement, les dialogues provenant des mods seront affichés sous forme de messages d'erreurs.


Windows
Après extraction, vous devriez trouver dans votre dossier de jeu: un dossier "c#endlessbg1" et un fichier "setup-c#endlessbg1.exe". Pour installer le mod, double-cliquez sur setup-c#endlessbg1.exe et suivez les instructions à l'écran.
Lancez setup-c#endlessbg1.exe dans votre dossier de jeu pour réinstaller, désinstaller ou changer des composants.

Mac OS X
Le Tweak Pack est compressé et installé avec WeiDU. Pour l'installer, extrayez l'archive du mod, puis copiez le contenu du dossier dans votre dossier de jeu (le dossier qui contient le fichier CHITIN.KEY). Si l'extraction se passe correctement, vous devriez avoir un dossier "c#endlessbg1", setup-c#endlessbg1, et setup-c#endlessbg1.command dans votre dossier de jeu. Pour installer le mod, il suffit de double-cliquer sur setup-c#endlessbg1.command et de suivre les instructions à l'écran.

Linux
Extrayez le contenu du mod dans le dossier de votre jeu que vous souhaitez modifier. Téléchargez la dernière version de WeiDU pour Linux depuis https://github.com/WeiDUorg/weidu/releases et copiez WeiDU et WeInstall vers /usr/bin. Ensuite, ouvrez un terminal et accédez au répertoire d'installation de BG(2), exécutez "tolower" et répondez Y aux deux questions. Vous pouvez éviter d'exécuter la deuxième option (linux.ini) si vous l'avez déjà exécutée une fois dans le même répertoire. Si vous n'êtes pas sûr, lancer tolower et choisir les deux options est la meilleure solution. 
Exécutez WeInstall c#endlessbg1 dans votre dossier de jeu pour installer le mod. Exécutez ensuite le Wine BGMain.exe et commencez à jouer.

NOTE: BG(II):EE sont des jeux qui sont mis à jour régulièrement. Sachez qu'à chaque nouvelle mise à jour, votre jeu ne reconnaîtra plus les mods installés ! Si vous êtes au milieu d'une partie avec des mods, il est préférable de retarder la mise à jour car même après avoir réinstallé les mods, vous ne pourrez peut-être pas continuer avec vos anciennes sauvegardes. 

Si vous avez des problèmes d'installation ou rencontrez des bugs, veuillez poster votre rapport de bug sur le forum.


CREDITS

Acifer - ideas
maus - ideas, scripting help

Translations
Italian: improb@bile (v2)
French: JohnBob, proofreading by Mera (vAlpha_220505)


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