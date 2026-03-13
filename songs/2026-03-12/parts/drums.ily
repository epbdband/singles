\gridPutMusic "drums up" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 8 {
    cymr4 4 4 4 |
  }
}

\gridPutMusic "drums down" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 2 {
    \repeat unfold 3 {
      bd4 s sn s8 \flam sn |
    }
    bd4 s sn s8 bd |
  }
}

\gridPutMusic "drums up" 2 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 4 {
    \repeat unfold 8 { cymc8 } |
  }
}

\gridPutMusic "drums down" 2 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 4 {
    \repeat unfold 8 { bd16 sn } |
  }
}
