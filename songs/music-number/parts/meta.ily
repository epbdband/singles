\gridPutMusic "meta" 1 {
  \global
  s1*4 \break
  s1*4 \break
  \bar "||"
  \break
}

\gridPutMusic "meta" 2 {
  %% \cadenzaOn
  \time 6/8
  s1*3
  %% \compoundMeter #'(3 3 2 8)
  \once \numericTimeSignature
  \time 4/4
  s1
  \bar "||"
  % FIXME: \override Score.KeySignature.break-visibility = ##(#f #f #t)
  \break
  %% \cadenzaOff
}

\gridPutMusic "meta" 3 {
  \key aes \minor
  s1*4 \break
  s1*4 \break
  \bar "|."
}
