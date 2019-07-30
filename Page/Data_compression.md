In signal processing, DATA COMPRESSION, SOURCE CODING,[1] or BIT-RATE REDUCTION involves encoding information using fewer bits than the original representation.[2] Compression can be either lossy or lossless. Lossless compression reduces bits by identifying and eliminating statistical redundancy. No information is lost in lossless compression. Lossy compression reduces bits by removing unnecessary or less important information.[3]

The process of reducing the size of a data file is often referred to as data compression. In the context of data transmission, it is called source coding; encoding done at the source of the data before it is stored or transmitted.[4] Source coding should not be confused with channel coding, for error detection and correction or line coding, the means for mapping data onto a signal.

Compression is useful because it reduces resources required to store and transmit data. Computational resources are consumed in the compression process and, usually, in the reversal of the process (decompression). Data compression is subject to a space–time complexity trade-off. For instance, a compression scheme for video may require expensive hardware for the video to be decompressed fast enough to be viewed as it is being decompressed, and the option to decompress the video in full before watching it may be inconvenient or require additional storage. The design of data compression schemes involves trade-offs among various factors, including the degree of compression, the amount of distortion introduced (when using lossy data compression), and the computational resources required to compress and decompress the data.[5][6]


Lossless

Lossless data compression algorithms usually exploit statistical redundancy to represent data without losing any information, so that the process is reversible. Lossless compression is possible because most real-world data exhibits statistical redundancy. For example, an image may have areas of color that do not change over several pixels; instead of coding "red pixel, red pixel, ..." the data may be encoded as "279 red pixels". This is a basic example of run-length encoding; there are many schemes to reduce file size by eliminating redundancy.

The Lempel–Ziv (LZ) compression methods are among the most popular algorithms for lossless storage.[7] DEFLATE is a variation on LZ optimized for decompression speed and compression ratio, but compression can be slow. In the mid-1980s, following work by Terry Welch, the Lempel–Ziv–Welch (LZW) algorithm rapidly became the method of choice for most general-purpose compression systems. LZW is used in GIF images, programs such as PKZIP, and hardware devices such as modems.[8] LZ methods use a table-based compression model where table entries are substituted for repeated strings of data. For most LZ methods, this table is generated dynamically from earlier data in the input. The table itself is often Huffman encoded. Grammar-based codes like this can compress highly repetitive input extremely effectively, for instance, a biological data collection of the same or closely related species, a huge versioned document collection, internet archival, etc. The basic task of grammar-based codes is constructing a context-free grammar deriving a single string. Other practical grammar compression algorithms include Sequitur and Re-Pair.

The strongest modern lossless compressors use probabilistic models, such as prediction by partial matching. The Burrows–Wheeler transform can also be viewed as an indirect form of statistical modelling.[9] In a further refinement of the direct use of probabilistic modelling, statistical estimates can be coupled to an algorithm called arithmetic coding. Arithmetic coding is a more modern coding technique that uses the mathematical calculations of a finite-state machine to produce a string of encoded bits from a series of input data symbols. It can achieve superior compression compared to other techniques such as the better-known Huffman algorithm. It uses an internal memory state to avoid the need to perform a one-to-one mapping of individual input symbols to distinct representations that use an integer number of bits, and it clears out the internal memory only after encoding the entire string of data symbols. Arithmetic coding applies especially well to adaptive data compression tasks where the statistics vary and are context-dependent, as it can be easily coupled with an adaptive model of the probability distribution of the input data. An early example of the use of arithmetic coding was in an optional (but not widely used) feature of the JPEG image coding standard.[10] It has since been applied in various other designs including H.263, H.264/MPEG-4 AVC and HEVC for video coding.[11]


Lossy

In the late 1980s, digital images became more common, and standards for lossless image compression emerged. In the early 1990s, lossy compression methods began to be widely used.[12] In these schemes, some loss of information is accepted as dropping nonessential detail can save storage space. There is a corresponding trade-off between preserving information and reducing size. Lossy data compression schemes are designed by research on how people perceive the data in question. For example, the human eye is more sensitive to subtle variations in luminance than it is to the variations in color. JPEG image compression works in part by rounding off nonessential bits of information.[13] A number of popular compression formats exploit these perceptual differences, including psychoacoustics for sound, and psychovisuals for images and video.

Most forms of lossy compression are based on transform coding, especially discrete cosine transform (DCT), which was introduced by Nasir Ahmed, T. Natarajan and K. R. Rao in 1974.[14] DCT is widely used in lossy compression formats for images (such as JPEG),[15] video (such as MPEG and H.264/AVC) and audio (such as MP3 and AAC).

Lossy image compression is used in digital cameras, to increase storage capacities. Similarly, DVDs, Blu-ray and streaming video use the lossy video coding format.

In lossy audio compression, methods of psychoacoustics are used to remove non-audible (or less audible) components of the audio signal. Compression of human speech is often performed with even more specialized techniques; speech coding is distinguished as a separate discipline from general-purpose audio compression. Speech coding is used in internet telephony, for example, audio compression is used for CD ripping and is decoded by the audio players.[16]


Theory

The theoretical background of compression is provided by information theory (which is closely related to algorithmic information theory) for lossless compression and rate–distortion theory for lossy compression. These areas of study were essentially created by Claude Shannon, who published fundamental papers on the topic in the late 1940s and early 1950s. Coding theory is also related to this. The idea of data compression is also deeply connected with statistical inference.[17]

Machine learning

There is a close connection between machine learning and compression: a system that predicts the posterior probabilities of a sequence given its entire history can be used for optimal data compression (by using arithmetic coding on the output distribution) while an optimal compressor can be used for prediction (by finding the symbol that compresses best, given the previous history). This equivalence has been used as a justification for using data compression as a benchmark for "general intelligence."[18][19][20]

Feature space vectors

However a new, alternative view can show compression algorithms implicitly map strings into implicit feature space vectors, and compression-based similarity measures compute similarity within these feature spaces. For each compressor C(.) we define an associated vector space ℵ, such that C(.) maps an input string x, corresponds to the vector norm ||~x||. An exhaustive examination of the feature spaces underlying all compression algorithms is precluded by space; instead, feature vectors chooses to examine three representative lossless compression methods, LZW, LZ77, and PPM.[21]

Data differencing

Data compression can be viewed as a special case of data differencing:[22][23] Data differencing consists of producing a _difference_ given a _source_ and a _target,_ with patching producing a _target_ given a _source_ and a _difference,_ while data compression consists of producing a compressed file given a target, and decompression consists of producing a target given only a compressed file. Thus, one can consider data compression as data differencing with empty source data, the compressed file corresponding to a "difference from nothing." This is the same as considering absolute entropy (corresponding to data compression) as a special case of relative entropy (corresponding to data differencing) with no initial data.

When one wishes to emphasize the connection, one may use the term _differential compression_ to refer to data differencing.


Uses

Audio

Audio data compression, not to be confused with dynamic range compression, has the potential to reduce the transmission bandwidth and storage requirements of audio data. Audio compression algorithms are implemented in software as audio codecs. Lossy audio compression algorithms provide higher compression at the cost of fidelity and are used in numerous audio applications. These algorithms almost all rely on psychoacoustics to eliminate or reduce fidelity of less audible sounds, thereby reducing the space required to store or transmit them.[24]

In both lossy and lossless compression, information redundancy is reduced, using methods such as coding, pattern recognition, and linear prediction to reduce the amount of information used to represent the uncompressed data.

The acceptable trade-off between loss of audio quality and transmission or storage size depends upon the application. For example, one 640 MB compact disc (CD) holds approximately one hour of uncompressed high fidelity music, less than 2 hours of music compressed losslessly, or 7 hours of music compressed in the MP3 format at a medium bit rate. A digital sound recorder can typically store around 200 hours of clearly intelligible speech in 640 MB.[25]

Lossless audio compression produces a representation of digital data that decompress to an exact digital duplicate of the original audio stream, unlike playback from lossy compression techniques such as Vorbis and MP3. Compression ratios are around 50–60% of original size,[26] which is similar to those for generic lossless data compression. Lossless compression is unable to attain high compression ratios due to the complexity of waveforms and the rapid changes in sound forms. Codecs like FLAC, Shorten, and TTA use linear prediction to estimate the spectrum of the signal. Many of these algorithms use convolution with the filter [-1 1] to slightly whiten or flatten the spectrum, thereby allowing traditional lossless compression to work more efficiently. The process is reversed upon decompression.

When audio files are to be processed, either by further compression or for editing, it is desirable to work from an unchanged original (uncompressed or losslessly compressed). Processing of a lossily compressed file for some purpose usually produces a final result inferior to the creation of the same compressed file from an uncompressed original. In addition to sound editing or mixing, lossless audio compression is often used for archival storage, or as master copies.

A number of lossless audio compression formats exist. Shorten was an early lossless format. Newer ones include Free Lossless Audio Codec (FLAC), Apple's Apple Lossless (ALAC), MPEG-4 ALS, Microsoft's Windows Media Audio 9 Lossless (WMA Lossless), Monkey's Audio, TTA, and WavPack. See list of lossless codecs for a complete listing.

Some audio formats feature a combination of a lossy format and a lossless correction; this allows stripping the correction to easily obtain a lossy file. Such formats include MPEG-4 SLS (Scalable to Lossless), WavPack, and OptimFROG DualStream.

Other formats are associated with a distinct system, such as:

-   Direct Stream Transfer, used in Super Audio CD
-   Meridian Lossless Packing, used in DVD-Audio, Dolby TrueHD, Blu-ray and HD DVD

Lossy audio compression

s of audio in an uncompressed format and several lossy formats. The lossy spectrograms show bandlimiting of higher frequencies, a common technique associated with lossy audio compression.]]

Lossy audio compression is used in a wide range of applications. In addition to the direct applications (MP3 players or computers), digitally compressed audio streams are used in most video DVDs, digital television, streaming media on the internet, satellite and cable radio, and increasingly in terrestrial radio broadcasts. Lossy compression typically achieves far greater compression than lossless compression (5–20% of the original size, rather than 50–60%), by discarding less-critical data.[27]

The innovation of lossy audio compression was to use psychoacoustics to recognize that not all data in an audio stream can be perceived by the human auditory system. Most lossy compression reduces perceptual redundancy by first identifying perceptually irrelevant sounds, that is, sounds that are very hard to hear. Typical examples include high frequencies or sounds that occur at the same time as louder sounds. Those sounds are coded with decreased accuracy or not at all.

Due to the nature of lossy algorithms, audio quality suffers when a file is decompressed and recompressed (digital generation loss). This makes lossy compression unsuitable for storing the intermediate results in professional audio engineering applications, such as sound editing and multitrack recording. However, they are very popular with end users (particularly MP3) as a megabyte can store about a minute's worth of music at adequate quality.

Coding methods

To determine what information in an audio signal is perceptually irrelevant, most lossy compression algorithms use transforms such as the modified discrete cosine transform (MDCT) to convert time domain sampled waveforms into a transform domain. Once transformed, typically into the frequency domain, component frequencies can be allocated bits according to how audible they are. Audibility of spectral components calculated using the absolute threshold of hearing and the principles of simultaneous masking—the phenomenon wherein a signal is masked by another signal separated by frequency—and, in some cases, temporal masking—where a signal is masked by another signal separated by time. Equal-loudness contours may also be used to weight the perceptual importance of components. Models of the human ear-brain combination incorporating such effects are often called psychoacoustic models.[28]

Other types of lossy compressors, such as the linear predictive coding (LPC) used with speech, are source-based coders. These coders use a model of the sound's generator (such as the human vocal tract with LPC) to whiten the audio signal (i.e., flatten its spectrum) before quantization. LPC may be thought of as a basic perceptual coding technique: reconstruction of an audio signal using a linear predictor shapes the coder's quantization noise into the spectrum of the target signal, partially masking it.[29]

Lossy formats are often used for the distribution of streaming audio or interactive applications (such as the coding of speech for digital transmission in cell phone networks). In such applications, the data must be decompressed as the data flows, rather than after the entire data stream has been transmitted. Not all audio codecs can be used for streaming applications, and for such applications a codec designed to stream data effectively will usually be chosen.[30]

Latency results from the methods used to encode and decode the data. Some codecs will analyze a longer segment of the data to optimize efficiency, and then code it in a manner that requires a larger segment of data at one time to decode. (Often codecs create segments called a "frame" to create discrete data segments for encoding and decoding.) The inherent latency of the coding algorithm can be critical; for example, when there is a two-way transmission of data, such as with a telephone conversation, significant delays may seriously degrade the perceived quality.

In contrast to the speed of compression, which is proportional to the number of operations required by the algorithm, here latency refers to the number of samples that must be analysed before a block of audio is processed. In the minimum case, latency is zero samples (e.g., if the coder/decoder simply reduces the number of bits used to quantize the signal). Time domain algorithms such as LPC also often have low latencies, hence their popularity in speech coding for telephony. In algorithms such as MP3, however, a large number of samples have to be analyzed to implement a psychoacoustic model in the frequency domain, and latency is on the order of 23 ms (46 ms for two-way communication)).

Speech encoding

Speech encoding is an important category of audio data compression. The perceptual models used to estimate what a human ear can hear are generally somewhat different from those used for music. The range of frequencies needed to convey the sounds of a human voice are normally far narrower than that needed for music, and the sound is normally less complex. As a result, speech can be encoded at high quality using a relatively low bit rate.

If the data to be compressed is analog (such as a voltage that varies with time), quantization is employed to digitize it into numbers (normally integers). This is referred to as analog-to-digital (A/D) conversion. If the integers generated by quantization are 8 bits each, then the entire range of the analog signal is divided into 256 intervals and all the signal values within an interval are quantized to the same number. If 16-bit integers are generated, then the range of the analog signal is divided into 65,536 intervals.

This relation illustrates the compromise between high resolution (a large number of analog intervals) and high compression (small integers generated). This application of quantization is used by several speech compression methods. This is accomplished, in general, by some combination of two approaches:

-   Only encoding sounds that could be made by a single human voice.
-   Throwing away more of the data in the signal—keeping just enough to reconstruct an "intelligible" voice rather than the full frequency range of human hearing.

Perhaps the earliest algorithms used in speech encoding (and audio data compression in general) were the A-law algorithm and the µ-law algorithm.

History

for PC, 1990]]

In 1950, Bell Labs filed the patent on differential pulse-code modulation (DPCM).[31] Adaptive DPCM (ADPCM) was introduced by P. Cummiskey, Nikil S. Jayant and James L. Flanagan at Bell Labs in 1973.[32][33]

Perceptual coding was first used for speech coding compression, with linear predictive coding (LPC).[34] Initial concepts for LPC date back to the work of Fumitada Itakura (Nagoya University) and Shuzo Saito (Nippon Telegraph and Telephone) in 1966.[35] During the 1970s, Bishnu S. Atal and Manfred R. Schroeder at Bell Labs developed a form of LPC called adaptive predictive coding (APC), a perceptual coding algorithm that exploited the masking properties of the human ear, followed in the early 1980s with the code-excited linear prediction (CELP) algorithm which achieved a significant compression ratio for its time.[36] Perceptual coding is used by modern audio compression formats such as MP3[37] and AAC.

Discrete cosine transform (DCT), developed by Nasir Ahmed, T. Natarajan and K. R. Rao in 1974,[38] provided the basis for the modified discrete cosine transform (MDCT) used by modern audio compression formats such as MP3[39] and AAC. MDCT was proposed by J. P. Princen, A. W. Johnson and A. B. Bradley in 1987,[40] following earlier work by Princen and Bradley in 1986.[41]

The world's first commercial broadcast automation audio compression system was developed by Oscar Bonello, an engineering professor at the University of Buenos Aires.[42] In 1983, using the psychoacoustic principle of the masking of critical bands first published in 1967,[43] he started developing a practical application based on the recently developed IBM PC computer, and the broadcast automation system was launched in 1987 under the name Audicom. Twenty years later, almost all the radio stations in the world were using similar technology manufactured by a number of companies.

A literature compendium for a large variety of audio coding systems was published in the IEEE's _Journal on Selected Areas in Communications_ (_JSAC_), in February 1988. While there were some papers from before that time, this collection documented an entire variety of finished, working audio coders, nearly all of them using perceptual (i.e. masking) techniques and some kind of frequency analysis and back-end noiseless coding.[44] Several of these papers remarked on the difficulty of obtaining good, clean digital audio for research purposes. Most, if not all, of the authors in the _JSAC_ edition were also active in the MPEG-1 Audio committee, which created the MP3 format.

Video

Video compression is a practical implementation of source coding in information theory. In practice, most video codecs are used alongside audio compression techniques to store the separate but complementary data streams as one combined package using so-called _container formats_.[45]

Uncompressed video requires a very high data rate. Although lossless video compression codecs perform at a compression factor of 5 to 12, a typical H.264 lossy compression video has a compression factor between 20 and 200.[46]

Encoding theory

Video data may be represented as a series of still image frames. Such data usually contains abundant amounts of spatial and temporal redundancy. Video compression algorithms attempt to reduce redundancy and store information more compactly.

Most video compression formats and codecs exploit both spatial and temporal redundancy (e.g. through difference coding with motion compensation). Similarities can be encoded by only storing differences between e.g. temporally adjacent frames (inter-frame coding) or spatially adjacent pixels (intra-frame coding). Inter-frame compression (a temporal delta encoding) is one of the most powerful compression techniques. It (re)uses data from one or more earlier or later frames in a sequence to describe the current frame. Intra-frame coding, on the other hand, uses only data from within the current frame, effectively being still-image compression.[47]

A class of specialized formats used in camcorders and video editing use less complex compression schemes that restrict their prediction techniques to intra-frame prediction.

Usually video compression additionally employs lossy compression techniques like quantization that reduce aspects of the source data that are (more or less) irrelevant to the human visual perception by exploiting perceptual features of human vision. For example, small differences in color are more difficult to perceive than are changes in brightness. Compression algorithms can average a color across these similar areas to reduce space, in a manner similar to those used in JPEG image compression.[48] As in all lossy compression, there is a trade-off between video quality and bit rate, cost of processing the compression and decompression, and system requirements. Highly compressed video may present visible or distracting artifacts.

Other methods than the prevalent DCT-based transform formats, such as fractal compression, matching pursuit and the use of a discrete wavelet transform (DWT), have been the subject of some research, but are typically not used in practical products (except for the use of wavelet coding as still-image coders without motion compensation). Interest in fractal compression seems to be waning, due to recent theoretical analysis showing a comparative lack of effectiveness of such methods.[49]

Inter-frame coding

Inter-frame coding works by comparing each frame in the video with the previous one. Individual frames of a video sequence are compared from one frame to the next, and the video compression codec sends only the differences to the reference frame. If the frame contains areas where nothing has moved, the system can simply issue a short command that copies that part of the previous frame into the next one. If sections of the frame move in a simple manner, the compressor can emit a (slightly longer) command that tells the decompressor to shift, rotate, lighten, or darken the copy. This longer command still remains much shorter than intraframe compression. Usually the encoder will also transmit a residue signal which describes the remaining more subtle differences to the reference imagery. Using entropy coding, these residue signals have a more compact representation than the full signal. In areas of video with more motion, the compression must encode more data to keep up with the larger number of pixels that are changing. Commonly during explosions, flames, flocks of animals, and in some panning shots, the high-frequency detail leads to quality decreases or to increases in the variable bitrate.

Hybrid block-based transform formats

Today, nearly all commonly used video compression methods (e.g., those in standards approved by the ITU-T or ISO) share the same basic architecture that dates back to H.261 which was standardized in 1988 by the ITU-T. They mostly rely on the DCT, applied to rectangular blocks of neighboring pixels, and temporal prediction using motion vectors, as well as nowadays also an in-loop filtering step.

In the prediction stage, various deduplication and difference-coding techniques are applied that help decorrelate data and describe new data based on already transmitted data.

Then rectangular blocks of (residue) pixel data are transformed to the frequency domain to ease targeting irrelevant information in quantization and for some spatial redundancy reduction. The discrete cosine transform (DCT) that is widely used in this regard was introduced by N. Ahmed, T. Natarajan and K. R. Rao in 1974.[50]

In the main lossy processing stage that data gets quantized in order to reduce information that is irrelevant to human visual perception.

In the last stage statistical redundancy gets largely eliminated by an entropy coder which often applies some form of arithmetic coding.

In an additional in-loop filtering stage various filters can be applied to the reconstructed image signal. By computing these filters also inside the encoding loop they can help compression because they can be applied to reference material before it gets used in the prediction process and they can be guided using the original signal. The most popular example are deblocking filters that blur out blocking artefacts from quantization discontinuities at transform block boundaries.

History

Basic compression algorithms developed prior to the 1980s provided the basis for modern video compression. Entropy coding started in the 1940s with the introduction of Shannon–Fano coding,[51] the basis for Huffman coding which was developed in 1950.[52] In 1967, A.H. Robinson and C. Cherry proposed a run-length encoding bandwidth compression scheme for the transmission of analog television signals.[53] Transform coding was introduced in 1969, in the form of the Hadamard transform.[54] Discrete cosine transform (DCT), which is fundamental to modern video compression,[55] was introduced by Nasir Ahmed, T. Natarajan and K. R. Rao in 1974.[56][57]

H.261, which debuted in 1988, commercially introduced the prevalent basic architecture of video compression technology.[58] It was the first video coding format based on DCT compression, which would subsequently become the standard for all of the major video coding formats that followed.[59] H.261 was developed by a number of companies, including Hitachi, PictureTel, NTT, BT and Toshiba.[60]

The most popular video coding standards used for codecs have been the MPEG standards. MPEG-1 was developed by the Motion Picture Experts Group (MPEG) in 1991, and it was designed to compress VHS-quality video. It was succeeded in 1994 by MPEG-2/H.262,[61] which was developed by a number of companies, primarily Sony, Thomson and Mitsubishi Electric.[62] MPEG-2 became the standard video format for DVD and SD digital television.[63] In 1999, it was followed by MPEG-4/H.263, which was a major leap forward for video compression technology.[64] It was developed by a number of companies, primarily Mitsubishi Electric, Hitachi and Panasonic.[65]

The most widely used video coding format is H.264/MPEG-4 AVC. It was developed in 2003 by a number of organizations, primarily Panasonic, Godo Kaisha IP Bridge and LG Electronics.[66] AVC commercially introduced the modern context-adaptive binary arithmetic coding (CABAC) and context-adaptive variable-length coding (CAVLC) algorithms. AVC is the main video encoding standard for Blu-ray Discs, and is widely used by streaming internet services such as YouTube, Netflix, Vimeo, and iTunes Store, web software such as Adobe Flash Player and Microsoft Silverlight, and various HDTV broadcasts over terrestrial and satellite television.

Genetics

Genetics compression algorithms are the latest generation of lossless algorithms that compress data (typically sequences of nucleotides) using both conventional compression algorithms and genetic algorithms adapted to the specific datatype. In 2012, a team of scientists from Johns Hopkins University published a genetic compression algorithm that does not use a reference genome for compression. HAPZIPPER was tailored for HapMap data and achieves over 20-fold compression (95% reduction in file size), providing 2- to 4-fold better compression and in much faster time than the leading general-purpose compression utilities. For this, Chanda, Elhaik, and Bader introduced MAF based encoding (MAFE), which reduces the heterogeneity of the dataset by sorting SNPs by their minor allele frequency, thus homogenizing the dataset.[67] Other algorithms in 2009 and 2013 (DNAZip and GenomeZip) have compression ratios of up to 1200-fold—allowing 6 billion basepair diploid human genomes to be stored in 2.5 megabytes (relative to a reference genome or averaged over many genomes).[68][69] For a benchmark in genetics/genomics data compressors, see [70]


Outlook and currently unused potential

It is estimated that the total amount of data that is stored on the world's storage devices could be further compressed with existing compression algorithms by a remaining average factor of 4.5:1.[71] It is estimated that the combined technological capacity of the world to store information provides 1,300 exabytes of hardware digits in 2007, but when the corresponding content is optimally compressed, this only represents 295 exabytes of Shannon information.[72]


See also

-   Auditory masking
-   HTTP compression
-   Kolmogorov complexity
-   Magic compression algorithm
-   Minimum description length
-   Modulo-N code
-   Perceptual audio coder
-   Range encoding
-   Sub-band coding
-   Universal code (data compression)
-   Vector quantization


References


External links

-   Data Compression Basics (Video)
-   Video compression 4:2:2 10-bit and its benefits
-   Why does 10-bit save bandwidth (even when content is 8-bit)?
-   Which compression technology should be used
-   Wiley – Introduction to Compression Theory
-   EBU subjective listening tests on low-bitrate audio codecs
-   Audio Archiving Guide: Music Formats (Guide for helping a user pick out the right codec)
-   -   hydrogenaudio wiki comparison
-   Introduction to Data Compression by Guy E Blelloch from CMU
-   HD Greetings – 1080p Uncompressed source material for compression testing and research
-   Explanation of lossless signal compression method used by most codecs
-   Interactive blind listening tests of audio codecs over the internet
-   TestVid – 2,000+ HD and other uncompressed source video clips for compression testing
-   Videsignline – Intro to Video Compression
-   Data Footprint Reduction Technology
-   What is Run length Coding in video compression.

Data_compression Category:Digital audio Category:Digital television Category:Film and video technology Category:Video compression Category:Videotelephony Category:Utility software types

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

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] P. Cummiskey, Nikil S. Jayant, and J. L. Flanagan, "Adaptive quantization in differential PCM coding of speech", _Bell Syst. Tech. J._, vol. 52, pp. 1105—1118, Sept. 1973

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40] J. P. Princen, A. W. Johnson und A. B. Bradley: _Subband/transform coding using filter bank designs based on time domain aliasing cancellation_, IEEE Proc. Intl. Conference on Acoustics, Speech, and Signal Processing (ICASSP), 2161–2164, 1987.

[41] John P. Princen, Alan B. Bradley: _Analysis/synthesis filter bank design based on time domain aliasing cancellation_, IEEE Trans. Acoust. Speech Signal Processing, _ASSP-34_ (5), 1153–1161, 1986.

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58] http://www.real.com/resources/digital-video-file-formats/

[59]

[60]

[61] http://www.real.com/resources/digital-video-file-formats/

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]