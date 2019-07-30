's "Thy Hand, Belinda", _Dido and Aeneas_ (1689) with figured bass below (, with figured bass realization).]]

FIGURED BASS, or THOROUGHBASS, is a kind of musical notation in which numerals and symbols (often accidentals) indicate intervals, chords, and non-chord tones that a musician playing piano, harpsichord, organ, lute (or other instruments capable of playing chords) play in relation to the bass note that these numbers and symbols appear above or below. Figured bass is closely associated with basso continuo, a historically improvised accompaniment used in almost all genres of music in the Baroque period of Classical music (1600–1750), though rarely in modern music.

Other systems for denoting or representing chords include[1] plain staff notation, used in classical music; Roman numerals, commonly used in harmonic analysis;[2] macro symbols, sometimes used in modern musicology; the Nashville Number System; and various chord names and symbols used in jazz and popular music (e.g., C Major or simply C; D minor or Dm; G⁷, etc.).


Basso continuo

BASSO CONTINUO parts, almost universal in the Baroque era (1600–1750), provided the harmonic structure of the music. The phrase is often shortened to _continuo_, and the instrumentalists playing the continuo part are called the _continuo group_.

The makeup of the continuo group is often left to the discretion of the performers, and practice varied enormously within the Baroque period. At least one instrument capable of playing chords must be included, such as a piano, harpsichord, organ, lute, theorbo, guitar, regal, or harp. In addition, any number of instruments that play in the bass register may be included, such as cello, double bass, bass viol, or bassoon. The most common combination, at least in modern performances, is harpsichord and cello for instrumental works and secular vocal works, such as operas, and organ for sacred music. Typically performers match the instrument families used in the full ensemble: including bassoon when the work includes oboes or other winds, but restricting it to cello and/or double bass if only strings are involved. Harps, lutes, and other handheld instruments are more typical of early 17th-century music. Sometimes instruments are specified by the composer: in _L'Orfeo_ (1607) Monteverdi calls for an exceptionally varied instrumentation, with multiple harpsichords and lutes with a bass violin in the pastoral scenes followed by lamenting to the accompaniment of _organo di legno_ and _chitarrone_, while Charon stands watch to the sound of a regal.

The keyboard (or other chord-playing instrument) player _realizes_ a continuo part by playing, in addition to the notated bass line, notes above it to complete chords, either determined ahead of time or improvised in performance. The figured bass notation, described below, is a guide, but performers are also expected to use their musical judgment and the other instruments or voices (notably the lead melody and any accidentals that might be present in it) as a guide. Experienced players sometimes incorporate motives found in the other instrumental parts into their improvised chordal accompaniment. Modern editions of such music usually supply a realized keyboard part, fully written out in staff notation for a player, in place of improvisation. With the rise in historically informed performance, however, the number of performers who are able to improvise their parts from the figures, as Baroque players would have done, has increased.

Basso continuo, though an essential structural and identifying element of the Baroque period, continued to be used in many works, mostly (but not limited to) sacred choral works, of the classical period (up to around 1800).[3] An example is C. P. E. Bach's Concerto in D minor for flute, strings and basso continuo. Examples of its use in the 19th century are rarer, but they do exist: masses by Anton Bruckner, Beethoven, and Franz Schubert, for example, have a basso continuo part that was for an organist.


Figured bass notation

A part notated with figured bass consists of a bass line notated with notes on a musical staff plus added numbers and accidentals (or in some cases (back)slashes added to a number) beneath the staff to indicate what intervals above the bass notes should be played, and therefore which inversions of which chords are to be played.

The phrase _tasto solo_ indicates that only the bass line (without any upper chords) is to be played for a short period, usually until the next figure is encountered. This instructs the chord-playing instrumentalist not to play any improvised chords for a period. The reason _tasto solo_ had to be specified was because it was an accepted convention that if no figures were present in a section of otherwise figured bass line, the chord-playing performer would either assume that it was a root-position triad, or deduce from the harmonic motion that another figure was implied. For example, if a continuo part in the key of C begins with a C bass note in the first measure, which descends to a B in the second measure, even if there were no figures, the chord-playing instrumentalist would deduce that this was most likely a first inversion dominant chord (spelled B–D–G, from bottom note of the chord to the top).

Composers were inconsistent in the usages described below. Especially in the 17th century, the numbers were omitted whenever the composer thought the chord was obvious. Early composers such as Claudio Monteverdi often specified the octave by the use of compound intervals such as 10, 11, and 15.

Numbers

  Triads
  ----------------
  Inversion
  Root position
  1st inversion
  2nd inversion
  Seventh chords
  Inversion
  Root position
  1st inversion
  2nd inversion
  3rd inversion

  : Common Conventional Symbols for Figured Bass

Contemporary figured bass abbreviations for triads and seventh chords are shown in the table to the right.

The numbers indicate the number of scale steps above the given bass-line that a note should be played.[4] For example:

    { \override Score.TimeSignature #'stencil = ##f \time 6/4 \clef bass << { c1 } \figures { < 6 4 >1 } >> }

Here, the bass note is a C, and the numbers 4 and 6 indicate that notes a fourth and a sixth above it should be played, that is an F and an A. In other words, the second inversion of an F major chord can be realized as:

    { \override Score.TimeSignature #'stencil = ##f \time 6/4 \clef bass << { 1 } >> }

In cases where the numbers 3 or 5 would normally be understood, these are usually left out. For example:

    { \override Score.TimeSignature #'stencil = ##f \clef bass << { \cadenzaOn c1 b, g, } \figures { < _ >1 < 6 > < 7 > } >> }

has the same meaning as

    { \override Score.TimeSignature #'stencil = ##f \clef bass << { \cadenzaOn c1 b, g, } \figures { < 5 3 >1 < 6 3 > < 7 5 3 > } >> }

and can be realized as

    { \override Score.TimeSignature #'stencil = ##f \clef bass \cadenzaOn 1 <b, d g> <g, b, d f> }

although the performer may choose which octave to play the notes in and will often elaborate them in some way, such as by playing them as arpeggios rather than as block chords, or by adding improvised ornaments, depending on the tempo and texture of the music.

Sometimes, other numbers are omitted: a 2 on its own or indicates , for example. From the figured bass-writer's perspective, this bass note is obviously a third inversion seventh chord, so the sixth interval is viewed as an interval that the player should automatically infer. In many cases entire figures can be left out, usually where the chord is obvious from the progression or the melody.

Sometimes the chord changes but the bass note itself is held. In these cases the figures for the new chord are written wherever in the bar they are meant to occur.

    { \override Score.TimeSignature #'stencil = ##f \time 6/4 << { a'2 g' } \new Staff { \clef bass { c1 } } \figures { < 6 >2 < 5 > } >> } can be realized as { \override Score.TimeSignature #'stencil = ##f \time 6/4 << { a'2 g' } \new Staff { \clef bass << { 2 } \\ { c1 } >> } >> }

When the bass note changes but the notes in the chord above it are to be held, a line is drawn next to the figure or figures, for as long as the chord is to be held, to indicate this:

    { \override Score.TimeSignature #'stencil = ##f \time 6/4 \clef bass << { c2 b, } \figures { \bassFigureExtendersOn < 6 >2 < 6> } >> } can be realized as { \override Score.TimeSignature #'stencil = ##f \time 6/4 \clef bass << { 1 } \\ { c2 b, } >> }

Note that when the bass moves the chord intervals have effectively changed, in this case from to , but no additional numbers are written.

Accidentals

When an accidental is shown on its own without a number, it applies to the note a third above the lowest note; most commonly, this is the third of the chord.[5] Otherwise, if a number is shown, the accidental affects the said interval.[6] For example, this, showing the widespread default meaning of an accidental without number as applying to the third above the bass:

    { \override Score.TimeSignature #'stencil = ##f \time 4/4 \clef bass << { e1 c } \figures { < _+ >1 < 6- _- > } >> } can be realized as { \override Score.TimeSignature #'stencil = ##f \time 4/4 \clef bass 1 }

Sometimes the accidental is placed after the number rather than before it.

Alternatively, a cross placed next to a number indicates that the pitch of that note should be raised (augmented) by a semitone (so that if it is normally a flat it becomes a natural, and if it is normally a natural it becomes a sharp). A different way to indicate this is to draw a backslash through the number itself.[7] The following three notations, therefore, all indicate the same thing:

    { \override Score.TimeSignature #'stencil = ##f \time 4/4 \key c \minor \clef bass << { c1 c c } \figures { < 6! >1 < 6\+ > <6\\> } >> } can all be realized as { \override Score.TimeSignature #'stencil = ##f \time 4/4 \key c \minor \clef bass << { 1 } >> }

More rarely, a _forward_ slash through a number indicates that a pitch is to be lowered (diminished) by a semitone:

    { \override Score.TimeSignature #'stencil = ##f \time 4/4 \key c \minor \clef bass << { c1 c } \figures { < 5- >1 < 5/ > } >> } can both be realized as { \override Score.TimeSignature #'stencil = ##f \time 4/4 \key c \minor \clef bass << { 1 } >> }

When sharps or flats are used with key signatures, they may have a slightly different meaning, especially in 17th-century music. A sharp might be used to cancel a flat in the key signature, or vice versa, instead of a natural sign.

Example in context

    (BWV 443). ]]


History

Improvised organ accompaniments for choral works were common by the late 16th century, and separate organ parts showing only a bass line date back to at least 1587. In the mid-16th century, some Italian church composers began to write polychoral works. These pieces, for two or more choirs, were created in recognition of particularly festive occasions, or else to take advantage of certain architectural properties of the buildings in which they were performed which created natural reverberation. With eight or more polyphonic voice parts to keep track of in performance, works in polychoral style required some sort of instrumental accompaniment. They were also known as _cori spezzati_, since the choirs were structured in musically independent or interlocking parts, and may sometimes also have been placed in physically different locations.

The concept of allowing two or more concurrently performing choirs to be independent structurally would probably not have arisen had there not been an already existing practice of choral accompaniment in church. Financial and administrative records indicate the presence of organs in churches dates back to the 15th century, although their precise use is not known. Many first-person accounts of church services from the 15th and 16th centuries imply organ accompaniment in some portions of the liturgy, as well as indicating that the unaccompanied practice of the _Cappella Sistina_ was somewhat unusual. By early in the 16th century, it seems that accompaniment by organ at least in smaller churches was commonplace, and commentators of the time lamented on occasion the declining quality of church choirs. Even more tellingly, many manuscripts, especially from the middle of the century and later, feature written-out organ accompaniments. It is this last observation which leads directly to the foundations of continuo practice, in a somewhat similar one called _basso seguente_ or "following bass".

Written-out accompaniments are found most often in early polychoral works (those composed, obviously, before the onset of concerted style and its explicit instrumental lines), and generally consist of a complete reduction (to what would later be called the "grand staff") of one choir’s parts. In addition to this, however, for those parts of the music during which that choir rested was presented a single line consisting of the lowest note being sung at any given time, which could be in any vocal part. Even in early concerted works by the Gabrielis (Andrea and Giovanni), Monteverdi and others, the lowest part, that which modern performers colloquially call "continuo", is actually a "basso seguente", though slightly different, since with separate instrumental parts, the lowest note of the moment in the instrumental parts is often lower than any being sung.

The first known published instance of a basso seguente was a book of Introits and Alleluias by the Venetian Placido Falconio from 1575. What is known as "figured" continuo, which also features a bass line that because of its structural nature may differ from the lowest note in the upper parts, developed over the next quarter-century. The composer Lodovico Viadana is often credited with the first publication of such a continuo, in a 1602 collection of motets that according to his own account had been originally written in 1594. Viadana’s continuo, however, did not include figures. The earliest extant part with sharp and flat signs above the staff is a motet by Giovanni Croce, also from 1594.

Following and figured basses developed concurrently in secular music; such madrigal (a song style) composers as Emilio de' Cavalieri and Luzzasco Luzzaschi began in the late 16th century to write works explicitly for a soloist with accompaniment, following an already standing practice of performing multi-voice madrigals this way, and also responding to the rising influence at certain aristocratic courts of featuring popular individual singers. This tendency toward solo-with-accompaniment texture in secular vocal music (non-religious music) culminated in the genre of monody, just as in sacred vocal music it resulted in the sacred concerto for various forces including few voices and even solo voices. The use of numerals to indicate accompanying sonorities in accompaniment parts began with the earliest operas, composed by Cavalieri and Giulio Caccini.

These new genres, just as the polychoral one probably was, were indeed made possible by the existence of a semi- or fully independent bass line. In turn, the separate bass line, with figures added above to indicate other chordal notes, shortly became "functional", as the sonorities became "harmonies", (see harmony and tonality), and music came to be seen in terms of a melody supported by chord progressions (homophony), rather than interlocking, equally important lines that are used in polyphony. The figured bass, therefore, was integral to the development of the Baroque, by extension the ”classical” style, which built on the innovations of the Baroque era, and by further extension most subsequent musical styles.

As part of the new galant style in the mid-18th century, with its emphasis on lighter and more varied textures, and singable melodies, orchestral music gradually phased out the basso continuo, and solo-with-accompaniment textures increasingly featured fully written-out accompaniments. By the second half of the 18th century, figured bass was almost entirely eliminated, except in sacred choral music, where it lingered until well after 1800: Beethoven's Mass in C major (1807), for example, has a figured bass part.

Many composers and theorists of the 16th, 17th, and 18th centuries wrote "how-to guides" for chord-playing musicians, to aid them in realizing figured bass notation, including Gregor Aichinger, Filippo Bonaffino, Friedrich Erhard Niedt, Jean-Philippe Rameau, Georg Philipp Telemann, C. P. E. Bach, and Michael Praetorius.


Contemporary uses

In the 20th and 21st century, figured bass is also sometimes used by classical musicians as a shorthand way of indicating chords when a composer is sketching out ideas for a new piece or when a music student is analyzing the harmony of a notated piece of music (e.g., a Bach chorale or a Chopin piano prelude). Figured bass is not generally used in modern musical compositions, except for neo-Baroque pieces. A form of figured bass is used in notation of accordion music; another simplified form is used to notate guitar chords. In the 2000s, outside of professional Baroque ensembles that specialize in the performance practice of the Baroque era, the most common use of figured bass notation is to indicate the inversion in a harmonic analysis or composer's sketch context, however, often without the staff notation, using letter note names followed with the figure. For instance, if a piano piece had a C major triad in the right hand (C–E–G), with the bass note a G with the left hand, this would be a second inversion C major chord, which would be written C. If this same C major triad had an E in the bass, it would be a first inversion chord, which would be written C or C⁶ (this is different from the jazz notation, where a C⁶ means the major sixth chord C–E–G–A, i.e., a C major with an added 6th degree). The symbols can also be used with Roman numerals in analyzing functional harmony, a usage called _figured Roman_; see chord symbol.


See also

-   Unfigured bass


Notes


Further reading

-   Schick, Kyle (2012) "Improvisation: Performer as Co-composer," Musical Offerings: Vol. 3: No. 1, Article 3. Available at: http://digitalcommons.cedarville.edu/musicalofferings/vol3/iss1/3


External links

-   Figured Bass Symbology by Robert Kelley
-   Chords that the (major) scale degrees (in the bass) can imply by Robert Kelley
-   Theory and Practice of the Basso Continuo by Barry Mitchell
-   Historical sources on the subject of basso continuo - Viadana, Agazzari etc

Category:Accompaniment Category:Bass (sound) Category:Musical notation Category:Musical terminology Category:Tonality

[1] .

[2] .

[3] "Classical Era (1750-1820)", _TheGreatHistoryofArts.Weebly.com_. Accessed: 27 July 2017.

[4]

[5]

[6]

[7]