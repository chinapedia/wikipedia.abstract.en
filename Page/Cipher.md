's rune cipher resembling that found on the Kensington Runestone. Also includes runically unrelated blackletter writing style and pigpen cipher.]] In cryptography, a CIPHER (or CYPHER) is an algorithm for performing encryption or decryption—a series of well-defined steps that can be followed as a procedure. An alternative, less common term is _encipherment_. To encipher or encode is to convert information into cipher or code. In common parlance, "cipher" is synonymous with "code", as they are both a set of steps that encrypt a message; however, the concepts are distinct in cryptography, especially classical cryptography.

Codes generally substitute different length strings of character in the output, while ciphers generally substitute the same number of characters as are input. There are exceptions and some cipher systems may use slightly more, or fewer, characters when output versus the number that were input.

Codes operated by substituting according to a large codebook which linked a random string of characters or numbers to a word or phrase. For example, "UQJHSE" could be the code for "Proceed to the following coordinates." When using a cipher the original information is known as plaintext, and the encrypted form as ciphertext. The ciphertext message contains all the information of the plaintext message, but is not in a format readable by a human or computer without the proper mechanism to decrypt it.

The operation of a cipher usually depends on a piece of auxiliary information, called a key (or, in traditional NSA parlance, a _cryptovariable_). The encrypting procedure is varied depending on the key, which changes the detailed operation of the algorithm. A key must be selected before using a cipher to encrypt a message. Without knowledge of the key, it should be extremely difficult, if not impossible, to decrypt the resulting ciphertext into readable plaintext.

Most modern ciphers can be categorized in several ways

-   By whether they work on blocks of symbols usually of a fixed size (block ciphers), or on a continuous stream of symbols (stream ciphers).
-   By whether the same key is used for both encryption and decryption (symmetric key algorithms), or if a different key is used for each (asymmetric key algorithms). If the algorithm is symmetric, the key must be known to the recipient and sender and to no one else. If the algorithm is an asymmetric one, the enciphering key is different from, but closely related to, the deciphering key. If one key cannot be deduced from the other, the asymmetric key algorithm has the public/private key property and one of the keys may be made public without loss of confidentiality.


Etymology

The word "cipher" (minority spelling "cypher") in former times meant "zero" and had the same origin: Middle French as __ and Medieval Latin as _cifra,_ from the Arabic صفر _sifr_ = zero (see Zero—Etymology). "Cipher" was later used for any decimal digit, even any number. There are many theories about how the word "cipher" may have come to mean "encoding".

-   Encoding often involved numbers.
-   The Roman number system was very cumbersome because there was no concept of zero (or empty space). The concept of zero (which was also called "cipher"), which is now common knowledge, was alien to medieval Europe, so confusing and ambiguous to common Europeans that in arguments people would say "talk clearly and not so far fetched as a cipher". Cipher came to mean concealment of clear messages or encryption.
    -   The French formed the word "" and adopted the Italian word "".
    -   The English used "zero" for "0", and "cipher" from the word "ciphering" as a means of computing.
    -   The Germans used the words "Ziffer" (digit) and "Chiffre".
    -   The Dutch still use the word "cijfer" to refer to a numerical digit.
    -   The Slovaks, similarly, also use the word "cifra" to refer to a numerical digit.
    -   The Bosnians, Croats and Serbians use the word "cifra", which refers to a digit, or in some cases, any number. Besides "cifra", they use word "broj" for a number.
    -   The Italians and the Spanish also use the word "cifra" to refer to a digit.
    -   The Swedes use the word "siffra" which refers to a digit.
    -   The Greeks use the word "τζίφρα" ("tzifra") to refer to a hard-to-read signature, especially one written with a single stroke of the pen.

Ibrahim Al-Kadi concluded that the Arabic word _sifr_, for the digit zero, developed into the European technical term for encryption.[1]

As the decimal zero and its new mathematics spread from the Arabic world to Europe in the Middle Ages, words derived from _sifr_ and _zephyrus_ came to refer to calculation, as well as to privileged knowledge and secret codes. According to Ifrah, "in thirteenth-century Paris, a 'worthless fellow' was called a , i.e., an 'arithmetical nothing'."[2] Cipher was the European pronunciation of sifr, and cipher came to mean a message or communication not easily understood.[3]


Versus codes

In non-technical usage, a "(secret) code" typically means a "cipher". Within technical discussions, however, the words "code" and "cipher" refer to two different concepts. Codes work at the level of meaning—that is, words or phrases are converted into something else and this chunking generally shortens the message.

An example of this is the Commercial Telegraph Code which was used to shorten long telegraph messages which resulted from entering into commercial contracts using exchanges of Telegrams.

Another example is given by whole word ciphers, which allow the user to replace an entire word with a symbol or character, much like the way Japanese utilize Kanji (Japanese) characters to supplement their language. ex "The quick brown fox jumps over the lazy dog" becomes "The quick brown 狐 jumps 过 the lazy 狗".

Ciphers, on the other hand, work at a lower level: the level of individual letters, small groups of letters, or, in modern schemes, individual bits and blocks of bits. Some systems used both codes and ciphers in one system, using superencipherment to increase the security. In some cases the terms codes and ciphers are also used synonymously to substitution and transposition.

Historically, cryptography was split into a dichotomy of codes and ciphers; and coding had its own terminology, analogous to that for ciphers: "_encoding_, _codetext_, _decoding_" and so on.

However, codes have a variety of drawbacks, including susceptibility to cryptanalysis and the difficulty of managing a cumbersome codebook. Because of this, codes have fallen into disuse in modern cryptography, and ciphers are the dominant technique.


Types

There are a variety of different types of encryption. Algorithms used earlier in the history of cryptography are substantially different from modern methods, and modern ciphers can be classified according to how they operate and whether they use one or two keys.

Historical

Historical pen and paper ciphers used in the past are sometimes known as classical ciphers. They include simple substitution ciphers (such as Rot 13) and transposition ciphers (such as a Rail Fence Cipher). For example, "GOOD DOG" can be encrypted as "PLLX XLP" where "L" substitutes for "O", "P" for "G", and "X" for "D" in the message. Transposition of the letters "GOOD DOG" can result in "DGOGDOO". These simple ciphers and examples are easy to crack, even without plaintext-ciphertext pairs.[4]

Simple CIPHERS were replaced by polyalphabetic substitution ciphers (such as the Vigenère) which changed the substitution alphabet for every letter. For example, "GOOD DOG" can be encrypted as "PLSX TWF" where "L", "S", and "W" substitute for "O". With even a small amount of known or estimated plaintext, simple polyalphabetic substitution ciphers and letter transposition ciphers designed for pen and paper encryption are easy to crack.[5] It is possible to create a secure pen and paper cipher based on a one-time pad though, but the usual disadvantages of one-time pads apply.

During the early twentieth century, electro-mechanical machines were invented to do encryption and decryption using transposition, polyalphabetic substitution, and a kind of "additive" substitution. In rotor machines, several rotor disks provided polyalphabetic substitution, while plug boards provided another substitution. Keys were easily changed by changing the rotor disks and the plugboard wires. Although these encryption methods were more complex than previous schemes and required machines to encrypt and decrypt, other machines such as the British Bombe were invented to crack these encryption methods.

Modern

Modern encryption methods can be divided by two criteria: by type of key used, and by type of input data.

By type of key used ciphers are divided into:

-   symmetric key algorithms (Private-key cryptography), where the same key is used for encryption and decryption, and
-   asymmetric key algorithms (Public-key cryptography), where two different keys are used for encryption and decryption.

In a symmetric key algorithm (e.g., DES and AES), the sender and receiver must have a shared key set up in advance and kept secret from all other parties; the sender uses this key for encryption, and the receiver uses the same key for decryption. The Feistel cipher uses a combination of substitution and transposition techniques. Most block cipher algorithms are based on this structure. In an asymmetric key algorithm (e.g., RSA), there are two separate keys: a _public key_ is published and enables any sender to perform encryption, while a _private key_ is kept secret by the receiver and enables only him to perform correct decryption.

Ciphers can be distinguished into two types by the type of input data:

-   block ciphers, which encrypt block of data of fixed size, and
-   stream ciphers, which encrypt continuous streams of data


Key size and vulnerability

In a pure mathematical attack, (i.e., lacking any other information to help break a cipher) two factors above all count:

-   Computational power available, i.e., the computing power which can be brought to bear on the problem. It is important to note that average performance/capacity of a single computer is not the only factor to consider. An adversary can use multiple computers at once, for instance, to increase the speed of exhaustive search for a key (i.e., "brute force" attack) substantially.
-   Key size, i.e., the size of key used to encrypt a message. As the key size increases, so does the complexity of exhaustive search to the point where it becomes impractical to crack encryption directly.

Since the desired effect is computational difficulty, in theory one would choose an algorithm and desired difficulty level, thus decide the key length accordingly.

An example of this process can be found at Key Length which uses multiple reports to suggest that a symmetric cipher with 128 bits, an asymmetric cipher with 3072 bit keys, and an elliptic curve cipher with 512 bits, all have similar difficulty at present.

Claude Shannon proved, using information theory considerations, that any theoretically unbreakable cipher must have keys which are at least as long as the plaintext, and used only once: one-time pad.


See also

-   Autokey cipher
-   Cover-coding
-   Cryptography Classification
-   Encryption software
-   Famous ciphertexts
-   Steganography
-   Telegraph code


Notes


References

-   Richard J. Aldrich, _GCHQ: The Uncensored Story of Britain's Most Secret Intelligence Agency_, HarperCollins July 2010.
-   Helen Fouché Gaines, "Cryptanalysis", 1939, Dover.
-   Ibrahim A. Al-Kadi, "The origins of cryptology: The Arab contributions", Cryptologia, 16(2) (April 1992) pp. 97–126.
-   David Kahn, _The Codebreakers - The Story of Secret Writing_ () (1967)
-   David A. King, The ciphers of the monks - A forgotten number notation of the Middle Ages, Stuttgart: Franz Steiner, 2001 ()
-   Abraham Sinkov, _Elementary Cryptanalysis: A Mathematical Approach_, Mathematical Association of America, 1966.
-   William Stallings, ''Cryptography and Network Security, principles and practices, 4th Edition
-


External links

-   Kish cypher

Category:Cryptography *

[1] Ibrahim A. Al-Kadi, "Cryptography and Data Security: Cryptographic Properties of Arabic", proceedings of the Third Saudi Engineering Conference. Riyadh, Saudi Arabia: Nov 24-27, Vol 2:910-921., 1991.

[2]

[3] The Muslim next door : the Qur'an, the media, and that veil thing, Sumbul Ali-Karamali, 2008, pp. 240-241

[4]

[5]