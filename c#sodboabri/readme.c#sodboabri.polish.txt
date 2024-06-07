------------------------------------------------
--- Scena na Mo�cie Boareskyr ---
------------------------------------------------

Modyfikacja do BG:SoD oraz EET
Autorka: jastey

SPIS TRE�CI
--ZAWARTO��
--OPIS KOMPONENT�W
--UWAGI O KOMPATYBILNO�CI
--UWAGI DLA GRAJ�CYCH W J�ZYKU NIEMIECKIM 
--INSTALACJA
--AUTORZY (ANG)
--WYKORZYSTANE NARZ�DZIA I ZASOBY (ANG)
--HISTORIA (ANG)
--PRAWA AUTORSKIE (ANG)


ZAWARTO��

To jest modyfikacja do dodatku SoD (a tak�e do EET). 
Nadaje ona wi�ksze znaczenie scenie na Mo�cie Boareskyr w kampanii Obl�enia Smoczej W��czni. Tak jak list Goriona oraz sny postaci gracza w BG1, przemiana w Zab�jc� w kampanii SoA, a tak�e pr�by w ToB, scena ta jest wa�nym krokiem na drodze postaci gracza do osi�gni�cia bosko�ci lub jej odrzucenia. Celem modyfikacji jest uwypuklenie znaczenia tej sceny poprzez pog��bienie jej oraz wi�ksze wplecenie jej w ca�o�� historii za pomoc� reakcji towarzyszy i pozosta�ych postaci w grze. 
Posta� gracza otrzyma wi�cej ostrze�e� przed udaniem si� na most, a towarzysze b�d� reagowa� na to, co wydarzy si� na nim. W zale�no�ci od zainstalowanych komponent�w sama scena zostanie rozszerzona za pomoc� opis�w oraz wybor�w osoby graj�cej co do sposobu, w jaki posta� gracza poradzi sobie z buchaj�c� bosk� energi�, co te� mo�e wp�yn�� na cechy postaci.
Tak jak zazwyczaj, moja modyfikacja wykorzystuje jak najwi�cej oryginalnej zawarto�ci gry.


OPIS KOMPONENT�W 

Mod sk�ada si� z 4 komponent�w, z kt�rych ka�dy jest opcjonalny, jednak�e razem tworz� one sp�jn� ca�o��:

1. Towarzysze reaguj� na scen� na Mo�cie Boareskyr
---------------------------------------------
Ten komponent dodaje reakcje postaci z gry zar�wno przed wej�ciem na Most Boareskyr, jak i po nim. Uwagi Bence�a Duncana oraz Corwin jasno wskazuj�, i� obecno�� postaci gracza na tym szlaku nie jest wskazana, a Jaheira i Khalid wprost przestrzegaj� j� przed zatrzymywaniem si� na mo�cie, aby unikn�� politycznych napi��. Po rozegraniu si� sceny oryginalni towarzysze i �o�nierze P�omiennej Pi�ci skomentuj� to wydarzenie, zanim Zakapturzony M�czyzna przyst�pi do rozmowy z postaci� gracza. W obozie koalicji r�wnie� oficerowie b�d� komentowa� to, co si� sta�o, �eby podkre�li� znaczenie tej sceny dla reszty gry. 
Przerywnik filmowy ze scen� na mo�cie pozostaje niezmieniony.


2 Dodatkowe opisy przy oryginalnej scenie na mo�cie
---------------------------------------------
Ten komponent wprowadza dodatkowe opisy do sceny na mo�cie, podobnie jak ma to miejsce w kluczowych scenach z BGII (zej�cie do Drzewa �ycia, przemiana w Zab�jc�). 
Przerywnik filmowy ze scen� na mo�cie jest nieznacznie zmieniony, aby dopasowa� opisy do cz�ci filmu, ale pozostaje wierny wydarzeniom z oryginalnej sceny. 


3 Scena na Mo�cie Boareskyr daje mo�liwo�ci wyboru
---------------------------------------------
Ten komponent dodaje mo�liwo�� wyboru, w jaki spos�b posta� gracza poradzi sobie z energi� uwolnion� na mo�cie. Mo�e si� to odby� na trzy sposoby: 

1. Posta� gracza przyjmuje na siebie cierpienie, aby chroni� postronnych. W tym wypadku przerywnik filmowy post�puje tak jak w oryginale (z drobnymi zmianami uwzgl�dniaj�cymi przerywniki tekstowe): posta� gracza traci na chwil� przytomno��, postronnym nie dzieje si� krzywda. 
2. Posta� gracza przekierowuje energi� z dala od przebywaj�cych na mo�cie. W tym wypadku osoby znajduj�ce si� najbli�ej przewracaj� si�, doznaj�c pewnych obra�e�. 
3. Posta� gracza transmituje energi� na osoby wok�. W tym wypadku wszyscy cz�onkowie dru�yny otrzymuj� obra�enia, a wi�kszo�� przebywaj�cych na mo�cie �o�nierzy P�omiennej Pi�ci ginie. 

W opcjach 2 i 3 przerywnik filmowy zosta� odpowiednio zmieniony.



Uwagi dla modder�w (ANG):

After option 1, the variable Global("C#stbb_BoareskyrbridgeScene","GLOBAL",9) is set to 9. However, this is also the value of the variable if component 3 is not installed and the cutscene ran normally (i.e. there was no reaction choice at all).

After option 2, Global("C#stbb_BoareskyrbridgeScene","GLOBAL",10) is displayed.

After option 3 it says Global("C#stbb_BoareskyrbridgeScene","GLOBAL",11).


4 Wybory dokonane w scenie na mo�cie wp�ywaj� na cechy postaci
---------------------------------------------
Ten komponent wprowadza zmiany cech postaci w zale�no�ci od wybor�w z komponentu nr 3:

1. Je�li posta� gracza przyjmuje na siebie b�l, zyskuje 1 punkt M�dro�ci. 
2. Je�li posta� gracza przekierowuje energi� z dala od postronnych, zyskuje 1 punkt Zr�czno�ci. 
3. Je�li posta� gracza kieruje energi� na postronnych, zyskuje 1 punkt Kondycji. 

Uwagi dla modder�w (ANG):
After option 1 the variable Global("C#stbb_StatChange", "GLOBAL",1) is set to 1.
After option 2 the variable Global("C#stbb_StatChange", "GLOBAL",2) is set to 2.
After option 3 the variable Global("C#stbb_StatChange", "GLOBAL",3) is set to 3.



UWAGI O KOMPATYBILNO�CI

Zainstaluj Scen� na Mo�cie Boareskyr jako mod dodaj�cy zadania, czyli przed innymi rodzajami mod�w. T� modyfikacj� nale�y zainstalowa� przed modami dodaj�cymi towarzyszy, aby umo�liwi� poprawn� instalacj� element�w crossmodowych.

Modyfikacja jest kompatybilna z EET i musi by� zainstalowana przed EET_End.


UWAGI DLA GRAJ�CYCH PO NIEMIECKU 

Niemiecka wersja jest sp�jna z fanowskim projektem "Shai Huluds Text-Patch". Oznacza to, �e nazewnictwo mo�e odbiega� od oficjalnej niemieckiej wersji dost�pnej w grze. Zainstaluj �Shai Huluds Text-Patch�, w celu usp�jnienia do�wiadczenia podczas rozgrywki.
Link do pobrania: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/


INSTALACJA

UWAGA: Je�li ta modyfikacja by�a ju� wcze�niej zainstalowana, nale�y j� usun�� przed wypakowaniem nowej wersji. W tym celu odinstaluj wszystkie wcze�niej zainstalowane komponenty oraz usu� folder modyfikacji i jej pliki wykonywalne. 

Podczas instalacji lub usuwania modyfikacji nie zamykaj okna DOS, klikaj�c w przycisk X! Zamiast tego u�yj klawisza Enter, kiedy pojawi si� stosowne polecenie. 

BG:EE
Je�li posiadasz dodatek SoD zakupiony na GOG lub Steam, musisz przygotowa� gr� za pomoc� DLC Merger lub modmerge przed instalacj� jakichkolwiek modyfikacji:
argent77's DLC Merger:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

Og�lne (Windows, Mac OS X i Linux)

Wypakuj zawarto�� archiwum modyfikacji do g��wnego katalogu gry. 
UWAGA: W edycji rozszerzonej gry istotne jest, aby zainstalowa� modyfikacj� w tej samej wersji j�zykowej, w jakiej grasz w sam� gr�. W przeciwnym wypadku dialogi modyfikacji b�d� pokazywa� b��dy. 

Windows
Po wypakowaniu zawarto�ci w katalogu gry powinien pojawi� si� folder sodrtd i plik setup-sodrtd.exe. Aby zainstalowa� modyfikacj�, kliknij dwa razy na setup-c#sodboabri.exe i post�puj zgodnie z instrukcjami na ekranie.
Uruchom setup-c#sodboabri.exe w folderze z gr�, aby przeinstalowa�, odinstalowa� lub w inny spos�b zmieni� komponenty. 

Mac OS X
Modyfikacja jest pakowana i instalowana za pomoc� WeiDU. Aby zainstalowa� modyfikacj�, wypakuj archiwum, po czym skopiuj zawarto�� folderu do folderu z gr� (tego, kt�ry zawiera plik CHITIN.KEY). Po wypakowaniu w folderze z gr� powinny pojawi� si�: folder "c#sodboabri", setup-c#sodboabri oraz setup-c#sodboabri.command. Kliknij dwa razy w setup-c#sodboabri.command i post�puj zgodnie z instrukcjami na ekranie.  

Linux
Wypakuj zawarto�� archiwum modyfikacji do folderu gry, kt�r� chcesz zmodyfikowa�. Pobierz najnowsz� wersj� WeiDU dla Linux z https://github.com/WeiDUorg/weidu/releases i skopiuj WeiDU i WeInstall do /usr/bin. Nast�pnie otw�rz terminal i u�yj cd do katalogu instalacyjnego BG2, wykonaj 'tolower' oraz odpowiedz Y na oba zapytania. Mo�esz unikn�� uruchamiania drugiej opcji (linux.ini) je�li wcze�niej by�a ju� uruchomiona w tym samym katalogu. Je�li nie masz pewno�ci, wykonanie tolower i wybranie obu opcji b�dzie najbezpieczniejsze.
Uruchom WeInstall c#sodboabri w folderze z gr�, �eby zainstalowa� modyfikacj�. Nast�pnie uruchom wine BGMain.exe i zacznij gra�. 

UWAGA: Gry BG(II):EE s� aktywnie wspierane i aktualizowane. Zwr�� uwag�, �e ka�da aktualizacja usunie zainstalowane mody! Podczas rozgrywki z modyfikacjami warto wstrzyma� si� z aktualizacjami gry, gdy� nawet ponownie instaluj�c modyfikacje, mo�esz nie by� w stanie kontynuowa� grania z wcze�niejszych zapis�w.

W przypadku problem�w z instalacj� lub napotkania b��d�w prze�lij raport b��d�w na jednym z for�w gry. 


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
The Boareskyr Bridge Scene mod for SoD is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. �Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
================================================================================





