SplicingSlide.png

Gene regulation is the main genetic program through which an organism controls its normal functions. Thus, any error in this program caused by mutations will alter the normal state and lead to disease. RNA splicing is increasingly realized to be at the center of gene regulation in eukaryotic organisms, including all animals and plants. In this context, Dr. Periannan Senapathy has pioneered research in the biology of RNA splicing, and provided tenable solutions for why genes are split, how splice junction sequences originated, and why exons are very short and introns are very long (Split-Gene Theory).[1][2][3] Based on these findings, he has provided an algorithm known as the SHAPIRO & SENAPATHY ALGORITHM (S&S) for predicting the splice sites, exons and genes in animals and plants.[4][5] This algorithm has the ability to discover disease-causing mutations in splice junctions in cancerous and non-cancerous diseases that is being used in major research institutions around the world.

The S&S algorithm has been cited in ~3,000 publications in clinical genomics on finding splicing mutations in thousands of diseases including many different forms of cancer and non-cancer diseases. It has been the basis of many leading software tools, such as Human Splicing Finder,[6] Splice-site Analyzer Tool,[7] dbass (Ensembl),[8] Alamut[9] and SROOGLE,[10] which are cited by approx. 1,500 additional citations. The S&S algorithm has thus significantly impacted the field of medicine, and is increasingly applied in today's disease research, pharmacogenomics, and Precision Medicine, as up to 50% of all diseases and ADRs (Adverse Drug Reactions) are now thought to be caused by RNA splicing mutations.[11][12][13][14][15][16][17]

Using the S&S algorithm, scientists have identified mutations and genes that cause numerous cancers, inherited disorders, immune deficiency diseases and neurological disorders. In addition, mutations in various drug metabolizing genes that cause ADRs to different drugs that are used to treat different diseases, including cancer chemotherapeutic drugs, have been identified. S&S is also used in detecting the “cryptic” splice sites that are not authentic sites used in the normal splicing of gene transcripts, and the mutations in which cause numerous diseases. The details are provided in the following sections.


Cancer gene discovery using S&S

By using the S&S algorithm, mutations and genes that cause many different forms of cancer have been discovered. For example, genes causing commonly occurring cancers including breast cancer,[18][19][20] ovarian cancer,[21][22][23] colorectal cancer,[24][25][26] leukemia,[27][28] head and neck cancers,[29][30] prostate cancer,[31][32] retinoblastoma,[33][34] squamous cell carcinoma,[35][36][37] gastrointestinal cancer,[38][39] melanoma,[40][41] liver cancer,[42][43] Lynch syndrome,[44][45][46] skin cancer,[47][48][49] and neurofibromatosis[50][51] have been found.  In addition, splicing mutations in genes causing less commonly known cancers including gastric cancer,[52][53][54] gangliogliomas,[55][56] Li-Fraumeni syndrome, Loeys–Dietz syndrome, Osteochondromas (bone tumor), Nevoid basal cell carcinoma syndrome,[57] and Pheochromocytomas[58] have been identified.

Specific mutations in different splice sites in various genes causing breast cancer (e.g., BRCA1, PALB2), ovarian cancer (e.g.,  SLC9A3R1, COL7A1, HSD17B7), colon cancer (e.g., APC, MLH1, DPYD), colorectal cancer (e.g., COL3A1, APC, HLA-A), skin cancer (e.g., COL17A1, XPA, POLH), and Fanconi anemia (e.g., FANC, FANA) have been uncovered. The mutations in the donor and acceptor splice sites in different genes causing a variety of cancers that have been identified by S&S are shown in TABLE 1.

  DISEASE TYPE                    GENE SYMBOL   MUTATION LOCATION   ORIGINAL SEQUENCE   MUTATED SEQUENCE                                                SPLICING ABERRATION
  ------------------------------- ------------- ------------------- ------------------- --------------------------------------------------------------- -----------------------------------------------------------------------------------------------------
  Breast cancer                   BRCA1         Exon 11             AAGGTGTGT           AAAGTGTGT                                                       Skipping of exon 12[59]
  PALB2                           Exon 12       CAGGCAAGT           CAAGCAAGT           Potentially weakening the canonical donor splicing site[60]
  Ovarian cancer                  SLC9A3R1      Exon2               GAGGTGATG           GAGGCGATG                                                       Significant effect in ‘splicing’[61]
  Colorectal Cancer               MLH1          Exon 9              TCGGTATGT           TCAGTATGT                                                       Skipping of exon 8 and protein truncation[62]
  MSH2                            Intron 8      CAGGTATGC           CAGGCATGC           Intervening sequence, RNA processing,No amino acid change[63]
  MSH6                            Intron 9      TTTTTAATTTTAAGG     TTTTTAATTTTGAGG     Intervening sequence, RNA processing,No amino acid change[64]
  Skin Cancer                     TGFBR1        Exon 5              TTTTGATTCTTTAGG     TTTTGATTCTTTCGG                                                 Exon 5 skipping[65]
  ITGA6                           Intron 19     TTATTTTCTAACAGG     TTATTTTCTAACACG     Skipping of the exon 20 and resulted in in-frame deletion[66]
  Birt–Hogg–Dubé (BHD) syndrome   FLCN          Exon 9              GAAGTAAGC           GAAGGAAGC                                                       Skipping of exon 9 and weak retention of 131 bp of intron 9[67]
  Nevoid basal cell carcinoma     PTCH1         Intron 4            CAGGTATAT           CAGGTGTAT                                                       Exon 4 Skipping [68]
  Mesothelioma                    BAP1          Exon 16             AAGGTGAGG           TAGGTGAGG                                                       Creates a novel 5’ splice site that results in a 4 nucleotide deletion of the 3’ end of exon 16[69]

TABLE 1. MUTATIONS IN THE DONOR AND ACCEPTOR SPLICE SITES IN DIFFERENT GENES


Discovery of genes causing inherited disorders using S&S

Specific mutations in different splice sites in various genes that cause inherited disorders, including, for example, Type 1 diabetes (e.g., PTPN22, TCF1 (HCF-1A)), hypertension (e.g., LDL, LDLR, LPL), marfane syndrome (e.g., FBN1, TGFBR2, FBN2), cardiac diseases (e.g., COL1A2, MYBPC3, ACTC1), eye disorders (e.g., EVC, VSX1) have been uncovered. Few example mutations in the donor and acceptor splice sites in different genes causing a variety of inherited disorders identified using S&S are shown in TABLE 2.

  DISEASE TYPE      GENE SYMBOL   MUTATION LOCATION   ORIGINAL SEQUENCE   MUTATED SEQUENCE                                                                                                                           SPLICING ABERRATION
  ----------------- ------------- ------------------- ------------------- ------------------------------------------------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------
  Diabetes          PTPN22        Exon 18             AAGGTAAAG           AACGTAAAG                                                                                                                                  Skipping of exon 18[70]
  TCF1              Intron 4      TTTGTGCCCCTCAGG     TTTGTGCCCCTCGGG     Skipping of exon 5[71]
  Hypertension      LDL           Intron 10           TGGGTGCGT           TGGGTGCAT                                                                                                                                  Normolipidemic to classical heterozygous FH[72]
  LDLR              Intron 2      GCTGTGAGT           GCTGTGTGT           May cause splicing abnormalities through an in-silico analysis[73]
  LPL               Intron 2      ACGGTAAGG           ACGATAAGG           Cryptic splice sites is activated in vivo at the sites[74]
  Marfan syndrome   FBN1          Intron 46           CAAGTAAGA           CAAGTAAAA                                                                                                                                  Exon skipping/cryptic splice site[75]
  TGFBR2            Intron 1      ATCCTGTTTTACAGA     ATCCTGTTTTACGGA     Abnormal splicing[76]
  FBN2              Intron45      TGGGTAAGT           TGGGGAAGT           Splice site alterations leading to frameshift mutations, causing a truncated protein[77]
  Cardiac disease   COL1A2        Intron 46           GCTGTAAGT           GCTGCAAGT                                                                                                                                  Permitted almost exclusive use of a cryptic donor site 17 nt upstream in the exon[78]
  MYBPC3            Intron 5      CTCCATGCACACAGG     CTCCATGCACACCGG     Abnormal mRNA transcript with a premature stop codon will produce a truncated protein lacking the binding sites for myosin and titin[79]
  ACTC1             Intron 1      TTTTCTTCTCATAGG     TTTTCTTCTTATAGG     No effect [80]
  Eye disorder      ABCR          Intron 30           CAGGTACCT           CAGTTACCT                                                                                                                                  Autosomal recessive RP and CRD[81]
  VSX1              Intron 5      TTTTTTTTTACAAGG     TATTTTTTTACAAGG     Aberrant splicing[82]

TABLE 2. MUTATIONS IN THE DONOR AND ACCEPTOR SPLICE SITES IN DIFFERENT GENES CAUSING INHERITED DISORDERS


Genes causing immune system disorders

More than 100 immune system disorders affect humans, including inflammatory bowel diseases, multiple sclerosis, systemic lupus erythematosus, bloom syndrome, familial cold autoinflammatory syndrome, and dyskeratosis congenita. The Shapiro–Senapathy algorithm has been used to discover genes and mutations involved in many immune disorder diseases, including Ataxia telangiectasia, B-cell defects, Epidermolysis bullosa, and X-linked agammaglobulinemia.

Xeroderma pigmentosum, an autosomal recessive disorder is caused by faulty proteins formed due to new preferred splice donor site identified using S&S algorithm and resulted in defective nucleotide excision repair.[83]

Type I Bartter syndrome (BS) is caused by mutations in the gene SLC12A1. S&S algorithm helped in disclosing the presence of two novel heterozygous mutations c.724 + 4A > G in intron 5 and c.2095delG in intron 16 leading to complete exon 5 skipping.[84]

Mutations in the MYH gene, which is responsible for removing the oxidatively damaged DNA lesion are cancer-susceptible in the individuals. The IVS1+5C plays a causative role in the activation of a cryptic splice donor site and the alternative splicing in intron 1, S&S algorithm shows, guanine (G) at the position of IVS+5 is well conserved (at the frequency of 84%) among primates. This also supported the fact that the G/C SNP in the conserved splice junction of the MYH gene causes the alternative splicing of intron 1 of the β type transcript.[85]

Splice site scores were calculated according to S&S to find EBV infection in X-linked lymphoproliferative disease.[86] Identification of Familial tumoral calcinosis (FTC) is an autosomal recessive disorder characterized by ectopic calcifications and elevated serum phosphate levels and it is because of aberrant splicing.[87]


Application of S&S in hospitals for clinical practice and research

Applying the S&S technology platform in modern clinical genomics research hasadvance ddiagnosis and treatment of human diseases.

In the modern era of Next Generation Sequencing (NGS) technology, S&S is applied in clinical practice extensively. Clinicians and molecular diagnostic laboratories apply S&S using various computational tools including HSF,[88] SSF,[89] and Alamut.[90] It is aiding in the discovery of genes and mutations in patients whose disease are stratified or when the disease in a patient is unknown based on clinical investigations.

In this context, S&S has been applied on cohorts of patients in different ethnic groups with various cancers and inherited disorders. A few examples are given below.

Cancers

  --- -------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------- ------ ---------------- ----------------------------
      CANCER TYPE                                  PUBLICATION TITLE                                                                                                                                 YEAR   ETHNICITY        NUMBER OF PATIENTS
  1   Breast cancer                                The germline mutational landscape of BRCA1 and BRCA2 in Brazil[91]                                                                                2018   Brazil           649 Patients
  2   Hereditary non-polyposis colorectal cancer   Prevalence and characteristics of hereditary non-polyposis colorectal cancer (HNPCC) syndrome in immigrant Asian colorectal cancer patients[92]   2017   Asian Imigrant   143 Patients
  3   Nevoid basal cell carcinoma syndrome         Nevoid basal cell carcinoma syndrome caused by splicing mutations in the PTCH1 gene[93]                                                           2016   Japanese         10 Patients
  4   Prostate cancer                              Identification of Two Novel HOXB13 Germline Mutations in Portuguese Prostate Cancer Patients[94]                                                  2015   Portuguese       462 Patients, 132 Controls
  5   Colorectal adenomatous polyposis             Identification of Novel Causative Genes for Colorectal Adenomatous Polyposis                                                                      2015   German           181 Patients,531 Controls
  6   Renal cell cancer                            Genetic screening of the FLCN gene identify six novel variants and a Danish founder mutation[95]                                                  2016   Danish           143 individuals
  --- -------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------- ------ ---------------- ----------------------------

Inherited disorders

  --- -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------ --------------------- --------------------------------------------------------
      DISEASE NAME                                             PUBLICATION TITLE                                                                                                                                                            YEAR   ETHINICITY            NUMBER OF PATIENTS
  1   Familial Hypercholesterolaemia                           Genetic Study of Low-Density Lipoprotein Receptor Gene and Apolipoprotein B-100 Gene among Malaysian Patients with Familial Hypercholesterolaemia[96]                        2016   Malaysian             74 Patients (50 Malays and 24 Chinese) and 77 Controls
  2   Bardet-Biedl Syndrome                                    The First Nationwide Survey and Genetic Analyses of Bardet-Biedl Syndrome in Japan[97]                                                                                       2015   Japan                 38 Patients(Disease identified in 9 Patients)
  3   Odontogenesis Diseases                                   Genetic Evidence Supporting the Role of the Calcium Channel, CACNA1S, in Tooth Cusp and Root Patterning[98]                                                                  2018   Thai families         11 Patients,18 Controls
  4   Beta-Ketothiolase Deficiency                             Clinical and Mutational Characterizations of Ten Indian Patients with Beta-Ketothiolase Deficiency[99]                                                                       2016   Indian                10 Patients
  5   Unclear speech developmental delay                       Progressive SCAR14 with unclear speech, developmental delay, tremor, and behavioral problems caused by a homozygous deletion of the SPTBN2 pleckstrin homology domain[100]   2017   Pakistani family      9 Patients, 12 contols
  6   Dent disease                                             Dent disease in children: diagnostic and therapeutic consideration[101]                                                                                                      2015   Poland                10 Patients
  7   Atypical Haemolytic Uraemic Syndrome                     Genetics Atypical hemolytic-uremic syndrome[102]                                                                                                                             2015   Newcastle cohort      28 Families, 7 Sporadic patients
  8   Age-related Macular Degeneration and Stargardt disease   Genetics of Age-related Macular Degeneration and Stargardt disease in South African populations[103]                                                                         2015   African Populations   32 Patients
  --- -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------ --------------------- --------------------------------------------------------

1.


S&S - the first algorithm for identifying splice sites, exons and split genes

Dr. Senapathy’s original objective in developing a method for identifying splice sites was to find complete genes in raw uncharacterized genomic sequence that could be used in the human genome project.[104][105] In the landmark paper with this objective,[106] he described the basic method for identifying the splice sites within a given sequence based on the Position Weight Matrix (PWM)[107] of the splicing sequences in different eukaryotic organism groups for the first time. He also created the first exon detection method by defining the basic characteristics of an exon as the sequence bounded by an acceptor and a donor splice sites that had S&S scores above a threshold, and by an ORF that was mandatory for an exon. An algorithm for finding complete genes based on the identified exons was also described by Dr. Senapathy for the first time.[108][109]

Dr. Senapathy demonstrated that only deleterious mutations in the donor or acceptor splice sites that would drastically make the protein defective would reduce the splice site score (later known as the Shapiro–Senapathy score), and other non-deleterious variations would not reduce the score. The S&S method was adapted for researching the cryptic splice sites caused by mutations leading to diseases. This method for detecting deleterious splicing mutations in eukaryotic genes has been used extensively in disease research in the humans, animals and plants over the past three decades, as described above.  

The basic method for splice site identification, and for defining exons and genes was subsequently used by researchers in finding splice sites, exons and eukaryotic genes in a variety of organisms. These methods also formed the basis of all subsequent tools development for discovering genes in uncharacterized genomic sequences. It also was used in a different computational approaches including machine learning and neural network, and in alternative splicing research.


Discovering the mechanisms of aberrant splicing in diseases

The Shapiro–Senapathy algorithm has been used to determine the various aberrant splicing mechanisms in genes due to deleterious mutations in the splice sites, which cause numerous diseases. Deleterious splice site mutations impair the normal splicing of the gene transcripts, and thereby make the encoded protein defective. A mutant splice site can become “weak” compared to the original site, due to which the mutated splice junction becomes unrecognizable by the spliceosomal machinery. This can lead to the skipping of the exon in the splicing reaction, resulting in the loss of that exon in the spliced mRNA (exon-skipping). On the other hand, a partial or complete intron could be included in the mRNA due to a splice site mutation that makes it unrecognizable (intron inclusion). A partial exon-skipping or intron inclusion can lead to premature termination of the protein from the mRNA, which will become defective leading to diseases. The S&S has thus paved the way to determine the mechanisms by which a deleterious mutation could lead to a defective protein, resulting in different diseases depending on which gene is affected.

Examples of splicing aberrations

  DISEASE TYPE                           GENE SYMBOL   MUTATION LOCATION   ORIGINAL DONOR/ACCEPTOR   MUTATED DONOR/ACCEPTOR   ABERRATION EFFECT
  -------------------------------------- ------------- ------------------- ------------------------- ------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Colon Cancer                           APC           Intron 2            AAGGTAGAT                 AAGGAAGAT                Skipping of Exon 3[110]
  Colorectal cancer                      MSH2          Exon 15             GAGGTTTGT                 GAGGTTTCT                Skipping of Exon 15[111]
  Retinoblastoma                         RB1           Intron 23           TCTTAACTTGACAGA           TCTTAACGTGACAGA          New splice acceptor, intron inclusion[112]
  Trophic benign epidermolysis bullosa   COL17A1       Intron 51           AGCGTAAGT                 AGCATAAGT                lead to exon skipping, intron inclusion, or the use of a cryptic splice site, resulting in either a truncated protein or a protein lacking a small region of the coding sequence[113]
  Choroideremia                          CHM           Intron 3            CAGGTAAAG                 CAGATAAAG                Premature termination codon[114]
  Cowden syndrome                        PTEN          Intron 4            GAGGTAGGT                 GAGATAGGT                Premature termination codon within exon 5[115]

An example of splicing aberration (exon skipping) caused by a mutation in the donor splice site in the exon 8 of MLH1 gene that led to colorectal cancer is given below. This example shows that a mutation in a splice site within a gene can lead to a profound effect in the sequence and structure of the mRNA, and the sequence, structure and function of the encoded protein, leading to disease.

MLH1_for_Wiki_12192018V7.png.''' The generation of a mRNA from a split gene involves the transcription of the gene into the primary RNA transcript, and the precise removal of the introns and the joining of the exons from the primary RNA transcript. A deleterious mutation within the splicing signals (donor or acceptor splice sites) can affect the recognition of the correct splice junction and lead to an aberration in the joining of the authentic exons. Depending on if the mutation occurs within the donor or the acceptor site, and the particular base that is mutated within the splice sequence, the aberration could lead to the skipping of a complete or partial exon, or the inclusion of a partial intron or a cryptic exon in the mRNA produced by the splicing process. Either of these situations will usually lead to a premature stop codon in the mRNA and result in a completely defective protein. The S&S algorithm aids in determining which splice site and exon in a gene are mutated, and the S&S score of the mutated splice site aids in determining the type of splicing aberration and the resulting mRNA structure and sequence. The example gene MLH1 affected in colorectal cancer is shown in the figure. It was found using the S&S algorithm that a mutation in the donor splice site in exon 8 led to the skipping of the exon 8. The mRNA thus lacks the sequence corresponding to exon 8 (sequence positions are shown in the figure). This causes a frame shift in the mRNA coding sequence at amino acid position 226, leading to premature protein truncation at amino acid position 233. This mutated protein is completely defective, which has led to colorectal cancer in the patient.]]


S&S in cryptic splice sites research and medical applications

The proper identification of splice sites has to be highly precise as the consensus splice sequences are very short and there are many other sequences similar to the authentic splice sites within gene sequences, which are known as cryptic, non-canonical, or pseudo splice sites. When an authentic or real splice site is mutated, any cryptic splice sites present close to the original real splice site could be erroneously used as authentic site, resulting in an aberrant mRNA. The erroneous mRNA may include a partial sequence from the neighboring intron or lose a partial exon, which may result in a premature stop codon. The result may be a truncated protein that would have lost its function completely.

Shapiro–Senapathy algorithm can identify the cryptic splice sites, in addition to the authentic splice sites. Cryptic sites can often be stronger than the authentic sites, with a higher S&S score. However, due to the lack of an accompanying complementary donor or acceptor site, this cryptic site will not be active or used in a splicing reaction. When a neighboring real site is mutated to become weaker than the cryptic site, then the cryptic site may be used instead of the real site, resulting in a cryptic exon and an aberrant transcript.

Numerous diseases have been caused by cryptic splice site mutations or usage of cryptic splice sites due to the mutations in authentic splice sites.[116][117][118][119][120]


S&S in animal and plant genomics research

S&S has also been used in RNA splicing research in many animals[121][122][123][124][125] and plants.[126][127][128][129][130]

The mRNA splicing plays a fundamental role in gene functional regulation. Very recently, it has been shown that A to G conversions at splice sites can lead to mRNA mis-splicing in Arabidopsis.[131] The splicing and exon–intron junction prediction coincided with the GT/AG rule (S&S) in the Molecular characterization and evolution of carnivorous sundew (Drosera rotundifolia L.) class V b-1,3-glucanase.[132] Unspliced (LSDH) and spliced (SSDH) transcripts of NAD+ dependent sorbitol dehydroge nase (NADSDH) of strawberry (Fragaria ananassa Duch., cv. Nyoho) were investigated for phytohormonal treatments.[133]

Ambra1 is a positive regulator of autophagy, a lysosome-mediated degradative process involved both in physiological and pathological conditions. Nowadays, this function of Ambra1 has been characterized only in mammals an zebrafish.[134] Diminution of _rbm24a_ or _rbm24b_ gene products by morpholino knockdown resulted in significant disruption of somite formation in mouse and zebrafish.[135] Dr.Senapathy algorithm used extensively to study intron-exon organization of fut8 genes.The intron-exon boundaries of _Sf_9 _fut8_ were in agreement with the consensus sequence for the splicing donor and acceptor sites concluded using S&S.[136]


The split-gene theory, introns and splice junctions

The motivation for Dr. Senapathy to develop a method for the detection of splice junctions came from his split-gene theory.[137] If primordial DNA sequences had a random nucleotide organization, the random distribution of stop codons would allow only very short Open Reading Frames (ORFs), as three stop codons out of 64 codons would result in an average ORF of ~60 bases. When Senapathy tested this in random DNA sequences, not only this was proven to be true, but the longest ORFs even in very long DNA sequences was found to be ~600 bases above which no ORFs existed. If so, a long coding sequence of even 1,200 bases (the average coding sequence length of genes from living organisms), and longer coding sequences of 6,000 bases (many of which occur in living organisms) will not occur in a primordial random sequence. Thus, genes had to occur in pieces in a split form, with short coding sequences (ORFs) that became exons, interrupted by very long random sequences that became introns. When the eukaryotic DNA was tested for ORF length distribution, it exactly matched that from random DNA, with very short ORFs that matched the lengths of exons, and very long introns as predicted, supporting the split gene theory.[138]

If this split gene theory was true, then the ends of these ORFs that had a stop codon by nature would have become the ends of exons that would occur within introns, and that would define the splice junctions. When this hypothesis was tested, the almost all splice junctions in eukaryotic genes were found to contain stop codons exactly at the ends of introns, bordering the exons.[139] In fact, these stop codons were found to form the “canonical” AG:GT splicing sequence, with the three stop codons occurring as part of the strong consensus signals. The Nobel Laureate Dr. Marshall Nirenberg, who deciphered the codons, stated that these findings strongly showed that the split gene theory for the origin of introns and the split structure of genes must be valid, and communicated the paper to the PNAS.[140] New Scientist covered this publication in “A long explanation for introns”.[141]

This basic split gene theory led to the hypothesis that the splice junctions originated from the stop codons.[142]  Besides the codon CAG, only TAG, which is a stop codon, was found at the ends of introns. Surprisingly, all three stop codons (TGA, TAA and TAG) were found after one base (G) at the start of introns. These stop codons are shown in the consensus canonical donor splice junction as AG:GT(A/G)GGT, wherein the TAA and TGA are the stop codons, and the additional TAG is also present at this position. The canonical acceptor splice junction is shown as (C/T)AG:GT, in which TAG is the stop codon. These consensus sequence clearly show the presence of the stop codons at the ends of introns bordering the exons in all eukaryotic genes.  Dr. Marshall Nirenberg again stated that these observations fully supported the split gene theory for the origin of splice junction sequences from stop codons, who was the referee for this paper.[143] New Scientist covered this publication in “Exons, Introns and Evolution”.[144]

Dr. Senapathy wanted to detect the splice junctions in random DNA based on the consensus splice signal sequences, as he found that there were many sequences resembling splice sites that were not the real splice sites within genes.[145][146][147] This Position Weight Matrix method turned out to be a highly accurate algorithm to detect the real splice sites and the cryptic sites in genes. He also formulated the first exon detection method, based on the requirement for splice junctions at the ends of exons, and the requirement for a Open Reading Frame that would contain the exon.[148][149] This exon detection method also turned to be highly accurate, detecting most of the exons with few false positives and false negatives. He extended this approach to define a complete split gene in a eukaryotic genomic sequence.[150][151] Thus, the PWM based algorithm turned out to be very sensitive to not only detect the real splice sites and cryptic sites, but also to detect mutated splice sites that are deleterious as opposed to non-deleterious splicing mutations.

The stop codons within splice junctions turned out to be the strongest bases in splice junctions of eukaryotic genes, when tested using the PWMs of the consensus sequences.[152][153] In fact, it was shown that mutations in these bases were the cause of diseases compared to other bases, as these three of the four bases (base 1, 3 and 4) of the canonical AG:GT were part of the stop codons. Senapathy showed that, when these canonical bases were mutated, the splice site score became weak, causing splicing aberrations in the splicing process and translation of the mRNA (as described under the diseases section above). Although the value of the splice site detection method in discovering genes with splicing mutations that caused disease has been realized over the years, its importance in clinical medicine is increasingly realized in the Next Generation Sequencing era over the past five years, with its incorporation in several tools based on the S&S algorithm.[154]

Dr. Senapathy is currently the President and CSO of Genome International Corporation (GIC), a genomics R&D company based in Madison, WI. His team has developed several databases and tools for the analysis of splice junctions, including EuSplice,[155] AspAlt,[156] ExDom[157] and RoBust.[158] AspAlt was commended by Biotechniques, which stated that it solved a difficult problem for scientists in the comparative analysis and visualization of alternative splicing across different genomes.[159] GIC has most recently developed the clinical genomics analysis platform Genome Explorer^(®).


Selected publications

-   -   -   -   -   -   -    



REFERENCES


Category:Algorithms

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

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

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

[58]

[59]

[60]

[61]

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

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]