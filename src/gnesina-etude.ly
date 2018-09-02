\version "2.19.80"

\header {
  title = "ETUDE"
  composer = "Elena Gnesina"
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
\time 4/4
\new Staff \relative c'' {
\numericTimeSignature

  \tempo "Allegro"
  c8->-2(\f d c4) r2
  c4-.-2 e-.-4 d2---3
  c8->-2( d c4) r2
  e,4-.-2 g-. d2-.

  \break

}

\new Staff \relative g' {
\numericTimeSignature

  \set fingeringOrientations = #'(down)
  r2 <g->-3>8( a g4)
  r4 c-.-1 <g b>2---4-2
  r <g->-3>8( a g4)
  \set fingeringOrientations = #'(up)
  r c,-.-1
  \once \override Fingering.staff-padding = #'()
  <g-4 b-2>2-.

  \break
}
>>
