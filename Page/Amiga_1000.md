The COMMODORE AMIGA 1000, also known as the A1000 and originally marketed as the AMIGA, is the first personal computer released by Commodore International in the Amiga line. It combines the 16/32-bit Motorola 68000 CPU which was powerful by 1985 standards with one of the most advanced graphics and sound systems in its class, and runs a preemptive multitasking operating system that fits into of read-only memory[1][2][3] and shipped with 256 KB of RAM.[4] The primary memory can be expanded internally with a manufacturer-supplied 256 KB module for a total of 512 KB of RAM. Using the external slot the primary memory can be expanded up to [5]


Design

The A1000 has a number of characteristics that distinguish it from later Amiga models: It is the only model to feature the short-lived Amiga check-mark logo on its case, the majority of the case is elevated slightly to give a storage area for the keyboard when not in use (a "keyboard garage"), and the inside of the case is engraved with the signatures of the Amiga designers (similar to the Macintosh); including Jay Miner and the paw print of his dog Mitchy. The A1000's case was designed by Howard Stolz.[6] As Senior Industrial Designer at Commodore, Stolz was the mechanical lead and primary interface with Sanyo in Japan, the contract manufacturer for the A1000 casing.[7]

The Amiga 1000 was manufactured in two variations: One uses the NTSC television standard and the other uses the PAL television standard. The NTSC variant was the initial model manufactured and sold in North America. The later PAL model was manufactured in Germany and sold in countries using the PAL television standard. The first NTSC systems lacks the EHB video mode which is present in all later Amiga models.

Because AmigaOS was rather buggy at the time of the A1000's release, the OS was not placed in ROM then. Instead, the A1000 includes a daughterboard with 256 KB of RAM, dubbed the "writable control store" (WCS), into which the core of the operating system is loaded from floppy disk (this portion of the operating system is known as the "Kickstart"). The WCS is write-protected after loading, and system resets do not require a reload of the WCS. In Europe, the WCS was often referred to as WOM (Write Once Memory), a play on the more conventional term "ROM" (read-only memory).


Technical information

The preproduction Amiga (which was codenamed "Velvet") released to developers in early 1985 contained of RAM with an option to expand it to Commodore later increased the system memory to due to objections by the Amiga development team. The names of the custom chips were different; Denise and Paula were called Daphne and Portia respectively. The casing of the preproduction Amiga was almost identical to the production version: the main difference being an embossed Commodore logo in the top left corner. It did not have the developer signatures or the carry handle.[8]

The Amiga 1000 has a Motorola 68000 CPU running at 7.15909 MHz (on NTSC systems) or 7.09379 MHz (PAL systems), precisely double the video color carrier frequency for NTSC or 1.6 times the color carrier frequency for PAL. The system clock timings are derived from the video frequency, which simplifies glue logic and allows the Amiga 1000 to make do with a single crystal. In keeping with its video game heritage, the chipset was designed to synchronize CPU memory access and chipset DMA so the hardware runs in real time without wait-state delays.

Though most units were sold with an analog RGB monitor, the A1000 also has a built-in composite video output which allows the computer to be connected directly to some monitors other than their standard RGB monitor. The A1000 also has a "TV MOD" output, into which an RF Modulator can be plugged, allowing connection to a TV that was old enough not to even have a composite video input.

The original 68000 CPU can be directly replaced with a Motorola 68010, which can execute instructions slightly faster than the 68000 but also introduces a small degree of software incompatibility. Third-party CPU upgrades, which mostly fit in the CPU socket, use faster successors 68020/68881 or 68030/68882 microprocessors and integrated memory. Such upgrades often have the option to revert to 68000 mode for full compatibility. Some boards have a socket to seat the original 68000, whereas the 68030 cards typically come with an on-board 68000.

The original Amiga 1000 is the only model to have 256 KB of Amiga Chip RAM, which can be expanded to 512 KB with the addition of a daughterboard under a cover in the center front of the machine.[9] RAM may also be upgraded via official and third-party upgrades, with a practical upper limit of about 9 MB of "fast RAM" due to the 68000's 24-bit address bus. This memory is accessible only by the CPU permitting faster code execution as DMA cycles are not shared with the chipset.

The Amiga 1000 features an 86-pin expansion port (electrically identical to the later Amiga 500 expansion port, though the A500's connector is inverted). This port is used by third-party expansions such as memory upgrades and SCSI adapters. These resources are handled by the Amiga Autoconfig standard. Other expansion options are available including a bus expander which provides two Zorro-II slots.

Specifications

's signature from the top cover of a Commodore Amiga 1000 computer. The paw print is that of Mitchy, Miner's dog.]]

+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Attribute          | Specification[10]                                                                                                                                               |
+====================+=================================================================================================================================================================+
| Processor          | Motorola 68000 at 7.16 MHz (NTSC) or 7.09 MHz (PAL)                                                                                                             |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| RAM                | 256 KB of Amiga Chip RAM; upgradeable to 512 KB by dedicated cartridge                                                                                          |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ROM                | 8 KB bootstrap ROM. 256 KB WCS reserved for OS (loaded from the Kickstart floppy disk at power-on)                                                              |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Chipset            | Original Chip Set (OCS)                                                                                                                                         |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Video              | 12-bit color palette (4096 colors). Graphic modes with up to 32, 64 (EHB mode; Early NTSC models do not have the EHB mode) or 4096 (HAM mode) on-screen colors: |
|                    |                                                                                                                                                                 |
|                    | -   320×200 to 320×400i (NTSC)                                                                                                                                  |
|                    | -   320×256 to 320×512i (PAL)                                                                                                                                   |
|                    |                                                                                                                                                                 |
|                    | Graphic modes with up to 16 on-screen colors:                                                                                                                   |
|                    |                                                                                                                                                                 |
|                    | -   640×200 to 640×400i (NTSC)                                                                                                                                  |
|                    | -   640×256 to 640×512i (PAL)                                                                                                                                   |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Audio              | 4× 8-bit PCM channels (2 stereo channels); 28 kHz maximum DMA sampling rate; 70 dB S/N ratio                                                                    |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Removable storage  | 3.5-inch DD floppy disk drive (880 KB capacity)                                                                                                                 |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Audio/video out    | Analog RGB video out (DB-23M); TV MOD audio/video output (for Amiga RF modulator TV connection); Composite video out (RCA); Audio out (2× RCA)                  |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Input/output ports | Keyboard port (RJ10); 2× mouse/gamepad ports (DE9); RS-232 serial port (DB-25F); Centronics style parallel port (DB-25M); floppy disk drive port (DB-23F)       |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Expansion slots    | 86-pin expansion port                                                                                                                                           |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Operating system   | AmigaOS 1 (Kickstart 1.0/1.1/1.2/1.3 and Workbench 1.0/1.1/1.2/1.3)                                                                                             |
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+


Retail

Introduced on July 23, 1985, during a star-studded gala featuring Andy Warhol and Debbie Harry held at the Vivian Beaumont Theater[11] at Lincoln Center in New York City, machines began shipping in September with a base configuration of 256 KB of RAM at the retail price of . A analog RGB monitor was available for around , bringing the price of a complete Amiga system to US$1,595 (). Before the release of the Amiga 500 and Amiga 2000 models in 1987, the A1000 was marketed as simply the _Amiga_, although the model number was there from the beginning, as the original box indicates.[12]

In the US, the A1000 was marketed as _The Amiga from Commodore_, with the Commodore logo omitted from the case. The Commodore branding was retained for the international versions.

Additionally, the Amiga 1000 was sold exclusively in computer stores in the US rather than the various non computer-dedicated department and toy stores through which the VIC-20 and Commodore 64 were retailed. These measures were an effort to avoid Commodore's "toy-store" computer image created during the Tramiel era.[13][14]

Along with the operating system, the machine came bundled with a version of AmigaBASIC developed by Microsoft and a speech synthesis library developed by Softvoice, Inc.


Aftermarket upgrades

Many A1000 owners remained attached to their machines long after newer models rendered the units technically obsolete, and it attracted numerous aftermarket upgrades. Many CPU upgrades that plugged into the Motorola 68000 socket functioned in the A1000. Additionally, a line of products called the _Rejuvenator_ series allowed the use of newer chipsets in the A1000, and an Australian-designed replacement A1000 motherboard called _The Phoenix_ utilized the same chipset as the A3000 and added an A2000-compatible video slot and on-board SCSI controller.


Impact

In 1994, as Commodore filed for bankruptcy, _Byte_ magazine called the Amiga 1000 "the first multimedia computer... so far ahead of its time that almost nobody—including Commodore's marketing department—could fully articulate what it was all about".[15]

In 2006, _PC World_ rated the Amiga 1000 as the 7th greatest PC of all time.[16] In 2007, it was rated by the same magazine as the 37th best tech product of all time.[17]


Joe Pillow

Initially _Joe Pillow_ was the name given on the ticket for the extra airline seat purchased to hold the first Amiga prototype while on the way to the January 1984 Consumer Electronics Show. The airlines required a name for the airline ticket and Joe Pillow was born. The engineers (RJ Mical and Dale Luck) who flew with the Amiga prototype (codenamed _Lorraine_) drew a happy face on the front of the pillowcase and even added a tie.[18]

Joe Pillow extended his fifteen minutes of fame when the Amiga went to production. All fifty-three Amiga team members who worked on the project signed the Amiga case. This included Joe Pillow and Jay Miner's dog Michy who each got to "sign" the case in their own unique way.[19]


See also

-   Amiga models and variants
-   Amiga Sidecarfor using MS-DOS with Intel 8088 @ 4.77 MHz with 256 KB RAM


References


External links

-   The Commodore Amiga A1000 at OLD-COMPUTERS.COM
-   Who was Joe Pillow?

Category:Amiga Category:Computer-related introductions in 1985

[1]

[2]

[3] 256 KB ROM + 256 KB RAM

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