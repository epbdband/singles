\gridPutMusic "drums down" 2 \drummode {
  \bye
  R1*6 |
  \temporary \override Rest.staff-position = #0
  r2 \hi <bd toml>4 r4 |
  <bd toml>8 toml8 r4 <bd toml>4 r4 |
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat unfold 4 {
    <bd toml>8 toml8 s4 <bd toml>4 s4 |
  }
}

%{
\gridPutMusic "drums up" 3 \drummode {
  \repeat percent 2 {
    \repeat percent 3 {
      hh8 hh8 <sn hh>8 <sn hh>8 hh8 hh8 <sn hh>8 hh8 |
    }
    hh8 hh8 <sn hh>8 hh8 hh8 <sn hh>8 <sn hh>8 <sn hh>8 |
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat percent 2 {
    \repeat percent 3 {
      bd8 s8 s4 bd8 s8 s4 |
    }
    bd8 s8 s8 bd8 bd8 s8 s4 |
  }
}

\gridPutMusic "drums up" 4 \drummode {
  \repeat volta 2 {
    \repeat percent 2 {
      sn8-^ sn8-^ r4 sn4-^ r4 |
    }
  }
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat volta 2 {
    \repeat percent 2 {
      <bd toml>8-^ toml8-^ s4 <bd toml>4-^ s4 |
    }
  }
}
%}
