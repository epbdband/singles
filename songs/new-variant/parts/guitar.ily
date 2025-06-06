\gridPutMusic "guitar" 1 \relative c {
  \include "notes/guitar-Ia.ily"
}

\gridPutMusic "guitar" 2 \relative c {
  \include "notes/guitar-Ib.ily"
}

\gridPutMusic "guitar" 3 \relative c {
  \once \override Staff.Clef.X-offset = #8
  %\stopStaff
  \partial 8 s8
  \startStaff
  %% \gridGetCellMusic "guitar" 8
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar lead" 4 \relative c' {
  \include "notes/guitar-IIIb.ily"
}

\gridPutMusic "guitar" 4 \relative c, {
  \repeat unfold 4 {
    \include "notes/guitar-IIIa.ily"
  }
}

\gridPutMusic "guitar lead" 5 \relative c'' {
  %% \ottava #1
  \repeat unfold 2 {
    \include "notes/guitar-IVb.ily"
  }
  %% \ottava #0
}

\gridPutMusic "guitar" 5 \relative c'' {
  \ottava #1
  \include "notes/guitar-IVa.ily"
  \ottava #0
}

\gridPutMusic "guitar lead" 6 \relative c, {
  \once \override TextSpanner.style = #'zigzag
  \once \override TextSpanner.zigzag-length = #0.51
  \once \override TextSpanner.zigzag-width = #3
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \once \override TextSpanner.bound-details.left.text = #"Fuzz"
  \once \override TextSpanner.bound-details.right.padding = #1
  \ottava #-1
  \include "notes/guitar-V.ily"
  \ottava #0
}

\gridPutMusic "guitar" 6 \relative c, {
  \ottava #-1
  \repeat unfold 4 {
    \include "notes/guitar-IIIa.ily"
  }
  \ottava #0
}

\gridPutMusic "guitar lead" 7 \relative c' {
  \bye
  R1 |
  \hi
  \once \override TextSpanner.style = #'zigzag
  \once \override TextSpanner.zigzag-length = #0.51
  \once \override TextSpanner.zigzag-width = #3
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \once \override TextSpanner.bound-details.left.text = #"Fuzz"
  \once \override TextSpanner.bound-details.right.padding = #1
  \fuzzOn
  \once \set Staff.forceClef = ##t
  r8 f8\startTextSpan f8 f8 f8 f8 f8 f8 |
  f8 f8 f8 f8 f8 f8 f8 f8 |
  f8\noBeam b,8 b8 b8 b8 bes8 aes8 f8\stopTextSpan |

  \bye
  R1 |
  \hi
  \once \override TextSpanner.style = #'zigzag
  \once \override TextSpanner.zigzag-length = #0.51
  \once \override TextSpanner.zigzag-width = #3
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \once \override TextSpanner.bound-details.left.text = #"Fuzz"
  \once \override TextSpanner.bound-details.right.padding = #1
  \once \set Staff.forceClef = ##t
  r8 f'8\startTextSpan f8 f8 f8 f8 f8 f8 |
  f8 <f aes>8 q8 q8 q8 q8 q8 q8 |
  q8 <f a>8 q8 q8 ~ q2\stopTextSpan |
  \fuzzOff
}

\gridPutMusic "guitar" 8 {
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar" 9 { \gridGetCellMusic "guitar" 4 }

\gridPutMusic "guitar" 10 { \gridGetCellMusic "guitar" 8 }

\gridPutMusic "guitar lead" 10 {
  \once \override TextSpanner.style = #'zigzag
  \once \override TextSpanner.zigzag-length = #0.51
  \once \override TextSpanner.zigzag-width = #3
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \once \override TextSpanner.bound-details.left.text = #"Fuzz"
  \once \override TextSpanner.bound-details.right.padding = #1
  \fuzzOn % FIXME: \startTextSpan
  \gridGetCellMusic "guitar" 6
  \fuzzOff % FIXME: \stopTextSpan
}
