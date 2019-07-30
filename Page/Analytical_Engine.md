The ANALYTICAL ENGINE was a proposed mechanical general-purpose computer designed by English mathematician and computer pioneer Charles Babbage.[1][2] It was first described in 1837 as the successor to Babbage's difference engine, a design for a simpler mechanical computer.

The Analytical Engine incorporated an arithmetic logic unit, control flow in the form of conditional branching and loops, and integrated memory, making it the first design for a general-purpose computer that could be described in modern terms as Turing-complete.[3][4] In other words, the logical structure of the Analytical Engine was essentially the same as that which has dominated computer design in the electronic era.[5]. The Analytical Engine is one of the most successful achievements of Charles Babbage.

Babbage was never able to complete construction of any of his machines due to conflicts with his chief engineer and inadequate funding.[6][7] It was not until 1941 that the first general-purpose computer, Z3, was actually built, more than a century after Babbage had proposed the pioneering Analytical Engine in 1837.[8]


Design

s used to program the machine. Foreground: 'operational cards', for inputting instructions; background: 'variable cards', for inputting data]]

Babbage's first attempt at a mechanical computing device, the Difference Engine, was a special-purpose machine designed to tabulate logarithms and trigonometric functions by evaluating finite differences to create approximating polynomials. Construction of this machine was never completed; Babbage had conflicts with his chief engineer, Joseph Clement, and ultimately the British government withdrew its funding for the project.[9][10]

During this project, he realized that a much more general design, the Analytical Engine, was possible. The work on the design of the Analytical Engine started in c. 1833.[11]

The input, consisting of programs and data ("formulae" and "data") was to be provided to the machine via punched cards, a method being used at the time to direct mechanical looms such as the Jacquard loom. For output, the machine would have a printer, a curve plotter and a bell. The machine would also be able to punch numbers onto cards to be read in later. It employed ordinary base-10 fixed-point arithmetic.

There was to be a store (that is, a memory) capable of holding 1,000 numbers of 40 decimal digits each (ca. 16.2 kB). An arithmetic unit (the "mill") would be able to perform all four arithmetic operations, plus comparisons and optionally square roots. Initially (1838) it was conceived as a difference engine curved back upon itself, in a generally circular layout, with the long store exiting off to one side. Later drawings (1858) depict a regularized grid layout.[12] Like the central processing unit (CPU) in a modern computer, the mill would rely upon its own internal procedures, to be stored in the form of pegs inserted into rotating drums called "barrels", to carry out some of the more complex instructions the user's program might specify.[13]

The programming language to be employed by users was akin to modern day assembly languages. Loops and conditional branching were possible, and so the language as conceived would have been Turing-complete as later defined by Alan Turing. Three different types of punch cards were used: one for arithmetical operations, one for numerical constants, and one for load and store operations, transferring numbers from the store to the arithmetical unit or back. There were three separate readers for the three types of cards. Babbage developed some two dozen programs for the Analytical Engine between 1837 and 1840, and one program later. These programs treat polynomials, iterative formulas, Gaussian elimination, and Bernoulli numbers.

In 1842, the Italian mathematician Luigi Federico Menabrea published a description of the engine based on a lecture by Babbage in French. In 1843, the description was translated into English and extensively annotated by Ada Lovelace, who had become interested in the engine eight years earlier. In recognition of her additions to Menabrea's paper, which included a way to calculate Bernoulli numbers using the machine (widely considered to be the first complete computer program), she has been described as the first computer programmer.


Construction

]]

Late in his life, Babbage sought ways to build a simplified version of the machine, and assembled a small part of it before his death in 1871.[14][15][16]

In 1878, a committee of the British Association for the Advancement of Science described the Analytical Engine as "a marvel of mechanical ingenuity", but recommended against constructing it. The committee acknowledged the usefulness and value of the machine, but could not estimate the cost of building it, and were unsure whether the machine would function correctly after being built.[17][18]

Intermittently from 1880 to 1910,[19] Babbage's son Henry Prevost Babbage was constructing a part of the mill and the printing apparatus. In 1910 it was able to calculate a (faulty) list of multiples of pi.[20] This constituted only a small part of the whole engine; it was not programmable and had no storage. (Popular images of this section have sometimes been mislabelled, implying that it was the entire mill or even the entire engine.) Henry Babbage's "Analytical Engine Mill" is on display at the Science Museum in London.[21] Henry also proposed building a demonstration version of the full engine, with a smaller storage capacity: "perhaps for a first machine ten (columns) would do, with fifteen wheels in each".[22] Such a version could manipulate 20 numbers of 25 digits each, and what it could be told to do with those numbers could still be impressive. "It is only a question of cards and time", wrote Henry Babbage in 1888, "... and there is no reason why (twenty thousand) cards should not be used if necessary, in an Analytical Engine for the purposes of the mathematician".[23]

In 1991, the London Science Museum built a complete and working specimen of Babbage's Difference Engine No. 2, a design that incorporated refinements Babbage discovered during the development of the Analytical Engine.[24] This machine was built using materials and engineering tolerances that would have been available to Babbage, quelling the suggestion that Babbage's designs could not have been produced using the manufacturing technology of his time.[25]

In October 2010, John Graham-Cumming started a "Plan 28" campaign to raise funds by "public subscription" to enable serious historical and academic study of Babbage's plans, with a view to then build and test a fully working virtual design which will then in turn enable construction of the physical Analytical Engine.[26][27] As of May 2016, actual construction had not been attempted, since no consistent understanding could yet be obtained from Babbage's original design drawings. In particular it was unclear whether it could handle the indexed variables which were required for Lovelace's Bernoulli program.[28] By 2017, the "Plan 28" effort reported that a searchable database of all catalogued material was available, and an initial review of Babbage's voluminous Scribbling Books had been completed.[29]


Instruction set

Babbage is not known to have written down an explicit set of instructions for the engine in the manner of a modern processor manual. Instead he showed his programs as lists of states during their execution, showing what operator was run at each step with little indication of how the control flow would be guided.

Allan G. Bromley has assumed that the card deck could be read in forwards and backwards directions as a function of conditional branching after testing for conditions, which would make the engine Turing-complete:

  ...the cards could be ordered to move forward and reverse (and hence to loop)...

  The introduction for the first time, in 1845, of user operations for a variety of service functions including, most importantly, an effective system for user control of looping in user programs.

  There is no indication how the direction of turning of the operation and variable cards is specified. In the absence of other evidence I have had to adopt the minimal default assumption that both the operation and variable cards can only be turned backward as is necessary to implement the loops used in Babbage’s sample programs. There would be no mechanical or microprogramming difficulty in placing the direction of motion under the control of the user.

In their emulator of the engine, Fourmilab say:

  The Engine's Card Reader is not constrained to simply process the cards in a chain one after another from start to finish. It can, in addition, directed by the very cards it reads and advised by the whether the Mill's run-up lever is activated, either advance the card chain forward, skipping the intervening cards, or backward, causing previously-read cards to be processed once again.

This emulator does provide a written symbolic instruction set, though this has been constructed by its authors rather than based on Babbage's original works. For example, a factorial program would be written as:

N0 6
N1 1
N2 1
×
L1
L0
S1
–
L0
L2
S0
L2
L0
CB?11

where the CB is the conditional branch instruction or "combination card" used to make the control flow jump, in this case backwards by 11 cards.


Influence

Predicted influence

Babbage understood that the existence of an automatic computer would kindle interest in the field now known as algorithmic efficiency, writing in his _Passages from the Life of a Philosopher_, "As soon as an Analytical Engine exists, it will necessarily guide the future course of the science. Whenever any result is sought by its aid, the question will then arise—By what course of calculation can these results be arrived at by the machine in the _shortest time_?"

Computer science

From 1872 Henry continued diligently with his father's work and then intermittently in retirement in 1875.[30]

Percy Ludgate wrote about the engine in 1914 and designed his own Analytical Engine (it was drawn up in detail, but never built) about 1907–1909.[31] Ludgate's engine would be much smaller than Babbage's of about , and hypothetically would be capable of multiplying two 20-decimal-digit numbers in about six seconds.[32]

Torres y Quevedo wrote about Babbage's engines in _Essays on Automatics_ (1913). Book contains design for an electromechanical machine capable of calculating completely automatically the value of a function.[33]

Vannevar Bush's paper _Instrumental Analysis_ (1936) included several references to Babbage's work. In the same year started Rapid Arithmetical Machine project to investigate the problems of constructing an electronic digital computer.[34]

Despite this groundwork, Babbage's work fell into historical obscurity, and the Analytical Engine was unknown to builders of electro-mechanical and electronic computing machines in the 1930s and 1940s when they began their work, resulting in the need to re-invent many of the architectural innovations Babbage had proposed. Howard Aiken, who built the quickly-obsoleted electromechanical calculator, the Harvard Mark I, between 1937 and 1945, praised Babbage's work likely as a way of enhancing his own stature, but knew nothing of the Analytical Engine's architecture during the construction of the Mark I, and considered his visit to the constructed portion of the Analytical Engine "the greatest disappointment of my life". The Mark I showed no influence from the Analytical Engine and lacked the Analytical Engine's most prescient architectural feature, conditional branching. J. Presper Eckert and John W. Mauchly similarly were not aware of the details of Babbage's Analytical Engine work prior to the completion of their design for the first electronic general-purpose computer, the ENIAC.[35][36]


Comparison to other early computers

If the Analytical Engine had been built, it would have been digital, programmable and Turing-complete. It would, however, have been very slow. Luigi Federico Menabrea reported in _Sketch of the Analytical Engine_: "Mr. Babbage believes he can, by his engine, form the product of two numbers, each containing twenty figures, in three minutes". By comparison the Harvard Mark I could perform the same task in just six seconds. A modern PC can do the same thing in well under a billionth of a second.

  Name                        First operational                                    Numeral system           Computing mechanism   Programming                                                                                             Turing complete   Memory
  --------------------------- ---------------------------------------------------- ------------------------ --------------------- ------------------------------------------------------------------------------------------------------- ----------------- -------------------------------------------------
  Difference Engine           Not built until the 1990s                            Decimal                  Mechanical            Not programmable; initial numerical constants of polynomial differences set physically                  No                Physical state of wheels in axes
  Analytical Engine           Not yet built                                        Decimal                  Mechanical            Program-controlled by punched cards                                                                     Yes               Physical state of wheels in axes
  Bombe                       1939 (Polish), March 1940 (British), May 1943 (US)   Character computations   Electro-mechanical    Not programmable; cipher input settings specified by patch cables                                       No                Physical state of rotors
  Zuse Z3                     May 1941                                             Binary floating point    Electro-mechanical    Program-controlled by punched 35 mm film stock                                                          In principle      Mechanical relays
  Atanasoff–Berry Computer    1942                                                 Binary                   Electronic            Not programmable; linear system coefficients input using punched cards                                  No                Regenerative capacitor memory
  Colossus Mark 1             December 1943                                        Binary                   Electronic            Program-controlled by patch cables and switches                                                         No                Thermionic valves (vacuum tubes) and thyratrons
  Harvard Mark I – IBM ASCC   May 1944                                             Decimal                  Electro-mechanical    Program-controlled by 24-channel punched paper tape (but no conditional branch)                         No                Mechanical relays[37]
  Zuse Z4                     March 1945 (or 1948)[38]                             Binary floating point    Electro-mechanical    Program-controlled by punched 35 mm film stock                                                          Yes               Mechanical relays
  ENIAC                       July 1946                                            Decimal                  Electronic            Program-controlled by patch cables and switches                                                         Yes               Vacuum tube triode flip-flops
  Manchester Baby             1948                                                 Binary                   Electronic            Binary program entered into memory by keyboard[39] (first electronic stored-program digital computer)   Yes               Williams cathode ray tube


In popular culture

-   The cyberpunk novelists William Gibson and Bruce Sterling co-authored a steampunk novel of alternative history titled _The Difference Engine_ in which Babbage's Difference and Analytical Engines became available to Victorian society. The novel explores the consequences and implications of the early introduction of computational technology.
-   There is also mention of the Analytical Engine (or the Clockwork Ouroboros as it is also known there) in _The Book of the War_, a Faction Paradox anthology edited by Lawrence Miles. This machine was used to calculate a way into the "Eleven Day Empire". Its use resulted in the destruction of the original Houses of Parliament.
-   In the novel _Perdido Street Station_, by British author China Miéville, engines similar to Babbage's serve as "brains" for the robotic constructs of the city of New Crobuzon. One such engine even develops sentient thought due to a recursive algorithmic loop.
-   The British Empire of _The Peshawar Lancers_ by S. M. Stirling features a massive water-powered analytical engine at Oxford, used by two of the main characters. It is noted that most of the engines run on steam, and that an even larger one is under construction at the British Capital in Delhi.
-   In the Michael Flynn novel _In the Country of the Blind_, a secret society calling itself the Babbage Society secretly financed the building of Babbage Engines in the mid-19th century. In the novel, the Society uses the Babbage engines along with a statistical science called Cliology to predict and manipulate future history. In the process, they predict the rise of the Nazis and accidentally start the US Civil War.
-   In the Neal Stephenson novel _The Diamond Age_, ubiquitous molecular nanotechnology is described to make use of "rod logic" similar to that imagined by Babbage's design for the Analytical Engine.
-   _Moriarty by Modem_, a short story by Jack Nimersheim, describes an alternate history where Babbage's Analytical Engine was indeed completed and had been deemed highly classified by the British government. The characters of Sherlock Holmes and Moriarty had in reality been a set of prototype programs written for the Analytical Engine. This short story follows Holmes as his program is implemented on modern computers and he is forced to compete against his nemesis yet again in the modern counterparts of Babbage's Analytical Engine.[40]
-   A similar setting is used by Sydney Padua in the webcomic _The Thrilling Adventures of Lovelace and Babbage_.[41][42] It features an alternate history where Ada Lovelace and Babbage have built the Analytical Engine and use it to fight crime at Queen Victoria's request.[43] The comic is based on thorough research on the biographies of and correspondence between Babbage and Lovelace, which is then twisted for humorous effect.
-   _Georgia on My Mind_ is a novelette by Charles Sheffield which involves two major themes: being widowed and the quest for a legendary Babbage computer.
-   Hugh Cook's fantasy novels _The Wishstone and the Wonderworkers_ and _The Wazir and the Witch_ feature an Analytical Engine created by the scientist Ivan Petrov. It is used to calculate income tax.
-   The Orion's Arm online project features the _Machina Babbagenseii_, fully sentient Babbage inspired mechanical computers. Each is the size of a large asteroid, only capable surviving in microgravity conditions, and processes data at 0.5% the speed of a human brain.[44]
-   The flying ships in the anime _Last Exile_ are seen to have analytical engines inside of them. Although some have more advanced technology, the common ships use analytical engines, and even some of the advanced ships are seen to have clockwork mechanisms as well.
-   A working version of the Analytical Engine, created by fictional inventor Ernest Harding (and based on the Babbage concept) was featured on the _Murdoch Mysteries_ (also called The Artful Detective), in Season 5, Episode 9, _Invention Convention_.[45]


References


Bibliography

-   -   -   -   -   -   -   -   -   -   -   -


External links

-   The Analytical Engine at Fourmilab, includes historical documents and online simulations
-   -   Image of a later Plan of Analytical Engine with grid layout (1858)
-   First working Babbage "barrel" actually assembled, circa 2005
-   Special issue, _IEEE Annals of the History of Computing_, Volume 22, Number 4, October–December 2000
-   _Babbage_, Science Museum, London
-

Category:Computer-related introductions in 1837 Category:English inventions Category:One-of-a-kind computers Category:Mechanical calculators Category:Mechanical computers Category:Charles Babbage

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

[17] *

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