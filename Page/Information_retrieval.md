INFORMATION RETRIEVAL (IR) is the activity of obtaining information system resources that are relevant to an information need from a collection of those resources. Searches can be based on full-text or other content-based indexing. Information retrieval is the science of searching for information in a document, searching for documents themselves, and also searching for the metadata that describes data, and for databases of texts, images or sounds.

Automated information retrieval systems are used to reduce what has been called information overload. An IR system is a software system that provides access to books, journals and other documents; stores and manages those documents. Web search engines are the most visible IR applications.


Overview

An information retrieval process begins when a user enters a query into the system. Queries are formal statements of information needs, for example search strings in web search engines. In information retrieval a query does not uniquely identify a single object in the collection. Instead, several objects may match the query, perhaps with different degrees of relevancy.

An object is an entity that is represented by information in a content collection or database. User queries are matched against the database information. However, as opposed to classical SQL queries of a database, in information retrieval the results returned may or may not match the query, so results are typically ranked. This ranking of results is a key difference of information retrieval searching compared to database searching.[1]

Depending on the application the data objects may be, for example, text documents, images,[2] audio,[3] mind maps[4] or videos. Often the documents themselves are not kept or stored directly in the IR system, but are instead represented in the system by document surrogates or metadata.

Most IR systems compute a numeric score on how well each object in the database matches the query, and rank the objects according to this value. The top ranking objects are then shown to the user. The process may then be iterated if the user wishes to refine the query.[5]


History

The idea of using computers to search for relevant pieces of information was popularized in the article _As We May Think_ by Vannevar Bush in 1945.[6] It would appear that Bush was inspired by patents for a 'statistical machine' - filed by Emanuel Goldberg in the 1920s and '30s - that searched for documents stored on film.[7] The first description of a computer searching for information was described by Holmstrom in 1948,[8] detailing an early mention of the Univac computer. Automated information retrieval systems were introduced in the 1950s: one even featured in the 1957 romantic comedy, Desk Set. In the 1960s, the first large information retrieval research group was formed by Gerard Salton at Cornell. By the 1970s several different retrieval techniques had been shown to perform well on small text corpora such as the Cranfield collection (several thousand documents).[9] Large-scale retrieval systems, such as the Lockheed Dialog system, came into use early in the 1970s.

In 1992, the US Department of Defense along with the National Institute of Standards and Technology (NIST), cosponsored the Text Retrieval Conference (TREC) as part of the TIPSTER text program. The aim of this was to look into the information retrieval community by supplying the infrastructure that was needed for evaluation of text retrieval methodologies on a very large text collection. This catalyzed research on methods that scale to huge corpora. The introduction of web search engines has boosted the need for very large scale retrieval systems even further.


Model types

Information-Retrieval-Models.png, original source Dominik Kuropka).]] For effectively retrieving relevant documents by IR strategies, the documents are typically transformed into a suitable representation. Each retrieval strategy incorporates a specific model for its document representation purposes. The picture on the right illustrates the relationship of some common models. In the picture, the models are categorized according to two dimensions: the mathematical basis and the properties of the model.

First dimension: mathematical basis

-   _Set-theoretic_ models represent documents as sets of words or phrases. Similarities are usually derived from set-theoretic operations on those sets. Common models are:
    -   Standard Boolean model
    -   Extended Boolean model
    -   Fuzzy retrieval
-   _Algebraic models_ represent documents and queries usually as vectors, matrices, or tuples. The similarity of the query vector and document vector is represented as a scalar value.
    -   Vector space model
    -   Generalized vector space model
    -   (Enhanced) Topic-based Vector Space Model
    -   Extended Boolean model
    -   Latent semantic indexing a.k.a. latent semantic analysis
-   _Probabilistic models_ treat the process of document retrieval as a probabilistic inference. Similarities are computed as probabilities that a document is relevant for a given query. Probabilistic theorems like the Bayes' theorem are often used in these models.
    -   Binary Independence Model
    -   Probabilistic relevance model on which is based the okapi (BM25) relevance function
    -   Uncertain inference
    -   Language models
    -   Divergence-from-randomness model
    -   Latent Dirichlet allocation
-   _Feature-based retrieval models_ view documents as vectors of values of _feature functions_ (or just _features_) and seek the best way to combine these features into a single relevance score, typically by learning to rank methods. Feature functions are arbitrary functions of document and query, and as such can easily incorporate almost any other retrieval model as just another feature.

Second dimension: properties of the model

-   _Models without term-interdependencies_ treat different terms/words as independent. This fact is usually represented in vector space models by the orthogonality assumption of term vectors or in probabilistic models by an independency assumption for term variables.
-   _Models with immanent term interdependencies_ allow a representation of interdependencies between terms. However the degree of the interdependency between two terms is defined by the model itself. It is usually directly or indirectly derived (e.g. by dimensional reduction) from the co-occurrence of those terms in the whole set of documents.
-   _Models with transcendent term interdependencies_ allow a representation of interdependencies between terms, but they do not allege how the interdependency between two terms is defined. They rely an external source for the degree of interdependency between two terms. (For example, a human or sophisticated algorithms.)


Performance and correctness measures

The evaluation of an information retrieval system' is the process of assessing how well a system meets the information needs of its users. In general, measurement considers a collection of documents to be searched and a search query. Traditional evaluation metrics, designed for Boolean retrieval or top-k retrieval, include precision and recall. All measures assume a ground truth notion of relevancy: every document is known to be either relevant or non-relevant to a particular query. In practice, queries may be ill-posed and there may be different shades of relevancy.


Timeline

-   Before the 1900S

        1801: Joseph Marie Jacquard invents the Jacquard loom, the first machine to use punched cards to control a sequence of operations.
        1880S: Herman Hollerith invents an electro-mechanical data tabulator using punch cards as a machine readable medium.
        1890 Hollerith cards, keypunches and tabulators used to process the 1890 US Census data.

-   1920S-1930S

        Emanuel Goldberg submits patents for his "Statistical Machine” a document search engine that used photoelectric cells and pattern recognition to search the metadata on rolls of microfilmed documents.

-   1940S–1950S

        LATE 1940S: The US military confronted problems of indexing and retrieval of wartime scientific research documents captured from Germans.

            1945: Vannevar Bush's _As We May Think_ appeared in _Atlantic Monthly_.
            1947: Hans Peter Luhn (research engineer at IBM since 1941) began work on a mechanized punch card-based system for searching chemical compounds.

        1950S: Growing concern in the US for a "science gap" with the USSR motivated, encouraged funding and provided a backdrop for mechanized literature searching systems (Allen Kent _et al._) and the invention of citation indexing (Eugene Garfield).
        1950: The term "information retrieval" was coined by Calvin Mooers.[10]
        1951: Philip Bagley conducted the earliest experiment in computerized document retrieval in a master thesis at MIT.[11]
        1955: Allen Kent joined Case Western Reserve University, and eventually became associate director of the Center for Documentation and Communications Research. That same year, Kent and colleagues published a paper in American Documentation describing the precision and recall measures as well as detailing a proposed "framework" for evaluating an IR system which included statistical sampling methods for determining the number of relevant documents not retrieved.[12]
        1958: International Conference on Scientific Information Washington DC included consideration of IR systems as a solution to problems identified. See: _Proceedings of the International Conference on Scientific Information, 1958_ (National Academy of Sciences, Washington, DC, 1959)
        1959: Hans Peter Luhn published "Auto-encoding of documents for information retrieval."

-   1960S:

        EARLY 1960S: Gerard Salton began work on IR at Harvard, later moved to Cornell.
        1960: Melvin Earl Maron and John Lary Kuhns[13] published "On relevance, probabilistic indexing, and information retrieval" in the Journal of the ACM 7(3):216–244, July 1960.
        1962:
        -   Cyril W. Cleverdon published early findings of the Cranfield studies, developing a model for IR system evaluation. See: Cyril W. Cleverdon, "Report on the Testing and Analysis of an Investigation into the Comparative Efficiency of Indexing Systems". Cranfield Collection of Aeronautics, Cranfield, England, 1962.
        -   Kent published _Information Analysis and Retrieval_.

        1963:
        -   Weinberg report "Science, Government and Information" gave a full articulation of the idea of a "crisis of scientific information." The report was named after Dr. Alvin Weinberg.
        -   Joseph Becker and Robert M. Hayes published text on information retrieval. Becker, Joseph; Hayes, Robert Mayo. _Information storage and retrieval: tools, elements, theories_. New York, Wiley (1963).

        1964:
        -   Karen Spärck Jones finished her thesis at Cambridge, _Synonymy and Semantic Classification_, and continued work on computational linguistics as it applies to IR.
        -   The National Bureau of Standards sponsored a symposium titled "Statistical Association Methods for Mechanized Documentation." Several highly significant papers, including G. Salton's first published reference (we believe) to the SMART system.

        MID-1960S:
        :* National Library of Medicine developed MEDLARS Medical Literature Analysis and Retrieval System, the first major machine-readable database and batch-retrieval system.

        :* Project Intrex at MIT.

            1965: J. C. R. Licklider published _Libraries of the Future_.
            1966: Don Swanson was involved in studies at University of Chicago on Requirements for Future Catalogs.

        LATE 1960S: F. Wilfrid Lancaster completed evaluation studies of the MEDLARS system and published the first edition of his text on information retrieval.

            1968:

        -   Gerard Salton published _Automatic Information Organization and Retrieval_.
        -   John W. Sammon, Jr.'s RADC Tech report "Some Mathematics of Information Storage and Retrieval..." outlined the vector model.

            1969: Sammon's "A nonlinear mapping for data structure analysis" (IEEE Transactions on Computers) was the first proposal for visualization interface to an IR system.

-   1970S

        EARLY 1970S:
        :* First online systems—NLM's AIM-TWX, MEDLINE; Lockheed's Dialog; SDC's ORBIT.

        :* Theodor Nelson promoting concept of hypertext, published _Computer Lib/Dream Machines_.

        1971: Nicholas Jardine and Cornelis J. van Rijsbergen published "The use of hierarchic clustering in information retrieval", which articulated the "cluster hypothesis."[14]
        1975: Three highly influential publications by Salton fully articulated his vector processing framework and term discrimination model:
        :* _A Theory of Indexing_ (Society for Industrial and Applied Mathematics)

        :* _A Theory of Term Importance in Automatic Text Analysis_ (JASIS v. 26)

        :* _A Vector Space Model for Automatic Indexing_ (CACM 18:11)

        1978: The First ACM SIGIR conference.
        1979: C. J. van Rijsbergen published _Information Retrieval_ (Butterworths). Heavy emphasis on probabilistic models.
        1979: Tamas Doszkocs implemented the CITE natural language user interface for MEDLINE at the National Library of Medicine. The CITE system supported free form query input, ranked output and relevance feedback.[15]

-   1980S

        1980: First international ACM SIGIR conference, joint with British Computer Society IR group in Cambridge.
        1982: Nicholas J. Belkin, Robert N. Oddy, and Helen M. Brooks proposed the ASK (Anomalous State of Knowledge) viewpoint for information retrieval. This was an important concept, though their automated analysis tool proved ultimately disappointing.
        1983: Salton (and Michael J. McGill) published _Introduction to Modern Information Retrieval_ (McGraw-Hill), with heavy emphasis on vector models.
        1985: David Blair and Bill Maron publish: An Evaluation of Retrieval Effectiveness for a Full-Text Document-Retrieval System
        MID-1980S: Efforts to develop end-user versions of commercial IR systems.

            1985–1993: Key papers on and experimental systems for visualization interfaces.
            Work by Donald B. Crouch, Robert R. Korfhage, Matthew Chalmers, Anselm Spoerri and others.

        1989: First World Wide Web proposals by Tim Berners-Lee at CERN.

-   1990S

        1992: First TREC conference.
        1997: Publication of Korfhage's _Information Storage and Retrieval_[16] with emphasis on visualization and multi-reference point systems.
        1999: Publication of Ricardo Baeza-Yates and Berthier Ribeiro-Neto's _Modern Information Retrieval_ by Addison Wesley, the first book that attempts to cover all IR.
        LATE 1990S: Web search engines implementation of many features formerly found only in experimental IR systems. Search engines become the most common and maybe best instantiation of IR models.


Major conferences

-   SIGIR: Conference on Research and Development in Information Retrieval
-   ECIR: European Conference on Information Retrieval
-   CIKM: Conference on Information and Knowledge Management
-   WWW: International World Wide Web Conference
-   WSDM: Conference on Web Search and Data Mining
-   ICTIR: International Conference on Theory of Information Retrieval


Awards in the field

-   Tony Kent Strix award
-   Gerard Salton Award


Top five leading information retrieval research groups

-   Center for Intelligent Information Retrieval (CIIR) at the University of Massachusetts Amherst [17]
-   Information Retrieval Group at the University of Glasgow [18]
-   Information and Language Processing Systems (ILPS) at the University of Amsterdam [19]
-   Information Retrieval Group (THUIR) at Tsinghua University [20]
-   Information Storage, Analysis and Retrieval Group (ISAR) at RMIT University [21]


See also

-   Adversarial information retrieval
-   Collaborative information seeking
-   Computer memory
-   Controlled vocabulary
-   Cross-language information retrieval
-   Data mining
-   European Summer School in Information Retrieval
-   Human–computer information retrieval (HCIR)
-   Information extraction
-   Information Retrieval Facility
-   Knowledge visualization
-   Multimedia information retrieval
-   Personal information management
-   Relevance (information retrieval)
-   Relevance feedback
-   Rocchio classification
-   Search index
-   Social information seeking
-   Special Interest Group on Information Retrieval
-   Subject indexing
-   Temporal information retrieval
-   tf-idf
-   XML retrieval
-   Web mining


References


Further reading

-   Ricardo Baeza-Yates, Berthier Ribeiro-Neto. Modern Information Retrieval: The Concepts and Technology behind Search (second edition). Addison-Wesley, UK, 2011.
-   Stefan Büttcher, Charles L. A. Clarke, and Gordon V. Cormack. Information Retrieval: Implementing and Evaluating Search Engines. MIT Press, Cambridge, Massachusetts, 2010.
-   Christopher D. Manning, Prabhakar Raghavan, and Hinrich Schütze. Introduction to Information Retrieval. Cambridge University Press, 2008.


External links

-   ACM SIGIR: Information Retrieval Special Interest Group
-   BCS IRSG: British Computer Society - Information Retrieval Specialist Group
-   Text Retrieval Conference (TREC)
-   Forum for Information Retrieval Evaluation (FIRE)
-   Information Retrieval (online book) by C. J. van Rijsbergen
-   Information Retrieval Wiki
-   Information Retrieval Facility
-   Information Retrieval @ DUTH
-   TREC report on information retrieval evaluation techniques
-   How eBay measures search relevance
-   Information retrieval performance evaluation tool @ Athena Research Centre

Category:Articles with inconsistent citation formats Information_retrieval Category:Natural language processing

[1] Jansen, B. J. and Rieh, S. (2010) The Seventeen Theoretical Constructs of Information Searching and Information Retrieval. Journal of the American Society for Information Sciences and Technology. 61(8), 1517-1534.

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] Mooers, Calvin N.; _The Theory of Digital Handling of Non-numerical Information and its Implications to Machine Economics_ (Zator Technical Bulletin No. 48), cited in

[11]

[12]

[13]

[14]

[15] Doszkocs, T.E. & Rapp, B.A. (1979). "Searching MEDLINE in English: a Prototype User Inter-face with Natural Language Query, Ranked Output, and relevance feedback," In: Proceedings of the ASIS Annual Meeting, 16: 131-139.

[16]

[17]  UMass Amherst|website=ciir.cs.umass.edu|access-date=2016-07-29}}

[18]

[19]

[20]  Tsinghua University|website=THUIR|access-date=2017-12-08}}

[21]  RMIT University|website=RMIT|access-date=2018-08-26}}