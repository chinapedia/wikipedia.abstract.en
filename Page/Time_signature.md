The TIME SIGNATURE (also known as METER SIGNATURE,[1] METRE SIGNATURE,[2] or MEASURE SIGNATURE)[3] is a notational convention used in Western musical notation to specify how many beats (pulses) are contained in each measure (bar), and which note value is equivalent to a beat.

In a music score, the time signature appears at the beginning as a time symbol or stacked numerals, such as or (read _common time_ and _three-four time_, respectively), immediately following the key signature (or immediately following the clef symbol if the key signature is empty). A mid-score time signature, usually immediately following a barline, indicates a change of meter.

There are various types of time signatures, depending on whether the music follows regular (or symmetrical) beat patterns, including simple (e.g., and ), and compound (e.g., and ); or involves shifting beat patterns, including complex (e.g., or ), mixed (e.g., & or & ), additive (e.g., ), fractional (e.g., ), and irrational meters (e.g., or ).


Frequently used time signatures

Simple vs. compound

Simple

Simple time signatures consist of two numerals, one stacked above the other:

-   The _lower_ numeral indicates the note value that represents one beat (the _beat unit_). This number is typically a power of 2.
-   The _upper_ numeral indicates how many such beats constitute a bar.

For instance, means two quarter-note (crotchet) beats per bar, while means three eighth-note (quaver) beats per bar. The most common simple time signatures are , , and .

By convention, two special symbols are sometimes used for and :

-   The symbol is sometimes used for time, also called _common time_ or _imperfect time_. The symbol is derived from a broken circle used in music notation from the 14th through 16th centuries, where a full circle represented what today would be written in or time, and was called _tempus perfectum_ (perfect time).[4] See Mensural time signatures below.
-   The symbol is also a carry-over from the notational practice of late-Medieval and Renaissance music, where it signified _tempus imperfectum diminutum_ (diminished imperfect time)—more precisely, a doubling of the speed, or _proportio dupla_, in duple meter.[5] In modern notation, it is used in place of and is called _alla breve_ or, colloquially, _cut time_ or _cut common time_.

Compound

In compound meter, subdivisions (which are what the upper number represents in these meters) of the beat are in three equal parts, so that a dotted note (half again longer than a regular note) becomes the beat. The upper numeral of compound time signatures is commonly 3, 6, 9, or 12 (multiples of 3 in each beat). The lower number is most commonly an 8 (an eighth-note or quaver): as in or .

Examples

In the examples below, BOLD denotes a more-stressed beat, and _italics_ denotes a less-stressed beat.

_Simple_: is a simple triple meter time signature that represents three quarter notes (crotchets). It is felt as



        : ONE and _two_ and _three_ and ...

_Compound_: In principle, comprises not three groups of two eighth notes (quavers) but two groups of three eighth-note (quaver) subdivisions. It is felt as



        : ONE two three _four_ five six ...

These examples assume, for simplicity, that continuous eighth notes are the prevailing note values. The rhythm of actual music is typically not as regular.

Duple, triple, etc.

Time signatures indicating _two_ beats per bar (whether in simple or compound meter) are called _duple meter_, while those with _three_ beats to the bar are _triple meter_. Terms such as _quadruple_ (4), _quintuple_ (5), and so on, are also occasionally used.

Beating time signatures

To the ear, a bar may seem like one singular beat. For example, a fast waltz, notated in time, may be described as being _one in a bar_. Correspondingly, at slow tempos, the beat indicated by the time signature could in actual performance be divided into smaller units.

On a formal mathematical level, the time signatures of, e.g., and are interchangeable. In a sense, _all_ simple triple time signatures, such as , , , etc.—and all compound duple times, such as , and so on, are equivalent. A piece in can be easily rewritten in , simply by halving the length of the notes.



   \new Staff <<
      \new voice \relative c' {
          \clef percussion
          \time 3/4
          \tempo 4 = 100       
          \stemDown \repeat volta 2 { g4 d' d }
          \time 3/8
          \tempo 8 = 100       
          \stemDown \repeat volta 2 { g,8 d' d }
      }
      \new voice \relative c'' {
          \override NoteHead.style = #'cross
          \stemUp \repeat volta 2 { a8[ a] a[ a] a[ a] }
          \stemUp \repeat volta 2 { a16 a a a a a }
      }
  >>

Other time signature rewritings are possible: most commonly a simple time signature with triplets translates into a compound meter.



   \new Staff <<
      \new voice \relative c' {
          \clef percussion
          \time 12/8
          \tempo 4. = 66       
          \stemDown \repeat volta 2 { g4. d' g, d' }
          \numericTimeSignature
          \time 4/4
          \tempo 4 = 66       
          \stemDown \repeat volta 2 { g,4 d' g, d' }
      }
      \new voice \relative c'' {
          \override NoteHead.style = #'cross
          \stemUp \repeat volta 2 { a8 a a a a a  a a a a a a }
          \stemUp \repeat volta 2 { \tuplet 3/2 { a8 a a } \tuplet 3/2 { a8 a a } \tuplet 3/2 { a8 a a } \tuplet 3/2 { a8 a a } }
      }
  >>

Though formally interchangeable, for a composer or performing musician, by convention, different time signatures often have different connotations. First, a smaller note value in the beat unit implies a more complex notation, which can affect ease of performance. Second, beaming affects the choice of actual beat divisions. It is, for example, more natural to use the quarter note/crotchet as a beat unit in or than the eight/quaver in or . Third, time signatures are traditionally associated with different music styles—it might seem strange to notate a rock tune in or .

Characteristics

The table below shows the characteristics of the most frequently-used time signatures.

+--------------------------+
| Simple time signatures   |
+==========================+
| Time signature           |
+--------------------------+
| or (quadruple)           |
+--------------------------+
| or (duple)               |
+--------------------------+
| (duple)                  |
+--------------------------+
| (triple)                 |
+--------------------------+
| (triple)                 |
+--------------------------+
| Compound time signatures |
+--------------------------+
| Time signature           |
+--------------------------+
| (duple)                  |
+--------------------------+
| (triple)                 |
+--------------------------+
| (quadruple)              |
+--------------------------+


Complex time signatures

Signatures that do not fit the usual duple or triple categories are called _complex_, _asymmetric_, _irregular_, _unusual_, or _odd_—though these are broad terms, and usually a more specific description is appropriate. The term _odd meter_, however, sometimes describes time signatures in which the upper number is simply odd rather than even, including and .[6]

The irregular meters (not fitting duple or triple categories) are common in some non-Western music, but rarely appeared in formal written Western music until the 19th century. Early anomalous examples appeared in Spain between 1516 and 1520,[7] but the Delphic Hymns to Apollo (one by Athenaeus is entirely in quintuple meter, the other by Limenius predominantly so), carved on the exterior walls of the Athenian Treasury at Delphi in 128 BC are in the relatively common cretic meter, with five beats to a foot.[8]

The third movement of Frédéric Chopin's Piano Sonata No. 1 (1828) is an early, but by no means the earliest, example of time in solo piano music. Anton Reicha's Fugue No. 20 from his _Thirty-six Fugues_, published in 1803, is also for piano and is in . The waltz-like second movement of Tchaikovsky's _Pathétique_ Symphony (shown below), often described as a "limping waltz",[9] is a notable example of time in orchestral music.



   \relative c {
       \set Score.tempoHideNote = ##t \tempo 4 = 144
       \set Staff.midiInstrument = #"cello"
       \clef bass
       \key d \major
       \time 5/4
       fis4\mf(^\markup { \bold { Allegro con grazia } }
       g) \tuplet 3/2 { a8(\< g a } b4 cis)\!
       d( b) cis2.\>
       a4(\mf b) \tuplet 3/2 { cis8(\< b cis } d4 e)\!
       \clef tenor
       fis(\f d) e2. \break
       g4( fis) \tuplet 3/2 { e8( fis e } d4 cis)
       fis8-. [ r16 g( ] fis8) [ r16 eis( ] fis2.)
       fis4( e) \tuplet 3/2 { d8( e d } cis4) b\upbow(\<^\markup { \italic gliss. }
       [ b'8)\ff\> a( g) fis-. ] e-. [ es-.( d-. cis-. b-. bes-.) ]
       a4\mf

}

Examples from 20th-century classical music include:

-   Gustav Holst's "Mars, the Bringer of War" and "Neptune, the Mystic" from _The Planets_ (both in )
-   Paul Hindemith's "Fuga secunda" in G from _Ludus Tonalis_ ()
-   the ending of Stravinsky's _The Firebird_ ()
-   the fugue from Heitor Villa-Lobos's _Bachianas Brasileiras No. 9_ ()
-   the themes for the _Mission: Impossible_ television series by Lalo Schifrin (in ) and for _Room 222_ by Jerry Goldsmith (in )<!--

PLEASE DO NOT ADD MORE EXAMPLES - THIS IS A **SHORT** LIST!
EDIT THE ARTICLE List of musical works in unusual time signatures INSTEAD

--> In the Western popular music tradition, unusual time signatures occur as well, with progressive rock in particular making frequent use of them. The use of shifting meters in The Beatles' "Strawberry Fields Forever" and the use of quintuple meter in their "Within You, Without You" are well-known examples,[10] as is Radiohead's "Paranoid Android" (includes ).[11]

Paul Desmond's jazz composition "Take Five", in time, was one of a number of irregular-meter compositions that The Dave Brubeck Quartet played. They played other compositions in ("Eleven Four"), ("Unsquare Dance"), and ("Blue Rondo à la Turk"), expressed as . This last is an example of a work in a signature that, despite appearing merely compound triple, is actually more complex. Brubeck's title refers to the characteristic _aksak_ meter of the Turkish _karşılama_ dance.[12]

However, such time signatures are only unusual in most Western music. Traditional music of the Balkans uses such meters extensively. Bulgarian dances, for example, include forms with 5, 7, 9, 11, 13, 15, 22, 25 and other numbers of beats per measure. These rhythms are notated as _additive rhythms_ based on simple units, usually 2, 3 and 4 beats, though the notation fails to describe the metric "time bending" taking place, or compound meters. See Additive meters below.

SOME VIDEO SAMPLES ARE SHOWN BELOW.

  ------------------------------ -------------------------- -----------------------------
  Video-of-5o4-at-60-bpm.ogv]]   Video-for-7o4.theora.ogv   Video-of-11o4-at-60-bpm.ogv
  ------------------------------ -------------------------- -----------------------------


Mixed meters

While time signatures usually express a regular pattern of beat stresses continuing through a piece (or at least a section), sometimes composers place a different time signature at the beginning of each bar, resulting in music with an extremely irregular rhythmic feel. In this case, the time signatures are an aid to the performers and not _necessarily_ an indication of meter. The Promenade from Modest Mussorgsky's _Pictures at an Exhibition_ (1874) is a good example. The opening measures are shown below:



   { \new PianoStaff <<
       \new Staff <<
           \new voice \relative c'' {
               \set Score.tempoHideNote = ##t \tempo 4 = 112
               \clef treble \key bes \major 
               \time 5/4 
                   g4--_\f^\markup { \bold {Allegro giusto, nel modo russico; senza allegrezza, ma poco sostenuto. } } f-- bes-- c8--( f d4--)
               \time 6/4
                   c8--( f d4--) bes-- c-- g-- f--
               \time 5/4
                   <bes, d g>4  <bes d bes'> \stemDown <c a'> \stemNeutral 
               \time 6/4
                   \stemDown <c a'> \stemNeutral    <g, c g'> 
               }
           \new Voice \relative c'' {
               \time 5/4
                   s1 s4
               \time 6/4
                   s1.
               \time 5/4
                   s2. \stemUp c8^( f d4)
               \time 6/4
                   \stemUp c8^( f d4) s1
               }
           >>
       \new Staff <<
           \clef bass \key bes \major 
           \relative c {
               \time 5/4
                   R1*5/4
               \time 6/4
                   R1*6/4
               \time 5/4
                   <g g'>4 <a f'> <g g'> <f f'> <d d'>
               \time 6/4
                   <f f'> <bes bes'> <g g'> <c, c'> <e e'> <f f'>
               }
           >>
   >> }



Igor Stravinsky's _The Rite of Spring_ (1913) is famous for its "savage" rhythms. Five measures from "Sacrificial Dance" are shown below:

    { \new PianoStaff << \new Staff \relative c'' { \set Staff.midiInstrument = #"violin" \clef treble \tempo 8 = 126 \override DynamicLineSpanner.staff-padding = #4 \time 3/16 r16 -! r16\fermata | \time 2/16 r -! \time 3/16 r 8-! | r16 8-! | \time 2/8 16-! ->-![ -! -!] } \new Staff \relative c { \set Staff.midiInstrument = #"violin" \clef bass \time 3/16 d,16-! <bes'' ees,>^\f-! r\fermata | \time 2/16 <d,, d,>-! <bes'' ees,>-! | \time 3/16 d16-! 8-! | r16 8-! | \time 2/8 d16^\sf-! -!->[ -! -!] } >> }

In such cases, a convention that some composers follow (e.g., Olivier Messiaen, in his _La Nativité du Seigneur_ and _Quatuor pour la fin du temps_) is to simply omit the time signature. Charles Ives's _Concord Sonata_ has measure bars for select passages, but the majority of the work is unbarred.

Some pieces have no time signature, as there is no discernible meter. This is sometimes known as _free time_. Sometimes one is provided (usually ) so that the performer finds the piece easier to read, and simply has "free time" written as a direction. Sometimes the word _FREE_ is written downwards on the staff to indicate the piece is in free time. Erik Satie wrote many compositions that are ostensibly in free time but actually follow an unstated and unchanging simple time signature. Later composers used this device more effectively, writing music almost devoid of a discernibly regular pulse.

If two time signatures alternate repeatedly, sometimes the two signatures are placed together at the beginning of the piece or section, as shown below:

    Tchaikovsky_String_Quartet_in_F_excerpt.png, showing a multiple time signature]]


Additive meters

To indicate more complex patterns of stresses, such as additive rhythms, more complex time signatures can be used. Additive meters have a pattern of beats that subdivide into smaller, irregular groups. Such meters are sometimes called _imperfect_, in contrast to _perfect meters_, in which the bar is first divided into equal units.[13]

For example, the time signature means that there are 8 quaver beats in the bar, divided as the first of a group of three eighth notes (quavers) that are stressed, then the first of a group of two, then first of a group of three again. The stress pattern is usually counted as



        : ONE two three _one_ two _one_ two three ...

This kind of time signature is commonly used to notate folk and non-Western types of music. In classical music, Béla Bartók and Olivier Messiaen have used such time signatures in their works. The first movement of Maurice Ravel's Piano Trio in A Minor is written in , in which the beats are likewise subdivided into to reflect Basque dance rhythms.

Romanian musicologist Constantin Brăiloiu had a special interest in compound time signatures, developed while studying the traditional music of certain regions in his country. While investigating the origins of such unusual meters, he learned that they were even more characteristic of the traditional music of neighboring peoples (e.g., the Bulgarians). He suggested that such timings can be regarded as compounds of simple two-beat and three-beat meters, where an accent falls on every first beat, even though, for example in Bulgarian music, beat lengths of 1, 2, 3, 4 are used in the metric description. In addition, when focused only on stressed beats, simple time signatures can count as beats in a slower, compound time. However, there are two different-length beats in this resulting compound time, a one half-again longer than the short beat (or conversely, the short beat is the value of the long). This type of meter is called _aksak_ (the Turkish word for "limping"), _impeded_, _jolting_, or _shaking_, and is described as an _irregular bichronic rhythm_. A certain amount of confusion for Western musicians is inevitable, since a measure they would likely regard as , for example, is a three-beat measure in _aksak_, with one long and two short beats (with subdivisions of , , or ).[14]

Folk music may make use of metric time bends, so that the proportions of the performed metric beat time lengths differ from the exact proportions indicated by the metric. Depending on playing style of the same meter, the time bend can vary from non-existent to considerable; in the latter case, some musicologists may want to assign a different meter. For example, the Bulgarian tune "Eleno Mome" is written in one of three forms: (1) 2+2+1+2}}, (2) 4+4+2+3}}, or (3) 3+4+2+3'''}}, but an actual performance (e.g., Smithsonian Eleno Mome) may be closer to . The Macedonian meter is even more complicated, with heavier time bends, and use of quadruples on the threes. The metric beat time proportions may vary with the speed that the tune is played. The Swedish Boda Polska (Polska from the parish Boda) has a typical elongated second beat.

In Western classical music, metric time bend is used in the performance of the Viennese Waltz. Most Western music uses metric ratios of 2:1, 3:1, or 4:1 (two-, three- or four-beat time signatures)—in other words, integer ratios that make all beats equal in time length. So, relative to that, 3:2 and 4:3 ratios correspond to very distinctive metric rhythm profiles. Complex accentuation occurs in Western music, but as syncopation rather than as part of the metric accentuation.

Brăiloiu borrowed a term from Turkish medieval music theory: _aksak_. Such compound time signatures fall under the "aksak rhythm" category that he introduced along with a couple more that should describe the rhythm figures in traditional music.[15] The term Brăiloiu revived had moderate success worldwide, but in Eastern Europe it is still frequently used. However, aksak rhythm figures occur not only in a few European countries, but on all continents, featuring various combinations of the two and three sequences. The longest are in Bulgaria. The shortest aksak rhythm figures follow the five-beat timing, comprising a two and a three (or three and two).

SOME VIDEO SAMPLES ARE SHOWN BELOW.

  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Video-for-time-signature-3+2+3.theora.ogv]]   Blue-Rondo-à-La-Turk.theora.ogv's "Blue Rondo à la Turk": It consists of three measures of followed by one measure of and the cycle then repeats. Taking the smallest time unit as eighth notes, the arrows on the tempo dial show the tempi for ♪, ♩, ♩. and the measure beat. Starts slow, speeds up to usual tempo]]
  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Irrational meters

Irrational time signatures (rarely, "non-dyadic time signatures") are used for so-called _irrational bar lengths_,[16] that have a denominator that is not a power of two (1, 2, 4, 8, 16, 32, etc.). These are based on beats expressed in terms of fractions of full beats in the prevailing tempo—for example or .[17] For example, where implies a bar construction of four quarter-parts of a whole note (i.e., four quarter notes), implies a bar construction of four third-parts of it. These signatures are of utility only when juxtaposed with other signatures with varying denominators; a piece written entirely in , say, could be more legibly written out in .

According to Brian Ferneyhough, metric modulation is "a somewhat distant analogy" to his own use of "irrational time signatures" as a sort of rhythmic dissonance.[18] It is arguable whether the use of these signatures makes metric relationships clearer or more obscure to the musician; it is always possible to write a passage using non-irrational signatures by specifying a relationship between some note length in the previous bar and some other in the succeeding one. Sometimes, successive metric relationships between bars are so convoluted that the pure use of irrational signatures would quickly render the notation extremely hard to penetrate. Good examples, written entirely in conventional signatures with the aid of between-bar specified metric relationships, occur a number of times in John Adams' opera _Nixon in China_ (1987), where the sole use of irrational signatures would quickly produce massive numerators and denominators.

Historically, this device has been prefigured wherever composers wrote tuplets. For example, a bar of 3 triplet crotchets could arguably be written as a bar of . Henry Cowell's piano piece _Fabric_ (1920) employs separate divisions of the bar (anything from 1 to 9) for the three contrapuntal parts, using a scheme of shaped noteheads to visually clarify the differences, but the pioneering of these signatures is largely due to Brian Ferneyhough, who says that he finds that "such 'irrational' measures serve as a useful buffer between local changes of event density and actual changes of base tempo".[19] Thomas Adès has also used them extensively—for example in _Traced Overhead_ (1996), the second movement of which contains, among more conventional meters, bars in such signatures as , and .

A gradual process of diffusion into less rarefied musical circles seems underway. For example, John Pickard's _Eden_, commissioned for the 2005 finals of the National Brass Band Championships of Great Britain contains bars of and .[20]

Notationally, rather than using Cowell's elaborate series of notehead shapes, the same convention has been invoked as when normal tuplets are written; for example, one beat in is written as a normal quarter note, four quarter notes complete the bar, but the whole bar lasts only of a reference whole note, and a beat of one (or of a normal quarter note). This is notated in exactly the same way that one would write if one were writing the first four quarter notes of five quintuplet quarter notes.

SOME VIDEO SAMPLES ARE SHOWN BELOW.

These video samples show two time signatures combined to make a polymeter, since , say, in isolation, is identical to .

  ------------------------------ ------------------------------ ----------------------------------------------
  Polymeter-4o4c4o3.theora.ogv   Polymeter-2o6c3o4.theora.ogv   Polymeter-2o5c2o3.theora.ogv, which is 5:3]]
  ------------------------------ ------------------------------ ----------------------------------------------


Variants

Some composers have used fractional beats: for example, the time signature appears in Carlos Chávez's Piano Sonata No. 3 (1928) IV, m. 1.

orff_time_signatures.gif Music educator Carl Orff proposed replacing the lower number of the time signature with an actual note image, as shown at right. This system eliminates the need for compound time signatures, which are confusing to beginners. While this notation has not been adopted by music publishers generally (except in Orff's own compositions), it is used extensively in music education textbooks. Similarly, American composers George Crumb and Joseph Schwantner, among others, have used this system in many of their works.

Another possibility is to extend the barline where a time change is to take place above the top instrument's line in a score and to write the time signature there, and there only, saving the ink and effort that would have been spent writing it in each instrument's staff. Henryk Górecki's _Beatus Vir_ is an example of this. Alternatively, music in a large score sometimes has time signatures written as very long, thin numbers covering the whole height of the score rather than replicating it on each staff; this is an aid to the conductor, who can see signature changes more easily.


Early music usage

Mensural time signatures

In the 14th, 15th and 16th centuries, a period in which mensural notation was used, four basic _mensuration signs_ determined the proportion between the two main units of rhythm. There were no measure or bar lines in music of this period; these signs, the ancestors of modern time signatures, indicate the ratio of duration between different note values. The relation between the _breve_ and the _semibreve_ was called TEMPUS, and the relation between the _semibreve_ and the _minim_ was called PROLATIO. The breve and the semibreve use roughly the same symbols as our modern double whole note (breve) and whole note (semibreve), but they were not limited to the same proportional values as are in use today. There are complicated rules concerning how a breve is sometimes three and sometimes two semibreves. Unlike modern notation, the duration ratios between these different values was not always 2:1; it could be either 2:1 or 3:1, and that is what, amongst other things, these mensuration signs indicated. A ratio of 3:1 was called _complete_, perhaps a reference to the Trinity, and a ratio of 2:1 was called _incomplete_.

A circle used as a mensuration sign indicated _tempus perfectum_ (a circle being a symbol of completeness), while an incomplete circle, resembling a letter C, indicated _tempus imperfectum_. Assuming the breve is a beat, this corresponds to the modern concepts of triple meter and duple meter, respectively. In either case, a dot in the center indicated _prolatio perfecta_ (compound meter) while the absence of such a dot indicated _prolatio imperfecta_ (simple meter).

A rough equivalence of these signs to modern meters would be:

-   Mensural_time_signature_1_(alternative).svg corresponds to meter;
-   Mensural_time_signature_2_(alternative).svg corresponds to meter;
-   Mensural_time_signature_3_(alternative).svg corresponds to meter;
-   Mensural_time_signature_4_(alternative).svg corresponds to meter.

N.B.: in modern compound meters the beat is a dotted note value, such as a dotted quarter, because the ratios of the modern note value hierarchy are always 2:1. Dotted notes were never used in this way in the mensural period; the main beat unit was always a simple (undotted) note value.

Proportions

Another set of signs in mensural notation specified the metric proportions of one section to another, similar to a metric modulation. A few common signs are shown:[21]

-   Allabreve.svg _tempus imperfectum diminutum_, 1:2 proportion (twice as fast);
-   mensural_proportion_2.svg _tempus perfectum diminutum_, 1:2 proportion (twice as fast);
-   mensural_proportion_5.svg or just mensural_proportion_4.svg _proportio tripla_, 1:3 proportion (three times as fast, similar to triplets).

Often the ratio was expressed as two numbers, one above the other,[22] looking similar to a modern time signature, though it could have values such as , which a conventional time signature could not.

Some proportional signs were not used consistently from one place or century to another. In addition, certain composers delighted in creating "puzzle" compositions that were intentionally difficult to decipher.[23]

In particular, when the sign Allabreve.svg was encountered, the tactus (beat) changed from the usual whole note (semibreve) to the double whole note (breve), a circumstance called _alla breve_. This term has been sustained to the present day, and though now it means the beat is a half note (minim), in contradiction to the literal meaning of the phrase, it still indicates that the beat has changed to a longer note value.


See also

-   Schaffel
-   Tala


References

Category:Musical notation * Category:Articles containing video clips Category:Music theory

[1] Alexander R. Brinkman, _Pascal Programming for Music Research_ (Chicago: University of Chicago Press, 1990): 443, 450–63, 757, 759, 767. ; Mary Elizabeth Clark and David Carr Glover, _Piano Theory: Primer Level_ (Miami: Belwin Mills, 1967): 12; Steven M. Demorest, _Building Choral Excellence: Teaching Sight-Singing in the Choral Rehearsal_ (Oxford and New York: Oxford University Press, 2003): 66. ; William Duckworth, _A Creative Approach to Music Fundamentals_, eleventh edition (Boston, MA: Schirmer Cengage Learning, 2013): 54, 59, 379. ; Edwin Gordon, _Tonal and Rhythm Patterns: An Objective Analysis: A Taxonomy of Tonal Patterns and Rhythm Patterns and Seminal Experimental Evidence of Their Difficulty and Growth Rate_ (Albany: SUNY Press, 1976): 36–37, 54–55, 57. ; Demar Irvine, Reinhard G. Pauly, Mark A. Radice, _Irvine’s Writing about Music_, third edition (Portland, Oregon: Amadeus Press, 1999): 209–10. .

[2] Henry Cowell and David Nicholls, _New Musical Resources_, third edition (Cambridge and New York: Cambridge University Press, 1996): 63. (cloth); (pbk); Cynthia M. Gessele, "Thiéme, Frédéric [Thieme, Friedrich]", _The New Grove Dictionary of Music and Musicians_, second edition, edited by Stanley Sadie and John Tyrrell (London: Macmillan Publishers, 2001); James L. Zychowicz, _Mahler's Fourth Symphony_ (Oxford and New York: Oxford University Press, 2005): 82–83, 107. .

[3] Edwin Gordon, _Rhythm: Contrasting the Implications of Audiation and Notation_ (Chicago: GIA Publications, 2000): 111. .

[4]

[5] Willi Apel, _The Notation of Polyphonic Music 900–1600_, fifth edition, revised and with commentary; The Medieval Academy of America Publication no. 38 (Cambridge, Massachusetts: The Medieval Academy of America, 1953): 147–48.

[6] Tim Emmons, _Odd Meter Bass: Playing Odd Time Signatures Made Easy_ (Van Nuys: Alfred Publishing, 2008): 4. . "What is an 'odd meter'?...A complete definition would begin with the idea of music organized in repeating rhythmic groups of three, five, seven, nine, eleven, thirteen, fifteen, etc."

[7]

[8] Egert Pöhlmann and Martin L. West, _Documents of Ancient Greek Music: The Extant Melodies and Fragments_, edited and transcribed with commentary by Egert Pöhlmann and Martin L. West (Oxford: Clarendon Press, 2001): 70–71, 85. .

[9]

[10] Edward Macan, _Rocking the Classics: English Progressive Rock and the Counterculture_ (New York: Oxford University Press, 1997): 48. .

[11] Radiohead (musical group). _OK Computer_, vocal score with guitar accompaniment and tablature (Essex, England: IMP International Music Publications; Miami, FL: Warner Bros. Publications; Van Nuys, Calif.: Alfred Music Co., Inc., 1997): . .

[12]

[13] Gardner Read, _Music Notation: A Manual of Modern Practice_ (Boston: Allyn and Bacon, Inc., 1964):

[14] Constantin Brăiloiu, _Le rythme Aksak_, _Revue de Musicologie_ 33, nos. 99 and 100 (December 1951): 71–108. Citation on pp. 75–76.

[15] Gheorghe Oprea, _Folclorul muzical românesc_ (Bucharest: Ed. Muzicala, 2002),

[16] "Brian Ferneyhough", _The Ensemble Sospeso_

[17]

[18]

[19]

[20] John Pickard: Eden, full score, Kirklees Music, 2005.

[21] Willi Apel, _The Notation of Polyphonic Music 900–1600_, fifth edition, revised with commentary; The Medieval Academy of America Publication no. 38 (Cambridge, Massachusetts: The Mediaeval Academy of America, 1953), p. 148.

[22] Willi Apel, _The Notation of Polyphonic Music 900–1600_, fifth edition, revised with commentary; The Medieval Academy of America Publication no. 38 (Cambridge, Massachusetts: The Mediaeval Academy of America, 1953), p. 147.

[23] Ernst Friedrich Richter, _A Treatise on Canon and Fugue: Including the Study of Imitation_, translated from third German edition by Arthur W. Foote (Boston: Oliver Ditson, 1888): 38. .