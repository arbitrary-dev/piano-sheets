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
  system-system-spacing.basic-distance = #13
  indent = 0\cm
}

#(set-global-staff-size 23)

\new GrandStaff \with {
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #11
} <<
\time 2/4
\new Staff = "up" \relative c''' {

  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
    #'((alignment-distances . (11)))

  \tempo "Allegro"
  a4.-5\f a16 gis
  e4. e16-5 c
  a8 a16-5 gis e8 e16-5 c
  \new Voice {
    \change Staff = "down"
    \voiceOne
    \once \override TextScript.extra-offset = #'(-1 . -4.3)
    a8^\markup { \combine \path #0.1 #'((moveto 0.5 0) (lineto 0.5 -5) (lineto 1.5 -5)) \tiny "r. hand" } a16 gis e8 e16 c
  }

  \break

  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
    #'((alignment-distances . (11)))

  \new Voice {
    \change Staff = "down"
    \voiceOne
    a2
  }
  r8 \tuplet 3/2 { a'16 c e } r8 \tuplet 3/2 { a16 c e }

  s2

  \bar "||"

  r8\mp <a,, d> <d f>4

  \break

  r8 <b gis'> <e b'>4
  \time 4/4
  \numericTimeSignature
  \ottava #1
  e'-1\p f8. g16 f8 e4.-1
  e8.-1 f16 f8 g e2-1

  \break

  g4-1 a8. b16 a8 g4.-1
  g8.-1 a16 a8 b8 g2-1
  \ottava #0
  e,4-1\< f-2 b2-5\!

  \break

  a4-1 bes e2-5
  f4-5\f e \tuplet 3/2 { a,8-1 b c } b d
  gis,4.-2 a8-1 c4 b

  \bar ":|."
}

\new Staff = "down" \relative c {
\clef bass

  <a c e>2
  <gis b>
  <a c e>4 <gis b>
  \new Voice {
    \voiceTwo
    <a c e>4 <gis b>
  }

  \break

  \new Voice {
    \voiceTwo
    <c, a>2
  }
  \tuplet 3/2 { a'16 c e } r8 \tuplet 3/2 { a16 c e } r8
  \new Voice {
    \change Staff = "up"
    \voiceTwo
    \once \override TextScript.extra-offset = #'(-1.7 . 6.5)
    a'2_\markup { \combine \path #0.1 #'((moveto 0.7 1.3) (lineto 0.7 8.3) (lineto 1.7 8.3)) \tiny "l. hand" }

    \override Score.RehearsalMark.direction = #DOWN
    \mark \markup { \italic \normalsize "End" }
  }

  % TODO
  % \override DynamicLineSpanner.staff-padding = #4

  \bar "||"

  f,,,

  \break

  gis
  \clef treble
  \time 4/4
  \numericTimeSignature
  <a' c e>1
  <a c e>

  \break

  <c e g>
  <c e g>
  \clef bass
  \tuplet 3/2 { e,8 gis b } \tuplet 3/2 { d, f a } \tuplet 3/2 { b, d f } r4

  \break

  \tuplet 3/2 { a,8 cis e } \tuplet 3/2 { g, bes e } \tuplet 3/2 { a, cis e } r4
  <d f a>1
  <dis fis a>2 <e a c>4 <e gis b>

  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \tweak extra-offset #'(0 . -1)
  \mark \markup { \italic \normalsize "Repeat 'till \"End\"" }
  \bar ":|."
}
>>
