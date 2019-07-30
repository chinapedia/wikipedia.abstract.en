The 6309 is Hitachi's CMOS version of the Motorola 6809 microprocessor. While in "Emulation Mode" it is fully compatible with the 6809. To the 6809 specifications it adds higher clock rates, enhanced features, new instructions, and additional registers. Most new instructions were added to support the additional registers, as well as up to 32-bit math, hardware division, bit manipulations, and block transfers. The 6309 is generally 30% faster in native mode than the 6809.

Surprisingly, this information was never published by Hitachi. The April 1988 issue of _Oh! FM_, a Japanese magazine for Fujitsu personal computer users, contained the first description of the 6309's additional capabilities. Later, Hirotsugu Kakugawa posted details of the 6309's new features and instructions to comp.sys.m6809. This led to the development of NitrOS9 for the Tandy Color Computer 3.


Programming Model


Differences from the Motorola 6809

The 6309 differs from the 6809 in several key areas.

Process Technology

The 6309 is fabricated in CMOS technology, while the 6809 is an NMOS device. As a result, the 6309 requires less power to operate than the 6809. It is also a fully static device, which will not lose internal state information. This means it can be used with external DMA without needing refresh every 14 cycles as the 6809 does.

Clock Speed

The 6309 has B (2 MHz) versions as the 6809 does. However, a "C" speed rating was produced with either a 3.0 or 3.5 MHz maximum clock rate, depending on which datasheet is referenced. (Several Japanese computers had 63C09 CPUs clocked at 3.58 MHz, the NTSC colorburst frequency, so the 3.5 rating seems most likely). Anecdotal and individual reports indicate that the 63C09 variant can be clocked at 5 MHz with no ill effects. Like the 6809, the Hitachi CPU comes in both internal and external clock versions (HD63B/C09 and HD63B/C09E respectively)

Computational Efficiency

When switched into 6309 Native Mode (as opposed to the default 6809-compatible mode) many key instructions will complete in fewer clock cycles. This often improves execution speeds by up to 30%.

Additional Registers

-   Two 8-bit accumulators: 'E' and 'F'. These can be concatenated to form 16-bit accumulator 'W'. The existing 6809 16-bit accumulator D can be concatenated with W to form 32-bit accumulator 'Q'. It is likely that D is short for 'Double' and Q for 'Quad', the number of bytes they hold.
-   Transfer register 'V' for inter-register instructions. Its value is unaffected by a hardware reset so it can retain a constant Value, hence 'V'.
-   8/16-bit Zero register '0' to speed up operations using a zero constant. This register always reads zero and writes to it are ignored.
-   Mode register 'MD', a secondary Condition Code register which controls the operating mode. Only 4 bits of this register are defined.

Additional Instructions

Most of the new instructions are modifications of existing instructions to handle the existence of the additional registers, such as load, store, add, and the like. Genuine 6309 additions include inter-register arithmetic, block transfers, hardware division, and bit-level manipulations.

Despite the user-friendliness of the additional instructions, analysis by 6809 programming gurus indicates that many of the new instructions are actually slower than the equivalent 6809 code, especially in tight loops. Careful analysis should be done to ensure that the programmer uses the most efficient code for the particular application.

Additional Hardware Features

It is possible to change the mode of operation for the FIRQ interrupt. Instead of stacking the PC and CC registers (normal 6809 behavior) the FIRQ interrupt can be set to stack the entire register set, as the IRQ interrupt does. In addition, the 6309 has two possible trap modes, one for an illegal instruction fetch and one for division by zero. The illegal instruction fetch is not maskable, and many TRS-80 Color Computer users reported that their 6309's were "buggy" when in reality it was an indicator of enhanced and unknown features.


External links

-   Article in the April 1988 issue of _Oh! FM_ (Japanese)
-   Hirotsugu Kakugawa's original "Secret 6309 features memo" and thread on Google's Usenet archive
-   HD63B09EP Technical Reference Guide
-   6x09 Microprocessor Instruction Sets
-   Instruction set reference for 6809/6309 (PDF) By Chris Lomont
-   Comparison of 6809 and 6309 instruction list

Category:Hitachi Category:Microprocessors