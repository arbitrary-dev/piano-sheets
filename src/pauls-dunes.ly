\version "2.19.80"

\header {
  title = "Ilgais ceļš kāpās"
  composer = "Raimonds Pauls"
  tagline = "2ch.hk/mus"
}

\paper {
  #(set-paper-size "a4")
  system-system-spacing.basic-distance = #18
  indent = 0\cm
  print-page-number = #f
}

son = \sustainOn
soff = \sustainOff
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
\new Staff \relative e' {
\numericTimeSignature

  r8\boff e8(\bon b' \h #'(0 . 2) a\< d4. c8
  e1)\! \h #'(-8.5 . 0)
  r8\>\boff e,8(\!\bon b' \h #'(0 . 2) a\< d4. c8
  f1)\!

  \break

  r8\boff a,(\bon \h #'(0 . 2) e'\< d g4. f8
  gis4.)\! a8( b4. a8
  gis4.) a8( \h #'(0 . 1) b\> f4 e16 d
  c1)\!

  \break

  r8\boff e,8(\bon b' \h #'(0 . 2) a\< d4. c8
  e1)\! \h #'(-8.5 . 0)
  r8\>\boff e,8(\!\bon b' \h #'(0 . 2) a\< d4. c8
  f1)\!

  \break

  r8\boff d(\<\bon e f g4. a8
  a g\! g2.)
  r8\boff d(\bon a'\> g g d4 e16 f
  e2.)\! f8 e

  \break

  d2. \h #'(-6 . -4) e8\> c
  a1(\!
  a8) r a'4(\mf b4. g8
  f1)(

  \break

  f4) g( a4. b8
  e,1)(
  e4) f( g4. c,8
  d1)(

  \break

  d4) e( f4. b8
  e,1)(
  e8) r a4( b4. g8
  f1)(

  \break

  f4) g( a4. b8
  e,1)(
  e4) f( g4. c,8

  \break

  d1)(
  d4) e( a,4. a8
  a1)(
  a4) r r2

  \bar "|."
}

\new Staff \relative a, {
\numericTimeSignature
\clef bass

  r1_\markup { \large \italic legato }
  a8\son e' b' e, c' e,4 d'8
  e r r4\soff r2
  d,8\son a' e' a, f' a,4 g'8

  \break

  a r r4\soff r2
  e,8\son b' e b f' b, gis'4
  e,8 b' e b f' b, gis'4\soff
  a,,8\son e' b' e, c' e,4 d'8

  \break

  e\soff r r4 r2
  a,,8\son e' b' e, c' e,4 d'8
  e r\soff r4 r2
  d,8\son a' e' a, f' a,4 g'8

  \break

  a r r4 r2\soff
  g,,8\son f' b f e' f, d' f,
  g, f' b f e' f, d' f,\soff
  c\son g' c g e' g, c g\soff

  \break

  e\son gis d' gis, e' gis, d' gis,\soff
  a,\son e' b' e, c' e, d' e,
  e' r\soff r4 r2
  d,8\son a' e' a, f' a, g' a,

  \break

  d, a' e' a, f' a, g' a,\soff
  a,\son e' b' e, c' e, d' e,
  a, e' b' e, c' e, d' e,\soff
  d\son a' e' a, f' a, g' a,

  \break

  d, a' e' a, f' a, g' a,\soff
  a,\son e' b' e, c' e, d' e,
  e' r r4 r2\soff
  d,8\son a' e' a, f' a, g' a,

  \break

  d, a' e' a, f' a, g' a,\soff
  a,\son e' b' e, c' e, d' e,
  a, e' b' e, c' e, d' e,\soff

  \break

  d\son a' e' a, f' a, g' a,
  d, a' e' a, f' a, g' a,\soff
  a,\son e' b' e, c' e, d' e,
  a,4 r4 r2\soff

  \bar "|."
}
>>
