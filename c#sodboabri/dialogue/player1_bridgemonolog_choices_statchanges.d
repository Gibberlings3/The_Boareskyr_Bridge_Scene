
I_C_T player1 %boareskyr_bridge_03% C#stbb_FirstBridgeChoice
== player1 @83 /* ~F�r einen Moment scheint es Euch, als s�het Ihr durch den Schleier aus Pein die Welt aus einer anderen Perspektive - der Perspektive eines Gottes: wie von weit weg und doch nah an allen, die um Euch stehen - mit einer Klarheit, wie Ihr sie noch nie vorher gesp�rt habt. Das Gef�hl vergeht und Ihr verliert das Bewusstsein.~ */ DO ~SetGlobal("C#stbb_StatChange","GLOBAL",1) ReallyForceSpellRES("c#stbbw1",Player1)~
END

I_C_T player1 %boareskyr_bridge_04% C#stbb_SecondBridgeChoice
== player1 @84 /* ~F�r einen Moment scheint es Euch, als h�ttet Ihr �bernat�rliche Behendigkeit - die Geschicklichkeit eines Gottes! - so behende gelingt es Euch, die zerst�rerische Welle an allen auf der Br�cke vorbei zu leiten.~ */ DO ~SetGlobal("C#stbb_StatChange","GLOBAL",2) ReallyForceSpellRES("c#stbbd1",Player1)~
END

I_C_T player1 %boareskyr_bridge_05% C#stbb_ThirdBridgeChoice
== player1 @85 /* ~F�r einen Moment f�hlt Ihr Euch standhaft wie von g�ttlicher Macht - w�hrend die Schreie der sterbenden Umstehenden zu Euch dringen steht Ihr wie ein Fels in der brandung, der durch nichts ersch�ttert werden kann.~ */ DO ~SetGlobal("C#stbb_StatChange","GLOBAL",3) ReallyForceSpellRES("c#stbbc1",Player1)~
END