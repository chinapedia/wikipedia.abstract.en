Octets_in_CP866_ordered_by_nibbles.png code page 866 font table ordered by nibbles.]]

In computing, a NIBBLE (occasionally NYBBLE or NYBLE to match the spelling of byte) is a four-bit aggregation,[1][2] or half an octet. It is also known as HALF-BYTE[3] or TETRADE.[4][5] In a networking or telecommunication context, the nibble is often called a SEMI-OCTET,[6] QUADBIT,[7] or QUARTET.[8][9] A nibble has sixteen (2⁴) possible values. A nibble can be represented by a single hexadecimal digit and called a HEX DIGIT.[10]

A full byte (octet) is represented by two hexadecimal digits; therefore, it is common to display a byte of information as two nibbles. Sometimes the set of all 256 byte values is represented as a 16×16 table, which gives easily readable hexadecimal codes for each value.

Four-bit computer architectures use groups of four bits as their fundamental unit. Such architectures were used in early microprocessors, pocket calculators and pocket computers. They continue to be used in some microcontrollers.


History

The term 'nibble' originates from its representing 'half a byte', with 'byte' a homophone of the English word 'bite'.[11] In 2014, David B. Benson, a professor emeritus at Washington State University, remembered that he playfully used (and may have possibly coined) the term nibble as "half a byte" and unit of storage required to hold a binary-coded decimal (BCD) decimal digit around 1958, when talking to a programmer of Los Alamos Scientific Laboratory. The alternative spelling 'nybble' reflects the spelling of 'byte', as noted in editorials of _Kilobaud_ and _Byte_ in the early 1980s. Another early recorded use of the term 'nybble' was in 1977 within the consumer-banking technology group at Citibank. It created a pre-ISO 8583 standard for transactional messages between cash machines and Citibank's data centers that used the basic informational unit 'NABBLE'.

The nibble is used to describe the amount of memory used to store a digit of a number stored in packed decimal format (BCD) within an IBM mainframe. This technique is used to make computations faster and debugging easier. An 8-bit byte is split in half and each nibble is used to store one decimal digit. The last (rightmost) nibble of the variable is reserved for the sign. Thus a variable which can store up to nine digits would be "packed" into 5 bytes. Ease of debugging resulted from the numbers being readable in a hex dump where two hex numbers are used to represent the value of a byte, as 16×16 = 2⁸. For example, a five-byte BCD value of      represents a decimal value of .

Historically, there are cases where nybble was used for a group of bits greater than 4. In the Apple II microcomputer line, much of the disk drive control and group-coded recording was implemented in software. Writing data to a disk was done by converting 256-byte pages into sets of 5-bit (later, 6-bit) nibbles and loading disk data required the reverse.[12][13][14] Moreover, 1982 documentation for the Integrated Woz Machine refers consistently to an "8 bit nibble".[15] The term _byte_ once had the same ambiguity and meant a set of bits but not necessarily 8, hence the distinction of _bytes_ and _octets_ or of _nibbles_ and _quartets_ (or _quadbits_). Today, the terms 'byte' and 'nibble' almost always refer to 8-bit and 4-bit collections respectively and are very rarely used to express any other sizes.


Table of nibbles

The sixteen nibbles and their equivalents in other numeral systems:

  Binary           Hexadecimal
  ---------------- -------------
  0000 0100 0010   0 4 2
  0010 1010 1001   2 A 9
  0010 0000 1001   2 0 9
  1110 0100 1001   E 4 9
  0011 1001 0110   3 9 6
  0001 0000 0001   1 0 1
  0011 0101 0100   3 5 4
  0001 0110 0100   1 6 4


  : Examples

  -- --------- --- ---------- --- ---------- -- --- --- --- --- --

     0_(hex)   =   0_(dec)    =   0_(oct)       0   0   0   0
     1_(hex)   =   1_(dec)    =   1_(oct)       0   0   0   1
     2_(hex)   =   2_(dec)    =   2_(oct)       0   0   1   0
     3_(hex)   =   3_(dec)    =   3_(oct)       0   0   1   1

     4_(hex)   =   4_(dec)    =   4_(oct)       0   1   0   0
     5_(hex)   =   5_(dec)    =   5_(oct)       0   1   0   1
     6_(hex)   =   6_(dec)    =   6_(oct)       0   1   1   0
     7_(hex)   =   7_(dec)    =   7_(oct)       0   1   1   1

     8_(hex)   =   8_(dec)    =   10_(oct)      1   0   0   0
     9_(hex)   =   9_(dec)    =   11_(oct)      1   0   0   1
     A_(hex)   =   10_(dec)   =   12_(oct)      1   0   1   0
     B_(hex)   =   11_(dec)   =   13_(oct)      1   0   1   1

     C_(hex)   =   12_(dec)   =   14_(oct)      1   1   0   0
     D_(hex)   =   13_(dec)   =   15_(oct)      1   1   0   1
     E_(hex)   =   14_(dec)   =   16_(oct)      1   1   1   0
     F_(hex)   =   15_(dec)   =   17_(oct)      1   1   1   1

  -- --------- --- ---------- --- ---------- -- --- --- --- --- --


Low and high nibbles

The terms "low nibble" and "high nibble" are used to denote the nibbles containing, respectively, the less significant bits and the more significant bits within a byte. In graphical representations of bits within a byte, the leftmost bit could represent the most significant bit (MSB), corresponding to ordinary decimal notation in which the digit at the left of a number is the most significant. In such illustrations the four bits on the left end of the byte form the high nibble, and the remaining four bits form the low nibble.[16] For example,

ninety-seven = 97₁₀ = (0110 0001)₂

the high nibble is 0110₂ (6), and the low nibble is 0001₂ (1). The total value is high-nibble × 16 + low-nibble (6×16+1=97).


Extracting a nibble from a byte

In the C programming language:

    #define HI_NIBBLE(b) (((b) >> 4) & 0x0F)
    #define LO_NIBBLE(b) ((b) & 0x0F)

where b must be a variable or constant of an integral data type, and only the least-significant byte of b is used.

For example, HI_NIBBLE(0xAB)==0xA and LO_NIBBLE(0xAB)==0xB.

In Common Lisp:

    (defun hi-nibble (b)
      (ldb (byte 4 4) b))
    (defun lo-nibble (b)
      (ldb (byte 4 0) b))


See also

-   Binary numeral system
-   Syllable (computing)
-   Word


References


External links

-   Apple Assembly Line, May 1981, Volume 1, Number 8

Category:Computing terminology Category:Data unit Category:Units of information

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]  [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_001_063.pdf ] [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_064_113.pdf ] [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_114_163.pdf ] [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_164_213.pdf ] [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_214_263.pdf ] [http://www.courbis.fr/Data/Books/Pdfs_72/Voyage28/Voyage28_72x72_264_285.pdf ]

[10]

[11]

[12]  [http://asciiexpress.net/files/docs/Beneath%20Apple%20DOS%20OCR.pdf ]12

[13]  3

[14]

[15]

[16]