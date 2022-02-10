\version "2.22.1"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-open-d-tuning % \stringTuning <f, c f a c' f>
\setOption naptaker.paper-orientation #'portrait
\setOption naptaker.staff-size #15

\header {
  title = "New Variant"
  composer = "EPBD"
  %% poet = "EPBD"
  copyright = "© 2021-2022 Eric Bailey"
}

Key = { \key f \major }
Tempo = { \tempo 4 = 172 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\templateInit
  #'("meta" "chords" "guitar" "guitar strum" "guitar lead" "drums up" "drums down")
  #'(8 8 4 4 4 4 4 4 4 4 4 4 8 4 4 4 8 (1 . 4))

%% \gridSetRange #'(12 . 18)

%% \Naptaker
\napPaper \napIncludes
Score = <<
  %% \napVox
  \napChords
  %% \napGuitar
  \new StaffGroup <<
    \napGuitarStrum
    \new GuitarVoice = lead { \gridGetMusic "guitar lead" }
    \new GuitarVoice = gtr { \gridGetMusic "guitar" }
  >>
  %% \napBass
  \napDrums
>>

\score {
  \Score
  \layout {
    \getOption naptaker.extra-layout
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
    #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  }
}

\score {
  \unfoldRepeats { \Tempo \Score }
  \midi {
    %% https://lilypond.org/doc/v2.21/Documentation/snippets/midi#midi-changing-midi-output-to-one-channel-per-voice
    %{
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    %}
  }
}

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"
