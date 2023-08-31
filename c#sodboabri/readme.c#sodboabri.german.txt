------------------------------------------------
--- Die Szene auf der Eberfellbrücke ---
------------------------------------------------

eine Modifikation for SoD (und EET)
von jastey

INHALTSVERZEICHNIS
--INHALT
--KOMPONENTENBESCHREIBUNGEN
--KOMPATIBILITÄTSHINWEIS
--HINWEIS AN ALLE SPIELER DER DEUTSCHEN VERSION
--INSTALLATION
--DANKSAGUNGEN
--VERWENDETE TOOLS UND RESSOURCEN
--ÄNDERUNGSHISTORIE
--COPYRIGHT-HINWEIS


INHALT

Diese Mod ist für den SoD-Teil (auch für EET). 

Sie soll der Szene an der Eberfellbrücke in SoD mehr Wirkung verleihen. Wie Gorions Brief und die Träume des HCs in BG1, die Verwandlung in den Schlächter in SoA und die Prüfungen in ToB ist diese Szene ein wichtiger Teil des Wegs des HCs zur Gottheit (bzw. dem Abgeben der göttlichen Essenz). Diese Mod versucht, diese wichtige Szene zu betonen, indem ihr mehr Tiefe verliehen und sie durch Reaktionen von NSCs und anderen Spielcharakteren tiefer in die Geschichte einbezogen wird. 
Abhängig von den installierten Komponenten wird es mehr Warnungen vor dem Betreten der Brücke geben, NSCs werden auf die Geschehnisse auf der Brücke reagieren, und die eigentliche Szene wird mit Beschreibungstexten und Wahlmöglichkeiten für den Spieler erweitert, wie der HC mit der ausbrechenden göttlichen Energie umgeht, einschließlich der daraus resultierenden Statusveränderungen.

Wie üblich verwendet meine Mod so viele Originalinhalte wie möglich.




KOMPONENTENBESCHREIBUNGEN

Die Mod besteht aus 4 optionalen Komponenten, die aufeinander aufbauen.

1 NSCs reagieren auf die Szene an der Eberfellbrücke
---------------------------------------------
Diese Komponente fügt Reaktionen von Spielcharakteren vor dem Betreten der Eberfellbrücke und nach der Szene auf der Brücke hinzu: Kommentare von Bence Duncan und Corwin machen es deutlich, dass der HC nicht auf dieser Strecke gesehen werden sollte, Jaheira oder Khalid warnen den HC explizit davor, auf der Brücke zu verweilen, um politische Spannungen zu verhindern. Direkt nach der Szene kommentieren alle originalen NPCs und die Soldaten der Flammenden Faust, bevor der Verhüllte Mann mit dem HC über das Vorgefallene sprechen kann. Im Hauptlager der Koalition angekommen kommentieren die Offiziere das Vorgefallene um noch einmal zu verdeutlichen, welchen Impakt diese Szene im Laufe des Spiels haben wird.
Die eigentliche Cutscene auf der Brücke bleibt unverändert.

2 Originale Szene an der Brücke mit Beschreibungstext versehen
---------------------------------------------
Diese Komponente fügt zusätzlich noch Beschreibungstexte zu der Szene auf der Brücke hinzu, die an den Stil der Schlüsselszenen in BGII angelehnt sind (Hinabsteigen zum Lebensbaum, Verwandlung in den Schlächter).
Die eigentliche Cutscene auf der Brücke wurde leicht geändert um der Unterbrechung mit Beschreibungstexten gerecht zu werden.

3 Szene an Brücke mit Reaktionsmöglichkeiten versehen
---------------------------------------------
Diese Komponente fügt Reaktionsmöglichkeiten dazu, wie der HC mit der Energie, die auf der Brücke frei wird, umgeht. Es gibt drei Möglichkeiten:
1. der HC nimmt alle Pein in sich auf um die Umstehenden zu schützen. In diesem Fall verläuft die Cutscene so wie mit Komponente 2: der HC verliert kurz das Bewusstsein, die Umstehenden sind unbeschadet.
2. der HC leitet die Energie möglichst von allen auf der Brücke fort. In diesem Fall werden die nahestehenden fortgeschleudert und erhalten Schaden.
3. der HC kanalisiert die Energie auf die Umstehenden. In diesem Fall erhalten alle Gruppenmitglieder Schaden und die meisten Soldaten der Flammenden Faust, die sich auf der Brücke befinden, sterben.
Die Cutscenes für Optionen 2 und 3 wurden entsprechend angepasst.

Hinweis an Modder:
Nach Option 1 steht die Variable Global("C#stbb_BoareskyrbridgeScene","GLOBAL",9) auf 9. Dies ist allerdings auch der Wert der Variable, wenn Komponente 3 nicht installiert ist und die Cutscene normal verlaufen ist (es also gar keine Auswahl gab).
Nach Option 2 steht Global("C#stbb_BoareskyrbridgeScene","GLOBAL",10)
Nach Option 3 steht Global("C#stbb_BoareskyrbridgeScene","GLOBAL",11).

4 HC-Reaktionen führen zu Statänderungen
---------------------------------------------
Diese Komponente fügt Statänderungen zu den drei Auswahloptionen von Komponente 3 hinzu:
1. wenn der HC den Schmerz in sich aufnimmt erhöht sich seine Weisheit permanent um 1.
2. wenn der HC die Energie wegleitet erhöht sich seine Geschicklichkeit permanent um 1.
3. wenn der HC die Energie auf die Umstehenden leitet erhöht sich seine Konstitution permanent um 1.

Hinweis an Modder:
Nach Option 1 steht die Variable Global("C#stbb_StatChange","GLOBAL",1) auf 1.
Nach Option 2 steht die Variable Global("C#stbb_StatChange","GLOBAL",2) auf 2.
Nach Option 3 steht die Variable Global("C#stbb_StatChange","GLOBAL",3) auf 3.


KOMPATIBILITÄTSHINWEIS

Installiere „Die Szene auf der Eberfellbrücke“ als frühe questmod in der Installationsreihenfolge. Diese Mod sollte vor NPC-Mods installiert werden, damit diese darauf reagieren können.

Die Mod ist nativ EET-kompatibel und muss vor EET_End installiert werden.


HINWEIS AN ALLE SPIELER DER DEUTSCHEN VERSION

Die deutsche Modversion orientiert sich an der deutschen Fanübersetzung "Shai Huluds Text-Patch". Dies bedeutet, dass die im Spiel verwendeten Eigennamen und Übersetzungen der Örtlichkeiten etc. mit der Fanübersetzung konsistent sind und zur offiziellen SoD-Übersetzung Diskrepanzen bestehen, vor allem bei den Namen der Spielcharaktere. Installiert die Fanübersetzung für ein konsistentes Spielerlebnis.
Download Link: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/


INSTALLATION

HINWEIS: Wenn du die Mod bereits installiert hast, entferne sie, bevor du eine neue Version extrahierst. Deinstalliere dazu alle zuvor installierten Komponenten und lösche den Mod-Ordner und die ausführbaren Dateien. 

Schließe bei der Installation oder Deinstallation das DOS-Fenster nicht durch Klicken auf die X-Taste! Drücke stattdessen die Eingabetaste, wenn du dazu aufgefordert wirst.

BG:EE
Wenn du SoD von GOG oder Steam verwendest, musst du dein Spiel mit DLC-Merger oder Modmerge vorbereiten, bevor du Mods installierst:
DLC-Merger von argent77:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

Allgemein (Windows, Mac OS X, und Linux)

Entpacke den Inhalt des Mod-Archivs in das Hauptverzeichnis deines Spiels. 
HINWEIS: Für die Enhanced-Edition ist es wichtig, dass du die Mod in der Sprachversion installierst, in der du das Spiel spielst. Andernfalls werden die Dialoge der Mods nicht angezeigt, sondern geben Fehlermeldungen aus.

Windows
Nach erfolgreichem Entpacken sollte sich ein sodrtd-Ordner und eine setup-sodrtd.exe-Datei in deinem Spielordner befinden. Zur Installation doppelklicke einfach auf setup-c#sodboabri.exe und folge den Anweisungen auf dem Bildschirm.
Führe setup-c#sodboabri.exe in deinem Spielordner aus, um Komponenten neu zu installieren, zu deinstallieren oder anderweitig zu ändern.

Mac OS X
Das Tweak-Pack wird mit WeiDU gepackt und installiert. Um es zu installieren, entpacke das Mod-Archiv und kopiere den Inhalt des Ordners in deinen Spielordner (den Ordner, der die Datei CHITIN.KEY enthält). Wenn das Archiv richtig entpackt wurde, solltest du einen „c#sodboabri“-Ordner, setup-c#sodboabri und setup-c#sodboabri.command in deinem Spielordner haben. Zur Installation doppelklicke einfach auf setup-c#sodboabri.command und folge den Anweisungen auf dem Bildschirm.

Linux
Entpacke den Inhalt des Mods in den Ordner des Spiels, das du ändern möchtest. Lade die neueste Version von WeiDU für Linux von https://github.com/WeiDUorg/weidu/releases herunter und kopiere WeiDU und WeInstall nach /usr/bin. Öffne anschließend ein Terminal und wechsle in dein BG2-Installationsverzeichnis, führe „tolower“ aus und beantworte beide Fragen mit Y. Du kannst die zweite Option (linux.ini) vermeiden, wenn du sie bereits einmal im selben Verzeichnis ausgeführt hast. Wenn du unsicher bist, ist es am sichersten, tolower auszuführen und beide Optionen zu wählen.
Führe WeInstall c#sodboabri in deinem Spielordner aus, um die Mod zu installieren. Starte dann wine BGMain.exe und beginne zu spielen. 

HINWEIS: BG(II):EE sind aktiv unterstützte Spiele. Bitte beachte, dass jedes Patch-Update dein aktuelles Mod-Setup löscht! Wenn du dich mitten in einem Spiel mit Mods befindest, solltest du das Patch-Update verschieben, da du selbst nach einer Neuinstallation der Mods möglicherweise nicht mit deinem alten Spielständen weiterspielen kannst. 

Wenn du Probleme bei der Installation hast oder auf Bugs stößt, poste bitte deinen Fehlerbericht in einem der Forumsthreads.


DANKSAGUNGEN

Acifer - Ideen
maus - Ideen, Skriptinghilfe

Übersetzungen:
Französisch: JohnBob, proofreading by Mera (vAlpha_220505)
Italienisch: improb@bile (v2)
Polnisch: GoForTheEyes (v5)
Russisch: scheele (v4)
Spanisch: ElGamerViejuno (v6)

Danke an BioWare, Black Isle und Wizards of the Coast für Baldur's Gate 1, 2 und die Infinity-Engine, und BeamDog für die Wiederbelebung der Spiele einschließlich der SoD-Kampagne.
Danke an das Kerzenburgforum und GibberlingsThree für die Bereitstellung eines Ortes für den Austausch von Ideen und technischen Ratschlägen.
Danke an alle Modder, die die IE-Modding-Tools entwickelt haben und pflegen, ohne die diese Mod nicht möglich gewesen wäre.
Danke an alle, die diese Mod oder eine meiner Mods spielen, und auch an diejenigen, die mir Feedback geben, um meine Mods zu verbessern. Ohne euch würde das Modding nicht so viel Spaß machen.
Das meine ich ganz ernst, obwohl ich diese Textbausteine auch in anderen Mods verwende! :-)


VERWENDETE TOOLS UND RESSOURCEN

Die SoD-Road-to-Discovery-Mod wurde unter Verwendung der vom IESDP (https://gibberlings3.github.io/iesdp/index.htm) zur Verfügung gestellten Ressourcen und mit folgender Software erstellt:

Near Infinity 	https://github.com/Argent77/NearInfinity/releases/latest
WeiDU 		http://www.weidu.org
grepWin 	http://tools.stefankueng.com/grepWin.html
winMerge	https://winmerge.org/
Notepad++ 	https://notepad-plus-plus.org/downloads/

Weitere Links, Modding-Communities, Tutorials, technische Hilfestellungen, Walkthroughs, die bei der Erstellung dieser Mod verwendet wurden:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/

SoD Walkthrough at GameBanshee http://www.gamebanshee.com/baldursgate/walkthrough/sod-korlaszstomb.php

Filename Prefix Reservation List
https://www.gibberlings3.net/forums/topic/1649-community-filename-prefix-reservations/

DeepL
https://www.deepl.com/translator


ÄNDERUNGSHISTORIE

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


COPYRIGHT-HINWEIS

Diese Mod wurde erstellt, um von allen Baldur's-Gate-II-Spielern frei genutzt werden zu können, und ihr Inhalt ist frei von Rechten. Er darf jedoch nicht ohne die Zustimmung der Autoren verkauft, veröffentlicht, zusammengestellt oder in irgendeiner Form weitergegeben werden.
Bitte beachten Sie, dass jegliche Weiterverbreitung und/oder das Hosten dieser Mod ohne Erlaubnis der Autoren verboten ist.
Die Modding-Community für die Infinity-Engine besteht nun schon seit mehr als 10 Jahren und ist der Höhepunkt tausender unbezahlter Modding-Stunden von anderen Fans des Spiels. Die Modder liefern ihre beste Arbeit ab, und die Spieler erhalten die besten, gut unterstützten Mods, wenn wir alle zusammenarbeiten.
Es gibt zwei große Möglichkeiten, diese Harmonie zu stören. Die eine ist, die Arbeit eines anderen als die eigene auszugebenen. Die zweite ist, eine Mod ohne die Erlaubnis des Autors/der Autoren zu hosten und weiterzuverbreiten.
Seien Sie nett zu Ihren Mitspielern und Moddern. Tun Sie beides nicht.

================================================================================
Die Szene auf der Eberfellbrücke-Mod für SoD ist inoffizieller Fan-Content, der gemäß der Fan-Content-Policy erlaubt ist. Nicht von Wizards genehmigt/befürwortet. Teile des verwendeten Materials sind Eigentum von Wizards of the Coast. ©Wizards of the Coast LLC.
Diese Mod wird auch nicht von BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games oder Beamdog entwickelt, unterstützt oder zugelassen. Alle anderen Marken und Copyrights sind Eigentum der jeweiligen Besitzer.
================================================================================