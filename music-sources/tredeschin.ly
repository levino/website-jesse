\version "2.24"
\language "deutsch"

\header {
  title = "TREDESCHIN"
  subtitle = "Ein Singspiel"
  tagline = ##f
}

\paper {
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  indent = 0\mm
  markup-system-spacing.basic-distance = #12
  system-system-spacing.basic-distance = #14
  score-markup-spacing.basic-distance = #14
}

% Hilfsfunktionen für Formatierung
#(define-markup-command (rolle layout props name) (markup?)
  (interpret-markup layout props
    #{\markup \bold \italic #name #}))

#(define-markup-command (erzaehler layout props text) (markup?)
  (interpret-markup layout props
    #{\markup \column {
      \vspace #0.5
      \justify { #text }
      \vspace #0.3
    } #}))

#(define-markup-command (dialog layout props rolle text) (markup? markup?)
  (interpret-markup layout props
    #{\markup \column {
      \vspace #0.3
      \line { \bold \italic #rolle \normal-text ": " }
      \justify { #text }
      \vspace #0.2
    } #}))

#(define-markup-command (liedtext layout props text) (markup?)
  (interpret-markup layout props
    #{\markup \column {
      \vspace #0.3
      \override #'(font-style . italic)
      \justify { #text }
      \vspace #0.3
    } #}))

#(define-markup-command (musikplatzhalter layout props nummer titel) (markup? markup?)
  (interpret-markup layout props
    #{\markup \column {
      \vspace #0.8
      \fill-line {
        \center-column {
          \box \pad-markup #0.5 {
            \concat { \bold { "Musik " #nummer } " — " \italic #titel }
          }
          \vspace #0.3
          \tiny \italic "(Noten hier einfügen)"
        }
      }
      \vspace #0.8
    } #}))

% ===== DAS SINGSPIEL =====

\markup \column {
  \vspace #1

  % Einleitung
  \erzaehler "Es waren einmal ein Mann und eine Frau, die hatten dreizehn Kinder. Als das dreizehnte geboren wurde, sagte der Vater zur Mutter:"

  \dialog "Vater" "Höre, Frau, ich weiß wahrhaftig nicht, wie der Bub heißen soll. Die Namen aller Verwandten haben wir bei den zwölf andern aufgebracht. Wie könnten wir ihn nur nennen?"

  \dialog "Mutter" "Weisst du, er ist der dreizehnte, und so nennen wir ihn eben Tredeschin."
}

\markup \musikplatzhalter "1" "Tredeschin..."

\markup \column {
  \erzaehler "Und wie die Zeit voranschritt, zeigte es sich, daß Tredeschin gescheiter war als alle andern zusammen."

  \erzaehler "Nur wachsen tat er nicht recht; er blieb immer der kleinste. Aber hell war wie keiner, und Geschichte wußte er und Sprüche und Worte."

  \erzaehler "Das war aber nicht alles. Tredeschin hatte eine Stimme, die sang so fein, wie die Vögelein im Walde zwitschern. Wenn er sang oder auf seiner Geige spielte, so blieben die Leute still und lauschten."
}

\markup \musikplatzhalter "3" "Fidel dum..."

\markup \column {
  \erzaehler "Tredeschin wollte die Welt sehen und eines schönes Tages sagte er zum Vater:"
}

\markup \musikplatzhalter "2" "Ins ferne Land..."

\markup \liedtext "\"Ins ferne Land, da zieht's mich hin, nach Frankreich folg ich meinem Sinn. Dem König will ich Stallknecht sein, bereiten Ross und Wagen fein. O Vater, Vater lass mich ziehn.\""

\markup \column {
  \erzaehler "Tredeschin wanderte über Berg und Tal, und kam in eine große und mächtige Stadt mit Türmen und Toren, ging geradewegs in eine ärmliche Herberge und fragte den Wirt:"

  \dialog "Tredeschin" "Wo kann ich den König finden? Ich will Dienste bei Hofe nehmen."

  \dialog "Der Wirt" "Ja, das will ich dir wohl sagen, Bürschlein, sieh dort drüben das goldene Haus, da ist der Palast, dort wohnt der König. Aber zuerst setz dich her und wart ein Weilchen; der Meisterknecht wird wohl bald aus dem Stall kommen, um die Kühe des Königs zu tränken, den kannst du fragen, ob eine Stelle für dich frei ist."

  \erzaehler "Tredeschin setzte sich nieder und wartete, aber um sich Kurzweil zu machen, nahm er seine Fiedel hervor und hub an zu spielen, und gleich war die Herberge voller Gäste die lauschten. Da kam gerade der alte Meisterknecht aus dem Stalle. Tredeschin nahm seine Kappe ab und sagte:"

  \dialog "Tredeschin" "Grüß Gott, Meister; habt ihr für mich Arbeit im Stall?"
}

\markup \musikplatzhalter "4" "Ich will zum König..."

\markup \liedtext "\"Ich will zum König, Diener will ich sein. Nimm mich mit dir und lass durchs Tor mich ein. Spielen will ich dir ein Stück, Arbeit ist mein Lebensglück; nimm mich mit dir und lass durchs Tor mich ein, ich will zum König, Diener will ich sein.\""

\markup \column {
  \dialog "Meisterknecht" "Ich will dich als Knecht annehmen."

  \erzaehler "Tredeschin war es wohl zufrieden. Er sah sich um im Stall, nahm einen Besen zur Hand und fegte, bis alles blitzsauber war. Dann machte er sich an den Krippen mit dem Futter zu schaffen."
}

\markup \musikplatzhalter "5" "Und er fegte..."

\markup \liedtext "\"Und er fegte, fegte, fegte bis alles blitzsauber war, und er fegte, fegte, fegte bis alles blitzsauber war. Dann hub er an zu singen, zu singen, das schallte, schallte, hallte, hallte, zur schönen Abendzeit...\""

\markup \column {
  \erzaehler "Und so ward Tredeschin als Stallknecht eingestellt. Und er tat seine Arbeit auch weiterhin so gut, daß alle ihn gern hatten. Allemal am Abend, wenn er die Kühe in den Schloßhof zur Tränke trieb, da sang er aus voller Brust, daß es nur so schallte. Einmal traf es sich, daß der König just am Fenster stand und den Gesang vernahm. Er rief dann schnell die Königin und die Prinzessin, damit auch sie die schöne Stimme hörten. Er fragte den Schreiber:"

  \dialog "König" "Wer ist der Sänger?"

  \dialog "Schreiber" "Der ist der neue Stallknecht."

  \dialog "Königin" "Es ist doch schade, einen solchen Sänger im Stall zu lassen; geh hinunter und ruf ihn herauf!"
}

\markup \musikplatzhalter "6" "So bringt mir den Sänger..."

\markup \liedtext "\"So bringt mir den Sänger, Herr Schreiber geschwind, ich höre ihn singen gar wunderlich Lied!\" \"Mein König, mein Herrscher, o hochverehrt, ein Stallknecht ist's nur, der ist nicht viel Wert!\""

\markup \column {
  \erzaehler "Tredeschin ging hinauf in den Saal, spielte und sang vor dem König."
}

\markup \musikplatzhalter "3" "Fidel dum (Wiederholung)"

\markup \column {
  \dialog "König" "Wißt ihr was, mein junger Freund, in den Stall lasse ich euch nicht zurück; ihr müßt bei mir hier im Schlosse bleiben, damit ich euch jederzeit hören kann."

  \erzaehler "Tredeschin war zufrieden, er spielte und sang für den König und dem Hofgesinde alle Tage, aber immer andere Lieder und neue Weisen. Alle mochten ihn gern, weil er immer willig war und heiteren Gemütes und der König ernannte ihn zum Obermusikmeister."

  \erzaehler "Der Königs Schreiber war aber neidisch und fürchtete, Tredeschin möchte am Ende gar noch Kanzler werden, denn das wäre er selber Leben gern geworden. Er ging mit sich zu rate, wie er Tredeschin verderben könnte. Eines Tages trat er vor den König und sprach:"
}

\markup \musikplatzhalter "7" "Herr, ihr seid König..."

\markup \liedtext "\"Herr, ihr seid König und eines fehlt euch noch: ein wackeres Leibross, einen Schimmel weiss ich so weiss wie der Schnee, so schnell wie der Wind. Der Zauberer, Zauberer hält ihn verwahrt, kein Mensch vermag ihn zu holen.\""

\markup \column {
  \erzaehler "Wie der König das hörte, wurde er ganz krank vor Begierde nach dem Zauberrosse. Die köstlichsten Speisen auf der Tafel ließ er stehen, des Nachts lag er schlaflos. Immerfort mußte er nur an den Schimmel des großen Zauberers denken, weiß wie frischer Schnee und schnell wie der Wind."

  \erzaehler "Zuletzt ließ er im ganzen Lande kund tun, wer ihm den Schimmel bringe, der solle die Prinzessin zur Frau bekommen und dazu das halbe Reich erhalten. Das hörte auch Tredeschin. Er ging zum König und sagte:"
}

\markup \musikplatzhalter "8" "Ich hole ihn, mein König..."

\markup \liedtext "\"Ich hole ihn, mein König, gebt Zeit mir zu Nacht, der Schimmel wird bald hier im Schloß gebracht: Wolle und Flaschen vom feinsten Wein sollen die besten Helfer mir sein.\""

\markup \column {
  \erzaehler "Der König war froh, die Königin aber und noch mehr die Prinzessin wollten Tredeschin nicht ziehen lassen."

  \dialog "Prinzessin" "Er ist noch zu jung und zart! Und wer wird uns singen und spielen, wenn Tredeschin nicht wiederkommt?"

  \erzaehler "Aber das half alles nichts, Tredeschin bat sie, guten Mutes zu bleiben und machte sich singend auf den Weg. Abends spät kam er zur Behausung des großen Zauberers."

  \erzaehler "Nachdem er den Stall gefunden hatte, fragte er die Knechte, ob er nicht dort schlafen dürfte."

  \dialog "Tredeschin" "Ich bin ein armer Weinhändler und schon weit gereist heute. Gern will ich euch die Schlafstatt mit einem Tropfen Bestenweins vergelten."

  \erzaehler "Die Knechte ließen ihn ein und stellten ihm ein Nachtmal auf. Tredeschin lobte das prächtige Vieh über die Maßen."

  \dialog "Tredeschin" "Aber habt ihr denn gar keine Pferde?"

  \dialog "Oberknecht" "Freilich, freilich; die stehen in einem andern Stall."

  \erzaehler "Tredeschin tat seine Flasche auf, alle saßen zu und begannen wacker zu bechern."
}

\markup \musikplatzhalter "9" "Trinket doch den guten Wein..."

\markup \liedtext "\"Trinket doch den guten Wein, legt euch hin, ich schenk euch ein!\" \"Oh, der ist gut, gut, so gut! Du bist ein Fremd, der wohl uns tut!\""

\markup \column {
  \dialog "Oberknecht" "Komm mit mir, guter Freund; jetzt sollt ihr unsere Rosse sehen. Es ist mir zwar bei Strafe von meinem Herrn verboten, aber euch zuliebe tu ich es diesmal."

  \erzaehler "Tredeschin lobte die Rosse sehr."

  \dialog "Tredeschin" "Habt ihr keine Schimmel?"

  \dialog "Oberknecht" "Das hat euch der Teufel gesagt; ich will euch auch unsern Schimmel zeigen, den Kopf wird es mich nicht kosten."

  \erzaehler "Er nahm Tredeschin beiseite, führte ihn in einen kleinen Stall, dort stand der Schimmel des Zauberers, weiß wie Schnee und schnell wie der Wind. Nochmal schenkte Tredeschin von besten Wein ein und bald darauf waren alle fest eingeschlafen. Sie saßen da wie Holzklötze, die Köpfe auf dem Tisch."

  \erzaehler "Jetzt nahm Tredeschin sein Wollband, ging in den Stall und umwickelte die Hufe des Schimmels. Er führte ihn vorsichtig in den Hof, schwang sich hinauf und ritt von dannen."

  \erzaehler "Nun wäre es gut gegangen, aber der Papagei des Zauberers hatte alles gesehen und fing an aus Leibeskräften zu schreien:"
}

\markup \musikplatzhalter "10" "Meister ohe!"

\markup \liedtext "\"Meister ohe! Meister o weh! Komm heraus aus dem Haus, der Tredeschin hat's bös im Sinn!\""

\markup \column {
  \erzaehler "Der Zauberer erwachte, sprang im Hemd ans Fenster und schrie hinunter:"

  \dialog "Zauberer" "Tredeschin wohin, wohin? Wann kommst du wieder?"

  \dialog "Tredeschin" "Halt dich bereit! Zu jeder Zeit komm ich zurück und mach mein Glück!"

  \erzaehler "Am nächsten Morgen sah der Schreiber Tredeschin im Schloßhof stehen, mitsamt dem Schimmel, weiß wie Schnee und schnell wie der Wind, da wurde er grün vor Neid und spie Gift und Galle. Aber der König und die Königin waren voller Freude, und erst die Prinzessin!"

  \erzaehler "Der König hängte ihm eine schwere goldene Kette um."

  \erzaehler "Aber von dem versprochenen Lohn war nicht mehr die Rede, und Tredeschin getraute sich nicht, danach zu fragen."

  \erzaehler "So verging die Zeit. Da trat der Schreiber wieder vor den König und sprach:"
}

\markup \musikplatzhalter "11" "Mein König, mein Herrscher..."

\markup \liedtext "\"Mein König, mein Herrscher, o hochverehrt, ich wüsste noch mehr, das wäre viel wert. Eine Decke weiss ich, so blau wie der Himmel, bestickt mit Sonne, Mond und Sternen. Der Zauberer, Zauberer hält sie verwahrt, kein Mensch vermag sie zu holen!\""

\markup \column {
  \erzaehler "Wie der König das hörte, da wurde er wieder ganz krank vor Begierde nach der Zauberdecke und zuletzt ließ er wieder im ganzen Lande kund tun, wer ihm die Decke bringe, der erhalte seine Tochter zur Frau und obendrein das halbe Königreich."

  \erzaehler "Tredeschin ging nochmals zum König, versprach die Decke zu beschaffen, und bat um eine Leiter und um eine Schnur."
}

\markup \musikplatzhalter "12" "Ich hole sie mein König..."

\markup \liedtext "\"Ich hole sie mein König, gebt Zeit mir zur Nacht, die Decke wird bald hier im Schloß gebracht! Gebet mir Leiter und Schnur dazu, so bring ich Euch die Decke im Nu!\""

\markup \column {
  \erzaehler "Spät in der Nacht erreichte das Schloß des Zauberers, leise legte er die Leiter an den Fenstersims; laut hörte man den Zauberer schnarchen, offenbar schlief er fest und tief. Tredeschin klomm vorsichtig von Sprosse zu Sprosse und schwang sich in die Kammer hinein."

  \erzaehler "Auf den Zehen schlich er zum Bett und band die Schnur an einen Zipfel der Bettdecke fest. Dann kletterte er schnell wieder hinunter und tat einen Ruck an der Schnur. Da fuhr der Zauberer ärgerlich auf und schrie:"
}

\markup \musikplatzhalter "13" "He du! Hör auf!"

\markup \liedtext "\"He du! Hör auf! Die Deck ist weg! Was? Du ziehst? Ich zieh? Du! Nein!\""

\markup \column {
  \erzaehler "Tredeschin wartete ein Weilchen, und als sie wieder eingeschlafen waren, da zupfte er wieder an der Schnur. Jetzt fuhr die Frau auf und zornig kreischte:"

  \dialog "Frau" "He du, jetzt hör aber auf, an der Decke zu zerren!"

  \dialog "Zauberer" "Wie? Nicht einmal in der Nacht hat man Ruhe vor dir!"

  \erzaehler "Chor, gesprochen: \"Sie keiften und kieben, sie huben und hieben, von hüben nach drüben, das tatschte, das klatschte, das knallte, das schallte, bis endlich nanu, das Paar findet Ruh. Sie keiften und kieben, sie huben und hieben, von hüben nach drüben, das tatschte, das klatschte, das knallte, das schallte, bis plötzlich, o Schreck, die Decke war weg!\""

  \erzaehler "Da tat Tredeschin einen raschen Ruck und die Decke flog zum Fenster heraus, ohne daß der Zauberer oder seine Frau in ihrer Wut es bemerkten."

  \erzaehler "Tredeschin nahm die Decke und lief davon, als er an der Küche vorbeikam sah ihn der Papagei und schrie aus Leibeskräfte:"
}

\markup \musikplatzhalter "14" "Meister ohe! (Wiederholung)"

\markup \liedtext "\"Meister ohe! Meister o weh! Komm heraus aus dem Haus, der Tredeschin hat's bös im Sinn!\""

\markup \column {
  \dialog "Zauberer" \italic "(sprang im Hemd am Fenster)" "Tredeschin, wohin, wohin? Wann kommst du wieder?"

  \dialog "Tredeschin" "Halt dich bereit! Zu jeder Zeit komm ich zurück und mach mein Glück!"

  \erzaehler "Am nächsten Morgen sah der Schreiber Tredeschin im Schloßhof stehen, mitsamt der blauen Decke, worauf die Sonne, der Mond und die Sterne gestickt waren, da wurde er rot und blau vor Wut. Der König und die Königin freuten sich sehr, am meisten aber die Prinzessin."

  \erzaehler "Vor dem ganzen Hofgesellschaft dankte der König Tredeschin und steckte ihm einen goldenen Siegelring an den Finger; aber von dem versprochenen Lohn war nicht mehr die Rede, und Tredeschin getraute sich nicht, danach zu fragen."

  \erzaehler "So verging die Zeit. Da trat der Schreiber wieder vor den König und sprach:"
}

\markup \musikplatzhalter "15" "Mein König, mein Herrscher (Vogel)..."

\markup \liedtext "\"Mein König, mein Herrscher, o hochverehrt, ich wüsste noch mehr, das wäre viel Wert. Ein sprechender Vogel, ein Papagei, der fehlet Euch noch, den holt Euch herbei! Der Zauberer, Zauberer hält ihn verwahrt, kein Mensch vermag ihn zu holen!\""

\markup \column {
  \erzaehler "Und wieder wurde der König krank vor Begierde nach dem Zaubervogel, alles ging wie die andern Male, und er ließ kund tun, wer ihm den Zaubervogel bringe, der bekomme seine Tochter zur Frau und obendrein das halbe Reich. Tredeschin dachte:"

  \dialog "Tredeschin" "War das Glück die beiden anderen Male mit dir, so wird es dir jetzt gewiß nicht fehlen."

  \erzaehler "Er ging zum König und sagte, er wolle den Vogel holen und bat um einen Beutel mit Würfelzucker."
}

\markup \musikplatzhalter "16" "Ich hole ihn, mein König (Vogel)..."

\markup \liedtext "\"Ich hole ihn, mein König, gebt Zeit mir zur Naht, der Vogel wird bald hier im Schloß gebracht! Gebet mir Würfel von Zucker fein, so bring ich Euch den Papagei heim!\""

\markup \column {
  \erzaehler "Er kleidete sich wie ein Bettler und machte sich auf den Weg. Spät in der Nacht erreichte das Schloß des Zauberers, ging in die Küche und sagte zur Köchin:"

  \dialog "Tredeschin" "Ach, ich bin so hungrig; gebt mir um Gotteswillen etwas zu essen; schon viele Tagen habe ich nichts Warmes mehr im Magen gehabt."

  \erzaehler "Die Köchin hatte Mitleid und gab ihm einen Teller warmer Suppe. Wie er nun da am Tische saß und aß, da kam der Stallknecht herein und rief:"
}

\markup \musikplatzhalter "17" "Ho, ho, fasst den Dieb..."

\markup \liedtext "\"Ho, ho, fasst den Dieb, fasst den Dieb! Das ist der Fant, der Tredeschin, Tredeschin, der unserm Herrn den Schimmel gestohlen, der unserm Herrn die Decke gestohlen! Ho, ho, fasst den Dieb, fasst den Dieb!\""

\markup \column {
  \erzaehler "Auf sein Geschrei kamen die andern Knechte und Diener herbeigeeilt, und zuletzt kam der große Zauberer selbst. Kaum sah er Tredeschin, so brüllte er:"
}

\markup \musikplatzhalter "18" "Packt ihn, bindet ihn..."

\markup \liedtext "\"Packt ihn, bindet ihn, Tredeschin, Tredeschin, Pein und Marter auszustehen! Seht ihn auf den Knien flehen! Packt ihn, packt ihn!\""

\markup \column {
  \erzaehler "Tredeschin fiel auf die Knie und flehte:"
}

\markup \musikplatzhalter "19" "Tut mit mir was ihr wollt..."

\markup \liedtext "\"Tut mit mir was ihr wollt, doch was ihr nicht machen sollt: bindet mich bitte nicht mit Stroh, denn das Stroh, das kitzelt so, das kitzelt so!\""

\markup \column {
  \dialog "Zauberer" "Genau mit Stroh, genau mit Stroh, bindet ihn, den kleinen Floh!"

  \erzaehler "Doch um Mitternacht, Tredeschin hat sich losgemacht und packt eins, zwei, drei, den Papagei und springt gradaus zum Fenster hinaus! Er trat zum Käfig und fragte den Papagei mit leiser Stimme:"

  \dialog "Tredeschin" "Papagei, willst du Zuckerstückchen?"

  \erzaehler "Der krächzte: \"Gib nur her, gib nur her!\" und fraß eins um das andere, während Tredeschin mit dem Käfig eilig durch das Fenster stieg und davonlief. Da aber rief der Papagei:"
}

\markup \musikplatzhalter "20" "Meister ohe! (letzte Wiederholung)"

\markup \liedtext "\"Meister ohe! Meister o weh! Komm heraus aus dem Haus, der Tredeschin hat's bös im Sinn!\""

\markup \column {
  \dialog "Zauberer" \italic "(sprang im Hemd am Fenster)" "Tredeschin, wohin, wohin? Wann kommst du wieder?"

  \dialog "Tredeschin" \italic "Nimmermehr!"

  \erzaehler "Und fort war er mitsamt dem Papagei. Am nächsten Morgen sah der Schreiber Tredeschin im Schloßhof stehen, mitsamt dem Papagei und nun wußte der Schreiber sich auch kein Rat mehr und verschwand auf niemehr wiedersehen."

  \erzaehler "Da war die Freude groß, der König nahm seine Krone, setzte sie Tredeschin aufs Haupt und legte die Hand der Prinzessin in die seine. Es wurde Hochzeit gefeiert; Tredeschin und die Prinzessin lebten glücklich bis am Ende ihrer Tage."
}

\markup \musikplatzhalter "21" "Tredeschin ist König!"

\markup \column {
  \vspace #2
  \fill-line { \bold "— ENDE —" }
}
