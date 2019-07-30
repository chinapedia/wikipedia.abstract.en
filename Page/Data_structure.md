.]] In computer science, a DATA STRUCTURE is a data organization, management, and storage format that enables efficient access and modification.[1][2][3] More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data.[4]


Usage

Data structures serve as the basis for abstract data types (ADT). The ADT defines the logical form of the data type. The data structure implements the physical form of the data type.[5]

Different types of data structures are suited to different kinds of applications, and some are highly specialized to specific tasks. For example, relational databases commonly use B-tree indexes for data retrieval,[6] while compiler implementations usually use hash tables to look up identifiers.[7]

Data structures provide a means to manage large amounts of data efficiently for uses such as large databases and internet indexing services. Usually, efficient data structures are key to designing efficient algorithms. Some formal design methods and programming languages emphasize data structures, rather than algorithms, as the key organizing factor in software design. Data structures can be used to organize the storage and retrieval of information stored in both main memory and secondary memory.[8]


Implementation

Data structures are generally based on the ability of a computer to fetch and store data at any place in its memory, specified by a pointer—a bit string, representing a memory address, that can be itself stored in memory and manipulated by the program. Thus, the array and record data structures are based on computing the addresses of data items with arithmetic operations, while the linked data structures are based on storing addresses of data items within the structure itself. Many data structures use both principles, sometimes combined in non-trivial ways (as in XOR linking).

The implementation of a data structure usually requires writing a set of procedures that create and manipulate instances of that structure. The efficiency of a data structure cannot be analyzed separately from those operations. This observation motivates the theoretical concept of an abstract data type, a data structure that is defined indirectly by the operations that may be performed on it, and the mathematical properties of those operations (including their space and time cost).


Examples

There are numerous types of data structures, generally built upon simpler primitive data types:[9]

-   An _array_ is a number of elements in a specific order, typically all of the same type (depending on the language, individual elements may either all be forced to be the same type, or may be of almost any type). Elements are accessed using an integer index to specify which element is required. Typical implementations allocate contiguous memory words for the elements of arrays (but this is not always a necessity). Arrays may be fixed-length or resizable.
-   A _linked list_ (also just called _list_) is a linear collection of data elements of any type, called nodes, where each node has itself a value, and points to the next node in the linked list. The principal advantage of a linked list over an array, is that values can always be efficiently inserted and removed without relocating the rest of the list. Certain other operations, such as random access to a certain element, are however slower on lists than on arrays.
-   A _record_ (also called _tuple_ or _struct_) is an aggregate data structure. A record is a value that contains other values, typically in fixed number and sequence and typically indexed by names. The elements of records are usually called _fields_ or _members_.
-   A _union_ is a data structure that specifies which of a number of permitted primitive types may be stored in its instances, e.g. _float_ or _long integer_. Contrast with a record, which could be defined to contain a float _and_ an integer; whereas in a union, there is only one value at a time. Enough space is allocated to contain the widest member datatype.
-   A _tagged union_ (also called _variant_, _variant record_, _discriminated union_, or _disjoint union_) contains an additional field indicating its current type, for enhanced type safety.
-   An _object_ is a data structure that contains data fields, like a record does, as well as various methods which operate on the data contents. An object is an in-memory instance of a class from a taxonomy. In the context of object-oriented programming, records are known as plain old data structures to distinguish them from objects.[10]

In addition, _graphs_ and _binary trees_ are other commonly used data structures.


Language support

Most assembly languages and some low-level languages, such as BCPL (Basic Combined Programming Language), lack built-in support for data structures. On the other hand, many high-level programming languages and some higher-level assembly languages, such as MASM, have special syntax or other built-in support for certain data structures, such as records and arrays. For example, the C (a direct descendant of BCPL) and Pascal languages support structs and records, respectively, in addition to vectors (one-dimensional arrays) and multi-dimensional arrays.[11][12]

Most programming languages feature some sort of library mechanism that allows data structure implementations to be reused by different programs. Modern languages usually come with standard libraries that implement the most common data structures. Examples are the C++ Standard Template Library, the Java Collections Framework, and the Microsoft .NET Framework.

Modern languages also generally support modular programming, the separation between the interface of a library module and its implementation. Some provide opaque data types that allow clients to hide implementation details. Object-oriented programming languages, such as C++, Java, and Smalltalk, typically use classes for this purpose.

Many known data structures have concurrent versions which allow multiple computing threads to access a single concrete instance of a data structure simultaneously.[13]


See also

-   Abstract data type
-   Concurrent data structure
-   Data model
-   Dynamization
-   Linked data structure
-   List of data structures
-   Persistent data structure
-   Plain old data structure
-   Succinct data structure


References


Bibliography

-   Peter Brass, _Advanced Data Structures_, Cambridge University Press, 2008,
-   Donald Knuth, _The Art of Computer Programming_, vol. 1. Addison-Wesley, 3rd edition, 1997,
-   Dinesh Mehta and Sartaj Sahni, _Handbook of Data Structures and Applications_, Chapman and Hall/CRC Press, 2004,
-   Niklaus Wirth, _Algorithms and Data Structures_, Prentice Hall, 1985,


Further reading

-   Alfred Aho, John Hopcroft, and Jeffrey Ullman, _Data Structures and Algorithms_, Addison-Wesley, 1983,
-   G. H. Gonnet and R. Baeza-Yates, _Handbook of Algorithms and Data Structures - in Pascal and C_, second edition, Addison-Wesley, 1991,
-   Ellis Horowitz and Sartaj Sahni, _Fundamentals of Data Structures in Pascal_, Computer Science Press, 1984,


External links

-   Descriptions from the Dictionary of Algorithms and Data Structures
-   Data structures course
-   [http://msdn.microsoft.com/en-us/library/aa289148(VS.71).aspx An Examination of Data Structures from .NET perspective]
-   Schaffer, C. _Data Structures and Algorithm Analysis_

Data_structures

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