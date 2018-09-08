\version "2.19.80"

\header {
  title = "PIANO CONCERTO"
  subtitle = "Fragment"
  composer = "Edvard Grieg"
  tagline = "2ch.hk/mus"
}

% #(set! paper-alist (cons '("custom" . (cons (* 176 mm) (* 211 mm))) paper-alist))
\paper {
  #(set-paper-size "a4")
  system-system-spacing.basic-distance = #12
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #9
} <<
\time 2/4
\new Staff = "up" \relative c''' {

  \tempo "Allegro"
  a4.-5\f a16 gis
  e4. e16-5 c
  a8 a16-5 gis e8 e16-5 c
  \change Staff = "down"
  \voiceOne
  a8 a16 gis e8 e16 c

  \break

  a2
  \change Staff = "up"
  r8 \tuplet 3/2 { a'16 c e } \voiceTwo r8 \tuplet 3/2 { a16 c e }
  a2
}

\new Staff = "down" \relative c {
\clef bass

  <a c e>2
  <gis b>
  <a c e>4 <gis b>
  \voiceTwo
  <a c e>4 <gis b>

  \break

  <c, a>2
  \voiceOne
  \tuplet 3/2 { a'16 c e } r8 \voiceTwo \tuplet 3/2 { a16 c e } r8
  r2
}
>>
