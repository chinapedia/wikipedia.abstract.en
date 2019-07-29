Micromodem_II_in_Apple_II.jpg ]]

The APPLE II (stylized as APPLE ][) is an 8-bit home computer and one of the world's first highly successful mass-produced microcomputer products,[1] designed primarily by Steve Wozniak (Steve Jobs oversaw the development of the Apple II's foam-molded plastic case[2] and Rod Holt developed the switching power supply).[3] It was introduced by Jobs and Wozniak at the 1977 West Coast Computer Faire and was the first consumer product sold by Apple Computer, Inc. It is the first model in a series of computers which were produced until Apple IIe production ceased in November 1993.[4] The Apple II marks Apple's first launch of a personal computer aimed at a consumer market—branded toward American households rather than businessmen or computer hobbyists.[5] Trinity77.jpg _Byte_ magazine referred to the Apple II, Commodore PET 2001 and the TRS-80 as the "1977 Trinity."[6] The Apple II had the defining feature of being able to display color graphics, and this capability was the reason why the Apple logo was redesigned to have a spectrum of colors.


History

By 1976, Steve Jobs had convinced the product designer Jerry Manock (who had formerly worked at Hewlett Packard designing calculators) to create the "shell" for the Apple II—a smooth case inspired by kitchen appliances that would conceal the internal mechanics.[7] The earliest Apple IIs were assembled in Silicon Valley, and later in Texas;[8] printed circuit boards were manufactured in Ireland and Singapore. The first computers went on sale on June 10, 1977[9][10] with a MOS Technology 6502 microprocessor running at 1.023 MHz, two game paddles[11] (no longer bundled as of 1980 because they violated FCC regulations),[12] 4 KB of RAM, an audio cassette interface for loading programs and storing data, and the Integer BASIC programming language built into the ROMs. The video controller displays 24 lines by 40 columns of monochrome, uppercase-only (the original character set matches ASCII characters 20_(h) to 5F_(h)) text on the screen, with NTSC composite video output suitable for display on a TV monitor, or on a regular TV set by way of a separate RF modulator. The original retail price of the computer was $1,298[13] (with 4 KB of RAM) and $2,638 (with the maximum 48 KB of RAM).[14] To reflect the computer's color graphics capability, the Apple logo on the casing has rainbow stripes,[15] which remained a part of Apple's corporate logo until early 1998. Perhaps most significantly, the Apple II was a catalyst for personal computers across many industries; it was responsible for opening the doors to software marketed at consumers.[16]


Overview

In the May 1977 issue of _Byte_, Steve Wozniak published a detailed description of his design; the article began, "To me, a personal computer should be small, reliable, convenient to use, and inexpensive."[17]

The Apple II used peculiar engineering shortcuts to save hardware and reduce costs, such as:

-   Taking advantage of the way the 6502 processor only accesses memory on alternate phases of the clock cycle, the video generation circuitry's memory access on the otherwise unused phase avoids memory contention issues and interruptions of the video stream.
-   This arrangement simultaneously eliminated the need for a separate refresh circuit for the DRAM chips, as the video transfer accessed each row of the dynamic memory within the timeout period. In addition, it did not require separate RAM chips for the video RAM, while the PET and TRS-80 had SRAMs for the video.
-   Rather than use a complex analog-to-digital circuit to read the outputs of the game controller, Wozniak used a simple timer circuit whose period is proportional to the resistance of the game controller, and used a software loop to measure the timer.
-   A single 14.31818 MHz master oscillator was divided by various ratios to produce all other required frequencies, including the microprocessor clock signals, the video transfer counters, and the color-burst samples.

The text and graphics screens have a complex arrangement. For instance, the scanlines were not stored in sequential areas of memory. This complexity was reportedly due to Wozniak's realization that the method would allow for the refresh of the dynamic RAM as a side effect (as described above). This method had no cost overhead to have software calculate or look up the address of the required scanline and avoided the need for significant extra hardware. Similarly, in the high-resolution graphics mode, color is determined by pixel position and thus can be implemented in software, saving Wozniak the chips needed to convert bit patterns to colors. This also allowed for subpixel font rendering, since orange and blue pixels appear half a pixel-width farther to the right on the screen than green and purple pixels.[18]

The Apple II at first used data cassette storage like most other microcomputers of the time. In 1978, the company introduced an external -inch floppy disk drive, the Disk II, attached via a controller card that plugs into one of the computer's expansion slots (usually slot 6). The Disk II interface, created by Wozniak, is regarded as an engineering masterpiece for its economy of electronic components.[19][20]

The approach taken in the Disk II controller is typical of Wozniak's designs. With a few small-scale logic chips and a cheap PROM (programmable read-only memory), he created a functional floppy disk interface at a fraction of the component cost of standard circuit configurations.


Case design

Steve Jobs extensively pushed to give the Apple II a case that looked visually appealing and sellable to people outside of electronics hobbyists, rather than the generic wood and metal boxes typical of early microcomputers. The result was a futuristic-looking molded white plastic case. Jobs also paid close attention to the keyboard design and decided to use dark brown keycaps as it contrasted well with the case.

The first production Apple IIs had hand-molded cases; these had visible bubbles and other lumps in them from the imperfect plastic molding process, which was soon switched to machine molding. In addition, the initial case design had no vent openings, causing high heat buildup from the PCB and resulting in the plastic softening and sagging. Apple added vent holes to the case within three months of production; customers with the original case could have them replaced at no charge.


PCB revisions

The Apple II's printed circuit board (PCB) underwent several revisions as Steve Wozniak made modifications to it. The earliest version was known as Revision 0, and the first 6,000 units shipped used it. Later revisions added a color killer circuit to prevent color fringing when the computer was in text mode, as well as modifications to improve the reliability of cassette I/O. Revision 0 Apple IIs powered up in an undefined mode and had garbage on-screen, requiring the user to press Reset. This was eliminated on the later board revisions. Revision 0 Apple IIs could display only 4 colors in hi-res mode, but Wozniak was able to increase this to 6 hi-res colors on later board revisions.

The PCB had three RAM banks for a total of 24 RAM chips. Original Apple IIs had jumper switches to adjust the RAM size, and RAM configurations could be 4, 8, 12, 16, 20, 24, 32, 36, or 48k. The three smallest memory configurations used 4kx1 DRAMs, with larger ones using 16kx1 DRAMs, or mix of 4k and 16k banks (the chips in any bank have to be the same size). The early Apple II+ models retained this feature, but after a drop in DRAM prices, Apple redesigned the circuit boards without the jumpers so that only 16kx1 chips were supported. A few months later they started shipping all machines with a full 48 KB complement of DRAM.

Unlike most machines, all integrated circuits on the Apple II PCB were socketed; although this cost more to manufacture and created the possibility of loose chips causing a system malfunction, it was considered preferable to make servicing and replacement of bad chips easier.

The Apple II PCB lacks any means of generating an IRQ, although expansion cards may generate one. Program code had to stop everything to perform any I/O task; like many of the computer's other idiosyncrasies, this was due to cost reasons and Steve Wozniak assuming interrupts were not needed for gaming or using the computer as a teaching tool.


Display and graphics

Color on the Apple II series uses a quirk of the NTSC television signal standard, which made color display relatively easy and inexpensive to implement. The original NTSC television signal specification was black-and-white. Color was added on later by adding a 3.58-MHz subcarrier signal that was partially ignored by black-and-white TV sets. Color is encoded based on the _phase_ of this signal in relation to a reference _color burst_ signal. The result is that the position, size, and intensity of a series of pulses define color information. These pulses can translate into _pixels_ on the computer screen, with the possibility of exploiting composite artifact colors.

The Apple II display provides two pixels per subcarrier cycle. When the color burst reference signal is turned on and the computer attached to a color display, it can display green by showing one alternating pattern of pixels, magenta with an opposite pattern of alternating pixels, and white by placing two pixels next to each other. Blue and orange are available by tweaking the offset of the pixels by half a pixel-width in relation to the color-burst signal. The high-resolution display offers more colors by compressing more (and narrower) pixels into each subcarrier cycle.

The coarse, low-resolution graphics display mode works differently, as it can output a pattern of dots per pixel to offer more color options. These patterns are stored in the character generator ROM and replace the text character bit patterns when the computer is switched to low-res graphics mode. The text mode and low-res graphics mode use the same memory region and the same circuitry is used for both.

A single HGR page occupied 8k of RAM; in practice this meant that the user had to have at least 12k of total RAM to use HGR mode and 32k to use two pages. Early Apple II games from the 1977 to 79 period often ran only in text or low resolution mode to support users with small memory configurations; HGR not being near universally supported by games until 1980.


Sound

Rather than a dedicated sound-synthesis chip, the Apple II has a toggle circuit that can only emit a click through a built-in speaker or a line out jack; all other sounds (including two-, three- and, eventually, four-voice music and playback of audio samples and speech synthesis) are generated entirely by software that clicked the speaker at just the right times. Similar techniques are used for cassette storage: the cassette output works the same as the speaker, and the input is a simple zero-crossing detector that serves as a relatively crude (1-bit) audio digitizer. Routines in the ROM encode and decode data in frequency-shift keying for the cassette.


Programming languages

Initially, the Apple II was shipped with Integer BASIC encoded in the motherboard ROM chips. Written by Wozniak, the interpreter enabled users to write software applications without needing to purchase additional development utilities. Written with game programmers and hobbyists in mind, the language only supported the encoding of numbers in 16-bit integer format. Since it only supported integers between -32768 and +32767 (signed 16-bit integer), it was less suitable to business software and Apple soon received complaints from customers. Because Steve Wozniak was too busy developing the Disk II hardware, he did not have time to modify Integer BASIC for floating point support, so Apple instead licensed Microsoft's 6502 BASIC to create Applesoft BASIC. Disk users normally purchased a so-called Language Card which had Applesoft in ROM and sat below the Integer BASIC ROM in system memory. The user could switch between either BASIC by typing FP or INT at the BASIC prompt. Apple also offered a different version of Applesoft for cassette users which occupied low memory and was started by using the LOAD command in Integer BASIC.

As shipped, the machine incorporated a "monitor" program which supported functions such as displaying and altering the contents of the computer's RAM memory in hexadecimal format, either one byte at a time or in blocks of 256 bytes at once. This feature enabled hackers to write and debug machine code programs without needing further development software. The computer powered on into the monitor ROM and the user was greeted with a * prompt. From there, he could enter BASIC by typing Ctrl+B, or he could load a machine language program from cassette. Disk software could be booted by typing Ctrl+P followed by 6, referring to Slot 6 which normally contained the Disk II controller.

A 6502 assembler was soon offered on disk, and later the UCSD compiler and operating system for the Pascal language were made available. The Pascal system required a 16 KB RAM card to be installed in the language card position (expansion slot 0) in addition to the full 48 KB of motherboard memory.


Manual

The first 1,000 or so Apple IIs shipped in 1977 with a 68-page mimeographed "Apple II Mini Manual", hand-bound with brass paper fasteners. This was the basis for the _Apple II Reference Manual,_ which was published in January 1978. All existing customers who sent in their warranty cards were sent free copies of the Red Book. The Apple II Reference Manual contained the complete schematic of the entire computer's circuitry and a complete source listing of the "Monitor" ROM firmware that served as the machine's BIOS.


Third-party devices and applications

When the Apple II initially shipped in June 1977, no expansion cards were available for the slots. This meant that the user did not have any way of connecting a modem or a printer. One popular hack involved connecting a teletype machine to the cassette output.

Wozniak's open-architecture design and the Apple II's multiple expansion slots permitted a wide variety of third-party devices, including peripheral cards such as serial controllers, display controllers, memory boards, hard disks, networking components, and realtime clocks. There were plug-in expansion cards—such as the Z-80 SoftCard—that permitted the Apple to use the Z80 processor and run programs for the CP/M operating system,[21] including the dBase II database and the WordStar word processor. The Z80 card also allowed the connection to a modem and thereby to any networks that the user might have access to. In the early days, such networks were scarce. But they expanded significantly with the development of bulletin board systems in later years. There was also a third-party 6809 card that allowed OS-9 Level One to be run. Third-party sound cards greatly improved audio capabilities, allowing simple music synthesis and text-to-speech functions. Apple II accelerator cards doubled or quadrupled the computer's speed.

Early Apple IIs were often sold with a Sup'R'Mod, which allowed the composite video signal to be viewed on a television.

The Soviet Union reverse engineered the Apple II and its processor, producing a similar computer known as the AGAT. Roughly 12,000 were produced and it was widely used in Soviet Schools.[22]


Reception

Apple_II_advertisement_Dec_1977_page_2.jpg Jesse Adams Stein wrote, "As the first company to release a 'consumer appliance' micro-computer, Apple Computer offers us a clear view of this shift from a _machine_ to an _appliance_." But the company also had "to negotiate the attitudes of its potential buyers, bearing in mind social anxieties about the uptake of new technologies in multiple contexts. The office, the home and the 'office-in-the-home' were implicated in these changing spheres of gender stereotypes and technological development."[23] After seeing a crude, wire-wrapped prototype demonstrated by Wozniak and Steve Jobs in November 1976,[24] _Byte_ predicted in April 1977 that the Apple II "may be the first product to fully qualify as the 'appliance computer' ... a completed system which is purchased off the retail shelf, taken home, plugged in and used". The computer's color graphics capability especially impressed the magazine.[25] The magazine published a favorable review of the computer in March 1978, concluding, "For the user that wants color graphics, the Apple II is the only practical choice available in the 'appliance' computer class."[26]

_Personal Computer World_ in August 1978 also cited the color capability as a strength, stating that "the prime reason that anyone buys an Apple II must surely be for the colour graphics". While mentioning the "oddity" of the artifact colors that produced output "that is not always what one wishes to do", it noted that "no-one has colour graphics like this at this sort of price". The magazine praised the sophisticated monitor software, user expandability, and comprehensive documentation. The author concluded that "the Apple II is a very promising machine" which "would be even more of a temptation were its price slightly lower ... for the moment, colour is an Apple II".[27]

Although it sold well from the launch, the initial market was to hobbyists and computer enthusiasts. Sales expanded exponentially into the business and professional market when the spreadsheet program VisiCalc was launched in mid-1979. VisiCalc is credited as the defining killer app in the microcomputer industry.

During the first five years of operations, revenues doubled about every four months. Between September 1977 and September 1980, annual sales grew from $775,000 to $118 million.[28] During this period the sole products of the company were the Apple II and its peripherals, accessories, and software.


See also

-   -


References


External links

-   Additional documentation in Bitsavers PDF Document archive
-   Apple II on Old-computers.com
-   Online Apple II Resource

ca:Apple II

Category:Apple II computers Category:Computer-related introductions in 1977

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]  June 10, 1977 was a Friday.

[10]

[11]

[12]

[13]

[14] 1977 Apple II price list A-VIDD Electronics Co., 1977 Long Beach, CA.

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] http://www.computer-museum.ru/histsoft/informatika_sorucom_2011.htm

[23]

[24]

[25]

[26]

[27]

[28] _Infinite Loop_, Malone, p157