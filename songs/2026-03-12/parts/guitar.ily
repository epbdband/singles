\gridPutMusic "guitar" 1 \relative c {
%{
  f8 f16. f64 f64 f16 aes16 g16 f16
  g8. e16 c8. c16 |
  f8 f16. f64 f64 f16 aes16 g16 f16
  g8 ~ g16. <c e>64 <c e>64 <c e>4 |
%}
%{
  f8[ f16. f32:64 f16 aes16 g16 f16]
  g8.[ e16 c8.] c16[ |
  f8] f16.[ f32:64 f16 aes16 g16 f16]
  g8 ~ g16. <c e>32:64 <c e>4 |
%}
%{
  f8 f8 \appoggiatura { f32 f32 } f16 aes16 g16 f16
  g8. e16 c8. c16 |
  f8 f8 \appoggiatura { f32 f32 } f16 aes16 g16 f16
  g4 \appoggiatura { <c e>32 <c e>32 } <c e>4 |
%}
  f4 f8. f16:32 f8 aes8 g8\3 f8 |
  g4.\3 e8\4 c4. c8 |
  f4 f8. f16:32 f8 aes8 g8\3 f8 |
  g4\3 ~ g8. <c\2 e\1>16:32 <c\2 e\1>2 |

  f,4 f8. f16:32 f8 aes8 g8\3 f8 |
  g4.\3 e8\4 c2 |
  R1 |
  c8\( des8-3\glissando c8-3 bes8\5-1\glissando c8-1 aes8 g ges8\) |
}

\gridPutMusic "guitar" 2 \relative c' {
  <c\4 c\3>1:64 |
  <b\4 c\3>1:64 |
  <c\4 des\3>1:64 |
  <c\4 c\3>1:64 |
}
