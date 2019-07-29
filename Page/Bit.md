The BIT is a basic unit of information in information theory, computing, and digital communications. The name is a portmanteau of BINARY DIGIT.[1]

In information theory, one bit is typically defined as the information entropy of a binary random variable that is 0 or 1 with equal probability,[2] or the information that is gained when the value of such a variable becomes known.[3][4] As a unit of information, the bit has also been called a _shannon_,[5] named after Claude Shannon.

As a binary digit, the bit represents a logical value, having only one of two values. It may be physically implemented with a two-state device. These state values are most commonly represented as either , but other representations such as _true/false_, _yes/no_, _+/−_, or _on/off_ are possible. The correspondence between these values and the physical states of the underlying storage or device is a matter of convention, and different assignments may be used even within the same device or program.

The symbol for the binary digit is either simply _bit_ per recommendation by the IEC 80000-13:2008 standard, or the lowercase character _b_, as recommended by the IEEE 1541-2002 and IEEE Std 260.1-2004 standards. A group of eight binary digits is commonly called one byte, but historically the size of the byte is not strictly defined.


History

The encoding of data by discrete bits was used in the punched cards invented by Basile Bouchon and Jean-Baptiste Falcon (1732), developed by Joseph Marie Jacquard (1804), and later adopted by Semyon Korsakov, Charles Babbage, Hermann Hollerith, and early computer manufacturers like IBM. Another variant of that idea was the perforated paper tape. In all those systems, the medium (card or tape) conceptually carried an array of hole positions; each position could be either punched through or not, thus carrying one bit of information. The encoding of text by bits was also used in Morse code (1844) and early digital communications machines such as teletypes and stock ticker machines (1870).

Ralph Hartley suggested the use of a logarithmic measure of information in 1928.[6] Claude E. Shannon first used the word _BIT_ in his seminal 1948 paper _A Mathematical Theory of Communication_.[7] He attributed its origin to John W. Tukey, who had written a Bell Labs memo on 9 January 1947 in which he contracted "binary information digit" to simply "bit". Vannevar Bush had written in 1936 of "bits of information" that could be stored on the punched cards used in the mechanical computers of that time.[8] The first programmable computer, built by Konrad Zuse, used binary notation for numbers.


Physical representation

A bit can be stored by a digital device or other physical system that exists in either of two possible distinct states. These may be the two stable states of a flip-flop, two positions of an electrical switch, two distinct voltage or current levels allowed by a circuit, two distinct levels of light intensity, two directions of magnetization or polarization, the orientation of reversible double stranded DNA, etc.

Bits can be implemented in several forms. In most modern computing devices, a bit is usually represented by an electrical voltage or current pulse, or by the electrical state of a flip-flop circuit.

For devices using positive logic, a digit value of 1 (or a logical value of true) is represented by a more positive voltage relative to the representation of 0. The specific voltages are different for different logic families and variations are permitted to allow for component aging and noise immunity. For example, in transistor–transistor logic (TTL) and compatible circuits, digit values 0 and 1 at the output of a device are represented by no higher than 0.4 volts and no lower than 2.6 volts, respectively; while TTL inputs are specified to recognize 0.8 volts or below as 0 and 2.2 volts or above as 1.

Transmission and processing

Bits are transmitted one at a time in serial transmission, and by a multiple number of bits in parallel transmission. A bitwise operation optionally processes bits one at a time. Data transfer rates are usually measured in decimal SI multiples of the unit bit per second (bit/s), such as kbit/s.

Storage

In the earliest non-electronic information processing devices, such as Jacquard's loom or Babbage's Analytical Engine, a bit was often stored as the position of a mechanical lever or gear, or the presence or absence of a hole at a specific point of a paper card or tape. The first electrical devices for discrete logic (such as elevator and traffic light control circuits, telephone switches, and Konrad Zuse's computer) represented bits as the states of electrical relays which could be either "open" or "closed". When relays were replaced by vacuum tubes, starting in the 1940s, computer builders experimented with a variety of storage methods, such as pressure pulses traveling down a mercury delay line, charges stored on the inside surface of a cathode-ray tube, or opaque spots printed on glass discs by photolithographic techniques.

In the 1950s and 1960s, these methods were largely supplanted by magnetic storage devices such as magnetic core memory, magnetic tapes, drums, and disks, where a bit was represented by the polarity of magnetization of a certain area of a ferromagnetic film, or by a change in polarity from one direction to the other. The same principle was later used in the magnetic bubble memory developed in the 1980s, and is still found in various magnetic strip items such as metro tickets and some credit cards.

In modern semiconductor memory, such as dynamic random-access memory, the two values of a bit may be represented by two levels of electric charge stored in a capacitor. In certain types of programmable logic arrays and read-only memory, a bit may be represented by the presence or absence of a conducting path at a certain point of a circuit. In optical discs, a bit is encoded as the presence or absence of a microscopic pit on a reflective surface. In one-dimensional bar codes, bits are encoded as the thickness of alternating black and white lines.


Unit and symbol

The bit is not defined in the International System of Units (SI). However, the International Electrotechnical Commission issued standard IEC 60027, which specifies that the symbol for binary digit should be _bit_, and this should be used in all multiples, such as _kbit_, for kilobit.[9] However, the lower-case letter b is widely used as well and was recommended by the IEEE 1541 Standard (2002). In contrast, the upper case letter B is the standard and customary symbol for byte.

Multiple bits

Multiple bits may be expressed and represented in several ways. For convenience of representing commonly reoccurring groups of bits in information technology, several units of information have traditionally been used. The most common is the unit byte, coined by Werner Buchholz in June 1956, which historically was used to represent the group of bits used to encode a single character of text (until UTF-8 multibyte encoding took over) in a computer[10][11][12][13][14] and for this reason it was used as the basic addressable element in many computer architectures. The trend in hardware design converged on the most common implementation of using eight bits per byte, as it is widely used today. However, because of the ambiguity of relying on the underlying hardware design, the unit octet was defined to explicitly denote a sequence of eight bits.

Computers usually manipulate bits in groups of a fixed size, conventionally named "words". Like the byte, the number of bits in a word also varies with the hardware design, and is typically between 8 and 80 bits, or even more in some specialized computers. In the 21st century, retail personal or server computers have a word size of 32 or 64 bits.

The International System of Units defines a series of decimal prefixes for multiples of standardized units which are commonly also used with the bit and the byte. The prefixes kilo (10³) through yotta (10²⁴) increment by multiples of 1000, and the corresponding units are the kilobit (kbit) through the yottabit (Ybit).


Information capacity and information compression

When the information capacity of a storage system or a communication channel is presented in _bits_ or _bits per second_, this often refers to binary digits, which is a computer hardware capacity to store binary data (0 or 1, up or down, current or not, etc.)[15]. Information capacity of a storage system is only an upper bound to the quantity of information stored therein. If the two possible values of one bit of storage are not equally likely, that bit of storage contains less than one bit of information. Indeed, if the value is completely predictable, then the reading of that value provides no information at all (zero entropic bits, because no resolution of uncertainty occurs and therefore no information is available). If a computer file that uses _n_ bits of storage contains only _m_ < _n_ bits of information, then that information can in principle be encoded in about _m_ bits, at least on the average. This principle is the basis of data compression technology. Using an analogy, the hardware binary digits refer to the amount of storage space available (like the number of buckets available to store things), and the information content the filling, which comes in different levels of granularity (fine or coarse, that is, compressed or uncompressed information). When the granularity is finer—when information is more compressed—the same bucket can hold more.

For example, it is estimated that the combined technological capacity of the world to store information provides 1,300 exabytes of hardware digits in 2007. However, when this storage space is filled and the corresponding content is optimally compressed, this only represents 295 exabytes of information.[16] When optimally compressed, the resulting carrying capacity approaches Shannon information or information entropy.[17]


Bit-based computing

Certain bitwise computer processor instructions (such as _bit set_) operate at the level of manipulating bits rather than manipulating data interpreted as an aggregate of bits.

In the 1980s, when bitmapped computer displays became popular, some computers provided specialized bit block transfer ("bitblt" or "blit") instructions to set or copy the bits that corresponded to a given rectangular area on the screen.

In most computers and programming languages, when a bit within a group of bits, such as a byte or word, is referred to, it is usually specified by a number from 0 upwards corresponding to its position within the byte or word. However, 0 can refer to either the most or least significant bit depending on the context.


Other information units

Similar to angular momentum and energy in physics; information-theoretic information and data storage size have the same dimensionality of units of measurement, but there is in general no meaning to adding, subtracting or otherwise combining the units mathematically.

Other units of information, sometimes used in information theory, include the _natural digit_ also called a _nat_ or _nit_ and defined as log₂ _e_ (≈ 1.443) bits, where _e_ is the base of the natural logarithms; and the _dit_, _ban_, or _hartley_, defined as log₂ 10 (≈ 3.322) bits.[18] This value, slightly less than 10/3, may be understood because 10³ = 1000 ≈ 1024 = 2¹⁰: three decimal digits are slightly less information than ten binary digits, so one decimal digit is slightly less than 10/3 binary digits. Conversely, one bit of information corresponds to about ln 2 (≈ 0.693) nats, or log₁₀ 2 (≈ 0.301) hartleys. As with the inverse ratio, this value, approximately 3/10, but slightly more, corresponds to the fact that 2¹⁰ = 1024 ~ 1000 = 10³: ten binary digits are slightly more information than three decimal digits, so one binary digit is slightly more than 3/10 decimal digits. Some authors also define a BINIT as an arbitrary information unit equivalent to some fixed but unspecified number of bits.[19]


See also

-   Integer (computer science)
-   Primitive data type
-   Trit (Trinary digit)
-   Qubit (quantum bit)
-   Bitstream
-   Entropy (information theory)
-   Baud rate (bits per second)
-   Binary numeral system
-   Ternary numeral system
-   Shannon (unit)


References


External links

-   Bit Calculator – a tool providing conversions between bit, byte, kilobit, kilobyte, megabit, megabyte, gigabit, gigabyte
-   BitXByteConverter – a tool for computing file sizes, storage capacity, and digital information in various units

Category:Binary arithmetic Category:Primitive types Category:Data types Category:Units of information

[1]  1

[2] John B. Anderson, Rolf Johnnesson (2006) _Understanding Information Transmission_.

[3] Simon Haykin (2006), _Digital Communications_

[4] IEEE Std 260.1-2004

[5]

[6] Norman Abramson (1963), _Information theory and coding_. McGraw-Hill.

[7]

[8]

[9] National Institute of Standards and Technology (2008), _Guide for the Use of the International System of Units_. Online version.

[10]

[11]

[12]

[13]

[14]

[15]

[16] "The World's Technological Capacity to Store, Communicate, and Compute Information" , especially Supporting online material , Martin Hilbert and Priscila López (2011), Science, 332(6025), 60-65; free access to the article through here: martinhilbert.net/WorldInfoCapacity.html

[17]

[18]

[19]