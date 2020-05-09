\version "2.21.1"

\header {
  title = "OVERTURE"
  subtitle = "The Adventures of Sherlock Holmes and Doctor Watson"
  composer = "Vladimir Sergeevich Dashkevich"
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
\time 4/4
\new Staff \relative a' {
\numericTimeSignature
\key f \major

  <a c f>4.. <a c f>16 <c f a>4 <f a c>
  \ottava #1
  << { f'16 e d e f4 } \\ { bes,2 } >> r8 <f c' e>4 <f bes d>8
  \ottava #0
  <f c'>16 bes a bes\boff c8\bon <e, a c>16 <e a c> <e a c>8 <e g bes>4 <c f a>8

  \break

  <c f a>1

  % TODO
}

\new Staff \relative a {
\numericTimeSignature
\key f \major

  <a c f>4.. <a c f>16 <c f a>4 <f a c>
  << { d'16 c bes c d4 } \\ { f,2 } >> r8 <f c' e>4 <f bes d>8
  a16 g f g\boff a8\bon <e a c>16 <e a c> <e a c>8 <e g bes>4 <c f a>8

  \break

  <c f a>1

  % TODO
}
>>
