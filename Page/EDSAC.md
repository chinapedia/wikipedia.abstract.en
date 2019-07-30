The ELECTRONIC DELAY STORAGE AUTOMATIC CALCULATOR (EDSAC) was an early British computer.[1] Inspired by John von Neumann's seminal _First Draft of a Report on the EDVAC_, the machine was constructed by Maurice Wilkes and his team at the University of Cambridge Mathematical Laboratory in England. EDSAC was the second electronic digital stored-program computer to go into regular service.[2]

Later the project was supported by J. Lyons & Co. Ltd., a British firm, who were rewarded with the first commercially applied computer, LEO I, based on the EDSAC design. Work on EDSAC started during 1947,[3] and it ran its first programs on 6 May 1949, when it calculated a table of square numbers[4] and a list of prime numbers.[5][6] EDSAC 1 was finally shut down on 11 July 1958, having been superseded by EDSAC 2, which remained in use until 1965.[7]


Technical overview

Physical components

As soon as EDSAC was operational, it began serving the University's research needs. It used mercury delay lines for memory, and derated vacuum tubes for logic. Power consumption was 11 kW of electricity.[8][9] Cycle time was 1.5 ms for all ordinary instructions, 6 ms for multiplication. Input was via five-hole punched tape and output was via a teleprinter.

Initially registers were limited to an accumulator and a multiplier register. In 1953, David Wheeler, returning from a stay at the University of Illinois, designed an index register as an extension to the original EDSAC hardware.

A magnetic tape drive was added in 1952 but never worked sufficiently well to be of real use.[10]

Until 1952, the available main memory (instructions and data) was only 512 18-bit words, and there was no backing store.[11] The delay lines (or "tanks") were arranged in two batteries providing 512 words each. The second battery came into operation in 1952.[12]

The full 1024-word delay line store was not available until 1955 or early 1956,[13] limiting programs to about 800 words until then.

John Lindley (diploma student 1958–1959) mentioned "the incredible difficulty we had ever to produce a single correct piece of paper tape with the crude and unreliable home-made punching, printing and verifying gear available in the late 50s".[14]

Memory and instructions

and Bill Renwick in front of the complete EDSAC]] The EDSAC's main memory consisted of 1024 locations, though only 512 locations were initially installed. Each contained 18 bits, but the topmost bit was always unavailable due to timing problems, so only 17 bits were used. An instruction consisted of a five-bit instruction code, one spare bit, a ten bit operand (usually a memory address), and a length bit to control whether the instruction used a 17-bit or a 35-bit operand (two consecutive words, little-endian). All instruction codes were by design represented by one mnemonic letter, so that the _Add_ instruction, for example, used the EDSAC character code for the letter A.

Internally, the EDSAC used two's complement, binary numbers. Numbers were either 17 bits (one word) or 35 bits (two words) long. Unusually, the multiplier was designed to treat numbers as fixed-point fractions in the range −1 ≤ _x_ < 1, i.e. the binary point was immediately to the right of the sign. The accumulator could hold 71 bits, including the sign, allowing two long (35-bit) numbers to be multiplied without losing any precision.

The instructions available were:

-   Add
-   Subtract
-   Multiply-and-add
-   AND-and-add (called "Collate")
-   Shift Left
-   Arithmetic shift Right
-   Load multiplier register
-   Store (and optionally clear) accumulator
-   Conditional Goto
-   Read Input tape
-   Print character
-   Round accumulator
-   No-op
-   Stop.

There was no division instruction (but various division subroutines were supplied) and no way to directly load a number into the accumulator (a "sTore and zero accumulator" instruction followed by an "Add" instruction were necessary for this). There was no unconditional jump instruction, nor was there a procedure call instruction - it had not yet been invented.

Maurice Wilkes discussed relative addressing modes for the EDSAC in a paper published in 1953. He was making the proposals to facilitate the use of subroutines.[15]

System software

The _initial orders_ were hard-wired on a set of uniselector switches and loaded into the low words of memory at startup. By May 1949, the initial orders provided a primitive relocating assembler taking advantage of the mnemonic design described above, all in 31 words. This was the world's first assembler, and arguably the start of the global software industry. There is a simulation of EDSAC available and a full description of the initial orders and first programs.

The first calculation done by EDSAC was a square number program run on 6 May 1949.[16] The program was written by Beatrice Worsley who had come from Canada to study the machine.[17][18]

The machine was used by other members of the University to solve real problems, and many early techniques were developed that are now included in operating systems. Users prepared their programs by punching them (in assembler) onto a paper tape. They soon became good at being able to hold the paper tape up to the light and read back the codes. When a program was ready it was hung on a length of line strung up near the paper tape reader. The machine operators, who were present during the day, selected the next tape from the line and loaded it into EDSAC. This is of course well known today as job queues. If it printed something then the tape and the printout were returned to the user, otherwise they were informed at which memory location it had stopped. Debuggers were some time away, but a CRT screen could be set to display the contents of a particular piece of memory. This was used to see if a number was converging, for example. A loudspeaker was connected to the accumulator's sign bit; experienced users knew healthy and unhealthy sounds of programs, particularly programs 'hung' in a loop. After office hours certain "Authorised Users" were allowed to run the machine for themselves, which went on late into the night until a valve blew – which usually happened according to one such user.[19]

Programming technique

[[File:EDSAC (23).jpg|thumb|EDSAC monitoring deskDescription of three displays (counter, memory and sequence control):

-   ]]

The early programmers had to make use of techniques frowned upon today—especially altering the code. As there was no index register until much later, the only way of accessing an array was to alter which memory location a particular instruction was referencing.

David Wheeler, who earned the world's first Computer Science PhD working on the project, is credited with inventing the concept of a subroutine. Users wrote programs that called a routine by jumping to the start of the subroutine with the return address (i.e. the location-plus-one of the jump itself) in the accumulator (a Wheeler jump). By convention the subroutine expected this and the first thing it did was to modify its concluding jump instruction to that return address. Multiple and nested subroutines could be called so long as the user knew the length of each one in order to calculate the location to jump to; recursive calls were forbidden. The user then copied the code for the subroutine from a master tape onto their own tape following the end of their own program.

Application software

The subroutine concept led to the availability of a substantial subroutine library. By 1951, 87 subroutines in the following categories were available for general use: floating point arithmetic; arithmetic operations on complex numbers; checking; division; exponentiation; routines relating to functions; differential equations; special functions; power series; logarithms; miscellaneous; print and layout; quadrature; read (input); _n_th root; trigonometric functions; counting operations (simulating repeat until loops, while loops and for loops); vectors; and matrices.


Applications of EDSAC

-   In 1950, M. V. Wilkes and Wheeler used EDSAC to solve a differential equation relating to gene frequencies in a paper by Ronald Fisher.[20] This represents the first use of a computer for a problem in the field of biology.
-   In 1951, Miller and Wheeler used the machine to discover a 79-digit prime[21] – the largest known at the time.
-   In 1952, Sandy Douglas developed _OXO_, a version of noughts and crosses (tic-tac-toe) for the EDSAC, with graphical output to a VCR97 6" cathode ray tube. This may well have been the world's first video game.[22][23]
-   In the early 1960s Peter Swinnerton-Dyer used the EDSAC computer to calculate the number of points modulo _p_ (denoted by _N_(p)_) for a large number of primes _p_ on elliptic curves whose rank was known. Based on these numerical results conjectured that _N_(p)_ for a curve _E_ with rank _r_ obeys an asymptotic law, the Birch and Swinnerton-Dyer conjecture, considered one of the top unsolved problems in mathematics as of 2016.


Further developments

EDSAC's successor, EDSAC 2, was commissioned in 1958.

In 1961, an EDSAC 2 version of Autocode, an ALGOL-like high-level programming language for scientists and engineers, was developed by David Hartley.

In the mid-1960s, a successor to the EDSAC 2 was planned, but the move was instead made to the Titan, a prototype Atlas 2 developed from the Atlas Computer of the University of Manchester, Ferranti, and Plessey.


EDSAC Replica Project

On 13 January 2011, the Computer Conservation Society announced that it planned to build a working replica of EDSAC, at the National Museum of Computing (TNMoC) in Bletchley Park supervised by Andrew Herbert, who studied under Maurice Wilkes.[24] The first parts of the recreation were switched on in November 2014.[25][26] The ongoing project is open to visitors of the museum. As of November 2016, commissioning of the fully completed and operational state of the replica was estimated to be the autumn of 2017.[27] However, project delays have postponed its opening (as of May 2018) to summer of 2018.[28]


See also

-   History of computing hardware
-   List of vacuum tube computers
-   Margaret Marrs


References


Further reading

-   _The Preparation of Programs for an Electronic Digital Computer_ by Professor Sir Maurice Wilkes, David Wheeler and Stanley Gill, Addison–Wesley, Edition 1, 1951
-   50th Anniversary of EDSAC – Dedicated website at the University of Cambridge Computer Laboratory.
-   -


External links

-   An EDSAC simulator – Developed by Martin Campbell-Kelly, Department of Computer Science, University of Warwick, England.
-   Oral history interview with David Wheeler, 14 May 1987. Charles Babbage Institute, University of Minnesota. Wheeler was a research student at the University Mathematical Laboratory at Cambridge from 1948–51, and a pioneer programmer on the EDSAC project. Wheeler discusses projects that were run on EDSAC, user-oriented programming methods, and the influence of EDSAC on the ILLIAC, the ORDVAC, and the IBM 701. Wheeler also notes visits by Douglas Hartree, Nelson Blackman (of ONR), Peter Naur, Aad van Wijngarden, Arthur van der Poel, Friedrich Bauer, and Louis Couffignal.
-   Nicholas Enticknap and Maurice Wilkes, Cambridge's Golden Jubilee – in: RESURRECTION The Bulletin of the Computer Conservation Society. . Number 22, Summer 1999.

Category:1940s computers Category:Early British computers Category:1949 in computer science Category:Computer-related introductions in 1949 Category:One-of-a-kind computers Category:Vacuum tube computers Category:University of Cambridge Computer Laboratory Category:History of Cambridge Category:History of electronic engineering

[1]

[2] The Manchester Baby predated EDSAC as a stored-program computer, but was built as a test bed for the Williams tube and not as a machine for practical use. http://www.cl.cam.ac.uk/conference/EDSAC99/history.html. However, the Manchester Mark 1 of 1949 (not to be confused with the 1948 prototype, the Baby) was available for general use by other university departments and Ferranti in April 1949 despite being still under development.

[3] 1

[4]  To be precise, EDSAC's first program printed a list of the squares of the integers from 0 to 99 inclusive.

[5]

[6]

[7]

[8] EDSAC Simulator - Computerphile

[9] University of Cambridge - Some EDSAC statistics

[10] Some EDSAC statistics

[11] EDSAC 1 and after

[12]

[13] EDSAC 1 and after

[14] EDSAC 1 and after

[15] Proceedings of the Cambridge Philosphical Society, Vol 49, Pt 1, pgs 84-9

[16]

[17]

[18]

[19] Professor David Barron, Emeritus Professor of the University of Southampton at a Cambridge Computer Lab seminar to mark the 60th anniversary 6 May 2009.

[20] Gene Frequencies in a Cline Determined by Selection and Diffusion, R. A. Fisher, _Biometrics_, Vol. 6, No. 4 (Dec. 1950), pp. 353–361

[21] Caldwell – largest known primes by year One reference gives Miller, J. C. P. "Larger Prime Numbers" (1951) _Nature_ 168(4280):838, but the abstract does not mention it.

[22]

[23]

[24]

[25] Museum switches on historic computer

[26]

[27]

[28]