\version "2.19.80"

\header {
  title = "ETUDE"
  composer = "Elena Gnesina"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 210 mm) (* 290 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #14
  indent = 0\cm
}

#(set-global-staff-size 23)

down = \set fingeringOrientations = #'(down)
up = \set fingeringOrientations = #'(up)
right = \set fingeringOrientations = #'(right)
pad = \override Fingering.staff-padding = #0
no-pad = \override Fingering.staff-padding = #'()

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #11
} <<
\time 4/4
\new Staff \relative c'' {
\numericTimeSignature

  \tempo "Allegro"
  c8->-2(\f d c4) r2
  c4-.-2 e-.-4 d2---3
  c8->-2( d c4) r2
  e,4-.-2 g-. d2-.

  \break

  c'8-2( d c4) r2
  c4-. <c e>-. <b d>2
  c8-2( d c4) r2
  fis,8-2(\> g-3 fis d g4)\! r

  \break

  a8-2->(\f g-1 d'4-5) a8-2->( g c4-4)
  a8->( g b4) c-.-4 g-.-1
  a8-2(\p g d'4) a8( g c4)
  a8( g b4) c r

  \break

  \no-pad b2-1 c \pad
  <b f'>-5( <c e>4) r
  a8-2( g d'4) a8( g c4)
  a8-2( g b g c2-4)

  \break

  \up e8->-2(\f f e4) r2
  g,8->( a g4) r2
  r <f-2 a-4>
  <g-1 c-3>1
  <b-2 e-5>
  <g-1 c-3>

  \bar "|."
}

\new Staff \relative g' {
\numericTimeSignature

  \down
  r2 <g->-3>8( a g4)
  r4 c-.-1 <g b>2---4-2
  r <g->-3>8( a g4)
  \up \no-pad
  r c,-.-\tweak Y-offset #-1.1 -1 <
    g
    -\tweak Y-offset #-1.5
    -4
    b
    -\tweak Y-offset #-1.5
    -2
  >2-.

  \break

  \down \pad
  r <g'-3>8( a g4)
  r <fis-.-3> <g-2>2
  r <a-2>8( b a4)
  r <c,-1> <b-2> r

  \break

  <f'-1>2 <e-2>
  <d-3> e
  f e
  d <c-4>4 r

  \break

  <a'->-1>8( g <d-5>4) <a'->-1>8( g <e-4>4)
  <a->-1>8( g <d-5>4) <g-.-1> <c,-.-5>
  <f-1>2 e
  d c

  \break

  r <c'-3>8->( d c4)
  r2 e,8->( f e4)
  c2 <c-3 d-2>
  \right <
    c
    -\tweak extra-offset #'(0 . -0.5)
    -3
    e
    -\tweak extra-offset #'(0 . 0.3)
    -1
  >1
  <f-1 g,-5>
  <
    c
    -\tweak extra-offset #'(0 . -0.5)
    -3
    e
    -\tweak extra-offset #'(0 . 0.3)
    -1
  >

  \bar "|."
}
>>
