\version "2.24"
\language "deutsch"
\header {
  title = "Der Winter ist ein rechter Mann"
  composer = "P. Appenzeller"
  poet = "Text: M. Claudius"
}
\paper {
  left-margin = 15\mm
  right-margin = 15\mm
}

verseOne = \lyricmode {
  Der _ Win -- ter ist ein _ rech -- ter Mann,
  kern -- fest und auf die Dau -- er,
  sein Fleisch fühlt sich wie Ei -- sen an
  und scheut _ nicht süß _ noch sau -- er.
}

verseTwo = \lyricmode {
  Er _ zieht sein Hemd im _ Frei -- en an
  und läßt's vor -- her nicht wär -- men
  und spot -- tet ü -- ber Fluß im Zahn
  und Grim _ -- men in _ den  Där -- men.
}

verseThree = \lyricmode {
  Aus Blu -- men und aus Vo -- gel -- sang
  weiß er sich nichts zu ma -- chen,
  haßt war -- men Drang und war -- men Klang
  und al -- le war -- men Sa -- chen.
}

verseFour = \lyricmode {
  Doch wenn die Füch -- se bel -- len sehr,
  wenn's Holz im O -- fen knit -- tert
  und um den O -- fen Knecht und Herr
  die Hän -- de reibt und zit -- tert;
}

verseFive = \lyricmode {
  wenn Stein und Bein vor Frost zer -- bricht
  und Teich' und See -- en kra -- chen:
  das klingt ihm gut, das haßt er nicht,
  dann will er sich tot -- la -- chen.
}

verseSix = \lyricmode {
  Sein Schloß von Eis liegt ganz hin -- aus
  beim Nord -- pol an dem Stran -- de;
  doch hat er auch ein Som -- mer -- haus
  im lie -- ben Schwei -- zer -- lan -- de.
}

verseSeven = \lyricmode {
  Da ist er denn bald dort, bald hier,
  gut Re -- gi -- ment zu füh -- ren.
  Und wenn er durch -- zieht, ste -- hen wir
  und sehn ihn an und frie -- ren.
}

melody = \relative c'' {
  \key g \major
  \partial 8*2
  h8 c |
  d4 h g a8h|
  c4 c c h |
  a4. d,8 d4 d |
  a'2 a4 a |
  g g fis fis
  e e d d
  e8 fis8 g4fis8 g a4
  g d' r4 d
  d8 c h4 c h8 a
  g4. fis8 e4 fis8 g8
  a4. g8 fis4 g8 a
  h c d h a2
  g r2

}

\score {
  <<
    \new Staff \with {
      instrumentName = "Violine 1"
      
    } {
      \melody
    }

    \new Staff {
      \set Staff.instrumentName = "Violine 2"
      \relative c'' {
        \key g \major
        \partial 8*2
        g8 a |
        h4g g fis8 g8|
        a4 g fis g |
        fis e d d|
        fis e d fis |
        e e d d
        cis cis d d
        c8 d e4 d8 e fis4
        g d r4 d
        h'8a g4 e fis
        g d c e
        fis e d fis
        g e fis d
        g2 r2

      }

    }
\new Staff \with {
      instrumentName = "Gesang"

    } {
      \new Voice = "gesang" {
        \melody
      }
    }

    \new Lyrics \with {
      stanza = "1."
    }
    \lyricsto "gesang" {
      \verseOne
    }

    \new Lyrics \with {
      stanza = "2."
    }
    \lyricsto "gesang" {
      \verseTwo
    }

  >>
  \layout {}
}