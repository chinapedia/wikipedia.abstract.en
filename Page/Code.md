International_Morse_Code.svg In communications and information processing, CODE is a system of rules to convert information—such as a letter, word, sound, image, or gesture—into another form or representation, sometimes shortened or secret, for communication through a communication channel or storage in a storage medium. An early example is the invention of language, which enabled a person, through speech, to communicate what they saw, heard, felt, or thought to others. But speech limits the range of communication to the distance a voice can carry, and limits the audience to those present when the speech is uttered. The invention of writing, which converted spoken language into visual symbols, extended the range of communication across space and time.

The process of ENCODING converts information from a source into symbols for communication or storage. DECODING is the reverse process, converting code symbols back into a form that the recipient understands, such as English or Spanish.

One reason for coding is to enable communication in places where ordinary plain language, spoken or written, is difficult or impossible. For example, semaphore, where the configuration of flags held by a signaler or the arms of a semaphore tower encodes parts of the message, typically individual letters and numbers. Another person standing a great distance away can interpret the flags and reproduce the words sent.


Theory

In information theory and computer science, a code is usually considered as an algorithm that uniquely represents symbols from some source alphabet, by _encoded_ strings, which may be in some other target alphabet. An extension of the code for representing sequences of symbols over the source alphabet is obtained by concatenating the encoded strings.

Before giving a mathematically precise definition, this is a brief example. The mapping

_C_ = { _a_ ↦ 0, _b_ ↦ 01, _c_ ↦ 011 }
is a code, whose source alphabet is the set {a, b, c} and whose target alphabet is the set {0, 1}. Using the extension of the code, the encoded string 0011001011 can be grouped into codewords as 0 011 0 01 011, and these in turn can be decoded to the sequence of source symbols _acabc_.

Using terms from formal language theory, the precise mathematical definition of this concept is as follows: let S and T be two finite sets, called the source and target alphabets, respectively. A CODE C: S → T^(*) is a total function mapping each symbol from S to a sequence of symbols over T, and the extension of C to a homomorphism of S^(*) into T^(*), which naturally maps each sequence of source symbols to a sequence of target symbols, is referred to as its EXTENSION.

Variable-length codes

Codes that encode each source (clear text) character by a code word from some dictionary, and concatenation of such code words give us an encoded string. Variable-length codes are especially useful when clear text characters have different probabilities; see also entropy encoding.

A _prefix code_ is a code with the "prefix property": there is no valid code word in the system that is a prefix (start) of any other valid code word in the set. Huffman coding is the most known algorithm for deriving prefix codes. Prefix codes are widely referred to as "Huffman codes" even when the code was not produced by a Huffman algorithm. Other examples of prefix codes are country calling codes, the country and publisher parts of ISBNs, and the Secondary Synchronization Codes used in the UMTS WCDMA 3G Wireless Standard.

Kraft's inequality characterizes the sets of codeword lengths that are possible in a prefix code. Virtually any uniquely decodable one-to-many code, not necessary a prefix one, must satisfy Kraft's inequality.

Error-correcting codes

Codes may also be used to represent data in a way more resistant to errors in transmission or storage. This so-called error-correcting code works by including carefully crafted redundancy with the stored (or transmitted) data. Examples include Hamming codes, Reed–Solomon, Reed–Muller, Walsh–Hadamard, Bose–Chaudhuri–Hochquenghem, Turbo, Golay, Goppa, low-density parity-check codes, and space–time codes. Error detecting codes can be optimised to detect _burst errors_, or _random errors_.


Examples

Codes in communication used for brevity

A cable code replaces words (e.g. _ship_ or _invoice_) with shorter words, allowing the same information to be sent with fewer characters, more quickly, and less expensively.

Codes can be used for brevity. When telegraph messages were the state of the art in rapid long distance communication, elaborate systems of commercial codes that encoded complete phrases into single mouths (commonly five-minute groups) were developed, so that telegraphers became conversant with such "words" as _BYOXO_ ("Are you trying to weasel out of our deal?"), _LIOUY_ ("Why do you not answer my question?"), _BMULD_ ("You're a skunk!"), or _AYYLU_ ("Not clearly coded, repeat more clearly."). Code words were chosen for various reasons: length, pronounceability, etc. Meanings were chosen to fit perceived needs: commercial negotiations, military terms for military codes, diplomatic terms for diplomatic codes, any and all of the preceding for espionage codes. Codebooks and codebook publishers proliferated, including one run as a front for the American Black Chamber run by Herbert Yardley between the First and Second World Wars. The purpose of most of these codes was to save on cable costs. The use of data coding for data compression predates the computer era; an early example is the telegraph Morse code where more-frequently used characters have shorter representations. Techniques such as Huffman coding are now used by computer-based algorithms to compress large data files into a more compact form for storage or transmission.

Character encodings

Character encodings are representations of textual data. A given character encoding may be associated with a specific character set (the collection of characters which it can represent), though some character sets have multiple character encodings and vice versa. Character encodings may be broadly grouped according to the number of bytes required to represent a single character: there are single byte encodings, multibyte (also called wide) encodings, and variable-width (also called variable-length) encodings. The earliest character encodings were single-byte, the best known example of which is ASCII. ASCII remains in use today, for example in HTTP headers. However, single-byte encodings cannot model character sets with more than 256 characters. Scripts which require large character sets such as Chinese, Japanese and Korean must be represented with multibyte encodings. Early multibyte encodings were fixed-length, meaning that although each character was represented by more than one byte, all characters used the same number of bytes ("word length"), making them suitable for decoding with a lookup table. The final group, variable-width encodings, is a subset of multibyte encodings. These use more complex encoding and decoding logic to efficiently represent large character sets while keeping the representations of more commonly used characters shorter or maintaining backwards compatibility properties. This group includes UTF-8, an encoding of the Unicode character set; UTF-8 is the most common encoding of text media on the Internet.

Genetic code

Biological organisms contain genetic material that is used to control their function and development. This is DNA, which contains units named genes from which messenger RNA is derived. This in turn produces proteins through a genetic code in which a series of triplets (codons) of four possible nucleotides can be translated into one of twenty possible amino acids. A sequence of codons results in a corresponding sequence of amino acids that form a protein molecule; a type of codon called a stop codon signals the end of the sequence.

Gödel code

In mathematics, a Gödel code was the basis for the proof of Gödel's incompleteness theorem. Here, the idea was to map mathematical notation to a natural number (using a Gödel numbering).

Other

There are codes using colors, like traffic lights, the color code employed to mark the nominal value of the electrical resistors or that of the trashcans devoted to specific types of garbage (paper, glass, organic, etc.).

In marketing, coupon codes can be used for a financial discount or rebate when purchasing a product from a (usually internet) retailer.

In military environments, specific sounds with the cornet are used for different uses: to mark some moments of the day, to command the infantry on the battlefield, etc.

Communication systems for sensory impairments, such as sign language for deaf people and braille for blind people, are based on movement or tactile codes.

Musical scores are the most common way to encode music.

Specific games have their own code systems to record the matches, e.g. chess notation.

Cryptography

In the history of cryptography, codes were once common for ensuring the confidentiality of communications, although ciphers are now used instead.

Secret codes intended to obscure the real messages, ranging from serious (mainly espionage in military, diplomacy, business, etc.) to trivial (romance, games) can be any kind of imaginative encoding: flowers, game cards, clothes, fans, hats, melodies, birds, etc., in which the sole requisite is the pre-agreement on the meaning by both the sender and the receiver.


Other examples

Other examples of encoding include:

-   Encoding (in cognition) - a basic perceptual process of interpreting incoming stimuli; technically speaking, it is a complex, multi-stage process of converting relatively objective sensory input (e.g., light, sound) into subjectively meaningful experience.
-   A content format - a specific encoding format for converting a specific type of data to information.
-   Text encoding uses a markup language to tag the structure and other features of a text to facilitate processing by computers. (See also Text Encoding Initiative.)
-   Semantics encoding of formal language A in formal language B is a method of representing all terms (e.g. programs or descriptions) of language A using language B.
-   Electronic encoding transforms a signal into a code optimized for transmission or storage, generally done with a codec.
-   Neural encoding - the way in which information is represented in neurons.
-   Memory encoding - the process of converting sensations into memories.
-   Television encoding: NTSC, PAL and SECAM

Other examples of decoding include:

-   Decoding (computer science)
-   Decoding methods, methods in communication theory for decoding code words sent over a noisy channel
-   Digital signal processing, the study of signals in a digital representation and the processing methods of these signals
-   Digital-to-analog converter, the use of analog circuit for decoding operations
-   Word decoding, the use of phonics to decipher print patterns and translate them into the sounds of language


Codes and acronyms

Acronyms and abbreviations can be considered codes, and in a sense all languages and writing systems are codes for human thought.

International Air Transport Association airport codes are three-letter codes used to designate airports and used for bag tags. Station codes are similarly used on railways, but are usually national, so the same code can be used for different stations if they are in different countries.

Occasionally, a code word achieves an independent existence (and meaning) while the original equivalent phrase is forgotten or at least no longer has the precise meaning attributed to the code word. For example, '30' was widely used in journalism to mean "end of story", and has been used in other contexts to signify "the end".[1] [2]


See also

-   Asemic writing
-   Cipher
-   Code (semiotics)
-   Equipment codes
-   Quantum error correction
-   Semiotics
-   Universal language


References

-

Category:Encodings Category:Signal processing

[1] Kogan, Hadass "So Why Not 29" American Journalism Review. Retrieved 2012-07-03.

[2]