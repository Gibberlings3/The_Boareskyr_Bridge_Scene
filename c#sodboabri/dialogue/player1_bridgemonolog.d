
/* the event: Player1 "monologue" */
/* part 1: before the video */
APPEND player1
IF WEIGHT #-1
~AreaCheck("bd2000") Global("C#stbb_BoareskyrbridgeScene","GLOBAL",1)~ THEN boareskyr_bridge_01
SAY @51 /* ~You walk across the bridge, place of such important historical value - especially to you, the Bhaalspawn. Ihr habt die H�lfte der Br�cke passiert, als Ihr pl�tzlich sp�rt, wie es an Euch zu ziehen und zu zerren scheint. Euer Blick schweift auf die verdorbenen Wasser unter der Br�cke, und Euch ist, als w�rden die faulen Wasser unter Euch brodeln. Ihr wollt Euch regen, etwas rufen, die anderen auf Eure Pein aufmerksam machen, aber kein Laut kommt �ber Eure Lippen. Die Blicke der beiden Statuen hinter Euch scheinen sich in Euren Nacken zu bohren als w�ren sie zum Leben erwacht. Mit alle Macht schafft Ihr es, Euren Blick zu wenden, doch statt der steinernen Ebenbilder der beiden G�tter erf�llt eine Vision Euren Blick.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("bdcut28",TRUE)~ EXIT
END

/* part 2: after the video */
IF WEIGHT #-1
~AreaCheck("bd2000") Global("C#stbb_BoareskyrbridgeScene","GLOBAL",2)~ THEN boareskyr_bridge_02
SAY @52 /* ~Eine Vision von Bhaal, Eurem g�ttlichen Vater - get�tet von Cyric und Mask in Form eines blutroten Schwertes. Ihr sp�rt, wie sich das Schwert ins Herz bohrt - nicht Bhaals, sondern Eures! Der Schmerz scheint Euch zu �berw�ltigen, eine unb�ndige Welle an g�ttlicher Macht bricht �ber Euch herein.~ */
IF ~~ THEN DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",99) ClearAllActions() StartCutSceneMode() StartCutSceneEx("bdcut28",TRUE)~ EXIT
END

END //APPEND