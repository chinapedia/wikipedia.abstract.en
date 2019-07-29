A DOCUMENT TYPE DEFINITION (DTD) is a set of _markup declarations_ that define a _document type_ for a SGML-family markup language (GML, SGML, XML, HTML).

A DTD defines the valid building blocks of an XML document. It defines the document structure with a list of validated elements and attributes. A DTD can be declared inline inside an XML document, or as an external reference.[1]

XML uses a subset of SGML DTD.

, newer XML namespace-aware schema languages (such as W3C XML Schema and ISO RELAX NG) have largely superseded DTDs. A namespace-aware version of DTDs is being developed as Part 9 of ISO DSDL. DTDs persist in applications that need special publishing characters, such as the XML and HTML Character Entity References, which derive from larger sets defined as part of the ISO SGML standard effort.


Associating DTDs with documents

A DTD is associated with an XML or SGML document by means of a document type declaration (DOCTYPE). The DOCTYPE appears in the syntactic fragment _doctypedecl_ near the start of an XML document.[2] The declaration establishes that the document is an instance of the type defined by the referenced DTD.

DOCTYPEs make two sorts of declaration:

-   an optional _external subset_
-   an optional _internal subset_.

The declarations in the internal subset form part of the DOCTYPE in the document itself. The declarations in the external subset are located in a separate text file. The external subset may be referenced via a _public identifier_ and/or a _system identifier_. Programs for reading documents may not be required to read the external subset.

Note that any valid SGML or XML document that references an _external subset_ in its DTD, or whose body contains references to _parsed external entities_ declared in its DTD (including those declared within its _internal subset_), may only be partially parsed but cannot be fully validated by _validating_ SGML or XML parsers in their _standalone_ mode (this means that these validating parsers don't attempt to retrieve these external entities, and their replacement text is not accessible).

However, such documents are still fully parsable in the _non_-standalone mode of validating parsers, which signals an error if it can't locate these external entities with their specified _public identifier_ (FPI) or _system identifier_ (a URI), or are inaccessible. (Notations declared in the DTD are also referencing external entities, but these unparsed entities are not needed for the validation of documents in the _standalone_ mode of these parsers: the validation of all external entities referenced by notations is left to the application using the SGML or XML parser). Non-validating parsers _may_ eventually attempt to locate these external entities in the _non_-standalone mode (by partially interpreting the DTD only to resolve their declared parsable entities), but do not validate the content model of these documents.

Examples

The following example of a DOCTYPE contains both public and system identifiers:

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

All HTML 4.01 documents conform to one of three SGML DTDs. The public identifiers of these DTDs are constant and are as follows:

-   -//W3C//DTD HTML 4.01//EN
-   -//W3C//DTD HTML 4.01 Transitional//EN
-   -//W3C//DTD HTML 4.01 Frameset//EN

The system identifiers of these DTDs, if present in the DOCTYPE, are URI references. A system identifier usually points to a specific set of declarations in a resolvable location. SGML allows mapping public identifiers to system identifiers in catalogs that are optionally available to the URI resolvers used by document parsing software.

Note that this DOCTYPE can only appear _after_ the optional XML declaration, and before the document body, if the document syntax conforms to XML. This includes XHTML documents:

    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <!-- the XHTML document body starts here-->
    <html ns="http://www.w3.org/1999/xhtml">
     ...
    </html>

An additional internal subset can also be provided after the external subset:

    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" [
      <!-- an internal subset can be embedded here -->
    ]>
    <!-- the XHTML document body starts here-->
    <html ns="http://www.w3.org/1999/xhtml">
     ...
    </html>

Alternatively, only the internal subset may be provided:

    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE html [
      <!-- an internal subset can be embedded here -->
    ]>
    <!-- the XHTML document body starts here-->
    <html ns="http://www.w3.org/1999/xhtml">
     ...
    </html>

Finally, the document type definition may include no subset at all; in that case, it just specifies that the document has a single top-level element (this is an implicit requirement for all valid XML and HTML documents, but not for document fragments or for all SGML documents, whose top-level elements may be different from the implied root element), and it indicates the type name of the root element:

    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE html>
    <!-- the XHTML document body starts here-->
    <html ns="http://www.w3.org/1999/xhtml">
     ...
    </html>


Markup declarations

DTDs describe the structure of a class of documents via element and attribute-list declarations. Element declarations name the allowable set of elements within the document, and specify whether and how declared elements and runs of character data may be contained within each element. Attribute-list declarations name the allowable set of attributes for each declared element, including the type of each attribute value, if not an explicit set of valid values.

DTD markup declarations declare which element types, attribute lists, entities, and notations are allowed in the structure of the corresponding class of XML documents.[3]

Element type declarations

An element type declaration defines an element and its possible content. A valid XML document contains only elements that are defined in the DTD.

Various keywords and characters specify an element’s content:

-   EMPTY

    for specifying that the defined element allows no content, i.e., it cannot have any children elements, not even text elements (if there are whitespaces, they are ignored);

-   ANY

    for specifying that the defined element allows any content, without restriction, i.e., that it may have any number (including none) and type of children elements (including text elements);

-   or an expression, specifying the only elements allowed as direct children in the content of the defined element; this content can be either:
    -   a MIXED CONTENT, which means that the content may include at least one text element and zero or more named elements, but their order and number of occurrences cannot be restricted; this can be:
        -   ( #PCDATA )

            : historically meaning _parsed character data_, this means that only one text element is allowed in the content (no quantifier is allowed);

        -   ( #PCDATA | ''element name'' | ... )*

            : a limited choice (in an exclusive list between parentheses and separated by "

                |

            " pipe characters and terminated by the required "

                *

            " quantifier) of two or more child elements (including only text elements or the specified named elements) may be used in any order and number of occurrences in the content.

    -   an ELEMENT CONTENT, which means that there must be no text elements in the children elements of the content (all whitespaces encoded between child elements are then ignored, just like comments). Such element content is specified as _content particle_ in a variant of Backus–Naur form without terminal symbols and element names as non-terminal symbols. Element content consists of:
        -   a CONTENT PARTICLE can be either the name of an element declared in the DTD, or a _sequence list_ or _choice list_. It may be followed by an optional _quantifier_.
            -   a SEQUENCE LIST means an ordered list (specified between parentheses and separated by a "
                    ,

                " comma character) of one or more _content particles_: all the _content particles_ must appear successively as direct children in the content of the defined element, at the specified position and relative order;

            -   a CHOICE LIST means a mutually exclusive list (specified between parentheses and separated by a "
                    |

                " pipe character) of two or more _content particles_: only one of these _content particles_ may appear in the content of the defined element at the same position.
        -   A QUANTIFIER is a single character that immediately follows the specified item it applies to, to restrict the number of successive occurrences of these items at the specified position in the content of the element; it may be either:
            -   +

                for specifying that there must be one or more occurrences of the item — the effective content of each occurrence may be different;

            -   *

                for specifying that any number (zero or more) of occurrences is allowed — the item is optional and the effective content of each occurrence may be different;

            -   ?

                for specifying that there must not be more than one occurrence — the item is optional;

            -   If there is no quantifier, the specified item must occur exactly one time at the specified position in the content of the element.

For example:

    <!ELEMENT html (head, body)>
    <!ELEMENT p (#PCDATA | p | ul | dl | table | h1|h2|h3)*>

Note that element type declarations are ignored by _non-validating_ SGML and XML parsers (in which cases, any elements are accepted in any order, and in any number of occurrences in the parsed document), but these declarations are still checked for form and validity.

Attribute list declarations

An attribute list specifies for a given element type the list of all possible attribute associated with that type. For each possible attribute, it contains:

-   the declared name of the attribute,
-   its data type (or an enumeration of its possible values),
-   and its default value.[4]

For example:

    <!ATTLIST img
       src    CDATA          #REQUIRED
       id     ID             #IMPLIED
       sort   CDATA          #FIXED "true"
       print  (yes | no) "yes"
    >

Here are some attribute types supported by both SGML and XML:

CDATA: this type means _characters data_ and indicates that the effective value of the attribute can be any textual value, unless the attribute is specified as fixed (the comments in the DTD may further document values that are effectively accepted, but the DTD syntax does not allow such precise specification);
ID: the effective value of the attribute must be a valid identifier, and it is used to define and anchor to the current element the target of references using this defined identifier (including as document fragment identifiers that may be specified at end of an URI after a "#" sign); it is an error if distinct elements in the same document are defining the same identifier; the uniqueness constraint also implies that the identifier itself carries no other semantics and that identifiers must be treated as opaque in applications; note that XML also predefines the standard pseudo-attribute "xml:id" with this type, without needing any declaration in the DTD, so the uniqueness constraint also applies to these defined identifiers when they are specified anywhere in a XML document.
IDREF or IDREFS: the effective value of the attribute can only be a valid identifier (or a space-separated list of such identifiers) and must be referencing the unique element defined in the document with an attribute declared with the type ID in the DTD (or the unique element defined in an XML document with a pseudo-attribute "xml:id") and whose effective value is the same identifier;
NMTOKEN or NMTOKENS: the effective value of the attribute can only be a valid name token (or a spaced-separated list of such name tokens), but it is not restricted to a unique identifier within the document; this name may carry supplementary and application-dependent semantics and may require additional naming constraints, but this is out of scope of the DTD;
ENTITY or ENTITIES: the effective value of the attribute can only be the name of an unparsed external entity (or a space-separated list of such names), which must also be declared in the document type declaration; this type is not supported in HTML parsers, but is valid in SGML and XML 1.0 or 1.1 (including XHTML and SVG);
(_value1_|...): the effective value of the attribute can only be one of the enumerated list (specified between parentheses and separated by a "|" pipe character) of textual values, where each value in the enumeration is possibly specified between 'single' or "double" quotation marks if it's not a simple name token;
NOTATION (_notation1_|...): the effective value of the attribute can only be any one of the enumerated list (specified between parentheses and separated by a "|" pipe character) of notation names, where each notation name in the enumeration must also be declared in the document type declaration; this type is not supported in HTML parsers, but is valid in SGML and XML 1.0 or 1.1 (including XHTML and SVG).

A default value can define whether an attribute must occur (#REQUIRED) or not (#IMPLIED), or whether it has a fixed value (#FIXED), or which value should be used as a default value ("…") in case the given attribute is left out in an XML tag.

Note that attribute list declarations are ignored by _non-validating_ SGML and XML parsers (in which cases any attribute is accepted within all elements of the parsed document), but these declarations are still checked for well-formedness and validity.

Entity declarations

An entity is similar to a macro. The entity declaration assigns it a value that is retained throughout the document. A common use is to have a name more recognizable than a numeric character reference for an unfamiliar character.[5] Entities help to improve legibility of an XML text. In general, there are two types: internal and external.

-   INTERNAL (PARSED) ENTITIES are associating a name with any arbitrary textual content defined in their declaration (which may be in the _internal subset_ or in the _external subset_ of the DTD declared in the document). When a named entity reference is then encountered in the rest of the document (including in the rest of the DTD), and if this entity name has effectively been defined as a parsed entity, the reference itself is replaced immediately by the textual content defined in the parsed entity, and the parsing continues within this replacement text.
    -   PREDEFINED NAMED CHARACTER ENTITIES are similar to internal entities: 5 of them however are treated specially in all SGML, HTML and XML parsers. These entities are a bit different from normal parsed entities, because when a named character entity reference is encountered in the document, the reference is also replaced immediately by the character content defined in the entity, but the parsing continues AFTER the replacement text, which is immediately inserted literally in the currently parsed token (if such character is permitted in the textual value of that token). This allows some characters that are needed for the core syntax of HTML or XML themselves to be escaped from their special syntactic role (notably "&" which is reserved for beginning entity references, "<" or ">" which delimit the markup tags, and "double" or 'single' quotation marks, which delimit the values of attributes and entity definitions). Predefined character entities also include numeric character references that are handled the same way and can also be used to escape the characters they represent, or to bypass limitations in the character repertoire supported by the document encoding.
    -   In basic profiles for SGML or in HTML documents, the declaration of internal entities is not possible (because external DTD subsets are not retrieved, and internal DTD subsets are not supported in these basic profiles).
    -   Instead, HTML standards predefine a large set of several hundred named character entities, which can still be handled as standard parsed entities defined in the DTD used by the parser.
-   EXTERNAL ENTITIES refer to external storage objects. They are just declared by a unique name in the document, and defined with a public identifier (an FPI) and/or a system identifier (interpreted as an URI) specifying where the source of their content. They exist in fact in two variants:
    -   PARSED EXTERNAL ENTITIES (most often defined with a SYSTEM identifier indicating the URI of their content) that are _not_ associated in their definition to a named annotation, in which case validating XML or SGML parsers retrieve their contents and parse them as if they were declared as internal entities (the external entity containing their effective replacement text);
    -   UNPARSED EXTERNAL ENTITIES that are defined and associated with an annotation name, in which case they are treated as opaque references and signaled as such to the application using the SGML or XML parser: their interpretation, retrieval and parsing is left to the application, according to the types of annotations it supports (see the next section about annotations and for examples of unparsed external entities).
    -   External entities are not supported in basic profiles for SGML or in HTML documents, but are valid in full implementations of SGML and in XML 1.0 or 1.1 (including XHTML and SVG, even if they are not strictly needed in those document types).

An example of internal entity declarations (here in an internal DTD subset of an SGML document) is:

    <!DOCTYPE sgml [
      <!ELEMENT sgml ANY>
      <!ENTITY % std       "standard SGML">
      <!ENTITY % signature " — &author;.">
      <!ENTITY % question  "Why couldn’t I publish my books directly in %std;?">
      <!ENTITY % author    "William Shakespeare">
    ]>

    <sgml>&question;&signature;</sgml>

Note that internal entities may be defined in any order, as long as they are not referenced and parsed in the DTD or in the body of the document, in their order of parsing: it is valid to include a reference to a still undefined entity within the content of a parsed entity, but it is invalid to include anywhere else any named entity reference before this entity has been fully defined, including all other internal entities referenced in its defined content (this also prevents circular or recursive definitions of internal entities). This document is parsed as if it was:

    <!DOCTYPE sgml [
      <!ELEMENT sgml ANY>
      <!ENTITY % std       "standard SGML">
      <!ENTITY % signature " — &author;.">
      <!ENTITY % question  "Why couldn’t I publish my books directly in standard SGML?">
      <!ENTITY % author    "William Shakespeare">
    ]>

    <sgml>Why couldn’t I publish my books directly in standard SGML? — William Shakespeare.</sgml>

Note that reference to the "author" internal entity is not substituted in the replacement text of the "signature" internal entity. Instead, it is replaced only when the "signature" entity reference is parsed within the content of the "sgml" element, but only by validating parsers (non-validating parsers do not substitute entity references occurring within contents of element or within attribute values, in the body of the document.

This is possible because the replacement text specified in the internal entity definitions permits a distinction between PARAMETER entity references (that are introduced by the "%" character and whose replacement applies to the parsed DTD contents) and GENERAL entity references (that are introduced by the "&" character and whose replacement is delayed until they are effectively parsed and validated). The "%" character for introducing parameter entity references in the DTD loses its special role outside the DTD and it becomes a literal character.

However, the references to predefined numeric character entities are substituted wherever they occur, without needing a validating parser (they are only introduced by the "&" character).

Notation declarations

Notations are used in SGML or XML. They provide a complete reference to unparsed external entities whose interpretation is left to the application (which interprets them directly or retrieves the external entity themselves), by assigning them a simple name, which is usable in the body of the document. For example, notations may be used to reference non-XML data in an XML 1.1 document. For example, to annotate SVG images to associate them with a specific renderer:

    <!NOTATION type-image-svg SYSTEM "image/svg">

This declares the MIME type of external images with this type, and associates it with a notation name "type-image-svg". However, notation names usually follow a naming convention that is specific to the application generating or using the notation: notations are interpreted as additional meta-data whose effective content is an external entity and either a PUBLIC FPI, registered in the catalogs used by XML or SGML parsers, or a SYSTEM URI, whose interpretation is application dependent (here a MIME type, interpreted as a relative URI, but it could be an absolute URI to a specific renderer, or a URN indicating an OS-specific object identifier such as a UUID).

The declared notation name must be unique within all the document type declaration, i.e. in the external subset as well as the internal subset, at least for conformance with XML.[6][7]

Notations can be associated to unparsed external entities included in the body of the SGML or XML document. The PUBLIC or SYSTEM parameter of these external entities specifies the FPI and/or the URI where the unparsed data of the external entity is located, and the additional NDATA parameter of these defined entities specifies the additional notation (i.e., effectively the MIME type here). For example:

    <!DOCTYPE sgml [
      <!ELEMENT sgml (img)*>

      <!ELEMENT img EMPTY>
      <!ATTLIST img
         data ENTITY #IMPLIED>

      <!ENTITY   example1SVG     SYSTEM "example1.svg" NDATA example1SVG-rdf>
      <!NOTATION example1SVG-rdf SYSTEM "example1.svg.rdf">
    ]>

    <sgml>
      <img data="example1SVG" />
    </sgml>

Within the body of the SGML document, these referenced external entities (whose name is specified between "&" and ";") are _not_ replaced like usual named entities (defined with a CDATA value), but are left as distinct unparsed tokens that may be used either as the value of an element attribute (like above) or within the element contents, provided that either the DTD allows such external entities in the declared content type of elements or in the declared type of attributes (here the ENTITY type for the data attribute), or the SGML parser is not validating the content.

Notations may also be associated directly to elements as additional meta-data, without associating them to another external entity, by giving their names as possible values of some additional attributes (also declared in the DTD within the <!ATTLIST ...> declaration of the element). For example:

    <!DOCTYPE sgml [
      <!ELEMENT sgml (img)*>
       <!--
         the optional "type" attribute value can only be set to this notation.
       -->
      <!ATTLIST sgml
        type  NOTATION (
          type-vendor-specific ) #IMPLIED>

      <!ELEMENT img ANY> <!-- optional content can be only parsable SGML or XML data -->
       <!--
         The optional "title" attribute value must be parsable as text.
         The optional "data" attribute value is set to an unparsed external entity.
         The optional "type" attribute value can only be one of the two notations.
       -->
      <!ATTLIST img
        title CDATA              #IMPLIED
        data  ENTITY             #IMPLIED
        type  NOTATION (
          type-image-svg |
          type-image-gif )       #IMPLIED>

      <!--
        Notations are referencing external entities and may be set in the "type" attributes above,
        or must be referenced by any defined external entities that cannot be parsed.
      -->
      <!NOTATION type-image-svg       PUBLIC "-//W3C//DTD SVG 1.1//EN"
         "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
      <!NOTATION type-image-gif       PUBLIC "image/gif">
      <!NOTATION type-vendor-specific PUBLIC "application/VND.specific+sgml">

      <!ENTITY example1SVGTitle "Title of example1.svg"> <!-- parsed internal entity -->
      <!ENTITY example1SVG      SYSTEM "example1.svg"> <!-- parsed external entity -->
      <!ENTITY example1GIFTitle "Title of example1.gif"> <!-- parsed internal entity -->
      <!ENTITY example1GIF      SYSTEM "example1.gif" NDATA type-image-gif> <!-- unparsed external entity -->
    ]>

    <sgml type="type-vendor-specific">
      <!-- an SVG image is parsable as valid SGML or XML text -->
      <img title="&example1SVGTitle;" type="type-image-svg">&example1SVG;</img>

      <!-- it can also be referenced as an unparsed external entity -->
      <img title="&example1SVGTitle;" data="example1SVG" />

      <!-- a GIF image is not parsable and can only be referenced as an external entity -->
      <img title="&example1GIFTitle;" data="example1GIF" />
    </sgml>

The example above shows a notation named "type-image-svg" that references the standard public FPI and the system identifier (the standard URI) of an SVG 1.1 document, instead of specifying just a system identifier as in the first example (which was a relative URI interpreted locally as a MIME type). This annotation is referenced directly within the unparsed "type" attribute of the "img" element, but its content is not retrieved. It also declares another notation for a vendor-specific application, to annotate the "sgml" root element in the document. In both cases, the declared notation named is used directly in a declared "type" attribute, whose content is specified in the DTD with the "NOTATION" attribute type (this "type" attribute is declared for the "sgml" element, as well as for the "img" element).

However, the "title" attribute of the "img" element specifies the internal entity "example1SVGTitle" whose declaration that does not define an annotation, so it is parsed by validating parsers and the entity replacement text is "Title of example1.svg".

The content of the "img" element references another external entity "example1SVG" whose declaration also does not define an notation, so it is also parsed by validating parsers and the entity replacement text is located by its defined SYSTEM identifier "example1.svg" (also interpreted as a relative URI). The effective content for the "img" element be the content of this second external resource. The difference with the GIF image, is that the SVG image is parsed within the SGML document, according to the declarations in the DTD, where the GIF image is just referenced as an opaque external object (which is not parsable with SGML) via its "data" attribute (whose value type is an opaque ENTITY).

Only one notation name may be specified in the value of ENTITY attributes (there's no support in SGML, XML 1.0 or XML 1.1 for multiple notation names in the same declared external ENTITY, so separate attributes are needed). However multiple external entities may be referenced (in a space-separated list of names) in attributes declared with type ENTITIES, and where each named external entity is also declared with its own notation).

Notations are also completely opaque for XML and SGML parsers, so they are not differentiated by the type of the external entity that they may reference (for these parsers they just have a unique name associated to a public identifier (an FPI) and/or a system identifier (a URI)).

Some applications (but not XML or SGML parsers themselves) also allow referencing notations indirectly by naming them in the "URN:_name_" value of a standard CDATA attribute, everywhere a URI can be specified. However this behaviour is application-specific, and requires that the application maintains a catalog of known URNs to resolve them into the notations that have been parsed in a standard SGML or XML parser. This use allows notations to be defined only in a DTD stored as an external entity and referenced only as the external subset of documents, and allows these documents to remain compatible with validating XML or SGML parsers that have no direct support for notations.

Notations are not used in HTML, or in basic profiles for XHTML and SVG, because:

-   All external entities used by these standard document types are referenced by simple attributes, declared with the CDATA type in their standard DTD (such as the "href" attribute of an anchor "a" element, or the "src" attribute of an image "img" element, whose values are interpreted as a URI, without needing any catalog of public identifiers, i.e., known FPI)
-   All external entities for additional meta-data are referenced by either:
    -   Additional attributes (such as _type_, which indicates the MIME type of the external entity, or the _charset_ attribute, which indicates its encoding)
    -   Additional elements (such as _link_ or _meta_ in HTML and XHTML) within their own attributes
    -   Standard pseudo-attributes in XML and XHTML (such as _xml:lang_, or _xmlns_ and _xmlns:*_ for namespace declarations).

Note also that even in validating SGML or XML 1.0 or XML 1.1 parsers, the external entities referenced by an FPI and/or URI in declared notations are not retrieved automatically by the parsers themselves. Instead, these parsers just provide to the application the parsed FPI and/or URI associated to the notations found in the parsed SGML or XML document, and with a facility for a dictionary containing all notation names declared in the DTD; these validating parsers also check the uniqueness of notation name declarations, and report a validation error if some notation names are used anywhere in the DTD or in the document body but not declared:

-   If the application can't use any notation (or if their FPI and/or URI are unknown or not supported in their local catalog), these notations may be either ignored silently by the application or the application could signal an error.
-   Otherwise, the applications decide themselves how to interpret them, then if the external entities must be retrieved and then parsed separately.
-   Applications may then signal an error, if such interpretation, retrieval or separate parsing fails.
-   Unrecognized notations that may cause an application to signal an error should not block interpretation of the validated document using them.


XML DTDs and schema validation

The XML DTD syntax is one of several XML schema languages. However, many of the schema languages do not fully replace the XML DTD. Notably, the XML DTD allows defining entities and notations that have no direct equivalents in DTD-less XML (because internal entities and parsable external entities are not part of XML schema languages, and because other unparsed external entities and notations have no simple equivalent mappings in most XML schema languages).

Most XML schema languages are only replacements for element declarations and attribute list declarations, in such a way that it becomes possible to parse XML documents with _non-validating_ XML parsers (if the only purpose of the external DTD subset was to define the schema). In addition, documents for these XML schema languages must be parsed separately, so validating the schema of XML documents in pure standalone mode is not really possible with these languages: the document type declaration remains necessary for at least identifying (with a XML Catalog) the schema used in the parsed XML document and that is validated in another language.

A common misconception holds that a _non-validating_ XML parser does not have to read document type declarations, when in fact, the document type declarations must still be scanned for correct syntax as well as validity of declarations, and the parser must still parse all entity declarations in the _internal subset_, and substitute the replacement texts of internal entities occurring anywhere in the document type declaration or in the document body.

A _non-validating_ parser may, however, elect not to read parsable _external entities_ (including the _external subset_), and does not have to honor the content model restrictions defined in element declarations and in attribute list declarations.

If the XML document depends on parsable external entities (including the specified _external subset_, or parsable external entities declared in the _internal subset_), it should assert standalone="no" in its XML declaration. The validating DTD may be identified by using XML Catalogs to retrieve its specified _external subset_.

In the example below, the XML document is declared with standalone="no" because it has an external subset in its document type declaration:

    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <!DOCTYPE people_list SYSTEM "example.dtd">
    <people_list />

If the XML document type declaration includes any SYSTEM identifier for the external subset, it can't be safely processed as standalone: the URI should be retrieved, otherwise there may be unknown named character entities whose definition may be needed to correctly parse the effective XML syntax in the internal subset or in the document body (the XML syntax parsing is normally performed _after_ the substitution of all named entities, excluding the five entities that are predefined in XML and that are implicitly substituted _after_ parsing the XML document into lexical tokens). If it just includes any PUBLIC identifier, it _may_ be processed as standalone, if the XML processor knows this PUBLIC identifier in its local catalog from where it can retrieve an associated DTD entity.


XML DTD schema example

An example of a very simple external XML DTD to describe the schema of a list of persons might consist of:

    <!ELEMENT people_list (person)*>
    <!ELEMENT person (name, birthdate?, gender?, socialsecuritynumber?)>
    <!ELEMENT name (#PCDATA)>
    <!ELEMENT birthdate (#PCDATA)>
    <!ELEMENT gender (#PCDATA)>
    <!ELEMENT socialsecuritynumber (#PCDATA)>

Taking this line by line:

1.  people_list is a valid element name, and an instance of such an element contains any number of person elements. The * denotes there can be 0 or more person elements within the people_list element.
2.  person is a valid element name, and an instance of such an element contains one element named name, followed by one named birthdate (optional), then gender (also optional) and socialsecuritynumber (also optional). The ? indicates that an element is optional. The reference to the name element name has no ?, so a person element _must_ contain a name element.
3.  name is a valid element name, and an instance of such an element contains "parsed character data" (#PCDATA).
4.  birthdate is a valid element name, and an instance of such an element contains parsed character data.
5.  gender is a valid element name, and an instance of such an element contains parsed character data.
6.  socialsecuritynumber is a valid element name, and an instance of such an element contains parsed character data.

An example of an XML file that uses and conforms to this DTD follows. The DTD is referenced here as an external subset, via the SYSTEM specifier and a URI. It assumes that we can identify the DTD with the relative URI reference "example.dtd"; the "people_list" after "!DOCTYPE" tells us that the root tags, or the first element defined in the DTD, is called "people_list":

    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <!DOCTYPE people_list SYSTEM "example.dtd">
    <people_list>
      <person>
        <name>Fred Bloggs</name>
        <birthdate>2008-11-27</birthdate>
        <gender>Male</gender>
      </person>
    </people_list>

One can render this in an XML-enabled browser (such as Internet Explorer or Mozilla Firefox) by pasting and saving the DTD component above to a text file named _example.dtd_ and the XML file to a differently-named text file, and opening the XML file with the browser. The files should both be saved in the same directory. However, many browsers do not check that an XML document conforms to the rules in the DTD; they are only required to check that the DTD is syntactically correct. For security reasons, they may also choose not to read the external DTD.

The same DTD can also be embedded directly in the XML document itself as an internal subset, by encasing it within [square brackets] in the document type declaration, in which case the document no longer depends on external entities and can be processed in standalone mode:

    <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    <!DOCTYPE people_list [
      <!ELEMENT people_list (person*)>
      <!ELEMENT person (name, birthdate?, gender?, socialsecuritynumber?)>
      <!ELEMENT name (#PCDATA)>
      <!ELEMENT birthdate (#PCDATA)>
      <!ELEMENT gender (#PCDATA)>
      <!ELEMENT socialsecuritynumber (#PCDATA)>
    ]>
    <people_list>
      <person>
        <name>Fred Bloggs</name>
        <birthdate>2008-11-27</birthdate>
        <gender>Male</gender>
      </person>
    </people_list>

Alternatives to DTDs (for specifying schemas) are available:

-   XML Schema, also referred to as XML Schema Definition (XSD), has achieved Recommendation status within the W3C,[8] and is popular for "data oriented" (that is, transactional non-publishing) XML use because of its stronger typing and easier round-tripping to Java declarations. Most of the publishing world has found that the added complexity of XSD would not bring them any particular benefits, so DTDs are still far more popular there. An XML Schema Definition is itself an XML document while a DTD is not.
-   RELAX NG, which is also a part of DSDL, is an ISO international standard.[9] It is more expressive than XSD, while providing a simpler syntax, but commercial software support has been slow in coming.


Security

An XML DTD can be used to create a denial of service (DoS) attack by defining nested entities that expand exponentially, or by sending the XML parser to an external resource that never returns.[10]

For this reason, .NET Framework provides a property that allows prohibiting or skipping DTD parsing,[11] and recent versions of Microsoft Office applications (Microsoft Office 2010 and higher) refuse to open XML files that contain DTD declarations.


See also

-   Semantic Web
-   XML Schema Language Comparison – Comparison to other XML Schema languages.
-   XML Schema (W3C)


References


External links

-   Definition of the XML document type declaration from Extensible Markup Language (XML) 1.0 (Fourth Edition) on W3.org

Category:XML-based standards

[1]

[2]

[3]

[4] _Attribute-list Declaration_, Specifications of _Extensible Markup Language_ (XML) 1.1, W3C.

[5]

[6] _Notation Declarations_, Specifications of _Extensible Markup Language_ (XML) 1.0, W3C.

[7] _Notation Declarations_, Specifications of _Extensible Markup Language_ (XML) 1.1, W3C.

[8]

[9]

[10]

[11]