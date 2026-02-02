\version "2.24"
\language "deutsch"


\paper { indent = 0 }

\score {
  \new Staff \with { instrumentName = "Tredeschin" } {
    \relative c'' {
      \key g \major \time 4/4
      g4 g g g | g g g g | g2 r2 |
    }
    \addlyrics {
      Nim -- mer -- mehr, nim -- mer -- mehr, nim -- mer -- mehr!
    }
  }
  \layout {}
}
