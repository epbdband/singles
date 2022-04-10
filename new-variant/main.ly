\version "2.22.2"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-open-d-tuning % \stringTuning <f, c f a c' f>
\setOption naptaker.paper-orientation #'portrait
\setOption naptaker.paper-size "arch a"
\setOption naptaker.staff-size #18

\header {
  title = "Patient Circles Advance"
  subtitle = "(A New Variant)"
  composer = \markup {
    \center-column {
      "Music and Lyrics"
      "by EPBD"
    }
  }
  subsubtitle = \markup {
    \fill-line {
      \center-column {
        \null
        \epsfile #X #60 #"cover.eps"
        "Painting by PD"
      }
    }
  }
  copyright = "© 2021-2022 Eric Bailey"
}

\paper {
  two-sided = ##t
  %% print-first-page-number = ##t
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

Key = { \key f \major }
Tempo = { \tempo 4 = 250 } % 172 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\templateInit
  #'("meta" "chords" "vox" "guitar" "guitar strum" "guitar lead" "organ up" "organ down" "drums up" "drums down")
  #'(8 8 (33 . 8) 4 4 4 8 4 4 4 8 (1 . 4))

%% \gridSetRange #'(12 . 18)

%% \Naptaker
\napPaper
\napIncludes

\newInstrument "Organ"
\with {
  instrumentName = "Organ"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \clef "treble"
}
\with {
  \consists "Staff_performer"
  instrumentName = "Organ"
  midiInstrument = "rock organ"
}
"default"

\include "parts/lyrics.ily"
\include "parts/organ.ily"

theScore = <<
  \napVox
  %% \napChords
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ##f
      \set Staff.midiInstrument = "electric guitar (clean)"
      \transposition c
      \gridGetMusic "chords"
    }
    \context FretBoards {
      \set chordChanges = ##t
      \set stringTunings = \getOption naptaker.guitar-tuning
      \override FretBoard.fret-diagram-details.barre-type  = #'straight
      \override FretBoard.fret-diagram-details.finger-code = #'in-dot
      \override FretBoard.fret-diagram-details.number-type = #'arabic
      \override FretBoard.fret-diagram-details.orientation = #'landscape
      \gridGetMusic "chords"
    }
  >>
  %% \napGuitar
  \new StaffGroup <<
    \napGuitarStrum
    \new GuitarVoice = lead { \gridGetMusic "guitar lead" }
    \new GuitarVoice = gtr { \gridGetMusic "guitar" }
  >>
  \new StaffGroup <<
    \new PianoStaff <<
      \new OrganVoice = "up" { \gridGetMusic "organ up" }
      \new OrganVoice = "down" { \clef "bass" \gridGetMusic "organ down" }
    >>
  >>
  \napDrums
>>

\score {
  \theScore
  \layout {
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  }
}

\score {
  \unfoldRepeats { \Tempo \theScore }
  \midi {}
}

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"
