\gridPutMusic "drums down" 2 \drummode {
  \bye
  R1*6 |
  \temporary \override Rest.staff-position = #0
  r2 \hi <tomfl toml>4 r4 |
  <tomfl toml>8 <tomfl toml>8 r4 <tomfl toml>4 r4 |
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat unfold 4 {
    <tomfl toml>8 <tomfl toml>8 r4 <tomfl toml>4 r4 |
  }
}

\gridPutMusic "drums up" 4 \drummode {
  <<
    { cymc1 | }
    \\
    { \stemUp s4 sn4 s4 sn4 | }
  >>
  \repeat unfold 3 {
    s4 sn4 s4 sn4 |
  }
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat unfold 4 {
    \repeat unfold 4 { <bd tomfl>4 } |
  }
}

\gridPutMusic "drums down" 5 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 6 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 6 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums down" 7 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 8 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 8 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums down" 9 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 10 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 10 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums down" 11 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 12 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 12 \gridGetCellMusic "drums down" 4

\gridPutMusic "drums down" 14 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 15 \gridGetCellMusic "drums up" 4

\gridPutMusic "drums down" 15 \gridGetCellMusic "drums down" 4
