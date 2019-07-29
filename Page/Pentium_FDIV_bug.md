KL_Intel_Pentium_A80501.jpg The PENTIUM FDIV BUG is a computer bug affecting the floating point unit (FPU) of the early Intel Pentium processors. Because of the bug, the processor might return incorrect binary floating point results when dividing a number. The bug was discovered in 1994 by Professor Thomas R. Nicely at Lynchburg College.[1] Intel attributed the error to missing entries in the lookup table used by the floating-point division circuitry.[2]

The severity of the FDIV bug is debated. Though rarely encountered by most users (_Byte_ magazine estimated that 1 in 9 billion floating point divides with random parameters would produce inaccurate results),[3] both the flaw and Intel's initial handling of the matter were heavily criticized by the tech community.

In December 1994, Intel recalled the defective processors. In January 1995, Intel announced "a pre-tax charge of $475 million against earnings, ostensibly the total cost associated with replacement of the flawed processors."[4]


Description

The Sweeney, Robertson, and Tocher (SRT) division algorithm is used on the affected Pentium chips. It is implemented as a programmable logic array with 2,048 cells, of which 1,066 cells should have been populated with one of five values: . On the buggy chips, five cells that should have contained the value +2 were missing, instead returning 0.[5]


Chronology

Thomas Nicely, a professor of mathematics at Lynchburg College, had written code to enumerate primes, twin primes, prime triplets, and prime quadruplets. Nicely noticed some inconsistencies in the calculations on June 13, 1994, shortly after adding a Pentium system to his group of computers, but was unable to eliminate other factors (such as programming errors, motherboard chipsets, etc.) until October 19, 1994. On October 24, 1994, he reported the issue to Intel. According to Nicely, his contact person at Intel later admitted that Intel had been aware of the problem since May 1994, when the flaw was discovered by Tom Kraljevic, a Purdue University co-op student working for Intel in Hillsboro, Oregon, during testing of the FPU for its new P6 core, first used in the Pentium Pro.

On October 30, 1994, Nicely sent an email describing the error he had discovered in the Pentium floating point unit to various contacts, requesting reports of testing for the flaw on 486-DX4s, Pentiums and Pentium clones.[6]

This flaw in the Pentium FPU was quickly verified by other people around the Internet, and became known as the Pentium FDIV bug (FDIV is the x86 assembly language mnemonic for Floating-point DIVision). One example was found where the division result returned by the Pentium was off by about 61 parts per million.[7]

The story first appeared in the press on November 7, 1994, in an article in _Electronic Engineering Times_, "Intel fixes a Pentium FPU glitch" by Alexander Wolfe.[8]

The story was subsequently picked up by CNN in a segment aired on November 21, 1994.[9] This brought it into widespread public prominence.

Publicly, Intel acknowledged the floating-point flaw, but claimed that it was not serious and would not affect most users. Intel offered to replace processors to users who could prove that they were affected. However, although most independent estimates found the bug to be of little importance and would have negligible effect on most users, it caused a great public outcry. Companies like IBM (whose IBM 5x86C microprocessor competed at that time with the Intel Pentium line) joined the condemnation.

On December 20, 1994, Intel offered to replace all flawed Pentium processors on the basis of request, in response to mounting public pressure.[10] Although it turned out that only a small fraction of Pentium owners bothered to get their chips replaced, the financial impact on the company was significant. On January 17, 1995, Intel announced "a pre-tax charge of $475 million against earnings, ostensibly the total cost associated with replacement of the flawed processors."[11] Some of the defective chips were later turned into key rings by Intel.[12]

A 1995 article in _Science_ describes the value of number theory problems in discovering computer bugs and gives the mathematical background and history of Brun's constant, the problem Nicely was working on when he discovered the bug.[13]


Affected models

This problem occurs only on some models of the original Pentium processor.[14] The bug only existed in some Pentium family processors with a clock speed of less than 120 MHz.[15] On affected models, the Intel Processor Frequency ID Utility checks for the presence of this bug.

The ten affected processors are listed below. The 39 S-specs of those processors are not listed in the Intel processor specification finder web page.

  Family   Model   Stepping   Core stepping   Clock rate   FSB speed   S-spec
  -------- ------- ---------- --------------- ------------ ----------- ---------------------
  5        1       3          B1              60 MHz       60 MHz      Q0352, Q0412, SX753
  5        1       3          B1              66 MHz       66 MHz      Q0353, Q0413, SX754
  5        1       5          C1              60 MHz       60 MHz      Q0466, SX835, SZ949
  5        1       5          C1              66 MHz       66 MHz      Q0467, SX837, SZ950

  : Pentium P5 800 nm 5V

  Family   Model   Stepping   Core stepping   Clock rate   FSB speed   S-spec
  -------- ------- ---------- --------------- ------------ ----------- ----------------------------------------------------------------------
  5        2       1          B1              75 MHz       50 MHz      Q0601
  5        2       1          B1              90 MHz       60 MHz      Q0542, Q0613, Q0543, SX879, SX885, SX909, SX874
  5        2       1          B1              100 MHz      66 MHz      Q0563, Q0587, Q0614, SX886, SX910
  5        2       2          B3              75 MHz       50 MHz      Q0606, SX951
  5        2       2          B3              90 MHz       60 MHz      Q0628, Q0611, Q0612, SX923, SX922, SX921, SX942, SX943, SX944, SZ951
  5        2       2          B3              100 MHz      66 MHz      Q0677, SX960

  : Pentium P54C 600 nm 3.3V

Some Intel 80486 OverDrive and Pentium Overdrive models have also been known to exhibit the FDIV bug, as well as the F00F bug.


Detection methods

Generic

The presence of the bug can be checked manually by performing the following calculation in any application that uses native floating point numbers, including the Windows Calculator or Microsoft Excel in Windows 95/98.

The correct value is:

$$\textstyle \frac{4,195,835}{3,145,727} = 1.333820449136241002$$

When converted to the hexadecimal value used by the processor, 4,195,835 = 0x4005FB and 3,145,727 = 0x2FFFFF. The '5' in 0x4005FB triggers the fault in the FPU control logic. As a result, the value returned by a flawed Pentium processor in certain situations is incorrect at or beyond four digits:[16][17]

$$\textstyle \frac{4,195,835}{3,145,727} = 1.333{\color{Red}{739068902037589}}$$

Windows 95 or 98

Users can check if their processor has the issue using Device Manager. Once in Device Manager, users should expand "System devices", locate then click on "Numeric data processor", then click the Properties button. Once the new Properties window appears, click the Settings tab.
If the processor does not have the FDIV issue, the following message will be seen: "Your computer's numeric data processor has passed all diagnostic tests and appears to be working properly.", Otherwise the following message shall appear: "The numeric processor in this computer can sometimes compute inaccurate results when dividing large numbers"

Options are then provided at the bottom of the Settings tab to "Always use", "Use only if [it] passes all diagnostics" or "Never use".[18]

Windows NT, 2000, XP, Server 2003

Users can run the pentnt command included with Windows NT 3.51, NT 4.0, 2000, XP, and Server 2003. The computer needs to be restarted for changes to take effect.[19] The pentnt utility is deprecated and not included in current versions of Windows.[20]

The command-syntax is:

pentnt [-c] [-f] [-o]

-   -c – Enable conditional emulation
-   -f – Enable forced emulation
-   -o – Disable forced emulation and reenable floating-point hardware if it is present
-   /? – Display help


See also

-   Pentium F00F bug
-   Meltdown (security vulnerability) and Spectre (security vulnerability)
-   MOS Technology 6502 bugs and quirks
-   Accuracy problems in floating point operations
-   SRT division


References


External links

-   Personal website of Dr. Nicely, who discovered the bug
-   A page with precise information, also about the cause
-   A Tale of Two Numbers, by Cleve Moler of MathWorks
    -   ZIP-file containing more details (See ZIP file format for details on the file)
-   Intel's official site
-   Unopened Intel CPU box from the FDIV replacement program

Category:X86 architecture Category:Hardware bugs Category:1994 in computer science

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

[20] https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/pentnt