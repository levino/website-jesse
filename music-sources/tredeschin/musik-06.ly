\version "2.24"
\language "deutsch"


\paper {
  indent = 0
}

melodieKoenig = \relative c'' {
  \key g \major
  \time 3/4
  g4 g g | g g g | g g g | g2. |
  g4 g g | g g g | g2. |
}

melodieSchreiber = \relative c'' {
  \key g \major
  \time 4/4
  g4 g g g | g g g g | g g g g | g2 r2 |
}

\score {
  <<
    \new Staff {
      \set Staff.instrumentName = "König"
      \melodieKoenig
    }
    \new Lyrics \lyricsto "gesang" {
      So bringt mir den Sän -- ger, Herr Schrei -- ber ge -- schwind,
      ich hö -- re ihn sin -- gen gar wun -- der -- lich Lied!
    }
  >>
  \layout {}
}

\score {
  <<
    \new Staff {
      \set Staff.instrumentName = "Schreiber"
      \melodieSchreiber
    }
    \new Lyrics {
      \lyricmode {
        Mein Kö -- nig, mein Herr -- scher, o hoch -- ver -- ehrt,
        ein Stall -- knecht ist's nur, der ist nicht viel Wert!
      }
    }
  >>
  \layout {}
}
