In mathematics and computing, HEXADECIMAL (also BASE 16, or HEX) is a positional numeral system with a radix, or base, of 16. It uses sixteen distinct symbols, most often the symbols "0"–"9" to represent values zero to nine, and "A"–"F" (or alternatively "a"–"f") to represent values ten to fifteen.

Hexadecimal numerals are widely used by computer system designers and programmers, as they provide a more human-friendly representation of binary-coded values. Each hexadecimal digit represents four binary digits, also known as a nibble, which is half a byte. For example, a single byte can have values ranging from 0000 0000 to 1111 1111 in binary form, which can be more conveniently represented as 00 to FF in hexadecimal.

In mathematics, a subscript is typically used to specify the radix. For example, the decimal value would be expressed in hexadecimal as . In programming, a number of notations are used to support hexadecimal representation, usually involving a prefix or suffix. The prefix 0x is used in C and related languages, which would denote this value by 0x.

Hexadecimal is used in the transfer encoding BASE16, in which each byte of the plaintext is broken into two 4-bit values and represented by two hexadecimal digits.


Representation

Written representation

Using 0–9 and A–F

In contexts where the base is not clear, hexadecimal numbers can be ambiguous and confused with numbers expressed in other bases. There are several conventions for expressing values unambiguously. A numerical subscript (itself written in decimal) can give the base explicitly: 159₁₀ is decimal 159; 159₁₆ is hexadecimal 159, which is equal to 345₁₀. Some authors prefer a text subscript, such as 159_(decimal) and 159_(hex), or 159_(d) and 159_(h).

In linear text systems, such as those used in most computer programming environments, a variety of methods have arisen:

-   In URIs (including URLs), character codes are written as hexadecimal pairs prefixed with %: http://www.example.com/name%20with%20spaces where %20 is the space (blank) character, ASCII code point 20 in hex, 32 in decimal.
-   In XML and XHTML, characters can be expressed as hexadecimal numeric character references using the notation &#x_code_;, where the _x_ denotes that _code_ is a hex code point (of 1- to 6-digits) assigned to the character in the Unicode standard. Thus ’ represents the right single quotation mark (’), Unicode code point number 2019 in hex, 8217 (thus ’ in decimal).[1]
-   In the Unicode standard, a character value is represented with U+ followed by the hex value, e.g. U+20AC is the Euro sign (€).
-   Color references in HTML, CSS and X Window can be expressed with six hexadecimal digits (two each for the red, green and blue components, in that order) prefixed with #: white, for example, is represented as #FFFFFF.[2] CSS also allows 3-hexdigit abbreviations with one hexdigit per component: #FA3 abbreviates #FFAA33 (a golden orange: ).
-   Unix (and related) shells, AT&T assembly language and likewise the C programming language (and its syntactic descendants such as C++, C#, D, Java, JavaScript, Python and Windows PowerShell) use the prefix 0x for numeric constants represented in hex: 0x5A3. Character and string constants may express character codes in hexadecimal with the prefix \x followed by two hex digits: '\x1B' represents the Esc control character; "\x1B[0m\x1B[25;1H" is a string containing 11 characters (plus a trailing NUL to mark the end of the string) with two embedded Esc characters.[3] To output an integer as hexadecimal with the printf function family, the format conversion code %X or %x is used.

-   In MIME (e-mail extensions) quoted-printable encoding, characters that cannot be represented as literal ASCII characters are represented by their codes as two hexadecimal digits (in ASCII) prefixed by an _equal to_ sign =, as in Espa=F1a to send "España" (Spain). (Hexadecimal F1, equal to decimal 241, is the code number for the lower case n with tilde in the ISO/IEC 8859-1 character set.[4])
-   In Intel-derived assembly languages and Modula-2,[5] hexadecimal is denoted with a suffixed H or h: FFh or 05A3H. Some implementations require a leading zero when the first hexadecimal digit character is not a decimal digit, so one would write 0FFh instead of FFh
-   Other assembly languages (6502, Motorola), Pascal, Delphi, some versions of BASIC (Commodore), GameMaker Language, Godot and Forth use $ as a prefix: $5A3.
-   Some assembly languages (Microchip) use the notation H'ABCD' (for ABCD₁₆). Similarly, Fortran 95 uses Z'ABCD'.
-   Ada and VHDL enclose hexadecimal numerals in based "numeric quotes": 16#5A3#. For bit vector constants VHDL uses the notation x"5A3".[6]
-   Verilog represents hexadecimal constants in the form 8'hFF, where 8 is the number of bits in the value and FF is the hexadecimal constant.
-   The Smalltalk language uses the prefix 16r: 16r5A3
-   PostScript and the Bourne shell and its derivatives denote hex with prefix 16#: 16#5A3. For PostScript, binary data (such as image pixels) can be expressed as unprefixed consecutive hexadecimal pairs: AA213FD51B3801043FBC...
-   Common Lisp uses the prefixes #x and #16r. Setting the variables *read-base*[7] and *print-base*[8] to 16 can also be used to switch the reader and printer of a Common Lisp system to Hexadecimal number representation for reading and printing numbers. Thus Hexadecimal numbers can be represented without the #x or #16r prefix code, when the input or output base has been changed to 16.
-   MSX BASIC,[9] QuickBASIC, FreeBASIC and Visual Basic prefix hexadecimal numbers with &H: &H5A3
-   BBC BASIC and Locomotive BASIC use & for hex.[10]
-   TI-89 and 92 series uses a 0h prefix: 0h5A3
-   ALGOL 68 uses the prefix 16r to denote hexadecimal numbers: 16r5a3. Binary, quaternary (base-4) and octal numbers can be specified similarly.
-   The most common format for hexadecimal on IBM mainframes (zSeries) and midrange computers (IBM System i) running the traditional OS's (zOS, zVSE, zVM, TPF, IBM i) is X'5A3', and is used in Assembler, PL/I, COBOL, JCL, scripts, commands and other places. This format was common on other (and now obsolete) IBM systems as well. Occasionally quotation marks were used instead of apostrophes.
-   Donald Knuth introduced the use of a particular typeface to represent a particular radix in his book _The TeXbook_.[11] Hexadecimal representations are written there in a typewriter typeface: 5A3
-   Any IPv6 address can be written as eight groups of four hexadecimal digits (sometimes called hextets), where each group is separated by a colon (:). This, for example, is a valid IPv6 address: 2001:0db8:85a3:0000:0000:8a2e:0370:7334; this can be abbreviated as 2001:db8:85a3::8a2e:370:7334. By contrast, IPv4 addresses are usually written in decimal.
-   Globally unique identifiers are written as thirty-two hexadecimal digits, often in unequal hyphen-separated groupings, for example {3F2504E0-4F89-41D3-9A0C-0305E82C3301}.

There is no universal convention to use lowercase or uppercase for the letter digits, and each is prevalent or preferred in particular environments by community standards or convention.

History of written representations

Bruce_Martin_hexadecimal_notation_proposal.png The use of the letters _A_ through _F_ to represent the digits above 9 was not universal in the early history of computers.

-   During the 1950s, some installations favored using the digits 0 through 5 with an overline to denote the values 10–15 as , , , , and .
-   The SWAC (1950)[12] and Bendix G-15 (1956)[13][14] computers used the lowercase letters _u_, _v_, _w_, _x_, _y_ and _z_ for the values 10 to 15.
-   The ILLIAC I (1952) computer used the uppercase letters _K_, _S_, _N_, _J_, _F_ and _L_ for the values 10 to 15.[15][16]
-   The Librascope LGP-30 (1956) used the letters _F_, _G_, _J_, _K_, _Q_ and _W_ for the values 10 to 15.[17][18]
-   The Honeywell Datamatic D-1000 (1957) used the lowercase letters _b_, _c_, _d_, _e_, _f_, and _g_ whereas the Elbit 100 (1967) used the uppercase letters _B_, _C_, _D_, _E_, _F_ and _G_ for the values 10 to 15.[19]
-   The Monrobot XI (1960) used the letters _S_, _T_, _U_, _V_, _W_ and _X_ for the values 10 to 15.[20]
-   The NEC parametron computer  (1960) used the letters _D_, _G_, _H_, _J_, _K_ (and possibly _V_) for values 10–15.[21]
-   The Pacific Data Systems 1020 (1964) used the letters _L_, _C_, _A_, _S_, _M_ and _D_ for the values 10 to 15.[22]
-   New numeric symbols and names were introduced in the Bibi-binary notation by Boby Lapointe in 1968. This notation did not become very popular.
-   Bruce Alan Martin of Brookhaven National Laboratory considered the choice of A–F "ridiculous". In a 1968 letter to the editor of the CACM, he proposed an entirely new set of symbols based on the bit locations, which did not gain much acceptance.[23]
-   Soviet programmable calculators Б3-34 (1980) and similar used the symbols "−", "L", "C", "Г", "E", " " (space) for the values 10 to 15 on their displays.
-   Seven-segment display decoder chips used various schemes for outputting values above nine. The Texas Instruments 7446/7447/7448/7449 and 74246/74247/74248/74249 use truncated versions of "2", "3", "4", "5" and "6" for the values 10 to 14. Value 15 (1111 binary) was blank.[24]

Verbal and digital representations

There are no traditional numerals to represent the quantities from ten to fifteen – letters are used as a substitute – and most European languages lack non-decimal names for the numerals above ten. Even though English has names for several non-decimal powers (_pair_ for the first binary power, _score_ for the first vigesimal power, _dozen_, _gross_ and _great gross_ for the first three duodecimal powers), no English name describes the hexadecimal powers (decimal 16, 256, 4096, 65536, ... ). Some people read hexadecimal numbers digit by digit like a phone number, or using the NATO phonetic alphabet, the Joint Army/Navy Phonetic Alphabet, or a similar ad hoc system.

Hexadecimal-counting.jpg Systems of counting on digits have been devised for both binary and hexadecimal. Arthur C. Clarke suggested using each finger as an on/off bit, allowing finger counting from zero to 1023₁₀ on ten fingers.[25] Another system for counting up to FF₁₆ (255₁₀) is illustrated on the right.

Signs

The hexadecimal system can express negative numbers the same way as in decimal: −2A to represent −42₁₀ and so on.

Hexadecimal can also be used to express the exact bit patterns used in the processor, so a sequence of hexadecimal digits may represent a signed or even a floating point value. This way, the negative number −42₁₀ can be written as FFFF FFD6 in a 32-bit CPU register (in two's-complement), as C228 0000 in a 32-bit FPU register or C045 0000 0000 0000 in a 64-bit FPU register (in the IEEE floating-point standard).

Hexadecimal exponential notation

Just as decimal numbers can be represented in exponential notation, so too can hexadecimal numbers. By convention, the letter _P_ (or _p_, for "power") represents _times two raised to the power of_, whereas _E_ (or _e_) serves a similar purpose in decimal as part of the E notation. The number after the _P_ is _decimal_ and represents the _binary_ exponent.

Usually the number is normalised so that the leading hexadecimal digit is 1 (unless the value is exactly 0).

Example: 1.3DEp42 represents .

Hexadecimal exponential notation is required by the IEEE 754-2008 binary floating-point standard. This notation can be used for floating-point literals in the C99 edition of the C programming language.[26] Using the _%a_ or _%A_ conversion specifiers, this notation can be produced by implementations of the _printf_ family of functions following the C99 specification[27] and Single Unix Specification (IEEE Std 1003.1) POSIX standard.[28]


Conversion

Binary conversion

Most computers manipulate binary data, but it is difficult for humans to work with the large number of digits for even a relatively small binary number. Although most humans are familiar with the base 10 system, it is much easier to map binary to hexadecimal than to decimal because each hexadecimal digit maps to a whole number of bits (4₁₀). This example converts 1111₂ to base ten. Since each position in a binary numeral can contain either a 1 or a 0, its value may be easily determined by its position from the right:

-   0001₂ = 1₁₀
-   0010₂ = 2₁₀
-   0100₂ = 4₁₀
-   1000₂ = 8₁₀

Therefore:

  ------- -------------------------
  1111₂   = 8₁₀ + 4₁₀ + 2₁₀ + 1₁₀
          = 15₁₀
  ------- -------------------------

With little practice, mapping 1111₂ to F₁₆ in one step becomes easy: see table in written representation. The advantage of using hexadecimal rather than decimal increases rapidly with the size of the number. When the number becomes large, conversion to decimal is very tedious. However, when mapping to hexadecimal, it is trivial to regard the binary string as 4-digit groups and map each to a single hexadecimal digit.

This example shows the conversion of a binary number to decimal, mapping each digit to the decimal value, and adding the results.

  ------------------------- ------------------------------------------------------------------------------------------------
  (01011110101101010010)₂   = 262144₁₀ + 65536₁₀ + 32768₁₀ + 16384₁₀ + 8192₁₀ + 2048₁₀ + 512₁₀ + 256₁₀ + 64₁₀ + 16₁₀ + 2₁₀
                            = 387922₁₀
  ------------------------- ------------------------------------------------------------------------------------------------

Compare this to the conversion to hexadecimal, where each group of four digits can be considered independently, and converted directly:

  ------------------------- --- --------- ------- ------- ------- -------
  (01011110101101010010)₂   =   0101      1110    1011    0101    0010₂
                            =   5         E       B       5       2₁₆
                            =   5EB52₁₆
  ------------------------- --- --------- ------- ------- ------- -------

The conversion from hexadecimal to binary is equally direct.

Other simple conversions

Although quaternary (base 4) is little used, it can easily be converted to and from hexadecimal or binary. Each hexadecimal digit corresponds to a pair of quaternary digits and each quaternary digit corresponds to a pair of binary digits. In the above example 5 E B 5 2₁₆ = 11 32 23 11 02₄.

The octal (base 8) system can also be converted with relative ease, although not quite as trivially as with bases 2 and 4. Each octal digit corresponds to three binary digits, rather than four. Therefore we can convert between octal and hexadecimal via an intermediate conversion to binary followed by regrouping the binary digits in groups of either three or four.

Division-remainder in source base

As with all bases there is a simple algorithm for converting a representation of a number to hexadecimal by doing integer division and remainder operations in the source base. In theory, this is possible from any base, but for most humans only decimal and for most computers only binary (which can be converted by far more efficient methods) can be easily handled with this method.

Let d be the number to represent in hexadecimal, and the series h_(i)h_(i−1)...h₂h₁ be the hexadecimal digits representing the number.

1.  i ← 1
2.  h_(i) ← d mod 16
3.  d ← (d − h_(i)) / 16
4.  If d = 0 (return series h_(i)) else increment i and go to step 2

"16" may be replaced with any other base that may be desired.

The following is a JavaScript implementation of the above algorithm for converting any number to a hexadecimal in String representation. Its purpose is to illustrate the above algorithm. To work with data seriously, however, it is much more advisable to work with bitwise operators.

    function toHex(d) {
      var r = d % 16;
      if (d - r == 0) {
        return toChar(r);
      }
      return toHex( (d - r)/16 ) + toChar(r);
    }

    function toChar(n) {
      const alpha = "0123456789ABCDEF";
      return alpha.charAt(n);
    }

Conversion through addition and multiplication

Hexadecimal_multiplication_table.svg]] It is also possible to make the conversion by assigning each place in the source base the hexadecimal representation of its place value — before carrying out multiplication and addition to get the final representation. For example, to convert the number B3AD to decimal, one can split the hexadecimal number into its digits: B (11₁₀), 3 (3₁₀), A (10₁₀) and D (13₁₀), and then get the final result by multiplying each decimal representation by 16^(_p_) (_p_ being the corresponding hex digit position, counting from right to left, beginning with 0). In this case, we have that:

(11 × 16³) + (3 × 16²) + (10 × 16¹) + (13 × 16⁰)}}

which is 45997 in base 10.

Tools for conversion

Most modern computer systems with graphical user interfaces provide a built-in calculator utility capable of performing conversions between the various radices, and in most cases would include the hexadecimal as well.

In Microsoft Windows, the Calculator utility can be set to Scientific mode (called Programmer mode in some versions), which allows conversions between radix 16 (hexadecimal), 10 (decimal), 8 (octal) and 2 (binary), the bases most commonly used by programmers. In Scientific Mode, the on-screen numeric keypad includes the hexadecimal digits A through F, which are active when "Hex" is selected. In hex mode, however, the Windows Calculator supports only integers.


Elementary arithmetic

Elementary operations such additions, subtractions, multiplications and divisions can be carried out indirectly through conversion to an alternate numeral system, such as the decimal system, since it's the most commonly adopted system, or the binary system, since each hex digit corresponds to four binary digits,

Alternatively, one can also perform elementary operations directly within the hex system itself — by relying on its addition/multiplication tables and its corresponding standard algorithms such as long division and the traditional subtraction algorithm.[29]


Real numbers

Rational numbers

As with other numeral systems, the hexadecimal system can be used to represent rational numbers, although repeating expansions are common since sixteen (10₁₆) has only a single prime factor; two.

For any base, 0.1 (or "1/10") is always equivalent to one divided by the representation of that base value in its own number system. Thus, whether dividing one by two for binary or dividing one by sixteen for hexadecimal, both of these fractions are written as 0.1. Because the radix 16 is a perfect square (4²), fractions expressed in hexadecimal have an odd period much more often than decimal ones, and there are no cyclic numbers (other than trivial single digits). Recurring digits are exhibited when the denominator in lowest terms has a prime factor not found in the radix; thus, when using hexadecimal notation, all fractions with denominators that are not a power of two result in an infinite string of recurring digits (such as thirds and fifths). This makes hexadecimal (and binary) less convenient than decimal for representing rational numbers since a larger proportion lie outside its range of finite representation.

All rational numbers finitely representable in hexadecimal are also finitely representable in decimal, duodecimal and sexagesimal: that is, any hexadecimal number with a finite number of digits also has a finite number of digits when expressed in those other bases. Conversely, only a fraction of those finitely representable in the latter bases are finitely representable in hexadecimal. For example, decimal 0.1 corresponds to the infinite recurring representation 0.1 in hexadecimal. However, hexadecimal is more efficient than duodecimal and sexagesimal for representing fractions with powers of two in the denominator. For example, 0.0625₁₀ (one sixteenth) is equivalent to 0.1₁₆, 0.09₁₂, and 0;3,45₆₀.

+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| n        | Decimal                                                     | Hexadecimal                                                              |
|          | Prime factors of base, b = 10: , ; b − 1 = 9: ; b + 1 = 11: | Prime factors of base, b = 16 = 10: ; b − 1 = 15 = F: ; b + 1 = 17 = 11: |
+==========+=============================================================+==========================================================================+
| Fraction | Prime factors                                               | Positional representation                                                |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 2        | 1/2                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 3        | 1/3                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 4        | 1/4                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 5        | 1/5                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 6        | 1/6                                                         | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 7        | 1/7                                                         | 7                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 8        | 1/8                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 9        | 1/9                                                         |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 10       | 1/10                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 11       | 1/11                                                        |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 12       | 1/12                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 13       | 1/13                                                        | 13                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 14       | 1/14                                                        | , 7                                                                      |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 15       | 1/15                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 16       | 1/16                                                        |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 17       | 1/17                                                        | 17                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 18       | 1/18                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 19       | 1/19                                                        | 19                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 20       | 1/20                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 21       | 1/21                                                        | , 7                                                                      |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 22       | 1/22                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 23       | 1/23                                                        | 23                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 24       | 1/24                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 25       | 1/25                                                        |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 26       | 1/26                                                        | , 13                                                                     |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 27       | 1/27                                                        |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 28       | 1/28                                                        | , 7                                                                      |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 29       | 1/29                                                        | 29                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 30       | 1/30                                                        | , ,                                                                      |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 31       | 1/31                                                        | 31                                                                       |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 32       | 1/32                                                        |                                                                          |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 33       | 1/33                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 34       | 1/34                                                        | , 17                                                                     |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 35       | 1/35                                                        | , 7                                                                      |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+
| 36       | 1/36                                                        | ,                                                                        |
+----------+-------------------------------------------------------------+--------------------------------------------------------------------------+

Irrational numbers

The table below gives the expansions of some common irrational numbers in decimal and hexadecimal.

+---------+---------------------------+
| Number  | Positional representation |
+=========+===========================+
| Decimal | Hexadecimal               |
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
| {{mvar  | ...                       |
+---------+---------------------------+
| {{mvar  | ...                       |
+---------+---------------------------+

Powers

Powers of two have very simple expansions in hexadecimal. The first sixteen powers of two are shown below.

  2^(_x_)     Value         Value (Decimal)
  ----------- ------------- -----------------
  2⁰          1             1
  2¹          2             2
  2²          4             4
  2³          8             8
  2⁴          10_(hex)      16_(dec)
  2⁵          20_(hex)      32_(dec)
  2⁶          40_(hex)      64_(dec)
  2⁷          80_(hex)      128_(dec)
  2⁸          100_(hex)     256_(dec)
  2⁹          200_(hex)     512_(dec)
  2^(A) (2)   400_(hex)     1024_(dec)
  2^(B) (2)   800_(hex)     2048_(dec)
  2^(C) (2)   1000_(hex)    4096_(dec)
  2^(D) (2)   2000_(hex)    8192_(dec)
  2^(E) (2)   4000_(hex)    16,384_(dec)
  2^(F) (2)   8000_(hex)    32,768_(dec)
  2¹⁰ (2)     10000_(hex)   65,536_(dec)


Cultural

Etymology

The word _hexadecimal_ is composed of _hexa-_, derived from the Greek ἕξ (hex) for _six_, and _-decimal_, derived from the Latin for _tenth_. Webster's Third New International online derives _hexadecimal_ as an alteration of the all-Latin _sexadecimal_ (which appears in the earlier Bendix documentation). The earliest date attested for _hexadecimal_ in Merriam-Webster Collegiate online is 1954, placing it safely in the category of international scientific vocabulary (ISV). It is common in ISV to mix Greek and Latin combining forms freely. The word _sexagesimal_ (for base 60) retains the Latin prefix. Donald Knuth has pointed out that the etymologically correct term is _senidenary_ (or possibly, _sedenary_), from the Latin term for _grouped by 16_. (The terms _binary_, _ternary_ and _quaternary_ are from the same Latin construction, and the etymologically correct terms for _decimal_ and _octal_ arithmetic are _denary_ and _octonary_, respectively.)[30] Alfred B. Taylor used _senidenary_ in his mid-1800s work on alternative number bases, although he rejected base 16 because of its "incommodious number of digits".[31][32] Schwartzman notes that the expected form from usual Latin phrasing would be _sexadecimal_, but computer hackers would be tempted to shorten that word to _sex_.[33] The etymologically proper Greek term would be _hexadecadic_ / _ἑξαδεκαδικός_ / _hexadekadikós_ (although in Modern Greek, _decahexadic_ / _δεκαεξαδικός_ / _dekaexadikos_ is more commonly used).

Use in Chinese culture

The traditional Chinese units of measurement were base-16. For example, one jīn (斤) in the old system equals sixteen taels. The suanpan (Chinese abacus) can be used to perform hexadecimal calculations such as additions and subtractions[34].

Primary numeral system

As with the duodecimal system, there have been occasional attempts to promote hexadecimal as the preferred numeral system. These attempts often propose specific pronunciation and symbols for the individual numerals.[35] Some proposals unify standard measures so that they are multiples of 16.[36][37][38]

An example of unified standard measures is hexadecimal time, which subdivides a day by 16 so that there are 16 "hexhours" in a day.[39]


Base16 (Transfer encoding)

BASE16 (as a proper name without a space) can also refer to a binary to text encoding belonging to the same family as Base32, Base58, and Base64.

In this case, data is broken into 4-bit sequences, and each value (between 0 and 15 inclusively) is encoded using 16 symbols from the ASCII character set. Although any 16 symbols from the ASCII character set can be used, in practice the ASCII digits '0'-'9' and the letters 'A'-'F' (or the lowercase 'a'-'f') are always chosen in order to align with standard written notation for hexadecimal numbers.

There are several advantages of Base16 encoding:

-   Most programming languages already have facilities to parse ASCII-encoded hexadecimal
-   Being exactly half a byte, 4-bits is easier to process than the 5 or 6 bits of Base32 and Base64 respectively
-   The symbols 0-9 and A-F are universal in hexadecimal notation, so it is easily understood at a glance without needing to rely on a symbol lookup table
-   Many CPU architectures have dedicated instructions that allow access to a half-byte (otherwise known as a "Nibble"), making it more efficient in hardware than Base32 and Base64

The main disadvantages of Base16 encoding are:

-   Space efficiency is only 50%, since each 4-bit value from the original data will be encoded as an 8-bit byte. In contrast, Base32 and Base64 encodings have a space efficiency of 63% and 75% respectively.
-   Possible added complexity of having to accept both uppercase and lowercase letters

Support for Base16 encoding is ubiquitous in modern computing. It is the basis for the W3C standard for URL Percent Encoding, where a character is replaced with a percent sign "%" and its Base16-encoded form. Most modern programming languages directly include support for formatting and parsing Base16-encoded numbers.


See also

-   Base32, Base64 (content encoding schemes)
-   Hexadecimal time
-   IBM hexadecimal floating point
-   Hex editor
-   Hex dump
-   Bailey–Borwein–Plouffe formula (BBP)
-   Hexspeak


References

Category:Binary arithmetic Category:Hexadecimal numeral system Category:Positional numeral systems

[1]

[2]

[3] The string "\x1B[0m\x1B[25;1H" specifies the character sequence Esc [ 0 m Esc [ 2 5 ; 1 H Nul. These are the escape sequences used on an ANSI terminal that reset the character set and color, and then move the cursor to line 25.

[4]

[5]

[6] The VHDL MINI-REFERENCE: VHDL IDENTIFIERS, NUMBERS, STRINGS, AND EXPRESSIONS

[7]

[8]

[9] MSX is Coming — Part 2: Inside MSX Compute!, issue 56, January 1985, p. 52

[10] BBC BASIC programs are not fully portable to Microsoft BASIC (without modification) since the latter takes & to prefix octal values. (Microsoft BASIC primarily uses &O to prefix octal, and it uses &H to prefix hexadecimal, but the ampersand alone yields a default interpretation as an octal prefix.

[11] Donald E. Knuth. _The TeXbook_ (Computers and Typesetting, Volume A). Reading, Massachusetts: Addison–Wesley, 1984. . The source code of the book in TeX (and a required set of macros CTAN.org) is available online on CTAN.

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30] Knuth, Donald. (1969). _The Art of Computer Programming, Volume 2_. . (Chapter 17.)

[31] Alfred B. Taylor, Report on Weights and Measures, Pharmaceutical Association, 8th Annual Session, Boston, Sept. 15, 1859. See pages and 33 and 41.

[32] Alfred B. Taylor, "Octonary numeration and its application to a system of weights and measures", _Proc Amer. Phil. Soc._ Vol XXIV, Philadelphia, 1887; pages 296-366. See pages 317 and 322.

[33] Schwartzman, S. (1994). _The Words of Mathematics: an etymological dictionary of mathematical terms used in English_. .

[34]

[35]

[36]

[37]

[38]

[39]