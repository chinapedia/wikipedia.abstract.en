The ARABIC SPEECH CORPUS is a Modern Standard Arabic (MSA) speech corpus for speech synthesis. The corpus contains phonetic and orthographic transcriptions of more than 3.7 hours of MSA speech aligned with recorded speech on the phoneme level. The annotations include word stress marks on the individual phonemes.[1]

The Arabic Speech Corpus was built as part of a doctoral project by Nawar Halabi at the University of Southampton funded by MicroLinkPC who own an exclusive license to commercialise the corpus, but the corpus is available for strictly non-commercial purposes through the official Arabic Speech Corpus website. It is distributed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.[2]


Purpose

The corpus was mainly built for speech synthesis purposes, specifically Speech Synthesis, but the corpus has been used for building HMM based voices in Arabic. It was also used to automatically align other speech corpora with their phonetic transcript and could be used as part of a larger corpus for training speech recognition systems.[3]


Contents

The package contains the following:

-   1813 .wav files containing spoken utterances.
-   1813 .lab files containing text utterances.
-   1813 .TextGrid files containing the phoneme labels with time stamps of the boundaries where these occur in the .wav files. These files can be opened using Praat software.
-   phonetic-transcript.txt which has the form "[wav_filename]" "[Phoneme Sequence]" in every line.
-   orthographic-transcript.txt which has the form "[wav_filename]" "[Orthographic Transcript]" in every line. Orthography is in Buckwalter Format which is friendlier where there is software that does not read Arabic script. It can be easily converted back to Arabic.
-   There is an extra 18 minutes of fully annotated corpus (separate from above but with the same structure as above) which was used to evaluated the corpus (see PhD thesis).

The corpus was also used to prove that using automatically extracted, orthography-based stress marks[4] improve the quality of speech synthesis in MSA.


See also

-   Comparison of datasets in machine learning


References


External links

-   The Arabic Speech Corpus official website
-   The Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License

Category:Speech synthesis Category:Speech processing Category:Corpora Category:Datasets in machine learning Category:Arabic-language computing

[1]

[2]

[3]

[4]