INTERJECT player1 %boareskyr_bridge_02% C#stbb_BridgeChoices
== player1 @82 /* ~Ihr wisst nicht, welche Kräfte auf Euch einwirken. Alles was Ihr in diesem Moment wisst ist, dass ihre Zerstörungswut unbändig ist, wenn Ihr nicht versucht, sie aufzuhalten.~ */
END
++ @53 /* ~Mit aller Kraft, die Euch noch bleibt, öffnet Ihr Euch für die Woge an Magie. All den Schmerz und das Leid nehmt Ihr auf Euch, darauf bedacht, dass keiner Eurer Begleiter unter der Welle aus Magie zu Schaden kommt.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",3)~ + boareskyr_bridge_03
++ @54 /* ~Ihr leitet die zerstörerischen Kräfte von Euch und allen Umstehenden fort, in die Brücke, in den Himmel, in das verdorbene Wasser - möglichst weg von allen, die sich am Ort befinden.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",4)~ + boareskyr_bridge_04
++ @55 /* ~Ihr stellt Euch der Woge an Magie nicht in den Weg. Im Gegenteil, Ihr leitet sie durch Euch hindurch, so dass sie ihre zerstörerische Kraft um Euch herum entfalten kann - auf die Umstehenden um Euch auf der Brücke.~ */ DO ~SetGlobal("C#stbb_BoareskyrbridgeScene","GLOBAL",5)~ + boareskyr_bridge_05

APPEND player1

IF ~~ THEN boareskyr_bridge_03
SAY @56 /* ~Eine Woge an unbändigem Schmerz raubt Euch die Sinne.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

IF ~~ THEN boareskyr_bridge_04
SAY @57 /* ~Eine Woge an unbändigem Schmerz rollt über Euch, aber mit all' Eurer Kraft und Fertigkeit leitet Ihr sie über Euch und noch weiter über die Umstehenden. Ihr spürt, wie die Welle an Magie Euch alle streift und von den Füßen stößt, um dann ohne großen Schaden anzurichten in die verfaulten Wasser des Flusses zu schießen, das zu tosen und sprudeln beginnt.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

IF ~~ THEN boareskyr_bridge_05
SAY @58 /* ~Eine Woge an unbändigem Schmerz rollt über Euch, aber Ihr steht unbewegt in der Brandung, mit all' Eurer Kraft und Fertigkeit leitet Ihr sie durch Euch, lasst sie um Euch ihre Wucht entfalten. Ihr spürt, wie sie sich auf die Nahestehenden ausweitet und ihnen die Lebenskraft nimmt.~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("c#stbb28",TRUE)~ EXIT
END

END //APPEND