\version "2.24"
\language "deutsch"


\paper { indent = 0 }

% Tredeschin
\score {
  \new Staff \with { instrumentName = "Tredeschin" } {
    \relative c'' {
      \key g \major \time 4/4
      g4 g g g | g g g g | g g g g | g g g g | g2 r2 |
    }
    \addlyrics {
      Tut mit mir was ihr wollt, doch was ihr nicht ma -- chen sollt:
      Bin -- det mich nicht mit Stroh, denn das Stroh, das kit -- zelt so!
    }
  }
  \layout {}
}

% Zauberer
\score {
  \new Staff \with { instrumentName = "Zauberer" } {
    \relative c'' {
      \key g \major \time 4/4
      g4 g g g | g g g g | g2 r2 |
    }
    \addlyrics {
      Ge -- nau mit Stroh, ge -- nau mit Stroh, bin -- det ihn, den klei -- nen Floh!
    }
  }
  \layout {}
}
