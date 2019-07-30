The BYTE is a unit of digital information that most commonly consists of eight bits, representing a binary number. Historically, the byte was the number of bits used to encode a single character of text in a computer[1][2] and for this reason it is the smallest addressable unit of memory in many computer architectures.

The size of the byte has historically been hardware dependent and no definitive standards existed that mandated the size – byte-sizes from 1[3] to 48 bits[4] are known to have been used in the past.[5][6] Early character encoding systems often used six bits, and machines using six-bit and nine-bit bytes were common into the 1960s. These machines most commonly had memory words of 12, 24, 36, 48 or 60 bits, corresponding to two, four, six, eight or 10 six-bit bytes. In this era, bytes in the instruction stream were often referred to as _syllables_, before the term byte became common.

The modern _de facto_ standard of eight bits, as documented in ISO/IEC 2382-1:1993, is a convenient power of two permitting the values 0 through 255 for one byte (2 to the power 8 is 256, where zero signifies a number as well).[7] The international standard IEC 80000-13 codified this common meaning. Many types of applications use information representable in eight or fewer bits and processor designers optimize for this common usage. The popularity of major commercial computing architectures has aided in the ubiquitous acceptance of the eight-bit size.[8] Modern architectures typically use 32- or 64-bit words, built of four or eight bytes.

The unit symbol for the byte was designated as the upper-case letter _B_ by the International Electrotechnical Commission (IEC) and Institute of Electrical and Electronics Engineers (IEEE)[9] in contrast to the bit, whose IEEE symbol is a lower-case _b_. Internationally, the unit _octet_, symbol _o_, explicitly denotes a sequence of eight bits, eliminating the ambiguity of the byte.[10][11]


History

The term _byte_ was coined by Werner Buchholz in June 1956,[12][13][14] during the early design phase for the IBM Stretch[15][16][17][18][19][20][21] computer, which had addressing to the bit and variable field length (VFL) instructions with a byte size encoded in the instruction.[22] It is a deliberate respelling of _bite_ to avoid accidental mutation to _bit_.[23][24][25]

Another origin of _byte_ for bit groups smaller than a machine's word size (and in particular groups of four bits) is on record by Louis G. Dooley, who claimed he coined the term while working with Jules Schwartz and Dick Beeler on an air defense system called SAGE at MIT Lincoln Laboratory in ca. 1956/1957, which was jointly developed by Rand, MIT, and IBM.[26][27] Later on, Schwartz's language JOVIAL actually used the term, but he recalled vaguely that it was derived from AN/FSQ-31.[28][29]

Early computers used a variety of four-bit binary-coded decimal (BCD) representations and the six-bit codes for printable graphic patterns common in the U.S. Army (FIELDATA) and Navy. These representations included alphanumeric characters and special graphical symbols. These sets were expanded in 1963 to seven bits of coding, called the American Standard Code for Information Interchange (ASCII) as the Federal Information Processing Standard, which replaced the incompatible teleprinter codes in use by different branches of the U.S. government and universities during the 1960s. ASCII included the distinction of upper- and lowercase alphabets and a set of control characters to facilitate the transmission of written language as well as printing device functions, such as page advance and line feed, and the physical or logical control of data flow over the transmission media.[30] During the early 1960s, while also active in ASCII standardization, IBM simultaneously introduced in its product line of System/360 the eight-bit Extended Binary Coded Decimal Interchange Code (EBCDIC), an expansion of their six-bit binary-coded decimal (BCDIC) representations used in earlier card punches.[31] The prominence of the System/360 led to the ubiquitous adoption of the eight-bit storage size,[32][33][34] while in detail the EBCDIC and ASCII encoding schemes are different.

In the early 1960s, AT&T introduced digital telephony first on long-distance trunk lines. These used the eight-bit µ-law encoding. This large investment promised to reduce transmission costs for eight-bit data.

The development of eight-bit microprocessors in the 1970s popularized this storage size. Microprocessors such as the Intel 8008, the direct predecessor of the 8080 and the 8086, used in early personal computers, could also perform a small number of operations on the four-bit pairs in a byte, such as the decimal-add-adjust (DAA) instruction. A four-bit quantity is often called a nibble, also _nybble_, which is conveniently represented by a single hexadecimal digit.

The term _octet_ is used to unambiguously specify a size of eight bits.[35][36] It is used extensively in protocol definitions.

Historically, the term _octad_ or _octade_ was used to denote eight bits as well at least in Western Europe;[37][38] however, this usage is no longer common. The exact origin of the term is unclear, but it can be found in British, Dutch, and German sources of the 1960s and 1970s, and throughout the documentation of Philips mainframe computers.


Unit symbol

The unit symbol for the byte is specified in IEC 80000-13, IEEE 1541 and the Metric Interchange Format[39] as the upper-case character _B_. In contrast, IEEE 1541 specifies the lower case character _b_ as the symbol for the bit, but IEC 80000-13 and Metric-Interchange-Format specify the symbol as _bit_, providing disambiguation from B for byte.

In the International System of Quantities (ISQ), B is the symbol of the _bel_, a unit of logarithmic power ratios named after Alexander Graham Bell, creating a conflict with the IEC specification. However, little danger of confusion exists, because the bel is a rarely used unit. It is used primarily in its decadic fraction, the decibel (dB), for signal strength and sound pressure level measurements, while a unit for one tenth of a byte, the decibyte, and other fractions, are only used in derived units, such as transmission rates.

The lowercase letter o for octet is defined as the symbol for octet in IEC 80000-13 and is commonly used in languages such as French[40] and Romanian, and is also combined with metric prefixes for multiples, for example ko and Mo.

The usage of the term _octad(e)_ for eight bits is no longer common.[41][42]


Unit multiples

Despite standardization efforts, ambiguity still exists in the meanings of the SI (or metric) prefixes used with the unit byte, especially concerning the prefixes _kilo_ (k or K), _mega_ (M), and _giga_ (G). Computer memory has a binary architecture in which multiples are expressed in powers of 2. In some fields of the software and computer hardware industries a binary prefix is used for bytes and bits, while producers of computer storage devices practice adherence to decimal SI multiples. For example, a computer disk drive capacity of 100 gigabytes is specified when the disk contains 100 billion bytes (93 gibibytes) of storage space.

While the numerical difference between the decimal and binary interpretations is relatively small for the prefixes kilo and mega, it grows to over 20% for prefix yotta. The linear–log graph illustrates the difference versus storage size up to an exabyte.


Common uses

Many programming languages defined the data type _byte_.

The C and C++ programming languages define _byte_ as an "_addressable unit of data storage large enough to hold any member of the basic character set of the execution environment_" (clause 3.6 of the C standard). The C standard requires that the integral data type _unsigned char_ must hold at least 256 different values, and is represented by at least eight bits (clause 5.2.4.2.1). Various implementations of C and C++ reserve 8, 9, 16, 32, or 36 bits for the storage of a byte.[43][44] In addition, the C and C++ standards require that there are no "gaps" between two bytes. This means every bit in memory is part of a byte.[45]

Java's primitive byte data type is always defined as consisting of 8 bits and being a signed data type, holding values from −128 to 127.

.NET programming languages, such as C#, define both an unsigned byte and a signed sbyte, holding values from 0 to 255, and −128 to 127, respectively.

In data transmission systems, the byte is defined as a contiguous sequence of bits in a serial data stream representing the smallest distinguished unit of data. A transmission unit might include start bits, stop bits, or parity bits, and thus could vary from 7 to 12 bits to contain a single 7-bit ASCII code.[46]


See also

-   Data
-   Data hierarchy
-   JBOB, Just a Bunch Of Bytes
-   Nibble
-   Primitive data type
-   Tryte
-   Qubyte (quantum byte)
-   Word (computer architecture)
-   Octet (computing)


Notes


References

[47] [48] [49] [50] [51] [52] [53] [54] [55] [56] [57] [58] [59] [60] [61] [62] [63] [64] [65] [66] [67] [68] [69] [70] [71] }}


Further reading

-

Category:Data types Category:Units of information Category:Binary arithmetic Category:Computer memory Category:Data unit Category:Primitive types Category:Words coined in the 1950s Category:8 (number)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

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

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]  (NB. This timeline erroneously specifies the birth date of the term "byte" as _July 1956_, while Buchholz actually used the term as early as _June 1956_.)

[52]

[53]

[54]

[55]

[56]

[57] )

[58]

[59]

[60]

[61]

[62]

[63]

[64]  (NB. Discusses 12-bit, 24-bit and 48-bit bytes.)

[65]  (NB. According to his son, Dooley wrote to him: "On good days, we would have the XD-1 up and running and all the programs doing the right thing, and we then had some time to just sit and talk idly, as we waited for the computer to finish doing its thing. On one such occasion, I coined the word "byte", they (Jules Schwartz and Dick Beeler) liked it, and we began using it amongst ourselves. The origin of the word was a need for referencing only a part of the word length of the computer, but a part larger than just one bit...Many programs had to access just a specific 4-bit segment of the full word...I wanted a name for this smaller segment of the fuller word. The word "bit" lead to "bite" (meaningfully less than the whole), but for a unique spelling, "i" could be "y", and thus the word "byte" was born.")

[66]

[67]

[68]

[69]

[70]  (NB. Example of the usage of a code for "4-bit bytes".)

[71]  (NB. Defines a byte as a group of typically 9 bits; 8 data bits plus 1 parity bit.)