\version "2.19.80"

\header {
  title = "LA PEREGRINACION"
  composer = "Ariel Ramírez"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 210 mm) (* 160 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #11
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #9
  \override DynamicLineSpanner.staff-padding = #2.3
} <<
\time 6/8
\new Staff \relative c'' {

  \tempo "Moderato"
  r8\mp e-3 d c_\markup "legato" d e
  e4. f4 c8-2
  c4. b-1
  e2.
  r8 c-2 b-1 a-2 b c

  \break

  c4. d4 a8-1
  a4. gis-2
  c2.-5
  r8 e-3 d c d e
  e4. f4 f8

  \break

  g4. d
  e2.
  r8 c b a b c
  c4. d4 a8
  a4. gis
  a2.~
  a
}

\new Staff \relative c {
\clef bass

  <a c e>2.
  <d f a>
  <g, b d>
  <c e g>
  <f, a c>

  \break

  <b d f>
  <e, gis b>
  <a c e>
  <a c e>
  <d f a>

  \break

  <g, b d>
  <c e g>
  <f, a c>
  <b d f>
  <e, gis b>
  <a c e>~
  <a c e>
}
>>
