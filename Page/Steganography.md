upright=1.4 STEGANOGRAPHY ( ) is the practice of concealing a file, message, image, or video within another file, message, image, or video. The word _steganography_ combines the Greek words _steganos_ (), meaning "covered, concealed, or protected", and _graphein_ () meaning "writing".

The first recorded use of the term was in 1499 by Johannes Trithemius in his _Steganographia_, a treatise on cryptography and steganography, disguised as a book on magic. Generally, the hidden messages appear to be (or to be part of) something else: images, articles, shopping lists, or some other cover text. For example, the hidden message may be in invisible ink between the visible lines of a private letter. Some implementations of steganography that lack a shared secret are forms of security through obscurity, and key-dependent steganographic schemes adhere to Kerckhoffs's principle.[1]

The advantage of steganography over cryptography alone is that the intended secret message does not attract attention to itself as an object of scrutiny. Plainly visible encrypted messages, no matter how unbreakable they are, arouse interest and may in themselves be incriminating in countries in which encryption is illegal.[2]

Whereas cryptography is the practice of protecting the contents of a message alone, steganography is concerned both with concealing the fact that a secret message is being sent and its contents.

Steganography includes the concealment of information within computer files. In digital steganography, electronic communications may include steganographic coding inside of a transport layer, such as a document file, image file, program or protocol. Media files are ideal for steganographic transmission because of their large size. For example, a sender might start with an innocuous image file and adjust the color of every hundredth pixel to correspond to a letter in the alphabet. The change is so subtle that someone who is not specifically looking for it is unlikely to notice the change.


History

Chart_in_the_hand_of_Dr_John_Dee._Steganographiae.png's _Steganographia_ copied by Dr John Dee in 1591]] The first recorded uses of steganography can be traced back to 440 BC when Herodotus mentions two examples in his _Histories_.[3] Histiaeus sent a message to his vassal, Aristagoras, by shaving the head of his most trusted servant, "marking" the message onto his scalp, then sending him on his way once his hair had regrown, with the instruction, "When thou art come to Miletus, bid Aristagoras shave thy head, and look thereon." Additionally, Demaratus sent a warning about a forthcoming attack to Greece by writing it directly on the wooden backing of a wax tablet before applying its beeswax surface. Wax tablets were in common use then as reusable writing surfaces, sometimes used for shorthand.

In his work _Polygraphiae,_ Johannes Trithemius developed his so-called "Ave-Maria-Cipher" that can hide information in a Latin praise of God. "_Auctor Sapientissimus Conseruans Angelica Deferat Nobis Charitas Potentissimi Creatoris_" for example contains the concealed word _VICIPEDIA_.[4]


Techniques

Steganography_in_the_hand_of_John_Dee.png

Physical

Steganography has been widely used for centuries. Here are some examples:

-   Hidden messages on paper written in secret inks.
-   Hidden messages distributed, according to a certain rule or key, as smaller parts (e.g. words or letters) among other words of a less suspicious covertext. This particular form of steganography is called a null cipher.
-   Messages written in Morse code on yarn and then knitted into a piece of clothing worn by a courier.
-   Messages written on envelopes in the area covered by postage stamps.
-   In the early days of the printing press, it was common to mix different typefaces on a printed page because the printer did not have enough copies of some letters in one typeface. Thus, a message could be hidden by using two or more different typefaces, such as normal or italic.
-   During and after World War II, espionage agents used photographically-produced microdots to send information back and forth. Microdots were typically minute (less than the size of the period produced by a typewriter). World War II microdots were embedded in the paper and covered with an adhesive, such as collodion that was reflective and so was detectable by viewing against glancing light. Alternative techniques included inserting microdots into slits cut into the edge of postcards.
-   During World War II, Velvalee Dickinson, a spy for Japan in New York City, sent information to accommodation addresses in neutral South America. She was a dealer in dolls, and her letters discussed the quantity and type of doll to ship. The stegotext was the doll orders, and the concealed "plaintext" was itself encoded and gave information about ship movements, etc. Her case became somewhat famous and she became known as the Doll Woman.
-   During World War II, photosensitive glass was declared secret, and used for transmitting information to Allied armies.
-   Jeremiah Denton repeatedly blinked his eyes in Morse code during the 1966 televised press conference that he was forced into as an American prisoner-of-war by his North Vietnamese captors, spelling out "T-O-R-T-U-R-E". That confirmed for the first time to the US Naval Intelligence and other Americans that the North Vietnamese were torturing American prisoners-of-war.
-   In 1968, crew members of the USS _Pueblo_ intelligence ship, held as prisoners by North Korea, communicated in sign language during staged photo opportunities, to inform the United States that they were not defectors but captives of the North Koreans. In other photos presented to the US, crew members gave "the finger" to the unsuspecting North Koreans, in an attempt to discredit photos that showed them smiling and comfortable.

Digital messages

Steganography_original.pngs of each color component and a subsequent normalization. The hidden image is shown below.]] Steganography_recovered.png Modern steganography entered the world in 1985 with the advent of personal computers being applied to classical steganography problems.[5] Development following that was very slow, but has since taken off, going by the large number of steganography software available:

-   Concealing messages within the lowest bits of noisy images or sound files. A survey and evaluation of relevant literature/techniques on the topic of digital image steganography can be found here.[6]
-   Concealing data within encrypted data or within random data. The message to conceal is encrypted, then used to overwrite part of a much larger block of encrypted data or a block of random data (an unbreakable cipher like the one-time pad generates ciphertexts that look perfectly random without the private key).
-   Chaffing and winnowing.
-   Mimic functions convert one file to have the statistical profile of another. This can thwart statistical methods that help brute-force attacks identify the right solution in a ciphertext-only attack.
-   Concealed messages in tampered executable files, exploiting redundancy in the targeted instruction set.
-   Pictures embedded in video material (optionally played at slower or faster speed).
-   Injecting imperceptible delays to packets sent over the network from the keyboard. Delays in keypresses in some applications (telnet or remote desktop software) can mean a delay in packets, and the delays in the packets can be used to encode data.
-   Changing the order of elements in a set.
-   Content-Aware Steganography hides information in the semantics a human user assigns to a datagram. These systems offer security against a nonhuman adversary/warden.
-   Blog-Steganography. Messages are fractionalized and the (encrypted) pieces are added as comments of orphaned web-logs (or pin boards on social network platforms). In this case the selection of blogs is the symmetric key that sender and recipient are using; the carrier of the hidden message is the whole blogosphere.
-   Modifying the echo of a sound file (Echo Steganography).[7]
-   Steganography for audio signals.[8]
-   Image bit-plane complexity segmentation steganography
-   Including data in ignored sections of a file, such as after the logical end of the carrier file.
-   Adaptive steganography: Skin tone based steganography using a secret embedding angle.[9]

Digital text

-   Making text the same color as the background in word processor documents, e-mails, and forum posts.
-   Using Unicode characters that look like the standard ASCII character set (the homograph spoofing attack). On most systems, there is no visual difference from ordinary text. Some systems may display the fonts differently, and the extra information would then be easily spotted, of course.
-   Using hidden (control) characters, and redundant use of markup (e.g., empty bold, underline or italics) to embed information within HTML, which is visible by examining the document source. HTML pages can contain code for extra blank spaces and tabs at the end of lines, and colors, fonts and sizes, which are not visible when displayed.
-   Using non-printing Unicode characters Zero-Width Joiner (ZWJ) and Zero-Width Non-Joiner (ZWNJ).[10][11] These characters are used for joining and disjoining letters in Arabic and Persian, but can be used in Roman alphabets for hiding information because they have no meaning in Roman alphabets: because they are "zero-width" they are not displayed. ZWJ and ZWNJ can represent "1" and "0". This may also be done with en space, figure space and whitespace characters.[12]
-   Embedding a secret message in the pattern of deliberate errors and marked corrections in a word processing document, using the word processor's change tracking feature.T. Y. Liu and W. H. Tsai, "A New Steganographic Method for Data Hiding in Microsoft Word Documents by a Change Tracking Technique," in IEEE Transactions on Information Forensics and Security, vol. 2, no. 1, pp. 24-30, March 2007.

doi: 10.1109/TIFS.2006.890310 1

Social steganography

In communities with social or government taboos or censorship, people use cultural steganography—hiding messages in idiom, pop culture references, and other messages they share publicly and assume are monitored. This relies on social context to make the underlying messages visible only to certain readers.[13][14] Examples include:

-   Hiding a message in the title and context of a shared video or image.
-   Misspelling names or words that are popular in the media in a given week, to suggest an alternate meaning.
-   Hiding a picture which can be traced by using Paint or any other drawing tool.

Network

All information hiding techniques that may be used to exchange steganograms in telecommunication networks can be classified under the general term of network steganography. This nomenclature was originally introduced by Krzysztof Szczypiorski in 2003.[15] In 2016, a first network steganography covering book was published by Mazurczyk et al.[16] However, network information hiding was already applied in the late 1980s by Girling[17] and Wolf.[18] Contrary to typical steganographic methods that use digital media (images, audio and video files) to hide data, network steganography uses communication protocols' control elements and their intrinsic functionality. As a result, such methods can be harder to detect and eliminate.[19]

Typical network steganography methods involve modification of the properties of a single network protocol. Such modification can be applied to the PDU (Protocol Data Unit),[20][21][22] to the time relations between the exchanged PDUs,[23] or both (hybrid methods).[24]

Moreover, it is feasible to utilize the relation between two or more different network protocols to enable secret communication. These applications fall under the term inter-protocol steganography.[25] Alternatively, multiple network protocols can be used simultaneously to transfer hidden information and so-called control protocols can be embedded into steganographic communications to extend their capabilities, e.g. to allow dynamic overlay routing or the switching of utilized hiding methods and network protocols.[26][27]

Network steganography covers a broad spectrum of techniques, which include, among others:

-   Steganophony — the concealment of messages in Voice-over-IP conversations, e.g. the employment of delayed or corrupted packets that would normally be ignored by the receiver (this method is called LACK — Lost Audio Packets Steganography), or, alternatively, hiding information in unused header fields.[28]
-   WLAN Steganography – transmission of steganograms in Wireless Local Area Networks. A practical example of WLAN Steganography is the HICCUPS system (Hidden Communication System for Corrupted Networks)[29]

Cyber-physical systems/Internet of Things

Academic work since 2012 demonstrated the feasibility of steganography for cyber-physical systems (CPS)/the Internet of Things (IoT). Some techniques of CPS/IoT steganography overlap with network steganography, i.e. hiding data in communication protocols used in CPS/the IoT. However, specific techniques hide data in CPS components. For instance, data can be stored in unused registers of IoT/CPS components and in the states of IoT/CPS actuators.[30][31]

Printed

Digital steganography output may be in the form of printed documents. A message, the _plaintext_, may be first encrypted by traditional means, producing a _ciphertext_. Then, an innocuous _covertext_ is modified in some way so as to contain the ciphertext, resulting in the _stegotext_. For example, the letter size, spacing, typeface, or other characteristics of a covertext can be manipulated to carry the hidden message. Only a recipient who knows the technique used can recover the message and then decrypt it. Francis Bacon developed Bacon's cipher as such a technique.

The ciphertext produced by most digital steganography methods, however, is not printable. Traditional digital methods rely on perturbing noise in the channel file to hide the message, and as such, the channel file must be transmitted to the recipient with no additional noise from the transmission. Printing introduces much noise in the ciphertext, generally rendering the message unrecoverable. There are techniques that address this limitation, one notable example being ASCII Art Steganography.[32]

HP_Color_Laserjet_3700_schutz_g.jpg Although not classic steganography, some types of modern color laser printers integrate the model, serial number and timestamps on each printout for traceability reasons using a dot-matrix code made of small, yellow dots not recognizable to the naked eye — see printer steganography for details.

Using puzzles

The art of concealing data in a puzzle can take advantage of the degrees of freedom in stating the puzzle, using the starting information to encode a key within the puzzle / puzzle image.

For instance, steganography using sudoku puzzles has as many keys as there are possible solutions of a sudoku puzzle, which is .[33]


Additional terminology

Discussions of steganography generally use terminology analogous to and consistent with conventional radio and communications technology. However, some terms appear specifically in software and are easily confused. These are the most relevant ones to digital steganographic systems:

The _payload_ is the data covertly communicated. The _carrier_ is the signal, stream, or data file that hides the payload, which differs from the _channel_, which typically means the type of input, such as a JPEG image. The resulting signal, stream, or data file with the encoded payload is sometimes called the _package_, _stego file_, or _covert message_. The proportion of bytes, samples, or other signal elements modified to encode the payload is called the _encoding density_ and is typically expressed as a number between 0 and 1.

In a set of files, the files that are considered likely to contain a payload are _suspects_. A _suspect_ identified through some type of statistical analysis can be referred to as a _candidate_.


Countermeasures and detection

Detecting physical steganography requires careful physical examination, including the use of magnification, developer chemicals and ultraviolet light. It is a time-consuming process with obvious resource implications, even in countries that employ many people to spy on their fellow nationals. However, it is feasible to screen mail of certain suspected individuals or institutions, such as prisons or prisoner-of-war (POW) camps.

During World War II, prisoner of war camps gave prisoners specially-treated paper that would reveal invisible ink. An article in the 24 June 1948 issue of _Paper Trade Journal_ by the Technical Director of the United States Government Printing Office had Morris S. Kantrowitz describe in general terms the development of this paper. Three prototype papers (_Sensicoat_, _Anilith_, and _Coatalith_) were used to manufacture postcards and stationery provided to German prisoners of war in the US and Canada. If POWs tried to write a hidden message, the special paper rendered it visible. The US granted at least two patents related to the technology, one to Kantrowitz, , "Water-Detecting paper and Water-Detecting Coating Composition Therefor," patented 18 July 1950, and an earlier one, "Moisture-Sensitive Paper and the Manufacture Thereof," , patented 20 July 1948. A similar strategy issues prisoners with writing paper ruled with a water-soluble ink that runs in contact with water-based invisible ink.

In computing, steganographically encoded package detection is called steganalysis. The simplest method to detect modified files, however, is to compare them to known originals. For example, to detect information being moved through the graphics on a website, an analyst can maintain known clean copies of the materials and then compare them against the current contents of the site. The differences, if the carrier is the same, comprise the payload. In general, using extremely high compression rates makes steganography difficult but not impossible. Compression errors provide a hiding place for data, but high compression reduces the amount of data available to hold the payload, raising the encoding density, which facilitates easier detection (in extreme cases, even by casual observation).

There are a variety of basic tests that can be done to identify whether or not a secret message exists. This process is not concerned with the extraction of the message, which is a different process and a separate step. The most basic approaches of steganalysis are visual or aural attacks, structural attacks, and statistical attacks. These approaches attempt to detect the steganographic algorithms that were used.[34] These algorithms range from unsophisticated to very sophisticated, with early algorithms being much easier to detect due to statistical anomalies that were present. The size of the message that is being hidden is a factor in how difficult it is to detect. The overall size of the cover object also plays a factor as well. If the cover object is small and the message is large, this can distort the statistics and make it easier to detect. A larger cover object with a small message decreases the statistics and gives it a better chance of going unnoticed.

Steganalysis that targets a particular algorithm has much better success as it is able to key in on the anomalies that are left behind. This is because the analysis can perform a targeted search to discover known tendencies since it is aware of the behaviors that it commonly exhibits. When analyzing an image the least significant bits of many images are actually not random. The camera sensor, especially lower end sensors are not the best quality and can introduce some random bits. This can also be affected by the file compression done on the image. Secret messages can be introduced into the least significant bits in an image and then hidden. A steganography tool can be used to camouflage the secret message in the least significant bits but it can introduce a random area that is too perfect. This area of perfect randomization stands out and can be detected by comparing the least significant bits to the next-to-least significant bits on image that hasn't been compressed.[35]

Generally though, there are many techniques known to be able to hide messages in data using steganographic techniques. None are, by definition, obvious when users employ standard applications, but some can be detected by specialist tools. Others, however, are resistant to detection - or rather it is not possible to reliably distinguish data containing a hidden message from data containing just noise - even when the most sophisticated analysis is performed. Steganography is being used to hide cyber attacks, referred to as _Stegware_, and detection is therefore not an adequate defence. The only way of defeating the threat is to transform data in a way that destroys any hidden messages,[36] a process called Content Threat Removal.


Applications

Use in modern printers

Some modern computer printers use steganography, including Hewlett-Packard and Xerox brand color laser printers. The printers add tiny yellow dots to each page. The barely-visible dots contain encoded printer serial numbers and date and time stamps.[37]

Example from modern practice

The larger the cover message (in binary data, the number of bits) relative to the hidden message, the easier it is to hide the hidden message so digital pictures, which contain much data, are used to hide messages on the Internet and on other communication media. It is not clear how common this practice actually is.

For example, a 24-bit bitmap uses 8 bits to represent each of the three color values (red, green, and blue) of each pixel. The blue alone has 2⁸ different levels of blue intensity. The difference between 11111111 and 11111110 in the value for blue intensity is likely to be undetectable by the human eye. Therefore, the least significant bit can be used more or less undetectably for something else other than color information. If that is repeated for the green and the red elements of each pixel as well, it is possible to encode one letter of ASCII text for every three pixels.

Stated somewhat more formally, the objective for making steganographic encoding difficult to detect is to ensure that the changes to the carrier (the original signal) because of the injection of the payload (the signal to covertly embed) are visually (and ideally, statistically) negligible. The changes are indistinguishable from the noise floor of the carrier. All media can be a carrier, but media with a large amount of redundant or compressible information is better suited.

From an information theoretical point of view, that means that the channel must have more capacity than the "surface" signal requires. There must be redundancy. For a digital image, it may be noise from the imaging element; for digital audio, it may be noise from recording techniques or amplification equipment. In general, electronics that digitize an analog signal suffer from several noise sources, such as thermal noise, flicker noise, and shot noise. The noise provides enough variation in the captured digital information that it can be exploited as a noise cover for hidden data. In addition, lossy compression schemes (such as JPEG) always introduce some error to the decompressed data, and it is possible to exploit that for steganographic use, as well.

Although steganography and digital watermarking seem similar, they are not. In steganography, the hidden message should remain intact until it reaches its destination. Steganography can be used for digital watermarking in which a message (being simply an identifier) is hidden in an image so that its source can be tracked or verified (for example, Coded Anti-Piracy) or even just to identify an image (as in the EURion constellation). In such a case, the technique of hiding the message (here, the watermark) must be robust to prevent tampering. However, digital watermarking sometimes requires a brittle watermark, which can be modified easily, to check whether the image has been tampered with. That is the key difference between steganography and digital watermarking.

Alleged use by intelligence services

In 2010, the Federal Bureau of Investigation alleged that the Russian foreign intelligence service uses customized steganography software for embedding encrypted text messages inside image files for certain communications with "illegal agents" (agents without diplomatic cover) stationed abroad.[38]

Distributed steganography

There are distributed steganography methods,[39] including methodologies that distribute the payload through multiple carrier files in diverse locations to make detection more difficult. For example, by cryptographer William Easttom (Chuck Easttom).

Online challenge

The puzzles that are presented by Cicada 3301 incorporate steganography with cryptography and other solving techniques since 2012.[40] As time goes on, more instigates that include steganography have been present in ARGs.

The communications[41][42] of The Mayday Mystery incorporate steganography and other solving techniques since 1981.[43]


See also

-   Acrostic
-   BPCS-Steganography
-   Camera/Shy
-   Canary trap
-   Covert channel
-   Cryptography
-   Deniable encryption
-   Digital watermarking

-   Invisible ink
-   Polybius square
-   Security engineering
-   Semiotics
-   Steganographic file system
-   Steganography tools
-   Audio watermark
-   Security printing


References


Sources

-   -   -   -   -


External links

-   OpenStego, a free open-source steganography software for all operating systems.
-   An overview of digital steganography, particularly within images, for the computationally curious by Chris League, Long Island University, 2015
-   Outguess, free steganography software for OS X.
-   -   Examples showing images hidden in other images
-   Information Hiding: Steganography & Digital Watermarking. Papers and information about steganography and steganalysis research from 1995 to the present. Includes Steganography Software Wiki list. Dr. Neil F. Johnson.
-   Detecting Steganographic Content on the Internet. 2002 paper by Niels Provos and Peter Honeyman published in _Proceedings of the Network and Distributed System Security Symposium_ (San Diego, CA, February 6–8, 2002). NDSS 2002. Internet Society, Washington, D.C.
-   Covert Channels in the TCP/IP Suite—1996 paper by Craig Rowland detailing the hiding of data in TCP/IP packets.
-   Network Steganography Centre Tutorials. How-to articles on the subject of network steganography (Wireless LANs, VoIP - Steganophony, TCP/IP protocols and mechanisms, Steganographic Router, Inter-protocol steganography). By Krzysztof Szczypiorski and Wojciech Mazurczyk from Network Security Group.
-   Invitation to BPCS-Steganography.
-   Steganography by Michael T. Raggo, DefCon 12 (1 August 2004)
-   File Format Extension Through Steganography by Blake W. Ford and Khosrow Kaikhah
-   Computer steganography. Theory and practice with Mathcad (Rus) 2006 paper by Konakhovich G. F., Puzyrenko A. Yu. published in _MK-Press_ Kyiv, Ukraine

Steganography Category:Espionage techniques

[1]

[2]

[3]

[4]

[5] The origin of Modern Steganography

[6]

[7] Echo Data Hiding

[8] Secure Steganography for Audio Signals

[9]

[10]

[11]

[12]

[13] Social Steganography: how teens smuggle meaning past the authority figures in their lives, Boing Boing, May 22, 2013. Retrieved June 7, 2014.

[14] Social Steganography, Scenario Magazine, 2013.

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

[34] Wayner, Peter (2009). _Disappearing Cryptography: Information Hiding : Steganography & Watermarking_, . Morgan Kaufmann Publishers, Amsterdam;Boston.

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]