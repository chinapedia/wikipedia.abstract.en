DATA COMPRESSION RATIO, also known as COMPRESSION POWER, is a measurement of the relative reduction in size of data representation produced by a data compression algorithm. It is typically expressed as the division of uncompressed size by compressed size.


Definition

Data compression ratio is defined as the ratio between the _uncompressed size_ and _compressed size_:[1][2][3][4][5]

$${\rm Compression\;Ratio} = \frac{\rm Uncompressed\;Size}{\rm Compressed\;Size}$$

Thus, a representation that compresses a file's storage size from 10 MB to 2 MB has a compression ratio of 10/2 = 5, often notated as an explicit ratio, 5:1 (read "five" to "one"), or as an implicit ratio, 5/1. This formulation applies equally for compression, where the uncompressed size is that of the original; and for decompression, where the uncompressed size is that of the reproduction.

Sometimes the _space savings_ is given instead, which is defined as the reduction in size relative to the uncompressed size:

$${\rm Space\;Savings} = 1 - \frac{\rm Compressed\;Size}{\rm Uncompressed\;Size}$$

Thus, a representation that compresses the storage size of a file from 10MB to 2MB yields a space savings of 1 - 2/10 = 0.8, often notated as a percentage, 80%.

For signals of indefinite size, such as streaming audio and video, the compression ratio is defined in terms of uncompressed and compressed data rates instead of data sizes:

$${\rm Compression\;Ratio} = \frac{\rm Uncompressed\;Data\;Rate}{\rm Compressed\;Data\;Rate}$$

and instead of space savings, one speaks of DATA-RATE SAVINGS, which is defined as the data-rate reduction relative to the uncompressed data rate:

$${\rm Data\;Rate\;Savings} = 1 - \frac{\rm Compressed\;Data\;Rate}{\rm Uncompressed\;Data\;Rate}$$

For example, uncompressed songs in CD format have a data rate of 16 bits/channel x 2 channels x 44.1 kHz ≅ 1.4 Mbit/s, whereas AAC files on an iPod are typically compressed to 128 kbit/s, yielding a compression ratio of 10.9, for a data-rate savings of 0.91, or 91%.

When the uncompressed data rate is known, the compression ratio can be inferred from the compressed data rate.


Lossless vs. Lossy

Lossless compression of digitized data such as video, digitized film, and audio preserves all the information, but it does not generally achieve compression ratio much better than 2:1 because of the intrinsic entropy of the data. Compression algorithms which provide higher ratios either incur very large overheads or work only for specific data sequences (e.g. compressing a file with mostly zeros).[6] In contrast, lossy compression (e.g. JPEG for images, or MP3 and Opus for audio) can achieve much higher compression ratios at the cost of a decrease in quality, such as Bluetooth audio streaming, as visual or audio compression artifacts from loss of important information are introduced. A compression ratio of at least 50:1 is needed to get 1080i video into a 20 Mbit/s MPEG transport stream.[7]


Uses

The data compression ratio can serve as a measure of the complexity of a data set or signal, in particular it is used to approximate the algorithmic complexity. It is also used to see how much of a file is able to compressed without increasing its original size.


References


External links

-   Nondegrading lossy compression

Category:Data compression Category:Engineering ratios

[1]

[2]

[3]

[4]

[5]

[6] S. Mittal and J. Vetter, "A Survey Of Architectural Approaches for Data Compression in Cache and Main Memory Systems", IEEE Transactions on Parallel and Distributed Systems, 2015.

[7]