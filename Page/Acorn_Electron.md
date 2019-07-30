The ACORN ELECTRON was a budget version of the BBC Micro educational/home computer made by Acorn Computers Ltd. It has 32 kilobytes of RAM, and its ROM includes BBC BASIC v2 along with its operating system.

The Electron was able to save and load programs onto audio cassette via a supplied converter cable that connected it to any standard tape recorder that had the correct sockets. It was capable of basic graphics, and could display onto either a television set, a colour (RGB) monitor or a "green screen" monitor.

For a short period, the Electron was reportedly the best selling micro in the United Kingdom.[1]


History

After Acorn Computer released the BBC Micro, executives believed that the company needed a less-expensive computer for the mass market. In June 1982, cofounder Hermann Hauser was asked about the recently announced £175 Sinclair ZX Spectrum's potential to hurt sales of the BBC Micro. Hauser responded that in the third quarter of that year Acorn would release a new £120-150 computer which "will probably be called the Electron", with graphics superior to the Spectrum's and compatibility with BBC Micro software. Acorn's Chris Curry stated that "the Electron is designed to compete with the Spectrum. The idea is to get the starting price very low, but not preclude expansion in the long term." The company reduced the number of chips in the Electron by 90% from the BBC Micro's about 100, with most functionality on a single Uncommitted Logic Array (ULA). Problems with the ULA delayed the Electron, however, and Acorn repeatedly missed deadlines to ship the computer.[2]

Acorn formally announced the Electron at the _Acorn User_ Exhibition in August 1983, one year after Hauser mentioned the computer, by which time its price had risen to £175 while the Spectrum cost £130. The company expected to ship the Electron before Christmas, and sell 100,000 by February 1984. Reviews were generally favorable, noting its excellent graphics compared to the Commodore 64. While its speed was acceptable compared to the Commodore and competing computers the Electron was, however, much slower than the BBC Micro; _Popular Computing Weekly_ reported, for example, that BBC Micro games ran "at less than half the speed, with very significant effects on their appeal".[3]

The reduced processor speed was attributable to the use of a 4 bit wide memory system instead of the 8 bit wide memory system of the BBC Micro to reduce cost. The Electron used just 4 64kbit RAM devices instead of the 16 16kbit RAM devices deployed on the BBC Model B. In the BBC Micro, the RAM ran at twice the speed (4 MHz) of the CPU (2 MHz) allowing the video (screen refresh) and CPU memory access to be interleaved with each accessor running at 2 MHz. On the Electron two accesses have to be made to get an 8 bit word (albeit with a single RAS), delivering an effective RAM access frequency of 2 MHz. In display modes employing the most screen memory, the CPU is unable to access its RAM while screen refresh accesses are happening, and in other modes the CPU and video accesses are interleaved with each accessor running at 1 MHz. Outside the screen refresh periods, the CPU is only able to access RAM at 1 MHz. This reduces the effective CPU speed by as much as a factor of four in the more demanding display modes, and as much as a factor of two otherwise.[4]

The ULA continued to cause problems, delaying large-scale manufacturing. By October 1983 Acorn had received orders for more than 150,000 units, and expected to produce 25,000 a month before Christmas; the existing backlog would take more than six months to fulfil. Demand for the Electron was high but only two of WH Smith's London branches had inventory. As the company increased production during 1984, however, the British home-computer market greatly weakened; one Acorn executive later said, "after Christmas [1983] they were just delivering and the company ended up with £43 million of unsaleable stock". Acorn's Christmas 1984 sales were greatly below expectations and in January 1985 the company reduced the Electron's price to £129. In conjunction with an unsuccessful expansion into the United States, by February Acorn's market capitalization declined 85% from the previous year. Olivetti acquired the company later that year and Dixons Retail acquired the remaining Electron inventory for less than manufacturing cost, ending Acorn's home-computer business.[5]

With hindsight, the large screen memory required too much process power to manipulate and left too little space available to programs for the machine to take on the prevailing Spectrum (with less than 7K of screen memory) and Commodore 64 (with hardware sprites) in gaming. Despite this, several features that would later be associated with BBC Master and Archimedes were first features of Electron expansion units, including ROM cartridge slots and the Advanced Disc Filing System, a hierarchical improvement to the BBC's original Disc Filing System.

While it may not have been as popular as the Spectrum, Commodore 64 or Amstrad CPC, it did sell in sufficient numbers to ensure that new software was being produced right up until the early 1990s. This meant the Electron had a lifespan not much shorter than those more popular micros and much longer than competitors such as the Oric-1 and Dragon 32.


Popular upgrades

Acorn Plus 1

The Acorn Plus 1 added two ROM cartridge slots, an analogue interface (supporting four channels) and a Centronics parallel port. The analogue interface was normally used for joysticks, the parallel for a printer. Game ROM cartridges would boot automatically. Languages in paged ROM cartridges would take precedence over BASIC. (The slot at the front of the interface took priority if both were populated).

Access to ROM memory occurred at 2 MHz until RAM access was required, so theoretically programs released on ROM could run up to twice as fast as those released on tape or disc. Despite this all of the games released on ROM were packaged as ROM file cartridges, from which the micro would load programs into main memory in exactly the same way as if it were loading from tape. This meant that programs did not need to be modified for their new memory location and could be written in BASIC but gave no execution speed benefits.

The Cartridge slots provided additional control lines (compared to the lines available via the Edge-connector on the rear of the Electron) to ease implementation of ROM cartridges. [6]

Additional peripheral cartridge-holders by companies such as P.R.E.S. (via their ARA/ARA2/ASR products) allowed 'Sideways ROM' capability, that allowed the standard Acorn ROM space to be programmatically mapped out for alternative EPROMs, either physically via ZIF Sockets, or 'virtually' via ROM-images loaded into (battery-backed) RAM in the same ROM memory space. This enabled the Electron to achieve the same functionality as that provided by the Expansion-ROM slots under the keyboard and on the bottom-left of the BBC Micro B keyboard.

The addition of the Plus 1 added a number of new *FX or OSBYTE calls that allowed the OS to read values from the analogue interface and write to the parallel interface.

Compatibility

The Plus 1 needed memory page &D for its workspace, and some games used this space. To disable the Plus 1, after pressing BREAK, the following commands could be issued:

*FX163,128,1
 ?&212=&D6
 ?&213=&F1
 ?&2AC=0

Acorn Plus 2

Per a News article on Page #9 of the October 1984 issue of Acorn User, the Acorn 'Plus 2' interface was due to provide Econet capability. This interface did not make it to market.

Acorn Plus 3

The Acorn Plus 3 was a hardware module that connected independently of the Plus 1 and provided a double-density 3½" disc drive connected through a WD1770 drive controller and an ADFS ROM. There were two versions of the Plus 3 produced: A Single-sided and a Double-sided drive version. Because the WD1770 is capable of single density mode and uses the same IBM360 derived floppy disc format as the Intel 8271 found in the BBC Micro, it was also possible to run a DFS filing system with an alternate ROM, such as the P.R.E.S AP4 interface.

The Plus 3 reset PAGE to &1D00, reducing the amount of free RAM available to user. The ADFS system could be temporarily disabled (and PAGE reset to &E00) via the *NOADFS command. Alternative WD1770-based DFS and ADFS interfaces such as the P.R.E.S AP4 and 'ADFS E00' products left PAGE at &E00, and did not require the presence of the ZYSYSHELP file (see below)

Disks had to be manually mounted and dismounted using the *MOUNT / *DISMOUNT commands, or using the CTRL-A+BREAK key combination. Disks could also be booted from via the standard "Shift+BREAK" key-combination, if the !BOOT file was present on the disk. This behaviour was the same as on the BBC Micro.

The Plus 3 included an uprated square black power supply unit with mains cord, manufactured by STC, designed and manufactured in England to BS 415 and BS 5850, that was designed to power the Plus 3, in addition to the Electron and the Plus 1 interface as well. This replaced the original cream-coloured "wall wart" style power supply, designed to BS 415 and manufactured in Hong Kong.

-   ORIGINAL; Part no: unknown; input 220/240 V AC/50 Hz; output 19 V AC/0.737 A/14 W: USAGE: Electron, Electron+Plus1
-   UPRATED Part no: 865-010; input 240 V AC/50 Hz 50 W; output 21 V AC/1.75 A/36.75 W: USAGE: Electron+Plus3, Electron+Plus3+Plus1

The original Electron Edge-connector was repeated on the back of the Plus3, in addition to a secondary smaller edge-connector, that enabled additional drives to be connected (Shugart-compatible connection). These required their own power-supply. The secondary edge-connector could not power external drives.

Repair note: If the internal power-supply connector, used to power the existing internal 3.5" drive is damaged, and requires replacement, then the original AMP 800-930 4-pin connector, which was already in short supply during the original production run, may be replaced with a Molex 5264 50-37-5043 "Mini-SPOX" connector as an alternative.[7]

If using the Plus3 in screen modes 0-3, the pseudo-variable TIME would be thrown off, as the interrupts were disabled during disk access in these modes.

Per a News article on page 9 of the October 1984 issue of Acorn User, the Plus 3 was originally designed to have used the Intel 8272 disk controller, (and not 8271, which were in short supply at the time).

ADFS quirks

The ADFS file format used the bytes Hugo to delimit the directory names on the disc, named after ADFS author Hugo Tyson. Another quirk was the presence of the file ZYSYSHELP which was required by the system, and created during formatting. This was a kludge. Acorn's v1.0 ADFS implementation on the Electron was unreliable when writing to the first few tracks of a floppy disc, so this was a "fix" and simply involved writing a file full of garbage to the suspect part. The ADFS would then skip it. Disc corruption could also occur if attempting to use the *COMPACT command without disabling the blinking cursor with the following command:

    VDU23,1,0;0;0;0;

This was due to the fact that the *COMPACT command used screen memory (by default) as working space during the operation, and the software-implemented blinking cursor corrupted that memory space. An alternative would be to give arguments to make it use non-screen memory for workspace, for example *COMPACT 40 20 in MODE 6. Tyson recalls that this bug was found during late testing but not fixed in the initial ROM release in order to avoid late changes, as workarounds exist.[8][9]

Disc formatting was done via the *EFORM command, vs the more familiar *FORM40/*FORM80 DFS commands. Note additionally that the *EFORM command differs from the equivalent *AFORM command for the 1770 ADFS on the BBC Microcomputer. This is possibly as a result of needing to create the ZYSYSHELP file on the Electron. The *EFORM command was only supplied on the Welcome disc that was shipped with the Plus3, and was not included in the ROM.

First Byte Joystick Interface

As a games machine the Electron shared the same failing as the Sinclair Spectrum in not having a joystick port. This was quickly remedied by First Byte Computers who developed an interface and software which allowed a "switched" joystick to be used with the majority of software titles. This interface became very popular and was sold by W.H. Smiths, Boots, Comet and hundreds of independent computer dealers.

P.R.E.S. Advanced Plus 3

The Advanced Plus 3 was very similar to the Acorn Plus 3 but packaged as an ADFS ROM cartridge for the Plus 1 with a disc drive connector at the head. This made it possible to connect a 5¼" floppy disc drive as used by BBC Micro owners or a more common 3½" drive.

P.R.E.S. Advanced Plus 5

AP5 Provided User Port (all lines), 1 MHz bus and 'Tube' bus capability, enabling second processor usage. For the PRES5, and other similar interfaces, the User Port is usually implemented via a 6522 VIA chip.

Slogger/Elektuur Turbo Board

The Slogger and Elektuur Turbo Boards were born out of a hack initially devised at Acorn. By shadowing the lowest 8 kB of RAM with a static RAM chip outside of reach of the ULA, the CPU could always access it at 2 MHz. The tradeoff was that the screen could not be located in that 8 kB. In practice the operating system ROMs always put the screen into the top 20 kB and as a result this probably only broke compatibility with around 2% of software.

The Slogger Turbo Board was a professionally fitted upgrade whereas the Elektuur modification was described in an article in Dutch Electronics magazine Elektuur and intended for users to perform at home.[10]

Speeding up the low portion of memory is particularly useful on 6502 derived machines because that processor has a faster addressing mode for the first 256 bytes and so it is common for software to put any variables involved in time critical sections of program into that region.

The cost of the 64 Kbit SRAM chip would have been more than that of doubling the four 64 KBit DRAM chips to give 8-bit RAM access, fixing both the modest memory and poor performance issues of the Electron.

Slogger Master RAM Board

A development of the Turbo Board, the Master RAM Board duplicated the Turbo Board functionality and added a further option of running the micro with 32 kB of static shadow RAM in addition to the ordinary 32 kB — giving 64 kB total. Some clever program counter catches meant that the ordinary system ROMs and any software using the OS calls could function without significant modification, making substantially more memory available for BASIC, View, Viewsheet and almost every other business application. By providing extra storage this modification also allowed some games and applications intended for the BBC Micro to function on the Electron despite the lack of a native Mode 7.[11]

Applications could not directly address video memory in shadow mode without modification, so it was incompatible with most games, although there is no inherent reason why a game could not be written to function in shadow mode. A switch mounted through the case switched between normal, turbo and shadow modes.

During its decline, Turbo Boards and Master RAM Boards were offered already fitted to new Electrons in an attempt to increase sales.

Jafa Systems Mode 7 Display Unit

Of the capabilities present in the BBC Micro but absent from the Electron, the teletext-style _mode 7_ was particularly conspicuous because of the very low memory usage in that mode (just less than 1 kB) and the high number of BBC programs that used it. Jafa Systems provided a number of solutions to redress this deficiency.[12] (Note - the Jafa interface did not provide Teletext interface itself, but it did work in conjunction with specific CEEFAX/Teletext/Prestel adaptors from other manufacturers such as Morley[13][14])

The most basic solution was a pure software system supplied on a ROM cartridge that drew a low resolution approximation of the mode 7 display in a graphics mode. Although cheap and effective in enabling use of some software that only used official ROM entry points for text output, this solution proved very slow because the Electron had to be placed into an 80-byte-pitch display to be able to get anywhere near to reproducing mode 7 and the CPU spent a lot of time drawing approximations of mode 7 characters and graphics that in a hardware solution would be achieved without any CPU processing. It also used up 20 kB of RAM for the graphics display rather than the 1 kB of a hardware mode 7.

Two solutions with additional hardware were provided. The first used the same graphics processor as the BBC Micro in mode 7 — the SAA5050 — but used software to ensure that it was fed with the correct graphics data. A software ROM would put the machine into an ordinary 40-byte-pitch display. While the ULA would read the display from memory in the usual fashion, the SAA5050 would listen to the data it was reading and produce a mode 7 interpretation of the same information. When necessary the hardware would switch between the graphics output being produced by the micro and that being produced by the add-on.

The disadvantage to this system is that while the SAA5050 would expect to be repeatedly fed the same 40 bytes of data for every display scanline of each character row, the ULA would read a different set of 40 bytes for every display scanline in order to produce a full graphics display. A software ROM worked around this by duplicating the data intended for a mode 7 display in memory. Although this produced a mode 7 that barely impacted upon CPU performance and gave the same visual quality as the BBC Micro, it remained compatible only with software that used the ROM routines for outputting text and graphics and still used 10 kB of memory for the display.

A second version of the hardware add-on corrected these problems. By adding a CRTC6845 to the package, a full hardware solution was created that did not reduce CPU performance and only used 1 kB of memory for the display. A software ROM was still supplied, but this did no more than expand the hardware ROM so that it knew mode 7 now existed and was able to switch into it.

Electron Second Processor

During the latter years, PMS produced a 2nd Processor specifically for the Electron. This provided an alternative to buying the combination of the P.R.E.S. Advanced Plus 5 and Acorn 6502 2nd Processor.[15]


Merlin M2105

An unusual variant of the Electron was sold by British Telecom Business Systems as the BT Merlin M2105 Communications Terminal. This consisted of a de-badged Electron plus a large expansion unit containing 32 kB of RAM, 48 kB of ROM, a Centronics printer port and a modem. The ROM firmware provided dial-up communications facilities. These were used by the Interflora florists network in the UK for over a decade.[16][17]


Technical information

The hardware of the BBC Micro was emulated by a single customized ULA chip designed by Acorn in conjunction with Ferranti. It had feature limitations such as the inability to output more than one channel of sound or provide teletext mode.[18] By contrast, the BBC Micro was capable of three-way polyphony (plus one noise channel).

The edge-connector on the rear of the Electron exposed almost all the Bus lines, but not all. (The BBC Micro, courtesy of all its ports, exposed all lines.)

For Issue 1-4 motherboards, the ULA had an issue similar to those experienced by other socketed CPU's. Over time, the thermal heating and cooling could cause the ULA to rise slightly out of its socket just enough to cause the machine to start exhibiting 'hanging' or other startup-failure issues, such as a continuous 'startup beep'. This was despite a metal cover, and locking-bar mechanism designed to prevent this from occurring. Pushing down on the metal cover to reseat the ULA was normally sufficient to rectify these issues.[19][20][21][22] Issue 5 and 6 boards utilized a different epoxy resin covering directly over the ULA, which resolved this issue.[23]

The keyboard included a form of single-key keyword input, similar to that used on the Sinclair Spectrum, via the 'func' key. However, unlike the Spectrum, the single-keypress keyword-entry was optional, and keywords could be entered manually if preferred.

The ULA controlled memory access and was able to provide 32K × 8 bits of addressable RAM using 4 × 64K × 1-bit RAM chips (4164). Due to needing two accesses to each chip instead of one, and the complications of the video hardware also needing access, reading or writing RAM was much slower than on the BBC Micro. This meant that although ROM applications ran at similar speeds, there was a substantial speed decrease on applications running from RAM. The Electron used the Synertek variant of the 6502 processor as that allowed the clock to be stopped for the entire 40 microseconds the ULA required exclusive DRAM access per raster line.

Hardware

-   CPU: Synertek SY6502A[24]
-   Clock rate: variable. CPU runs at 2 MHz when accessing ROM and 1 MHz when accessing RAM. The CPU is also periodically halted[25]. The Electron is widely misquoted as operating at 1.79 MHz after measurements derived from speed testing against the 2 MHz BBC Micro for various pieces of 'common software'[26].
-   Glue logic: Ferranti Semiconductor Custom ULA
-   RAM: 32 kB
-   ROM: 32 kB
-   Text modes: 20×32, 40×25, 40×32, 80×25, 80×32 (all text output produced by software in graphics modes)
-   Graphics modes: 160×256 (4 or 16 colours), 320×256 (2 or 4 colours), 640×256 (2 colours), 320×200 (2 colours — spaced display with two blank horizontal lines following every 8 pixel lines), 640×200 (2 colours — spaced display)
-   Colours: 8 colours (TTL combinations of RGB primaries) + 8 flashing versions of the same colours
-   Sound: 1 channel of sound, 7 octaves; built-in speaker. Software emulation of noise channel supported
-   Dimensions: 16×34×6.5 cm
-   I/O ports: Expansion port, tape recorder connector (1200 baud CUTS variation on the Kansas City standard for data encoding, via a 7-pin circular DIN connector), aerial TV connector (RF modulator), composite video and RGB monitor output
-   Power supply: External PSU, 19V AC

Quirks

'' is an example of a game where the developers left non-graphical data visible in the display buffer to gain additional memory space.]] Like the BBC Micro, the Electron was constrained by limited memory resources. Of the 32 kB RAM, 3½ kB was allocated to the OS at startup and at least 10 kB was taken up by the display buffer in contiguous display modes.

Due to the timing of interrupts it was possible to disable either the top 100 or bottom 156 lines of the display with palette changes. Many games took advantage of this, gaining storage by leaving non-graphical data in the disabled area.

Other games would load non-graphical data into the display, leaving it visible as regions of apparently randomly coloured pixels.

Although page flipping was a hardware possibility, the limited memory forced most applications to do all their drawing directly to the visible screen, often resulting in graphical flicker or visible redraw. A notable exception is Players' _Joe Blade_ series.

Tricks

FireTrack: smooth vertical scrolling

Although programs can alter the position of the screen in memory, the non-linear format of the display means that vertical scrolling can only be done in blocks of 8 pixels without further work.

_FireTrack_ exploits a division in the way the Electron handles its display — of the seven available graphics modes, two are configured so that the final two of every ten scanlines are blank and are not based on the contents of RAM. If 16 scanlines of continuous graphical data are written to a character-block-aligned portion of the screen then they will appear as a continuous block in most modes but in the two non-continuous modes they will be displayed as two blocks of eight scanlines, separated in the middle by two blank scanlines.

In order to keep track of its position within the display, the Electron maintains an internal display address counter. The same counter is used in both the continuous and non-continuous graphics modes and switching modes mid-frame does not cause any adjustment to the counter.

_FireTrack_ switches from a non-continuous to a continuous graphics mode part way down the display. By using the palette to mask the top area of the display and taking care about when it changes mode it can shift the continuous graphics at the bottom of the display down in two pixel increments because the internal display counter is not incremented on blank scanlines during non-continuous graphics modes.

Exile: sampled speech

_Exile_ turns the Electron's one channel output into a digital speaker for PCM output.

The speaker can be programmatically switched on or off at any time but is permanently attached to a hardware counter so is normally only able to output a square wave. But if set to a frequency outside the human audible range then the ear can't perceive the square wave, only the difference between the speaker being switched on and off. This gives the effect of a simple toggle speaker similar to that seen in the 48 kB Sinclair ZX Spectrum. _Exile_ uses this to output 1-bit audio samples.

Frak! and Zalaga: Polyphonic music

Aardvark Software's "Frak!" and "Zalaga" As part of the copy protection, illegal copies of the games would cause a pseudo-polyphonic rendition of Trumpet Hornpipe, the Captain Pugwash theme tune, to play endlessly rather than loading the game properly (Pugwash being a pirate). On the Electron version of Frak!, the tune was the main theme from "Benny Hill" (Boots Randolph's "Yakety Sax"). The polyphony was achieved via fast note-switching to achieve the necessary chords.


Popular games

Although not as well supported by the biggest software publishers as rivals like the Commodore 64 and Sinclair ZX Spectrum, a good range of games were available for the Electron. The traditional BBC Micro publishers such as Acornsoft, Superior Software and Micro Power offered the widest support. Notable popular games particularly associated with the Electron include:'' is an example of a popular arcade game officially ported to the Electron (US Gold).]]

-   _Starship Command_ (Acornsoft, 1983)
-   _Chuckie Egg_ (A'n'F, 1984)
-   _Elite_ (Acornsoft, 1984)
-   the _Repton_ series (Superior Software, 1985–1989)
-   _Thrust_ (Superior Software, 1986)
-   _Exile_ (Superior Software, 1988)

There were also many popular games officially converted to the Electron from arcade machines (including _Crystal Castles_, _Tempest_, _Commando_, _Paperboy_ and _Yie Ar Kung-Fu_) or other home computer systems (including _Impossible Mission_, _Jet Set Willy_, _The Way of the Exploding Fist_, _Tetris_, _The Last Ninja_, _Barbarian_ and _SimCity_).

Despite Acorn themselves effectively shelving the Electron in 1985, games continued to be developed and released by professional software houses until 1991. There were around 1,400 games released for the Acorn Electron, several thousand extra public domain titles were released on disc through Public Domain libraries. Notable enterprises which produced discs of such software are BBC PD, Electron User Group and HeadFirst PD.


Emulation

Several emulators of the machine exist: ElectrEm[27] for Windows/Linux/macOS, Elkulator[28] for Windows/Linux/DOS, ElkJS[29] is a browser-based (JavaScript/HTML5) emulator, and the multi-system emulators MESS and Clock Signal[30] feature support for the Electron. Electron software is predominantly archived in the UEF file format.

There are also two known FPGA based recreations of the Acorn Electron hardware. ElectronFPGA[31] for the Papilio Duo hardware and the Acorn-Electron[32] core for the FPGA Arcade "Replay" board.


Design team

The operating system ROM locations 0xFC00-0xFDFF contain the following text, which is different from the 'thanks' list in the original BBC Model B:

Additionally, the last bytes of both the BASIC ROM and 'Plus 3 Interface' ADFS v1.0 ROM include the word "Roger", thought to be a reference to Roger Wilson.

The case was designed by industrial designer Allen Boothroyd of Cambridge Product Design Ltd.


See also

-   Electron User, the most popular Acorn Electron focused magazine


References

Notes

Acorn Electron History at 30


External links

-   Stairway To Hell
-   Acorn Electron World
-   Electron MODE 7 Photos

Electron Category:6502-based home computers Category:Home computers Category:British computers

[1]

[2]

[3]

[4]

[5]

[6] Electron Advanced User Guide - Appendix E

[7]

[8]

[9] On the BBC Micro, the blinking cursor, if enabled, was superimposed onto the display output by the 6845 CRTC and Acorn's video ULA, without changing any screen memory. The Acorn Electron did not have this extra hardware and had to alter screen memory in software to blink the cursor.

[10]

[11]

[12] http://www.acornelectron.co.uk/hardware/cats/jafa.html

[13]

[14]

[15] http://www.acornelectron.co.uk/mags/aab/revs/pms/r-e2p.html

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25] The Electron's Service Manual (p.7) also notes the following: "In screen modes 0, 1, 2 and 3 the screen uses all the available memory time slots during the display period. The processor is denied RAM access during 40 microseconds of each 64 microseconds of the 256 lines in 312 which is the display period, and it is made to wait for RAM access until the end of the period."

[26] BBC Micro RAM is clocked at 4 MHz which permits interleaved CPU and display circuitry access at 2 MHz. Electron RAM is divided into four DRAM chips each providing one bit per access, with the retrieval of a byte therefore requiring two DRAM accesses. This arrangement only supports the retrieval of a single byte per 2 MHz cycle, with this memory bandwidth being shared by the CPU and display circuitry.

[27]

[28]

[29]  - JavaScript browser based Acorn Electron emulator

[30]

[31]  - Acorn Electron core for the Papilio Duo

[32]  - Acorn Electron core for the FPGA Arcade "Replay" board