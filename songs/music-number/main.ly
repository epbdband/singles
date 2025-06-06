\version "2.24.4"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##t
\setOption naptaker.guitar-tuning \stringTuning <d, aes, d f a d'>
\setOption naptaker.paper-orientation #'portrait
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "henle"
\setOption naptaker.staff-size #18

\header {
  title = "Music Number"
  composer = \markup {
    \right-column {
      "Music by EPBD"
      "Title by LD"
    }
  }
  copyright = "© 2025 Eric Bailey"
  tagline = \markup {
    \center-column {
      \with-url #"https://epbd.bandcamp.com"
      \line {
        Recordings available @
        epbd.bandcamp.com
      }
      \with-url #"https://github.com/epbdband/"
      \line {
        More scores available @
        github.com/epbdband
      }
      \null
      \with-url #"https://lilypond.org"
      \line {
        Music engraving by LilyPond
        $(lilypond-version)
        \char ##x2014
        lilypond.org
      }
      \null
      \with-url #"https://github.com/epbdband/singles/commits/main/songs/music-number"
      \line {
        Last updated on $(strftime "%-d %B, %Y" (localtime (current-time)))
      }
    }
  }
}

\paper {
  two-sided = ##t
  %% print-first-page-number = ##t
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

Key = { \key aes \major }
Tempo = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\templateInit
  #'("meta" "guitar")
  #'(8 4 8)

%% \gridSetRange #'(3 . 3)

ope = {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
  \temporary \override Beam.color = #red
}

nope = {
  \revert NoteHead.color
  \revert Stem.color
  \revert Beam.color
}

%% \Naptaker
\napPaper
\napIncludes

theScore = <<
  %% \napVox
  %% \napChords
  \napGuitar
  %% \napDrums
>>

\score {
  \theScore

  \layout {
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark.extra-offset = #'(0 . 2)
    \override Score.TimeSignature.break-visibility = ##(#f #t #t)
    \override Score.VoltaBracket.thickness = #2
    \override Score.VoltaBracket.extra-offset = #'(0 . 1)
  }
}

\include "articulate.ly"

\score {
  \unfoldRepeats { \Tempo \articulate \theScore }
  \midi {}
}

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"
