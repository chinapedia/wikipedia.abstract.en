This page contains information about Intel's GPUs and motherboard graphics chipsets in table form. In 1982 Intel licensed the NEC µPD7220 and announced it as the Intel 82720 Graphics Display Controller.[1]


First generation

[TABLE]


Second generation

Intel marketed its second generation using the brand Extreme Graphics. These chips added support for texture combiners allowing support for OpenGL 1.3

[TABLE]


Third generation

[TABLE]


Fourth generation

[TABLE]


Fifth generation

-   Each EU has a 128-bit wide FPU that natively executes eight 16-bit or four 32-bit operations per clock cycle.[2]

[TABLE]

: Specifications of Intel HD Graphics series[3]


Sixth generation

-   Each EU has a 128-bit wide FPU that natively executes eight 16-bit or four 32-bit operations per clock cycle.[4]
-   Double peak performance per clock cycle compared to previous generation due to fused multiply-add instruction[5]
-   The entire GPU shares a sampler and an ROP.[6]

[TABLE]

: Specifications of Intel HD Graphics series[7][8]


Seventh generation

-   ¹ FP32 ALUs : EUs : Subslices
-   Each EU contains 2 × SIMD-4 FPUs and has double peak performance per clock cycle compared to previous generation.
-   Each Subslice contains 6 or 8 (or 10 in Haswell GPUs) EUs and a sampler, and has 64KiB shared memory.
-   64bit floating-point performance is 1/4 of 32bit floating-point performance.

[TABLE]

: Specifications of Intel HD Graphics series[9][10][11][12][13][14][15]


See also

-   Intel Quick Sync Video
-   Comparison of AMD graphics processing units
-   Comparison of Nvidia graphics processing units
-   Comparison of Intel processors
-   List of Intel chipsets
-   Intel Larrabee GPU
-   Xeon Phi
-   List of Intel graphics processing units


Notes

Acronyms: The following acronyms are used throughout the article.

-   EU: Execution Unit
-   iDCT: Inverse discrete cosine transform
-   iMDCT: Inverse modified discrete cosine transform
-   LF: In-loop deblocking filter
-   MC: Motion compensation
-   VLD: Variable-length code (sometimes referred to as slice-level acceleration)
-   WMV9: Windows Media Video 9 codec

Full hardware acceleration techniques: Intel graphic processing units employ the following techniques in hardware acceleration of digital video playback.

  Codec used to encode the video   Technique employed
  -------------------------------- ------------------------
  MPEG-2 Part 2                    VLD, iDCT, and MC
  VC-1                             VLD, iMDCT, MC, and LF
  H.264/MPEG-4 AVC                 VLD, iMDCT, MC, and LF

Calculation: The raw performance of integrated GPU, in single-precision FLOPS, can be calculated as follows:

:* Fourth generation (GMA 3, 4) - EU * 2 * 2 [multiply + accumulate] * clock speed

:* Fifth generation (HD Graphics) - EU * 2 * 2 [multiply + accumulate] * clock speed

:* Sixth generation (HD Graphics 2000, 3000) - EU * 4 [dual-issue x 2 SP] * 2 [multiply + accumulate] * clock speed

:* Seventh generation (HD Graphics 2500, 4000 ~ 5200) - EUs * 8 [2 x SIMD-4 FPU] * 2 [MUL + ADD] * clock speed

:* Eighth generation (HD Graphics 5300 ~ 6300) - EUs * 8 [2 x SIMD-4 FPU] * 2 [MUL + ADD] * clock speed

:* Ninth generation (HD Graphics 5xx) - EUs * 8 [2 x SIMD-4 FPU] * 2 [MUL + ADD] * clock speed

    Double-precision FLOPS:[16]
    -   Seventh generation (HD Graphics 2500, 4000 ~ 5200) - EUs * 4 [SIMD-4 FPU] * 2 [MUL + ADD] * clock speed / 2
    -   Eighth generation (HD Graphics 5300 ~ 6300) - EUs * 4 [SIMD-4 FPU] * 2 [MUL + ADD] * clock speed / 2
    -   Ninth generation (HD Graphics 5xx) - EUs * 4 [SIMD-4 FPU] * 2 [MUL + ADD] * clock speed / 2

    For example, the HD Graphics 3000 is rated at 125 GFLOPS,[17] which is consistent with the formula (12 * 4 * 2 * 1,300 MHz).


References

Graphics processing units Category:Computing comparisons Category:Lists of microprocessors *Intel Category:Graphics processing units Graphics processing units Intel_graphics

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