In information technology, LOSSY COMPRESSION or IRREVERSIBLE COMPRESSION is the class of data encoding methods that uses inexact approximations and partial data discarding to represent the content. These techniques are used to reduce data size for storing, handling, and transmitting content. The different versions of the photo of the cat to the right show how higher degrees of approximation create coarser images as more details are removed. This is opposed to lossless data compression (reversible data compression) which does not degrade the data. The amount of data reduction possible using lossy compression is much higher than through lossless techniques.

Well-designed lossy compression technology often reduces file sizes significantly before degradation is noticed by the end-user. Even when noticeable by the user, further data reduction may be desirable (e.g., for real-time communication, to reduce transmission times, or to reduce storage needs).

Lossy compression is most commonly used to compress multimedia data (audio, video, and images), especially in applications such as streaming media and internet telephony. By contrast, lossless compression is typically required for text and data files, such as bank records and text articles. It can be advantageous to make a master lossless file which can then be used to produce additional copies from. This allows one to avoid basing new compressed copies off of a lossy source file, which would yield additional artifacts and further unnecessary information loss.


Types

It is possible to compress many types of digital data in a way that reduces the size of a computer file needed to store it, or the bandwidth needed to transmit it, with no loss of the full information contained in the original file. A picture, for example, is converted to a digital file by considering it to be an array of dots and specifying the color and brightness of each dot. If the picture contains an area of the same color, it can be compressed without loss by saying "200 red dots" instead of "red dot, red dot, ...(197 more times)..., red dot."

The original data contains a certain amount of information, and there is a lower limit to the size of file that can carry all the information. Basic information theory says that there is an absolute limit in reducing the size of this data. When data is compressed, its entropy increases, and it cannot increase indefinitely. As an intuitive example, most people know that a compressed ZIP file is smaller than the original file, but repeatedly compressing the same file will not reduce the size to nothing. Most compression algorithms can recognize when further compression would be pointless and would in fact increase the size of the data.

In many cases, files or data streams contain more information than is needed for a particular purpose. For example, a picture may have more detail than the eye can distinguish when reproduced at the largest size intended; likewise, an audio file does not need a lot of fine detail during a very loud passage. Developing lossy compression techniques as closely matched to human perception as possible is a complex task. Sometimes the ideal is a file that provides exactly the same perception as the original, with as much digital information as possible removed; other times, perceptible loss of quality is considered a valid trade-off for the reduced data.

The terms 'irreversible' and 'reversible' are preferred over 'lossy' and 'lossless' respectively for some applications, such as medical image compression, to circumvent the negative implications of 'loss'. The type and amount of loss can affect the utility of the images. Artifacts or undesirable effects of compression may be clearly discernible yet the result still useful for the intended purpose. Or lossy compressed images may be 'visually lossless', or in the case of medical images, so-called Diagnostically Acceptable Irreversible Compression (DAIC)[1] may have been applied.


Transform coding

Some forms of lossy compression can be thought of as an application of transform coding, which is a type of data compression used for digital images, digital audio signals, and digital video. The transformation is typically used to enable better (more targeted) quantization. Knowledge of the application is used to choose information to discard, thereby lowering its bandwidth. The remaining information can then be compressed via a variety of methods. When the output is decoded, the result may not be identical to the original input, but is expected to be close enough for the purpose of the application.

The most common form of transform coding for lossy compression is the discrete cosine transform (DCT), which was introduced by Nasir Ahmed, T. Natarajan and K. R. Rao in 1974.[2] DCT is the most widely used form of lossy compression, for popular image compression formats (such as JPEG),[3] video coding standards (such as MPEG and H.264/AVC) and audio compression formats (such as MP3 and AAC).

In the case of audio data, a popular form of transform coding is perceptual coding, which transforms the raw data to a domain that more accurately reflects the information content. For example, rather than expressing a sound file as the amplitude levels over time, one may express it as the frequency spectrum over time, which corresponds more accurately to human audio perception. While data reduction (compression, be it lossy or lossless) is a main goal of transform coding, it also allows other goals: one may represent data more accurately for the original amount of space[4] – for example, in principle, if one starts with an analog or high-resolution digital master, an MP3 file of a given size should provide a better representation than a raw uncompressed audio in WAV or AIFF file of the same size. This is because uncompressed audio can only reduce file size by lowering bit rate or depth, whereas compressing audio can reduce size while maintaining bit rate and depth. This compression becomes a selective loss of the least significant data, rather than losing data across the board. Further, a transform coding may provide a better domain for manipulating or otherwise editing the data – for example, equalization of audio is most naturally expressed in the frequency domain (boost the bass, for instance) rather than in the raw time domain.

From this point of view, perceptual encoding is not essentially about _discarding_ data, but rather about a _better representation_ of data. Another use is for backward compatibility and graceful degradation: in color television, encoding color via a luminance-chrominance transform domain (such as YUV) means that black-and-white sets display the luminance, while ignoring the color information. Another example is chroma subsampling: the use of color spaces such as YIQ, used in NTSC, allow one to reduce the resolution on the components to accord with human perception – humans have highest resolution for black-and-white (luma), lower resolution for mid-spectrum colors like yellow and green, and lowest for red and blues – thus NTSC displays approximately 350 pixels of luma per scanline, 150 pixels of yellow vs. green, and 50 pixels of blue vs. red, which are proportional to human sensitivity to each component.


Information loss

Lossy compression formats suffer from generation loss: repeatedly compressing and decompressing the file will cause it to progressively lose quality. This is in contrast with lossless data compression, where data will not be lost via the use of such a procedure. Information-theoretical foundations for lossy data compression are provided by rate-distortion theory. Much like the use of probability in optimal coding theory, rate-distortion theory heavily draws on Bayesian estimation and decision theory in order to model perceptual distortion and even aesthetic judgment.

There are two basic lossy compression schemes:

-   In _lossy transform codecs_, samples of picture or sound are taken, chopped into small segments, transformed into a new basis space, and quantized. The resulting quantized values are then entropy coded.
-   In _lossy predictive codecs_, previous and/or subsequent decoded data is used to predict the current sound sample or image frame. The error between the predicted data and the real data, together with any extra information needed to reproduce the prediction, is then quantized and coded.

In some systems the two techniques are combined, with transform codecs being used to compress the error signals generated by the predictive stage.


Comparison

The advantage of lossy methods over lossless methods is that in some cases a lossy method can produce a much smaller compressed file than any lossless method, while still meeting the requirements of the application. Lossy methods are most often used for compressing sound, images or videos. This is because these types of data are intended for human interpretation where the mind can easily "fill in the blanks" or see past very minor errors or inconsistencies – ideally lossy compression is transparent (imperceptible), which can be verified via an ABX test. Data files using lossy compression are smaller in size and thus cost less to store and to transmit over the Internet, a crucial consideration for streaming video services such as Netflix and streaming audio services such as Spotify.

Emotional effects

A study conducted by the Audio Engineering Library concluded that lossy compression formats such as MP3s have distinct effects on timbral and emotional characteristics, tending to strengthen negative emotional qualities and weaken positive ones.[5] The study further noted that the trumpet is the instrument most affected by compression, while the horn is least.

Transparency

When a user acquires a lossily compressed file, (for example, to reduce download time) the retrieved file can be quite different from the original at the bit level while being indistinguishable to the human ear or eye for most practical purposes. Many compression methods focus on the idiosyncrasies of human physiology, taking into account, for instance, that the human eye can see only certain wavelengths of light. The psychoacoustic model describes how sound can be highly compressed without degrading perceived quality. Flaws caused by lossy compression that are noticeable to the human eye or ear are known as compression artifacts.

Compression ratio

The compression ratio (that is, the size of the compressed file compared to that of the uncompressed file) of lossy video codecs is nearly always far superior to that of the audio and still-image equivalents.

-   Video can be compressed immensely (e.g. 100:1) with little visible quality loss
-   Audio can often be compressed at 10:1 with almost imperceptible loss of quality
-   Still images are often lossily compressed at 10:1, as with audio, but the quality loss is more noticeable, especially on closer inspection.


Transcoding and editing

An important caveat about lossy compression (formally transcoding), is that editing lossily compressed files causes digital generation loss from the re-encoding. This can be avoided by only producing lossy files from (lossless) originals and only editing (copies of) original files, such as images in raw image format instead of JPEG. If data which has been compressed lossily is decoded and compressed losslessly, the size of the result can be comparable with the size of the data before lossy compression, but the data already lost cannot be recovered. When deciding to use lossy conversion without keeping the original, one should remember that format conversion may be needed in the future to achieve compatibility with software or devices (format shifting), or to avoid paying patent royalties for decoding or distribution of compressed files.

Editing of lossy files

By modifying the compressed data directly without decoding and re-encoding, some editing of lossily compressed files without degradation of quality is possible. Editing which reduces the file size as if it had been compressed to a greater degree, but without more loss than this, is sometimes also possible.

JPEG

The primary programs for lossless editing of JPEGs are jpegtran, and the derived exiftran (which also preserves Exif information), and Jpegcrop (which provides a Windows interface).

These allow the image to be

-   cropped
-   rotated, flipped, and flopped, or
-   converted to grayscale (by dropping the chrominance channel).

While unwanted information is destroyed, the quality of the remaining portion is unchanged.

Some other transforms are possible to some extent, such as joining images with the same encoding (composing side by side, as on a grid) or pasting images (such as logos) onto existing images (both via Jpegjoin), or scaling.[6]

Some changes can be made to the compression without re-encoding:

-   optimizing the compression (to reduce size without change to the decoded image)
-   converting between progressive and non-progressive encoding.

The freeware Windows-only IrfanView has some lossless JPEG operations in its JPG_TRANSFORM plugin.

Metadata

Metadata, such as ID3 tags, Vorbis comments, or Exif information, can usually be modified or removed without modifying the underlying data.

Downsampling/compressed representation scalability

One may wish to downsample or otherwise decrease the resolution of the represented source signal and the quantity of data used for its compressed representation without re-encoding, as in bitrate peeling, but this functionality is not supported in all designs, as not all codecs encode data in a form that allows less important detail to simply be dropped. Some well-known designs that have this capability include JPEG 2000 for still images and H.264/MPEG-4 AVC based Scalable Video Coding for video. Such schemes have also been standardized for older designs as well, such as JPEG images with progressive encoding, and MPEG-2 and MPEG-4 Part 2 video, although those prior schemes had limited success in terms of adoption into real-world common usage. Without this capacity, which is often the case in practice, to produce a representation with lower resolution or lower fidelity than a given one, one needs to start with the original source signal and encode, or start with a compressed representation and then decompress and re-encode it (transcoding), though the latter tends to cause digital generation loss.

Another approach is to encode the original signal at several different bitrates, and their either choose which to use (as when streaming over the internet – as in RealNetworks' "SureStream" – or offering varying downloads, as at Apple's iTunes Store), or broadcast several, where the best that is successfully received is used, as in various implementations of hierarchical modulation. Similar techniques are used in mipmaps, pyramid representations, and more sophisticated scale space methods. Some audio formats feature a combination of a lossy format and a lossless correction which when combined reproduce the original signal; the correction can be stripped, leaving a smaller, lossily compressed, file. Such formats include MPEG-4 SLS (Scalable to Lossless), WavPack, OptimFROG DualStream, and DTS-HD Master Audio in lossless (XLL) mode


Methods

Graphics

Image

-   Better Portable Graphics, also known as BPG (lossless or lossy compression)
-   Cartesian Perceptual Compression, also known as CPC
-   DjVu
-   Fractal compression
-   ICER, used by the Mars Rovers, related to JPEG 2000 in its use of wavelets
-   JBIG2 (lossless or lossy compression)
-   JPEG
-   JPEG 2000, JPEG's successor format that uses wavelets (lossless or lossy compression)
-   JPEG XR, another successor of JPEG with support for high dynamic range, wide gamut pixel formats (lossless or lossy compression)
-   PGF, Progressive Graphics File (lossless or lossy compression)
-   S3TC texture compression for 3D computer graphics hardware
-   Wavelet compression
-   WebP – (high-density lossless or lossy compression of RGB and RGBA images)

3D computer graphics

-   glTF

Video

-   Motion JPEG
-   MPEG-1 Part 2
-   MPEG-2 Part 2
-   MPEG-4 Part 2
-   H.264/MPEG-4 AVC (may also be lossless, even in certain video sections)
-   Ogg Theora (noted for its lack of patent restrictions)
-   Dirac
-   Sorenson video codec
-   VC-1
-   H.265/HEVC

Audio

-   Opus (mostly for real-time applications)

Music

-   AAC
-   ADPCM
-   ATRAC
-   Dolby Digital (AC-3)
-   MP2
-   MP3
-   MQA
-   Musepack (based on Musicam)
-   Ogg Vorbis (noted for its lack of patent restrictions)
-   WMA (Lossless codec available too)
-   aptX/ aptX-HD[7]
-   LDAC[8][9]

Speech

-   Adaptive Multi-Rate (Used in GSM and 3GPP)
-   Codec2 (noted for its lack of patent restrictions)
-   Speex (noted for its lack of patent restrictions)

Other data

Researchers have (semi-seriously) performed lossy compression on text by either using a thesaurus to substitute short words for long ones, or generative text techniques,[10] although these sometimes fall into the related category of lossy data conversion.


Lowering resolution

A general kind of lossy compression is to lower the resolution of an image, as in image scaling, particularly decimation. One may also remove less "lower information" parts of an image, such as by seam carving. Many media transforms, such as Gaussian blur, are, like lossy compression, irreversible: the original signal cannot be reconstructed from the transformed signal. However, in general these will have the same size as the original, and are not a form of compression. Lowering resolution has practical uses, as the NASA New Horizons craft will transmit thumbnails of its encounter with Pluto-Charon before it sends the higher resolution images. Another solution for slow connections is the usage of Image interlacing which progressively defines the image. Thus a partial transmission is enough to preview the final image, in a lower resolution version, without creating a scaled and a full version too.


See also

-   Data compression
-   Lossless compression
-   Compression artifact
-   Rate–distortion theory
-   List of codecs
-   Lenna
-   Image scaling
-   Seam carving
-   Transcoding


Notes


External links

-   Lossy audio formats, comparing the speed and compression strength of five lossy audio formats.
-   Data compression basics, including chapters on lossy compression of images, audio and video.
-   Lossy PNG image compression (research)
-   Using lossy GIF/PNG compression for the web (article)
-   JPG for Archiving, comparing the suitability of JPG and lossless compression for image archives

fr:Compression de données#Compression avec pertes

Category:Data compression Lossy compression algorithms

[1]

[2]

[3]

[4] “Although one main goal of digital audio perceptual coders is data reduction, this is not a necessary characteristic. As we shall see, perceptual coding can be used to improve the representation of digital audio through advanced bit allocation.” Masking and Perceptual Coding, Victor Lombardi

[5]

[6] New jpegtran features

[7]

[8]

[9]

[10]