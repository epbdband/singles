\version "2.22.1"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-capo #3
\setOption naptaker.guitar-tabs ##t
\setOption naptaker.guitar-tuning #guitar-open-d-tuning % \stringTuning <f, c f a c' f>
\setOption naptaker.paper-orientation #'portrait
\setOption naptaker.staff-size #15

\header {
  title = "Patient Circles Advance"
  composer = "EPBD"
  poet = "PD"
  copyright = "© 2021 EPBD"
}

Key = { \key f \major }
Tempo = { \tempo 4 = 172 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\templateInit
  #'("meta" "chords" "guitar" "drums up" "drums down")
  #'(8 7 8 2)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"
