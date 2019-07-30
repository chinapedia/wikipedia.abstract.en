GZIP is a file format and a software application used for file compression and decompression. The program was created by Jean-loup Gailly and Mark Adler as a free software replacement for the compress program used in early Unix systems, and intended for use by GNU (the "g" is from "GNU"). Version 0.1 was first publicly released on 31 October 1992, and version 1.0 followed in February 1993.


File format

gzip is based on the DEFLATE algorithm, which is a combination of LZ77 and Huffman coding. DEFLATE was intended as a replacement for LZW and other patent-encumbered data compression algorithms which, at the time, limited the usability of _compress_ and other popular archivers.

"gzip" is often also used to refer to the gzip file format, which is:

-   a 10-byte header, containing a magic number (1f 8b), compression ID (08 for DEFLATE), file flags, a 32-bit timestamp, compression flags and operating system ID.
-   optional extra headers denoted by file flags, such as the original filename
-   a body, containing a DEFLATE-compressed payload
-   an 8-byte footer, containing a CRC-32 checksum and the length of the original uncompressed data, modulo 2³².[1]

Although its file format also allows for multiple such streams to be concatenated (gzipped files are simply decompressed concatenated as if they were originally one file[2]), gzip is normally used to compress just single files.[3] Compressed archives are typically created by assembling collections of files into a single tar archive (also called tarball[4]), and then compressing that archive with gzip. The final compressed file usually has the extension or .

gzip is not to be confused with the ZIP archive format, which also uses DEFLATE. The ZIP format can hold collections of files without an external archiver, but is less compact than compressed tarballs holding the same data, because it compresses files individually and cannot take advantage of redundancy between files (solid compression).


Implementations

Various implementations of the program have been written. The most commonly known is the GNU Project's implementation using Lempel-Ziv coding (LZ77). OpenBSD's version of gzip is actually the compress program, to which support for the gzip format was added in OpenBSD 3.4. The 'g' in this specific version stands for _gratis_.[5] FreeBSD, DragonFly BSD and NetBSD use a BSD-licensed implementation instead of the GNU version; it is actually a command-line interface for zlib intended to be compatible with the GNU implementation's options.[6] These implementations originally come from NetBSD, and support decompression of bzip2 and the Unix pack format.

An alternative compression program achieving 3-8% better compression is Zopfli. It achieves gzip-compatible compression using more exhaustive algorithms, at the expense of compression time required. It does not affect decompression time.

pigz, written by Mark Adler, is compatible with gzip and speeds up compression by using all available CPU cores and threads.[7]


Derivatives and other uses

The tar utility included in most Linux distributions can extract .tar.gz files by passing the option, e.g., .

zlib is an abstraction of the DEFLATE algorithm in library form which includes support both for the gzip file format and a lightweight stream format in its API. The zlib stream format, DEFLATE, and the gzip file format were standardized respectively as RFC 1950, RFC 1951, and RFC 1952.

The gzip format is used in HTTP compression, a technique used to speed up the sending of HTML and other content on the World Wide Web. It is one of the three standard formats for HTTP compression as specified in RFC 2616. This RFC also specifies a zlib format (called "DEFLATE"), which is equal to the gzip format except that gzip adds eleven bytes of overhead in the form of headers and trailers. Still, the gzip format is sometimes recommended over zlib because Internet Explorer does not implement the standard correctly and cannot handle the zlib format as specified in RFC 1950.[8]

zlib DEFLATE is used internally by the Portable Network Graphics (PNG) format.

Since the late 1990s, bzip2, a file compression utility based on a block-sorting algorithm, has gained some popularity as a gzip replacement. It produces considerably smaller files (especially for source code and other structured text), but at the cost of memory and processing time (up to a factor of 4).[9]

AdvanceCOMP and 7-Zip can produce gzip-compatible files, using an internal DEFLATE implementation with better compression ratios than gzip itself—at the cost of more processor time compared to the reference implementation.


See also

-   Comparison of file archivers
-   Free file format
-   List of archive formats
-   List of Unix commands


Notes


References

-   RFC 1952 – GZIP file format specification version 4.3


External links

-

Category:Archive formats Category:Cross-platform software Category:Free data compression software Category:Free software programmed in C Category:GNU Project software Category:Lossless compression algorithms Category:Unix archivers and compression-related utilities

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]