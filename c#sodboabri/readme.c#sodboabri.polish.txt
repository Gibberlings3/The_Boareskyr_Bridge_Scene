------------------------------------------------
--- Scena na Moœcie Boareskyr ---
------------------------------------------------

Modyfikacja do BG:SoD oraz EET
Autorka: jastey

SPIS TREŒCI
--ZAWARTOŒÆ
--OPIS KOMPONENTÓW
--UWAGI O KOMPATYBILNOŒCI
--UWAGI DLA GRAJ¥CYCH W JÊZYKU NIEMIECKIM 
--INSTALACJA
--AUTORZY (ANG)
--WYKORZYSTANE NARZÊDZIA I ZASOBY (ANG)
--HISTORIA (ANG)
--PRAWA AUTORSKIE (ANG)


ZAWARTOŒÆ

To jest modyfikacja do dodatku SoD (a tak¿e do EET). 
Nadaje ona wiêksze znaczenie scenie na Moœcie Boareskyr w kampanii Oblê¿enia Smoczej W³óczni. Tak jak list Goriona oraz sny postaci gracza w BG1, przemiana w Zabójcê w kampanii SoA, a tak¿e próby w ToB, scena ta jest wa¿nym krokiem na drodze postaci gracza do osi¹gniêcia boskoœci lub jej odrzucenia. Celem modyfikacji jest uwypuklenie znaczenia tej sceny poprzez pog³êbienie jej oraz wiêksze wplecenie jej w ca³oœæ historii za pomoc¹ reakcji towarzyszy i pozosta³ych postaci w grze. 
Postaæ gracza otrzyma wiêcej ostrze¿eñ przed udaniem siê na most, a towarzysze bêd¹ reagowaæ na to, co wydarzy siê na nim. W zale¿noœci od zainstalowanych komponentów sama scena zostanie rozszerzona za pomoc¹ opisów oraz wyborów osoby graj¹cej co do sposobu, w jaki postaæ gracza poradzi sobie z buchaj¹c¹ bosk¹ energi¹, co te¿ mo¿e wp³yn¹æ na cechy postaci.
Tak jak zazwyczaj, moja modyfikacja wykorzystuje jak najwiêcej oryginalnej zawartoœci gry.


OPIS KOMPONENTÓW 

Mod sk³ada siê z 4 komponentów, z których ka¿dy jest opcjonalny, jednak¿e razem tworz¹ one spójn¹ ca³oœæ:

1. Towarzysze reaguj¹ na scenê na Moœcie Boareskyr
---------------------------------------------
Ten komponent dodaje reakcje postaci z gry zarówno przed wejœciem na Most Boareskyr, jak i po nim. Uwagi Bence’a Duncana oraz Corwin jasno wskazuj¹, i¿ obecnoœæ postaci gracza na tym szlaku nie jest wskazana, a Jaheira i Khalid wprost przestrzegaj¹ j¹ przed zatrzymywaniem siê na moœcie, aby unikn¹æ politycznych napiêæ. Po rozegraniu siê sceny oryginalni towarzysze i ¿o³nierze P³omiennej Piêœci skomentuj¹ to wydarzenie, zanim Zakapturzony Mê¿czyzna przyst¹pi do rozmowy z postaci¹ gracza. W obozie koalicji równie¿ oficerowie bêd¹ komentowaæ to, co siê sta³o, ¿eby podkreœliæ znaczenie tej sceny dla reszty gry. 
Przerywnik filmowy ze scen¹ na moœcie pozostaje niezmieniony.


2 Dodatkowe opisy przy oryginalnej scenie na moœcie
---------------------------------------------
Ten komponent wprowadza dodatkowe opisy do sceny na moœcie, podobnie jak ma to miejsce w kluczowych scenach z BGII (zejœcie do Drzewa ¯ycia, przemiana w Zabójcê). 
Przerywnik filmowy ze scen¹ na moœcie jest nieznacznie zmieniony, aby dopasowaæ opisy do czêœci filmu, ale pozostaje wierny wydarzeniom z oryginalnej sceny. 


3 Scena na Moœcie Boareskyr daje mo¿liwoœci wyboru
---------------------------------------------
Ten komponent dodaje mo¿liwoœæ wyboru, w jaki sposób postaæ gracza poradzi sobie z energi¹ uwolnion¹ na moœcie. Mo¿e siê to odbyæ na trzy sposoby: 

1. Postaæ gracza przyjmuje na siebie cierpienie, aby chroniæ postronnych. W tym wypadku przerywnik filmowy postêpuje tak jak w oryginale (z drobnymi zmianami uwzglêdniaj¹cymi przerywniki tekstowe): postaæ gracza traci na chwilê przytomnoœæ, postronnym nie dzieje siê krzywda. 
2. Postaæ gracza przekierowuje energiê z dala od przebywaj¹cych na moœcie. W tym wypadku osoby znajduj¹ce siê najbli¿ej przewracaj¹ siê, doznaj¹c pewnych obra¿eñ. 
3. Postaæ gracza transmituje energiê na osoby wokó³. W tym wypadku wszyscy cz³onkowie dru¿yny otrzymuj¹ obra¿enia, a wiêkszoœæ przebywaj¹cych na moœcie ¿o³nierzy P³omiennej Piêœci ginie. 

W opcjach 2 i 3 przerywnik filmowy zosta³ odpowiednio zmieniony.



Uwagi dla modderów (ANG):

After option 1, the variable Global("C#stbb_BoareskyrbridgeScene","GLOBAL",9) is set to 9. However, this is also the value of the variable if component 3 is not installed and the cutscene ran normally (i.e. there was no reaction choice at all).

After option 2, Global("C#stbb_BoareskyrbridgeScene","GLOBAL",10) is displayed.

After option 3 it says Global("C#stbb_BoareskyrbridgeScene","GLOBAL",11).


4 Wybory dokonane w scenie na moœcie wp³ywaj¹ na cechy postaci
---------------------------------------------
Ten komponent wprowadza zmiany cech postaci w zale¿noœci od wyborów z komponentu nr 3:

1. Jeœli postaæ gracza przyjmuje na siebie ból, zyskuje 1 punkt M¹droœci. 
2. Jeœli postaæ gracza przekierowuje energiê z dala od postronnych, zyskuje 1 punkt Zrêcznoœci. 
3. Jeœli postaæ gracza kieruje energiê na postronnych, zyskuje 1 punkt Kondycji. 

Uwagi dla modderów (ANG):
After option 1 the variable Global("C#stbb_StatChange", "GLOBAL",1) is set to 1.
After option 2 the variable Global("C#stbb_StatChange", "GLOBAL",2) is set to 2.
After option 3 the variable Global("C#stbb_StatChange", "GLOBAL",3) is set to 3.



UWAGI O KOMPATYBILNOŒCI

Zainstaluj Scenê na Moœcie Boareskyr jako mod dodaj¹cy zadania, czyli przed innymi rodzajami modów. Tê modyfikacjê nale¿y zainstalowaæ przed modami dodaj¹cymi towarzyszy, aby umo¿liwiæ poprawn¹ instalacjê elementów crossmodowych.

Modyfikacja jest kompatybilna z EET i musi byæ zainstalowana przed EET_End.


UWAGI DLA GRAJ¥CYCH PO NIEMIECKU 

Niemiecka wersja jest spójna z fanowskim projektem "Shai Huluds Text-Patch". Oznacza to, ¿e nazewnictwo mo¿e odbiegaæ od oficjalnej niemieckiej wersji dostêpnej w grze. Zainstaluj „Shai Huluds Text-Patch”, w celu uspójnienia doœwiadczenia podczas rozgrywki.
Link do pobrania: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/


INSTALACJA

UWAGA: Jeœli ta modyfikacja by³a ju¿ wczeœniej zainstalowana, nale¿y j¹ usun¹æ przed wypakowaniem nowej wersji. W tym celu odinstaluj wszystkie wczeœniej zainstalowane komponenty oraz usuñ folder modyfikacji i jej pliki wykonywalne. 

Podczas instalacji lub usuwania modyfikacji nie zamykaj okna DOS, klikaj¹c w przycisk X! Zamiast tego u¿yj klawisza Enter, kiedy pojawi siê stosowne polecenie. 

BG:EE
Jeœli posiadasz dodatek SoD zakupiony na GOG lub Steam, musisz przygotowaæ grê za pomoc¹ DLC Merger lub modmerge przed instalacj¹ jakichkolwiek modyfikacji:
argent77's DLC Merger:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

Ogólne (Windows, Mac OS X i Linux)

Wypakuj zawartoœæ archiwum modyfikacji do g³ównego katalogu gry. 
UWAGA: W edycji rozszerzonej gry istotne jest, aby zainstalowaæ modyfikacjê w tej samej wersji jêzykowej, w jakiej grasz w sam¹ grê. W przeciwnym wypadku dialogi modyfikacji bêd¹ pokazywaæ b³êdy. 

Windows
Po wypakowaniu zawartoœci w katalogu gry powinien pojawiæ siê folder sodrtd i plik setup-sodrtd.exe. Aby zainstalowaæ modyfikacjê, kliknij dwa razy na setup-c#sodboabri.exe i postêpuj zgodnie z instrukcjami na ekranie.
Uruchom setup-c#sodboabri.exe w folderze z gr¹, aby przeinstalowaæ, odinstalowaæ lub w inny sposób zmieniæ komponenty. 

Mac OS X
Modyfikacja jest pakowana i instalowana za pomoc¹ WeiDU. Aby zainstalowaæ modyfikacjê, wypakuj archiwum, po czym skopiuj zawartoœæ folderu do folderu z gr¹ (tego, który zawiera plik CHITIN.KEY). Po wypakowaniu w folderze z gr¹ powinny pojawiæ siê: folder "c#sodboabri", setup-c#sodboabri oraz setup-c#sodboabri.command. Kliknij dwa razy w setup-c#sodboabri.command i postêpuj zgodnie z instrukcjami na ekranie.  

Linux
Wypakuj zawartoœæ archiwum modyfikacji do folderu gry, któr¹ chcesz zmodyfikowaæ. Pobierz najnowsz¹ wersjê WeiDU dla Linux z https://github.com/WeiDUorg/weidu/releases i skopiuj WeiDU i WeInstall do /usr/bin. Nastêpnie otwórz terminal i u¿yj cd do katalogu instalacyjnego BG2, wykonaj 'tolower' oraz odpowiedz Y na oba zapytania. Mo¿esz unikn¹æ uruchamiania drugiej opcji (linux.ini) jeœli wczeœniej by³a ju¿ uruchomiona w tym samym katalogu. Jeœli nie masz pewnoœci, wykonanie tolower i wybranie obu opcji bêdzie najbezpieczniejsze.
Uruchom WeInstall c#sodboabri w folderze z gr¹, ¿eby zainstalowaæ modyfikacjê. Nastêpnie uruchom wine BGMain.exe i zacznij graæ. 

UWAGA: Gry BG(II):EE s¹ aktywnie wspierane i aktualizowane. Zwróæ uwagê, ¿e ka¿da aktualizacja usunie zainstalowane mody! Podczas rozgrywki z modyfikacjami warto wstrzymaæ siê z aktualizacjami gry, gdy¿ nawet ponownie instaluj¹c modyfikacje, mo¿esz nie byæ w stanie kontynuowaæ grania z wczeœniejszych zapisów.

W przypadku problemów z instalacj¹ lub napotkania b³êdów przeœlij raport b³êdów na jednym z forów gry. 


CREDITS

Acifer - ideas
maus - ideas, scripting help

Translations
French: JohnBob, proofreading by Mera (vAlpha_220505)
Italian: improb@bile (v2)
Polish: GoForTheEyes (v5)
Russian: scheele (v4)
Chinese (simplified) by yoshimo0417, setup.tra format corrections by MephistoSatanDevil (v7)
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





