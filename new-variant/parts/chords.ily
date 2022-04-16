\include "predefined-guitar-fretboards.ly"

#(define intro-fret-table (make-fretboard-table))

\storePredefinedDiagram #intro-fret-table \chordmode { f:7^5 }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 2)
                           (place-fret 4 7 1)
                           (place-fret 3 9 3)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { \invertChords 2 bes }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 1)
                           ;; (place-fret 4 8 1)
                           (place-fret 3 8 1)
                           (barre 3 5 8)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { \invertChords 2 bes:m }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 2)
                           (place-fret 4 8 3)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { f:3.5.8 }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 8 3)
                           (place-fret 4 7 2)
                           (place-fret 3 6 1)
                           (place-fret 2 8 4)
                           (mute 1))

\gridPutMusic "chords" 1 \chordmode {
  \set predefinedDiagramTable = #intro-fret-table
  f\breve:7^5
  \invertChords 2 bes,\breve
  \invertChords 2 bes,\breve:m
  f\breve:3.5.8
}

\storePredefinedDiagram #intro-fret-table \chordmode { f:7^5/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 2)
                           (place-fret 4 7 1)
                           (place-fret 3 9 3)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { \invertChords 2 bes/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 1)
                           ;; (place-fret 4 8 1)
                           (place-fret 3 8 1)
                           (barre 3 5 8)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { \invertChords 2 bes:m/f }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (place-fret 5 8 2)
                           (place-fret 4 8 3)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1))

\storePredefinedDiagram #intro-fret-table \chordmode { ges }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (mute 6)
                           (place-fret 5 9 3)
                           (place-fret 4 8 2)
                           (place-fret 3 7 1)
                           (mute 2)
                           (mute 1)
                           )

\storePredefinedDiagram #intro-fret-table \chordmode { f }
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
  \set predefinedDiagramTable = #intro-fret-table
  f\breve:7^5/f
  \invertChords 2 bes\breve/f
  \invertChords 2 bes\breve:m/f
  ges8 f8 r4 r2
  R1
}

#(define power-fret-table (make-fretboard-table))

#(define (mk-power-chord fret finger)
   `((capo 3)
     (place-fret 6 ,fret ,finger)
     ;; (place-fret 5 ,fret ,finger)
     (place-fret 4 ,fret ,finger)
     (barre 4 6 ,fret)
     (mute 3)
     (mute 2)
     (mute 1)))

\storePredefinedDiagram #power-fret-table \chordmode { aes:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 6 1)

\storePredefinedDiagram #power-fret-table \chordmode { b:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 9 4)

\storePredefinedDiagram #power-fret-table \chordmode { bes:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 8 3)

\storePredefinedDiagram #power-fret-table \chordmode { ges:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 4 1)

\storePredefinedDiagram #power-fret-table \chordmode { f:5.8 }
                        #guitar-open-d-tuning
                        #'((capo 3)
                           (open 6)
                           (open 5)
                           (open 4)
                           (mute 3)
                           (mute 2)
                           (mute 1))

\gridPutMusic "chords" 7 \chordmode {
  \set predefinedDiagramTable = #power-fret-table
  \repeat unfold 2 {
    \repeat unfold 2 {
      \once \set chordChanges = ##f
      aes4:5.8 r8 b8:5.8 r8 bes8:5.8 r8 ges8:5.8 |
    }
    \alternative {
      { aes1:5.8 | }
      { f1:5.8 | }
    }
  }
}

#(define power-prime-fret-table (make-fretboard-table))

\storePredefinedDiagram #power-prime-fret-table \chordmode { bes:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 8 1)

\storePredefinedDiagram #power-prime-fret-table \chordmode { des':5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 11 4)

\storePredefinedDiagram #power-prime-fret-table \chordmode { c':5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 10 3)

\storePredefinedDiagram #power-prime-fret-table \chordmode { aes:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 6 1)

\storePredefinedDiagram #power-prime-fret-table \chordmode { ees':5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 13 4)

\storePredefinedDiagram #power-prime-fret-table \chordmode { b:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 9 3)

\storePredefinedDiagram #power-prime-fret-table \chordmode { g:5.8 }
                        #guitar-open-d-tuning
                        #(mk-power-chord 5 1)

\gridPutMusic "chords" 11 \chordmode {
  \fuzzOn
  \set predefinedDiagramTable = #power-prime-fret-table
  bes4:5.8 r8 des':5.8 r8 c'8:5.8 r8 aes8:5.8 |
  bes1:5.8 |
  \once \set chordChanges = ##f
  bes4:5.8 r8 ees'8:5.8 r8 b8:5.8 r8 aes8:5.8 |
  g1:5.8 |

  bes4:5.8 r8 ees'8:5.8 r8 b8:5.8 r8 aes8:5.8 |
  bes1:5.8 |
  \once \set chordChanges = ##f
  bes4:5.8 r8 des'8:5.8 r8 c'8:5.8 r8 aes8:5.8 |
  g1:5.8 |
}

\gridPutMusic "chords" 12 \chordmode {
  \fuzzOn
  \set predefinedDiagramTable = #power-fret-table
  ges4:5.8 \bar "||"
}
