CHARACTER ENCODING is used to represent a repertoire of characters by some kind of encoding system.[1] Depending on the abstraction level and context, corresponding code points and the resulting code space may be regarded as bit patterns, octets, natural numbers, electrical pulses, etc. A character encoding is used in computation, data storage, and transmission of textual data. "Character set", "character map", "codeset" and "code page" are related, but not identical, terms.

Early character codes associated with the optical or electrical telegraph could only represent a subset of the characters used in written languages, sometimes restricted to upper case letters, numerals and some punctuation only. The low cost of digital representation of data in modern computer systems allows more elaborate character codes (such as Unicode) which represent most of the characters used in many written languages. Character encoding using internationally accepted standards permits worldwide interchange of text in electronic form.


History

The history of character codes illustrates the evolving need for machine-mediated character-based symbolic information over a distance, using once-novel electrical means. The earliest codes were based upon manual and hand-written encoding and cyphering systems, such as Bacon's cipher, Braille, International maritime signal flags, and the 4-digit encoding of Chinese characters for a Chinese telegraph code (Hans Schjellerup, 1869). With the adoption of electrical and electro-mechanical techniques these earliest codes were adapted to the new capabilities and limitations of the early machines. The earliest well-known electrically-transmitted character code, Morse code, introduced in the 1840s, used a system of four "symbols" (short signal, long signal, short space, long space) to generate codes of variable length. Though most commercial use of Morse code was via machinery, it was also used as a manual code, generatable by hand on a telegraph key and decipherable by ear, and persists in amateur radio use. Most codes are of fixed per-character length or variable-length sequences of fixed-length codes (e.g. Unicode). [2]

Common examples of character encoding systems include Morse code, the Baudot code, the American Standard Code for Information Interchange (ASCII) and Unicode. Unicode, a well defined and extensible encoding system, has supplanted most earlier character encodings, but the path of code development to the present is fairly well known.

The Baudot code, a five-bit encoding, was created by Émile Baudot in 1870, patented in 1874, modified by Donald Murray in 1901, and standardized by CCITT as International Telegraph Alphabet No. 2 (ITA2) in 1930. The name "baudot" has been erroneously applied to ITA2 and its many variants. ITA2 suffered from many shortcomings and was often "improved" by many equipment manufacturers, sometimes creating compatibility issues. In 1959 the U.S. military defined its Fieldata code, a six-or seven-bit code, introduced by the U.S. Army Signal Corps. While Fieldata addressed many of the then-modern issues (e.g. letter and digit codes arranged for machine collation), Fieldata fell short of its goals and was short-lived. In 1963 the first ASCII (American Standard Code for Information Interchange) code was released (X3.4-1963) by the ASCII committee (which contained at least one member of the Fieldata committee, W. F. Leubbert) which addressed most of the shortcomings of Fieldata, using a simpler code. Many of the changes were subtle, such as collatable character sets within certain numeric ranges. ASCII63 was a success, widely adopted by industry, and with the follow-up issue of the 1967 ASCII code (which added lower-case letters and fixed some "control code" issues) ASCII67 was adopted fairly widely. ASCII67's American-centric nature was somewhat addressed in the European ECMA-6 standard, which persists today as the base encoding for the UNICODE extended encoding strings. [3]

Somewhat historically isolated, IBM's Binary Coded Decimal (BCD) was a six-bit encoding scheme used by IBM in as early as 1959 in its 1401 and 1620 computers, and in its 7000 Series (for example, 704, 7040, 709 and 7090 computers), as well as in associated peripherals. BCD extended existing simple four-bit numeric encoding to include alphabetic and special characters, mapping it easily to punch-card encoding which was already in widespread use. It was the precursor to EBCDIC. For the most part, IBMs codes were used primarily with IBM equipment, which was more or less a closed ecosystem, and did not see much adoption outside of IBM "circles". IBM's Extended Binary Coded Decimal Interchange Code (usually abbreviated as EBCDIC) is an eight-bit encoding scheme developed in 1963.

The limitations of such sets soon became apparent, and a number of _ad hoc_ methods were developed to extend them. The need to support more writing systems for different languages, including the CJK family of East Asian scripts, required support for a far larger number of characters and demanded a systematic approach to character encoding rather than the previous _ad hoc_ approaches.

In trying to develop universally interchangeable character encodings, researchers in the 1980s faced the dilemma that on the one hand, it seemed necessary to add more bits to accommodate additional characters, but on the other hand, for the users of the relatively small character set of the Latin alphabet (who still constituted the majority of computer users), those additional bits were a colossal waste of then-scarce and expensive computing resources (as they would always be zeroed out for such users).

The compromise solution that was eventually found and developed into Unicode was to break the assumption (dating back to telegraph codes) that each character should always directly correspond to a particular sequence of bits. Instead, characters would first be mapped to a universal intermediate representation in the form of abstract numbers called code points. Code points would then be represented in a variety of ways and with various default numbers of bits per character (code units) depending on context. To encode code points higher than the length of the code unit, such as above 256 for 8-bit units, the solution was to implement variable-width encodings where an escape sequence would signal that subsequent bits should be parsed as a higher code point.


Terminology

Terminology related to character encoding:

-   A _character_ is a minimal unit of text that has semantic value.
-   A _character set_ is a collection of characters that might be used by multiple languages. _Example:_ The Latin character set is used by English and most European languages, though the Greek character set is used only by the Greek language.
-   A _coded character set_ is a character set in which each character corresponds to a unique number.
-   A _code point_ of a coded character set is any allowed value in the character set.
-   A _code unit_ is a bit sequence used to encode each character of a repertoire within a given encoding form.

Character repertoire (the abstract set of characters):

The character repertoire is an abstract set of more than one million characters found in a wide variety of scripts including Latin, Cyrillic, Chinese, Korean, Japanese, Hebrew, and Aramaic.

Other symbols such as musical notation are also included in the character repertoire. Both the Unicode and GB18030 standards have a character repertoire. As new characters are added to one standard, the other standard also adds those characters, to maintain parity.

The code unit size is equivalent to the bit measurement for the particular encoding:

-   A code unit in US-ASCII consists of 7 bits;
-   A code unit in UTF-8, EBCDIC and GB18030 consists of 8 bits;
-   A code unit in UTF-16 consists of 16 bits;
-   A code unit in UTF-32 consists of 32 bits.

_Example of a code unit:_ Consider a string of the letters "abc" followed by (represented with 1 char32_t, 2 char16_t or 4 char8_t). That string contains:

-   four characters;
-   four code points
-   either:

        four code units in UTF-32 (00000061, 00000062, 00000063, 00010400)
        five code units in UTF-16 (0061, 0062, 0063, d801, dc00), or
        seven code units in UTF-8 (61, 62, 63, f0, 90, 90, 80).

To express a character in Unicode, the hexadecimal value is prefixed with the string 'U+'. The range of valid code points for the Unicode standard is U+0000 to U+10FFFF, inclusive, divided in 17 planes, identified by the numbers 0 to 16. Characters in the range U+0000 to U+FFFF are in plane 0, called the Basic Multilingual Plane (BMP). This plane contains most commonly-used characters. Characters in the range U+10000 to U+10FFFF in the other planes are called supplementary characters.

The following table shows examples of code point values:

  Character                   Unicode code point   Glyph
  --------------------------- -------------------- -------
  Latin A                     U+0041               Α
  Latin sharp S               U+00DF               ß
  Han for East                U+6771               東
  Ampersand                   U+0026               &
  Inverted exclamation mark   U+00A1               ¡
  Section sign                U+00A7               §

A code point is represented by a sequence of code units. The mapping is defined by the encoding. Thus, the number of code units required to represent a code point depends on the encoding:

-   _UTF-8:_ code points map to a sequence of one, two, three or four code units.
-   _UTF-16:_ code units are twice as long as 8-bit code units. Therefore, any code point with a scalar value less than U+10000 are encoded with a single code unit. Code points with a value U+10000 or higher require two code units each. These pairs of code units have a unique term in UTF-16: "Unicode surrogate pairs".
-   _UTF-32:_ the 32-bit code unit is large enough that every code point is represented as a single code unit.
-   _GB18030:_ multiple code units per code point are common, because of the small code units. Code points are mapped to one, two, or four code units.[4]


Unicode encoding model

Unicode and its parallel standard, the ISO/IEC 10646 Universal Character Set, together constitute a modern, unified character encoding. Rather than mapping characters directly to octets (bytes), they separately define what characters are available, corresponding natural numbers (code points), how those numbers are encoded as a series of fixed-size natural numbers (code units), and finally how those units are encoded as a stream of octets. The purpose of this decomposition is to establish a universal set of characters that can be encoded in a variety of ways.[5] To describe this model correctly requires more precise terms than "character set" and "character encoding." The terms used in the modern model follow:[6]

A CHARACTER REPERTOIRE is the full set of abstract characters that a system supports. The repertoire may be closed, i.e. no additions are allowed without creating a new standard (as is the case with ASCII and most of the ISO-8859 series), or it may be open, allowing additions (as is the case with Unicode and to a limited extent the Windows code pages). The characters in a given repertoire reflect decisions that have been made about how to divide writing systems into basic information units. The basic variants of the Latin, Greek and Cyrillic alphabets can be broken down into letters, digits, punctuation, and a few _special characters_ such as the space, which can all be arranged in simple linear sequences that are displayed in the same order they are read. But even with these alphabets, diacritics pose a complication: they can be regarded either as part of a single character containing a letter and diacritic (known as a precomposed character), or as separate characters. The former allows a far simpler text handling system but the latter allows any letter/diacritic combination to be used in text. Ligatures pose similar problems. Other writing systems, such as Arabic and Hebrew, are represented with more complex character repertoires due to the need to accommodate things like bidirectional text and glyphs that are joined together in different ways for different situations.

A CODED CHARACTER SET (CCS) is a function that maps characters to _code points_ (each code point represents one character). For example, in a given repertoire, the capital letter "A" in the Latin alphabet might be represented by the code point 65, the character "B" to 66, and so on. Multiple coded character sets may share the same repertoire; for example ISO/IEC 8859-1 and IBM code pages 037 and 500 all cover the same repertoire but map them to different code points.

A CHARACTER ENCODING FORM (CEF) is the mapping of code points to _code units_ to facilitate storage in a system that represents numbers as bit sequences of fixed length (i.e. practically any computer system). For example, a system that stores numeric information in 16-bit units can only directly represent code points 0 to 65,535 in each unit, but larger code points (say, 65,536 to 1.4 million) could be represented by using multiple 16-bit units. This correspondence is defined by a CEF.

Next, a CHARACTER ENCODING SCHEME (CES) is the mapping of code units to a sequence of octets to facilitate storage on an octet-based file system or transmission over an octet-based network. Simple character encoding schemes include UTF-8, UTF-16BE, UTF-32BE, UTF-16LE or UTF-32LE; compound character encoding schemes, such as UTF-16, UTF-32 and ISO/IEC 2022, switch between several simple schemes by using byte order marks or escape sequences; compressing schemes try to minimise the number of bytes used per code unit (such as SCSU, BOCU, and Punycode).

Although UTF-32BE is a simpler CES, most systems working with Unicode use either UTF-8, which is backward compatible with fixed-width ASCII and maps Unicode code points to variable-width sequences of octets, or UTF-16BE, which is backward compatible with fixed-width UCS-2BE and maps Unicode code points to variable-width sequences of 16-bit words. See comparison of Unicode encodings for a detailed discussion.

Finally, there may be a HIGHER LEVEL PROTOCOL which supplies additional information to select the particular variant of a Unicode character, particularly where there are regional variants that have been 'unified' in Unicode as the same character. An example is the XML attribute xml:lang.

The Unicode model uses the term CHARACTER MAP for historical systems which directly assign a sequence of characters to a sequence of bytes, covering all of CCS, CEF and CES layers.[7]


Character sets, character maps and code pages

Historically, the terms "character encoding", "character map", "character set" and "code page" were synonymous in computer science, as the same standard would specify a repertoire of characters and how they were to be encoded into a stream of code units – usually with a single character per code unit. But now the terms have related but distinct meanings,[8] due to efforts by standards bodies to use precise terminology when writing about and unifying many different encoding systems.[9] Regardless, the terms are still used interchangeably, with _character set_ being nearly ubiquitous.

A "CODE PAGE" usually means a byte-oriented encoding, but with regard to some suite of encodings (covering different scripts), where many characters share the same codes in most or all those code pages. Well-known code page suites are "Windows" (based on Windows-1252) and "IBM"/"DOS" (based on code page 437), see Windows code page for details. Most, but not all, encodings referred to as code pages are single-byte encodings (but see octet on byte size.)

IBM's Character Data Representation Architecture (CDRA) designates with coded character set identifiers (CCSIDs) and each of which is variously called a "charset", "character set", "code page", or "CHARMAP".[10]

The term "code page" does not occur in Unix or Linux where "charmap" is preferred, usually in the larger context of locales.

Contrasted to CCS above, a "character encoding" is a map from abstract characters to code words. A "character set" in HTTP (and MIME) parlance is the same as a character encoding (but not the same as CCS).

"Legacy encoding" is a term sometimes used to characterize old character encodings, but with an ambiguity of sense. Most of its use is in the context of Unicodification, where it refers to encodings that fail to cover all Unicode code points, or, more generally, using a somewhat different character repertoire: several code points representing one Unicode character,[11] or versa (see e.g. code page 437). Some sources refer to an encoding as _legacy_ only because it preceded Unicode.[12] All Windows code pages are usually referred to as legacy, both because they antedate Unicode and because they are unable to represent all 2²¹ possible Unicode code points.


Character encoding translation

As a result of having many character encoding methods in use (and the need for backward compatibility with archived data), many computer programs have been developed to translate data between encoding schemes as a form of data transcoding. Some of these are cited below.

Cross-platform:

-   Web browsers – most modern web browsers feature automatic character encoding detection. On Firefox 3, for example, see the View/Character Encoding submenu.
-   iconv – program and standardized API to convert encodings
-   luit – program that converts encoding of input and output to programs running interactively
-   convert_encoding.py – Python based utility to convert text files between arbitrary encodings and line endings.[13]
-   decodeh.py – algorithm and module to heuristically guess the encoding of a string.[14]
-   International Components for Unicode – A set of C and Java libraries to perform charset conversion. uconv can be used from ICU4C.
-   chardet – This is a translation of the Mozilla automatic-encoding-detection code into the Python computer language.
-   The newer versions of the Unix file command attempt to do a basic detection of character encoding (also available on Cygwin).
-   charset – C++ template library with simple interface to convert between C++/user-defined streams. charset defined many character-sets and allows you to use Unicode formats with support of endianness.

Unix-like:

-   cmv – simple tool for transcoding filenames.[15]
-   convmv – convert a filename from one encoding to another.[16]
-   cstocs – convert file contents from one encoding to another for the Czech and Slovak languages.
-   enca – analyzes encodings for given text files.[17]
-   recode – convert file contents from one encoding to another[18]
-   utrac – convert file contents from one encoding to another.[19]

Windows:

-   Encoding.Convert – .NET API[20]
-   MultiByteToWideChar/WideCharToMultiByte – Convert from ANSI to Unicode & Unicode to ANSI[21]
-   cscvt – character set conversion tool[22]
-   enca – analyzes encodings for given text files.[23]


See also

-   -   Percent encoding
-   Alt code
-   Character encodings in HTML
-   :Category:Character encoding – articles related to character encoding in general
-   :Category:Character sets – articles detailing specific character encodings
-   Hexadecimal representations
-   _Mojibake_ – character set mismap.
-   Mojikyo – a system ("glyph set") that includes over 100,000 Chinese character drawings, modern and ancient, popular and obscure.
-   TRON, part of the TRON project, is an encoding system that does not use Han Unification; instead, it uses "control codes" to switch between 16-bit "planes" of characters.
-   Universal Character Set characters
-   Charset sniffing – used in some applications when character encoding metadata is not available

Common character encodings

-   ISO 646
    -   ASCII
-   EBCDIC
    -   CP37
    -   CP930
    -   CP1047
-   ISO 8859:
    -   ISO 8859-1 Western Europe
    -   ISO 8859-2 Western and Central Europe
    -   ISO 8859-3 Western Europe and South European (Turkish, Maltese plus Esperanto)
    -   ISO 8859-4 Western Europe and Baltic countries (Lithuania, Estonia, Latvia and Lapp)
    -   ISO 8859-5 Cyrillic alphabet
    -   ISO 8859-6 Arabic
    -   ISO 8859-7 Greek
    -   ISO 8859-8 Hebrew
    -   ISO 8859-9 Western Europe with amended Turkish character set
    -   ISO 8859-10 Western Europe with rationalised character set for Nordic languages, including complete Icelandic set
    -   ISO 8859-11 Thai
    -   ISO 8859-13 Baltic languages plus Polish
    -   ISO 8859-14 Celtic languages (Irish Gaelic, Scottish, Welsh)
    -   ISO 8859-15 Added the Euro sign and other rationalisations to ISO 8859-1
    -   ISO 8859-16 Central, Eastern and Southern European languages (Albanian, Bosnian, Croatian, Hungarian, Polish, Romanian, Serbian and Slovenian, but also French, German, Italian and Irish Gaelic)
-   CP437, CP720, CP737, CP850, CP852, CP855, CP857, CP858, CP860, CP861, CP862, CP863, CP865, CP866, CP869, CP872
-   MS-Windows character sets:
    -   Windows-1250 for Central European languages that use Latin script, (Polish, Czech, Slovak, Hungarian, Slovene, Serbian, Croatian, Bosnian, Romanian and Albanian)
    -   Windows-1251 for Cyrillic alphabets
    -   Windows-1252 for Western languages
    -   Windows-1253 for Greek
    -   Windows-1254 for Turkish
    -   Windows-1255 for Hebrew
    -   Windows-1256 for Arabic
    -   Windows-1257 for Baltic languages
    -   Windows-1258 for Vietnamese
-   Mac OS Roman
-   KOI8-R, KOI8-U, KOI7
-   MIK
-   ISCII
-   TSCII
-   VISCII
-   JIS X 0208 is a widely deployed standard for Japanese character encoding that has several encoding forms.
    -   Shift JIS (Microsoft Code page 932 is a dialect of Shift_JIS)
    -   EUC-JP
    -   ISO-2022-JP
-   JIS X 0213 is an extended version of JIS X 0208.
    -   Shift_JIS-2004
    -   EUC-JIS-2004
    -   ISO-2022-JP-2004
-   Chinese Guobiao
    -   GB 2312
    -   GBK (Microsoft Code page 936)
    -   GB 18030
-   Taiwan Big5 (a more famous variant is Microsoft Code page 950)
    -   Hong Kong HKSCS
-   Korean
    -   KS X 1001 is a Korean double-byte character encoding standard
    -   EUC-KR
    -   ISO-2022-KR
-   Unicode (and subsets thereof, such as the 16-bit 'Basic Multilingual Plane')
    -   UTF-8
    -   UTF-16
    -   UTF-32
-   ANSEL or ISO/IEC 6937


References


Further reading

-


External links

-   Character sets registered by Internet Assigned Numbers Authority (IANA)
-   Characters and encodings, by Jukka Korpela
-   Unicode Technical Report #17: Character Encoding Model
-   Decimal, Hexadecimal Character Codes in HTML Unicode – Encoding converter

Character_encoding Encoding

[1] Definition from The Tech Terms Dictionary

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] "Processing database information using Unicode, a case study"

[12]

[13] convert_encoding.py

[14] Decodeh – heuristically decode a string or text file

[15] CharsetMove – Simple Tool for Transcoding Filenames

[16] Convmv – converts filenames from one encoding to another

[17] Extremely Naive Charset Analyser

[18] Recode – GNU project – Free Software Foundation (FSF)

[19] Utrac Homepage

[20] [http://msdn.microsoft.com/en-us/library/system.text.encoding.convert(VS.71).aspx Microsoft .NET Framework Class Library – Encoding.Convert Method]

[21] MultiByteToWideChar/WideCharToMultiByte – Convert from ANSI to Unicode & Unicode to ANSI

[22] Kalytta's Character Set Converter

[23] Extremely Naive Charset Analyser