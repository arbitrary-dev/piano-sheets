\version "2.19.80"

\header {
  title = "JINGLE BELLS"
  composer = "James Lord Pierpont"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 210 mm) (* 290 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #14
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #11
} <<
\time 4/4
\new Staff \relative c' {
\numericTimeSignature
\key f \major

  \tempo "Merrily"

  d8 \f bes' a g c c c c
  d c bes g f4 c'
  c,8 a' g f c4 r8 c16 c

  \bar "|."
}

\new Staff \relative g {
\numericTimeSignature
\clef bass
\key f \major

  g4 f e d
  c e f8 e d c
  <f a>4 c <f a> c

  \bar "|."
}
>>
