INTERJECT player1 %boareskyr_bridge_02% C#stbb_BridgeChoices
== player1 @82 /* ~Ihr wisst nicht, welche Kr�fte auf Euch einwirken. Alles was Ihr in diesem Moment wisst ist, dass ihre Zerst�rungswut unb�ndig ist, wenn Ihr nicht versucht, sie aufzuhalten.~ */
END
++ @53 /* ~Mit aller Kraft, die Euch noch bleibt, �ffnet Ihr Euch f�r die Woge an Magie. All den Schmerz und das Leid nehmt Ihr auf Euch, darauf bedacht, dass keiner Eurer Begleiter unter der Welle aus Magie zu Schaden kommt.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",3)~ + boareskyr_bridge_03
++ @54 /* ~Ihr leitet die zerst�rerischen Kr�fte von Euch und allen Umstehenden fort, in die Br�cke, in den Himmel, in das verdorbene Wasser - m�glichst weg von allen, die sich am Ort befinden.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",4)~ + boareskyr_bridge_04
++ @55 /* ~Ihr stellt Euch der Woge an Magie nicht in den Weg. Im Gegenteil, Ihr leitet sie durch Euch hindurch, so dass sie ihre zerst�rerische Kraft um Euch herum entfalten kann - auf die Umstehenden um Euch auf der Br�cke.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",5)~ + boareskyr_bridge_05

APPEND player1

IF ~~ THEN boareskyr_bridge_03
SAY @56 /* ~Eine Woge an unb�ndigem Schmerz raubt Euch die Sinne.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

IF ~~ THEN boareskyr_bridge_04
SAY @57 /* ~Eine Woge an unb�ndigem Schmerz rollt �ber Euch, aber mit all' Eurer Kraft und Fertigkeit leitet Ihr sie �ber Euch und noch weiter �ber die Umstehenden. Ihr sp�rt, wie die Welle an Magie Euch alle streift und von den F��en st��t, um dann ohne gro�en Schaden anzurichten in die verfaulten Wasser des Flusses zu schie�en, das zu tosen und sprudeln beginnt.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

IF ~~ THEN boareskyr_bridge_05
SAY @58 /* ~Eine Woge an unb�ndigem Schmerz rollt �ber Euch, aber Ihr steht unbewegt in der Brandung, mit all' Eurer Kraft und Fertigkeit leitet Ihr sie durch Euch, lasst sie um Euch ihre Wucht entfalten. Ihr sp�rt, wie sie sich auf die Nahestehenden ausweitet und ihnen die Lebenskraft nimmt.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

END //APPEND