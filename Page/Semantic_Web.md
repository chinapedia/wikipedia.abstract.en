The SEMANTIC WEB is an extension of the World Wide Web through standards by the World Wide Web Consortium (W3C).[1] The standards promote common data formats and exchange protocols on the Web, most fundamentally the Resource Description Framework (RDF). According to the W3C, "The Semantic Web provides a common framework that allows data to be shared and reused across application, enterprise, and community boundaries".[2] The Semantic Web is therefore regarded as an integrator across different content, information applications and systems.

The term was coined by Tim Berners-Lee for a web of data (or DATA WEB)[3] that can be processed by machines[4]—that is, one in which much of the meaning is machine-readable. While its critics have questioned its feasibility, proponents argue that applications in library and information science, industry, biology and human sciences research have already proven the validity of the original concept.[5]

Berners-Lee originally expressed his vision of the Semantic Web as follows:

The 2001 _Scientific American_ article by Berners-Lee, Hendler, and Lassila described an expected evolution of the existing Web to a Semantic Web.[6] In 2006, Berners-Lee and colleagues stated that: "This simple idea…remains largely unrealized".[7] In 2013, more than four million Web domains contained Semantic Web markup.[8]


Example

In the following example, the text 'Paul Schuster was born in Dresden' on a Website will be annotated, connecting a person with their place of birth. The following HTML-fragment shows how a small graph is being described, in RDFa-syntax using a schema.org vocabulary and a Wikidata ID: framed

    <div vocab="http://schema.org/" typeof="Person">
      <span property="name">Paul Schuster</span> was born in
      <span property="birthPlace" typeof="Place" href="http://www.wikidata.org/entity/Q1731">
        <span property="name">Dresden</span>.
      </span>
    </div>

The example defines the following five triples (shown in Turtle Syntax). Each triple represents one edge in the resulting graph: the first element of the triple (the _subject_) is the name of the node where the edge starts, the second element (the _predicate_) the type of the edge, and the last and third element (the _object_) either the name of the node where the edge ends or a literal value (e.g. a text, a number, etc.).

_:a <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://schema.org/Person> .
_:a <http://schema.org/name> "Paul Schuster" .
_:a <http://schema.org/birthPlace> <http://www.wikidata.org/entity/Q1731> .
<http://www.wikidata.org/entity/Q1731> <http://schema.org/itemtype> <http://schema.org/Place> .
<http://www.wikidata.org/entity/Q1731> <http://schema.org/name> "Dresden" .

The triples result in the graph shown in the given figure.

framed

One of the advantages of using Uniform Resource Identifiers (URIs) is that they can be dereferenced using the HTTP protocol. According to the so-called Linked Open Data principles, such a dereferenced URI should result in a document that offers further data about the given URI. In this example, all URIs, both for edges and nodes (e.g. http://schema.org/Person, http://schema.org/birthPlace, http://www.wikidata.org/entity/Q1731) can be dereferenced and will result in further RDF graphs, describing the URI, e.g. that Dresden is a city in Germany, or that a person, in the sense of that URI, can be fictional.

The second graph shows the previous example, but now enriched with a few of the triples from the documents that result from dereferencing http://schema.org/Person (green edge) and http://www.wikidata.org/entity/Q1731 (blue edges).

Additionally to the edges given in the involved documents explicitly, edges can be automatically inferred: the triple

_:a <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://schema.org/Person> .

from the original RDFa fragment and the triple

<http://schema.org/Person> <http://www.w3.org/2002/07/owl#equivalentClass> <http://xmlns.com/foaf/0.1/Person> .

from the document at http://schema.org/Person (green edge in the Figure) allow to infer the following triple, given OWL semantics (red dashed line in the second Figure):

_:a <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://xmlns.com/foaf/0.1/Person> .


Background

The concept of the semantic network model was formed in the early 1960s by researchers such as the cognitive scientist Allan M. Collins, linguist M. Ross Quillian and psychologist Elizabeth F. Loftus as a form to represent semantically structured knowledge. When applied in the context of the modern internet, it extends the network of hyperlinked human-readable web pages by inserting machine-readable metadata about pages and how they are related to each other. This enables automated agents to access the Web more intelligently and perform more tasks on behalf of users. The term "Semantic Web" was coined by Tim Berners-Lee,[9] the inventor of the World Wide Web and director of the World Wide Web Consortium ("W3C"), which oversees the development of proposed Semantic Web standards. He defines the Semantic Web as "a web of data that can be processed directly and indirectly by machines".

Many of the technologies proposed by the W3C already existed before they were positioned under the W3C umbrella. These are used in various contexts, particularly those dealing with information that encompasses a limited and defined domain, and where sharing data is a common necessity, such as scientific research or data exchange among businesses. In addition, other technologies with similar goals have emerged, such as microformats.

Limitations of HTML

Many files on a typical computer can also be loosely divided into human-readable documents and machine-readable data. Documents like mail messages, reports, and brochures are read by humans. Data, such as calendars, addressbooks, playlists, and spreadsheets are presented using an application program that lets them be viewed, searched and combined.

Currently, the World Wide Web is based mainly on documents written in Hypertext Markup Language (HTML), a markup convention that is used for coding a body of text interspersed with multimedia objects such as images and interactive forms. Metadata tags provide a method by which computers can categorize the content of web pages. In the examples below, the field names "keywords", "description" and "author" are assigned values such as "computing", and "cheap widgets for sale" and "John Doe".

    <meta name="keywords" content="computing, computer studies, computer" />
    <meta name="description" content="Cheap widgets for sale" />
    <meta name="author" content="John Doe" />

Because of this metadata tagging and categorization, other computer systems that want to access and share this data can easily identify the relevant values.

With HTML and a tool to render it (perhaps web browser software, perhaps another user agent), one can create and present a page that lists items for sale. The HTML of this catalog page can make simple, document-level assertions such as "this document's title is 'Widget Superstore{{'"}}, but there is no capability within the HTML itself to assert unambiguously that, for example, item number X586172 is an Acme Gizmo with a retail price of €199, or that it is a consumer product. Rather, HTML can only say that the span of text "X586172" is something that should be positioned near "Acme Gizmo" and "€199", etc. There is no way to say "this is a catalog" or even to establish that "Acme Gizmo" is a kind of title or that "€199" is a price. There is also no way to express that these pieces of information are bound together in describing a discrete item, distinct from other items perhaps listed on the page.

Semantic HTML refers to the traditional HTML practice of markup following intention, rather than specifying layout details directly. For example, the use of denoting "emphasis" rather than , which specifies italics. Layout details are left up to the browser, in combination with Cascading Style Sheets. But this practice falls short of specifying the semantics of objects such as items for sale or prices.

Microformats extend HTML syntax to create machine-readable semantic markup about objects including people, organisations, events and products.[10] Similar initiatives include RDFa, Microdata and Schema.org.

Semantic Web solutions

The Semantic Web takes the solution further. It involves publishing in languages specifically designed for data: Resource Description Framework (RDF), Web Ontology Language (OWL), and Extensible Markup Language (XML). HTML describes documents and the links between them. RDF, OWL, and XML, by contrast, can describe arbitrary things such as people, meetings, or airplane parts.

These technologies are combined in order to provide descriptions that supplement or replace the content of Web documents. Thus, content may manifest itself as descriptive data stored in Web-accessible databases,[11] or as markup within documents (particularly, in Extensible HTML (XHTML) interspersed with XML, or, more often, purely in XML, with layout or rendering cues stored separately). The machine-readable descriptions enable content managers to add meaning to the content, i.e., to describe the structure of the knowledge we have about that content. In this way, a machine can process knowledge itself, instead of text, using processes similar to human deductive reasoning and inference, thereby obtaining more meaningful results and helping computers to perform automated information gathering and research.

An example of a tag that would be used in a non-semantic web page:

    <item>blog</item>

Encoding similar information in a semantic web page might look like this:

    <item rdf:about="http://example.org/semantic-web/">Semantic Web</item>

Tim Berners-Lee calls the resulting network of Linked Data the Giant Global Graph, in contrast to the HTML-based World Wide Web. Berners-Lee posits that if the past was document sharing, the future is data sharing. His answer to the question of "how" provides three points of instruction. One, a URL should point to the data. Two, anyone accessing the URL should get data back. Three, relationships in the data should point to additional URLs with data.

Web 3.0

Tim Berners-Lee has described the semantic web as a component of "Web 3.0".[12]

"Semantic Web" is sometimes used as a synonym for "Web 3.0",[13] though the definition of each term varies. Web 3.0 has started to emerge as a movement away from the centralisation of services like search, social media and chat applications that are dependent on a single organisation to function.[14]

Guardian journalist John Harris reviewed the concept favorably in early2019 and, in particular, work by BernersLee on a project called 'Solid', based around personal data stores or 'Pods', over which individuals retain control.[15] BernersLee has formed a startup, Inrupt, to advance the idea and attract volunteer developers.[16][17]


Challenges

Some of the challenges for the Semantic Web include vastness, vagueness, uncertainty, inconsistency, and deceit. Automated reasoning systems will have to deal with all of these issues in order to deliver on the promise of the Semantic Web.

-   Vastness: The World Wide Web contains many billions of pages. The SNOMED CT medical terminology ontology alone contains 370,000 class names, and existing technology has not yet been able to eliminate all semantically duplicated terms. Any automated reasoning system will have to deal with truly huge inputs.
-   Vagueness: These are imprecise concepts like "young" or "tall". This arises from the vagueness of user queries, of concepts represented by content providers, of matching query terms to provider terms and of trying to combine different knowledge bases with overlapping but subtly different concepts. Fuzzy logic is the most common technique for dealing with vagueness.
-   Uncertainty: These are precise concepts with uncertain values. For example, a patient might present a set of symptoms that correspond to a number of different distinct diagnoses each with a different probability. Probabilistic reasoning techniques are generally employed to address uncertainty.
-   Inconsistency: These are logical contradictions that will inevitably arise during the development of large ontologies, and when ontologies from separate sources are combined. Deductive reasoning fails catastrophically when faced with inconsistency, because "anything follows from a contradiction". Defeasible reasoning and paraconsistent reasoning are two techniques that can be employed to deal with inconsistency.
-   Deceit: This is when the producer of the information is intentionally misleading the consumer of the information. Cryptography techniques are currently utilized to alleviate this threat. By providing a means to determine the information's integrity, including that which relates to the identity of the entity that produced or published the information, however credibility issues still have to be addressed in cases of potential deceit.

This list of challenges is illustrative rather than exhaustive, and it focuses on the challenges to the "unifying logic" and "proof" layers of the Semantic Web. The World Wide Web Consortium (W3C) Incubator Group for Uncertainty Reasoning for the World Wide Web (URW3-XG) final report lumps these problems together under the single heading of "uncertainty".[18] Many of the techniques mentioned here will require extensions to the Web Ontology Language (OWL) for example to annotate conditional probabilities. This is an area of active research.[19]


Standards

Standardization for Semantic Web in the context of Web 3.0 is under the care of W3C.[20]

Components

The term "Semantic Web" is often used more specifically to refer to the formats and technologies that enable it.[21] The collection, structuring and recovery of linked data are enabled by technologies that provide a formal description of concepts, terms, and relationships within a given knowledge domain. These technologies are specified as W3C standards and include:

-   Resource Description Framework (RDF), a general method for describing information
-   RDF Schema (RDFS)
-   Simple Knowledge Organization System (SKOS)
-   SPARQL, an RDF query language
-   Notation3 (N3), designed with human-readability in mind
-   N-Triples, a format for storing and transmitting data
-   Turtle (Terse RDF Triple Language)
-   Web Ontology Language (OWL), a family of knowledge representation languages
-   Rule Interchange Format (RIF), a framework of web rule language dialects supporting rule interchange on the Web

.]]

The Semantic Web Stack illustrates the architecture of the Semantic Web. The functions and relationships of the components can be summarized as follows:[22]

-   XML provides an elemental syntax for content structure within documents, yet associates no semantics with the meaning of the content contained within. XML is not at present a necessary component of Semantic Web technologies in most cases, as alternative syntaxes exists, such as Turtle. Turtle is a de facto standard, but has not been through a formal standardization process.
-   XML Schema is a language for providing and restricting the structure and content of elements contained within XML documents.
-   RDF is a simple language for expressing data models, which refer to objects ("web resources") and their relationships. An RDF-based model can be represented in a variety of syntaxes, e.g., RDF/XML, N3, Turtle, and RDFa. RDF is a fundamental standard of the Semantic Web.[23][24]
-   RDF Schema extends RDF and is a vocabulary for describing properties and classes of RDF-based resources, with semantics for generalized-hierarchies of such properties and classes.
-   OWL adds more vocabulary for describing properties and classes: among others, relations between classes (e.g. disjointness), cardinality (e.g. "exactly one"), equality, richer typing of properties, characteristics of properties (e.g. symmetry), and enumerated classes.
-   SPARQL is a protocol and query language for semantic web data sources.
-   RIF is the W3C Rule Interchange Format. It's an XML language for expressing Web rules that computers can execute. RIF provides multiple versions, called dialects. It includes a RIF Basic Logic Dialect (RIF-BLD) and RIF Production Rules Dialect (RIF PRD).

Current state of standardization

Well-established standards:

-   RDF
-   RDFS
-   Rule Interchange Format (RIF)
-   SPARQL
-   Unicode
-   Uniform Resource Identifier
-   Web Ontology Language (OWL)
-   XML

Not yet fully realized:

-   Unifying Logic and Proof layers
-   Semantic Web Rule Language (SWRL)


Applications

The intent is to enhance the usability and usefulness of the Web and its interconnected resources by creating Semantic Web Services, such as:

-   Servers that expose existing data systems using the RDF and SPARQL standards. Many converters to RDF exist from different applications.[25] Relational databases are an important source. The semantic web server attaches to the existing system without affecting its operation.
-   Documents "marked up" with semantic information (an extension of the HTML
    tags used in today's Web pages to supply information for Web search engines using web crawlers). This could be machine-understandable information about the human-understandable content of the document (such as the creator, title, description, etc.) or it could be purely metadata representing a set of facts (such as resources and services elsewhere on the site). Note that _anything_ that can be identified with a _Uniform Resource Identifier_ (URI) can be described, so the semantic web can reason about animals, people, places, ideas, etc. There are four semantic annotation formats that can be used in HTML documents; Microformat, RDFa, Microdata and JSON-LD.[26] Semantic markup is often generated automatically, rather than manually.

-   Common metadata vocabularies (ontologies) and maps between vocabularies that allow document creators to know how to mark up their documents so that agents can use the information in the supplied metadata (so that _Author_ in the sense of 'the Author of the page' won't be confused with _Author_ in the sense of a book that is the subject of a book review).
-   Automated agents to perform tasks for users of the semantic web using this data.
-   Web-based services (often with agents of their own) to supply information specifically to agents, for example, a Trust service that an agent could ask if some online store has a history of poor service or spamming.

Such services could be useful to public search engines, or could be used for knowledge management within an organization. Business applications include:

-   Facilitating the integration of information from mixed sources
-   Dissolving ambiguities in corporate terminology
-   Improving information retrieval thereby reducing information overload and increasing the refinement and precision of the data retrieved[27][28][29][30]
-   Identifying relevant information with respect to a given domain[31]
-   Providing decision making support

In a corporation, there is a closed group of users and the management is able to enforce company guidelines like the adoption of specific ontologies and use of semantic annotation. Compared to the public Semantic Web there are lesser requirements on scalability and the information circulating within a company can be more trusted in general; privacy is less of an issue outside of handling of customer data.


Skeptical reactions

Practical feasibility

Critics question the basic feasibility of a complete or even partial fulfillment of the Semantic Web, pointing out both difficulties in setting it up and a lack of general-purpose usefulness that prevents the required effort from being invested. In a 2003 paper, Marshall and Shipman point out the cognitive overhead inherent in formalizing knowledge, compared to the authoring of traditional web hypertext:[32]

According to Marshall and Shipman, the tacit and changing nature of much knowledge adds to the knowledge engineering problem, and limits the Semantic Web's applicability to specific domains. A further issue that they point out are domain- or organisation-specific ways to express knowledge, which must be solved through community agreement rather than only technical means. As it turns out, specialized communities and organizations for intra-company projects have tended to adopt semantic web technologies greater than peripheral and less-specialized communities.[33] The practical constraints toward adoption have appeared less challenging where domain and scope is more limited than that of the general public and the World-Wide Web.

Finally, Marshall and Shipman see pragmatic problems in the idea of (Knowledge Navigator-style) intelligent agents working in the largely manually curated Semantic Web:

Cory Doctorow's critique ("metacrap") is from the perspective of human behavior and personal preferences. For example, people may include spurious metadata into Web pages in an attempt to mislead Semantic Web engines that naively assume the metadata's veracity. This phenomenon was well-known with metatags that fooled the Altavista ranking algorithm into elevating the ranking of certain Web pages: the Google indexing engine specifically looks for such attempts at manipulation. Peter Gärdenfors and Timo Honkela point out that logic-based semantic web technologies cover only a fraction of the relevant phenomena related to semantics.[34][35]

Censorship and privacy

Enthusiasm about the semantic web could be tempered by concerns regarding censorship and privacy. For instance, text-analyzing techniques can now be easily bypassed by using other words, metaphors for instance, or by using images in place of words. An advanced implementation of the semantic web would make it much easier for governments to control the viewing and creation of online information, as this information would be much easier for an automated content-blocking machine to understand. In addition, the issue has also been raised that, with the use of FOAF files and geolocation meta-data, there would be very little anonymity associated with the authorship of articles on things such as a personal blog. Some of these concerns were addressed in the "Policy Aware Web" project[36] and is an active research and development topic.

Doubling output formats

Another criticism of the semantic web is that it would be much more time-consuming to create and publish content because there would need to be two formats for one piece of data: one for human viewing and one for machines. However, many web applications in development are addressing this issue by creating a machine-readable format upon the publishing of data or the request of a machine for such data. The development of microformats has been one reaction to this kind of criticism. Another argument in defense of the feasibility of semantic web is the likely falling price of human intelligence tasks in digital labor markets, such as Amazon's Mechanical Turk.

Specifications such as eRDF and RDFa allow arbitrary RDF data to be embedded in HTML pages. The GRDDL (Gleaning Resource Descriptions from Dialects of Language) mechanism allows existing material (including microformats) to be automatically interpreted as RDF, so publishers only need to use a single format, such as HTML.


Research activities on corporate applications

The first research group explicitly focusing on the Corporate Semantic Web was the ACACIA team at INRIA-Sophia-Antipolis, founded in 2002. Results of their work include the RDF(S) based Corese search engine, and the application of semantic web technology in the realm of E-learning.[37]

Since 2008, the Corporate Semantic Web research group, located at the Free University of Berlin, focuses on building blocks: Corporate Semantic Search, Corporate Semantic Collaboration, and Corporate Ontology Engineering.[38]

Ontology engineering research includes the question of how to involve non-expert users in creating ontologies and semantically annotated content[39] and for extracting explicit knowledge from the interaction of users within enterprises.

Future of applications

Tim O'Reilly, who coined the term Web 2.0 proposed a long-term vision of the Semantic Web as a web of data, where sophisticated applications manipulate the data web.[40] The data web transforms the Web from a distributed file system into a distributed database system.[41]


See also

-   AGRIS
-   Business semantics management
-   Computational semantics
-   Calais (Reuters product)
-   Conceptual interoperability
-   DBpedia
-   Entity-attribute-value model
-   EU Open Data Portal
-   Hyperdata
-   Internet of Things
-   Linked data
-   List of emerging technologies
-   Nextbio
-   Ontology learning
-   Semantic computing
-   Semantic Geospatial Web
-   Semantic MediaWiki
-   Semantic Sensor Web
-   Semantic Social Network
-   Semantically-Interlinked Online Communities
-   Smart-M3
-   Social Semantic Web
-   Web engineering
-   Web resource
-   Web science


References


Further reading

-   -   Aaron Swartz's A Programmable Web: An unfinished Work donated by Morgan & Claypool Publishers after Aaron Swartz's death in January 2013.
-   -   -   -   -


External links

-   -   Breakthrough Analysis: A Data Space for Information Coexistence

Category:Emerging technologies Web 3s Category:Knowledge engineering Semantic_Web Category:Web services

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

[11] Artem Chebotko and Shiyong Lu, "Querying the Semantic Web: An Efficient Approach Using Relational Databases", LAP Lambert Academic Publishing, , 2009.

[12]

[13]

[14]

[15]

[16]

[17]  Website.

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27] Omar Alonso and Hugo Zaragoza. 2008. Exploiting semantic annotations in information retrieval: ESAIR '08. SIGIR Forum 42, 1 (June 2008), 55–58.

[28] Jaap Kamps, Jussi Karlgren, and Ralf Schenkel. 2011. Report on the third workshop on exploiting semantic annotations in information retrieval (ESAIR). SIGIR Forum 45, 1 (May 2011), 33–41.

[29] Jaap Kamps, Jussi Karlgren, Peter Mika, and Vanessa Murdock. 2012. Fifth workshop on exploiting semantic annotations in information retrieval: ESAIR '12). In Proceedings of the 21st ACM international conference on information and knowledge management (CIKM '12). ACM, New York, NY, USA, 2772–2773.

[30] Omar Alonso, Jaap Kamps, and Jussi Karlgren. 2015. Report on the Seventh Workshop on Exploiting Semantic Annotations in Information Retrieval (ESAIR '14). SIGIR Forum 49, 1 (June 2015), 27–34.

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