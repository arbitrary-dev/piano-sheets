\version "2.21.1"

\header {
  title = "RAIN IS GOING ON"
  subtitle = "Tango"
  composer = "Unknown X. Anonymous"
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
\time 2/4
\new Staff \relative e' {

  e8.\( a16 c8 e
  d4\) a'16\( f d a\)
  e8.\( gis16 b8 d
  c4\) e16\( c a e\)

  \break

  c'8. b16 d8 c
  e,4 <e gis c>
  <c e a> r
  b' a

  \break

  <gis b e>4 r

  % TODO
}

\new Staff \relative a,, {
\clef bass

  <a a'>8 <e'' a c> <e a c> <e a c>
  <d, d'> <f' a d> <f a d> <f a d>
  <e, e'> <e' gis d'> <e gis d'> <e gis d'>
  <a,, a'>8 <e'' a c> <e a c> <e a c>

  \break

  <f, f'> <f' a c> <f a c> <f a c>
  <e, e'> <e' gis d'> <e, e'> <e' gis d'>
  <a,, a'> <c' e a>16 <c e a> <c e a>8 <c e a>
  <fis, fis'> <a' b dis> <f, f'> <a' c ees>

  \break

  <e gis d'>4 r

  % TODO
}
>>
