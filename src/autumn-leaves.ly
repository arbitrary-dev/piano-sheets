\version "2.21.1"

\header {
  title = "LES FEUILLES MORTES"
  composer = "József Kozma"
  tagline = "2ch.hk/mus"
}

\paper {
  #(set-paper-size "a4")
  system-system-spacing.basic-distance = #18
  print-page-number = #f
}

bon = \autoBeamOn
boff = \autoBeamOff

#(set-global-staff-size 23)

\markup { \vspace #1.5 }

h =
#(define-music-function
 (parser location value)
 (pair?)
  #{
    \once \override Hairpin.shorten-pair = #value
  #})

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  % \override DynamicLineSpanner.staff-padding = #3
  % \override TextScript.staff-padding = #1
  \override Hairpin.to-barline = ##f
} <<
\new Staff \relative a'' {
\key a \minor

  r2 r4 \tuplet 3/2 {a8( b c}
  f2.)

  \break

  % TODO
}

\new Staff \relative a {
\key a \minor

  r1
  <d f a>8 <cis f a> <c f a> <b f' a>

  \break

  % TODO
}
>>
