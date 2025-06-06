\repeat unfold 3 {
  \set TabStaff.minimumFret = #9
  <ces ges' ces ees ges ces>4
  \repeat unfold 2 {
    <<
      { <ces ces' ees ges ces>4 }
      \\
      {
        \set stemRightBeamCount = #0
        \once \set doubleSlurs = ##t
        \stemUp
        aes'8\5([ ges8]) }
    >>
  }
  \set TabStaff.minimumFret = #5
  r8 <g, d' g b d g>8 ~ |
  q8 <aes ees' aes c ees aes>8 q8 q4 q8 q4 |
}
\set TabStaff.minimumFret = #2
<ges des' ges bes des ges>2. q4 |
<fes ces' fes aes ces fes>2. q4 |
