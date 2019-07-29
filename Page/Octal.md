The OCTAL numeral system, or OCT for short, is the base-8 number system, and uses the digits 0 to 7. Octal numerals can be made from binary numerals by grouping consecutive binary digits into groups of three (starting from the right). For example, the binary representation for decimal 74 is 1001010. Two zeroes can be added at the left: , corresponding the octal digits , yielding the octal representation 112.

In the decimal system each decimal place is a power of ten. For example:

    74₁₀ = 7 × 10¹ + 4 × 10⁰

In the octal system each place is a power of eight. For example:

    112₈ = 1 × 8² + 1 × 8¹ + 2 × 8⁰

By performing the calculation above in the familiar decimal system we see why 112 in octal is equal to 64+8+2 = 74 in decimal.

  ---- ---- ---- ---- ---- ---- ---- ---- -----
  ×    1    2    3    4    5    6    7    10
  1    1    2    3    4    5    6    7    10
  2    2    4    6    10   12   14   16   20
  3    3    6    11   14   17   22   25   30
  4    4    10   14   20   24   30   34   40
  5    5    12   17   24   31   36   43   50
  6    6    14   22   30   36   44   52   60
  7    7    16   25   34   43   52   61   70
  10   10   20   30   40   50   60   70   100
  ---- ---- ---- ---- ---- ---- ---- ---- -----

  : The octal multiplication table


Usage

By Native Americans

The Yuki language in California and the Pamean languages[1] in Mexico have octal systems because the speakers count using the spaces between their fingers rather than the fingers themselves.[2]

By Europeans

-   It has been suggested that the reconstructed Proto-Indo-European word for "nine" might be related to the PIE word for "new". Based on this, some have speculated that proto-Indo-Europeans used an octal number system, though the evidence supporting this is slim.[3]
-   In 1668 John Wilkins in _An Essay towards a Real Character, and a Philosophical Language_ proposed use of base 8 instead of 10 "because the way of Dichotomy or Bipartition being the most natural and easie kind of Division, that Number is capable of this down to an Unite".[4]
-   In 1716 King Charles XII of Sweden asked Emanuel Swedenborg to elaborate a number system based on 64 instead of 10. Swedenborg however argued that for people with less intelligence than the king such a big base would be too difficult and instead proposed 8 as the base. In 1718 Swedenborg wrote (but did not publish) a manuscript: "En ny rekenkonst som om vexlas wid Thalet 8 i stelle then wanliga wid Thalet 10" ("A new arithmetic (or art of counting) which changes at the Number 8 instead of the usual at the Number 10"). The numbers 1-7 are there denoted by the consonants l, s, n, m, t, f, u (v) and zero by the vowel o. Thus 8 = "lo", 16 = "so", 24 = "no", 64 = "loo", 512 = "looo" etc. Numbers with consecutive consonants are pronounced with vowel sounds between in accordance with a special rule.[5]
-   Writing under the pseudonym "Hirossa Ap-Iccim" in _The Gentleman's Magazine_, (London) July 1745, Hugh Jones proposed an octal system for British coins, weights and measures. "Whereas reason and convenience indicate to us an uniform standard for all quantities; which I shall call the _Georgian standard_; and that is only to divide every integer in each _species_ into eight equal parts, and every part again into 8 real or imaginary particles, as far as is necessary. For tho' all nations count universally by _tens_ (originally occasioned by the number of digits on both hands) yet 8 is a far more complete and commodious number; since it is divisible into halves, quarters, and half quarters (or units) without a fraction, of which subdivision _ten_ is uncapable...." In a later treatise on Octave computation (1753) Jones concluded: "Arithmetic by _Octaves_ seems most agreeable to the Nature of Things, and therefore may be called Natural Arithmetic in Opposition to that now in Use, by Decades; which may be esteemed Artificial Arithmetic."[6]
-   In 1801, James Anderson criticized the French for basing the Metric system on decimal arithmetic. He suggested base 8, for which he coined the term _octal_. His work was intended as recreational mathematics, but he suggested a purely octal system of weights and measures and observed that the existing system of English units was already, to a remarkable extent, an octal system.[7]
-   In the mid 19th century, Alfred B. Taylor concluded that "Our octonary [base 8] radix is, therefore, beyond all comparison the "_best possible one_" for an arithmetical system." The proposal included a graphical notation for the digits and new names for the numbers, suggesting that we should count "_un_, _du_, _the_, _fo_, _pa_, _se_, _ki_, _unty_, _unty-un_, _unty-du_" and so on, with successive multiples of eight named "_unty_, _duty_, _thety_, _foty_, _paty_, _sety_, _kity_ and _under_." So, for example, the number 65 (101 in octal) would be spoken in octonary as _under-un_.[8][9] Taylor also republished some of Swedenborg's work on octonary as an appendix to the above-cited publications.

In computers

Octal became widely used in computing when systems such as the UNIVAC 1050, PDP-8, ICL 1900 and IBM mainframes employed 6-bit, 12-bit, 24-bit or 36-bit words. Octal was an ideal abbreviation of binary for these machines because their word size is divisible by three (each octal digit represents three binary digits). So two, four, eight or twelve digits could concisely display an entire machine word. It also cut costs by allowing Nixie tubes, seven-segment displays, and calculators to be used for the operator consoles, where binary displays were too complex to use, decimal displays needed complex hardware to convert radices, and hexadecimal displays needed to display more numerals.

All modern computing platforms, however, use 16-, 32-, or 64-bit words, further divided into eight-bit bytes. On such systems three octal digits per byte would be required, with the most significant octal digit representing two binary digits (plus one bit of the next significant byte, if any). Octal representation of a 16-bit word requires 6 digits, but the most significant octal digit represents (quite inelegantly) only one bit (0 or 1). This representation offers no way to easily read the most significant byte, because it's smeared over four octal digits. Therefore, hexadecimal is more commonly used in programming languages today, since two hexadecimal digits exactly specify one byte. Some platforms with a power-of-two word size still have instruction subwords that are more easily understood if displayed in octal; this includes the PDP-11 and Motorola 68000 family. The modern-day ubiquitous x86 architecture belongs to this category as well, but octal is rarely used on this platform, although certain properties of the binary encoding of opcodes become more readily apparent when displayed in octal, e.g. the ModRM byte, which is divided into fields of 2, 3, and 3 bits, so octal can be useful in describing these encodings.

Octal is sometimes used in computing instead of hexadecimal, perhaps most often in modern times in conjunction with file permissions under Unix systems (see chmod). It has the advantage of not requiring any extra symbols as digits (the hexadecimal system is base-16 and therefore needs six additional symbols beyond 0–9). It is also used for digital displays.

In programming languages, octal literals are typically identified with a variety of prefixes, including the digit 0, the letters o or q, the digit–letter combination 0o, or the symbol &[10] or $. In _Motorola convention_, octal numbers are prefixed with @, whereas a small letter o is added as a postfix following the _Intel convention_.[11][12] In DR-DOS and Multiuser DOS various environment variables like $CLS, $ON, $OFF, $HEADER or $FOOTER support an \nnn octal number notation,[13][14][15] and DR-DOS DEBUG utilizes \ to prefix octal numbers as well.

For example, the literal 73 (base 8) might be represented as 073, o73, q73, 0o73, \73, @73, &73, $73 or 73o in various languages.

Newer languages have been abandoning the prefix 0, as decimal numbers are often represented with leading zeroes. The prefix q was introduced to avoid the prefix o being mistaken for a zero, while the prefix 0o was introduced to avoid starting a numerical literal with an alphabetic character (like o or q), since these might cause the literal to be confused with a variable name. The prefix 0o also follows the model set by the prefix 0x used for hexadecimal literals in the C language; it is supported by Haskell,[16] OCaml,[17] Perl 6,[18] Python as of version 3.0,[19] Ruby,[20] Tcl as of version 9,[21] and it is intended to be supported by ECMAScript 6[22] (the prefix 0 has been discouraged in ECMAScript 3 and dropped in ECMAScript 5[23]).

Octal numbers that are used in some programming languages (C, Perl, PostScript…) for textual/graphical representations of byte strings when some byte values (unrepresented in a code page, non-graphical, having special meaning in current context or otherwise undesired) have to be to escaped as \nnn. Octal representation may be particularly handy with non-ASCII bytes of UTF-8, which encodes groups of 6 bits, and where any start byte has octal value \3nn and any continuation byte has octal value \2nn.

In aviation

Transponders in aircraft transmit a code, expressed as a four-octal-digit number, when interrogated by ground radar. This code is used to distinguish different aircraft on the radar screen.


Conversion between bases

Decimal to octal conversion

Method of successive Euclidean division by 8

To convert integer decimals to octal, divide the original number by the largest possible power of 8 and divide the remainders by successively smaller powers of 8 until the power is 1. The octal representation is formed by the quotients, written in the order generated by the algorithm. For example, to convert 125₁₀ to octal:

    125 = 8² × 1 + 61
    61 = 8¹ × 7 + 5
    5 = 8⁰ × 5 + 0

Therefore, 125₁₀ = 175₈.

Another example:

    900 = 8³ × 1 + 388
    388 = 8² × 6 + 4
    4 = 8¹ × 0 + 4
    4 = 8⁰ × 4 + 0

Therefore, 900₁₀ = 1604₈.

Method of successive multiplication by 8

To convert a decimal fraction to octal, multiply by 8; the integer part of the result is the first digit of the octal fraction. Repeat the process with the fractional part of the result, until it is null or within acceptable error bounds.

Example: Convert 0.1640625 to octal:

    0.1640625 × 8 = 1.3125 = 1 + 0.3125
    0.3125 × 8 = 2.5 = 2 + 0.5
    0.5 × 8 = 4.0 = 4 + 0

Therefore, 0.1640625₁₀ = 0.124₈.

These two methods can be combined to handle decimal numbers with both integer and fractional parts, using the first on the integer part and the second on the fractional part.

Method of successive duplication

To convert integer decimals to octal, prefix the number with "0.". Perform the following steps for as long as digits remain on the right side of the radix: Double the value to the left side of the radix, using _octal_ rules, move the radix point one digit rightward, and then place the doubled value underneath the current value so that the radix points align. If the moved radix point crosses over a digit that is 8 or 9, convert it to 0 or 1 and add the carry to the next leftward digit of the current value. _Add_ _octally_ those digits to the left of the radix and simply drop down those digits to the right, without modification.

Example:

     0.4 9 1 8 decimal value
      +0
     ---------
       4.9 1 8
      +1 0
      --------
       6 1.1 8
      +1 4 2
      --------
       7 5 3.8
      +1 7 2 6
      --------
     1 1 4 6 6. octal value

Octal to decimal conversion

To convert a number to decimal, use the formula that defines its base-8 representation:

$$k = \sum_{i=0}^n \left( a_i\times 8^i \right)$$

In this formula, is an individual octal digit being converted, where is the position of the digit (counting from 0 for the right-most digit).

Example: Convert 764₈ to decimal:

    764₈ = 7 × 8² + 6 × 8¹ + 4 × 8⁰ = 448 + 48 + 4 = 500₁₀

For double-digit octal numbers this method amounts to multiplying the lead digit by 8 and adding the second digit to get the total.

Example: 65₈ = 6 × 8 + 5 = 53₁₀

Method of successive duplication

To convert octals to decimals, prefix the number with "0.". Perform the following steps for as long as digits remain on the right side of the radix: Double the value to the left side of the radix, using _decimal_ rules, move the radix point one digit rightward, and then place the doubled value underneath the current value so that the radix points align. _Subtract_ _decimally_ those digits to the left of the radix and simply drop down those digits to the right, without modification.

Example:

     0.1 1 4 6 6  octal value
      -0
     -----------
       1.1 4 6 6
      -  2
      ----------
         9.4 6 6
      -  1 8
      ----------
         7 6.6 6
      -  1 5 2
      ----------
         6 1 4.6
      -  1 2 2 8
      ----------
         4 9 1 8. decimal value

Octal to binary conversion

To convert octal to binary, replace each octal digit by its binary representation.

Example: Convert 51₈ to binary:

    5₈ = 101₂
    1₈ = 001₂

Therefore, 51₈ = 101 001₂.

Binary to octal conversion

The process is the reverse of the previous algorithm. The binary digits are grouped by threes, starting from the least significant bit and proceeding to the left and to the right. Add leading zeroes (or trailing zeroes to the right of decimal point) to fill out the last group of three if necessary. Then replace each trio with the equivalent octal digit.

For instance, convert binary 1010111100 to octal:

    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 001 || 010 || 111 || 100 |- align="center" | 1 || 2 || 7 || 4 |}

Therefore, 1010111100₂ = 1274₈.

Convert binary 11100.01001 to octal:

    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 011 || 100||  .  || 010 || 010 |- align="center" | 3 || 4 ||  .  || 2 || 2 |}

Therefore, 11100.01001₂ = 34.22₈.

Octal to hexadecimal conversion

The conversion is made in two steps using binary as an intermediate base. Octal is converted to binary and then binary to hexadecimal, grouping digits by fours, which correspond each to a hexadecimal digit.

For instance, convert octal 1057 to hexadecimal:

    To binary:
    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 1 || 0 || 5 || 7 |- align="center" | 001 || 000 || 101 || 111 |}

    then to hexadecimal:
    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 0010 || 0010 || 1111 |- align="center" | 2 || 2 || F |}

Therefore, 1057₈ = 22F₁₆.

Hexadecimal to octal conversion

Hexadecimal to octal conversion proceeds by first converting the hexadecimal digits to 4-bit binary values, then regrouping the binary bits into 3-bit octal digits.

For example, to convert 3FA5₁₆:

    To binary:
    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 3 || F || A || 5 |- align="center" | 0011 || 1111 || 1010 || 0101 |}

    then to octal:
    {| border="1" cellspacing="0" cellpadding="4"

|- align="center" | 0 || 011 || 111 || 110 || 100 || 101 |- align="center" | 0 || 3 || 7 || 6 || 4 || 5 |}

Therefore, 3FA5₁₆ = 37645₈.


Real numbers

Fractions

Due to having only factors of two, many octal fractions have repeating digits, although these tend to be fairly simple:

+:----------------------------------------:+:-------------------------------------------:+
| Decimal base                             | OCTAL BASE                                  |
| Prime factors of the base: 2, 5          | Prime factors of the base: 2                |
| Prime factors of one below the base: 3   | Prime factors of one below the base: 7      |
| Prime factors of one above the base: 11  | Prime factors of one above the base: 3      |
| Other Prime factors: 7 13 17 19 23 29 31 | Other Prime factors: 5 13 15 21 23 27 35 37 |
+------------------------------------------+---------------------------------------------+
| Fraction                                 | Prime factors                               |
|                                          | of the denominator                          |
+------------------------------------------+---------------------------------------------+
| 1/2                                      | 2                                           |
+------------------------------------------+---------------------------------------------+
| 1/3                                      | 3                                           |
+------------------------------------------+---------------------------------------------+
| 1/4                                      | 2                                           |
+------------------------------------------+---------------------------------------------+
| 1/5                                      | 5                                           |
+------------------------------------------+---------------------------------------------+
| 1/6                                      | 2, 3                                        |
+------------------------------------------+---------------------------------------------+
| 1/7                                      | 7                                           |
+------------------------------------------+---------------------------------------------+
| 1/8                                      | 2                                           |
+------------------------------------------+---------------------------------------------+
| 1/9                                      | 3                                           |
+------------------------------------------+---------------------------------------------+
| 1/10                                     | 2, 5                                        |
+------------------------------------------+---------------------------------------------+
| 1/11                                     | 11                                          |
+------------------------------------------+---------------------------------------------+
| 1/12                                     | 2, 3                                        |
+------------------------------------------+---------------------------------------------+
| 1/13                                     | 13                                          |
+------------------------------------------+---------------------------------------------+
| 1/14                                     | 2, 7                                        |
+------------------------------------------+---------------------------------------------+
| 1/15                                     | 3, 5                                        |
+------------------------------------------+---------------------------------------------+
| 1/16                                     | 2                                           |
+------------------------------------------+---------------------------------------------+
| 1/17                                     | 17                                          |
+------------------------------------------+---------------------------------------------+
| 1/18                                     | 2, 3                                        |
+------------------------------------------+---------------------------------------------+
| 1/19                                     | 19                                          |
+------------------------------------------+---------------------------------------------+
| 1/20                                     | 2, 5                                        |
+------------------------------------------+---------------------------------------------+
| 1/21                                     | 3, 7                                        |
+------------------------------------------+---------------------------------------------+
| 1/22                                     | 2, 11                                       |
+------------------------------------------+---------------------------------------------+
| 1/23                                     | 23                                          |
+------------------------------------------+---------------------------------------------+
| 1/24                                     | 2, 3                                        |
+------------------------------------------+---------------------------------------------+
| 1/25                                     | 5                                           |
+------------------------------------------+---------------------------------------------+
| 1/26                                     | 2, 13                                       |
+------------------------------------------+---------------------------------------------+
| 1/27                                     | 3                                           |
+------------------------------------------+---------------------------------------------+
| 1/28                                     | 2, 7                                        |
+------------------------------------------+---------------------------------------------+
| 1/29                                     | 29                                          |
+------------------------------------------+---------------------------------------------+
| 1/30                                     | 2, 3, 5                                     |
+------------------------------------------+---------------------------------------------+
| 1/31                                     | 31                                          |
+------------------------------------------+---------------------------------------------+
| 1/32                                     | 2                                           |
+------------------------------------------+---------------------------------------------+

Irrational numbers

The table below gives the expansions of some common irrational numbers in decimal and octal.

+---------+---------------------------+
| Number  | Positional representation |
+=========+===========================+
| Decimal | Octal                     |
+---------+---------------------------+
| {{sqrt  | ...                       |
+---------+---------------------------+
| {{sqrt  | ...                       |
+---------+---------------------------+
| {{sqrt  | ...                       |
+---------+---------------------------+
| {{mvar  | ...                       |
+---------+---------------------------+
| {{mvar  | ...                       |
+---------+---------------------------+
| {{mvar  | ...                       |
+---------+---------------------------+


See also

-   Computer numbering formats
-   Octal games, a game numbering system used in combinatorial game theory
-   Syllabic octal, a specific octal representation of 8-bit syllables
-   Squawk code, an octal representation of Gillham code


References


External links

-   Octomatics is a numeral system enabling simple visual calculation in octal.

Category:Binary arithmetic Category:Positional numeral systems

[1]

[2]

[3]

[4]

[5] Donald Knuth, _The Art of Computer Programming_

[6] See H. R. Phalen, "Hugh Jones and Octave Computation," _The American Mathematical Monthly_ 56 (August–September 1949): 461-465.

[7] James Anderson, On Octal Arithmetic [title appears only in page headers], Recreations in Agriculture, Natural-History, Arts, and Miscellaneous Literature, Vol. IV, No. 6 (February 1801), T. Bensley, London; pages 437-448.

[8] A.B. Taylor, Report on Weights and Measures, Pharmaceutical Association, 8th Annual Session, Boston, September 15, 1859. See pages and 48 and 53.

[9] Alfred B. Taylor, Octonary numeration and its application to a system of weights and measures, Proc. Amer. Phil. Soc. Vol XXIV, Philadelphia, 1887; pages 296-366. See pages 327 and 330.

[10]

[11]

[12]

[13]

[14]

[15]

[16] Haskell: http://www.haskell.org/onlinereport/lexemes.html#sect2.5

[17] OCaml: http://caml.inria.fr/pub/docs/manual-ocaml/lex.html

[18] Perl 6: http://perlcabal.org/syn/S02.html#Radix_markers

[19] Python 3: https://docs.python.org/3.1/reference/lexical_analysis.html#integer-literals

[20] RubySpec: https://github.com/kostya/rubyspec/blob/master/core/string/to_i_spec.rb

[21] Tcl: http://wiki.tcl.tk/498

[22] ECMAScript 6th Edition draft: https://people.mozilla.org/~jorendorff/es6-draft.html#sec-literals-numeric-literals

[23] Mozilla Developer Network: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt