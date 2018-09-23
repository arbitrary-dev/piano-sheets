\version "2.19.80"

\header {
  title = "WILLIAM TELL"
  subtitle = "Overture fragment"
  composer = "Gioachino Rossini"
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
\new Staff \relative c' {
\numericTimeSignature
\key g \minor

  \tempo "Allegro"
  c8-1\f c
}

\new Staff \relative c' {
\clef bass
\numericTimeSignature
\key g \minor

  r4

}
>>
