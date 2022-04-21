
/* the event: Player1 "monologue" */
/* part 1: before the video */
APPEND player1
IF WEIGHT #-1
~AreaCheck("bd2000") Global("C#stbb_BoareskyrbridgeScene","GLOBAL",1)~ THEN boareskyr_bridge_01
SAY @51 /* ~You walk across the bridge, place of such important historical value - especially to you, the Bhaalspawn. Ihr habt die Hälfte der Brücke passiert, als Ihr plötzlich spürt, wie es an Euch zu ziehen und zu zerren scheint. Euer Blick schweift auf die verdorbenen Wasser unter der Brücke, und Euch ist, als würden die faulen Wasser unter Euch brodeln. Ihr wollt Euch regen, etwas rufen, die anderen auf Eure Pein aufmerksam machen, aber kein Laut kommt über Eure Lippen. Die Blicke der beiden Statuen hinter Euch scheinen sich in Euren Nacken zu bohren als wären sie zum Leben erwacht. Mit alle Macht schafft Ihr es, Euren Blick zu wenden, doch statt der steinernen Ebenbilder der beiden Götter erfüllt eine Vision Euren Blick.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("bdcut28",TRUE)~ EXIT
END

/* part 2: after the video */
IF WEIGHT #-1
~AreaCheck("bd2000") Global("C#stbb_BoareskyrbridgeScene","GLOBAL",2)~ THEN boareskyr_bridge_02
SAY @52 /* ~Eine Vision von Bhaal, Eurem göttlichen Vater - getötet von Cyric und Mask in Form eines blutroten Schwertes. Ihr spürt, wie sich das Schwert ins Herz bohrt - nicht Bhaals, sondern Eures! Der Schmerz scheint Euch zu überwältigen, eine unbändige Welle an göttlicher Macht bricht über Euch herein.~ */
IF ~~ THEN DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",99) ClearAllActions() StartCutSceneMode() StartCutSceneEx("bdcut28",TRUE)~ EXIT
END

END //APPEND