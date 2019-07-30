cipher machine]]

CRYPTANALYSIS (from the Greek _kryptós_, "hidden", and _analýein_, "to loosen" or "to untie") is the study of analyzing information systems in order to study the hidden aspects of the systems.[1] Cryptanalysis is used to breach cryptographic security systems and gain access to the contents of encrypted messages, even if the cryptographic key is unknown.

In addition to mathematical analysis of cryptographic algorithms, cryptanalysis includes the study of side-channel attacks that do not target weaknesses in the cryptographic algorithms themselves, but instead exploit weaknesses in their implementation.

Even though the goal has been the same, the methods and techniques of cryptanalysis have changed drastically through the history of cryptography, adapting to increasing cryptographic complexity, ranging from the pen-and-paper methods of the past, through machines like the British Bombes and Colossus computers at Bletchley Park in World War II, to the mathematically advanced computerized schemes of the present. Methods for breaking modern cryptosystems often involve solving carefully constructed problems in pure mathematics, the best-known being integer factorization.


Overview

Given some encrypted data (_"ciphertext"_), the goal of the _cryptanalyst_ is to gain as much information as possible about the original, unencrypted data (_"plaintext"_). It is useful to consider two aspects of achieving this. The first is _breaking_ the system — that is discovering how the encipherment process works. The second is _solving_ the key that is unique for a particular encrypted message or group of messages.

Amount of information available to the attacker

Attacks can be classified based on what type of information the attacker has available. As a basic starting point it is normally assumed that, for the purposes of analysis, the general algorithm is known; this is Shannon's Maxim "the enemy knows the system"[2] — in its turn, equivalent to Kerckhoffs' principle.[3] This is a reasonable assumption in practice — throughout history, there are countless examples of secret algorithms falling into wider knowledge, variously through espionage, betrayal and reverse engineering. (And on occasion, ciphers have been broken through pure deduction; for example, the German Lorenz cipher and the Japanese Purple code, and a variety of classical schemes):[4]

-   _Ciphertext-only_: the cryptanalyst has access only to a collection of ciphertexts or codetexts.
-   _Known-plaintext_: the attacker has a set of ciphertexts to which he knows the corresponding plaintext.
-   _Chosen-plaintext_ (_chosen-ciphertext_): the attacker can obtain the ciphertexts (plaintexts) corresponding to an arbitrary set of plaintexts (ciphertexts) of his own choosing.
-   _Adaptive chosen-plaintext_: like a chosen-plaintext attack, except the attacker can choose subsequent plaintexts based on information learned from previous encryptions. Similarly _Adaptive chosen ciphertext attack_.
-   _Related-key attack_: Like a chosen-plaintext attack, except the attacker can obtain ciphertexts encrypted under two different keys. The keys are unknown, but the relationship between them is known; for example, two keys that differ in the one bit.

Computational resources required

Attacks can also be characterised by the resources they require. Those resources include:[5]

-   Time — the number of _computation steps_ (e.g., test encryptions) which must be performed.
-   Memory — the amount of _storage_ required to perform the attack.
-   Data — the quantity and type of _plaintexts and ciphertexts_ required for a particular approach.

It's sometimes difficult to predict these quantities precisely, especially when the attack isn't practical to actually implement for testing. But academic cryptanalysts tend to provide at least the estimated _order of magnitude_ of their attacks' difficulty, saying, for example, "SHA-1 collisions now 2⁵²."[6]

Bruce Schneier notes that even computationally impractical attacks can be considered breaks: "Breaking a cipher simply means finding a weakness in the cipher that can be exploited with a complexity less than brute force. Never mind that brute-force might require 2¹²⁸ encryptions; an attack requiring 2¹¹⁰ encryptions would be considered a break...simply put, a break can just be a certificational weakness: evidence that the cipher does not perform as advertised."[7]

Partial breaks

The results of cryptanalysis can also vary in usefulness. For example, cryptographer Lars Knudsen (1998) classified various types of attack on block ciphers according to the amount and quality of secret information that was discovered:

-   _Total break_ — the attacker deduces the secret key.
-   _Global deduction_ — the attacker discovers a functionally equivalent algorithm for encryption and decryption, but without learning the key.
-   _Instance (local) deduction_ — the attacker discovers additional plaintexts (or ciphertexts) not previously known.
-   _Information deduction_ — the attacker gains some Shannon information about plaintexts (or ciphertexts) not previously known.
-   _Distinguishing algorithm_ — the attacker can distinguish the cipher from a random permutation.

Academic attacks are often against weakened versions of a cryptosystem, such as a block cipher or hash function with some rounds removed. Many, but not all, attacks become exponentially more difficult to execute as rounds are added to a cryptosystem,[8] so it's possible for the full cryptosystem to be strong even though reduced-round variants are weak. Nonetheless, partial breaks that come close to breaking the original cryptosystem may mean that a full break will follow; the successful attacks on DES, MD5, and SHA-1 were all preceded by attacks on weakened versions.

In academic cryptography, a _weakness_ or a _break_ in a scheme is usually defined quite conservatively: it might require impractical amounts of time, memory, or known plaintexts. It also might require the attacker be able to do things many real-world attackers can't: for example, the attacker may need to choose particular plaintexts to be encrypted or even to ask for plaintexts to be encrypted using several keys related to the secret key. Furthermore, it might only reveal a small amount of information, enough to prove the cryptosystem imperfect but too little to be useful to real-world attackers. Finally, an attack might only apply to a weakened version of cryptographic tools, like a reduced-round block cipher, as a step towards breaking of the full system.[9]


History

.]] Cryptanalysis has coevolved together with cryptography, and the contest can be traced through the history of cryptography—new ciphers being designed to replace old broken designs, and new cryptanalytic techniques invented to crack the improved schemes. In practice, they are viewed as two sides of the same coin: secure cryptography requires design against possible cryptanalysis.

Successful cryptanalysis has undoubtedly influenced history; the ability to read the presumed-secret thoughts and plans of others can be a decisive advantage. For example, in England in 1587, Mary, Queen of Scots was tried and executed for treason as a result of her involvement in three plots to assassinate Elizabeth I of England. The plans came to light after her coded correspondence with fellow conspirators was deciphered by Thomas Phelippes.

In World War I, the breaking of the Zimmermann Telegram was instrumental in bringing the United States into the war. In World War II, the Allies benefitted enormously from their joint success cryptanalysis of the German ciphers — including the Enigma machine and the Lorenz cipher — and Japanese ciphers, particularly 'Purple' and JN-25. 'Ultra' intelligence has been credited with everything between shortening the end of the European war by up to two years, to determining the eventual result. The war in the Pacific was similarly helped by 'Magic' intelligence.[10]

Governments have long recognized the potential benefits of cryptanalysis for intelligence, both military and diplomatic, and established dedicated organizations devoted to breaking the codes and ciphers of other nations, for example, GCHQ and the NSA, organizations which are still very active today. In 2004, it was reported that the United States had broken Iranian ciphers. (It is unknown, however, whether this was pure cryptanalysis, or whether other factors were involved:[11]).

Classical ciphers

's 9th century _Manuscript on Deciphering Cryptographic Messages_]]

Although the actual word "_cryptanalysis_" is relatively recent (it was coined by William Friedman in 1920), methods for breaking codes and ciphers are much older. The first known recorded explanation of cryptanalysis was given by 9th-century Arab[12][13] polymath, Al-Kindi (also known as "Alkindus" in Europe), in _A Manuscript on Deciphering Cryptographic Messages_. This treatise includes a description of the method of frequency analysis (Ibrahim Al-Kadi, 1992- ref-3). Italian scholar Giambattista della Porta was author of a seminal work on cryptanalysis _"De Furtivis Literarum Notis"._[14]

Frequency analysis is the basic tool for breaking most classical ciphers. In natural languages, certain letters of the alphabet appear more often than others; in English, "E" is likely to be the most common letter in any sample of plaintext. Similarly, the digraph "TH" is the most likely pair of letters in English, and so on. Frequency analysis relies on a cipher failing to hide these statistics. For example, in a simple substitution cipher (where each letter is simply replaced with another), the most frequent letter in the ciphertext would be a likely candidate for "E". Frequency analysis of such a cipher is therefore relatively easy, provided that the ciphertext is long enough to give a reasonably representative count of the letters of the alphabet that it contains.[15]

In Europe during the 15th and 16th centuries, the idea of a polyalphabetic substitution cipher was developed, among others by the French diplomat Blaise de Vigenère (1523–96).[16] For some three centuries, the Vigenère cipher, which uses a repeating key to select different encryption alphabets in rotation, was considered to be completely secure (_le chiffre indéchiffrable_—"the indecipherable cipher"). Nevertheless, Charles Babbage (1791–1871) and later, independently, Friedrich Kasiski (1805–81) succeeded in breaking this cipher.[17] During World War I, inventors in several countries developed rotor cipher machines such as Arthur Scherbius' Enigma, in an attempt to minimise the repetition that had been exploited to break the Vigenère system.[18]

Ciphers from World War I and World War II

Cryptanalysis of enemy messages played a significant part in the Allied victory in World War II. F. W. Winterbotham, quoted the western Supreme Allied Commander, Dwight D. Eisenhower, at the war's end as describing Ultra intelligence as having been "decisive" to Allied victory. Sir Harry Hinsley, official historian of British Intelligence in World War II, made a similar assessment about Ultra, saying that it shortened the war "by not less than two years and probably by four years"; moreover, he said that in the absence of Ultra, it is uncertain how the war would have ended.

In practice, frequency analysis relies as much on linguistic knowledge as it does on statistics, but as ciphers became more complex, mathematics became more important in cryptanalysis. This change was particularly evident before and during World War II, where efforts to crack Axis ciphers required new levels of mathematical sophistication. Moreover, automation was first applied to cryptanalysis in that era with the Polish Bomba device, the British Bombe, the use of punched card equipment, and in the Colossus computers — the first electronic digital computers to be controlled by a program.[19][20]

Indicator

With reciprocal machine ciphers such as the Lorenz cipher and the Enigma machine used by Nazi Germany during World War II, each message had its own key. Usually, the transmitting operator informed the receiving operator of this message key by transmitting some plaintext and/or ciphertext before the enciphered message. This is termed the _indicator_, as it indicates to the receiving operator how to set his machine to decipher the message.[21]

Poorly designed and implemented indicator systems allowed first Polish cryptographers[22] and then the British cryptographers at Bletchley Park[23] to break the Enigma cipher system. Similar poor indicator systems allowed the British to identify _depths_ that led to the diagnosis of the Lorenz SZ40/42 cipher system, and the comprehensive breaking of its messages without the cryptanalysts seeing the cipher machine.[24]

Depth

Sending two or more messages with the same key is an insecure process. To a cryptanalyst the messages are then said to be _"in depth."_[25] This may be detected by the messages having the same _indicator_ by which the sending operator informs the receiving operator about the key generator initial settings for the message.[26]

Generally, the cryptanalyst may benefit from lining up identical enciphering operations among a set of messages. For example, the Vernam cipher enciphers by bit-for-bit combining plaintext with a long key using the "exclusive or" operator, which is also known as "modulo-2 addition" (symbolized by ⊕ ):



        Plaintext ⊕ Key = Ciphertext

Deciphering combines the same key bits with the ciphertext to reconstruct the plaintext:



        Ciphertext ⊕ Key = Plaintext

(In modulo-2 arithmetic, addition is the same as subtraction.) When two such ciphertexts are aligned in depth, combining them eliminates the common key, leaving just a combination of the two plaintexts:



        Ciphertext1 ⊕ Ciphertext2 = Plaintext1 ⊕ Plaintext2

The individual plaintexts can then be worked out linguistically by trying _probable words_ (or phrases), also known as _"cribs,"_ at various locations; a correct guess, when combined with the merged plaintext stream, produces intelligible text from the other plaintext component:



        (Plaintext1 ⊕ Plaintext2) ⊕ Plaintext1 = Plaintext2

The recovered fragment of the second plaintext can often be extended in one or both directions, and the extra characters can be combined with the merged plaintext stream to extend the first plaintext. Working back and forth between the two plaintexts, using the intelligibility criterion to check guesses, the analyst may recover much or all of the original plaintexts. (With only two plaintexts in depth, the analyst may not know which one corresponds to which ciphertext, but in practice this is not a large problem.) When a recovered plaintext is then combined with its ciphertext, the key is revealed:



        Plaintext1 ⊕ Ciphertext1 = Key

Knowledge of a key of course allows the analyst to read other messages encrypted with the same key, and knowledge of a set of related keys may allow cryptanalysts to diagnose the system used for constructing them.[27]

Development of modern cryptography

replicated the action of several Enigma machines wired together. Each of the rapidly rotating drums, pictured above in a Bletchley Park museum mockup, simulated the action of an Enigma rotor.]]

Even though computation was used to great effect in Cryptanalysis of the Lorenz cipher and other systems during World War II, it also made possible new methods of cryptography orders of magnitude more complex than ever before. Taken as a whole, modern cryptography has become much more impervious to cryptanalysis than the pen-and-paper systems of the past, and now seems to have the upper hand against pure cryptanalysis. The historian David Kahn notes:

Kahn goes on to mention increased opportunities for interception, bugging, side channel attacks, and quantum computers as replacements for the traditional means of cryptanalysis. In 2010, former NSA technical director Brian Snow said that both academic and government cryptographers are "moving very slowly forward in a mature field."[28]

However, any postmortems for cryptanalysis may be premature. While the effectiveness of cryptanalytic methods employed by intelligence agencies remains unknown, many serious attacks against both academic and practical cryptographic primitives have been published in the modern era of computer cryptography:

-   The block cipher Madryga, proposed in 1984 but not widely used, was found to be susceptible to ciphertext-only attacks in 1998.
-   FEAL-4, proposed as a replacement for the DES standard encryption algorithm but not widely used, was demolished by a spate of attacks from the academic community, many of which are entirely practical.
-   The A5/1, A5/2, CMEA, and DECT systems used in mobile and wireless phone technology can all be broken in hours, minutes or even in real-time using widely available computing equipment.
-   Brute-force keyspace search has broken some real-world ciphers and applications, including single-DES (see EFF DES cracker), 40-bit "export-strength" cryptography, and the DVD Content Scrambling System.
-   In 2001, Wired Equivalent Privacy (WEP), a protocol used to secure Wi-Fi wireless networks, was shown to be breakable in practice because of a weakness in the RC4 cipher and aspects of the WEP design that made related-key attacks practical. WEP was later replaced by Wi-Fi Protected Access.
-   In 2008, researchers conducted a proof-of-concept break of SSL using weaknesses in the MD5 hash function and certificate issuer practices that made it possible to exploit collision attacks on hash functions. The certificate issuers involved changed their practices to prevent the attack from being repeated.

Thus, while the best modern ciphers may be far more resistant to cryptanalysis than the Enigma, cryptanalysis and the broader field of information security remain quite active.[29]


Symmetric ciphers

-   Boomerang attack
-   Brute-force attack
-   Davies' attack
-   Differential cryptanalysis
-   Impossible differential cryptanalysis
-   Improbable differential cryptanalysis
-   Integral cryptanalysis
-   Linear cryptanalysis
-   Meet-in-the-middle attack
-   Mod-n cryptanalysis
-   Related-key attack
-   Sandwich attack
-   Slide attack
-   XSL attack


Asymmetric ciphers

Asymmetric cryptography (or public key cryptography) is cryptography that relies on using two (mathematically related) keys; one private, and one public. Such ciphers invariably rely on "hard" mathematical problems as the basis of their security, so an obvious point of attack is to develop methods for solving the problem. The security of two-key cryptography depends on mathematical questions in a way that single-key cryptography generally does not, and conversely links cryptanalysis to wider mathematical research in a new way.

Asymmetric schemes are designed around the (conjectured) difficulty of solving various mathematical problems. If an improved algorithm can be found to solve the problem, then the system is weakened. For example, the security of the Diffie–Hellman key exchange scheme depends on the difficulty of calculating the discrete logarithm. In 1983, Don Coppersmith found a faster way to find discrete logarithms (in certain groups), and thereby requiring cryptographers to use larger groups (or different types of groups). RSA's security depends (in part) upon the difficulty of integer factorization — a breakthrough in factoring would impact the security of RSA.

In 1980, one could factor a difficult 50-digit number at an expense of 10¹² elementary computer operations. By 1984 the state of the art in factoring algorithms had advanced to a point where a 75-digit number could be factored in 10¹² operations. Advances in computing technology also meant that the operations could be performed much faster, too. Moore's law predicts that computer speeds will continue to increase. Factoring techniques may continue to do so as well, but will most likely depend on mathematical insight and creativity, neither of which has ever been successfully predictable. 150-digit numbers of the kind once used in RSA have been factored. The effort was greater than above, but was not unreasonable on fast modern computers. By the start of the 21st century, 150-digit numbers were no longer considered a large enough key size for RSA. Numbers with several hundred digits were still considered too hard to factor in 2005, though methods will probably continue to improve over time, requiring key size to keep pace or other methods such as elliptic curve cryptography to be used.

Another distinguishing feature of asymmetric schemes is that, unlike attacks on symmetric cryptosystems, any cryptanalysis has the opportunity to make use of knowledge gained from the public key.[30]


Attacking cryptographic hash systems

-   Birthday attack
-   Hash function security summary
-   Rainbow table


Side-channel attacks

-   Black-bag cryptanalysis
-   Man-in-the-middle attack
-   Power analysis
-   Replay attack
-   Rubber-hose cryptanalysis
-   Timing analysis


Quantum computing applications for cryptanalysis

Quantum computers, which are still in the early phases of research, have potential use in cryptanalysis. For example, Shor's Algorithm could factor large numbers in polynomial time, in effect breaking some commonly used forms of public-key encryption.[31]

By using Grover's algorithm on a quantum computer, brute-force key search can be made quadratically faster. However, this could be countered by doubling the key length.[32]


See also

-   Economics of security
-   Global surveillance
-   Information assurance, a term for information security often used in government
-   Information security, the overarching goal of most cryptography
-   National Cipher Challenge
-   Security engineering, the design of applications and protocols
-   Security vulnerability; vulnerabilities can include cryptographic or other flaws
-   Topics in cryptography
-   Zendian Problem

Historic cryptanalysts

-   Conel Hugh O'Donel Alexander
-   Charles Babbage
-   Lambros D. Callimahos
-   Joan Clarke
-   Alastair Denniston
-   Agnes Meyer Driscoll
-   Elizebeth Friedman
-   William F. Friedman
-   Meredith Gardner
-   Friedrich Kasiski
-   Al-Kindi
-   Dilly Knox
-   Solomon Kullback
-   Marian Rejewski
-   Joseph Rochefort, whose contributions affected the outcome of the Battle of Midway
-   Frank Rowlett
-   Abraham Sinkov
-   Giovanni Soro, the Renaissance's first outstanding cryptanalyst
-   John Tiltman
-   Alan Turing
-   William T. Tutte
-   John Wallis - 17th-century English mathematician
-   William Stone Weedon - worked with Fredson Bowers in World War II
-   Herbert Yardley


References

Notes

Bibliography

-   Ibrahim A. Al-Kadi,"The origins of cryptology: The Arab contributions", _Cryptologia_, 16(2) (April 1992) pp. 97–126.
-   Friedrich L. Bauer: "Decrypted Secrets". Springer 2002.
-   -   -   -   -   -   Helen Fouché Gaines, "Cryptanalysis", 1939, Dover.
-   David Kahn, "The Codebreakers - The Story of Secret Writing", 1967.
-   Lars R. Knudsen: Contemporary Block Ciphers. Lectures on Data Security 1998: 105-126
-   -   Abraham Sinkov, _Elementary Cryptanalysis: A Mathematical Approach_, Mathematical Association of America, 1966.
-   Christopher Swenson, Modern Cryptanalysis: Techniques for Advanced Code Breaking,
-   Friedman, William F., Military Cryptanalysis, Part I,
-   Friedman, William F., Military Cryptanalysis, Part II,
-   Friedman, William F., Military Cryptanalysis, Part III, Simpler Varieties of Aperiodic Substitution Systems,
-   Friedman, William F., Military Cryptanalysis, Part IV, Transposition and Fractionating Systems,
-   Friedman, William F. and Lambros D. Callimahos, Military Cryptanalytics, Part I, Volume 1,
-   Friedman, William F. and Lambros D. Callimahos, Military Cryptanalytics, Part I, Volume 2,
-   Friedman, William F. and Lambros D. Callimahos, Military Cryptanalytics, Part II, Volume 1,
-   Friedman, William F. and Lambros D. Callimahos, Military Cryptanalytics, Part II, Volume 2,
-   in

-   -   -   Transcript of a lecture given by Prof. Tutte at the University of Waterloo

-


Further reading

-   -   -   -   -   -   -   -


External links

-   Basic Cryptanalysis (files contain 5 line header, that has to be removed first)
-   Distributed Computing Projects
-   List of tools for cryptanalysis on modern cryptography
-   Simon Singh's crypto corner
-   The National Museum of Computing
-   UltraAnvil tool for attacking simple substitution ciphers
-   How Alan Turing Cracked The Enigma Code Imperial War Museums

Category:Cryptography Category:Cryptographic attacks Category:Applied mathematics Category:Arab inventions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] For an example of an attack that cannot be prevented by additional rounds, see slide attack.

[9]

[10]

[11]

[12] History of Islamic philosophy: With View of Greek Philosophy and Early history of Islam P.199

[13] The Biographical Encyclopedia of Islamic Philosophy P.279

[14] Crypto History

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

[28] Tim Greene, Network World, Former NSA tech chief: I don't trust the cloud . Retrieved March 14, 2010.

[29]

[30]

[31]

[32]