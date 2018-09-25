\version "2.19.80"

\header {
  title = "DISTANT BELLS"
  composer = "Jean Louis Gobbaerts"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 210 mm) (* 250 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #14
  indent = 0\cm
}

#(set-global-staff-size 23)

down = \set fingeringOrientations = #'(down)
up = \set fingeringOrientations = #'(up)
treble = \clef "treble"
bass = \clef "bass"

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #12
} <<
\time 4/4
\new Staff \relative c' {
\numericTimeSignature
\override Score.MetronomeMark.extra-offset = #'(0 . 1)
\tempo "Andante"

  \once \override DynamicLineSpanner.staff-padding = #3.9
  \up <e-2 g-4>8(\p c-1 <e g> c <e g> c <e g> c)
  <f g>-3-4( d-1 <f g> d <f g> d <f g> d)
  <f g>( d <f g> d <f g> d <f g> d)

  \break

  <e g>( c <e g> c <e g> c <e g> c)
  <e g>( c <e g> c <e g> c <e g> c)
  <f g>( d <f g> d <f g> d <f g> d)

  \break

  <f g>( d <f g> d <f g> d <f g> d)
  <e g>( c <e g> c <e g>4) r
  b8-1(\mf d-2 b d g2)

  \break

  c,8( d c d fis2)
  c8( d c d fis2)
  b,8( d b d g2)

  \bar "|."
}

\new Staff \relative c {
\numericTimeSignature
\down

  \bass <c-5>4 r \treble <c''-2>2->
  \bass <g,,>4 r \treble <b''>2->
  \bass <g,,>4 r \treble <f'''>2->

  \break

  \bass <c,,>4 r \treble <e''>2->
  \bass <c,,>4 r \treble <c''>2->
  \bass <g,,>4 r \treble <b''>2->

  \break

  \bass <g,,>4 r \treble <g'''>2->
  \bass <c,,,>4 r \treble <c''>-> r
  \bass <g,,> r \treble <b''>2->

  \break

  \bass <d,,>4 r \treble <a''>2->
  \bass <d,,>4 r \treble <c''>2->
  \bass <g,,>4 r \treble <b''>2->

  \bar "|."
}
>>
