A PUNCHED CARD or PUNCH CARD is a piece of stiff paper that can be used to contain digital data represented by the presence or absence of holes in predefined positions. Digital data can be used for data processing applications or, in earlier examples, used to directly control automated machinery.

Punched cards were widely used through much of the 20th century in the data processing industry, where specialized and increasingly complex unit record machines, organized into semiautomatic data processing systems, used punched cards for data input, output, and storage.[1][2] Many early digital computers used punched cards, often prepared using keypunch machines, as the primary medium for input of both computer programs and data.

While punched cards are now obsolete as a storage medium, as of 2012, some voting machines still use punched cards to record votes.[3]

Used_Punchcard_(5151286161).jpg Jacquard.loom.cards.jpg


History

Basile Bouchon developed the control of a loom by punched holes in paper tape in 1725. The design was improved by his assistant Jean-Baptiste Falcon and by Jacques Vaucanson.[4] Although these improvements controlled the patterns woven, they still required an assistant to operate the mechanism. In 1804 Joseph Marie Jacquard demonstrated a mechanism to automate loom operation. A number of punched cards were linked into a chain of any length. Each card held the instructions for shedding (raising and lowering the warp) and selecting the shuttle for a single pass. It is considered an important step in the history of computing hardware.[5]

DMM_29263ab_Jacquardwebstuhl.jpg Semyon Korsakov was reputedly the first to propose punched cards in informatics for information store and search. Korsakov announced his new method and machines in September 1832.[6]

Charles Babbage proposed the use of "Number Cards", "pierced with certain holes and stand opposite levers connected with a set of figure wheels ... advanced they push in those levers opposite to which there are no holes on the cards and thus transfer that number together with its sign" in his description of the Calculating Engine's Store.[7]

In 1881 Jules Carpentier developed a method of recording and playing back performances on a harmonium using punched cards. The system was called the _Mélographe Répétiteur_ and “writes down ordinary music played on the keyboard dans la langage de Jacquard”,[8] that is as holes punched in a series of cards. By 1887 Carpentier had separated the mechanism into the _Melograph_ which recorded the player's key presses and the _Melotrope_ which played the music.[9][10]

At the end of the 1800s Herman Hollerith invented the recording of data on a medium that could then be read by a machine. "After some initial trials with paper tape, he settled on punched cards...", developing punched card data processing technology for the 1890 US census.[11] His tabulating machines read and summarized data stored on punched cards and they began use for government and commercial data processing. Initially, these electromechanical machines only counted holes, but by the 1920s they had units for carrying out basic arithmetic operations.[12]

Hollerith founded the _Tabulating Machine Company_ (1896) which was one of four companies that were amalgamated (via stock acquisition) to form a fifth company, Computing-Tabulating-Recording Company (CTR) (1911), later renamed International Business Machines Corporation (IBM) (1924). Other companies entering the punched card business included The Tabulator Limited (1902) (later renamed the British Tabulating Machine Company), Deutsche Hollerith-Maschinen Gesellschaft mbH (Dehomag) (1911), Powers Accounting Machine Company (1911), Remington Rand (1927), and H.W. Egli Bull (1931).[13] These companies, and others, manufactured and marketed a variety of punched cards and unit record machines for creating, sorting, and tabulating punched cards, even after the development of electronic computers in the 1950s.

Both IBM and Remington Rand tied punched card purchases to machine leases, a violation of the 1914 Clayton Antitrust Act. In 1932, the US government took both to court on this issue. Remington Rand settled quickly. IBM viewed its business as providing a service and that the cards were part of the machine. IBM fought all the way to the Supreme Court and lost in 1936; the court ruling that IBM could only set card specifications.[14][15]

"By 1937... IBM had 32 presses at work in Endicott, N.Y., printing, cutting and stacking five to 10 million punched cards every day."[16] Punched cards were even used as legal documents, such as U.S. Government checks[17] and savings bonds.[18]

During World War II punched card equipment was used by the Allies in some of their efforts to decrypt Axis communications. See, for example, Central Bureau in Australia. At Bletchley Park in England, 2,000,000 punched cards were used each week for storing decrypted German messages.[19]

Punched card technology developed into a powerful tool for business data-processing. By 1950 punched cards had become ubiquitous in industry and government. "Do not fold, spindle or mutilate," a generalized version of the warning that appeared on some punched cards (generally on those distributed as paper documents to be later returned for further machine processing, such as checks and utility bills), became a motto for the post-World War II era.[20] [21]

In 1955 IBM signed a consent decree requiring, amongst other things, that IBM would by 1962 have no more than one-half of the punched card manufacturing capacity in the United States. Tom Watson Jr.'s decision to sign this decree, where IBM saw the punched card provisions as the most significant point, completed the transfer of power to him from Thomas Watson, Sr.[22]

The UNITYPER introduced magnetic tape for data entry in the 1950s. During the 1960s, the punched card was gradually replaced as the primary means for data storage by magnetic tape, as better, more capable computers became available. Mohawk Data Sciences introduced a magnetic tape encoder in 1965, a system marketed as a keypunch replacement which was somewhat successful. Punched cards were still commonly used for entering both data and computer programs until the mid-1980s when the combination of lower cost magnetic disk storage, and affordable interactive terminals on less expensive minicomputers made punched cards obsolete for these roles as well.[23] However, their influence lives on through many standard conventions and file formats. The terminals that replaced the punched cards, the IBM 3270 for example, displayed 80 columns of text in text mode, for compatibility with existing software. Some programs still operate on the convention of 80 text columns, although fewer and fewer do as newer systems employ graphical user interfaces with variable-width type fonts.


Nomenclature

Punched_card_program_deck.agr.jpg The terms _punched card_, _punch card_, and _punchcard_ were all commonly used, as were _IBM card_ and _Hollerith card_ (after Herman Hollerith).[24] IBM used "IBM card" or, later, "punched card" at first mention in its documentation and thereafter simply "card" or "cards".[25][26] Specific formats were often indicated by the number of character positions available, e.g. _80-column card_. A sequence of cards that is input to or output from some step in an application's processing is called a _card deck_ or simply _deck_. The rectangular, round, or oval bits of paper punched out were called chad (_chads_) or _chips_ (in IBM usage). Sequential card columns allocated for a specific use, such as names, addresses, multi-digit numbers, etc., are known as a _field_. The first card of a group of cards, containing fixed or indicative information for that group, is known as a _master card_. Cards that are not master cards are _detail cards_.


Card formats

The Hollerith punched cards used for the US 1890 census were blank.[27] Following that, cards commonly had printing such that the row and column position of a hole could be easily seen. Printing could include having fields named and marked by vertical lines, logos, and more.[28] "General purpose" layouts (see, for example, the IBM 5081 below) were also available. For applications requiring master cards to be separated from following detail cards, the respective cards had different upper corner diagonal cuts and thus could be separated by a sorter.[29] Other cards typically had one upper corner diagonal cut so that cards not oriented correctly, or cards with different corner cuts, could be identified.

Hollerith's early punched card formats

Hollerith_punched_card.jpg'' in 1895, with 12 rows and 24 columns.[30]]] Herman Hollerith was awarded a series of patents[31] in 1889 for electromechanical tabulating machines. These patents described both paper tape and rectangular cards as possible recording media. The card shown in of January 8 was printed with a template and had hole positions arranged close to the edges so they could be reached by a railroad conductor's ticket punch, with the center reserved for written descriptions. Hollerith was originally inspired by railroad tickets that let the conductor encode a rough description of the passenger:

    "I was traveling in the West and I had a ticket with what I think was called a punch photograph...the conductor...punched out a description of the individual, as light hair, dark eyes, large nose, etc. So you see, I only made a punch photograph of each person."[32]

When use of the ticket punch proved tiring and error prone Hollerith developed the pantograph "keyboard punch". It featured an enlarged diagram of the card, indicating the positions of the holes to be punched. A printed reading board could be placed under a card that was to be read manually.[33]

Hollerith envisioned a number of card sizes. In an article he wrote describing his proposed system for tabulating the 1890 U.S. Census, Hollerith suggested a card 3 inches by 5½ inches of Manila stock "would be sufficient to answer all ordinary purposes."[34] The cards used in the 1890 census had round holes, 12 rows and 24 columns. A reading board for these cards can be seen at the Columbia University Computing History site.[35] At some point, became the standard card size. These are the dimensions of the then current paper currency of 1862–1923.[36]

Hollerith's original system used an ad-hoc coding system for each application, with groups of holes assigned specific meanings, e.g. sex or marital status. His tabulating machine had up to 40 counters, each with a dial divided into 100 divisions, with two indicator hands; one which stepped one unit with each counting pulse, the other which advanced one unit every time the other dial made a complete revolution. This arrangement allowed a count up to 9,999. During a given tabulating run counters were assigned specific holes or, using relay logic, combination of holes.[37]

Later designs led to a card with ten rows, each row assigned a digit value, 0 through 9, and 45 columns.[38] This card provided for fields to record multi-digit numbers that tabulators could sum, instead of their simply counting cards. Hollerith's 45 column punched cards are illustrated in Comrie's _The application of the Hollerith Tabulating Machine to Brown's Tables of the Moon_.[39][40]

IBM 80-column punched card format and character codes

FortranCardPROJ039.agr.jpg program: Z(1) = Y + W(1), plus sorting information in the last 8 columns.]] By the late 1920s customers wanted to store more data on each punched card. Thomas J. Watson Sr., IBM’s head, asked two of his top inventors, Clair D. Lake and J. Royden Pierce, to independently develop ways to increase data capacity without increasing the size of the punched card. Pierce wanted to keep round holes and 45 columns, but allow each column to store more data. Lake suggested rectangular holes, which could be spaced more tightly, allowing 80 columns per punched card, thereby nearly doubling the capacity of the older format.[41] Watson picked the latter solution, introduced as _The IBM Computer Card,_ in part because it was compatible with existing tabulator designs and in part because it could be protected by patents and give the company a distinctive advantage.[42]

This IBM card format, introduced in 1928,[43] has rectangular holes, 80 columns, and 12 rows. Card size is exactly by inches (187.325 mm × 82.55 mm). The cards are made of smooth stock, thick. There are about 143 cards to the inch ({{#expr:143/2.54round0}}/cm). In 1964, IBM changed from square to round corners.[44] They come typically in boxes of 2000 cards[45] or as continuous form cards. Continuous form cards could be both pre-numbered and pre-punched for document control (checks, for example).[46]

Initially designed to record responses to Yes–no questions, support for numeric, alphabetic and special characters was added through the use of columns and zones. The top three positions of a column are called ZONE PUNCHING POSITIONS, 12 (top), 11, and 0 (0 may be either a zone punch or a digit punch).[47] For decimal data the lower ten positions are called DIGIT PUNCHING POSITIONS, 0 (top) through 9.[48] An arithmetic sign can be specified for a decimal field by OVERPUNCHING the field's rightmost column with a zone punch: 12 for plus, 11 for minus (CR). For Pound sterling pre-decimalization currency a penny column represents the values zero through eleven; 10 (top), 11, then 0 through 9 as above. An arithmetic sign can be punched in the adjacent shilling column.[49] Zone punches had other uses in processing, such as indicating a master card.[50] Blue-punch-card-front-horiz.png punched card of the type most widely used in the 20th century.]]

         ______________________________________________
        /&-0123456789ABCDEFGHIJKLMNOPQR/STUVWXYZ
    12|  x           xxxxxxxxx
    11|   x                   xxxxxxxxx
     0|    x                           xxxxxxxxx
     1|     x        x        x        x
     2|      x        x        x        x
     3|       x        x        x        x
     4|        x        x        x        x
     5|         x        x        x        x
     6|          x        x        x        x
     7|           x        x        x        x
     8|            x        x        x        x
     9|             x        x        x        x
      |________________________________________________

　Reference:[51] Note: The 11 and 12 zones were also called the X and Y zones, respectively.

In 1931 IBM began introducing upper-case letters and special characters (Powers-Samas had developed the first commercial alphabetic punched card representation in 1921).[52][53][54] The 26 letters have two punches (zone [12,11,0] + digit [1–9]). The languages of Germany, Sweden, Denmark, Norway, Spain, Portugal and Finland require up to three additional letters; their punching is not shown here.[55] Most special characters have two or three punches (zone [12,11,0, or none] + digit [2–7] + 8); a few special characters were exceptions: "&" is 12 only, "-" is 11 only, and "/" is 0 + 1). The Space character has no punches.[56] The information represented in a column by a combination of zones [12, 11, 0] and digits [0–9] is dependent on the use of that column. For example, the combination "12-1" is the letter "A" in an alphabetic column, a plus signed digit "1" in a signed numeric column, or an unsigned digit "1" in a column where the "12" has some other use. The introduction of EBCDIC in 1964 defined columns with as many as six punches (zones [12,11,0,8,9] + digit [1–7]). IBM and other manufacturers used many different 80-column card character encodings.

  

  

A 1969 American National Standard defined the punches for 128 characters and was named the _Hollerith Punched Card Code_ (often referred to simply as _Hollerith Card Code_), honoring Hollerith.[57]

IBM1130CopyCard.agr.jpg punched card.]] For some computer applications, binary formats were used, where each hole represented a single binary digit (or "bit"), every column (or row) is treated as a simple bit field, and every combination of holes is permitted.

For example, on the IBM 701[58] and IBM 704,[59] card data was read into memory in row binary format. For each of the twelve rows of the card, 72 of the 80 columns would be read into two 36-bit words; a control panel was used to select the 72 columns to be read. Software would translate this data into the desired form. One convention was to use columns 1 through 72 for data, and columns 73 through 80 to sequentially number the cards, as shown in the picture above of a punched card for FORTRAN. Such numbered cards could be sorted by machine so that if a deck was dropped the sorting machine could be used to arrange it back in order. This convention continued to be used in FORTRAN, even in later systems where the data in all 80 columns could be read.

IBM_lace_card.jpg As a prank, in binary mode, punched cards could be made where every possible punch position had a hole. Such "lace cards" lacked structural strength, and would frequently buckle and jam inside the machine.[60]

The IBM 80-column punched card format dominated the industry, becoming known as just IBM CARDS, even though other companies made cards and equipment to process them.[61]

Punch-card-5081.jpg One of the most common punched card formats is the IBM 5081 card format, a general purpose layout with no field divisions. This format has digits printed on it corresponding to the punch positions of the digits in each of the 80 columns. Other punched card vendors manufactured cards with this same layout and number.

IBM _Stub card_ or _Short card_ formats

The 80-column card could be scored, on either end, creating a stub that could be torn off, leaving a _stub card_ or _short card_.[62] A common length for stub cards was 51 columns. Stub cards were used in applications requiring tags, labels, or carbon copies.[63]

IBM 40-column Port-A-Punch card format

IBM_Port-A-Punch.jpg FORTRAN_Port-A-Punch_card._Compiler_directive_"SQUEEZE"_removed_the_alternating_blank_columns_from_the_input._Godfrey_Manning..jpg System_3_punch_card.jpg According to the IBM Archive: _IBM's Supplies Division introduced the Port-A-Punch in 1958 as a fast, accurate means of manually punching holes in specially scored IBM punched cards. Designed to fit in the pocket, Port-A-Punch made it possible to create punched card documents anywhere. The product was intended for "on-the-spot" recording operations—such as physical inventories, job tickets and statistical surveys—because it eliminated the need for preliminary writing or typing of source documents._[64]

IBM 96-column punched card format

In the late 1960s, IBM introduced a new, smaller, round-hole, 96-column card format along with the IBM System/3 computer. These cards have tiny (1 mm), circular holes, smaller than those in paper tape. Data is stored in 6-bit BCD, with three rows of 32 characters each, or 8-bit EBCDIC. In this format, each column of the top tiers are combined with two punch rows from the bottom tier to form an 8-bit byte, and the middle tier is combined with two more punch rows, so that each card contains 64 bytes of 8-bit-per-byte binary coded data.[65]

Powers/Remington Rand UNIVAC 90-column punched card format

RemingtonRandCard.agr.jpg UNIVAC format card. Card courtesy of MIT Museum.]] Remington_Rand_punched_card.mw.jpg

The Powers/Remington Rand card format was initially the same as Hollerith's; 45 columns and round holes. In 1930, Remington Rand leap-frogged IBM's 80 column format from 1928 by coding two characters in each of the 45 columns – producing what is now commonly called the 90-column card.[66] There are two sets of six rows across each card. The rows in each set are labeled 0, 1/2, 3/4, 5/6, 7/8 and 9. The even numbers in a pair are formed by combining that punch with a 9 punch. Alphabetic and special characters use 3 or more punches.[67][68]

Powers-Samas punched card formats

The Powers-Samas card formats began with 45 columns and round holes. Later 36, 40 and 65 column cards were provided. A 130 column card was also available - formed by dividing the card into two rows, each row with 65 columns and each character space with 5 punch positions. A 21 column card was comparable to the IBM Stub card.[69]

Mark sense card format

HP_Educational_Basic_optical_mark-reader_card._Godfrey_Manning..jpg

-   Mark sense (electrographic) cards, developed by Reynold B. Johnson at IBM,[70] have printed ovals that could be marked with a special electrographic pencil. Cards would typically be punched with some initial information, such as the name and location of an inventory item. Information to be added, such as quantity of the item on hand, would be marked in the ovals. Card punches with an option to detect mark sense cards could then punch the corresponding information into the card.

Aperture card format

Aperture_card.JPG]]

-   Aperture cards have a cut-out hole on the right side of the punched card. A 35 mm microfilm chip containing a microform image is mounted in the hole. Aperture cards are used for engineering drawings from all engineering disciplines. Information about the drawing, for example the drawing number, is typically punched and printed on the remainder of the card.


IBM punched card manufacturing

IBM's Fred M. Carroll[71] developed a series of rotary presses that were used to produce punched cards, including a 1921 model that operated at 460 cards per minute (cpm). In 1936 he introduced a completely different press that operated at 850 cpm.[72][73] Carroll's high-speed press, containing a printing cylinder, revolutionized the company's manufacturing of punched cards.[74] It is estimated that between 1930 and 1950, the Carroll press accounted for as much as 25 percent of the company's profits.[75]

Unused_punch_card_from_UIC.jpg PunchedCardPrintingPlate.agr.jpg Discarded printing plates from these card presses, each printing plate the size of an IBM card and formed into a cylinder, often found use as desk pen/pencil holders, and even today are collectible IBM artifacts (every card layout[76] had its own printing plate).

Pricing

Punched cards were not inexpensive: a 1996 Look-back found prices as high as $42 for a box of 2,000 punched cards.[77]


Cultural impact

US_Savings_Bond_EE_$75.png IBM_card_storage.NARA.jpg facility in 1959. Each carton could hold 2,000 cards.]]

While punched cards have not been widely used for a generation, the impact was so great for most of the 20th century that they still appear from time to time in popular culture. For example:

-   Artist and architect Maya Lin in 2004 designed a public art installation at Ohio University, titled "Input", that looks like a punched card from the air.[78]
-   Tucker Hall at the University of Missouri - Columbia features architecture that is reportedly influenced by punched cards. It is said that the spacing and pattern of the windows on the building will spell out “M-I-Z beat k-U!” on a punched card, making reference to the University and state's rivalry with neighboring state Kansas.[79]
-   At the University of Wisconsin - Madison, the exterior windows of the Engineering Research Building[80] were modeled after a punched card layout, during its construction in 1966.
-   At the University of North Dakota in Grand Forks, a portion of the exterior of Gamble Hall (College of Business and Public Administration), has a series of light-colored bricks that resembles a punched card spelling out "University of North Dakota."[81]
-   In the _Simpsons_ episode "Much Apu About Nothing", Apu showed Bart his PhD thesis, the world's first computer tic-tac-toe game, stored in a box full of punched cards.
-   In the _Futurama_ episode "Mother's Day", as several robots are seen shouting 'Hey hey! Hey ho! 1100110!' in protest, one of them burns a punch card in a manner reminiscent of draft-card burning. In another episode, _Put Your Head on My Shoulders,_ Bender offers a dating service. He hands characters punch cards so they can put in what they want, before throwing them in his chest cabinet and 'calculating' the 'match' for the person. Bender is shown 'folding', 'bending', and 'mutilating' the punched card, accentuating the fact that he is making up the 'calculations'.
-   In the 1964–65 Free Speech Movement, punched cards became a

  metaphor... symbol of the "system"—first the registration system and then bureaucratic systems more generally ... a symbol of alienation ... Punched cards were the symbol of information machines, and so they became the symbolic point of attack. Punched cards, used for class registration, were first and foremost a symbol of uniformity. .... A student might feel "he is one of out of 27,500 IBM cards" ... The president of the Undergraduate Association criticized the University as "a machine ... IBM pattern of education."... Robert Blaumer explicated the symbolism: he referred to the "sense of impersonality... symbolized by the IBM technology."... ––Steven Lubar[82]

-   A legacy of the 80 column punched card format is that a display of 80 characters per row was a common choice in the design of character-based terminals. As of September 2014, some character interface defaults, such as the command prompt window's width in Microsoft Windows, remain set at 80 columns and some file formats, such as FITS, still use 80-character card images.
-   In Arthur C. Clarke's early short story "Rescue Party", the alien explorers find a "... wonderful battery of almost human Hollerith analyzers and the five thousand million punched cards holding all that could be recorded on each man, woman and child on the planet".[83] Writing in 1946, Clarke, like almost all sci-fi authors, had not then foreseen the development and eventual ubiquity of the computer.
-   The Man Whose Name Wouldn't Fit: a book by Theodore Tyler[84]
-   Popular magazines featured instructions for a Christmas wreath made from punched cards.[85]

Do Not Fold, Spindle or Mutilate

Warnings were often printed on punched cards that were to be individually handled, especially those intended for the public to use and return, and were at one point commonly labelled with the words "Do Not Fold, Spindle or Mutilate".[86] Coined by Charles A. Phillips,[87] it became a motto[88] for the post-World War II era (even though many people had no idea what spindle meant), and was widely mocked and satirized. Some 1960s students at Berkeley wore buttons saying: "Do not fold, spindle or mutilate. I am a student".[89] The motto was also used for a 1970 book by Doris Miles Disney[90] with a plot based around an early computer dating service and a 1971 made-for-TV movie based on that book.


Standards

-   ANSI INCITS 21-1967 (R2002), _Rectangular Holes in Twelve-Row Punched Cards_ (formerly ANSI X3.21-1967 (R1997)) Specifies the size and location of rectangular holes in twelve-row punched cards.
-   ANSI X3.11 – 1990 _American National Standard Specifications for General Purpose Paper Cards for Information Processing_
-   ANSI X3.26 – 1980/R1991) _Hollerith Punched Card Code_
-   ISO 1681:1973 _Information processing – Unpunched paper cards – Specification_
-   ISO 6586:1980 _Data processing – Implementation of the ISO 7- bit and 8- bit coded character sets on punched cards_. Defines ISO 7-bit and 8-bit character sets on punched cards as well as the representation of 7-bit and 8-bit combinations on 12-row punched cards. Derived from, and compatible with, the Hollerith Code, ensuring compatibility with existing punched card files.


Punched card machines

Processing of punched cards was handled by a variety of machines, including:

-   Keypunches — machines with a keyboard that punch cards from operator entered data.
-   Unit record equipment — machines that process data on punched cards. Employed prior to the widespread use of digital computers. Includes card sorters, tabulating machines and a variety of other machines
-   Computer punched card reader — a computer input device used to read executable computer programs and data from punched cards under computer control.
-   Computer card punch — a computer output device that punches holes in cards under computer control.
-   Voting machines — used into the 21st century


See also

-   Aperture card
-   Card image
-   Computer programming in the punched card era
-   History of computing hardware
-   Kimball tag—punched card price tags
-   Paper data storage
-   Punched tape


References

-   The initial version of this article, October 18, 2001, was based on material taken from the Free On-line Dictionary of Computing and incorporated under the "relicensing" terms of the GFDL, version 1.1.


Further reading

-   -   Machine illustrations were provided by Power-Samas Accounting Machines and British Tabulating Machine Co.

-   An accessible book of recollections (sometimes with errors), with photographs and descriptions of many unit record machines.

-   An account of how IBM Cards are manufactured, with special emphasis on quality control.[91]

-   -   Includes a description of Samas punched cards and illustration of an Underwood Samas punched card.

-   Includes extensive, detailed, description of Hollerith's first machines and their use for the 1890 census.


External links

-   An Emulator for Punched cards
-   – a U.S. company that supplied punched card equipment and supplies until 2011.

-   Collected Information on Punched Card Codes, Atlas Computer Laboratory, 1960
-   -   article about use of punched cards in the 1990s (Cardamation)

-   -   (Collection shows examples of left, right, and no corner cuts.)

-   Punched Cards - a collection at Gesellschaft für Software mbH
-   UNIVAC Punch Card Gallery (Shows examples of both left and right corner cuts.)
-   VintageTech – a U.S. company that converts punched cards to conventional media
-

Punched_card Category:Computer-related introductions in 1887 Category:History of computing hardware Category:History of software Category:IBM storage devices Category:Wikipedia articles with ASCII art Category:Articles containing video clips

[1] Cortada, James W. (1993) _Before The Computer: IBM, NCR, Burroughs, & Remington Rand & The Industry They Created, 1865-1965_, Princeton

[2]

[3]

[4]

[5]

[6]

[7]

[8]  cited by Seaver (2010)

[9]

[10]

[11]

[12]

[13]

[14]

[15] Belden (1962) pp.300-301

[16]

[17]

[18]

[19] Codes and Ciphers Heritage Trust

[20] Lubar, Steven, 1991, _Do Not Fold, Spindle or Mutilate: A Cultural History of the Punch Card_, Smithsonian Institution

[21]

[22]

[23]

[24] Steven Pinker, in _The Stuff of Thought_, Viking, 2007, p.362, notes the loss of _-ed_ in pronunciation _as it did in ice cream, mincemeat, and box set, formerly iced cream, minced meat, and boxed set._

[25] "An important function in IBM Accounting is the automatic preparation of IBM cards." IBM 519 Principles of Operation, Form 22-3292-5, 1946

[26] "The IBM 1402 Card Read-Punch provides the system with simultaneous punched-card input and output. This unit has two card feeds." Reference Manual 1401 Data Processing System, Form A24-1403-4, 1961

[27]

[28]

[29]

[30]

[31] , ,

[32] (Austrian 1982, p.15)

[33] (Truesdell 1965, p.43)

[34]

[35]

[36]

[37]

[38]  Also see pages 5-14 for additional information on punched cards.

[39] Plates from:

[40]

[41] U.S. Patent 1,772,492, Record Sheet for Tabulating Machines, C. D. Lake, filed June 20, 1928

[42] The IBM Punched Card, IBM100

[43] IBM Archive: 1928.

[44] IBM Archive: Old/New-Cards.

[45] p. 405, "How Computational Chemistry Became Important in the Pharmaceutical Industry", Donald B. Boyd, chapter 7 in _Reviews in Computational Chemistry, Volume 23_, edited by Kenny B. Lipkowitz, Thomas R. Cundari and Donald B. Boyd, Wiley & Son, 2007, .

[46]

[47]

[48]

[49] Cemach, 1951, p.9, 17. Cemach has examples of shillings as 2 columns (p.9) and 1 column (p.17). This text assumes that 2 columns was normal, that 1 column was the exception.

[50] IBM Operator's Guide A24-1010, 1959, p.141: Master Card: The first card of a group containing fixed or indicative information for that group

[51]

[52]

[53]

[54] Special characters are non-alphabetic, non-numeric, such as "&#,$.-/@%*?"

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69] (Cemach, 1951, pp 47-51)

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]