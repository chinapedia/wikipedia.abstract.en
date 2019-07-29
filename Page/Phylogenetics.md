In biology, PHYLOGENETICS (Greek: φυλή, φῦλον – _phylé_, _phylon_ = tribe, clan, race + γενετικός – _genetikós_ = origin, source, birth)[1] is the study of the evolutionary history and relationships among individuals or groups of organisms (e.g. species, or populations). These relationships are discovered through phylogenetic inference methods that evaluate observed heritable traits, such as DNA sequences or morphology under a model of evolution of these traits. The result of these analyses is a phylogeny (also known as a phylogenetic tree) – a diagrammatic hypothesis about the history of the evolutionary relationships of a group of organisms.[2] The tips of a phylogenetic tree can be living organisms or fossils, and represent the "end", or the present, in an evolutionary lineage. A phylogenetic tree can be rooted or unrooted. A rooted tree indicates the common ancestor, or ancestral lineage, of the tree. An unrooted tree makes no assumption about the ancestral line, and does not show the origin or "root" of the gene or organism in question.[3] Phylogenetic analyses have become central to understanding biodiversity, evolution, ecology, and genomes.

Taxonomy is the identification, naming and classification of organisms. It is usually richly informed by phylogenetics, but remains a methodologically and logically distinct discipline.[4] The degree to which taxonomies depend on phylogenies (or classification depends on evolutionary development) differs depending on the school of taxonomy: phenetics ignores phylogeny altogether, trying to represent the similarity between organisms instead; cladistics (phylogenetic systematics) tries to reproduce phylogeny in its classification without loss of information; evolutionary taxonomy tries to find a compromise between them.


Construction of a phylogenetic tree

Usual methods of phylogenetic inference involve computational approaches implementing the optimality criteria and methods of parsimony, maximum likelihood (ML), and MCMC-based Bayesian inference. All these depend upon an implicit or explicit mathematical model describing the evolution of characters observed.

Phenetics, popular in the mid-20th century but now largely obsolete, used distance matrix-based methods to construct trees based on overall similarity in morphology or similar observable traits (i.e. in the phenotype or the overall similarity of DNA, not the DNA sequence), which was often assumed to approximate phylogenetic relationships.

Prior to 1950, phylogenetic inferences were generally presented as narrative scenarios. Such methods are often ambiguous and lack explicit criteria for evaluating alternative hypotheses.[5][6][7]


History

The term "phylogeny" derives from the German _Phylogenie_, introduced by Haeckel in 1866,[8] and the Darwinian approach to classification became known as the "phyletic" approach.

Ernst Haeckel's recapitulation theory

During the late 19th century, Ernst Haeckel's recapitulation theory, or "biogenetic fundamental law", was widely accepted. It was often expressed as "ontogeny recapitulates phylogeny", i.e. the development of a single organism during its lifetime, from germ to adult, successively mirrors the adult stages of successive ancestors of the species to which it belongs. But this theory has long been rejected.[9][10] Instead, ontogeny evolves – the phylogenetic history of a species cannot be read directly from its ontogeny, as Haeckel thought would be possible, but characters from ontogeny can be (and have been) used as data for phylogenetic analyses; the more closely related two species are, the more apomorphies their embryos share.

Timeline of key events

Bronn_tree.gif Haeckel_arbol_bn.png

-   14th century, _lex parsimoniae_ (parsimony principle), William of Ockam, English philosopher, theologian, and Franciscan friar, but the idea actually goes back to Aristotle, precursor concept
-   1763, Bayesian probability, Rev. Thomas Bayes,[11] precursor concept
-   18th century, Pierre Simon (Marquis de Laplace), perhaps first to use ML (maximum likelihood), precursor concept
-   1809, evolutionary theory, _Philosophie Zoologique,_ Jean-Baptiste de Lamarck, precursor concept, foreshadowed in the 17th century and 18th century by Voltaire, Descartes, and Leibniz, with Leibniz even proposing evolutionary changes to account for observed gaps suggesting that many species had become extinct, others transformed, and different species that share common traits may have at one time been a single race,[12] also foreshadowed by some early Greek philosophers such as Anaximander in the 6th century BC and the atomists of the 5th century BC, who proposed rudimentary theories of evolution[13]
-   1837, Darwin's notebooks show an evolutionary tree[14]
-   1843, distinction between homology and analogy (the latter now referred to as homoplasy), Richard Owen, precursor concept
-   1858, Paleontologist Heinrich Georg Bronn (1800–1862) published a hypothetical tree to illustrating the paleontological "arrival" of new, similar species following the extinction of an older species. Bronn did not propose a mechanism responsible for such phenomena, precursor concept.[15]
-   1858, elaboration of evolutionary theory, Darwin and Wallace,[16] also in Origin of Species by Darwin the following year, precursor concept
-   1866, Ernst Haeckel, first publishes his phylogeny-based evolutionary tree, precursor concept
-   1893, Dollo's Law of Character State Irreversibility,[17] precursor concept
-   1912, ML recommended, analyzed, and popularized by Ronald Fisher, precursor concept
-   1921, Tillyard uses term "phylogenetic" and distinguishes between archaic and specialized characters in his classification system[18]
-   1940, term "clade" coined by Lucien Cuénot
-   1949, Jackknife resampling, Maurice Quenouille (foreshadowed in '46 by Mahalanobis and extended in '58 by Tukey), precursor concept
-   1950, Willi Hennig's classic formalization[19]
-   1952, William Wagner's groundplan divergence method[20]
-   1953, "cladogenesis" coined[21]
-   1960, "cladistic" coined by Cain and Harrison[22]
-   1963, first attempt to use ML (maximum likelihood) for phylogenetics, Edwards and Cavalli-Sforza[23]
-   1965
    -   Camin-Sokal parsimony, first parsimony (optimization) criterion and first computer program/algorithm for cladistic analysis both by Camin and Sokal[24]
    -   character compatibility method, also called clique analysis, introduced independently by Camin and Sokal (loc. cit.) and E. O. Wilson[25]
-   1966
    -   English translation of Hennig[26]
    -   "cladistics" and "cladogram" coined (Webster's, loc. cit.)
-   1969
    -   dynamic and successive weighting, James Farris[27]
    -   Wagner parsimony, Kluge and Farris[28]
    -   CI (consistency index), Kluge and Farris[29]
    -   introduction of pairwise compatibility for clique analysis, Le Quesne[30]
-   1970, Wagner parsimony generalized by Farris[31]
-   1971
    -   first successful application of ML to phylogenetics (for protein sequences), Neyman[32]
    -   Fitch parsimony, Fitch[33]
    -   NNI (nearest neighbour interchange), first branch-swapping search strategy, developed independently by Robinson[34] and Moore et al.
    -   ME (minimum evolution), Kidd and Sgaramella-Zonta[35] (it is unclear if this is the pairwise distance method or related to ML as Edwards and Cavalli-Sforza call ML "minimum evolution")
-   1972, Adams consensus, Adams[36]
-   1976, prefix system for ranks, Farris[37]
-   1977, Dollo parsimony, Farris[38]
-   1979
    -   Nelson consensus, Nelson[39]
    -   MAST (maximum agreement subtree)((GAS)greatest agreement subtree), a consensus method, Gordon [40]
    -   bootstrap, Bradley Efron, precursor concept[41]
-   1980, PHYLIP, first software package for phylogenetic analysis, Felsenstein
-   1981
    -   majority consensus, Margush and MacMorris[42]
    -   strict consensus, Sokal and Rohlf[43]
    -   first computationally efficient ML algorithm, Felsenstein[44]
-   1982
    -   PHYSIS, Mikevich and Farris
    -   branch and bound, Hendy and Penny[45]
-   1985
    -   first cladistic analysis of eukaryotes based on combined phenotypic and genotypic evidence Diana Lipscomb[46]
    -   first issue of _Cladistics_
    -   first phylogenetic application of bootstrap, Felsenstein[47]
    -   first phylogenetic application of jackknife, Scott Lanyon[48]
-   1986, MacClade, Maddison and Maddison
-   1987, neighbor-joining method Saitou and Nei[49]
-   1988, Hennig86 (version 1.5), Farris
    -   Bremer support (decay index), Bremer[50]
-   1989
    -   RI (retention index), RCI (rescaled consistency index), Farris[51]
    -   HER (homoplasy excess ratio), Archie[52]
-   1990
    -   combinable components (semi-strict) consensus, Bremer[53]
    -   SPR (subtree pruning and regrafting), TBR (tree bisection and reconnection), Swofford and Olsen[54]
-   1991
    -   DDI (data decisiveness index), Goloboff[55][56]
    -   first cladistic analysis of eukaryotes based only on phenotypic evidence, Lipscomb
-   1993, implied weighting Goloboff[57]
-   1994, reduced consensus: RCC (reduced cladistic consensus) for rooted trees, Wilkinson[58]
-   1995, reduced consensus RPC (reduced partition consensus) for unrooted trees, Wilkinson[59]
-   1996, first working methods for BI (Bayesian Inference)independently developed by Li,[60] Mau,[61] and Rannala and Yang[62] and all using MCMC (Markov chain-Monte Carlo)
-   1998, TNT (Tree Analysis Using New Technology), Goloboff, Farris, and Nixon
-   1999, Winclada, Nixon
-   2003, symmetrical resampling, Goloboff[63]


See also

-   -   Angiosperm Phylogeny Group
-   Bauplan
-   Bioinformatics
-   Biomathematics
-   Coalescent theory
-   EDGE of Existence programme
-   Evolutionary taxonomy
-   Joe Felsenstein
-   Language family
-   Maximum parsimony
-   Microbial phylogenetics
-   Molecular phylogeny
-   Noogenesis
-   Ontogeny (psychoanalysis)
-   PhyloCode
-   Phylodynamics
-   Phylogenesis
-   Phylogenetic comparative methods
-   Phylogenetic network
-   Phylogenetic nomenclature
-   Phylogenetic tree viewers
-   Phylogenetics software
-   Phylogenomics
-   Phylogeny (psychoanalysis)
-   Phylogeography
-   Systematics


References


Bibliography

-   -   -   -


External links

Phylogenetics

[1]

[2]

[3]

[4]

[5] Richard C. Brusca & Gary J. Brusca (2003). _Invertebrates_ (2nd ed.). Sunderland, Massachusetts: Sinauer Associates. .

[6] Bock, W. J. (2004). Explanations in systematics. Pp. 49–56. In Williams, D. M. and Forey, P. L. (eds) Milestones in Systematics. London: Systematics Association Special Volume Series 67. CRC Press, Boca Raton, Florida.

[7] Auyang, Sunny Y. (1998). _Narratives and Theories in Natural History._ In: _Foundations of complex-system theories: in economics, evolutionary biology, and statistical physics._ Cambridge, U.K.; New York: Cambridge University Press.

[8]

[9] Blechschmidt, Erich (1977) _The Beginnings of Human Life_. Springer-Verlag Inc., p. 32: "The so-called basic law of biogenetics is wrong. No buts or ifs can mitigate this fact. It is not even a tiny bit correct or correct in a different form, making it valid in a certain percentage. It is totally wrong."

[10] Ehrlich, Paul; Richard Holm; Dennis Parnell (1963) _The Process of Evolution_. New York: McGraw–Hill, p. 66: "Its shortcomings have been almost universally pointed out by modern authors, but the idea still has a prominent place in biological mythology. The resemblance of early vertebrate embryos is readily explained without resort to mysterious forces compelling each individual to reclimb its phylogenetic tree."

[11]

[12] Strickberger, Monroe. 1996. Evolution, 2nd. ed. Jones & Bartlett.

[13] The Theory of Evolution, Teaching Company course, Lecture 1

[14] Darwin's Tree of Life

[15]

[16]

[17] Dollo, Louis. 1893. Les lois de l'évolution. Bull. Soc. Belge Géol. Paléont. Hydrol. 7: 164–66.

[18]

[19]

[20]

[21] Webster's 9th New Collegiate Dictionary

[22]

[23] "The reconstruction of evolution" in

[24]

[25]

[26] Hennig. W. (1966). Phylogenetic systematics. Illinois University Press, Urbana.

[27]

[28]

[29]

[30]

[31]

[32] Neyman, J. (1971). Molecular studies: A source of novel statistical problems. In: Gupta S. S., Yackel J. (eds), Statistical Decision Theory and Related Topics, pp. 1–27. Academic Press, New York.

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41] Efron B. (1979). Bootstrap methods: another look at the jackknife. Ann. Stat. 7: 1–26.

[42]

[43]

[44]

[45]

[46] Lipscomb, Diana. 1985. The Eukaryotic Kingdoms. Cladistics 1: 127–40.

[47] Felsenstein J. (1985) Confidence limits on phylogenies: an approach using the bootstrap. Evolution 39: 783–791.

[48]

[49]

[50]

[51]

[52]

[53]

[54] D. L. Swofford and G. J. Olsen. 1990. Phylogeny reconstruction. In D. M. Hillis and G. Moritz (eds.), Molecular Systematics, pages 411–501. Sinauer Associates, Sunderland, Mass.

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]