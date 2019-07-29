A NUMERAL SYSTEM (or SYSTEM OF NUMERATION) is a writing system for expressing numbers; that is, a mathematical notation for representing numbers of a given set, using digits or other symbols in a consistent manner.

The same sequence of symbols may represent different numbers in different numeral systems. For example, "11" represents the number _eleven_ in the decimal numeral system (used in common life), the number _three_ in the binary numeral system (used in computers), and the number two in the unary numeral system (e.g. used in tallying scores).

The number the numeral represents is called its value.

Ideally, a numeral system will:

-   Represent a useful set of numbers (e.g. all integers, or rational numbers)
-   Give every number represented a unique representation (or at least a standard representation)
-   Reflect the algebraic and arithmetic structure of the numbers.

For example, the usual decimal representation of whole numbers gives every nonzero whole number a unique representation as a finite sequence of digits, beginning with a non-zero digit. However, when decimal representation is used for the rational or real numbers, such numbers, in general, have an infinite number of representations, for example 2.31 can also be written as 2.310, 2.3100000, 2.309999999..., etc., all of which have the same meaning except for some scientific and other contexts where greater precision is implied by a larger number of figures shown.

Numeral systems are sometimes called _number systems_, but that name is ambiguous, as it could refer to different systems of numbers, such as the system of real numbers, the system of complex numbers, the system of _p_-adic numbers, etc. Such systems are, however, not the topic of this article.


Main numeral systems

The most commonly used system of numerals is the Hindu–Arabic numeral system.[1] Two Indian mathematicians are credited with developing it. Aryabhata of Kusumapura developed the place-value notation in the 5th century and a century later Brahmagupta introduced the symbol for zero. The numeral system and the zero concept, developed by the Hindus in India, slowly spread to other surrounding countries due to their commercial and military activities with India. The Arabs adopted and modified it. Even today, the Arabs call the numerals which they use "Raqam Al-Hind" or the Hindu numeral system. The Arabs translated Hindu texts on numerology and spread them to the western world due to their trade links with them. The Western world modified them and called them the Arabic numerals, as they learned them from the Arabs. Hence the current western numeral system is the modified version of the Hindu numeral system developed in India. It also exhibits a great similarity to the Sanskrit–Devanagari notation, which is still used in India and neighbouring Nepal.

The simplest numeral system is the unary numeral system, in which every natural number is represented by a corresponding number of symbols. If the symbol / is chosen, for example, then the number seven would be represented by ///////. Tally marks represent one such system still in common use. The unary system is only useful for small numbers, although it plays an important role in theoretical computer science. Elias gamma coding, which is commonly used in data compression, expresses arbitrary-sized numbers by using unary to indicate the length of a binary numeral.

The unary notation can be abbreviated by introducing different symbols for certain new values. Very commonly, these values are powers of 10; so for instance, if / stands for one, − for ten and + for 100, then the number 304 can be compactly represented as +++ //// and the number 123 as + − − /// without any need for zero. This is called sign-value notation. The ancient Egyptian numeral system was of this type, and the Roman numeral system was a modification of this idea.

More useful still are systems which employ special abbreviations for repetitions of symbols; for example, using the first nine letters of the alphabet for these abbreviations, with A standing for "one occurrence", B "two occurrences", and so on, one could then write C+ D/ for the number 304. This system is used when writing Chinese numerals and other East Asian numerals based on Chinese. The number system of the English language is of this type ("three hundred [and] four"), as are those of other spoken languages, regardless of what written systems they have adopted. However, many languages use mixtures of bases, and other features, for instance 79 in French is _soixante dix-neuf_ () and in Welsh is _pedwar ar bymtheg a thrigain_ () or (somewhat archaic) _pedwar ugain namyn un_ (). In English, one could say "four score less one", as in the famous Gettysburg Address representing "87 years ago" as "four score and seven years ago".

More elegant is a _positional system_, also known as place-value notation. Again working in base 10, ten different digits 0, ..., 9 are used and the position of a digit is used to signify the power of ten that the digit is to be multiplied with, as in 3×100 + 0×10 + 4×1}} or more precisely . Note that zero, which is not needed in the other systems, is of crucial importance here, in order to be able to "skip" a power. The Hindu–Arabic numeral system, which originated in India and is now used throughout the world, is a positional base 10 system.

Arithmetic is much easier in positional systems than in the earlier additive ones; furthermore, additive systems need a large number of different symbols for the different powers of 10; a positional system needs only ten different symbols (assuming that it uses base 10).

The positional decimal system is presently universally used in human writing. The base 1000 is also used (albeit not universally), by grouping the digits and considering a sequence of three decimal digits as a single digit. This is the meaning of the common notation 1,000,234,567 used for very large numbers.

In computers, the main numeral systems are based on the positional system in base 2 (binary numeral system), with two binary digits, 0 and 1. Positional systems obtained by grouping binary digits by three (octal numeral system) or four (hexadecimal numeral system) are commonly used. For very large integers, bases 2³² or 2⁶⁴ (grouping binary digits by 32 or 64, the length of the machine word) are used, as, for example, in GMP.

In certain biological systems, the unary coding system is employed. Unary numerals used in the neural circuits responsible for birdsong production.[2] The nucleus in the brain of the songbirds that plays a part in both the learning and the production of bird song is the HVC (high vocal center). The command signals for different notes in the birdsong emanate from different points in the HVC. This coding works as space coding which is an efficient strategy for biological circuits due to its inherent simplicity and robustness.

The numerals used when writing numbers with digits or symbols can be divided into two types that might be called the arithmetic numerals (0, 1, 2, 3, 4, 5, 6, 7, 8, 9) and the geometric numerals (1, 10, 100, 1000, 10000 ...), respectively. The sign-value systems use only the geometric numerals and the positional systems use only the arithmetic numerals. A sign-value system does not need arithmetic numerals because they are made by repetition (except for the Ionic system), and a positional system does not need geometric numerals because they are made by position. However, the spoken language uses _both_ arithmetic and geometric numerals.

In certain areas of computer science, a modified base _k_ positional system is used, called bijective numeration, with digits 1, 2, ..., _k_ (), and zero being represented by an empty string. This establishes a bijection between the set of all such digit-strings and the set of non-negative integers, avoiding the non-uniqueness caused by leading zeros. Bijective base-_k_ numeration is also called _k_-adic notation, not to be confused with _p_-adic numbers. Bijective base 1 is the same as unary.


Positional systems in detail

In a positional base _b_ numeral system (with _b_ a natural number greater than 1 known as the radix), _b_ basic symbols (or digits) corresponding to the first _b_ natural numbers including zero are used. To generate the rest of the numerals, the position of the symbol in the figure is used. The symbol in the last position has its own value, and as it moves to the left its value is multiplied by _b_.

For example, in the decimal system (base 10), the numeral 4327 means , noting that 1}}.

In general, if _b_ is the base, one writes a number in the numeral system of base _b_ by expressing it in the form and writing the enumerated digits in descending order. The digits are natural numbers between 0 and , inclusive.

If a text (such as this one) discusses multiple bases, and if ambiguity exists, the base (itself represented in base 10) is added in subscript to the right of the number, like this: number_(base). Unless specified by context, numbers without subscript are considered to be decimal.

By using a dot to divide the digits into two groups, one can also write fractions in the positional system. For example, the base 2 numeral 10.11 denotes 2.75}}.

In general, numbers in the base _b_ system are of the form:

$$(a_na_{n-1}\cdots a_1a_0.c_1 c_2 c_3\cdots)_b =
\sum_{k=0}^n a_kb^k + \sum_{k=1}^\infty c_kb^{-k}.$$

The numbers _b_^(_k_) and _b_^(−_k_) are the weights of the corresponding digits. The position _k_ is the logarithm of the corresponding weight _w_, that is k = log_(b)w = log_(b)b^(k). The highest used position is close to the order of magnitude of the number.

The number of tally marks required in the unary numeral system for _describing the weight_ would have been W. In the positional system, the number of digits required to describe it is only k + 1 = log_(b)w + 1, for _k_ ≥ 0. For example, to describe the weight 1000 then four digits are needed because log₁₀1000 + 1 = 3 + 1. The number of digits required to _describe the position_ is log_(b)k + 1 = log_(b)log_(b)w + 1 (in positions 1, 10, 100,... only for simplicity in the decimal example).

$$\begin{array}{l|rrrrrrr}
\text{Position}
& 3
& 2
& 1
& 0
& -1
& -2
& \cdots
\\
\hline
\text{Weight}
& b^3 & b^2 & b^1 & b^0 & b^{-1} & b^{-2} & \cdots
\\
\text{Digit}
& a_3 & a_2 & a_1 & a_0 & c_1 & c_2 & \cdots
\\
\hline
\text{Decimal example weight}
& 1000 & 100 & 10 & 1 & 0.1 & 0.01 & \cdots
\\
\text{Decimal example digit}
& 4 & 3 & 2 & 7 & 0 & 0 & \cdots
\end{array}$$

Note that a number has a terminating or repeating expansion if and only if it is rational; this does not depend on the base. A number that terminates in one base may repeat in another (thus 0.0100110011001...₂}}). An irrational number stays aperiodic (with an infinite number of non-repeating digits) in all integral bases. Thus, for example in base 2, 3.1415926...₁₀}} can be written as the aperiodic 11.001001000011111...₂.

Putting overscores, , or dots, _ṅ_, above the common digits is a convention used to represent repeating rational expansions. Thus:

    14/11 = 1.272727272727... = 1.   or   321.3217878787878... = 321.321.

If _b_ = _p_ is a prime number, one can define base-_p_ numerals whose expansion to the left never stops; these are called the _p_-adic numbers.


Generalized variable-length integers

More general is using a mixed radix notation (here written little-endian) like a₀a₁a₂ for a₀ + a₁b₁ + a₂b₁b₂, etc.

This is used in punycode, one aspect of which is the representation of a sequence of non-negative integers of arbitrary size in the form of a sequence without delimiters, of "digits" from a collection of 36: a–z and 0–9, representing 0–25 and 26–35 respectively. A digit lower than a threshold value marks that it is the most-significant digit, hence the end of the number. The threshold value depends on the position in the number. For example, if the threshold value for the first digit is b (i.e. 1) then a (i.e. 0) marks the end of the number (it has just one digit), so in numbers of more than one digit, range is only b–9 (1–35), therefore the weight _b_₁ is 35 instead of 36. Suppose the threshold values for the second and third digits are c (2), then the third digit has a weight 34 × 35 = 1190 and we have the following sequence:

a (0), ba (1), ca (2), .., 9a (35), bb (36), cb (37), .., 9b (70), bca (71), .., 99a (1260), bcb (1261), etc.

Unlike a regular based numeral system, there are numbers like 9b where 9 and b each represents 35; yet the representation is unique because ac and aca are not allowed – the a would terminate the number.

The flexibility in choosing threshold values allows optimization depending on the frequency of occurrence of numbers of various sizes.

The case with all threshold values equal to 1 corresponds to bijective numeration, where the zeros correspond to separators of numbers with digits which are non-zero.


Basis of counting system

Not all languages have numeral systems. Specifically, there is not much need for numeral systems among hunter-gatherers who do not engage in commerce. Many languages around the world have no numerals above two to four—or at least did not before contact with the colonial societies—and speakers of these languages may have no tradition of using the numerals they did have for counting. Indeed, several languages from the Amazon have been independently reported to have no specific number words other than 'one'. These include Nadëb, pre-contact Mocoví and Pilagá, Culina and pre-contact Jarawara, Jabutí, Canela-Krahô, Botocudo (Krenák), Chiquitano, the Campa languages, Arabela, and Achuar.[3] Some languages of Australia, such as Warlpiri, do not have words for quantities above two,[4][5] as did many Khoisan languages at the time of European contact. Such languages do not have a word class of 'numeral'.

Most languages with both numerals and counting use base 8, 10, 12, or 20. Base 10 appears to come from counting one's fingers, base 20 from the fingers and toes, base 8 from counting the spaces between the fingers (attested in California), and base 12 from counting the knuckles (3 each for the four fingers).[6]

For very large (and very small) numbers, traditional systems have been superseded by the use of scientific notation and the system of SI prefixes. Traditional systems continue to be used in everyday life.

No base

Many languages of Melanesia have (or once had) counting systems based on parts of the body which do not have a numeric base; there are (or were) no numerals, but rather nouns for relevant parts of the body—or simply pointing to the relevant spots—were used for quantities. For example, 1–4 may be the fingers, 5 'thumb', 6 'wrist', 7 'elbow', 8 'shoulder', etc., across the body and down the other arm, so that the opposite little finger represents a number between 17 (Torres Islands) to 23 (Eleman). For numbers beyond this, the torso, legs and toes may be used, or one might count back up the other arm and back down the first, depending on the people.

4: quaternary

Some Austronesian and Melanesian ethnic groups, some Sulawesi and some Papua New Guineans, count with the base number four, using the term _asu_ and _aso_, the word for dog, as the ubiquitous village dog has four legs.[7] This is argued by anthropologists to be also based on early humans noting the human and animal shared body feature of two arms and two legs as well as its ease in simple arithmetic and counting. As an example of the system's ease a realistic scenario could include a farmer returning from the market with fifty _asu_ heads of pig (200), less 30 _asu_ (120) of pig bartered for 10 _asu_ (40) of goats noting his new pig count total as twenty _asu_: 80 pigs remaining. The system has a correlation to the dozen counting system and is still in common use in these areas as a natural and easy method of simple arithmetic.[8][9]

5: quinary

Quinary systems are based on the number 5. It is almost certain the quinary system developed from counting by fingers (five fingers per hand).[10] An example are the Epi languages of Vanuatu, where 5 is _luna_ 'hand', 10 _lua-luna_ 'two hand', 15 _tolu-luna_ 'three hand', etc. 11 is then _lua-luna tai_ 'two-hand one', and 17 _tolu-luna lua_ 'three-hand two'.

5 is a common _auxiliary base_, or _sub-base_, where 6 is 'five and one', 7 'five and two', etc. Aztec was a vigesimal (base-20) system with sub-base 5.

6: senary

The Morehead-Maro languages of Southern New Guinea are examples of the rare base 6 system. Kanum is one these languages. The Sko languages on the North Coast of New Guinea follow a base-24 system with a sub-base of 6.

7: septenary

Septenary systems are very rare, as few natural objects consistently have seven distinctive features. Traditionally, it occurs in week-related timing. It has been suggested that the Palikur language may have a base-seven system, but this is dubious.[11]

8: octal

Octal counting systems are based on the number 8. It is used in the Yuki language of California and in the Pamean languages of Mexico, because the Yuki and Pame keep count by using the four spaces between their fingers rather than the fingers themselves.[12]

9: nonary

It has been suggested that Nenets has a base-nine system.[13]

10: decimal

A majority of traditional number systems are decimal. This dates back at least to the ancient Egyptians, who used a wholly decimal system. Anthropologists hypothesize this may be due to humans having five digits per hand, ten in total.[14][15] There are many regional variations including:

-   Western system: based on thousands, with variants (see English numerals)
-   Indian system: crore, lakh (see Indian numbering system. Indian numerals)
-   East Asian system: based on ten-thousands (see below)

12: duodecimal

Duodecimal systems are based on 12.

These include:

-   Chepang language of Nepal,
-   Mahl language of Minicoy Island in India
-   Nigerian Middle Belt areas such as Janji, Kahugu and the Nimbia dialect of Gwandara.
-   Melanesia
-   reconstructed proto-Benue–Congo

Duodecimal numeric systems have some practical advantages over decimal. It is much easier to divide the base digit twelve (which is a highly composite number) by many important divisors in market and trade settings, such as the numbers 2, 3, 4 and 6.

Because of several measurements based on twelve,[16] many Western languages have words for base-twelve units such as _dozen_, _gross_ and _great gross_, which allow for rudimentary duodecimal nomenclature, such as "two gross six dozen" for 360. Ancient Romans used a decimal system for integers, but switched to duodecimal for fractions, and correspondingly Latin developed a rich vocabulary for duodecimal-based fractions (see Roman numerals). A notable fictional duodecimal system was that of J. R. R. Tolkien's Elvish languages, which used duodecimal as well as decimal.

20: vigesimal

Vigesimal numbers use the number 20 as the base number for counting. Anthropologists are convinced the system originated from digit counting, as did bases five and ten, twenty being the number of human fingers and toes combined.[17][18] The system is in widespread use across the world. Some include the classical Mesoamerican cultures, still in use today in the modern indigenous languages of their descendants, namely the Nahuatl and Mayan languages (see Maya numerals). A modern national language which uses a full vigesimal system is Dzongkha in Bhutan.

Partial vigesimal systems are found in some European languages: Basque, Celtic languages, French (from Celtic), Danish, and Georgian. In these languages the systems are vigesimal up to 99, then decimal from 100 up. That is, 140 is 'one hundred two score', not *seven score, and there is no numeral for 400.

The term _score_ originates from tally sticks, and is perhaps a remnant of Celtic vigesimal counting. It was widely used to learn the pre-decimal British currency in this idiom: "a dozen pence and a score of bob", referring to the 20 shillings in a pound. For Americans the term is most known from the opening of the Gettysburg Address: _"Four score and seven years ago our fathers..."_.

24: quadrovigesimal

The Sko languages have a base-24 system with a sub-base of 6.

32: duotrigesimal

Ngiti has base 32.

60: sexagesimal

Ekari has a base-60 system. Sumeria had a base-60 system with a decimal sub-base (perhaps a conflation of the decimal and a duodecimal systems of its constituent peoples), which was the origin of the numbering of modern degrees, minutes, and seconds.

80: octogesimal

Supyire is said to have a base-80 system; it counts in twenties (with 5 and 10 as sub-bases) up to 80, then by eighties up to 400, and then by 400s (great scores).

  ------------- -------- ---------- ----- -------------- ----- ----- ----- --------------
  kàmpwóò       ŋ̀kwuu    sicyɛɛré   ná    béé-tàànre     ná    kɛ́    ná    báár-ìcyɛ̀ɛ̀rè
  fourhundred   eighty   four       and   twenty-three   and   ten   and   five-four
  ------------- -------- ---------- ----- -------------- ----- ----- ----- --------------

799 [i.e. 400 + (4 x 80) + (3 x 20) + {10 + (5 + 4)}]’


See also

-   0.999... - every nonzero terminating decimal has two equal representations


References


Sources

-   Georges Ifrah. _The Universal History of Numbers : From Prehistory to the Invention of the Computer_, Wiley, 1999. .
-   D. Knuth. _The Art of Computer Programming_. Volume 2, 3rd Ed. Addison–Wesley. pp. 194–213, "Positional Number Systems".
-   A.L. Kroeber (Alfred Louis Kroeber) (1876–1960), Handbook of the Indians of California, Bulletin 78 of the Bureau of American Ethnology of the Smithsonian Institution (1919)
-   J.P. Mallory and D.Q. Adams, _Encyclopedia of Indo-European Culture_, Fitzroy Dearborn Publishers, London and Chicago, 1997.
-   -   -


External links

-

te:తెలుగు

Numeral_systems Category:Graphemes Category:Mathematical notation Category:Writing systems

[1]

[2] Fiete, I. R.; Seung, H. S. (2007). "Neural network models of birdsong production, learning, and coding". In Squire, L.; Albright, T.; Bloom, F.; Gage, F.; Spitzer, N. New Encyclopedia of Neuroscience.

[3] Hammarström (2009, page 197) "Rarities in numeral systems"

[4] UCL Media Relations, "Aboriginal kids can count without numbers"

[5] The Science Show, Genetic anomaly could explain severe difficulty with arithmetic, Australian Broadcasting Corporation

[6] Bernard Comrie, "The Typology of Numeral Systems", p. 3

[7] Ryan, Peter. _Encyclopaedia of Papua and New Guinea_. Melbourne University Press & University of Papua and New Guinea,:1972 .: 3 pages p 219.

[8]

[9] Aleksandr Romanovich Luriicac, Lev Semenovich Vygotskiĭ, Evelyn Rossiter. _Ape, primitive man, and child: essays in the history of behavior_. CRC Press: 1992: .

[10] Heath, Thomas, _A Manual of Greek Mathematics_, Courier Dover: 2003. page, p:11

[11] Parkvall, M. _Limits of Language_, 1st edn. 2008. p.291.

[12]

[13]

[14]

[15] _Scientific American_ Munn& Co: 1968, vol 219: 219

[16] such as twelve months in a year, the twelve-hour clock, twelve inches to the foot, twelve pence to the shilling

[17]

[18] Georges Ifrah, _The Universal History of Numbers: The Modern Number System_, Random House, 2000: . 1262 pages