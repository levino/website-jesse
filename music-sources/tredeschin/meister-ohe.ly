\version "2.24"
\language "deutsch"


\paper { indent = 0 }

% Papagei
\score {
  \new Staff \with { instrumentName = "Papagei" } {
    \relative c'' {
      \key g \major \time 4/4
      g4 g g g | g g g g | g g g g | g2 r2 |
    }
    \addlyrics {
      Meis -- ter, o -- he! Meis -- ter, o weh!
      Komm he -- raus aus dem Haus, der Tre -- de -- schin hat's bös im Sinn!
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
      Tre -- de -- schin -- nnn, wo -- hin -- nnn? Wann kommst du wie -- der?
    }
  }
  \layout {}
}

% Tredeschin
\score {
  \new Staff \with { instrumentName = "Tredeschin" } {
    \relative c'' {
      \key g \major \time 4/4
      g4 g g g | g g g g | g g g g | g2 r2 |
    }
    \addlyrics {
      Halt dich be -- reit, zu je -- der Zeit komm ich zu -- rück und mach mein Glück!
    }
  }
  \layout {}
}
