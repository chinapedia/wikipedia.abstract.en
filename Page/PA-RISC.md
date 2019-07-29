HP_PA-RISC_7300LC.jpg PA-RISC 7300LC microprocessor]] HP-HP9000-C110-Workstation_21.jpg C110 PA-RISC workstation booting Debian GNU/Linux ]]

PA-RISC is an instruction set architecture (ISA) developed by Hewlett-Packard. As the name implies, it is a reduced instruction set computer (RISC) architecture, where the PA stands for PRECISION ARCHITECTURE. The design is also referred to as HP/PA for HEWLETT PACKARD PRECISION ARCHITECTURE.

The architecture was introduced on 26 February 1986, when the HP 3000 Series 930 and HP 9000 Model 840 computers were launched featuring the first implementation, the TS1.[1][2]

PA-RISC has been succeeded by the Itanium (originally IA-64) ISA, jointly developed by HP and Intel.[3] HP stopped selling PA-RISC-based HP 9000 systems at the end of 2008 but supported servers running PA-RISC chips until 2013.[4]


History

In the late 1980s, HP was building four series of computers, all based on CISC CPUs. One line was the IBM PC compatible Intel i286-based Vectra Series, started in 1986. All others were non-Intel systems. One of them was the HP Series 300 of Motorola 68000-based workstations, another Series 200 line of technical workstations based on a custom silicon on sapphire (SOS) chip design, the SOS based 16-bit HP 3000 classic series, and finally the HP 9000 Series 500 minicomputers, based on their own (16 and 32-bit) FOCUS microprocessor.

Precision Architecture is the result of what was known inside Hewlett-Packard as the SPECTRUM program.[5] HP planned to use Spectrum to move all of their non-PC compatible machines to a single RISC CPU family.

The first processors were introduced in 1986. It had thirty-two 32-bit integer registers and sixteen 64-bit floating-point registers. The number of floating-point registers was doubled in the 1.1 version to 32 once it became apparent that 16 were inadequate and restricted performance. The architects included Allen Baum, Hans Jeans, Michael J. Mahon, Ruby Bei-Loh Lee, Russel Kao, Steve Muchnick, Terrence C. Miller, David Fotland, and William S. Worley.[6]

The first implementation was the TS1, a central processing unit built from discrete transistor–transistor logic (74F TTL) devices. Later implementations were multi-chip VLSI designs fabricated in NMOS processes (NS1 and NS2) and CMOS (CS1 and PCX).[7] They were first used in a new series of HP 3000 machines in the late 1980s – the 930 and 950, commonly known at the time as Spectrum systems, the name given to them in the development labs. These machines ran MPE-XL. The HP 9000 machines were soon upgraded with the PA-RISC processor as well, running the HP-UX version of UNIX.

Other operating systems ported to the PA-RISC architecture include Linux, OpenBSD, NetBSD and NeXTSTEP.

An interesting aspect of the PA-RISC line is that most of its generations have no Level 2 cache. Instead large Level 1 caches are used, formerly as separate chips connected by a bus, and now integrated on-chip. Only the PA-7100LC and PA-7300LC had L2 caches. Another innovation of the PA-RISC was the addition of vectorized instructions (SIMD) in the form of MAX, which were first introduced on the PA-7100LC.

PRECISION RISC ORGANIZATION, an industry group led by HP, was founded in 1992, to promote the PA-RISC architecture. Members included Convex, Hitachi, Hughes Aircraft, Mitsubishi, NEC, OKI, Prime, Stratus, Yokogawa, Red Brick Software, and Allegro Consultants, Inc..

The ISA was extended in 1996 to 64 bits, with this revision named PA-RISC 2.0. PA-RISC 2.0 also added fused multiply–add instructions, which help certain floating-point intensive algorithms, and the MAX-2 SIMD extension, which provides instructions for accelerating multimedia applications. The first PA-RISC 2.0 implementation was the PA-8000, which was introduced in January 1996.


CPU specifications

  Model      Marketing name   Year   Frequency [MHz]   Memory Bus [MB/s]   Process [µm]   Transistors [millions]   Die size [mm²]   Power [W]    Dcache [kB]   Icache [kB]   L2 cache [MB]   ISA    Notes
  ---------- ---------------- ------ ----------------- ------------------- -------------- ------------------------ ---------------- ------------ ------------- ------------- --------------- ------ -------
  TS-1       ?                1986   8                 ?                   ?              —                        —                ?            ?             ?             —               1.0
  CS-1       ?                1987   8                 ?                   1.6            0.164                    72.93            1            —             0.25          —               1.0    [8]
  NS-1       ?                1987   25/30             ?                   1.5            0.144                    70.56            ?            ?             ?             —               1.0    [9]
  NS-2       ?                1989   27.5/30           ?                   1.5            0.183                    196              27           512           512           —               1.0    [10]
  PCX        ?                1990   ?                 ?                   ?              ?                        ?                ?            ?             ?             ?               1.0
  PCX-S      PA-7000          1991   66                ?                   1.0            0.58                     201.6            ?            256           256           —               1.1a
  PCX-T      PA-7100          1992   33–100            ?                   0.8            0.85                     196              ?            2048          1024          —               1.1b
  PCX-T      PA-7150          1994   125               ?                   0.8            0.85                     196              ?            2048          1024          —               1.1b
  PCX-T'     PA-7200          1994   120               960                 0.55           1.26                     210              30           1024          2048          —               1.1c
  PCX-L      PA-7100LC        1994   60–100            ?                   0.75           0.9                      201.6            7–11         —             1             2               1.1d
  PCX-L2     PA-7300LC        1996   132–180           ?                   0.5            9.2                      260.1            ?            64            64            0–8             1.1e
  PCX-U      PA-8000          1996   160–180           960                 0.5            3.8                      337.68           ?            1024          1024          —               2.0
  PCX-U+     PA-8200          1997   200–240           960                 0.5            3.8                      337.68           ?            2048          2048          —               2.0
  PCX-W      PA-8500          1998   300–440           1920                0.25           140                      467              ?            1024          512           —               2.0    [11]
  PCX-W+     PA-8600          2000   360–550           1920                0.25           140                      467              ?            1024          512           —               2.0    [12]
  PCX-W2     PA-8700(+)       2001   625–875           1920                0.18           186                      304              <7.1@1.5 V   1536          768           —               2.0
  Mako       PA-8800          2003   800–1000          6400                0.13           300                      361              ?            768/core      768/core      0 or 32         2.0
  Shortfin   PA-8900          2005   800–1100          6400                0.13           ?                        ?                ?            768/core      768/core      0 or 64         2.0


See also

-   Hombre chipset – A PA-7150-based chipset with a complete multimedia system for Commodore-Amiga


References


External links

-   LostCircuits Hewlett Packard PA8800 RISC Processor overview
-   HP's documentation – page down for PA-RISC, architecture PDFs available
-   OpenPA.net Comprehensive PA-RISC chip and computer information
-   chipdb.org Images of different PA-RISC processors

Category:HP microprocessors Category:Instruction set architectures Category:Computer-related introductions in 1986

[1] "One Year Ago". (26 February 1987). _Computer Business Review_.

[2]

[3] HP Completes Its PA-RISC Road Map With Final Processor Upgrade

[4] How long will HP continue to support HP 9000 systems?

[5]

[6] Smotherman, Mark (2 July 2009). _Recent Processor Architects_.

[7] Paul Weissmann. "Early PA-RISC Systems".

[8]

[9]

[10]

[11] "HP L1000 & L2000 (rp5400/rp5450) Servers", _openpa.net_

[12]