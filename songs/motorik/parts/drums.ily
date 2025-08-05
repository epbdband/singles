\gridPutMusic "drums up" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 4 {
    \repeat unfold 8 { hh8 }
  }
}

\gridPutMusic "drums down" 1 \drummode {
  %% FIXME: do this for the whole context
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat unfold 4 {
    \repeat unfold 2 { bd8 8 sn bd }
  }
}
