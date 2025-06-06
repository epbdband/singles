\gridPutMusic "meta" 1 {
  \global
  \overrideProperty
            Score
            .NonMusicalPaperColumn
            .line-break-system-details #'((extra-offset . (0 . 12)))

  \override Score.VerticalAxisGroup.staff-staff-spacing.padding = #3
  s1*8
  \break
}

\gridPutMusic "meta" 2 {
  s1*8
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 3 {
  \mark \markup \box "A"
  \partial 8 s8
  %% \set Score.repeatCommands = #'(start-repeat)
  s1*4
  \break
}

\gridPutMusic "meta" 4 {
  \mark \markup \box "B"
  %% \set Score.repeatCommands = #'((volta "1, 2") end-repeat)
  s1*4
  \break
}

\gridPutMusic "meta" 5 {
  \mark \markup \box "C"
  %% \set Score.repeatCommands = #'((volta "3, 4") end-repeat)
  s1*4
  \break
}

\gridPutMusic "meta" 6 {
  \mark \markup \box "D"
  %% \set Score.repeatCommands = #'((volta "5") end-repeat)
  s1*4
  %% \set Score.repeatCommands = #'((volta #f))
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 7 {
  s1*4
  \break
  s1*4
  \break
}

\gridPutMusic "meta" 8 {
  s1*4
  \break
}

\gridPutMusic "meta" 9 {
  s1*4
  \break
}

\gridPutMusic "meta" 10 {
  s1*4
  \break
}

\gridPutMusic "meta" 11 {
  s1*4
  \break
  s1*4
  \noBreak
}

\gridPutMusic "meta" 12 {
  s4 \bar "|."
}
