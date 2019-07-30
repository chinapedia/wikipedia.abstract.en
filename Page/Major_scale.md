The MAJOR SCALE (or Ionian scale) is one of the most commonly used musical scales, especially in Western music. It is one of the diatonic scales. Like many musical scales, it is made up of seven notes: the eighth duplicates the first at double its frequency so that it is called a higher octave of the same note (from Latin "octavus", the eighth).

The simplest major scale to write is C major, the only major scale not requiring sharps or flats:

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4 d e f g a b c

} }

The major scale had a central importance in Western music, particularly in the common practice period and in popular music.

In Carnatic music, it is known as _Dheerasankarabharanam_. In Hindustani classical music, it is known as _Bilaval_.


Structure

A major scale is a diatonic scale. The sequence of intervals between the notes of a major scale is:

    whole, whole, half, whole, whole, whole, half

where "whole" stands for a whole tone (a red u-shaped curve in the figure), and "half" stands for a semitone (a red broken line in the figure).[1]

A major scale may be seen as two identical tetrachords separated by a whole tone. Each tetrachord consists of two whole tones followed by a semitone (i.e. whole, whole, half).

The major scale is maximally even.

Scale degrees

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 15/4
 c4-1 d-2 e-3 f-4 g-5 a-6 b-7 c-8 b-7 a-6 g-5 f-4 e-3 d-2 c-1

} }

The scale degrees are:

-   1st: Tonic
-   2nd: Supertonic
-   3rd: Mediant
-   4th: Subdominant
-   5th: Dominant
-   6th: Submediant
-   7th: Leading tone

-   8th: Tonic

Triad qualities

    {

\override Score.TimeSignature #'stencil = ##f

   \relative c' {
       \clef treble \time 7/1
       1_\markup I
       _\markup ii
       _\markup iii
       _\markup IV
       _\markup V
       _\markup vi
       _\markup vii°
   }

}

The triads built on each scale degree follow a distinct pattern. The roman numeral analysis is shown in parentheses.

-   1st: Major triad (I)
-   2nd: minor triad (ii)
-   3rd: minor triad (iii)
-   4th: Major triad (IV)
-   5th: Major triad (V)
-   6th: minor triad (vi)
-   7th: diminished triad (vii^(o))


Relationship to major keys

If a piece of music (or part of a piece of music) is in a major key, then the notes _in_ the corresponding major scale are considered _diatonic_ notes, while the notes _outside_ the major scale are considered _chromatic_ notes. Moreover, the key signature of the piece of music (or section) will generally reflect the accidentals in the corresponding major scale.

For instance, if a piece of music is in E major, then the seven pitches in the E major scale (E, F, G, A, B, C and D) are considered diatonic pitches, and the other five pitches (E, F/G, A, B, and C/D) are considered chromatic pitches. In this case, the key signature will have three flats (B, E, and A).

The figure below shows all 12 relative major and minor keys, with major keys on the outside and minor keys on the inside arranged around the circle of fifths.

The numbers inside the circle show the number of sharps or flats in the key signature, with the sharp keys going clockwise, and the flat keys counterclockwise from C major (which has no sharps or flats.) The circular arrangement depends on enharmonic relationships in the circle, usually reckoned at six sharps or flats for the major keys of F = G and D = E for minor keys.[2] Seven sharps or flats make major keys (C major or C major) that may be more conveniently spelled with five flats or sharps (as D major or B major).


Broader sense

The term "major scale" is also used in the names of some other scales whose first, third, and fifth degrees form a major triad.

The harmonic major scale[3][4][5] has a minor sixth. It differs from the harmonic minor scale only by raising the third degree.

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { Harmonic major scale }  d e f g aes b c

} }

There are two scales that go by the name melodic major scale:

The first is the fifth mode of the jazz minor scale[6], which can be thought of as the major scale (Ionian mode) with a lowered sixth and seventh degree or the natural minor scale (Aeolian mode) with a raised third.

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { Melodic major scale }  d e f g aes bes c

} }

The second is the combined scale that goes as Ionian ascending and as the previous melodic major descending. It differs from melodic minor scale only by raising the third degree to a major third.[7]

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4

 c4^\markup { Melodic major (ascending and descending) }  d e f g a b  c bes aes g f e d c

} }

The double harmonic major scale[8][9] has a minor second and a minor sixth. It is the fifth mode of the Hungarian minor scale.

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { Double harmonic major scale }  des e f g aes b c

} }


See also

-   Ionian mode
-   Major and minor


References


Further reading

-   -   -   -


External links

-   Listen to and download harmonised Major scale piano MP3s

Major_scales Category:Heptatonic scales Category:Modes

[1] https://www.britannica.com/art/major-scale

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]