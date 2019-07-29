In music theory, the term MINOR SCALE refers to three scale patterns – the natural minor scale (or Aeolian mode), the harmonic minor scale, and the melodic minor scale (ascending or descending)[1] – rather than just one as with the major scale.

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { C natural minor scale } d es f g aes bes c2
 }

}

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { C harmonic minor scale } d es f g aes b!? c2
 }

}

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { C melodic minor scale } d es f g a!? b!?
 c bes aes g f es d
 c2
 }

}

In each of these scales, the first, third, and fifth scale degrees form a minor triad (rather than a major triad, as in a major scale). In some contexts, _minor scale_ is used to refer to any heptatonic scale with this property[2] (see Related modes below).


Natural minor scale

Relationship to relative major

A NATURAL MINOR SCALE (or Aeolian mode) is a diatonic scale that is built by starting on the sixth degree of its relative major scale. For instance, the A natural minor scale can be built by starting on the 6th degree of the C major scale:

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 c4^\markup { C major scale } d e f g

\override NoteHead.color = #red a \override NoteHead.color = #black b c2 \bar "||"

 \time 9/4
 \override NoteHead.color = #red a,4^\markup { A natural minor scale } \override NoteHead.color = #black b c d e f g a2 }

}

Because of this, the key of A minor is called the _relative minor_ of C major. Every major key has a relative minor, which starts on the 6th scale degree or step. For instance, since the 6th degree of F major is D, the relative minor of F major is D minor.

Relationship to parallel major

A natural minor scale can also be constructed by altering a major scale with accidentals. In this way, a natural minor scale is represented by the following notation:

    1, 2, 3, 4, 5, 6, 7, 8

Each degree of the scale, starting with the tonic (the first, lowest note of the scale), is represented by a number. Their difference from the major scale is shown. Thus, a number without a sharp or flat represents a major (or perfect) interval. A number with a flat represents a minor interval. In this example, the numbers mean:

-   1 = (perfect) unison
-   2 = major second
-   3 = minor third

-   4 = perfect fourth
-   5 = perfect fifth
-   6 = minor sixth

-   7 = minor seventh

-   8 = (perfect) octave

Thus, for instance, the A natural minor scale can be built by lowering the third, sixth, and seventh degrees of the A major scale by one semitone:

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 a4^\markup { A major scale } b \override NoteHead.color = #red cis \override NoteHead.color = #black d e \override NoteHead.color = #red fis gis \override NoteHead.color = #black a2 \bar "||"

 \time 9/4
 a,4^\markup { A natural minor scale } b \override NoteHead.color = #red c! \override NoteHead.color = #black d e \override NoteHead.color = #red f! g! \override NoteHead.color = #black a2 }

}

Because of this, the key of A minor is called the _parallel minor_ of A major.

Intervals

A_minor_scale.pngThe intervals between the notes of a natural minor scale follow the sequence below:

    whole, half, whole, whole, half, whole, whole

where "whole" stands for a whole tone (a red u-shaped curve in the figure), and "half" stands for a semitone (a red broken line in the figure).

The natural minor scale is maximally even.


Harmonic minor scale

=== Construction === The HARMONIC MINOR SCALE (or Aeolian 7 scale) has the same notes as the natural minor scale except that the seventh degree is raised by one semitone, creating an augmented second between the sixth and seventh degrees.

    {

\override Score.TimeSignature #'stencil = ##f \relative c' {

 \clef treble \time 7/4
 a4^\markup { A harmonic minor scale } b c d e f gis a2 }

}

Thus, a harmonic minor scale is represented by the following notation:

    1, 2, 3, 4, 5, 6, 7, 8

Thus, a harmonic minor scale can be built by lowering the 3rd and 6th degrees of the parallel major scale by one semitone.

Because of this construction, the 7th degree of the harmonic minor scale functions as a leading tone to the tonic because it is a _semitone_ lower than the tonic, rather than a _whole tone_ lower than the tonic as it is in natural minor scales. The intervals between the notes of a harmonic minor scale follow the sequence below:

    whole, half, whole, whole, half, augmented second, half

Harmony

The scale is called the _harmonic_ minor scale because it is a common foundation for harmonies (chords) in minor keys. For example, in the key of A minor, the dominant (V) chord (the triad built on the 5th scale degree, E) is a minor triad in the natural minor scale. But when the seventh degree is raised from G to G, the triad becomes a major triad.

Chords on degrees other than V may also include the raised 7th degree, such as the diminished triad on VII itself (vii), which has a dominant function, as well as an augmented triad on III (III), which is not found in any "natural" harmony (that is, harmony that is derived from harmonizing the seven western modes, which include "major" and "minor"). This augmented fifth chord (5 chord) played a part in the development of modern chromaticism.

The triads built on each scale degree follow a distinct pattern. The roman numeral analysis is shown below.

    {

\override Score.TimeSignature #'stencil = ##f

   \relative c' {
       \clef treble \time 7/1 \hide Staff.TimeSignature
       1_\markup i
       _\markup ii°
       _\markup III+
       _\markup iv
       <e gis! b>_\markup V
       _\markup VI
       <gis! b d>_\markup vii°
   }

}

An interesting property of the harmonic minor scale is that it contains two chords that are each generated by just one interval:

1.  an augmented triad (III), which is generated by major thirds
2.  a diminished seventh chord (vii⁷), which is generated by minor thirds

Because they are generated by just one interval, the inversions of augmented triads and diminished seventh chords introduce no new intervals (allowing for enharmonic equivalents) that are absent from its root position. That is, any inversion of an augmented triad (or diminished seventh chord) is enharmonically equivalent to a new augmented triad (or diminished seventh chord) in root position. For example, the triad E–G–B in first inversion is G–B–E, which is enharmonically equivalent to the augmented triad G–B–D. One chord, with various spellings, may therefore have various harmonic functions in various keys.

Uses

While it evolved primarily as a basis for chords, the harmonic minor with its augmented second is sometimes used melodically. Instances can be found in Mozart, Beethoven (for example, the finale of his String Quartet No. 14), and Schubert (for example, in the first movement of the _Death and the Maiden Quartet_). In this role, it is used while descending far more often than while ascending.

The harmonic minor is also occasionally referred to as the _Mohammedan scale_[3] as its upper tetrachord corresponds to the Hijaz jins, commonly found in Middle Eastern music. The harmonic minor scale as a whole is called _Nahawand_[4] in Arabic nomenclature, as _Bûselik Hicaz_[5] in Turkish nomenclature, and as an Indian raga, it is called _Kirwani_.

The Hungarian minor scale is similar to the harmonic minor scale but with a raised 4th degree. This scale is sometimes also referred to as "Gypsy Run", or alternatively "Egyptian Minor Scale", as mentioned by Miles Davis who describes it in his autobiography as "something that I'd learned at Juilliard".[6]

In popular music, examples of songs in harmonic minor include Katy B's "Easy Please Me", Bobby Brown's "My Prerogative", and Jazmine Sullivan's "Bust Your Windows". The scale also had a notable influence on heavy metal, spawning a sub-genre known as neoclassical metal, with guitarists such as Yngwie Malmsteen, Ritchie Blackmore, and Randy Rhoads employing its use in their music.[7]


Melodic minor scale

Construction

The distinctive sound of the harmonic minor scale comes from the augmented second between its sixth and seventh scale degrees. While some composers have used this interval to advantage in melodic composition, others felt it to be an awkward leap, particularly in vocal music, and preferred a whole step between these scale degrees for smooth melody writing. To eliminate the augmented second, these composers either raised the sixth degree by a semitone or lowered the seventh by a semitone.

The MELODIC MINOR SCALE is formed by using _both_ of these solutions. In particular, the raised sixth appears in the ascending form of the scale, while the lowered seventh appears in the descending form of the scale. Traditionally, these two forms are referred to as:

-   the _ascending melodic minor scale_ (also known as the heptatonia seconda, jazz minor scale, or Ionian 3): This form of the scale is also the 5th mode of the acoustic scale
-   the _descending melodic minor scale_: This form is identical to the natural minor scale

The ascending and descending forms of the A melodic minor scale are shown below:

    {

\override Score.TimeSignature #'stencil = ##f\relative c' {

 \clef treble \time 7/4 \hide Staff.TimeSignature
 \override Voice.TextScript.font-size = #-2
 a4^\markup { Ascending melodic minor } b c d e fis gis
 a^\markup { Descending melodic minor } g! f! e d c b a2 }

}

The ascending melodic minor scale can be notated as

    1, 2, 3, 4, 5, 6, 7, 8

while the descending melodic minor scale is

    1, 2, 3, 4, 5, 6, 7, 8

Using these notations, the two melodic minor scales can be built by altering the parallel major scale.

Uses

Composers have not been consistent in using the two forms of the melodic minor scale. Just as often, composers choose one form or the other based on whether one of the two notes is part of the most recent chord (the prevailing harmony). Composers frequently require the lowered 7th degree found in the natural minor in order to avoid the augmented triad (III) that arises in the ascending form of the scale.

In jazz, only the ascending form of the scale is usually used.

Examples of the use of melodic minor in rock and popular music include Elton John's "Sorry Seems To Be The Hardest Word", which makes, "a nod to the common practice... by the use of F [the leading tone in G minor] as the penultimate note of the final cadence."[8]


Key signature

In modern notation, the key signature for music in a minor key is typically based on the accidentals of the _natural_ minor scale, not on those of the harmonic or melodic minor scales. For example, a piece in E minor will have one sharp in its key signature because the E natural minor scale has one sharp (F).

Major and minor keys that share the same key signature are _relative_ to each other. For instance, F major is the relative major of D minor since both have key signatures with one flat. Since the natural minor scale is built on the 6th degree of the major scale, the tonic of the relative minor is a major sixth above the tonic of the major scale. For instance, B minor is the relative minor of D major because the note B is a major sixth above D. As a result, the key signatures of B minor and D major both have two sharps (F and C).


Related modes

Sometimes scales whose root, third, and fifth degrees form a minor triad are considered "minor scales". In the Western system, derived from the Greek modes, the principal scale that includes the minor third is the Aeolian mode (the natural minor scale), with the minor third also occurring in the Dorian mode and the Phrygian mode. The Dorian mode is a minor mode with a major sixth, while the Phrygian mode is a minor mode with a minor second. The Locrian mode (which is _very_ rarely used) has a minor third but not the perfect fifth, so its root chord is a diminished triad.

Although various hemitonic pentatonic scales might be called _minor_, the term is most commonly applied to the relative minor pentatonic scale, derived as a mode of the major pentatonic scale, using scale tones 1, 3, 4, 5, and 7 of the natural minor scale.[9]


See also

-   Diatonic functionality
-   Jazz minor scale
-   Jazz scale#Modes of the melodic minor scale
-   Major scale


References


Further reading

-   Hewitt, Michael. 2013. _Musical Scales of the World_. The Note Tree. .
-   Yamaguchi, Masaya. 2006. _The Complete Thesaurus of Musical Scales_, revised edition. New York: Masaya Music Services. .


External links

-   Listen to and download harmonised minor scale piano MP3s
-   Harmonic Minor Scale – Analysis
-   Modes of the Melodic Minor Scale

Category:Heptatonic scales Minor_scales Category:Modes

[1]

[2] Prout, Ebenezer (1889). _Harmony: Its Theory and Practice_, pg. 15, 74, London, Augener.

[3] United States Patent: 5386757

[4] "Maqam Nihawand", _Maqamworld.com_.

[5] "Buselik Makam", _Oud.Eclipse.co.uk_.

[6]

[7]  AllMusic|website=AllMusic|access-date=2018-11-26}}

[8] Stephenson (2002), p.41.

[9] Bruce Benward and Marilyn Nadine Saker (2003), _Music: In Theory and Practice_, seventh edition (Boston: McGraw Hill), vol. I, p. 37. .