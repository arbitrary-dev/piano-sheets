\version "2.19.80"

\header {
  title = "OH DU LIEBER AUGUSTIN"
  composer = "Marx Augustin (arranged by Theodor Steingräber)"
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

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #12
} <<
\time 3/4
\new Staff \relative c''' {
\numericTimeSignature

  g4.-4( a8 g f
  e4-2 c-1) c
  d-4( g,) g
  e'-5( c-3) c-1

  \break

  g'4.

  \bar ":|."
  \break
}

\new Staff \relative c' {
\numericTimeSignature

  \down <c-4>4 <e g> <e g>
  c <e g> <e g>
  g, <d' f> <d f>
  c <e g> <e g>

  \break

  c

  \bar ":|."
  \break
}
>>
