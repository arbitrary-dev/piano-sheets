\version "2.19.80"

\header {
  title = "WILLIAM TELL OVERTURE"
  subtitle = "Fragment"
  composer = "Gioachino Rossini"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 176 mm) (* 183 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #12
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #10
} <<
\time 4/4
\new Staff \relative c' {
\numericTimeSignature
\key f \major

  \tempo "Allegro"
  \partial 4 c8-1\f c
  c4 c8 c c4 c8 c
  f4 g a c,8 c

  \break

  c4 c8 c c4 f8 a
  g4 e c c8 c
  c4 c8 c c4 c8 c

  \break

  f4 g a f8-\shape #'((0 . 0) (0 . 0.3) (0 . 1) (0 . -1.5)) ( a
  c2) r8 bes( a g
  f4) a f2

  \bar ":|."
}

\new Staff \relative c' {
\clef bass
\numericTimeSignature
\key f \major

  r4
  <f, a>2 <f a>
  <f a c> <f a c>

  \break

  <f a> <f a>
  <c e g> <c e g>
  <f a> <f a>

  \break

  <f a c> <f a c>
  <c e g> <c e g>
  <f a c> <f a c>

  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \tweak extra-offset #'(0 . -1)
  \mark \markup { \italic \normalsize "Repeat one octave higher" }
  \bar ":|."
}
>>
