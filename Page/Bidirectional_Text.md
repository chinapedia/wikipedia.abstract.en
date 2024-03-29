BIDIRECTIONAL TEXT is the text containing both text directionalities, both right-to-left (RTL or dextrosinistral) and left-to-right (LTR or sinistrodextral). It generally involves text containing different types of alphabets, but may also refer to boustrophedon, which is changing text directionality in each row.

Some writing systems including the Arabic and Hebrew scripts or derived systems such as the Persian, Urdu, and Yiddish scripts, are written in a form known as right-to-left (RTL), in which writing begins at the right-hand side of a page and concludes at the left-hand side. This is different from the left-to-right (LTR) direction used by the dominant Latin script. When LTR text is mixed with RTL in the same paragraph, each type of text is written in its own direction, which is known as _bidirectional text_. This can get rather complex when multiple levels of quotation are used.

Many computer programs fail to display bidirectional text correctly. For example, the Hebrew name Sarah (שרה) is spelled: sin (ש) (which appears rightmost), then resh (ר), and finally heh (ה) (which should appear leftmost).

_Note: Some web browsers may display the Hebrew text in this article in the opposite direction._


 Bidirectional script support

Bidirectional script support is the capability of a computer system to correctly display bidirectional text. The term is often shortened to "BiDi" or "bidi".

Early computer installations were designed only to support a single writing system, typically for left-to-right scripts based on the Latin alphabet only. Adding new character sets and character encodings enabled a number of other left-to-right scripts to be supported, but did not easily support right-to-left scripts such as Arabic or Hebrew, and mixing the two was not practical. Right-to-left scripts were introduced through encodings like ISO/IEC 8859-6 and ISO/IEC 8859-8, storing the letters (usually) in writing and reading order. It is possible to simply flip the left-to-right display order to a right-to-left display order, but doing this sacrifices the ability to correctly display left-to-right scripts. With bidirectional script support, it is possible to mix scripts from different scripts on the same page, regardless of writing direction.

In particular, the Unicode standard provides foundations for complete BiDi support, with detailed rules as to how mixtures of left-to-right and right-to-left scripts are to be encoded and displayed.


Unicode bidi support

The Unicode standard calls for characters to be ordered 'logically', i.e. in the sequence they are intended to be interpreted, as opposed to 'visually', the sequence they appear. This distinction is relevant for bidi support because at any bidi transition, the visual presentation ceases to be the 'logical' one. Thus, in order to offer bidi support, Unicode prescribes an algorithm for how to convert the logical sequence of characters into the correct visual presentation. For this purpose, the Unicode encoding standard divides all its characters into one of four types: 'strong', 'weak', 'neutral', and 'explicit formatting'.[1]

Strong characters

Strong characters are those with definite directionality. Examples of this type of character include most alphabetic characters, syllabic characters, Han ideographs, non-European or non-Arabic digits, and punctuation characters _that are specific to only those scripts_.

Weak characters

Weak characters are those with vague directionality. Examples of this type of character include European digits, Eastern Arabic-Indic digits, arithmetic symbols, and currency symbols.

Numbers

Unless a directional override is present numbers are always encoded (and entered) big-endian, and the numerals rendered LTR. The weak directionality only applies to the placement of the number in its entirety.

Neutral characters

Neutral characters have directionality indeterminable without context. Examples include paragraph separators, tabs, and most other whitespace characters. Punctuation symbols that are common to many scripts, such as the colon, comma, full-stop, and the no-break-space also fall within this category.

Explicit formatting

Explicit formatting characters, also referred to as "directional formatting characters", are special Unicode sequences that direct the unicode algorithm to modify its default behavior. These characters are subdivided into "marks", "embeddings", "isolates", and "overrides". Their effects continue until the occurrence of either a paragraph separator, or a "pop" character.

Marks

If a "weak" character is followed by another "weak" character, the algorithm will look at the first neighbouring "strong" character. Sometimes this leads to unintentional display errors. These errors are corrected or prevented with "pseudo-strong" characters. Such Unicode control characters are called _marks_. The mark ( or ) is to be inserted into a location to make an enclosed weak character inherit its writing direction.

For example, to correctly display the for an English name brand (LTR) in an Arabic (RTL) passage, an LRM mark is inserted after the trademark symbol if the symbol is not followed by LTR text (e.g. ""). If the LRM mark is not added, the weak character ™ will be neighbored by a strong LTR character and a strong RTL character. Hence, in an RTL context, it will be considered to be RTL, and displayed in an incorrect order (e.g. "").

Embeddings

The "embedding" directional formatting characters are the classical Unicode method of explicit formatting, and as of Unicode 6.3, are being discouraged in favor of "isolates". An "embedding" signals that a piece of text is to be treated as directionally distinct. The text within the scope of the embedding formatting characters is not independent of the surrounding text. Also, characters within an embedding can affect the ordering of characters outside. Unicode 6.3 recognized that directional embeddings usually have too strong an effect on their surroundings and are thus unnecessarily difficult to use.

Isolates

The "isolate" directional formatting characters signal that a piece of text is to be treated as directionally isolated from its surroundings. As of Unicode 6.3, these are the formatting characters that are being encouraged in new documents – once target platforms are known to support them. These formatting characters were introduced after it became apparent that directional embeddings usually have too strong an effect on their surroundings and are thus unnecessarily difficult to use. Unlike the legacy 'embedding' directional formatting characters, 'isolate' characters have no effect on the ordering of the text outside their scope. Isolates can be nested, and may be placed within embeddings and overrides.

Overrides

The "override" directional formatting characters allow for special cases, such as for part numbers (e.g. to force a part number made of mixed English, digits and Hebrew letters to be written from right to left), and are recommended to be avoided wherever possible. As is true of the other directional formatting characters, "overrides" can be nested one inside another, and in embeddings and isolates.

Pops

The "pop" directional formatting characters terminate the scope of the most recent "embedding", "override", or "isolate".

Runs

In the algorithm, each sequence of concatenated strong characters is called a "run". A "weak" character that is located between two "strong" characters with the same orientation will inherit their orientation. A "weak" character that is located between two "strong" characters with a different writing direction, will inherit the main context's writing direction (in an LTR document the character will become LTR, in an RTL document, it will become RTL).

Table of possible BiDi-types


Scripts using bidirectional text

Egyptian hieroglyphs

Egyptian hieroglyphs can be written bidirectionally, where the signs had a distinct "head" that faced the beginning of a line and "tail" that faced the end.

Chinese characters and other CJK scripts

Chinese characters can be written in either direction as well as vertically (top to bottom then right to left), especially in signs (such as plaques), but the orientation of the individual characters is never changed. This can often be seen on tour buses in China, where the company name customarily runs from the front of the vehicle to its rear — that is, from right to left on the right side of the bus, and from left to right on the left side of the bus. English texts on the right side of the vehicle are also quite commonly written in reverse order. (See pictures of tour bus and post vehicle below.)

Likewise, other CJK scripts made up of the same square characters, such as the Japanese writing system and Korean writing system, can also be written in any direction, although left-to-right, top-to-bottom and top-to-bottom, right-to-left are most common.

Image:Yangzhou-tour-bus--right-side-3182.jpg|The right side (text runs from right to left) Image:Yangzhou-tour-bus--leftt-side-3184.jpg|The left side (text runs from left to right) Image:Hainan Airlines - Boeing 737-86N.jpg| On the right side of this Hainan Airlines aircraft, the text runs from right to left (海南航空). Image:Hainan Airlines.JPG|The left side of this Hainan Airlines aircraft, however, shows the text running from left to right (海南航空). File:VM 5485 China Post Office car at Zhengzhou Train Station.jpg|A photo that shows text on both sides of a China Post vehicle

Boustrophedon

Boustrophedon is a writing style found in ancient Greek inscriptions and in Hungarian runes. This method of writing alternates direction, and usually reverses the individual characters, on each successive line.

Moon type

Moon type is an embossed adaptation of the Latin alphabet invented as a tactile alphabet for the blind. Initially the text changed direction (but not character orientation) at the end of the lines. Special embossed lines connected the end of a line and the beginning of the next.[2] Around 1990, it changed to a left-to-right orientation.


See also

-   Internationalization and localization
-   Horizontal and vertical writing in East Asian scripts
-   -   Combining Cyrillic Millions
-   Right-to-left mark
-   Transformation of text
-   Boustrophedon


References


External links

-   Unicode Standards Annex #9 The Bidirectional Algorithm
-   W3C guidelines on authoring techniques for bidirectional text - includes examples and good explanations
-   SheenBidi A sophisticated implementation of Unicode Bidirectional Algorithm
-   GNU FriBidi A free implementation of the Unicode bidirectional algorithm
-   ICU International Components for Unicode contains an implementation of the bidirectional algorithm — along with other internationalization services
-   UCData: "Pretty Good Bidi Algorithm Library" A small and fast bidirectional reordering algorithm that works pretty good, but not necessarily compliant to the Unicode algorithm
-   Bidirectional Scripts in Desktop Software Working group for supporting BiDi in Free Software. Contains several links to readings and implementation regarding BiDi in computer systems.
-   Another Wiki about BiDi
-   Bidirectional text - Examples and practical advice
-   .Net BiDi Implementation
-   A freely available rather final version of Israeli standard 5194 - bidirectional text editing
-   Consequences of BiDi in Quran pages ~~
-   Work in progress on new version of Bidi editing standard + reference implementation
-   Series of articles about pitfalls of BiDi programming
-   BidiRenderer — An application that illustrates the shaping and layout of complex text in bidirectional paragraphs using FriBidi, FreeType, and HarfBuzz

Category:Character encoding Category:Unicode algorithms Category:Internationalization and localization Category:Writing direction

[1]

[2] _Moon Type for the Blind_, Ramseyer Bible Collection, Kathryn A. Martin Library, University of Minnesota Duluth.