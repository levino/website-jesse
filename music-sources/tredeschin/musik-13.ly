\version "2.24"
\language "deutsch"


\paper { indent = 0 }

% Duett
\score {
  \relative c'' {
    \key g \major \time 6/8
    g4 g8 g4 g8 | g4 g8 g4 g8 | g4. g4. |
    g4 g8 g4 g8 | g4 g8 g4 g8 | g4. r4. |
  }
  \addlyrics {
    He du! Hör auf! Die Deck ist weg! Was? Du ziehst!
    Ich zieh? Du! Nein! Hu -- uu.
  }
  \layout {}
}

% Chor
\score {
  \relative c'' {
    \key g \major \time 4/4
    g4 g g g | g g g g | g g g g | g g g g |
    g4 g g g | g g g g | g g g g | g2 r2 |
    g4 g g g | g g g g | g2 r2 |
  }
  \addlyrics {
    Sie keif -- ten und kie -- ben, sie hu -- ben und hie -- ben,
    von hü -- ben nach drü -- ben, das tatsch -- te, das klatsch -- te,
    das knall -- te, das schall -- te, bis end -- lich na -- nu,
    das Paar fin -- det Ruh.
    Plötz -- lich, o Schreck, die De -- cke war weg!
  }
  \layout {}
}
