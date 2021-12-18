\gridPutMusic "drums up" 1 \drummode {
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0

  \repeat percent 8 {
    sn8-^ sn8-^ r4 sn4-^ r4 |
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat percent 8 {
    <bd toml>8-^ toml8-^ s4 <bd toml>4-^ s4 |
  }
}

\gridPutMusic "drums up" 2 \drummode {
   \repeat percent 6 {
    sn4-^ r4 sn8-^ sn8-^ r4 |
  }
  sn8-^ sn8-^ r4 r2 |
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat percent 6 {
    <bd toml>4-^ s4 <bd toml>8-^ toml8-^ s4 |
  }
  <bd toml>8-^ <bd toml>8-^ s4 s2 |
}

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
