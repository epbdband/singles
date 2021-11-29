\version "2.20.0"

\header {
  title = "Patient Circles"
  composer = "EPBD"
  poet = "PD"
  copyright = "© 2021 EPBD"
}

global = {
  \key f \major
  \time 4/4
}

guitar = \relative c {
  \global

  \mark \default
  \include "notes/guitar-Ia.ily"
  \break

  \mark \default
  \include "notes/guitar-Ib.ily"
  \bar "||"

  \mark \default
  \repeat percent 8 {
    \include "notes/guitar-II.ily"
  }

  \mark \default
  \repeat volta 2 {
    \include "notes/guitar-III.ily"
  }
}

drumOne = \drummode {
  \global

  \repeat percent 8 {
    sn8-^ sn8-^ r4 sn4-^ r4 |
  }
  
  \repeat percent 6 {
    sn4-^ r4 sn8-^ sn8-^ r4 |
  }
  sn8-^ sn8-^ r4 r2 |

  \repeat percent 2 {
    \repeat percent 3 {
      hh8 hh8 <sn hh>8 <sn hh>8 hh8 hh8 <sn hh>8 hh8 |
    }
    hh8 hh8 <sn hh>8 hh8 hh8 <sn hh>8 <sn hh>8 <sn hh>8 |
  }

  \repeat volta 2 {
    \repeat percent 2 {
      sn8-^ sn8-^ r4 sn4-^ r4 |
    }
  }
}

drumTwo = \drummode {
  \global

  \repeat percent 8 {
    <bd toml>8-^ toml8-^ s4 <bd toml>4-^ s4 |
  }
  
  \repeat percent 6 {
    <bd toml>4-^ s4 <bd toml>8-^ toml8-^ s4 |
  }
  <bd toml>8-^ <bd toml>8-^ s4 s2 |

  \repeat percent 2 {
    \repeat percent 3 {
      bd8 s8 s4 bd8 s8 s4 |
    }
    bd8 s8 s8 bd8 bd8 s8 s4 |
  }

  \repeat volta 2 {
    \repeat percent 2 {
      <bd toml>8-^ toml8-^ s4 <bd toml>4-^ s4 |
    }
  }
}

guitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "EB"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \guitar }
  \new TabStaff \with {
    stringTunings = \stringTuning <f, c f a c' f'>
  } \guitar
>>

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "PD"
} <<
  \new DrumVoice { \voiceOne \drumOne }
  \new DrumVoice { \voiceTwo \drumTwo }
>>

theMusic = {
  <<
    \guitarPart
    \drumsPart
  >>
}

\score {
  \theMusic
  \layout { }
}

\score {
  \unfoldRepeats {
    \theMusic
  }
  \midi {
    \tempo 4=172
  }
}
