A SEMANTIC NETWORK, or FRAME NETWORK is a knowledge base that represents semantic relations between concepts in a network. This is often used as a form of knowledge representation. It is a directed or undirected graph consisting of vertices, which represent concepts, and edges, which represent semantic relations between concepts,[1] mapping or connecting semantic fields.

Typical standardized semantic networks are expressed as semantic triples.

Semantic networks are used in natural language processing applications such as semantic parsing[2] and word-sense disambiguation.[3]


History

Semantic_Net.svg "Semantic Nets" were first invented for computers by Richard H. Richens of the Cambridge Language Research Unit in 1956 as an "interlingua" for machine translation of natural languages.[4]

They were independently developed by Robert F. Simmons,[5] Sheldon Klein, Karen McConologue, M. Ross Quillian[6] and others at System Development Corporation in the early 1960s as part of the SYNTHEX project. It later featured prominently in the work of Allan M. Collins and Quillian (e.g., Collins and Quillian;[7][8] Collins and Loftus[9] Quillian[10][11][12][13]). Later in 2006, Hermann Helbig fully described MultiNet.[14]

In the late 1980s, two Netherlands universities, Groningen and Twente, jointly began a project called _Knowledge Graphs_, which are semantic networks but with the added constraint that edges are restricted to be from a limited set of possible relations, to facilitate algebras on the graph.[15] In the subsequent decades, the distinction between semantic networks and knowledge graphs was blurred.[16][17] In 2012, Google gave their knowledge graph the name Knowledge Graph.

The Semantic Link Network was systematically studied as a social semantics networking method. Its basic model consists of semantic nodes, semantic links between nodes, and a semantic space that defines the semantics of nodes and links and reasoning rules on semantic links. The systematic theory and model was published in 2004.[18] This research direction can trace to the definition of inheritance rules for efficient model retrieval in 1998[19] and the Active Document Framework ADF.[20] Since 2003, research has developed toward social semantic networking.[21] This work is a systematic innovation at the age of the World Wide Web and global social networking rather than an application or simple extension of the Semantic Net (Network). Its purpose and scope are different from that of the Semantic Net (or network).[22] The rules for reasoning and evolution and automatic discovery of implicit links play an important role in the Semantic Link Network.[23][24] Recently it has been developed to support Cyber-Physical-Social Intelligence.[25] It was used for creating a general summarization method.[26] The self-organised Semantic Link Network was integrated with a multi-dimensional category space to form a semantic space to support advanced applications with multi-dimensional abstractions and self-organised semantic links [27][28] It has been verified that Semantic Link Network play an important role in understanding and representation through text summarisation applications. [29] [30] To investigate special social semantics, competition relation and symbiosis relation as well as their roles in evolving society were studied [31]

More specialized forms of semantic networks has been created for specific use. For example, in 2008, Fawsy Bendeck's PhD thesis formalized the Semantic Similarity Network (SSN) that contains specialized relationships and propagation algorithms to simplify the semantic similarity representation and calculations.[32]


Basics of semantic networks

A semantic network is used when one has knowledge that is best understood as a set of concepts that are related to one another.

Most semantic networks are cognitively based. They also consist of arcs and nodes which can be organized into a taxonomic hierarchy. Semantic networks contributed ideas of spreading activation, inheritance, and nodes as proto-objects.


Examples

Semantic Net in Lisp

Using an association list.

    (setq *database*
    '((canary  (is-a bird)
               (color yellow)
               (size small))
      (penguin (is-a bird)
               (movement swim))
      (bird    (is-a vertebrate)
               (has-part wings)
               (reproduction egg-laying))))

You would use the "assoc" function with a key of "canary" to extract all the information about the "canary" type.[33]

WordNet

An example of a semantic network is WordNet, a lexical database of English. It groups English words into sets of synonyms called synsets, provides short, general definitions, and records the various semantic relations between these synonym sets. Some of the most common semantic relations defined are meronymy (A is a meronym of B if A is part of B), holonymy (B is a holonym of A if B contains A), hyponymy (or troponymy) (A is subordinate of B; A is kind of B), hypernymy (A is superordinate of B), synonymy (A denotes the same as B) and antonymy (A denotes the opposite of B).

WordNet properties have been studied from a network theory perspective and compared to other semantic networks created from Roget's Thesaurus and word association tasks. From this perspective the three of them are a small world structure.[34]

Other examples

It is also possible to represent logical descriptions using semantic networks such as the existential graphs of Charles Sanders Peirce or the related conceptual graphs of John F. Sowa.[35] These have expressive power equal to or exceeding standard first-order predicate logic. Unlike WordNet or other lexical or browsing networks, semantic networks using these representations can be used for reliable automated logical deduction. Some automated reasoners exploit the graph-theoretic features of the networks during processing.

Other examples of semantic networks are Gellish models. Gellish English with its Gellish English dictionary, is a formal language that is defined as a network of relations between concepts and names of concepts. Gellish English is a formal subset of natural English, just as Gellish Dutch is a formal subset of Dutch, whereas multiple languages share the same concepts. Other Gellish networks consist of knowledge models and information models that are expressed in the Gellish language. A Gellish network is a network of (binary) relations between things. Each relation in the network is an expression of a fact that is classified by a relation type. Each relation type itself is a concept that is defined in the Gellish language dictionary. Each related thing is either a concept or an individual thing that is classified by a concept. The definitions of concepts are created in the form of definition models (definition networks) that together form a Gellish Dictionary. A Gellish network can be documented in a Gellish database and is computer interpretable.

SciCrunch is a collaboratively edited knowledge base for scientific resources. It provides unambiguous identifiers (Research Resource IDentifiers or RRIDs) for software, lab tools etc. and it also provides options to create links between RRIDs and from communities.

Another example of semantic networks, based on category theory, is ologs. Here each type is an object, representing a set of things, and each arrow is a morphism, representing a function. Commutative diagrams also are prescribed to constrain the semantics.

In the social sciences people sometimes use the term semantic network to refer to co-occurrence networks.[36] The basic idea is that words that co-occur in a unit of text, e.g. a sentence, are semantically related to one another. Ties based on co-occurrence can then be used to construct semantic networks.


Software tools

There are also elaborate types of semantic networks connected with corresponding sets of software tools used for lexical knowledge engineering, like the Semantic Network Processing System (SNePS) of Stuart C. Shapiro[37] or the MultiNet paradigm of Hermann Helbig,[38] especially suited for the semantic representation of natural language expressions and used in several NLP applications.

Semantic networks are used in specialized information retrieval tasks, such as plagiarism detection. They provide information on hierarchical relations in order to employ semantic compression to reduce language diversity and enable the system to match word meanings, independently from sets of words used.

The Knowledge Graph proposed by Google in 2012 is actually an application of semantic network in search engine.

Modeling multi-relational data like semantic networks in low-dimensional spaces through forms of embedding has benefits in expressing entity relationships as well as extracting relations from mediums like text. There are many approaches to learning these embeddings, notably using Bayesian clustering frameworks or energy-based frameworks, and more recently, TransE[39] (NIPS 2013). Applications of embedding knowledge base data include Social network analysis and Relationship extraction.


See also

-   Abstract semantic graph
-   Chunking (psychology)
-   Network diagram
-   Ontology (information science)
-   Repertory grid
-   Semantic lexicon
-   Semantic similarity network
-   Semantic neural network
-   SemEval – an ongoing series of evaluations of computational semantic analysis systems
-   Sparse distributed memory
-   Taxonomy (general)
-   Unified Medical Language System (UMLS)
-   Word-sense disambiguation (WSD)

Other examples

-   Cognition Network Technology
-   Lexipedia
-   OpenCog
-   Open Mind Common Sense (OMCS)
-   Schema.org
-   SNOMED CT
-   Universal Networking Language (UNL)
-   Wikidata


References


Further reading

-   Allen, J. and A. Frisch (1982). "What's in a Semantic Network". In: _Proceedings of the 20th. annual meeting of ACL_, Toronto, pp. 19–27.
-   John F. Sowa, Alexander Borgida (1991). _Principles of Semantic Networks: Explorations in the Representation of Knowledge_.


External links

-   "Semantic Networks" by John F. Sowa
-   "Semantic Link Network" by Hai Zhuge

Category:Knowledge representation Category:Networks

[1]

[2] Poon, Hoifung, and Pedro Domingos. "Unsupervised semantic parsing." Proceedings of the 2009 Conference on Empirical Methods in Natural Language Processing: Volume 1-Volume 1. Association for Computational Linguistics, 2009.

[3] Sussna, Michael. "Word sense disambiguation for free-text indexing using a massive semantic network." Proceedings of the second international conference on Information and knowledge management. ACM, 1993.

[4]

[5]

[6] Quillian, R. A notation for representing conceptual information: An application to semantics and mechanical English para- phrasing. SP-1395, System Development Corporation, Santa Monica, 1963.

[7]

[8]

[9]

[10] Quillian, M. R. (1967). Word concepts: A theory and simulation of some basic semantic capabilities. Behavioral Science, 12(5), 410-430.

[11] Quillian, M. R. (1968). Semantic memory. Semantic information processing, 227–270.

[12]

[13] Quillian, R. Semantic Memory. Unpublished doctoral dissertation, Carnegie Institute of Technology, 1966.

[14]

[15]

[16]

[17]

[18] H. Zhuge, Knowledge Grid, World Scientific Publishing Co. 2004.

[19] H. Zhuge, Inheritance rules for flexible model retrieval. Decision Support Systems 22(4)(1998)379–390

[20] H. Zhuge, Active e-document framework ADF: model and tool. Information & Management 41(1): 87–97 (2003)

[21] H.Zhuge and L.Zheng, Ranking Semantic-linked Network, WWW 2003

[22] H.Zhuge, The Semantic Link Network, in The Knowledge Grid: Toward Cyber-Physical Society, World Scientific Publishing Co. 2012.

[23] H. Zhuge, L. Zheng, N. Zhang and X. Li, An automatic semantic relationships discovery approach. WWW 2004: 278–279.

[24] H. Zhuge, Communities and Emerging Semantics in Semantic Link Network: Discovery and Learning, IEEE Transactions on Knowledge and Data Engineering, 21(6)(2009)785–799.

[25] H.Zhuge, Semantic linking through spaces for cyber-physical-socio intelligence: A methodology, Artificial Intelligence, 175(2011)988–1019.

[26] H. Zhuge, Multi-Dimensional Summarization in Cyber-Physical Society, Morgan Kaufmann, 2016.

[27] H. Zhuge, The Web Resource Space Model, Springer, 2008.

[28] H.Zhuge and Y.Xing, Probabilistic Resource Space Model for Managing Resources in Cyber-Physical Society, IEEE Transactions on Service Computing, 5(3)(2012)404–421.

[29] X. Sun and H. Zhuge, Summarization of Scientific Paper through Reinforcement Ranking on Semantic Link Network, IEEE ACCESS, 2018, .

[30] M.Cao, X.Sun and H. Zhuge, The contribution of cause-effect link to representing the core of scientific paper—The role of Semantic Link Network, PLOS ONE, 2018, .

[31] H. Zhuge, Cyber-Physical-Social Intelligence on Human-Machine-Nature Symbiosis, Springer, 2019.

[32]

[33]

[34]

[35]

[36]

[37] Stuart C. Shapiro

[38] Hermann Helbig

[39]