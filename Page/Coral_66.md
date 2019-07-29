CORAL (Computer On-line Real-time Applications Language) is a programming language originally developed in 1964 at the Royal Radar Establishment (RRE), Malvern, UK. It was influenced by ALGOL and JOVIAL but is not a subset of either. Coral 66 was subsequently developed by I. F. Currie and M. Griffiths under the auspices of IECCA (Inter-Establishment Committee for Computer Applications). Its official definition,[1] edited by Woodward, Wetherall and Gorman, was first published in 1970.


Overview

Coral 66 is a general-purpose programming language based on ALGOL 60, with some features from Coral 64, JOVIAL, and FORTRAN. It includes structured record types (as in Pascal) and supports the packing of data into limited storage (also as in Pascal). Like Edinburgh IMP it allows embedded assembler, and also offers good run-time checking and diagnostics. It is specifically intended for real-time and embedded applications and for use on computers with limited processing power, including those limited to fixed point arithmetic and those without support for dynamic storage allocation.

The language was an inter-service standard for British military programming, and was also widely adopted for civil purposes in the British control and automation industry. It was used to write software for both the Ferranti[2] and GEC computers from 1971 onwards. Implementations also exist for the Interdata 8/32, PDP-11, VAX, Alpha platforms and HP Integrity servers; for the Honeywell, and for the Computer Technology Limited (CTL, later ITL) Modular-1;[3] as well as for SPARC running Solaris and Intel running Linux.

A variant of Coral 66 was developed during the late 1970s/early 1980s by the British GPO, in conjunction with GEC, STC and Plessey, for use on the System X digital telephone exchange control computers, known as PO-CORAL. This was later renamed BT-CORAL when British Telecom was spun off from the Post Office. Unique features of this language were the focus on real-time execution, message processing, limits on statement execution between waiting for input, and a prohibition on recursion to remove the need for a stack.

As Coral was aimed at a variety of real-time work, rather than general office DP, there was no standardised equivalent to a stdio library. IECCA recommended a primitive I/O package to accompany any compiler (in a document titled _Input/Output of Character data in Coral 66 Utility Programs_). Most implementers avoided this by producing Coral interfaces to existing Fortran and, later, C libraries.

Perhaps CORAL's most significant contribution to computing was the enforcement of quality control in commercial compilers.[4] To have a CORAL compiler approved by IECCA, and thus allowing a compiler to be marketed as a CORAL 66 compiler, the candidate compiler had to compile and execute an official suite of 25 test programs and 6 benchmark programs. The process was part of the BS 5905 approval process. This methodology was observed and adapted later by the United States Department of Defense for the official certification of Ada compilers.

Source code for a Coral 66 compiler (written in BCPL) has been recovered and the _Official Definition of Coral 66_ document by HMSO has been scanned; the Ministry of Defence patent office has issued a licence to the Edinburgh Computer History project to allow them to put both the code and the language reference online for non-commercial use.


References


External links

-   CORAL 66 test program extracted from the Test Responder report
-   CORAL 66 benchmarks
-   OpenVMS CORAL 66 compiler for HPE Integrity servers, Alpha (AXP) and VAX machines (commercial working CORAL 66 system)
-   BS5905 CORAL 66 Standard
-   DEF STAN 05-47
-   PDP-11 CORAL/ASM interfacing library
-   ECCE editor script to translate CORAL 66 into Edinburgh IMP

Category:History of computing in the United Kingdom Category:Malvern, Worcestershire Category:Procedural programming languages Category:Programming languages created in 1964 Category:Science and technology in Worcestershire

[1]

[2]

[3]

[4]