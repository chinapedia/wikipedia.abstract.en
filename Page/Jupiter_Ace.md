The JUPITER ACE by Jupiter Cantab was a British home computer of the early 1980s. The Ace differed from other microcomputers of the time in that it used Forth instead of the more popular BASIC.[1]

After Jupiter Cantab ceased trading, the brand was acquired by Boldfield Computing Ltd in 1984, before eventually being sold to Paul Andrews's company Andrews UK Limited in 2015[2]


Introduction

Jupiter Cantab was formed by Richard Altwasser and Steven Vickers.[3] Both had been on the design team for the Sinclair ZX Spectrum: Altwasser did some work on the development of the ZX-81 and in the design of the hardware of the Spectrum. Vickers adapted and expanded the 4K ZX-80 ROM to the 8K ZX-81 ROM and wrote most of the ROM for the Spectrum.

The new Ace

The Jupiter Ace was named after the early British computer, the ACE.

Jupiter-ACE_small_system_(modified).jpg The Jupiter ACE is often compared with ZX81 due to its similar size, low cost, and similar form factor.[4] Internally its design is more similar to the ZX Spectrum although the ACE also had a dedicated video memory of 2 kB, partly avoiding the slow down when programs accessed the same bank (same chips) as the video memory. Like the Spectrum, the Ace used black conductive rubber keys.

Audio capabilities were CPU controlled with programmable frequency and duration. Sound output was through a small built-in speaker.

As was common at the time, it used a common tape recorder instead of disk/tape drives. Similarly, a television was needed as a display - but this was in black and white only, rather than the colour supported by competing models such as the Spectrum.

Its most distinctive characteristic was the choice of Forth, a structured language allowing programs to be written that would run almost as fast as the compiled languages loaded by more expensive computers. Forth was considered well adapted to microcomputers with their small memory and relatively low-performance processors.[5] Forth programs are memory-efficient; as they become bigger, they reuse more previously-defined code.[6] Control structures could be nested to any level, limited only by available memory. This allowed complex programs to be implemented, even allowing recursive programming. The ACE's Forth was "ten times faster than Basic"[7][8][9] and used less than half the memory (which was a costly luxury at the time) of an equivalent program written in interpreted BASIC.[10] It also allowed easy implementation of machine code routines if needed.[11]

Specifications

  Characteristic         Value
  ---------------------- ------------------------------------------------------------------------------------------------------------------------
  Processor              Zilog Z80A clocked at 3.25 MHz.[12]
  Operating System       FORTH (as both Programming language and Command-line interface).
  Memory                 2kB for Video + 1 kB base expandable up to 49 kB (Video excluded).
  Video                  Independent sub-system with 2 dedicated SRAM banks : Screen (1 kB) + Char Tiles (1 kB).
  Sound                  Internal Speaker, CPU driven (non dedicated).
  Expansion              2 connectors: Main (CPU related) + Video(Screen + AV signal).
  Keyboard and Charset   40 keys Qwerty Keyboard (Symbols access with extra key). All chars in Charset (based on ASCII-1967) being redefinable.
  Character set          Based on ASCII-1967 with extensions as for the ZX Spectrum character set including ↑, £ and ©.

References to the ACE RAM sometimes include the separate 2 kB video memory, which is not available for programming, thus leading to some confusion. Similarly, it is sometimes argued that because of Forth's efficiency, the 1 kB standard RAM was in effect comparable to at least 2 kB on a BASIC system.


ACE's Forth

Jupiter_Ace_vlist_png.png ACE's Forth was based mostly on Forth-79, with some relevant differences,[13] in particular it added syntax checking to control structures and definer constructions (a.k.a. "Safe Compiling"), and a few extra words were added based on common BASIC sound, video and tape commands. The implementation lacked some less frequently used Forth words, these being easily implemented if needed. Runtime error checking could be turned off to raise speed by 25% to 50%.

Decompiling

Its Forth was adapted to the disk-less tape-using home computer hardware by being able to save/load user "compiled vocabularies", instead of the usual numbered programming blocks used by diskette systems.

Decompiling avoided wasting RAM in simulating an absent Block System, used with both disk and tape drivers (these last not to be confused with tape recorders). As replacement, it included an extra data file, for raw binary data. These solutions were unique to the Jupiter ACE, making Ace Forth much more than Forth alone on a disk-less entry computer. There was no need to buy, or load, Forth to get full usage of a cheap computer.

Define vs Compile

To allow decompile, it distinguished usual Forth definer and compiler words creation, replacing the CREATE .. DOES>,[14] creation pair with:

1.  DEFINER .... DOES> : Create new Defining words, usually used to define and build data structures. Similar to CREATE..DOES usage in standard FORTH.[15] ( Example: Adding Data Structures as Arrays, Records, ... ).
2.  COMPILER .. RUNS> : Create new Compiling words, less frequently used to extend the language with compiler words where CREATE..DOES> is FORTH implementation dependent.[16] ( Example: New Compiler Control Structures as Case, Infinite Loop, ... ).

These 2 defining pairs, instead of one alone, allowed the ACE to decompile its programs, unlike usual Forth systems. This decompiling ability was a solution to the absence of the more flexible disk system used by Forth. Not storing the source of a Forth program, but compiling the code after editing, it avoided completely the emulation of a disk/tape drive on RAM saving computer memory. It also saved time in reading and writing programs from cassette tape. This tape-friendly and RAM-saving solution was unique to the Jupiter ACE Forth.

Development

Avoiding sources was compensated by inserting comments on code, thus recovering these too on decompiling. As a result of "code is the source", modified words (edited) would demand actualization of all code using the one newly edited. This was done with the non standard REDEFINE command.

Forth build up Compiled Applications. This suggested its usage as ROM extensions. Not designed for that purpose, ACE Forth allowed it. External ROMs were developed with Ace Forth to be used as control applications.[17][18]


System

Architecture

The ACE had an 8 kB ROM containing the Forth kernel and operating system, and the predefined dictionary of Forth words in about 5 kB. The remaining 3 kB of ROM supported several functionalities: floating point numbers library and character definitions table, tape recorder access, decompiling and redefining newly re-edited 'words' (i.e. routines).[19] Some of the ROM was written in Z80 machine code, but some was also coded in Forth.

The next 8 kB were split in 2 blocks of 4 kB each. The video subsystem access allowing two different priorities of Video access by the user to the 2 kB SRAM, _Regular_ or _Overriding_ CPU contention, also conditioned by TV Image timings. The 1 kB of user RAM was only partially decoded, so it echoed in the full 4 kB block address space it resides. The 1st 16 kB space was used for ROM, VIDEO, and USER, leaving free 2nd 16 kB space for RAM extension plus 32 kB space free for all possible usages.

Hardware

CPU:

The Jupiter Ace was based on the Zilog Z80, which the designers had previous experience of from working on the Sinclair ZX81 and ZX Spectrum.

VIDEO:

One 1K bank allowed redefinition of most of its 128 ASCII based characters in 8×8 pixel bitmap format. The other 1K bank stored the full screen display of 24 rows × 32 columns of characters in black and white. Colour was intended to be achieved as expansion, but although a colour graphics board was designed,[20] none was ever produced commercially.

Both graphics and text could be displayed at the same time: (1) redefinition of the character tiles provided standard 256×192 graphics limited to the 128 available (definable) 8×8 chars, concurrent with plotting of 64×48 graphics.

_Memory_:

1 kB RAM with the option of a 16 kB RAM-Pack, and later a 32k one.

SOUND:

Internal speaker directly controlled by the CPU in single task mode, with control of sound frequency and duration in ms.

EXTERNAL STORAGE:

Storage was through a cassette tape interface at 1500 baud. Files were compiled user application (fast loading) and Memory Raw Data (size dependent).

Add-ons

The machine was able to use some ZX-81 add-ons due to similar RAM locations, and external expansion slot. Jupiter Cantab made a 16 kB RAM pack, and external companies made similar RAM packs as well as other peripherals and interfaces.

    RAM PACKS[21]
    1.  16 kB by Jupiter Cantab.
    2.  16 kB and 32 kB by Stonechip Electronics.
    3.  48 kB by Boldfield (new Jupiter ACE owner after Jupiter Cantab).

    KEYBOARD[22]
    -   Memotech Keyboard, by Memotech.

    SOUND[23]
    -   SoundBoard (1983) by Essex Micro Electronics,

    STORAGE[24]
    1.  Jet-Disc Disc Drive System (1983) by MPE (control up to four 3", 5", or 8" drives).
    2.  "Deep Thought" Disc interface with a 4K AceDOS in an EPROM (1986) by J Shepherd & S Leask.

    '''Printer Adapters '''
    -   ADS Centronics Interface Machine (1983), by Advanced Digital Systems,[25]
    -   RS232 & Centronics PrinterCard (1984) by Essex Micro Electronics.[26]

    GRAPHICS CARD
    1.  Gray Scale card - 4 shades of gray by S Leask (1986)


Commercial

Despite being technically very interesting,[27] sales to the general public were limited by the use of Forth, when all other contemporary home computers used BASIC.[28] The lack of published software, the poor case and small initial memory were also factors.

Models

Jupiter_Ace_4000.jpg

1982 - Original Jupiter ACE in a vacuum-drawn case - Reported 5000 units built.[29]

1983 - Jupiter ACE 4000 on stronger injection moulded case - Reported 800 units built.[30]

Sales

Sales of the machine were never very large; the reported number of Ace's sold before Jupiter Cantab closed for business was around 5,000.[31] As of the early 2000s, surviving machines are quite uncommon, fetching high prices as collector's items.

Although it had originally be planned to have an on-board of base RAM, it in fact shipped with just - and the need to buy an extra RAM-extension which almost doubled the ACE's price was one main reason for low sales

Forth, while being structured and powerful, was considered difficult to learn, and a knowledge of BASIC acquired from familiarity with other home computers was of practically no help in learning it. A 1982 review stated that "The success of the Jupiter Ace will depend on the machine-buying public's acceptance of another microcomputer language."[32] This acceptance never materialized.

Further, there was only a very limited range of published software - either commercial programs or type-in programs printed in hobby magazines - for the machine, and these were restricted by the base model's small amount of RAM.[33]

Attempts to promote the Ace in the educational market also failed; doubts over whether Forth would be relevant for exam syllabuses, and the lack of support for Forth from teaching staff were key issues.[34] Pupils were more interested in learning the widely used BASIC than a language used by only one (uncommon) machine with a peculiar RPN syntax.[35]

Finally, the tile-based graphics compared poorly to the pixel-based graphics of other machines - which were also colour rather than the Ace's monochrome. This restricted sales largely to a niche market of technical programming enthusiasts.


See also

Other Forth-based microcomputers:

-   :fr:Hector HRX[36]
-   The Canon Cat


References


External links

-   Jupiter Ace Resource Site: The Jupiter Ace restoration and preservation project.
-   ACE-ROM-PROJECT: latest e-book with hardware considerations (Zip file).
-   theregister.co.uk: The Jupiter Ace is 30, schematic (2012)

Category:Computer-related introductions in 1982 Category:Z80-based home computers Category:British computers Category:Home computers Category:Forth programming language family

[1]  Page 1

[2]

[3]

[4]

[5] _Byte Magazine_."Editorial". 1980,August. Special Edition.

[6] James, John S. _Byte Magazine_. 1980, Aug. "What is Forth?", page 102, section "Characteristics of FORTH Code".

[7]

[8]

[9] _The Complete FORTH_, by Alan Winfield, 1983, Sigma Technical Press, page xi.

[10]

[11] _Electronics & Computing_. "Jupiter Ace Review". 1982, November. page 70.

[12]

[13] Vickers, S: "Jupiter ACE Manual", page 176, 1982.

[14] Winfield, Alan: "The Complete Forth", Chapter 9 "Extending FORTH", Sigma Technical Press, 1983.

[15] Vickers, S: "Jupiter ACE Manual", page 120, 1982.

[16] Vickers, S: "Jupiter ACE Manual", page 136, 1982.

[17]

[18]

[19]

[20]  article in ETI Magazine, April 1984

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