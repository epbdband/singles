\gridPutMusic "drums up" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  r4 cymr2.:32\mp\< ~ | cymr1\! |
  r4 cymc2.:32\mp\< ~ | cymc1\! |
  r4 cymr2.:32\< ~ | cymr1:32 ~ |
  cymr1\f\! ~ | cymr1 |
}

\gridPutMusic "drums down" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  s1*8
}

\gridPutMusic "drums up" 2 \drummode {
  cymr1:32\p ~ | cymr1 |
  cymr1:32\mp\< ~ | cymr1 ~|
  cymr1:32 ~ | cymr1:32 ~ |
  cymr2\mf\! s2 |
  s1
}

\gridPutMusic "drums down" 2 \drummode {
  s1*6 |
  s2 <tomfl toml>4 r4 |
  <tomfl toml>8 <tomfl toml>8 r4 <tomfl toml>4 r4 |
}

\gridPutMusic "drums down" 3 \drummode {
  \once \override Staff.Clef.X-offset = #8
  %% \stopStaff
  \partial 8 s8
  %% \startStaff
  %% \gridGetCellMusic "drums down" 8
  \repeat unfold 4 {
    <tomfl toml>8 <tomfl toml>8 r4 <tomfl toml>4 r4 |
  }
}

\gridPutMusic "drums up" 4 \drummode {
  <<
    {
      cymc1 |
      s1*3
    }
    \\
    {
      \stemUp
      s4 sn4 s4 sn4 |
      \repeat unfold 3 {
        s4 sn4 s4 sn4 |
      }
    }
  >>
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat unfold 4 {
    \repeat unfold 4 { <bd tomfl>4 } |
  }
}

\gridPutMusic "drums up" 5 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 5 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums up" 6 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 6 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums up" 7 \drummode {
  << { cymr1 } \\ { \ope \stemUp s4 sn8 s8 s8 s8 sn8 sn8 } >> |
  \ope
  s4 sn8 sn8 s4 sn8 sn8 |
  \repeat percent 3 {
    s4 sn8 s8 s8 s8 sn8 sn8 |
    s4 sn8 sn8 s4 sn8 sn8 |
  }
  \nope
}

\gridPutMusic "drums down" 7 \drummode {
  \ope
  bd4 s8 bd8 <bd tomfl>8 bd8 tomfl4 |
  <bd tomfl>8 bd8 s8 s8 <bd tomfl>8 <bd tomfl>8 s8 s8 |
  \repeat percent 3 {
    bd4 s8 bd8 <bd tomfl>8 bd8 tomfl4 |
    <bd tomfl>8 bd8 s8 s8 <bd tomfl>8 <bd tomfl>8 s8 s8 |
  }
  \nope
}

\gridPutMusic "drums down" 8 \drummode {
  \repeat unfold 4 {
    <tomfl toml>8 <tomfl toml>8 r4 <tomfl toml>4 r4 |
  }
}

\gridPutMusic "drums up" 9 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 9 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums down" 10 \gridGetCellMusic "drums down" 8

\gridPutMusic "drums down" 11 \drummode {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
  \repeat unfold 8 {
    bd4 <bd sn>4 bd4 <bd sn>4 |
  }
  \revert NoteHead.color
  \revert Stem.color
}

\gridPutMusic "drums up" 12 \drummode {
  sn4
}

\gridPutMusic "drums down" 12 \drummode {
  tomfl4
}
