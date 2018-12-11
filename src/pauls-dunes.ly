\version "2.19.80"

\header {
  title = "Long Road in Dunes"
  composer = "Raimond Pauls"
  tagline = "2ch.hk/mus"
}

#(set! paper-alist (cons '("custom" . (cons (* 210 mm) (* 290 mm))) paper-alist))
\paper {
  #(set-paper-size "custom")
  system-system-spacing.basic-distance = #14
  indent = 0\cm
}

son = \sustainOn
soff = \sustainOff
bon = \autoBeamOn
boff = \autoBeamOff

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #11
} <<
\time 4/4
\new Staff \relative e' {
\numericTimeSignature

  r8\boff e8\bon b' a d4. c8
  e1
  r8\boff e,8\bon b' a d4. c8
  f1

  \break

  r8\boff a,\bon e' d g4. f8
  gis4. a8 b4. a8
  gis4. a8 b f4 e16 d
  c1

  \break

  r8\boff e,\bon b' a d4. c8
  e1
  r8\boff e,\bon b' a d4. c8
  f1

  \break

  r8\boff d\bon e f g4. a8
  a g g2.
  r8\boff d\bon a' g g d4 e16 f
  e2. f8 e

  \break



  \bar "|."
}

\new Staff \relative a, {
\numericTimeSignature
\clef bass

  r1
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



  \bar "|."
}
>>
