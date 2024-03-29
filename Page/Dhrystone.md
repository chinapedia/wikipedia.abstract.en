DHRYSTONE is a synthetic computing benchmark program developed in 1984 by Reinhold P. Weicker intended to be representative of system (integer) programming. The Dhrystone grew to become representative of general processor (CPU) performance. The name "Dhrystone" is a pun on a different benchmark algorithm called Whetstone.[1]

With Dhrystone, Weicker gathered meta-data from a broad range of software, including programs written in FORTRAN, PL/1, SAL, ALGOL 68, and Pascal. He then characterized these programs in terms of various common constructs: procedure calls, pointer indirections, assignments, etc. From this he wrote the Dhrystone benchmark to correspond to a representative mix. Dhrystone was published in Ada, with the C version for Unix developed by Rick Richardson ("version 1.1") greatly contributing to its popularity.


Dhrystone vs. Whetstone

The Dhrystone benchmark contains no floating point operations, thus the name is a pun on the then-popular Whetstone benchmark for floating point operations. The output from the benchmark is the number of Dhrystones per second (the number of iterations of the main code loop per second).

Both Whetstone and Dhrystone are _synthetic_ benchmarks, meaning that they are simple programs that are carefully designed to statistically mimic the processor usage of some common set of programs. Whetstone, developed in 1972, originally strove to mimic typical Algol 60 programs based on measurements from 1970, but eventually became most popular in its Fortran version, reflecting the highly numerical orientation of computing in the 1960s.


Issues addressed by Dhrystone

Dhrystone's eventual importance as an indicator of general-purpose ("integer") performance of new computers made it a target for commercial compiler writers. Various modern compiler static code analysis techniques (such as elimination of dead code: for example, code which uses the processor but produces internal results which are not used or output) make the use and design of synthetic benchmarks more difficult. Version 2.0 of the benchmark, released by Weicker and Richardson in March 1988, had a number of changes intended to foil a range of compiler techniques. Yet it was carefully crafted so as not to change the underlying benchmark. This effort to foil compilers was only partly successful. Dhrystone 2.1, released in May of the same year, had some minor changes and remains the current definition of Dhrystone.

Other than issues related to compiler optimization, various other issues have been cited with the Dhrystone. Most of these, including the small code size and small data set size, were understood at the time of its publication in 1984. More subtle is the slight over-representation of string operations, which is largely language-related: both Ada and Pascal have strings as normal variables in the language, whereas C does not, so what was simple variable assignment in reference benchmarks became buffer copy operations in the C library. Another issue is that the score reported does not include information which is critical when comparing systems such as which compiler was used, and what optimizations.

Dhrystone remains remarkably resilient as a simple benchmark, but its continuing value in establishing true performance is questionable. It is easy to use, well documented, fully self-contained, well understood, and can be made to work on almost any system. In particular, it has remained in broad use in the embedded computing world, though the recently developed EEMBC benchmark suite, HINT, Stream, and even Bytemark are widely quoted and used, as well as more specific benchmarks for the memory subsystem (Cachebench), TCP/IP (TTCP), and many others.

Dhrystone remains in use 30 years after it was designed by Weicker, a longer life than most software.


Results

Dhrystone may represent a result more meaningfully than MIPS (million instructions per second) because instruction count comparisons between different instruction sets (e.g. RISC vs. CISC) can confound simple comparisons. For example, the same high-level task may require many more instructions on a RISC machine, but might execute faster than a single CISC instruction. Thus, the Dhrystone score counts only the number of program iteration completions per second, allowing individual machines to perform this calculation in a machine-specific way. Another common representation of the Dhrystone benchmark is the DMIPS (Dhrystone MIPS) obtained when the Dhrystone score is divided by 1757 (the number of Dhrystones per second obtained on the VAX 11/780, nominally a 1 MIPS machine).

Another way to represent results is in DMIPS/MHz, where DMIPS result is further divided by CPU frequency, to allow for easier comparison of CPUs running at different clock rates.


Shortcomings

Using Dhrystone as a benchmark has pitfalls:

-   it features unusual code that is not usually representative of real-life programs[2]
-   it is susceptible to compiler optimizations. For example, it does a lot of string copying in an attempt to measure string copying performance. However, the strings in Dhrystone are of known constant length and their starts are aligned on natural boundaries, two characteristics usually absent from real programs. Therefore, an optimizer can replace a string copy with a sequence of word moves without any loops, which will be much faster. This optimization consequently overstates system performance, sometimes by more than 30%.
-   Dhrystone's small code size may fit in the instruction cache of a modern CPU, so that instruction fetch performance is not rigorously tested.[3]


See also

-   Geekbench
-   CoreMark


References

Notes

Bibliography

-


External links

-   -   Newsgroup posting for calculation of DMIPS
-   C version of Dhrystone in a sh file
-   Self configuring and compiling version.
-   Comments on Benchmark pitfalls. Set 8, Slide 11, page 95
-   Dhrystone Benchmark Results On PCs
-   Source code and C/C++ pre-compiled versions for PCs
-   iOS pre-compiled version for iPhones

Category:Benchmarks (computing) Category:Computer-related introductions in 1984

[1] Pun: wHetstone → wet stone → dry stone → dHrystone.

[2]

[3]