\gridPutMusic "drums up" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  r4 cymc2.:32\< ~ | cymc1\! |
  r4 cymr2.:32\< ~ | cymr1\! |
  r4 cymc2.:32\< ~ | cymc1:32 ~ |
  cymc1\! ~ | cymc1 |
}

\gridPutMusic "drums down" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  s1*8
}

\gridPutMusic "drums up" 2 \drummode {
  r4 cymc2.:32 ~ | cymc1 |
  r4 cymc2.:32 ~ | cymc1 |
  r4 cymc2.:32 ~ | cymc1:32 ~ |
  cymc2:32 s2 |
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

\gridPutMusic "drums down" 7 \drummode {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
  \repeat unfold 8 {
    bd4 <bd sn>4 bd4 <bd sn>4 |
  }
  \revert NoteHead.color
  \revert Stem.color
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
