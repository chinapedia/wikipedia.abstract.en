The DECIMAL numeral system (also called BASE-TEN positional numeral system, and occasionally called DENARY or DECANARY) is the standard system for denoting integer and non-integer numbers. It is the extension to non-integer numbers of the Hindu–Arabic numeral system.[1] The way of denoting numbers in the decimal system is often referred to as _decimal notation_.[2]

A _decimal numeral_, or just _decimal_, or casually _decimal number_, refers generally to the notation of a number in the decimal numeral system. Decimals may sometimes be identified for containing a decimal separator (for example the "." in or ). "Decimal" may also refer specifically to the digits after the decimal separator, such as in " is the approximation of to _two decimals_".

The numbers that may be represented in the decimal system are the decimal fractions, that is the fractions of the form , where is an integer, and is a non-negative integer.

The decimal system has been extended to _infinite decimals_, for representing any real number, by using an infinite sequence of digits after the decimal separator (see Decimal representation). In this context, the decimal numerals with a finite number of non–zero places after the decimal separator are sometimes called _terminating decimals_. A repeating decimal is an infinite decimal that after some place repeats indefinitely the same sequence of digits (for example ).[3] An infinite decimal represents a rational number if and only if it is a repeating decimal or has a finite number of nonzero digits.


Origin

Two_hand,_ten_fingers.jpg Many numeral systems of ancient civilisations use ten and its powers for representing numbers, possibly because there are ten fingers on two hands and people started counting by using their fingers. Examples are Brahmi numerals, Greek numerals, Hebrew numerals, Roman numerals, and Chinese numerals. Very large numbers were difficult to represent in these old numeral systems, and only the best mathematicians were able to multiply or divide large numbers. These difficulties were completely solved with the introduction of the Hindu–Arabic numeral system for representing integers. This system has been extended to represent some non-integer numbers, called _decimal fractions_ or _decimal numbers_ for forming the _decimal numeral system_.


Decimal notation

For writing numbers, the decimal system uses ten decimal digits, a decimal mark, and, for negative numbers, a minus sign "−". The decimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9;[4] the decimal separator is the dot "" in many countries (including all English speaking ones), but may be a comma "" in other countries (mainly in continental Europe).

For representing a non-negative number, a decimal consists of

-   either a (finite) sequence of digits such as 2017, or in full generality,

_a__(_m_)_a__(_m_ − 1)…_a_₀

    (in this case, the (entire) decimal represents an integer)

-   or two sequence of digits separated by a decimal mark such as 3.14159, 15.00, or in full generality

_a__(_m_)_a__(_m_ − 1)…_a_₀._b_₁_b_₂…_b__(_n_)
It is generally assumed that, if , the first digit is not zero, but, in some circumstances, it may be useful to have one or more 0's on the left. This does not change the value represented by the decimal. For example, . Similarly, if , it may be removed, and conversely, trailing zeros may be added without changing the represented number: for example, and  . Sometimes the extra zeros are used for indicating the accuracy of a measurement. For example, 15.00 m may indicate that the measurement error is less than one centimeter (0.01 m), while 15 m may mean that the length is roughly fifteen meters, and that the error may exceed 10 cm.

For representing a negative number, a minus sign is placed before .

The numeral a_(m)a_(m − 1)…a₀.b₁b₂…b_(n) represents the number

$$a_m10^m+a_{m-1}10^{m-1}+\cdots+a_{0}10^0+\frac{b_1}{10^1}+\frac{b_2}{10^2}+\cdots+\frac{b_n}{10^n}$$
Therefore, the contribution of each digit to the value of a number depends on its position in the numeral. That is, the decimal system is a positional numeral system


Decimal fractions

The numbers that are represented by decimal numerals are the DECIMAL FRACTIONS (sometimes called DECIMAL NUMBERS), that is, the rational numbers that may be expressed as a fraction, the denominator of which is a power of ten.[5] For example, the numerals 0.8, 14.89, 0.00024 represent the fractions , , . More generally, a decimal with digits after the separator represents the fraction with denominator , whose numerator is the integer obtained by removing the separator.

Expressed as a fully reduced fraction, the decimal numbers are those whose denominator is a product of a power of 2 and a power of 5. Thus the smallest denominators of decimal numbers are

1 = 2⁰ ⋅ 5⁰, 2 = 2¹ ⋅ 5⁰, 4 = 2² ⋅ 5⁰, 5 = 2⁰ ⋅ 5¹, 8 = 2³ ⋅ 5⁰, 10 = 2¹ ⋅ 5¹, 16 = 2⁴ ⋅ 5⁰, 25 = 2⁰ ⋅ 5², …

The _integer part_ or _integral part_ of a decimal is the integer written to the left of the decimal separator (see also truncation). For a non-negative decimal, it is the largest integer that is not greater than the decimal. The part from the decimal separator to the right is the _fractional part_, which equals the difference between the numeral and its integer part.

When the integral part of a numeral is zero, it may occur, typically in computing, that the integer part is not written (for example , instead of ). In normal writing, this is generally avoided because of the risk of confusion between the decimal mark and other punctuation.


Real number approximation

Decimal numerals do not allow an exact representation for all real numbers, e.g. for the real number . Nevertheless, they allow approximating every real number with any desired accuracy, e.g., the decimal 3.14159 approximates the real , being less than 10^(−5) off; and so decimals are widely used in science, engineering and everyday life.

More precisely, for every real number _x_, and every positive integer _n_, there are two decimals _L_ and _u_, with at most _n_ digits after the decimal mark, such that _L_ ≤ _x_ ≤ _u_ and (_u_ – _L_) = 10^(−_n_).

Numbers are very often obtained as the result of a measurement. As measurements are generally afflicted with some measurement error with a known upper bound, the result of a measurement is well represented by a decimal with digits after the decimal mark, as soon as the absolute measurement error is bounded from above by 10^(−_n_). In practice, measurement results are often given with a certain number of digits after the decimal point, which indicate the error bounds. For example, although 0.080 and 0.08 denote the same decimal number, the numeral 0.080 suggests a measurement with an error less than 0.001, while the numeral 0.08 indicates an absolute error bounded by 0.01. In both cases, the true value of the measured quantity could be, for example, 0.0803 or 0.0796 (see also significant figures).


Infinite decimal expansion

For a real number _x_ and an integer _n_ ≥ 0, let [_x_]_(_n_) denote the (finite) decimal expansion of the greatest number that is not greater than _x_, which has exactly _n_ digits after the decimal mark. Let _d__(_i_) denote the last digit of [_x_]_(_i_). It is straightforward to see that [_x_]_(_n_) may be obtained by appending _d__(_n_) to the right of [_x_]_(_n_–1). This way one has

    [_x_]_(_n_) = [_x_]₀._d_₁_d_₂..._d__(_n_−1)_d__(_n_),

and the difference of [_x_]_(_n_–1) and [_x_]_(_n_) amounts to

    |[_x_]_(_n_) − [_x_]_(_n_–1)| = _d__(_n_) ⋅ 10^(−_n_) < 10^(−_n_+1),

which is either 0, if _d__(_n_) = 0, or gets arbitrarily small, when _n_ tends to infinity. According to the definition of a limit, _x_ is the limit of [_x_]_(_n_) when _n_ tends to infinity. This is written as  x = lim_(n → ∞)[x]_(n)  or

    _x_ = [_x_]₀._d_₁_d_₂..._d__(_n_)...,

which is called an INFINITE DECIMAL EXPANSION of _x_.

Conversely, for any integer [_x_]₀ and any sequence of digits  (d_(n))_(n = 1)^(∞) the (infinite) expression is an _infinite decimal expansion_ of a real number _x_. This expansion is unique if neither all _d__(_n_) are equal to 9 nor all _d__(_n_) are equal to 0 for _n_ large enough (for all _n_ greater than some natural number _N_).

If all _d__(_n_) for _n_ > _N_ equal to 9 and [_x_]₀._d_₁_d_₂..._d__(_n_),}} the limit of the sequence  ([x]_(n))_(n = 1)^(∞) is the decimal fraction obtained by replacing the last digit that is not a 9, i.e.: _d__(_N_), by _d__(_N_) + 1, and replacing all subsequent 9s by 0s (see 0.999...).

Any such decimal fraction, i.e., _d__(_n_) = 0 for _n_ > _N_, may be converted to its equivalent infinite decimal expansion by replacing _d__(_N_) by _d__(_N_) − 1, and replacing all subsequent 0s by 9s (see 0.999...).

In summary, every real number that is not a decimal fraction has a unique infinite decimal expansion. Each decimal fraction has exactly two infinite decimal expansions, one containing only 0s after some place, which is obtained by the above definition of [_x_]_(_n_), and the other containing only 9s after some place, which is obtained by defining [_x_]_(_n_) as the greatest number that is _less_ than _x_, having exactly _n_ digits after the decimal mark.

Rational numbers

Long division allows computing the infinite decimal expansion of a rational number. If the rational number is a decimal fraction, the division stops eventually, producing a decimal numeral, which may be prolongated into an infinite expansion by adding infinitely many zeros. If the rational number is not a decimal fraction, the division may continue indefinitely. However, as all successive remainders are less than the divisor, there are only a finite number of possible remainders, and after some place, the same sequence of digits must be repeated indefinitely in the quotient. That is, one has a _repeating decimal_. For example,

    = 0. 012345679 012... (with the group 012345679 indefinitely repeating).

Conversely, every eventually repeating sequence of digits is the infinite decimal expansion of a rational number. This is a consequence of the fact that the recurring part of a decimal representation is, in fact, an infinite geometric series which will sum to a rational number. For example,

$$0.0123123123\ldots =\frac{123}{10000} \sum_{k=0}^\infty 0.001^k = \frac{123}{10000}\ \frac{1}{1-0.001} = \frac{123}{9990} = \frac{41}{3330}$$


Decimal computation

Decimal_multiplication_table.JPG

Most modern computer hardware and software systems commonly use a binary representation internally (although many early computers, such as the ENIAC or the IBM 650, used decimal representation internally).[6] For external use by computer specialists, this binary representation is sometimes presented in the related octal or hexadecimal systems.

For most purposes, however, binary values are converted to or from the equivalent decimal values for presentation to or input from humans; computer programs express literals in decimal by default. (123.1, for example, is written as such in a computer program, even though many computer languages are unable to encode that number precisely.)

Both computer hardware and software also use internal representations which are effectively decimal for storing decimal values and doing arithmetic. Often this arithmetic is done on data which are encoded using some variant of binary-coded decimal,[7][8] especially in database implementations, but there are other decimal representations in use (such as in the new IEEE 754 Standard for Floating-Point Arithmetic).[9]

Decimal arithmetic is used in computers so that decimal fractional results of adding (or subtracting) values with a fixed length of their fractional part always are computed to this same length of precision. This is especially important for financial calculations, e.g., requiring in their results integer multiples of the smallest currency unit for book keeping purposes. This is not possible in binary, because the negative powers of 10 have no finite binary fractional representation; and is generally impossible for multiplication (or division).[10][11] See Arbitrary-precision arithmetic for exact calculations.


History

Qinghuajian,_Suan_Biao.jpg period in China.]] Many ancient cultures calculated with numerals based on ten, sometimes argued due to human hands typically having ten digits.[12] Standardized weights used in the Indus Valley Civilization (c.3300-1300 BCE) were based on the ratios: 1/20, 1/10, 1/5, 1/2, 1, 2, 5, 10, 20, 50, 100, 200, and 500, while their standardized ruler – the _Mohenjo-daro ruler_ – was divided into ten equal parts.[13][14][15] Egyptian hieroglyphs, in evidence since around 3000 BCE, used a purely decimal system,[16] as did the Cretan hieroglyphs (ca. 1625−1500 BC) of the Minoans whose numerals are closely based on the Egyptian model.[17][18] The decimal system was handed down to the consecutive Bronze Age cultures of Greece, including Linear A (ca. 18th century BC−1450 BC) and Linear B (ca. 1375−1200 BC) — the number system of classical Greece also used powers of ten, including, Roman numerals, an intermediate base of 5.[19] Notably, the polymath Archimedes (ca. 287–212 BC) invented a decimal positional system in his Sand Reckoner which was based on 10⁸[20] and later led the German mathematician Carl Friedrich Gauss to lament what heights science would have already reached in his days if Archimedes had fully realized the potential of his ingenious discovery.[21] Hittite hieroglyphs (since 15th century BCE) were also.strictly decimal.[22]

Some non-mathematical ancient texts like the Vedas, dating back to 1900–1700 BCE make use of decimals and mathematical decimal fractions.[23]

The Egyptian hieratic numerals, the Greek alphabet numerals, the Hebrew alphabet numerals, the Roman numerals, the Chinese numerals and early Indian Brahmi numerals are all non-positional decimal systems, and required large numbers of symbols. For instance, Egyptian numerals used different symbols for 10, 20, to 90, 100, 200, to 900, 1000, 2000, 3000, 4000, to 10,000.[24] The world's earliest positional decimal system was the Chinese rod calculus.[25] Chounumerals.svg

History of decimal fractions

Rod_fraction.jpg Decimal fractions were first developed and used by the Chinese in the end of 4th century BC,[26] and then spread to the Middle East and from there to Europe.[27][28] The written Chinese decimal fractions were non-positional.[29] However, counting rod fractions were positional.[30]

Qin Jiushao in his book Mathematical Treatise in Nine Sections (1247[31]) denoted 0.96644 by




        File:Counting rod 0.png File:Counting rod h9 num.png File:Counting rod v6.png File:Counting rod h6.png File:Counting rod v4.png File:Counting rod h4.png, meaning

        096644

J. Lennart Berggren notes that positional decimal fractions appear for the first time in a book by the Arab mathematician Abu'l-Hasan al-Uqlidisi written in the 10th century.[32] The Jewish mathematician Immanuel Bonfils used decimal fractions around 1350, anticipating Simon Stevin, but did not develop any notation to represent them.[33] The Persian mathematician Jamshīd al-Kāshī claimed to have discovered decimal fractions himself in the 15th century.[34] Al Khwarizmi introduced fraction to Islamic countries in the early 9th century; a Chinese author has alleged that his fraction presentation was an exact copy of traditional Chinese mathematical fraction from Sunzi Suanjing.[35] This form of fraction with numerator on top and denominator at bottom without a horizontal bar was also used by 10th century Abu'l-Hasan al-Uqlidisi and 15th century Jamshīd al-Kāshī's work "Arithmetic Key".[36][37]

File:Stevin-decimal notation.svg

A forerunner of modern European decimal notation was introduced by Simon Stevin in the 16th century.[38]

Natural languages

The ingenious method of expressing every possible number using a set of ten symbols emerged in India. Several Indian languages show a straightforward decimal system. Many Indo-Aryan and Dravidian languages have numbers between 10 and 20 expressed in a regular pattern of addition to 10.[39]

The Hungarian language also uses a straightforward decimal system. All numbers between 10 and 20 are formed regularly (e.g. 11 is expressed as "tizenegy" literally "one on ten"), as with those between 20 and 100 (23 as "huszonhárom" = "three on twenty").

A straightforward decimal rank system with a word for each order (10 , 100 , 1000 , 10,000 ), and in which 11 is expressed as _ten-one_ and 23 as _two-ten-three_, and 89,345 is expressed as 8 (ten thousands) 9 (thousand) 3 (hundred) 4 (tens) 5 is found in Chinese, and in Vietnamese with a few irregularities. Japanese, Korean, and Thai have imported the Chinese decimal system. Many other languages with a decimal system have special words for the numbers between 10 and 20, and decades. For example, in English 11 is "eleven" not "ten-one" or "one-teen".

Incan languages such as Quechua and Aymara have an almost straightforward decimal system, in which 11 is expressed as _ten with one_ and 23 as _two-ten with three_.

Some psychologists suggest irregularities of the English names of numerals may hinder children's counting ability.[40]

Other bases

Some cultures do, or did, use other bases of numbers.

-   Pre-Columbian Mesoamerican cultures such as the Maya used a base-20 system (perhaps based on using all twenty fingers and toes).
-   The Yuki language in California and the Pamean languages[41] in Mexico have octal (base-8) systems because the speakers count using the spaces between their fingers rather than the fingers themselves.[42]
-   The existence of a non-decimal base in the earliest traces of the Germanic languages is attested by the presence of words and glosses meaning that the count is in decimal (cognates to "ten-count" or "tenty-wise"); such would be expected if normal counting is not decimal, and unusual if it were.[43][44] Where this counting system is known, it is based on the "long hundred" = 120, and a "long thousand" of 1200. The descriptions like "long" only appear after the "small hundred" of 100 appeared with the Christians. Gordon's Introduction to Old Norse p 293, gives number names that belong to this system. An expression cognate to 'one hundred and eighty' translates to 200, and the cognate to 'two hundred' translates to 240. Goodare details the use of the long hundred in Scotland in the Middle Ages, giving examples such as calculations where the carry implies i C (i.e. one hundred) as 120, etc. That the general population were not alarmed to encounter such numbers suggests common enough use. It is also possible to avoid hundred-like numbers by using intermediate units, such as stones and pounds, rather than a long count of pounds. Goodare gives examples of numbers like vii score, where one avoids the hundred by using extended scores. There is also a paper by W.H. Stevenson, on 'Long Hundred and its uses in England'.
-   Many or all of the Chumashan languages originally used a base-4 counting system, in which the names for numbers were structured according to multiples of 4 and 16.[45]
-   Many languages[46] use quinary (base-5) number systems, including Gumatj, Nunggubuyu,[47] Kuurn Kopan Noot[48] and Saraveca. Of these, Gumatj is the only true 5–25 language known, in which 25 is the higher group of 5.
-   Some Nigerians use duodecimal systems.[49] So did some small communities in India and Nepal, as indicated by their languages.[50]
-   The Huli language of Papua New Guinea is reported to have base-15 numbers.[51] _Ngui_ means 15, _ngui ki_ means 15 × 2 = 30, and _ngui ngui_ means 15 × 15 = 225.
-   Umbu-Ungu, also known as Kakoli, is reported to have base-24 numbers.[52] _Tokapu_ means 24, _tokapu talu_ means 24 × 2 = 48, and _tokapu tokapu_ means 24 × 24 = 576.
-   Ngiti is reported to have a base-32 number system with base-4 cycles.[53]
-   The Ndom language of Papua New Guinea is reported to have base-6 numerals.[54] _Mer_ means 6, _mer an thef_ means 6 × 2 = 12, _nif_ means 36, and _nif thef_ means 36×2 = 72.


See also


References

Category:Elementary arithmetic Category:Fractions (mathematics) Category:Positional numeral systems

[1] _The History of Arithmetic_, Louis Charles Karpinski, 200pp, Rand McNally & Company, 1925.

[2] Lam Lay Yong & Ang Tian Se (2004) _Fleeting Footsteps. Tracing the Conception of Arithmetic and Algebra in Ancient China_, Revised Edition, World Scientific, Singapore.

[3] The vinculum (overline) in 5.123144 indicates that the '144' sequence repeats indefinitely, i.e. .

[4] In some countries, such as Arab speaking ones, other glyphs are used for the digits

[5]

[6] _Fingers or Fists? (The Choice of Decimal or Binary Representation)_, Werner Buchholz, Communications of the ACM, Vol. 2 #12, pp3–11, ACM Press, December 1959.

[7]

[8]

[9] _Decimal Floating-Point: Algorism for Computers_, Cowlishaw, M. F., Proceedings 16th IEEE Symposium on Computer Arithmetic, , pp104-111, IEEE Comp. Soc., June 2003

[10] Decimal Arithmetic – FAQ

[11] Decimal Floating-Point: Algorism for Computers, Cowlishaw, M. F., _Proceedings 16th IEEE Symposium on Computer Arithmetic_ (ARITH 16), , pp. 104–111, IEEE Comp. Soc., June 2003

[12]

[13] Sergent, Bernard (1997), Genèse de l'Inde (in French), Paris: Payot, p. 113,

[14] Coppa, A.; et al. (6 April 2006), "Early Neolithic tradition of dentistry: Flint tips were surprisingly effective for drilling tooth enamel in a prehistoric population" (PDF), Nature, 440 (7085): 755–6, Bibcode:2006Natur.440..755C, doi:10.1038/440755a,

[15] Bisht, R. S. (1982), "Excavations at Banawali: 1974–77", in Possehl, Gregory L. (ed.), Harappan Civilisation: A Contemporary Perspective, New Delhi: Oxford and IBH Publishing Co., pp. 113–124

[16] Georges Ifrah: _From One to Zero. A Universal History of Numbers_, Penguin Books, 1988, , pp. 200–213 (Egyptian Numerals)

[17] Graham Flegg: Numbers: their history and meaning, Courier Dover Publications, 2002, , p. 50

[18] Georges Ifrah: _From One to Zero. A Universal History of Numbers_, Penguin Books, 1988, , pp. 213–218 (Cretan numerals)

[19]

[20]

[21] Menninger, Karl: _Zahlwort und Ziffer. Eine Kulturgeschichte der Zahl_, Vandenhoeck und Ruprecht, 3rd. ed., 1979, , pp. 150–153

[22] Georges Ifrah: _From One to Zero. A Universal History of Numbers_, Penguin Books, 1988, , pp. 218f. (The Hittite hieroglyphic system)

[23] (Atharva Veda 5.15, 1-11)

[24] Lam Lay Yong et al. The Fleeting Footsteps pp 137–139

[25]

[26]

[27]

[28]

[29]

[30] Lam Lay Yong, "The Development of Hindu–Arabic and Traditional Chinese Arithmetic", _Chinese Science_, 1996 p38, Kurt Vogel notation

[31] Jean-Claude Martzloff, A History of Chinese Mathematics, Springer 1997

[32]

[33] Gandz, S.: The invention of the decimal fractions and the application of the exponential calculus by Immanuel Bonfils of Tarascon (c. 1350), Isis 25 (1936), 16–45.

[34]

[35]

[36]

[37] Lam Lay Yong, "A Chinese Genesis, Rewriting the history of our numeral system", _Archive for History of Exact Science_ 38: 101–108.

[38]

[39]

[40]

[41]

[42]

[43] .

[44] .

[45] There is a surviving list of Ventureño language number words up to 32 written down by a Spanish priest ca. 1819. "Chumashan Numerals" by Madison S. Beeler, in _Native American Mathematics_, edited by Michael P. Closs (1986), .

[46]

[47]

[48] Dawson, J. "_Australian Aborigines: The Languages and Customs of Several Tribes of Aborigines in the Western District of Victoria_ (1881), p. xcviii.

[49]

[50]

[51]

[52]

[53]

[54] {{ Citation | last=Owens | first=Kay | title=The Work of Glendon Lean on the Counting Systems of Papua New Guinea and Oceania | journal=Mathematics Education Research Journal | year=2001 | volume=13 | issue=1 | pages=47–71 | url=http://www.uog.ac.pg/glec/Key/Kay/owens131.htm | doi=10.1007/BF03217098 | deadurl=yes | archiveurl=https://web.archive.org/web/20150926003303/http://www.uog.ac.pg/glec/Key/Kay/owens131.htm | archivedate=2015-09-26 | df= }}