\gridPutMusic "guitar" 1 \relative c {
  \include "notes/guitar-Ia.ily"
}

\gridPutMusic "guitar" 2 \relative c {
  \include "notes/guitar-Ib.ily"
}

\gridPutMusic "guitar" 3 \relative c {
  \repeat percent 8 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-III.ily"
  }
}
