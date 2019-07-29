Steve_Russell_and_PDP-1.png with Steve Russell, creator of _Spacewar!_ The large cabinet houses the processor. The main control panel is just above the desk, the paper tape reader is above it (metallic), and the output of the Teletype model BRPE paper tape punch above that (vertical slot). A storage tray for eight fanfold paper tapes is attached to the top panel. At the left is the IBM Model B typewriter modified by Soroban, and the Type 30 CRT display is to the far right.]]

The PDP-1 (_Programmed Data Processor-1_) is the first computer in Digital Equipment Corporation's PDP series and was first produced in 1959. It is famous for being the computer most important in the creation of hacker culture at MIT, BBN and elsewhere.[1] The PDP-1 is the original hardware for playing history's first game on a minicomputer, Steve Russell's _Spacewar!_[2]


Description

The PDP-1 uses an 18-bit word size and has 4096 words as standard main memory (equivalent to 9,216 eight-bit bytes, though the system actually uses six-bit bytes), upgradable to 65,536 words. The magnetic core memory's cycle time is 5.35 microseconds (corresponding roughly to a "clock speed" of 187 kilohertz); consequently most arithmetic instructions take 10.7 microseconds (93,458 operations per second) because they use two memory cycles: the first to fetch the instruction, the second to fetch or store the data word. Signed numbers are represented in ones' complement. The PDP-1 has computing power roughly equivalent to a 1996 pocket organizer and a little less memory.[3]

Dec_SYSTEM_BUILDING_BLOCKS_logo.jpg Dec_SYSTEM_BUILDING_BLOCKS_1103.jpg PDP-1_System_Building_Block_No._4106.jpg – note that one transistor (yellow) has been replaced]]

The PDP-1 uses 2,700 transistors and 3,000 diodes.[4] It is built mostly of DEC 1000-series System Building Blocks, using micro-alloy and micro-alloy diffused transistors with a rated switching speed of 5 MHz. The System Building Blocks are packaged into several 19-inch racks. The racks are themselves packaged into a single large mainframe case, with a hexagonal control panel containing switches and lights mounted to lie at table-top height at one end of the mainframe. Above the control panel is the system's standard input/output solution, a punched tape reader and writer.

The PDP-1 weighed about .[5]


History

The design of the PDP-1 is based on the pioneering TX-0 and TX-2 computers, designed and built at MIT Lincoln Laboratory. Benjamin Gurley was the lead engineer on the project.[6] After showing a prototype at the Eastern Joint Computer Conference in December 1959, DEC delivered the first PDP-1 to Bolt, Beranek and Newman (BBN) in November 1960,[7][8] and it was formally accepted in early 1961.[9] In September 1961, DEC donated the PDP-1 to MIT,[10] where it was placed in the room next to its ancestor, the TX-0 computer,[11] which was by then on indefinite loan from Lincoln Laboratory.

In this setting, the PDP-1 quickly replaced the TX-0 as the favorite machine among the budding hacker culture, and served as the platform for a long list of computing innovations. This list includes one of the earliest digital video games, _Spacewar!_,[12] the first text editor, the first word processor, the first interactive debugger, the first credible computer chess program, one of the very earliest time-sharing systems (BBN Time-Sharing System), and some of the earliest computerized music.[13] At the Computer History Museum TX-0 alumni reunion in 1984, Gordon Bell said DEC's products developed directly from the TX-2, the successor to the TX-0 which had been developed at what Bell thought was a bargain price at the time, about . At the same meeting, Jack Dennis said Ben Gurley's design for the PDP-1 was influenced by his work on the TX-0 display. [14]

The PDP-1 sold in basic form for .[15] BBN's system was quickly followed by orders from Lawrence Livermore and Atomic Energy of Canada (AECL), and eventually 53 PDP-1s were delivered until production ended in 1969.[16][17] All of these machines were still being actively used in 1970, and several were eventually saved. MIT's example was donated to The Computer Museum, Boston, and from there ended up at the Computer History Museum (CHM). A late version of _Spacewar!_ on paper tape was still tucked into the case. PDP-1 #44 was found in a barn in Wichita, Kansas in 1988, apparently formerly owned by one of the many aviation companies in the area, and rescued for the Digital Historical Collection, also eventually ending up at the CHM.[18] AECL's computer was sent to Science North, but was later scrapped.

The launch of the PDP-1 marked a radical shift in the philosophy of computer design: it is the first commercial computer that focuses on interaction with the user rather than just the efficient use of computer cycles.[19]

The first ever reference to malicious hacking is 'telephone hackers' in MIT's student newspaper, _The Tech_ of hackers trying up the lines with Harvard, configuring the PDP-1 to make free calls, war dialing and accumulating large phone bills.[20][21][22]


Peripherals

PDP-1.jpg The PDP-1 uses punched paper tape as its primary storage medium.[23] Unlike punched card decks, which could be sorted and re-ordered, paper tape is difficult to physically edit. This inspired the creation of text-editing programs such as Expensive Typewriter and TECO. Because it is equipped with online and offline printers that were based on IBM electric typewriter mechanisms, it is capable of what, in 1980s terminology, would be called "letter-quality printing" and therefore inspired TJ-2, arguably the first word processor.

The console typewriter is the product of a company named Soroban Engineering. It uses an IBM Model B Electric typewriter mechanism, modified by the addition of switches to detect keypresses, and solenoids to activate the typebars. It uses a traditional typebar mechanism, not the "golfball" IBM Selectric typewriter mechanism, which was not introduced until the next year. Lettercase is selected by raising and lowering the massive type basket. The Soroban is equipped with a two-color inked ribbon (red and black), and the interface allows color selection. Programs commonly use color-coding to distinguish user input from machine responses. The Soroban mechanism is unreliable and prone to jamming, particularly when shifting case or changing ribbon color.

Offline devices are typically Friden Flexowriters that have been specially built to operate with the FIO-DEC character coding used by the PDP-1. Like the console typewriter, these are built around a typing mechanism that is mechanically the same as an IBM Electric typewriter.[24] However, Flexowriters are highly reliable and were often used for long unattended printing sessions. Flexowriters have electromechanical paper tape punches and readers which operate synchronously with the typewriter mechanism. Typing rates are about ten characters per second. A typical PDP-1 operating procedure is to output text to punched paper tape using the PDP-1's "high speed" (60-character-per-second) Teletype model BRPE punch, then to hand carry the tape to a Flexowriter for offline printing.

In later years, DECtape drives were added to some PDP-1 systems, as a more convenient method of backing up programs and data, and to enable early time-sharing. This latter application usually requires a secondary storage medium for swapping programs and data in and out of core memory, without requiring manual intervention. For this purpose, DECtapes are far superior to paper tapes, in terms of reliability, durability, and speed. Early hard disks were expensive and notoriously unreliable; if available and working, they are used primarily for speed of swapping, and not for permanent file storage.

Graphics display

The Type 30 Precision CRT display is a point plotting display device capable of addressing 1024 by 1024 addressable locations at a rate of 20,000 points per second.[25] A special "Display One Point On CRT" instruction is used to build up images, which have to be refreshed many times per second.[26] The CRT, which was originally developed for use in radar, is in diameter and uses a long-persistence P7 phosphor.[27] A light pen can be used with the Type 30 to pick points on the display. An optional character generator and hardware for line and curve generation are available.[28]


Computer music

MIT hackers also used the PDP-1 for playing music in four-part harmony, using some special hardware – four flip-flops directly controlled by the processor (the audio signal is filtered with simple RC filters). Music was prepared via Peter Samson's _Harmony Compiler_, a sophisticated text-based program with some features specifically oriented toward the efficient coding of baroque music. Several hours of music were prepared for it, including Bach fugues, all of Mozart's _Eine kleine Nachtmusik_, the _Ode to Joy_ movement concluding Beethoven's _Symphony No. 9_, Christmas carols, and numerous popular songs.


Current status

PDP-1_control_board.jpg

Only three PDP-1 computers are still known to exist, and all three are in the collection of the Computer History Museum (CHM). One is the prototype formerly used at MIT, and the other two are production PDP-1C machines. One of the latter, serial number 55 (the last PDP-1 made) has been restored to working order, is on exhibit, and is demonstrated on two Saturdays every month. The restoration is described on a special web page of the Computer History Museum. The demonstrations include:

-   the game _Spacewar!_
-   graphics demonstrations such as Snowflake
-   playing music

Software simulations of the PDP-1 exist in SIMH and MESS, and binary image paper tapes of the software exist in the bitsavers.org archives.


See also

-   History of computers
-   History of computer science
-   _Spacewar!_
-   Tech Model Railroad Club
-   Timeline of computing


Notes


External links

-   Restoring the DEC PDP-1 Computer Exhibit — The Computer History Museum's restoration project
-   DEC PDP-1 Collection at the Computer History Museum – includes Moving Image resources on their PDP-1 and the restoration project, and some music files in the Audio section.
-   DEC PDP-1 information – DEC's 1963 _PROGRAMMED DATA PROCESSOR-1 HANDBOOK_
-   bitsavers.org PDP-1 directory – Scanned documentation incl PDP-1 handbook, maintenance manual, price list, diagnostic documentation, etc.
-   PDP-1 Music – Listen to MP3s of music created on the PDP-1
-   The Dot Eaters entry on the PDP-1 and its use in the development of the first videogame, Spacewar!
-   Story of the development of the PDP-1 from the original DEC documentation, including letters of delivery, price sheets, and photos.
-   PDP-1 emulator in JavaScript running Spacewar! code.
-   DEC PDP-1 music (video on YouTube)
-   FPGA re-creation of PDP-1 with CRT, console and teletype
-   History of the PDP-1 at Stanford University
-   Photo of PDP-1 at LRNL.

Category:DEC hardware Category:Minicomputers Category:Transistorized computers Category:Early computers Category:18-bit computers Category:Computer-related introductions in 1959 Category:Computer-related introductions in 1960

[1]

[2]

[3]

[4] "PDP-1 computer". Computer History Museum.

[5]

[6]

[7] "DIGITAL Computing Timeline, 1960"

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]  pg. 3

[17] "History of Computing", Lexikon Services,

[18] Thomas Bergin, "Digital Equipment Corporation", Computer History Museum

[19]

[20]

[21]

[22]

[23]

[24] reminiscence by Bob Mast: "The Flexowriter was first manufactured by IBM, during WWII, to be used as an automatic letter writer. After the war several IBMers bought the rights and formed Commercial Controls, Inc. They manufactured some in the old IBM Electric typewriter building in Rochester NY. In the late 1950s, Friden bought Commercial Controls."

[25]

[26]

[27]

[28]