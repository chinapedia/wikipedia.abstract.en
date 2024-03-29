A PRIMER is a short single-stranded nucleic acid utilized by all living organisms in the initiation of DNA synthesis. The enzymes responsible for DNA replication, DNA polymerases, are only capable of adding nucleotides to the 3’-end of an existing nucleic acid, requiring a primer be bound to the template before DNA polymerase can begin a complementary strand[1]. Living organisms use solely RNA primers, while laboratory techniques in biochemistry and molecular biology that require in vitro DNA synthesis (such as DNA sequencing and polymerase chain reaction) usually use DNA primers, since they are more temperature stable.


RNA Primers _in vivo_

RNA primers are used by living organisms in the initiation of synthesizing a strand of DNA. A class of enzymes called primases add a complementary RNA primer to the reading template _de novo_ on both the leading and lagging strands. Starting from the free 3’-OH of the primer, known as the primer terminus, a DNA polymerase can extend a newly synthesized strand. The leading strand in DNA replication is synthesized in one continuous piece moving with the replication fork, requiring only an initial RNA primer to begin synthesis. In the lagging strand, the template DNA runs in the 5′→3′ direction. Since DNA polymerase cannot add bases in the 3′→5′ direction complementary to the template strand, DNA is synthesized ‘backward’ in short fragments moving away from the replication fork, known as Okazaki fragments. Unlike in the leading strand, this method results in the repeated starting and stopping of DNA synthesis, requiring multiple RNA primers. Along the DNA template, primase intersperses RNA primers that DNA polymerase uses to synthesize DNA from in the 5′→3′ direction[2].

Another example of primers being used to enable DNA synthesis is reverse transcription. Reverse transcriptase is an enzyme that uses a template strand of RNA to synthesize a complementary strand of DNA. The DNA polymerase component of reverse transcriptase requires an existing 3' end to begin synthesis.[3]

Primer removal

After the insertion of Okazaki fragments, the RNA primers are removed (the mechanism of removal differs between prokaryotes and eukaryotes) and replaced with new deoxyribonucleotides that fill the gaps where the RNA was present. DNA ligase then joins the fragmented strands together, completing the synthesis of the lagging strand[4].

In prokaryotes, DNA polymerase I synthesizes the Okazaki fragment until it reaches the previous RNA primer. Then the enzyme simultaneously acts as a 5′→3′ exonuclease, removing primer ribonucleotides in front and adding deoxyribonucleotides behind until the region has been replaced by DNA, leaving a small gap in the DNA backbone between Okazaki fragments which is sealed by DNA ligase.

In eukaryotic primer removal, DNA polymerase δ extends the Okazaki fragment in 5′→3′ direction, and upon encountering the RNA primer from the previous Okazaki fragment, it displaces the 5′ end of the primer into a single-stranded RNA flap, which is removed by nuclease cleavage. Cleavage of the RNA flaps involves either flap structure-specific endonuclease 1 (FEN1) cleavage of short flaps, or coating of long flaps by the single-stranded DNA binding protein replication protein A (RPA) and sequential cleavage by Dna2 nuclease and FEN1.[5]


Uses of synthetic primers

]]

Synthetic primers are chemically synthesized oligonucleotides, usually of DNA, which can be customized to anneal to a specific site on the template DNA. In solution, the primer spontaneously hybridizes with the template through Watson-Crick base pairing before being extended by DNA polymerase. The ability to create and customize synthetic primers has proven an invaluable tool necessary to a variety of molecular biological approaches involving the analysis of DNA. Both the Sanger chain termination method and the “Next-Gen” method of DNA sequencing require primers to initiate the reaction[6].

PCR primer design

The polymerase chain reaction (PCR) uses a pair of custom primers to direct DNA elongation toward each-other at opposite ends of the sequence being amplified. These primers are typically between 18 and 24 bases in length, and must code for only the specific upstream and downstream sites of the sequence being amplified. A primer that can bind to multiple regions along the DNA will amplify them all, eliminating the purpose of PCR[7].

A few criteria must be brought into consideration when designing a pair of PCR primers. Pairs of primers should have similar melting temperatures since annealing during PCR occurs for strands both simultaneously, and this shared melting temperature must not be either too much higher or lower than the reaction's annealing temperature. A primer with a _T__(m) (melting temperature) too much higher than the reaction's annealing temperature may mishybridize and extend at an incorrect location along the DNA sequence. A _T__(m) significantly lower than the annealing temperature may fail to anneal and extend at all.

Additionally, primer sequences need to be chosen to uniquely select for a region of DNA, avoiding the possibility of hybridization to a similar sequence nearby. A commonly used method for selecting a primer site is BLAST search, whereby all the possible regions to which a primer may bind can be seen. Both the nucleotide sequence as well as the primer itself can be BLAST searched. The free NCBI tool Primer-BLAST integrates primer design and BLAST search into one application,[8] as do commercial software products such as ePrime and Beacon Designer. Computer simulations of theoretical PCR results (Electronic PCR) may be performed to assist in primer design by giving melting and annealing temperatures, etc.[9]

Many online tools are freely available for primer design, some of which focus on specific applications of PCR. The popular tools Primer3Plus and PrimerQuest can be used to find primers matching a wide variety of specifications. Highly degenerate primers for targeting a wide variety of DNA templates can be interactively designed using GeneFISHER. Primers with high specificity for a subset of DNA templates in the presence of many similar variants can be designed using DECIPHER. Primer design aims to generate a balance between specificity and efficiency of amplification.[10]

Selecting a specific region of DNA for primer binding requires some additional considerations. Regions high in mononucleotide and dinucleotide repeats should be avoided, as loop formation can occur and contribute to mishybridization. Primers should not easily anneal with other primers in the mixture; this phenomenon can lead to the production of 'primer dimer' products contaminating the end solution. Primers should also not anneal strongly to themselves, as internal hairpins and loops could hinder the annealing with the template DNA.

When designing primers, additional nucleotide bases can be added to the back ends of each primer, resulting in a customized cap sequence on each end of the amplified region. One application for this practice is for use in TA cloning, a special subcloning technique similar to PCR, where efficiency can be increased by adding AG tails to the 5′ and the 3′ ends.[11]

Degenerate primers

Some situations may call for the use of _degenerate primers._ These are mixtures of primers that are similar, but not identical. These may be convenient when amplifying the same gene from different organisms, as the sequences are probably similar but not identical. This technique is useful because the genetic code itself is degenerate, meaning several different codons can code for the same amino acid. This allows different organisms to have a significantly different genetic sequence that code for a highly similar protein. For this reason, degenerate primers are also used when primer design is based on protein sequence, as the specific sequence of codons are not known. Therefore, primer sequence corresponding to the amino acid isoleucine might be "ATH", where A stands for adenine, T for thymine, and H for adenine, thymine, or cytosine, according to the genetic code for each codon, using the IUPAC symbols for degenerate bases. Degenerate primers may not perfectly hybridize with a target sequence, which can greatly reduce the specificity of the PCR amplification.

_Degenerate primers_ are widely used and extremely useful in the field of microbial ecology. They allow for the amplification of genes from thus far uncultivated microorganisms or allow the recovery of genes from organisms where genomic information is not available. Usually, degenerate primers are designed by aligning gene sequencing found in GenBank. Differences among sequences are accounted for by using IUPAC degeneracies for individual bases. PCR primers are then synthesized as a mixture of primers corresponding to all permutations of the codon sequence.


See also

-   Oligonucleotide synthesis – the methods by which primers are manufactured


References


External links

-   _T__(m) calculator
-   Primer3
-   Primer-BLAST

Category:Molecular biology Category:DNA replication

[1]

[2]

[3]

[4]

[5] Distinguishing the pathways of primer removal during Eukaryotic Okazaki fragment maturation Contributor Author Rossi, Marie Louise. Date Accessioned: 2009-02-23T17:05:09Z. Date Available: 2009-02-23T17:05:09Z. Date Issued: 2009-02-23T17:05:09Z. Description: Dr. Robert A. Bambara, Faculty Advisor. Thesis (PhD) – School of Medicine and Dentistry, University of Rochester. UR only until January 2010. UR only until January 2010.

[6]

[7]

[8] Primer-BLAST

[9]

[10]

[11] Adenosine added on the primer 50 end improved TA cloning efficiency of polymerase chain reaction products, Ri-He Peng, Ai-Sheng Xiong, Jin-ge Liu, Fang Xu, Cai Bin, Hong Zhu, Quan-Hong Yao