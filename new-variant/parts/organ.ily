\gridPutMusic "organ up" 8 \relative c {
  \bye
  R1 |
  r2 r4
  \hi
  \once \set Staff.forceClef = ##t
  \override Glissando.style = #'zigzag
  f\glissando |
  f''1 ~ |
  f8 <c f aes>4. <b e g>4-! <bes ees ges>4-! |
}

\gridPutMusic "organ down" 8 {
  \bye
  s1*4
}

\gridPutMusic "organ up" 9 \relative c'' {
  \bye
  R1*2 |
  \hi
  \once \set Staff.forceClef = ##t
  \repeat unfold 2 {
    r4 <a es' aes>8 r4 <a es' aes>8 r4 |
  }
}

\gridPutMusic "organ down" 9 \relative c {
  \bye
  R1*2 |
  \hi
  \once \set Staff.forceClef = ##t
  \repeat unfold 2 {
    \repeat unfold 2 {
      e8( f8) r8
    }
    r4 |
  }
}
%}
