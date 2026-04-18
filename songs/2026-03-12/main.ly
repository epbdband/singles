\version "2.24.4"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##t
\setOption naptaker.guitar-tuning \stringTuning <d, a, d f a d'>
\setOption naptaker.guitar-capo #3
\setOption naptaker.bass-tabs ##t
\setOption naptaker.paper-orientation #'portrait
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "henle"
\setOption naptaker.staff-size #18

\header {
  title = "2026.03.12"
  composer = \markup {
    %% \combine
      \right-column {
        "Eric Bailey"
        "Kay Heino"
        "Preston Drum"
      }
%{
      \with-color #red
        \path #0.25 #'((moveto 9 2)
                       (curveto 9 2 6 4 3 2)
                       (curveto 3 2 -3 -1.5 0.5 -5)
                       (lineto 9.5 -4)
                       ;; (moveto 9.5 -1.5)
                       (lineto 9.5 -1.5)
                       (lineto 3.5 -0.5)
                       (lineto 5 -1.5)
                       ;; (moveto 5 -4)
                       (lineto 5 -4)
                       (lineto 10 -5)
                       (closepath))
%}
  }
  copyright = "© 2026 Eric Bailey"
  tagline = \markup {
    \center-column {
      %{
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
      %}
      \with-url #"https://lilypond.org"
      \line {
        Music engraving by LilyPond
        $(lilypond-version)
        \char ##x2014
        lilypond.org
      }
      \null
      %% \with-url #"https://github.com/epbdband/singles/commits/main/songs/motorik"
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

Key = { \key c \major }
Tempo = { \tempo "Andante" 2 = 72 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\templateInit
  #'("meta" "guitar" "bass" "drums up" "drums down")
  #'(8 4)

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
  \napBass
  \napDrums
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
