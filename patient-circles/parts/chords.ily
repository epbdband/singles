\include "predefined-guitar-fretboards.ly"

#(define ia-fret-table (make-fretboard-table))

\storePredefinedDiagram #ia-fret-table \chordmode { f:7^5 }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 2)
                           (place-fret 4 7 1)
                           (place-fret 3 9 3)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ia-fret-table \chordmode { \invertChords 2 bes }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 1)
                           ;; (place-fret 4 8 1)
                           (place-fret 3 8 1)
                           (barre 3 5 8)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ia-fret-table \chordmode { \invertChords 2 bes:m }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 2)
                           (place-fret 4 8 3)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ia-fret-table \chordmode { f:3.5.8 }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 3)
                           (place-fret 4 7 2)
                           (place-fret 3 6 1)
                           (place-fret 2 8 4)
                           (mute 1))

\gridPutMusic "chords" 1 \chordmode {
  \set predefinedDiagramTable = #ia-fret-table
  f,\breve:7^5
  \invertChords 2 bes\breve
  \invertChords 2 bes\breve:m
  f\breve:3.5.8
}

#(define ib-fret-table (make-fretboard-table))

\storePredefinedDiagram #ib-fret-table \chordmode { f:7^5/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 2)
                           (place-fret 4 7 1)
                           (place-fret 3 9 3)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ib-fret-table \chordmode { \invertChords 2 bes/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 1)
                           ;; (place-fret 4 8 1)
                           (place-fret 3 8 1)
                           (barre 3 5 8)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ib-fret-table \chordmode { \invertChords 2 bes:m/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 2)
                           (place-fret 4 8 3)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #ib-fret-table \chordmode { ges }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 9 3)
                           (place-fret 4 8 2)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1)
                           )

\storePredefinedDiagram #ib-fret-table \chordmode { f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 9 3)
                           (place-fret 4 8 2)
                           (place-fret 3 7 1)
                           (mute 2)
                           ;; FIXME
                           ; (mute 1)
                           )

\gridPutMusic "chords" 2 \chordmode {
  \set predefinedDiagramTable = #ib-fret-table
  f\breve:7^5/f
  \invertChords 2 bes\breve/f
  \invertChords 2 bes\breve:m/f
  ges8 f8 r4 r2
}
