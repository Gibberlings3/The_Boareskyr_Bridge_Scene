/* PC heard about it from Jospil */
/* bdjospil 7
#44753 /* ~Aye. It's the settlement next to Boareskyr Bridge. During the Time of Troubles, Cyric and Bhaal battled each other there. The water west of Bridgefort has been fouled, poisonous to drink ever since.~ */
*/
ADD_TRANS_ACTION bdjospil BEGIN 7 END BEGIN END ~SetGlobal("C#stbb_HeardFromJospil","GLOBAL",1)~

/* Bence / Corwin react after it is clear they need to go via Boareskyr Bridge */
/*
bdcorwin
IF ~~ THEN BEGIN 17 // from: 16.0 16.2 18.0
  SAY #35917 /* ~Agreed. Spread the word, Duncan. Mark the new route on everyone's maps. We move out as soon as our friend is ready.~ [BD35917] */
  IF ~~ THEN DO ~AddJournalEntry(66861,QUEST_DONE)
AddJournalEntry(66862,QUEST)
ActionOverride("bdbence",EscapeAreaObject("ff_camp"))
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #35935 /* ~Head to Boareskyr Bridge when you're ready. If you need to get anything done around here, now would be the time to do it—I doubt we'll be back this way anytime soon.~ [BD35935] */
  IF ~~ THEN DO ~AddJournalEntry(66861,QUEST_DONE)
AddJournalEntry(66862,QUEST)
ActionOverride("bdbence",EscapeAreaObject("ff_camp"))
~ EXIT
END
*/

I_C_T3 bdcorwin 17 C#stbb_bdcorwin_17
== bdcorwin @18 /* ~Corporal Duncan does have a point, though, <CHARNAME>. It was not planned for us to take the detour along Boareskyr Bridge - the Dukes were quite firm about that.~ */
== bdcorwin IF ~Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN @19 /* ~*Especially* since you already blurted your Bhaal heritage into the crowd.~ */
== bdcorwin @20 /* ~Your godly heritage stirring any more rumors than it already did when people might see you on *that* bridge is the last thing we'd need. Let's hope we can clear the path quickly - and your presence there will not be wrongly percepted.~ */
END

I_C_T3 bdcorwin 20 C#stbb_bdcorwin_20
== bdcorwin @18 /* ~Corporal Duncan does have a point, though, <CHARNAME>. It was not planned for us to take the detour along Boareskyr Bridge - the Dukes were quite firm about that.~ */
== bdcorwin IF ~Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN @19 /* ~*Especially* since you already blurted your Bhaal heritage into the crowd.~ */
== bdcorwin @20 /* ~Your godly heritage stirring any more rumors than it already did when people might see you on *that* bridge is the last thing we'd need. Let's hope we can clear the path quickly - and your presence there will not be wrongly percepted.~ */
END

/*
bdbence
IF ~~ THEN BEGIN 18 // from: 15.3 16.0 16.2 17.0
  SAY #36703 /* ~It'll take us some time to break camp and scout the best way for the troops to take. Meet us at Bridgefort when you're ready. I'll mark the directions on your map if you don't know the way.~ [BD36703] */
  IF ~~ THEN DO ~AddJournalEntry(66861,QUEST_DONE)
AddJournalEntry(66862,QUEST)
ActionOverride("bdbence",EscapeAreaObject("ff_camp"))
~ EXIT
END
*/

I_C_T3 bdbence 18 C#stbb_bdbence_18
== bdbence @21 /* ~It will be my head for this I guess - not only will it take longer to get to Dragonspear Castle, but the Dukes were very clear not to have anyone see you near Boareskyr Bridge - something about the historical value of this bridge so shortly after Sarevok's defeat.~ */
== bdcorwij IF ~IsValidForPartyDialogue("corwin") Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN @19 /* ~*Especially* since you already blurted your Bhaal heritage into the crowd.~ */
== bdcorwij IF ~IsValidForPartyDialogue("corwin")~ THEN @20 /* ~Your godly heritage stirring any more rumors than it already did when people might see you on *that* bridge is the last thing we'd need. Let's hope we can clear the path quickly - and your presence there will not be wrongly percepted.~ */
END


/* Jaheira will talk to the PC - upon first meeting in Troll Claw Woods */

INTERJECT bdjaheir 39 C#stbb_bdjaheir_39
== bdjaheir @22 /* ~Als ich fragte, was Ihr *hier* tätet, meinte ich nicht Euren Marsch gegen Caelar.~ */
END
IF ~~ THEN + warning_boarskyr_bridge_00

INTERJECT bdjaheir 32 C#stbb_bdjaheir_32
== bdjaheir @22 /* ~Als ich fragte, was Ihr *hier* tätet, meinte ich nicht Euren Marsch gegen Caelar.~ */
END
IF ~~ THEN + warning_boarskyr_bridge_00

APPEND bdjaheir

IF ~~ THEN warning_boarskyr_bridge
SAY @23 /* ~Beantwortet meine Frage, bitte - es ist wichtig.~ */
+ ~!BeenInParty("Jaheira") Global("C#stbb_bbwarning_01","LOCALS",0)~ + @24 /* ~Mein göttliches Erbe? Wartet, Gorion hat *Euch* davon erzählt, aber mir nicht?!~ */ DO ~SetGlobal("C#stbb_bbwarning_01","LOCALS",1)~ + warning_boarskyr_bridge_0B
+ ~Global("C#stbb_bbwarning_02","LOCALS",0)~ + @25 /* ~Warum erwähntet Ihr die Herzöge? Wissen sie etwa um mein Bhaalerbe?~ */ DO ~SetGlobal("C#stbb_bbwarning_02","LOCALS",1)~ + warning_boarskyr_bridge_0A
+ ~Global("C#stbb_HeardFromJospil","GLOBAL",1)~ + @26 /* ~Ja, Jospil in Baldurs Gate erwähnte, dass sich an dieser Brücke Bhaal und Cyric bekämpft hätten.~ */ + warning_boarskyr_bridge_01
+ ~Global("C#stbb_bdkhalid_45","GLOBAL",1)~ + @27 /* ~Ja, Khalid hat mir schon gesagt, dass es der Ort ist, an dem Bhaal starb.~ */ + warning_boarskyr_bridge_07
+ ~OR(3)
Global("C#stbb_bdcorwin_17","GLOBAL",1)
Global("C#stbb_bdcorwin_20","GLOBAL",1)
Global("C#stbb_bdbence_18","GLOBAL",1)~ + @28 /* ~Ja, ich wurde bereits darauf aufmerksam gemacht, dass man mich da nicht sehen sollte. Aber warum genau?~ */ + warning_boarskyr_bridge_01
+ ~!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)
!Class(Player1,MAGE_ALL)
!Class(Player1,MONK)
!CheckStatGT(Player1,16,WIS)~ + @29 /* ~Wasn't it the place where Bhaal was killed?~ */ + warning_boarskyr_bridge_02
+ ~OR(5) 
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,MAGE_ALL)
Class(Player1,MONK)
CheckStatGT(Player1,16,WIS)~ + @30 /* ~An der Eberfellbrücke starb Bhaal durch Cyrics Hand, oder besser gesagt durch Mask, der sich in ein Schwert verwandelt hatte.~ */ + warning_boarskyr_bridge_02
++ @31 /* ~You sound concerned, Jaheira.~ */ + warning_boarskyr_bridge_01
++ @32 /* ~Enlighten me.~ */ + warning_boarskyr_bridge_01
END

IF ~~ THEN warning_boarskyr_bridge_0A
SAY @33 /* ~Sie wissen es, ja. Spätestens, seitdem sie Sarevoks Aufzeichnungen lasen und dessen Vermutungen über Euer Erbe könnt Ihr davon ausgehen, dass sie darüber Gewissheit eingeholt haben. Wenn Euer Erbe für sie bisher kein Thema war, dann sollten wir alles dafür tun, dass es auch so bleibt.~ */
IF ~~ THEN + warning_boarskyr_bridge
END

IF ~~ THEN warning_boarskyr_bridge_0B
SAY @34 /* ~Wir waren... gute Freunde. Er hat Euch nicht ohne Grund zu uns geschickt. Gorion wollte es Euch erzählen, <CHARNAME>.~ */
IF ~~ THEN + warning_boarskyr_bridge
END

IF ~~ THEN warning_boarskyr_bridge_00
SAY @35 /* ~[Jaheira]Dass Ihr als Held von Baldurs Tor die Soldaten gegen Caelar anführt verwundert mich nicht, aber dass Euch die Herzöge in Anbetracht Eures göttlichen Erbes ausgerechnet zur Eberfellbrücke gehen lassen dagegen sehr - ich gehe davon aus, dass der Weg über den Küstenweg versperrt ist. Dies ist... ungünstig, um es mal vorsichtig zu formulieren, vor allem in diesen politisch aufgeheizten Zeiten.~ */
= @36 /* ~[Jaheira]<CHARNAME>, ich muss mit Euch über die Eberfellbrücke und deren mystische Bedeutung in Bezug auf Euer göttliches Erbe sprechen. Wisst Ihr, was auf dieser Brücke geschah?~ */
COPY_TRANS_LATE bdjaheir warning_boarskyr_bridge
END

IF ~~ THEN warning_boarskyr_bridge_01
SAY @37 /* ~Die Eberfellbrücke ist der Ort, an dem Euer göttlicher Vater in einem Komplott durch Cyrik und Mask zu Tode kam.~ */
IF ~~ THEN + warning_boarskyr_bridge_02
END

IF ~~ THEN warning_boarskyr_bridge_02
SAY @38 /* ~Diese Brücke ist Zeuge einer unvorstellbaren göttlichen Magie geworden. Und das ganze ist noch nicht allzu lange her. Die Wasser des Flusses wurden ungenießbar - bis heute.~ */
++ @39 /* ~Erwartet Ihr, dass etwas mit mir auf der Brücke passieren wird?~ */ + warning_boarskyr_bridge_04
++ @40 /* ~Wollt Ihr mich davon abhalten, die Brücke zu passieren?~ */ + warning_boarskyr_bridge_03
++ @41 /* ~Nun, wir werden die Brücke überqueren, um zu Caelar und der Festung Drachenspeer zu kommen, etwas anderes bleibt uns nicht übrig.~ */ + warning_boarskyr_bridge_03
++ @42 /* ~Könnte es mich vielleicht schwächen, diese Stelle zu passieren? Das wäre ungünstig.~ */ + warning_boarskyr_bridge_04
++ @43 /* ~Worauf wollt Ihr hinaus?~ */ + warning_boarskyr_bridge_05
++ @44 /* ~Ich sehe nicht, warum das einen Einfluss auf mich haben sollte.~ */ + warning_boarskyr_bridge_05
END

IF ~~ THEN warning_boarskyr_bridge_03
SAY @45 /* ~Wir haben keinen anderen Weg zur Festung Drachenspeer, jedenfalls nicht, wenn wir in angemessener Zeit dorthin gelangen wollen.~ */
IF ~~ THEN + warning_boarskyr_bridge_05
END

IF ~~ THEN warning_boarskyr_bridge_04
SAY @46 /* ~Ob etwas mit Euch auf der Brücke geschehen wird weiß niemand zu sagen, ich halte die Wahrscheinlichkeit dafür für sehr gering. Unter... unter Harfnern geht das Gerücht um, dass Bhaalkinder im Geheimen diese Brücke als Ort aufsuchen in dem Versuch, sich die Essenz Bhaals einzuverleiben. Wenn ein bloßes Aufsuchen der Brücke dazu ausreichen würde, hätte es die Welt sicher schon erfahren.~ */
IF ~~ THEN + warning_boarskyr_bridge_05
END

IF ~~ THEN warning_boarskyr_bridge_05
SAY @47 /* ~Es gibt noch viele, die sich an die Bedeutung dieses Ortes erinnern - die Brücke selbst erinnert daran. Die, die von Eurem Bhaalerbe gehört haben und Euch an diesem Ort sehen werden vielleicht nicht wissen, was sie davon halten sollen. Sie werden argwöhnen, Ihr suchtet nach Reminiszenzen von Bhaals göttlicher Macht.~ */
IF ~Global("C#stbb_bdjaheir_39","GLOBAL",1)~ THEN + warning_boarskyr_bridge_06
IF ~Global("C#stbb_bdjaheir_32","GLOBAL",1)~ THEN + warning_boarskyr_bridge_08
END

IF ~~ THEN warning_boarskyr_bridge_06
SAY @48 /* ~Stellt einfach sicher, dass Ihr die Brücke möglichst zügig und unauffälllig passiert, wenn die Zeit kommt. Keine Zeit für Rundgänge - nicht, solange die Koalition mit Euch läuft, versteht Ihr?~ */
COPY_TRANS bdjaheir 39
END

IF ~~ THEN warning_boarskyr_bridge_07
SAY @49 /* ~Gut, dann wisst Ihr über den historischen Wert dieses Ortes mit Bezug auf Euer Bhaalerbe.~ */
IF ~Global("C#stbb_bdjaheir_39","GLOBAL",1)~ THEN + warning_boarskyr_bridge_06
IF ~Global("C#stbb_bdjaheir_32","GLOBAL",1)~ THEN + warning_boarskyr_bridge_08
END

IF ~~ THEN warning_boarskyr_bridge_08
SAY @48 /* ~Stellt einfach sicher, dass Ihr die Brücke möglichst zügig und unauffälllig passiert, wenn die Zeit kommt. Keine Zeit für Rundgänge - nicht, solange die Koalition mit Euch läuft, versteht Ihr?~ */
COPY_TRANS bdjaheir 32
END
END //APPEND

/* in Bridgefort: if Jaheira is dead, Khalid will say something */

/*
IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57967 /* ~Th-thank you, <CHARNAME>. Fate has smiled on us by sending you here.~ [BD57967] */
*/

I_C_T bdkhalid 45 C#stbb_bdkhalid_45
== bdkhalid IF ~Global("C#stbb_bdjaheir_39","GLOBAL",0)
Global("C#stbb_bdjaheir_32","GLOBAL",0)~ THEN @50 /* ~<CHARNAME>, noch ein Wort im Stillen. Ich muss Euch warnen - die Brücke hat g-große historische Bedeutung als der Ort, an dem Bhaal seinen Tod gefunden hat und so manches machthungrige Bhaalkind ist bereits hierher gepilgert... Überquert die Brücke möglichst ohne großes Aufsehen - Euch hier zu sehen könnte manchem den falschen Eindruck g-geben.~ */
END 

/* Flaming Fist soldiers and NPCs will react after the incident. */

BEGIN c#stff24

/* first version - PC takes in all the pain himself. */
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",6) AreaCheck("bd2000")~ THEN after_incident_at_bridge
SAY @59 /* ~<CHARNAME>! Are you alright? What happened here?~ */
++ @65 /* ~What can I say. I had a vision, there was Bhaal's sign on the ground...~ */ + after_incident_at_bridge_07
++ @66 /* ~I feel a bit dizzy.~ */ + after_incident_at_bridge_01
++ @67 /* ~That is a very good question, indeed.~ */ + after_incident_at_bridge_07
++ @68 /* ~It's nothing of your concern. Let's move on.~ */ + after_incident_at_bridge_04
END

IF ~~ THEN after_incident_at_bridge_01
SAY @69 /* ~There will be a cleric to tend to you if there is need.~ */
IF ~~ THEN + after_incident_at_bridge_07
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",7)~ THEN + after_incident_at_bridge_08
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",8)~ THEN + after_incident_at_bridge_09
END

IF ~~ THEN after_incident_at_bridge_02
SAY @70 /* ~This is the sign of Bhaal - god of murder! And it appeared right around you - as if it was meant to be! Is it - is it true? The rumors that you are a child of Bhaal, just like Sarevok?~ */
IF ~~ THEN + after_incident_at_bridge_10
END

IF ~~ THEN after_incident_at_bridge_03
SAY @71 /* ~This is the sign of Bhaal - god of murder! And it appeared right around you - around <CHARNAME>, bhaalchild by <PRO_HISHER> own accord!~ */
IF ~~ THEN + after_incident_at_bridge_10
END

IF ~~ THEN after_incident_at_bridge_04
SAY @72 /* ~This is not nothing, on the contrary. This was most unsettling!~ */
IF ~~ THEN + after_incident_at_bridge_07
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",7)~ THEN + after_incident_at_bridge_08
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",8)~ THEN + after_incident_at_bridge_09
END

/* second option - PC guides all the pain into the waters. */
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",7) AreaCheck("bd2000")~ THEN after_incident_at_bridge_05
SAY @60 /* ~Is everyone alright? <CHARNAME>! What happened here?~ */
++ @63 /* ~I had a vision of Bhaal's death and there was a lot of magic energy - I managed to deflect it into the foul waters of the river.~ */ + after_incident_at_bridge_08
COPY_TRANS c#stff24 after_incident_at_bridge
END

/* third option - PC guides all the pain into the bystanders. */
IF ~Global("C#stbb_BoareskyrbridgeScene","GLOBAL",8) AreaCheck("bd2000")~ THEN after_incident_at_bridge_06
SAY @61 /* ~They... they are all dead! <CHARNAME> - what happened here?~ */
++ @64 /* ~I had a vision of Bhaal's death and there was a lot of magic energy - I managed to deflect it, but it seems the others weren't strong enough.~ */ + after_incident_at_bridge_09
COPY_TRANS c#stff24 after_incident_at_bridge
END

/* first version - PC takes in all the pain himself. */
IF ~~ THEN after_incident_at_bridge_07
SAY @73 /* ~A surge of magic energy was released, but I do not feel it on you any more. It seems you were the only one being hit by it. Feeling it was frightening, to say the least.~ */
IF ~~ THEN + after_incident_at_bridge_02
IF ~Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN + after_incident_at_bridge_03
END

/* second option - PC guides all the pain into the waters. */
IF ~~ THEN after_incident_at_bridge_08
SAY @74 /* ~A surge of magic energy was reliesed, knocking all of us from our feet, but I do not feel it any more. Feeling it was frightening, to say the least.~ */
IF ~~ THEN + after_incident_at_bridge_02
IF ~Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN + after_incident_at_bridge_03
END

/* third option - PC guides all the pain into the bystanders. */
IF ~~ THEN after_incident_at_bridge_09
SAY @75 /* ~A surge of magic energy was released, hitting and *killing* nearly all of us! I do not feel the power any more - it seems to be done with causing destruction and death. What... what a frightening thing to happen!~ */
IF ~~ THEN + after_incident_at_bridge_02
IF ~Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN + after_incident_at_bridge_03
END

EXTEND_TOP c#stff24 after_incident_at_bridge
++ @62 /* ~I had a vision of Bhaal's death and took in all the pain...~ */ + after_incident_at_bridge_01
END

CHAIN
IF ~~ THEN c#stff24 after_incident_at_bridge_10
@76 /* ~Everyone saw the sign of Bhaal painting itself on the ground around you. I fear what happened here will be the source of much speculation and rumors. Let us move on and leave this place.~ */ DO ~IncrementGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",3)~ //->9, -> 10, -> 11
== bdcorwij IF ~InMyArea("Corwin") InParty("Corwin") !StateCheck("Corwin",CD_STATE_NOTVALID)
Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",1)~ THEN @0 /* [Captain Corwin]Just great. - Let us get you out of here as quickly as possible. Show is over, folks! */
== bdcorwij IF ~InMyArea("Corwin") InParty("Corwin") !StateCheck("Corwin",CD_STATE_NOTVALID)
Global("C#stbb_BhaalHeritageAnnounced","GLOBAL",0)~ THEN @1 /* [Captain Corwin]So it is true - your heritage was revealed to everyone. What a mess. We need to get you out of here as quickly as possible. Let's go! */
== bdjaheij IF ~InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2 /* [Jaheira]I do not understand what happened here. You are not the first child of Bhaal crossing this bridge - but maybe the most powerful one? */
== bdkhalij IF ~InMyArea("Khalid") InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID) InMyArea("Jaheira") InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3 /* [Khalid]This was unusual indeed. */
== bdkhalij IF ~InMyArea("Khalid") InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID) OR(3)
!InMyArea("Jaheira") !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4 /* [Khalid]What an unusual occurrence. You are a special child of B-bhaal, <CHARNAME>! */
== bddynahj IF ~InMyArea("Dynaheir") InParty("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @5 /* [Dynaheir]To see the mark of the Lord of Murder so plainly... */
== bdminscj IF ~InMyArea("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @6 /* [Minsc]Woah! Minsk had to hold on to Boo, or he would have been swept away from the magic blast! */
== bdglintj IF ~InMyArea("Glint") InParty("Glint") !StateCheck("Glint",CD_STATE_NOTVALID)~ THEN @7 /* [Glint]I'll - I'll be alright in a moment. When I'm done scaping myself from the pavement. What... what *was* that? */
== bdrasaaj IF ~InMyArea("Rasaad") InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @8 /* [Rasaad]Something seem to have been awoken that should have stayed dormant. Why now? */
== bdbaeloj IF ~InMyArea("Baeloth") InParty("Baeloth") !StateCheck("Baeloth",CD_STATE_NOTVALID)~ THEN @9 /* [Baeloth]Wait, that was it? Where is the clarion call? The godly planetars, flying circles in a fiery sky? Disappointing. */
== bdviconj IF ~InMyArea("Viconia") InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10 /* [Viconia]What happened to you, <CHARNAME>? A lot of magic was released here. */
== bdvoghij IF ~InMyArea("Voghiln") InParty("Voghiln") !StateCheck("Voghiln",CD_STATE_NOTVALID)~ THEN @11 /* [Voghiln]Hoh! This was a frightening thing, ya? */
== bdmkhiij IF ~InMyArea("MKhiin") InParty("MKhiin") !StateCheck("MKhiin",CD_STATE_NOTVALID)~ THEN @12 /* [MKhiin]So much magic - so much power. You, <PRO_RACE>, you draw it all to you. */
== bdedwinj IF ~InMyArea("Edwin") InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @13 /* [Edwin]What a spectlacle! Yes, not bad, not bad. (For a godly display, that is.) */
== bdsafanj IF ~InMyArea("Safana") InParty("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @14 /* [Safana]Don't tell me this was a *godly* spectacle. Come on! */
== bddornj IF ~InMyArea("Dorn") InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @15 /* [Dorn]I felt it! I felt the power, the surge of godly magic flowing through all of us. The Lord of Murder's power! */
== bdneeraj IF ~InMyArea("Neera") InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @16 /* [Neera]It wasn't me! I swear! Er, what was that? */
== bdimoen IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @17 /* ~[Imoen]It was like you were marked and stamped! Like you were *claimed* somehow. It was scary!~ */ DO ~SetGlobal("C#stbb_ImoenComment","GLOBAL",1)~
EXIT

/* in big camp - Marshal Nederlok at entrance of camp */
/*
with Corwin in group:
*/
I_C_T3 BDCORWIJ 137 C#stbb_BDCORWIJ_137
== bdnederl @77 /* ~What the hell happened at Boareskyr Bridge? - Save the words, Captain, I already received report. This was unfavorable, to say the least.~ */
== bdcorwij @78 /* ~I'll take full responsibility, Marshal. We had no other choice but to cross there - and no way of knowing *this* would happen.~ */
== bdnederl @79 /* ~Of course, Captain. We will talk about this another time.~ */
END

/* officers will comment on this - compatible with Road to Discovery! */
/*
bdnederl
IF ~  GlobalLT("bd_plot","global",305)
NearLocation(Myself,885,1475,5)
AreaCheck("bd3000")
~ THEN BEGIN 24 // from:
  SAY #37525 /* ~General Haither Stonehand, Torsin Cedric de Lancie, allow me to present the hero of Baldur's Gate.~ [BD37525] */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",305)
~ EXTERN ~BDSTONEH~ 16
END
*/

I_C_T3 bdnederl 24 C#stbb_bdnederl_24
== bddelanc @80 /* ~[Torsin De Lancie]Who released some super magic surge at Boareskyr Bridge because <PRO_HESHE> is a child of Bhaal himself, appearently! Warum muss der Held von Baldurs Tor ausgerechnet selbst ein Bhaalkind sein!~ */
== bdnederl @81 /* ~[Marshal Nederlok]We were all shocked when we heard about the incident at the bridge, I have to admit that. But let's keep in mind that <CHARNAME> has proven <PRO_HISHER> worth in the fight against Sarevok, let us not forget that.~ */
END
