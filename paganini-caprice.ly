\version "2.19.80"

\header {
  title = "CAPRICE"
  subtitle = "Fragment"
  composer = "Niccolò Paganini"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 176 mm) (* 211 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #12
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #9
} <<
\time 2/4
\new Staff \relative c'' {

  \tempo "Allegro"
  a8-1\mf r8 a16( c16-3 b16 a16
  e'8-5) r8 e,16-1( gis16-3 fis16 e16
  a8) r8 a16-1( c16 b16 a16)
  e'4-5 e,8-1 r8

  \break

  a8-1 r8 a16( c16-3 b16 a16
  e'8-5) r8 e16-1( gis16-3 fis16 e16
  a8) r8 \ottava #1 a16( c16 b16 a16
  e'4) \ottava #0 r4

  \break

  \repeat volta 2 {

    a,8-3\f r8 a16( bes16 a16 g16
    f8) r8 d16-1( f16-3 e16 d16
    g8-4) r8 g16-3( a16 g16 f16
    e8) r8 c16-1( e16-3 d16 c16

    \break

    f8-4) r8 b,16( d16 c16 b16
    e8) r8 a,16( c16 b16 a16)
    r8 <a dis>8 r8 <gis e'>8
    a4 a'8 r8
  }
}

\new Staff \relative c' {
\clef bass

  <a c>4 r4
  e4 r4
  <a c>4 r4
  e4 r4

  \break

  <a c>4 r4
  e4 r4
  <a c>4 r4
  e4 r4

  \break

  \repeat volta 2 {

    a4 r4
    d4 r4
    g,4 r4
    c4 r4

    \break

    f,4 r4
    e4 r4
    f4 e4
    <a c>4 r4
  }
}
>>
