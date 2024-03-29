, the last model of the series.]] The POWER MACINTOSH, later POWER MAC, is a family of personal computers designed, manufactured, and sold by Apple Computer, Inc. as part of its Macintosh brand from March 1994 until August 2006.

Described by MacWorld Magazine as "The most important technical evolution of the Macintosh since the Mac II debuted in 1987,"[1] the Power Macintosh was Apple's first computer to use a PowerPC processor. Software written for the Motorola 68030 and 68040 processors that were used in Macintoshes up to that point would not run on the PowerPC natively, so a Mac 68k emulator was included with System 7.1.2. While the emulator provided good compatibility with existing Macintosh software, performance was about one-third slower than comparable Macintosh Quadra machines.[2]

The Power Macintosh replaced the Quadra in Apple's lineup, and were initially sold in the same enclosures.[3] Over the next twelve years, the Power Macintosh evolved through a succession of enclosure designs, a rename to "Power Mac", five major generations of PowerPC chips, and a great deal of press coverage, design accolades, and controversy about performance claims. The Power Mac was discontinued as part of Apple's transition to Intel processors, making way for its replacement, the Mac Pro.


History

Early forays into RISC architecture (1988-1990)

The first Power Macintosh models were released in March 1994, but the development of Power Macintosh technology dates back to mid-1988.

Jean-Louis Gassée, president of Apple's product division, started the "Jaguar" project with the goal of creating a computer that would not only be the fastest desktop computer on the market, but would also accept commands by talking to the computer.[4] This was originally envisioned to be a new computer line altogether, not a Macintosh, and the Jaguar team was initially kept independent of the Macintosh team. This separation included operating system development, with the newly-conceived "Pink" being the platform for the new computer. Jaguar was also not intended to be a high-volume, mainstream system. Gassée's preference, as it was with the upcoming Macintosh IIfx, was to create a product that would compete in the high-end workstation market, previously not an area of strength for Apple. The decision to use RISC architecture was representative of a shift in the computer industry in 1987 and 1988, where RISC-based systems from Sun Microsystems, Hewlett-Packard and IBM were significantly outpacing the performance offered by systems based on Motorola's 68020 and 68030 processors and Intel's 80386 and 80486 CPUs.[5] Initially, Apple invested considerable time and effort in an attempt to create their own RISC CPU in a project code-named "Aquarius", even to a point where a Cray-1 supercomputer was purchased to assist with designing the chip. The company lacked the financial and manufacturing resources to produce a working product and the project was cancelled in 1989.[6]

By early 1990, Apple was in contact with a number of RISC vendors to find a suitable hardware partner. The team that had created the IIfx independently started experimenting with creating a new Macintosh product that would combine a Motorola 68030 processor with an AMD Am29000 (29k) RISC chip. Apple had already released a product built on the 29k called "Macintosh Display Card 8•24 GC", a so-called "Macintosh Toolbox accelerator" NuBus card that provided significantly faster drawing routines than those included on the Macintosh ROM.[7] The team's experiments resulted in a 68020 emulator implemented in RISC, but the 29k project was dropped in mid-1990 due to financial infeasibility.

Apple had initially looked at processors such as those from MIPS Technologies, Sun, and Acorn Computers (whose ARM architecture RISC processors would end up being used in the 1993 Apple Newton, 2001 iPod, and 2007 iPhone), as well as the Intel i860. Negotiations with Sun included the condition that Sun would use the Macintosh interface for its SPARC workstation computers in exchange for Apple using Sun's SPARC processors in Macintosh workstations; the deal fell through due to Apple's concern that Sun could not produce enough processors. Negotiations with MIPS to use the R4000 processor also included the condition that the Macintosh interface would be available as an alternative to Advanced Computing Environment. This deal also fell through due to Microsoft being a major partner in the ACE Consortium, as well as concerns about manufacturing capability. The Intel i860 was eliminated from consideration due to its high complexity. Apple did not consider IBM's POWER1 processor as an option, believing that IBM would not be willing to license it to third parties.

In mid-1990, Apple chose the Motorola 88110, an as yet unfinished chip that combined the 88100 CPU and 88200 FPU into a single package. For the rest of the year, Apple's engineers developed a 68k emulator that would work with this future chip. This project became known as "RLC", short form "RISC LC", a play on the name of Apple's upcoming Macintosh LC computer. By January 1991, the engineering team had produced a prototype of a Macintosh LC with its 68020 CPU being swapped out for an 88100 and a 68020 emulator. This prototype was able to use an unmodified Macintosh Toolbox ROM and could boot into System 7. A few months later, a second prototype was created, utilizing a Macintosh IIsi case with the now-completed Motorola 88100 chip.

Jaguar wasn't initially intended to be a high-volume mainstream system. Instead, mass-market RISC systems would follow sometime later. After Gassée left Apple in early 1990, the goal of the Jaguar project was refocused to be a mainstream Macintosh system instead of a new platform. The Jaguar project was folded into the Macintosh team in early 1991. While the Jaguar project itself never came to fruition, and Taligent never resulted in a functional operating system, many of the elements originally developed by the Jaguar hardware and software teams were brought to market in mid-1993 with the Centris 660AV and Quadra 840AV, including the Apple Adjustable Keyboard, Apple AudioVision 14 Display, GeoPort, and PlainTalk.[8] The new case designs introduced with the Centris 610 and Quadra 800 had also originated in the Jaguar team.

Development and partnership with IBM (1991-1993)

By mid-1991, there was internal concern at Apple that the 88100 may not be the correct processor to move forward with as no other computer manufacturers had committed to using the processor. Using IBM's POWER was again considered, but it was a seven-chip design at the time, which was not desirable from a cost perspective. Engineers from Apple and IBM's Advanced Workstations and Systems Division met in Austin, Texas to discuss creating a single-chip version of IBM's POWER1 RISC architecture. Motorola was also present at Apple's request. IBM had already been working on such a chip, called the RISC Single Chip (RSC), in an effort to reduce production cost of their entry-level RS/6000 workstation systems. In these meetings, a number of changes were proposed to RSC that would facilitate lower costs, lower power usage, and higher yield production suitable for both the Macintosh and future RS/6000 products.

In early July, executives at the three companies reached an agreement[9] which was formally announced to the public in October.[10] In addition to the new RISC architecture, which was given the name PowerPC, this "AIM alliance" had several goals, including creating an operating system based on Pink, an object-oriented scripting language called ScriptX, and a cross-platform media player called the Kaleida Media Player. Of the alliance, John Sculley said, "The Macintosh strategy paid off very well for us in the 1980s, but we didn't think we could establish the next generation of computing by using that model in the 1990s. Working with IBM, and making it available to everyone, we can have a much wider impact with these technologies than we did with the Macintosh."[11]

Development of the PowerPC 601 chip started in October 1991 and was completed in 21 months, with volume production starting in July 1993. The first computers to ship with a PowerPC chip were a line of IBM RS/6000 workstations in September 1993.[12] Many Macintosh application developers used these machines for development of the initial PowerPC ports of their products, as Macintosh-based PowerPC development tools were not ready. The PowerPC 603 (which focused on lowering power usage) and 604 (which focused on high performance) projects were also underway at the same time.

In July 1992, the decision was made to scale back the ambition of the initial system software release; instead of attempting to create a completely new kernel, Apple focused on producing a version of System 7 where portions of the existing Macintosh Toolbox ROM were rewritten to use native PowerPC code instead of emulating a 680x0. This provided a significant performance boost for certain highly utilized parts of the operating system, particularly QuickDraw.

The first public demonstration of the new Power Macintosh — specifically, a prototype of what would become the Power Macintosh 6100 – was at an Apple Pacific sales meeting in Hawaii in October 1992. The demo was a success, and in the following months, the product plan expanded to include three models: the entry-level 6100, a mid-range 7100 housed in the Macintosh IIvx's desktop case, and a high-end 8100 based on the Quadra 800's mini-tower case. A fourth project, the Macintosh Processor Upgrade Card, was started in July 1993 with the goal of providing a straightforward upgrade path to owners of Centris- and Quadra-based Macintosh computers. The importance of this was especially significant for the Quadra 700, 900 and 950, which were not going to receive full logic board replacements. Computers upgraded in this fashion received new names such as "Power Macintosh Q650" and "Power Macintosh 900".

Release and reception (1994-1995)

The original plan was to release the first Power Macintosh machine on January 24, 1994, exactly ten years after the release of the first Macintosh. Ian Diery, who was EVP and general manager of the Personal Computer Division at the time, moved the release date back to March 14 in order to give manufacturing enough time to build enough machines to fill the sales channels, and to ensure that the Macintosh Processor Upgrade Card would be available at the same time. This was a departure from prior practice at Apple; they had typically released upgrade packages months after the introduction of new Macintoshes.

The Power Macintosh was formally introduced at the Lincoln Center for the Performing Arts in Manhattan on March 14. Pre-orders for the new Power Macintosh models were brisk, with an announced 150,000 machines already having been sold by that date.[13] MacWorld's review of the 6100/60 noted that "Not only has Apple finally regained the performance lead it lost about eight years ago when PCs appeared using Intel's 80386 CPU, but it has pushed far ahead."[14] Performance of 680x0 software is slower due to the emulation layer, but MacWorld's benchmarks showed noticeably faster CPU, disk, video and floating point performance than the Quadra 610 it replaced. By January 1995, Apple had sold 1 million Power Macintosh systems.

Speed-bumped versions of the Power Macintosh line were introduced at the beginning of 1995, followed in April by the first PowerPC 603 models: an all-in-one model called the Power Macintosh 5200 LC and a replacement for the Quadra 630 called the Power Macintosh 6200. Performa variants of these machines were sold as well, continuing the practice of re-branding other Macintosh models for sale in department stores and big-box electronics retailers. While the 5200 LC was well-received by critics for its design, performance, and cost, both it and the 6200 suffered from stability issues (and in the case of the 5200, display issues as well) that could only be solved by bringing the machine to an Apple dealer for replacement parts.[15]

By mid-1995, the burgeoning Power Macintosh line had all but completely supplanted every prior Macintosh line, with only the high-end Quadra 950 and two low-cost education models (the all-in-one Macintosh LC 580 and desktop LC 630) remaining in production. The competitive marketplace for "accelerator cards" that had existed for earlier Macintosh systems largely disappeared due to the comparatively low price of Apple's Macintosh Processor Upgrade Card (US$600).[16] DayStar Digital sold upgrade cards for the IIci and various Quadra models, and full motherboard replacements were available from Apple as well. Macintosh clones from companies like DayStar Digital and Power Computing were also coming to the market at this time, undercutting Apple's prices.

Transition to standardized hardware (1995-1999)

When the Power Macintosh was introduced, it included the same internal and external expansion connections as other Macintosh models, all of which (save for audio input and output) were either wholly proprietary to, or largely exclusive to Apple computers. Over the next five years, Apple replaced all these ports with industry-standard connectors.

The first generation of Power Macintoshes had shipped with NuBus, but by the end of 1993 it was becoming clear that Intel's PCI bus was going to be the widely adopted future of internal expansion.[17] Apple's position as a relatively small player in the larger personal computer market meant that few device manufacturers invested in creating both NuBus- and PCI-compatible versions of their cards. The first PCI-based system was the range-topping Power Macintosh 9500, introduced in May 1995. This was followed shortly afterwards by the introduction of the "Power Surge" line of second-generation Power Macintosh systems – the Power Macintosh 7200, 7500 and 8500. The 8500 and 9500 were built around the new PowerPC 604, offering speeds starting at 120 MHz.[18] InfoWorld's review of the 8500 showed a speed improvement in their "business applications suite" benchmark from 10 minutes with the 8100/100, to 7:37 for the 8500/120. They also noted that the 8500 runs an average of 24 to 44 percent faster than a similarly-clocked Intel Pentium chip, increasing to double on graphics and publishing tasks.

The transition to PCI continued into 1996, with the introduction of the all-in-one 5400, desktop 6300/160 (usually sold as a Performa 6360), and mini-tower 6400 models. The success of the Macintosh clone market also prompted Apple to produce its own inexpensive machine using parts and production techniques that were common in both the clone market and the Wintel desktop market at the time. The Power Macintosh 4400 (sold as a 7220 in Asia and Australia) employed bent sheet metal instead of plastic for its case internals, and included a standard ATX power supply instead of a switched-mode power supply that was standard with Apple computers up to that point.

Alongside the transition to PCI, Apple began a gradual transition away from SCSI hard disks to IDE as a cost-saving measure, both for themselves and for users who wanted to upgrade their hard drives. The low-end 5200 and 6200 were the first to adopt IDE internal drives, though Apple's proprietary 25-pin external SCSI connector remained. The beige Power Macintosh G3 models being the last to include SCSI drives as standard, and it was the last Macintosh to include the external SCSI connector. When the Power Macintosh G3 (Blue and White) was introduced in early 1999, the port was replaced by two FireWire 400 ports. The Blue and White G3 was also the last Macintosh to include Apple Desktop Bus ports, a proprietary technology created by Steve Wozniak to connect keyboards, mice and software protection dongles such as those from Avid Technology.[19] Two USB ports were also included, making this the only Power Macintosh to include both ADB and USB.

Another port that was retired during this time is the Apple Attachment Unit Interface. This was a proprietary version of the industry-standard Attachment Unit Interface connector for 10BASE5 Ethernet that Apple had created to avoid confusion with the 15-pin connector that Apple used for connecting external displays.[20] The AAUI port required a costly external transceiver to connect to a network. By the early 1990s, the networking industry was coalescing around the 10BASE-T connector, leading Apple to include this port alongside AAUI in mid-1995, starting with the Power Macintosh 9500. The Power Macintosh G3 excluded the AAUI port.

The Power Mac G4 (AGP Graphics) was released in the second half of 1999; it was the first Power Macintosh to include only industry-standard internal and external expansion. For some years afterwards, a number of third parties created dongles that provided backwards compatibility to users of newer Power Mac systems with old hardware. This included companies like Griffin Technology, MacAlly Perhiperals, Rose Electronics and many others. In some cases, these companies produced adapters that matched the aesthetic design of the Power Mac.[21]

Industrial design and the Megahertz Myth (1999-2002)

, Harman Kardon speakers, keyboard, and mouse.]] Shortly after Steve Jobs' return to Apple in 1997, Jony Ive was appointed senior vice president of industrial design. Building on the critical and commercial success of the iMac, Ive and his team created an entirely new case design for the Power Macintosh G3, combining many of the aesthetic principles of the iMac (curves, translucent plastics, use of color) with the ease-of-access characteristics of the company's popular "Outrigger" Macintosh models from previous years. The result was the Power Macintosh G3 (Blue and White), a machine that received considerable plaudits from reviewers, including PC Magazine's Technical Excellence Award for 1999.[22] "The Power Mac provides the fastest access to the insides of a computer we've ever seen," they wrote. "Just lift a handle and a hinged door reveals everything inside." This case design, code-named "El Capitan",[23] was retained through the entire lifetime of the Power Mac G4. The introduction of the Blue and White G3 mini-tower also marked the end of the desktop and all-in-one Power Macintosh case designs, the latter being replaced by the iMac.

A second model called the Power Mac G4 Cube was introduced in 2000, which fitted the specifications of a mid-range Power Mac G4 into a cube less than 9" in each axis. This model was on sale for about a year before being discontinued, and was not considered a sales success (150,000 units were sold, about one-third of Apple's projections),[24] but the distinctive design of both the computer and its accompanying Harman Kardon speakers prompted the Museum of Modern Art in New York City to retain them in their collection.[25]

The PowerPC chips in the G3 and G4 became a central part of Apple's branding and marketing for the Power Macintosh. For example, the Blue and White G3 features the letters "G3" on the side that are fully one-third the height of the entire case, a significant departure from the small labels typically used on prior Macintosh computers. And when the Power Mac G4 was introduced, print ads included pictures of the G4 chip and mentioned its AltiVec instruction set by its own marketing name, "Velocity Engine".[26] A related element of Apple's marketing strategy, especially after mid-2001, was to highlight what they described as the "Megahertz myth", challenging the belief that a processor's clock speed is directly correlated with performance. This had become important with the introduction of Intel's Pentium 4, which featured significantly higher clock speeds than competing chips from Sun, IBM, and AMD, but without a corresponding performance benefit.

The company's public presentations -- Stevenotes in particular -- often featured lengthy segments pitting a high-powered Compaq or Dell computer against the Power Macintosh in a series of benchmarks and scripted tasks, usually in Adobe Photoshop.[27] These presentations often showed the Power Macintosh besting Intel's Pentium chips by margins significantly exceeding 50%, but independent benchmarks did not bear this out. InfoWorld reviewer Jennifer Plonka reported that the 400 MHz G3 was 11% slower than a comparably-specced Pentium II-450 in an Office applications suite test, while Photoshop 5.0 was faster by 26%.[28] And in 2003, Maximum PC ran a variety of gaming, Photoshop and LightWave 3D benchmarks, and reported that the Dual 1.25 GHz G4 system was about half the speed of a dual-processor Intel Xeon Prestonia 2.8 GHz system.[29] A related criticism leveled at Power Mac systems from this time, particularly the G4 Mirrored Drive Doors, was the increased fan noise level compared to older systems.[30][31]

The Power Mac G5 and the end of Power (2003-2006)

By the time the Power Mac G5 was unveiled at Apple's Worldwide Developers Conference in July 2003, Apple's desktop range had fallen significantly behind competing computers in performance. The G5 closed much of this gap by moving to the PowerPC 970 processor with clock speeds up to 2.0 GHz, and a full 64-bit architecture. It also introduced a significantly revised enclosure design, replacing the use of plastics with anodized aluminum alloy. Because of the front panel's visual similarity to a grater, the Power Mac G5 came to be known as the "Cheese Grater Mac".[32]

Reviews were generally positive. InfoWorld described the G5 as "Apple's best work yet", and said it "delivers on the present need for rapid computing, deep multitasking, and responsive user interfaces — as well as the future need for mainstream computers that rapidly process and analyze massive data sets."[33] PC Magazine again awarded the Power Mac G5 with its Award for Technical Excellence for 2003.[34] However, the G5's heavy weight (10 pounds more than the previous year's Quicksilver Power Mac G4), limited internal expansion options, issues with ground loop, and noise in the single-processor models' power supply units resulted in significant criticism of the product.[35] Apple also continued to make unsubstantiated performance claims about the new Power Mac. This resulted in the Advertising Standards Authority for the United Kingdom banning Apple from using the phrase "the world's fastest, most powerful personal computer" to describe the Power Mac G5 after independent tests carried out by the Broadcast Advertising Clearance Centre determined the claim to be false.[36] Another claim made by Steve Jobs at the 2003 Worldwide Developers Conference was that the company would be selling a 3 GHz G5 by mid-2004; this never happened.[37]

Three generations of Power Mac G5 were released before it was discontinued during Apple's transition to Intel processors. The announcement of the transition came in mid-2005, but the third generation of G5 systems was introduced towards the end of 2005. Most notably in this generation was the introduction of a Quad-core 2.5 GHz system. Not only was this the first Apple computer with four processing cores, it was the first to incorporate PCI Express instead of PCI-X for internal expansion.[38] It also required an IEC 60320 C19 power connector that was more common on rackmounted server hardware, instead of the industry-standard C13 connector used with personal computers.

The official end to the Power Macintosh line came at the 2006 Worldwide Developers Conference, where Phil Schiller introduced its replacement, the Mac Pro. The G5's enclosure design was retained for the Mac Pro and continued to be used for seven more years, making it among the longest-lived designs in Apple's history.[39]


Models

The Power Macintosh models can be broadly classified into two categories, depending on whether they were released before or after Apple introduced its "four quadrant" product strategy in 1998. Before the introduction of the Power Macintosh G3 (Blue and White) in 1999, Apple had shipped Power Macintosh-labelled machines in nine different form factors, some of which were carry-overs from pre-PowerPC product lines, such as the Quadra/Centris 610 and the IIvx. This was reduced to one model in the new product strategy, with the exception of the Power Mac G4 Cube in 2000 and 2001.

1994-1997

Apple named Power Macintosh models from this period after the first pre-PowerPC model of Macintosh to use a particular form factor, followed by a slash and the speed of the CPU. For example, the Power Macintosh 6300/120 uses the Quadra 630's form factor and has a CPU.

Machines with "AV" in their name denote variants that include extended audio-video capabilities.

Machines with "PC Compatible" in their name include a separate card with an x86-compatible CPU; these models are therefore capable of running MS-DOS and Microsoft Windows applications, typically Windows 3.1.

Machines with "MP" in their name denote machines that include two CPUs.

These early models had two distinct generations. The first generation uses the PowerPC 601 and 603 processors and used the old NuBus expansion slots, while the second generation uses the faster 603e, 604 and 604e chips as well as industry-standard PCI expansion slots. The second generation also makes use of Open Firmware, allowing them to more easily boot alternate operating systems (including OS X via XPostFacto), though use of various hacks was still necessary.

PM 4400

The PM 4400 is a desktop case with a height of , suitable for horizontal placement with a monitor on top.

-   Power Macintosh 4400/160, 200, 200 (PC Compatible) (Marketed as the Power Macintosh 7220 in some regions)

PM 5200

The PM 5200 is an all-in-one form factor with specifications and internal designs similar to the Quadra 630. Collectively these machines are sometimes referred to as the "Power Macintosh/Performa 5000 series".

-   Power Macintosh 5200/75 LC
-   Power Macintosh 5260/100, 120
-   Power Macintosh 5300/100 LC
-   Power Macintosh 5400/120, 180, 200
-   Power Macintosh 5500/225, 250

Centris 610

, a version of the first Macintosh to use a PowerPC processor.]] The Centris 610 form factor is a low-profile "pizza-box" design with a height of , intended to be placed on a desktop with a monitor on top.

-   Power Macintosh 6100/60, 60AV, 66, 66AV, 66 (DOS Compatible)

Quadra 630

The Quadra 630 form factor is a horizontally-oriented design with a height of , suitable for placing a monitor on top.

-   Power Macintosh 6200/75
-   Power Macintosh 6300/120, 160

Performa 6400

The Performa 6400 form factor is a mini-tower design, suitable for being placed beside a monitor.

-   Power Macintosh 6400/180, 200
-   Power Macintosh 6500/225, 250, 275, 300

IIvx

The IIvx form factor is a horizontally-oriented desktop form factor with a height of , suitable for placing a monitor on top.

-   Power Macintosh 7100/66, 66AV, 80, 80AV

PM 7500

The PM 7500 form factor is a horizontally-oriented desktop design with a height of , suitable for placing a monitor on top.

-   Power Macintosh 7200/75, 90, 120 (PC), 200 (PC)
-   Power Macintosh 7300/166, 180 (PC), 200
-   Power Macintosh 7500/100
-   Power Macintosh 7600/120, 132, 200

Quadra 800

The Quadra 800 form factor is a mini-tower design, with a width of . , the first Power Macintosh based on the Quadra 800 form factor.]]

-   Power Macintosh 8100/80, 80AV, 100, 100AV, 110, 110AV
-   Power Macintosh 8115/110
-   Power Macintosh 8200/100, 120
-   Power Macintosh 8500/120, 132, 150, 180
-   Power Macintosh 8515/120

PM 9600

The PM 9600 form factor is a mini-tower design with a width of .

-   Power Macintosh 8600/200, 250, 300
-   Power Macintosh 9500/120, 132, 150, 180MP, 200
-   Power Macintosh 9515/132
-   Power Macintosh 9600/200, 200MP, 233, 300, 350

1997-2006

Starting with the Power Macintosh G3, Apple changed its product naming to include the generation of PowerPC CPU, with the name of the form factor or a key feature afterwards in brackets. The Power Mac G5's name was changed to incorporate the time period in which the model was released. The all-in-one models would eventually be spun off into the iMac line, whilst the compact form factor models would be spun off into the Mac Mini.

-   Power Macintosh G3 (Desktop, Mini Tower, All-In-One, Blue and White)
-   Power Mac G4 (PCI Graphics, AGP Graphics, Gigabit Ethernet, Digital Audio, Quicksilver, Quicksilver 2002, Mirrored Drive Doors, Mirrored Drive Doors FW800, Mirrored Drive Doors 2003)
-   Power Mac G4 Cube
-   Power Mac G5 (original, June 2004, Late 2004, Early 2005, Late 2005)


Naming

The _POWER MAC_ brand name was used for Apple's high-end tower style computers, targeted primarily at businesses and creative professionals, in differentiation to their more compact "iMac" line (intended for home use) and the "eMac" line (for the education markets). They were usually equipped with Apple's newest technologies, and commanded the highest prices among Apple desktop models. Some Power Mac G4 and G5 models were offered in dual-processor configurations.

Prior to the _Power Mac_ name change, certain _Power Macintosh_ models were otherwise identical to their lower-cost re-branded siblings sold as the Macintosh LC and Macintosh Performa, as well as the dedicated Apple Workgroup Server and Macintosh Server G3 & G4 lines. Other past Macintosh lines which used PowerPC processors include the PowerBook 5300 and later models, iMac, iBook and Xserve as well as the Apple Network Server, which was not technically a Macintosh.


Advertising and marketing

Apple positioned the Power Macintosh as a high-end personal computer aimed at businesses and creative professionals with an advertising campaign consisting of several television commercials and print ads. The television commercials used the slogan "_The Future Is Better Than You Expected_", featuring the first three Power Macintosh computers to showcase special features such as networking and MS-DOS compatibility.

In 1993 and 1994, a television advertising campaign created by BBDO aired with the slogan "It does more, it costs less, it's that simple."


See also

-   List of Macintosh models grouped by CPU type


References


External links

-   Apple.com – Support – Specifications – Power Mac
-   Everymac.com – Apple Power Macintosh systems
-   Lowendmac.com – Power Mac Index

Category:Computer-related introductions in 1994 Power_Macintosh

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

[17]

[18]

[19]

[20]

[21]  KVMSO.com | access-date = 2018-01-14 }}

[22]

[23]

[24]  Cult of Mac|date=2017-07-03|work=Cult of Mac|access-date=2018-01-17|language=en-US}}

[25]  MoMA|website=The Museum of Modern Art|language=en|access-date=2018-01-14}}

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