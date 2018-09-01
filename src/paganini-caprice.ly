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
  a8-1\mf r a16( c-3 b a
  e'8-5) r e,16-1( gis-3 fis e
  a8) r a16-1( c b a)
  e'4-5 e,8-1 r

  \break

  a8-1 r a16( c-3 b a
  e'8-5) r e16-1( gis-3 fis e
  a8) r \ottava #1 a16( c b a
  e'4) \ottava #0 r

  \break

  \repeat volta 2 {

    a,8-3\f r a16( bes a g
    f8) r d16-1( f-3 e d
    g8-4) r g16-3( a g f
    e8) r c16-1( e-3 d c

    \break

    f8-4) r b,16( d c b
    e8) r a,16( c b a)
    r8 <a dis> r <gis e'>
    a4 a'8 r
  }
}

\new Staff \relative c' {
\clef bass

  <a c>4 r
  e r
  <a c> r
  e r

  \break

  <a c> r
  e r
  <a c> r
  e r

  \break

  \repeat volta 2 {

    a r
    d r
    g, r
    c r

    \break

    f, r
    e r
    f e
    <a c> r
  }
}
>>
