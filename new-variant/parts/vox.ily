\gridPutMusic "vox" 5
\with {
  lyrics = \lyricmode {
    An -- o -- ther clock
    State of the art

    Fu -- ture grim
    Diff -- 'rent dream
  }
  music = {
    \omit Staff.Clef
    \stopStaff
    \override Staff.StaffSymbol.line-count = #1
    \startStaff
    \partial 8 f8
    f8 f8 r4 f4 r4 |
    f8 f8 r8 f8 f4 r4 |
    f8 f8 r4 f4 r4 |
    f8 f8 r4 f4 r4 |
  }
}

\gridPutMusic "vox" 7
\with {
  lyrics = \lyricmode {
    Va -- ri -- a -- tion on a theme
    Pris -- tine plas -- tic no -- vel -- ty
  }
  music = {
    \repeat unfold 2 {
      f8 f8 r4 f8 f8 r4 |
      f8 f8 r4 f4 r4 |
    }
  }
}

\gridPutMusic "vox" 9
\with {
  lyrics = \lyricmode {
    Pa -- tient thought
    Late -- est laugh
    Ab -- stract form
    Black -- est night
  }
  music = {
    \repeat unfold 4 {
      f8 f8 r4 f4 r4 |
    }
  }
}

\gridPutMusic "vox" 11
\with {
  lyrics = \lyricmode {
    Un -- born bop
    Eye -- ball pop
    Car -- bon creep
    Fer -- al sheep
  }
  music = {
    \repeat unfold 4 {
      f8 f8 r4 f4 r4 |
    }
  }
}
