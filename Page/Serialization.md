In computer science, in the context of data storage, SERIALIZATION (or serialisation) is the process of translating data structures or object state into a format that can be stored (for example, in a file or memory buffer) or transmitted (for example, across a network connection link) and reconstructed later (possibly in a different computer environment).{{ cite web

| author       = Marshall Cline
| url          = http://www.parashift.com/c++-faq-lite/serialize-overview.html
| title        = C++ FAQ: "What's this "serialization" thing all about?"
| archive-url  = https://web.archive.org/web/20150405013606/http://isocpp.org/wiki/faq/serialization
| archive-date = 2015-04-05
| quote = It lets you take an object or group of objects, put them on a disk or send them through a wire or wireless transport mechanism, then later, perhaps on another computer, reverse the process, resurrecting the original object(s). The basic mechanisms are to flatten object(s) into a one-dimensional stream of bits, and to turn that stream of bits back into the original object(s).}} When the resulting series of bits is reread according to the serialization format, it can be used to create a semantically identical clone of the original object. For many complex objects, such as those that make extensive use of references, this process is not straightforward. Serialization of object-oriented objects does not include any of their associated methods with which they were previously linked.

This process of serializing an object is also called marshalling an object.[1] The opposite operation, extracting a data structure from a series of bytes, is DESERIALIZATION (also called UNMARSHALLING).


Uses

-   A method of transferring data through the wires (messaging).
-   A method of storing data (in databases, on hard disk drives).
-   A method of remote procedure calls, e.g., as in SOAP.
-   A method for distributing objects, especially in component-based software engineering such as COM, CORBA, etc.
-   A method for detecting changes in time-varying data.

For some of these features to be useful, architecture independence must be maintained. For example, for maximal use of distribution, a computer running on a different hardware architecture should be able to reliably reconstruct a serialized data stream, regardless of endianness. This means that the simpler and faster procedure of directly copying the memory layout of the data structure cannot work reliably for all architectures. Serializing the data structure in an architecture-independent format means preventing the problems of byte ordering, memory layout, or simply different ways of representing data structures in different programming languages.

Inherent to any serialization scheme is that, because the encoding of the data is by definition serial, extracting one part of the serialized data structure requires that the entire object be read from start to end, and reconstructed. In many applications, this linearity is an asset, because it enables simple, common I/O interfaces to be utilized to hold and pass on the state of an object. In applications where higher performance is an issue, it can make sense to expend more effort to deal with a more complex, non-linear storage organization.

Even on a single machine, primitive pointer objects are too fragile to save because the objects to which they point may be reloaded to a different location in memory. To deal with this, the serialization process includes a step called _unswizzling_ or _pointer unswizzling_, where direct pointer references are converted to references based on name or position. The deserialization process includes an inverse step called _pointer swizzling_.

Since both serializing and deserializing can be driven from common code (for example, the _Serialize_ function in Microsoft Foundation Classes), it is possible for the common code to do both at the same time, and thus, 1) detect differences between the objects being serialized and their prior copies, and 2) provide the input for the next such detection. It is not necessary to actually build the prior copy because differences can be detected on the fly. The technique is called differential execution. This is useful in the programming of user interfaces whose contents are time-varying — graphical objects can be created, removed, altered, or made to handle input events without necessarily having to write separate code to do those things.


Drawbacks

Serialization breaks the opacity of an abstract data type by potentially exposing private implementation details. Trivial implementations which serialize all data members may violate encapsulation.[2]

To discourage competitors from making compatible products, publishers of proprietary software often keep the details of their programs' serialization formats a trade secret. Some deliberately obfuscate or even encrypt the serialized data. Yet, interoperability requires that applications be able to understand each other's serialization formats. Therefore, remote method call architectures such as CORBA define their serialization formats in detail.

Many institutions, such as archives and libraries, attempt to future proof their backup archives—in particular, database dumps—by storing them in some relatively human-readable serialized format.


Serialization formats

The Xerox Network Systems Courier technology in the early 1980s influenced the first widely adopted standard. Sun Microsystems published the External Data Representation (XDR) in 1987.[3]

In the late 1990s, a push to provide an alternative to the standard serialization protocols started: XML was used to produce a human readable text-based encoding. Such an encoding can be useful for persistent objects that may be read and understood by humans, or communicated to other systems regardless of programming language. It has the disadvantage of losing the more compact, byte-stream-based encoding, but by this point larger storage and transmission capacities made file size less of a concern than in the early days of computing. Binary XML had been proposed as a compromise which was not readable by plain-text editors, but was more compact than regular XML. In the 2000s, XML was often used for asynchronous transfer of structured data between client and server in Ajax web applications.

JSON is a lighter plain-text alternative to XML which is also commonly used for client-server communication in web applications. JSON is based on JavaScript syntax, but is supported in other programming languages as well.

YAML, is similar to JSON and includes features that make it more powerful for serialization, more "human friendly," and potentially more compact. These features include a notion of tagging data types, support for non-hierarchical data structures, the option to structure data with indentation, and multiple forms of scalar data quoting.

The property list format is a human-readable serialization format used in NeXTSTEP, GNUstep, and macOS Cocoa.

For large volume scientific datasets, such as satellite data and output of numerical climate, weather, or ocean models, specific binary serialization standards have been developed, e.g. HDF, netCDF and the older GRIB.


Programming language support

Several object-oriented programming languages directly support _object serialization_ (or _object archival_), either by syntactic sugar elements or providing a standard interface for doing so. The languages which do so include Ruby, Smalltalk, Python, PHP, Objective-C, Delphi, Java, and the .NET family of languages. There are also libraries available that add serialization support to languages that lack native support for it.

CFML: CFML allows data structures to be serialized to WDDX with the  tag and to JSON with the SerializeJSON() function.
OCaml: OCaml's standard library provides marshalling through the Marshal module (its documentation) and the Pervasives functions output_value and input_value. While OCaml programming is statically type-checked, uses of the Marshal module may break type guarantees, as there is no way to check whether an unmarshalled stream represents objects of the expected type. In OCaml it is difficult to marshal a function or a data structure which contains a function (e.g. an object which contains a method), because executable code in functions cannot be transmitted across different programs. (There is a flag to marshal the code position of a function but it can only be unmarshalled in exactly the same program). The standard marshalling functions can preserve sharing and handle cyclic data, which can be configured by a flag.
Perl: Several Perl modules available from CPAN provide serialization mechanisms, including Storable , JSON::XS and FreezeThaw. Storable includes functions to serialize and deserialize Perl data structures to and from files or Perl scalars. In addition to serializing directly to files, Storable includes the freeze function to return a serialized copy of the data packed into a scalar, and thaw to deserialize such a scalar. This is useful for sending a complex data structure over a network socket or storing it in a database. When serializing structures with Storable, there are network safe functions that always store their data in a format that is readable on any computer at a small cost of speed. These functions are named nstore, nfreeze, etc. There are no "n" functions for deserializing these structures — the regular thaw and retrieve deserialize structures serialized with the "n" functions and their machine-specific equivalents.
C and C++: C and C++ do not provide serialization as any sort of high-level construct, but both languages support writing any of the built-in data types, as well as plain old data structs, as binary data. As such, it is usually trivial to write custom serialization functions. Moreover, compiler-based solutions, such as the ODB ORM system for C++, are capable of automatically producing serialization code with few or no modifications to class declarations. Other popular serialization frameworks are Boost.Serialization[4] from the Boost Framework, the S11n framework,[5] and Cereal.[6] MFC framework (Microsoft) also provides serialization methodology as part of its Document-View architecture.
Delphi: Delphi provides a built-in mechanism for serialization of components (also called persistent objects), which is fully integrated with its IDE. The component's contents are saved to a DFM file and reloaded on-the-fly.
Swift: The Swift standard library provides two protocols, Encodable and Decodable (composed together as Codable), which allow instances of conforming types to be serialized to or deserialized from JSON, property lists, or other formats.[7] Default implementations of these protocols can be generated by the compiler for types whose stored properties are also Decodable or Encodable.
Java: Java provides automatic serialization which requires that the object be marked by implementing the  interface. Implementing the interface marks the class as "okay to serialize", and Java then handles serialization internally. There are no serialization methods defined on the Serializable interface, but a serializable class can optionally define methods with certain special names and signatures that if defined, will be called as part of the serialization/deserialization process. The language also allows the developer to override the serialization process more thoroughly by implementing another interface, the  interface, which includes two special methods that are used to save and restore the object's state. There are three primary reasons why objects are not serializable by default and must implement the Serializable interface to access Java's serialization mechanism. Firstly, not all objects capture useful semantics in a serialized state. For example, a  object is tied to the state of the current JVM. There is no context in which a deserialized Thread object would maintain useful semantics. Secondly, the serialized state of an object forms part of its classes' compatibility contract. Maintaining compatibility between versions of serializable classes requires additional effort and consideration. Therefore, making a class serializable needs to be a deliberate design decision and not a default condition. Lastly, serialization allows access to non-transient private members of a class that are not otherwise accessible. Classes containing sensitive information (for example, a password) should not be serializable nor externalizable. The standard encoding method uses a recursive graph-based translation of the object's class descriptor and serializable fields into a byte stream. Primitives as well as non-transient, non-static referenced objects are encoded into the stream. Each object that is referenced by the serialized object via a field that is not marked as transient must also be serialized; and if any object in the complete graph of non-transient object references is not serializable, then serialization will fail. The developer can influence this behavior by marking objects as transient, or by redefining the serialization for an object so that some portion of the reference graph is truncated and not serialized. Java does not use constructor to serialize objects. It is possible to serialize Java objects through JDBC and store them into a database.[8] While Swing components do implement the Serializable interface, they are not guaranteed to be portable between different versions of the Java Virtual Machine. As such, a Swing component, or any component which inherits it, may be serialized to a byte stream, but it is not guaranteed that this will be re-constitutable on another machine.
JavaScript: Since ECMAScript 5.1,[9] JavaScript has included the built-in JSON object and its methods JSON.parse() and JSON.stringify(). Although JSON is originally based on a subset of JavaScript,[10] there are boundary cases where JSON is not valid JavaScript. Specifically, JSON allows the Unicode line terminators  and  to appear unescaped in quoted strings, while ECMAScript 2018 and older does not.[11][12] See the main article on JSON.
.NET Framework: .NET Framework has several serializers designed by Microsoft. There are also many serializers by third parties. More than a dozen serializers are discussed and tested here.[13] and here[14] The list is constantly growing.
Python: The core general serialization mechanism is the pickle standard library module, alluding to the database systems term _pickling_[15][16][17] to describe data serialization (_unpickling_ for _deserializing_). Pickle uses a simple stack-based virtual machine that records the instructions used to reconstruct the object. It is a cross-version customisable but unsafe (not secure against erroneous or malicious data) serialization format. Malformed or maliciously constructed data, may cause the deserializer to import arbitrary modules and instantiate any object.[18][19] The standard library also includes modules serializing to standard data formats: json (with built-in support for basic scalar and collection types and able to support arbitrary types via encoding and decoding hooks) and XML-encoded property lists. (plistlib), limited to plist-supported types (numbers, strings, booleans, tuples, lists, dictionaries, datetime and binary blobs). Finally, it is recommended that an object's __repr__ be evaluable in the right environment, making it a rough match for Common Lisp's print-object. Not all object types can be pickled automatically, especially ones that hold operating system resources like file handles, but users can register custom "reduction" and construction functions to support the pickling and unpickling of arbitrary types. Pickle was originally implemented as the pure Python pickle module, but, in versions of Python prior to 3.0, the cPickle module (also a built-in) offers improved performance (up to 1000 times faster[20]). The cPickle was adapted from the Unladen Swallow project. In Python 3, users should always import the standard version, which attempts to import the accelerated version and falls back to the pure Python version.[21]
PHP: PHP originally implemented serialization through the built-in serialize() and unserialize() functions.[22] PHP can serialize any of its data types except resources (file pointers, sockets, etc.). The built-in unserialize() function is often dangerous when used on completely untrusted data.[23] For objects, there are two "magic methods" that can be implemented within a class — __sleep() and __wakeup() — that are called from within serialize() and unserialize(), respectively, that can clean up and restore an object. For example, it may be desirable to close a database connection on serialization and restore the connection on deserialization; this functionality would be handled in these two magic methods. They also permit the object to pick which properties are serialized. Since PHP 5.1, there is an object-oriented serialization mechanism for objects, the Serializable interface.[24]
R: R has the function dput which writes an ASCII text representation of an R object to a file or connection. A representation can be read from a file using dget.[25] More specific, the function serialize serializes an R object to a connection, the output being a raw vector coded in hexadecimal format. The unserialize function allows to read an object from a connection or a raw vector.[26]
REBOL: REBOL will serialize to file (save/all) or to a string! (mold/all). Strings and files can be deserialized using the polymorphic load function. RProtoBuf provides cross-language data serialization in R, using Protocol Buffers.[27]
Ruby: Ruby includes the standard module Marshal with 2 methods dump and load, akin to the standard Unix utilities dump and restore. These methods serialize to the standard class String, that is, they effectively become a sequence of bytes. Some objects cannot be serialized (doing so would raise a TypeError exception): bindings, procedure objects, instances of class IO, singleton objects and interfaces. If a class requires custom serialization (for example, it requires certain cleanup actions done on dumping / restoring), it can be done by implementing 2 methods: _dump and _load. The instance method _dump should return a String object containing all the information necessary to reconstitute objects of this class and all referenced objects up to a maximum depth given as an integer parameter (a value of -1 implies that depth checking should be disabled). The class method _load should take a String and return an object of this class.
Smalltalk: In general, non-recursive and non-sharing objects can be stored and retrieved in a human readable form using the storeOn:/readFrom: protocol. The storeOn: method generates the text of a Smalltalk expression which - when evaluated using readFrom: - recreates the original object. This scheme is special, in that it uses a procedural description of the object, not the data itself. It is therefore very flexible, allowing for classes to define more compact representations. However, in its original form, it does not handle cyclic data structures or preserve the identity of shared references (i.e. two references a single object will be restored as references to two equal, but not identical copies). For this, various portable and non-portable alternatives exist. Some of them are specific to a particular Smalltalk implementation or class library. There are several ways in Squeak Smalltalk to serialize and store objects. The easiest and most used are storeOn:/readFrom: and binary storage formats based on SmartRefStream serializers. In addition, bundled objects can be stored and retrieved using ImageSegments. Both provide a so-called "binary-object storage framework", which support serialization into and retrieval from a compact binary form. Both handle cyclic, recursive and shared structures, storage/retrieval of class and metaclass info and include mechanisms for "on the fly" object migration (i.e. to convert instances which were written by an older version of a class with a different object layout). The APIs are similar (storeBinary/readBinary), but the encoding details are different, making these two formats incompatible. However, the Smalltalk/X code is open source and free and can be loaded into other Smalltalks to allow for cross-dialect object interchange. Object serialization is not part of the ANSI Smalltalk specification. As a result, the code to serialize an object varies by Smalltalk implementation. The resulting binary data also varies. For instance, a serialized object created in Squeak Smalltalk cannot be restored in Ambrai Smalltalk. Consequently, various applications that do work on multiple Smalltalk implementations that rely on object serialization cannot share data between these different implementations. These applications include the MinneStore object database 1 and some RPC packages. A solution to this problem is SIXX 2, which is a package for multiple Smalltalks that uses an XML-based format for serialization.
Lisp: Generally a Lisp data structure can be serialized with the functions "read" and "print". A variable foo containing, for example, a list of arrays would be printed by (print foo). Similarly an object can be read from a stream named s by (read s). These two parts of the Lisp implementation are called the Printer and the Reader. The output of "print" is human readable; it uses lists demarked by parentheses, for example: (4 2.9 "x" y). In many types of Lisp, including Common Lisp, the printer cannot represent every type of data because it is not clear how to do so. In Common Lisp for example the printer cannot print CLOS objects. Instead the programmer may write a method on the generic function print-object, this will be invoked when the object is printed. This is somewhat similar to the method used in Ruby. Lisp code itself is written in the syntax of the reader, called read syntax. Most languages use separate and different parsers to deal with code and data, Lisp only uses one. A file containing lisp code may be read into memory as a data structure, transformed by another program, then possibly executed or written out, such as in a read–eval–print loop. Not all readers/writers support cyclic, recursive or shared structures.
Haskell: In Haskell, serialization is supported for types that are members of the Read and Show type classes. Every type that is a member of the Read type class defines a function that will extract the data from the string representation of the dumped data. The Show type class, in turn, contains the show function from which a string representation of the object can be generated. The programmer need not define the functions explicitly—merely declaring a type to be deriving Read or deriving Show, or both, can make the compiler generate the appropriate functions for many cases (but not all: function types, for example, cannot automatically derive Show or Read). The auto-generated instance for Show also produces valid source code, so the same Haskell value can be generated by running the code produced by show in, for example, a Haskell interpreter.[28] For more efficient serialization, there are haskell libraries that allow high-speed serialization in binary format, e.g. binary.
Windows PowerShell: Windows PowerShell implements serialization through the built-in cmdlet Export-CliXML. Export-CliXML serializes .NET objects and stores the resulting XML in a file. To reconstitute the objects, use the Import-CliXML cmdlet, which generates a deserialized object from the XML in the exported file. Deserialized objects, often known as "property bags" are not live objects; they are snapshots that have properties, but no methods. Two dimensional data structures can also be (de)serialized in CSV format using the built-in cmdlets Import-CSV and Export-CSV.
Julia: Julia implements serialization through the serialize() / deserialize() modules,[29] intended to work within the same version of Julia, and/or instance of the same system image.[30] The HDF5.jl package offers a more stable alternative, using a documented format and common library with wrappers for different languages,[31] while the default serialization format is suggested to have been designed rather with maximal performance for network communication in mind.[32]


See also

-   Commutation (telemetry)
-   Comparison of data serialization formats
-   Hibernate (Java)
-   XML Schema
-   Basic Encoding Rules
-   Google Protocol Buffers
-   Wikibase
-   Apache Avro


References


External links

-   -   Java 1.4 Object Serialization documentation.
-   Durable Java: Serialization
-   XML Data Binding Resources
-   Databoard Binary serialization with partial and random access, type system, RPC, type adaption, and text format.
-   3

Data_serialization_formats Category:Persistence Category:Articles with example code

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

[25] [R manual http://stat.ethz.ch/R-manual/R-patched/library/base/html/dput.html]

[26] [R manual http://stat.ethz.ch/R-manual/R-patched/library/base/html/serialize.html]

[27]

[28]

[29]

[30]

[31]

[32]