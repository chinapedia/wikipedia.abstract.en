The DUBLIN CORE SCHEMA is a small set of vocabulary terms that can be used to describe digital resources (video, images, web pages, etc.), as well as physical resources such as books or CDs, and objects like artworks.[1] The full set of Dublin Core metadata terms can be found on the Dublin Core Metadata Initiative (DCMI) website.[2] The original set of 15 classic[3] metadata terms, known as the Dublin Core Metadata Element Set (DCMES),[4] is endorsed in the following standards documents:

-   IETF RFC 5013[5]
-   ISO Standard 15836-1:2017[6]
-   NISO Standard Z39.85[7]

Dublin Core metadata may be used for multiple purposes, from simple resource description to combining metadata vocabularies of different metadata standards, to providing interoperability for metadata vocabularies in the linked data cloud and Semantic Web implementations.


Background

"Dublin" refers to Dublin, Ohio, USA where the schema originated during the 1995 invitational OCLC/NCSA Metadata Workshop,[8] hosted by the OCLC (Online Computer Library Center), a library consortium based in Dublin, and the National Center for Supercomputing Applications (NCSA). "Core" refers to the metadata terms as "broad and generic being usable for describing a wide range of resources".[9] The semantics of Dublin Core were established and are maintained by an international, cross-disciplinary group of professionals from librarianship, computer science, text encoding, museums, and other related fields of scholarship and practice.

Starting in 2000, the Dublin Core community focused on "application profiles" – the idea that metadata records would use Dublin Core together with other specialized vocabularies to meet particular implementation requirements. During that time, the World Wide Web Consortium's work on a generic data model for metadata, the Resource Description Framework (RDF), was maturing. As part of an extended set of DCMI metadata terms, Dublin Core became one of the most popular vocabularies for use with RDF, more recently in the context of the linked data movement.[10]

The DUBLIN CORE METADATA INITIATIVE (DCMI)[11] provides an open forum for the development of interoperable online metadata standards for a broad range of purposes and of business models. DCMI's activities include consensus-driven working groups, global conferences and workshops, standards liaison, and educational efforts to promote widespread acceptance of metadata standards and practices. In 2008, DCMI separated from OCLC and incorporated as an independent entity.[12]

Currently, any and all changes that are made to the Dublin Core standard, are reviewed by a DCMI Usage Board within the context of a DCMI Namespace Policy (DCMI-NAMESPACE). This policy describes how terms are assigned and also sets limits on the amount of editorial changes allowed to the labels, definitions, and usage comments.[13]


Levels of the standard

The Dublin Core standard originally included two levels: Simple and Qualified. SIMPLE DUBLIN CORE comprised 15 elements; QUALIFIED DUBLIN CORE included three additional elements (Audience, Provenance and RightsHolder), as well as a group of element refinements (also called qualifiers) that could refine the semantics of the elements in ways that may be useful in resource discovery.

Since 2012, the two have been incorporated into the DCMI METADATA TERMS as a single set of terms using the RDF data model.[14] The full set of elements is found under the namespace http://purl.org/dc/terms/. Because the definition of the terms often contains domains and ranges, which may not be compatible with the pre-RDF definitions used for the original 15 Dublin Core elements, there is a separate namespace for the original 15 elements as previously defined: http://purl.org/dc/elements/1.1/.[15]

Dublin Core Metadata Element Set

The original DCMES Version 1.1 consists of 15 metadata elements, defined this way in the original specification:[16][17]

1.  Contributor – “An entity responsible for making contributions to the resource.”
2.  Coverage – “The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.”
3.  Creator – “An entity primarily responsible for making the resource.”
4.  Date – “A point or period of time associated with an event in the lifecycle of the resource.”
5.  Description – “An account of the resource.”
6.  Format – “The file format, physical medium, or dimensions of the resource.”
7.  Identifier – “An unambiguous reference to the resource within a given context.”
8.  Language – “A language of the resource.”
9.  Publisher – “An entity responsible for making the resource available.”
10. Relation – “A related resource.”
11. Rights – “Information about rights held in and over the resource.”
12. Source – “A related resource from which the described resource is derived.”
13. Subject – “The topic of the resource.”
14. Title – “A name given to the resource.”
15. Type – “The nature or genre of the resource.”

Each Dublin Core element is optional and may be repeated. The DCMI has established standard ways to refine elements and encourage the use of encoding and vocabulary schemes. There is no prescribed order in Dublin Core for presenting or using the elements. The Dublin Core became a NISO standards, Z39.85, and IETF RFC 5013 in 2007. ISO 15836 standard in 2009 and is used as a base-level data element set for the description of learning resources in the ISO/IEC 19788-2 Metadata for learning resources (MLR) – Part 2: Dublin Core elements, prepared by the ISO/IEC JTC1 SC36.

Full information on element definitions and term relationships can be found in the Dublin Core Metadata Registry.[18]

Encoding examples






Example of use [and mention] by WebCite

On the "archive form" web page for WebCite it says,[19] in part: "Metadata (optional): These are Dublin Core elements. [...]".

Qualified Dublin Core

(Superseded in 2008 by the DCMI Metadata Terms.[20]) Subsequent to the specification of the original 15 elements, an ongoing process to develop exemplary terms extending or refining the DCMES was begun. The additional terms were identified, generally in working groups of the DCMI, and judged by the DCMI Usage Board to be in conformance with principles of good practice for the qualification of Dublin Core metadata elements.

Element refinements make the meaning of an element narrower or more specific. A refined element shares the meaning of the unqualified element, but with a more restricted scope. The guiding principle for the qualification of Dublin Core elements, colloquially known as the _Dumb-Down Principle_,[21] states that an application that does not understand a specific element refinement term should be able to ignore the qualifier and treat the metadata value as if it were an unqualified (broader) element. While this may result in some loss of specificity, the remaining element value (without the qualifier) should continue to be generally correct and useful for discovery.

In addition to element refinements, Qualified Dublin Core includes a set of recommended encoding schemes, designed to aid in the interpretation of an element value. These schemes include controlled vocabularies and formal notations or parsing rules. A value expressed using an encoding scheme may thus be a token selected from a controlled vocabulary (for example, a term from a classification system or set of subject headings) or a string formatted in accordance with a formal notation, for example, "2000-12-31" as the ISO standard expression of a date. If an encoding scheme is not understood by an application, the value may still be useful to a HUMAN READER.

AUDIENCE, PROVENANCE and RIGHTSHOLDER are elements, but not part of the Simple Dublin Core 15 elements. Use Audience, Provenance and RightsHolder only when using Qualified Dublin Core. DCMI also maintains a small, general vocabulary recommended for use within the element Type. This vocabulary currently consists of 12 terms.[22]

DCMI Metadata Terms

The DCMI Metadata Terms lists the current set of the Dublin Core vocabulary.[23] This set includes the fifteen terms of the DCMES (in _italic_), as well as the qualified terms. Each term has a unique URI in the namespace http://purl.org/dc/terms, and all are defined as RDF properties.


Syntax

Syntax choices for metadata expressed with the Dublin Core elements depend on context. Dublin Core concepts and semantics are designed to be syntax independent and apply to a variety of contexts, as long as the metadata is in a form suitable for interpretation by both machines and people.

The DUBLIN CORE ABSTRACT MODEL[24] provides a reference model against which particular Dublin Core encoding guidelines can be compared, independent of any particular encoding syntax. Such a reference model helps implementers get a better understanding of the kinds of descriptions they are trying to encode and facilitates the development of better mappings and translations between different syntaxes.


Notable applications

One Document Type Definition based on Dublin Core is the Open Source Metadata Framework (OMF) specification.[25] OMF is in turn used by Rarian (superseding ScrollKeeper), which is used by the GNOME desktop and KDE help browsers and the ScrollServer documentation server. PBCore is also based on Dublin Core.[26] The Zope CMF's Metadata products, used by the Plone, ERP5, the Nuxeo CPS Content management systems, SimpleDL, and Fedora Commons also implement Dublin Core. The EPUB e-book format uses Dublin Core metadata in the OPF file.[27]


See also

-   Metadata registry
-   Metadata Object Description Schema
-   Ontology (information science)
-   Open Archives Initiative (OAI)
-   Controlled vocabulary
-   Interoperability
-   Asset Description Metadata Schema (ADMS), a metadata standard maintained by the W3C for describing semantic standards. Implemented on Joinup.[28]
-   Metadata Encoding and Transmission Standard (METS), maintained by the Library of Congress for the Digital Library Federation
-   Preservation Metadata: Implementation Strategies (PREMIS)

Related software

-   Fedora, a digital asset management (DAM) architecture capable of implementing OAI-PMH (thus, also Dublin Core).
-   Omeka, a free and open source content management system using an unqualified Dublin Core metadata standard.


References


Further reading

-   -   Dublin Core presentation, by Luca Dini, lecturer at the Free University of Bozen-Bolzano


External links

-   -   -   Dublin Core Metadata Initiative Publishes DCMI Abstract Model (_Cover Pages_, March 2005)
-   Metadata Object Description Schema (MODS)

Category:Archival science Category:Bibliography file formats Category:Digital libraries Category:Information management Category:Interoperability Category:ISO standards Category:Knowledge representation Category:Library cataloging and classification Category:Metadata standards Category:Museology Category:Records management Category:Reference models Category:Semantic Web

[1]

[2]

[3]

[4]

[5] The Dublin Core Metadata Element Set, Dublin Core Metadata Initiative, August 2007

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

[17] Section 3: Properties of DCMI Metadata Terms at dublincore.org

[18] Dublin Core Metadata Registry

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