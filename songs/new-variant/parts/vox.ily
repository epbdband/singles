\gridPutMusic "vox" 3
\with {
  lyrics = {}
  music = {
    \omit Staff.Clef
    \stopStaff
    \override Staff.StaffSymbol.line-count = #1
    \startStaff
    \improvisationOn
    \set melismaBusyProperties = #'()
    \slurDashed
    \phrasingSlurDotted
    \partial 8 f8^\markup { Prima volta senza voce }
    f8 f8 r4 f8( f8) r4 |
    f8 f8 r8 \parenthesize { f8 } f4 r4 |
    f8 f8 r4 f8( f8) r4 |
    f8 f8 r4 f4 r4 |
  }
}
