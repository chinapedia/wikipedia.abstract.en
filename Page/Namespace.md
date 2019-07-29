In computing, a NAMESPACE is a set of symbols that are used to organize objects of various kinds, so that these objects may be referred to by name. In Java, a namespace ensures that all the IDENTIFIERS within it must have unique names so that they can be easily identified. In order to manage the namespace Java provides the mechanism of creating Java packages. Prominent examples include:

-   file systems are namespaces that assign names to files;[1]
-   some programming languages organize their variables and subroutines in namespaces;[2][3][4]
-   computer networks and distributed systems assign names to resources, such as computers, printers, websites, (remote) files, etc.

Namespaces are commonly structured as hierarchies to allow reuse of names in different contexts. As an analogy, consider a system of naming of people where each person has a proper name, as well as a family name shared with their relatives. If the first names of family members are unique only within each family, then each person can be uniquely identified by the combination of first name and family name; there is only one Jane Doe, though there may be many Janes. Within the namespace of the Doe family, just "Jane" suffices to unambiguously designate this person, while within the "global" namespace of all people, the full name must be used.

In a similar way, hierarchical file systems organize files in directories. Each directory is a separate namespace, so that the directories "letters" and "invoices" may both contain a file "to_jane".

In computer programming, namespaces are typically employed for the purpose of grouping symbols and identifiers around a particular functionality and to avoid name collisions between multiple identifiers that share the same name.

In networking, the Domain Name System organizes websites (and other resources) into hierarchical namespaces.


Name conflicts

Element names are defined by the developer. This often results in a conflict when trying to mix XML documents from different XML applications.

This XML carries HTML table information:

    <table>
        <tr>
            <td>Apples</td>
            <td>Oranges</td>
        </tr>
    </table>

This XML carries information about a table (i.e. a piece of furniture):

    <table>
        <name>African Coffee Table</name>
        <width>80</width>
        <length>120</length>
    </table>

If these XML fragments were added together, there would be a name conflict. Both contain a <table> element, but the elements have different content and meaning.

An XML parser will not know how to handle these differences.

Solution via prefix

Name conflicts in XML can easily be avoided using a name prefix.

The following XML distinguishes between information about the HTML table and furniture by prefixing "h" and "f" at the beginning xml/xml_namespaces.asp


    <h:table>
        <h:tr>
            <h:td>Apples</h:td>
            <h:td>Oranges</h:td>
        </h:tr>
    </h:table>

    <f:table>
        <f:name>African Coffee Table</f:name>
        <f:width>80</f:width>
        <f:length>120</f:length>
    </f:table>


Naming system

A name in a namespace consists of a namespace identifier and a local name.[5][6] The namespace name is usually applied as a prefix to the local name.

In augmented Backus–Naur form:

name =  separator 

When local names are used by themselves, name resolution is used to decide which (if any) particular item is alluded to by some particular local name.

Examples

+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Context                     | Name                                       | Namespace identifier                          | Local name                   |
+=============================+============================================+===============================================+==============================+
| Path                        | /home/user/readme.txt                      | /home/user (path)                             | readme.txt (file name)       |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Domain name                 | www.example.com                            | example.com (domain)                          | www (host name)              |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| C++                         | std::array                                 | std                                           | array                        |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| UN/LOCODE                   | US NYC                                     | US (country)                                  | NYC (locality)               |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| XML                         | xmlns:xhtml="http://www.w3.org/1999/xhtml" | http://www.w3.org/1999/xhtml                  | body                         |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Perl                        | $DBI::errstr                               | DBI                                           | $errstr                      |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Java                        | java.util.Date                             | java.util                                     | Date                         |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Uniform resource name (URN) | urn:nbn:fi-fe19991055                      | urn:nbn (National Bibliography Numbers)       | fi-fe19991055                |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Handle System               | 10.1000/182                                | 10 (Handle naming authority)                  | 1000/182 (Handle local name) |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| Digital object identifier   | 10.1000/182                                | 10.1000 (publisher)                           | 182 (publication)            |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| MAC address                 | 01-23-45-67-89-ab                          | 01-23-45 (organizationally unique identifier) | 67-89-ab (NIC specific)      |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| PCI ID                      | 1234 abcd                                  | 1234 (Vendor ID)                              | abcd (Device ID)             |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+
| USB VID/PID                 | 2341 003f[7]                               | 2341 (Vendor ID)                              | 003f (Product ID)            |
+-----------------------------+--------------------------------------------+-----------------------------------------------+------------------------------+

: Examples of names in a namespace

Delegation

Delegation of responsibilities between parties is important in real-world applications, such as the structure of the World Wide Web. Namespaces allow delegation of identifier assignment to multiple name issuing organisations whilst retaining global uniqueness.[8] A central Registration authority registers the assigned namespace identifiers allocated. Each namespace identifier is allocated to an organisation which is subsequently responsible for the assignment of names in their allocated namespace. This organisation may be a name issuing organisation that assign the names themselves, or another Registration authority which further delegates parts of their namespace to different organisations.

Hierarchy

A naming scheme that allows subdelegation of namespaces to third parties is a HIERARCHICAL NAMESPACE.

A hierarchy is recursive if the syntax for the namespace identifiers is the same for each subdelegation. An example of a recursive hierarchy is the Domain name system.

An example of a non-recursive hierarchy are Uniform resource name representing an Internet Assigned Numbers Authority (IANA) number.

+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+
| Registry                                  | Registrar                           | Example Identifier         | Namespace identifier | Namespace                                                     |
+===========================================+=====================================+============================+======================+===============================================================+
| Uniform resource name (URN)               | Internet Assigned Numbers Authority | urn:isbn:978-3-16-148410-0 | urn                  | Formal URN namespace                                          |
+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+
| Formal URN namespace                      | Internet Assigned Numbers Authority | urn:isbn:978-3-16-148410-0 | ISBN                 | International Standard Book Numbers as Uniform Resource Names |
+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+
| International Article Number (EAN)        | GS1                                 | 978-3-16-148410-0          | 978                  | Bookland                                                      |
+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+
| International Standard Book Number (ISBN) | International ISBN Agency           | 3-16-148410-X              | 3                    | German-speaking countries                                     |
+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+
| German publisher code                     | Agentur für Buchmarktstandards      |                            | 16                   | Mohr Siebeck                                                  |
+-------------------------------------------+-------------------------------------+----------------------------+----------------------+---------------------------------------------------------------+

: Hierarchical namespace breakdown for urn:isbn:978-3-16-148410-0, an identifier for the book The Logic of Scientific Discovery by Karl Popper, 10th edition.

Namespace versus scope

A namespace identifier may provide context (_Scope_ in computer science) to a name, and the terms are sometimes used interchangeably. However, the context of a name may also be provided by other factors, such as the location where it occurs or the syntax of the name.

                   Without a namespace             With a namespace
  ---------------- ------------------------------- --------------------------------
  _Local scope_    Vehicle registration plate      Relative path in a File system
  _Global scope_   Universally unique identifier   Domain Name System

  : Examples of naming systems with local and global scope, and with and without namespaces


In programming languages

For many programming languages, namespace is a context for their identifiers. In an operating system, an example of namespace is a directory. Each name in a directory uniquely identifies one file or subdirectory, but one file may have the same name multiple times.[9]

As a rule, names in a namespace cannot have more than one meaning; that is, different meanings cannot share the same name in the same namespace. A namespace is also called a context, because the same name in different namespaces can have different meanings, each one appropriate for its namespace.

Following are other characteristics of namespaces:

-   Names in the namespace can represent objects as well as concepts, be the namespace a natural or ethnic language, a constructed language, the technical terminology of a profession, a dialect, a sociolect, or an artificial language (e.g., a programming language).
-   In the Java programming language, identifiers that appear in namespaces have a short (local) name and a unique long "qualified" name for use outside the namespace.
-   Some compilers (for languages such as C++) combine namespaces and names for internal use in the compiler in a process called _name mangling_.

As well as its abstract language technical usage as described above, some languages have a specific keyword used for explicit namespace control, amongst other uses. Below is an example of a namespace in C++:

    #include <iostream>

    // This is how one brings a name into the current scope.  In this case, it's
    // bringing them into global scope.
    using std::cout;
    using std::endl;

    namespace box1 {
        int box_side = 4;
    }

    namespace box2 {
        int box_side = 12;
    }

    int main() {
        int box_side = 42;
        cout << box1::box_side << endl;  // Outputs 4.
        cout << box2::box_side << endl;  // Outputs 12.
        cout << box_side << endl;  // Outputs 42.
    }

Computer-science considerations

A namespace in computer science (sometimes also called a NAME SCOPE), is an abstract container or environment created to hold a logical grouping of unique identifiers or symbols (i.e. names). An identifier defined in a namespace is associated only with that namespace. The same identifier can be independently defined in multiple namespaces. That is, an identifier defined in one namespace may or may not have the same meaning as the same identifier defined in another namespace. Languages that support namespaces specify the rules that determine to which namespace an identifier (not its definition) belongs.[10]

This concept can be illustrated with an analogy. Imagine that two companies, X and Y, each assign ID numbers to their employees. X should not have two employees with the same ID number, and likewise for Y; but it is not a problem for the same ID number to be used at both companies. For example, if Bill works for company X and Jane works for company Y, then it is not a problem for each of them to be employee #123. In this analogy, the ID number is the identifier, and the company serves as the namespace. It does not cause problems for the same identifier to identify a different person in each namespace.

In large computer programs or documents it is common to have hundreds or thousands of identifiers. Namespaces (or a similar technique, see Emulating namespaces) provide a mechanism for hiding local identifiers. They provide a means of grouping logically related identifiers into corresponding namespaces, thereby making the system more modular.

Data storage devices and many modern programming languages support namespaces. Storage devices use directories (or folders) as namespaces. This allows two files with the same name to be stored on the device so long as they are stored in different directories. In some programming languages (e.g. C++, Python), the identifiers naming namespaces are themselves associated with an enclosing namespace. Thus, in these languages namespaces can nest, forming a namespace tree. At the root of this tree is the unnamed GLOBAL NAMESPACE.

Use in common languages

C++

In C++, a namespace is defined with a namespace block.[11]

    namespace abc {
        int bar;
    }

Within this block, identifiers can be used exactly as they are declared. Outside of this block, the namespace specifier must be prefixed. For example, outside of namespace abc, bar must be written abc::bar to be accessed. C++ includes another construct that makes this verbosity unnecessary. By adding the line

    using namespace abc;

to a piece of code, the prefix abc:: is no longer needed.

Code that is not explicitly declared within a namespace is considered to be in the global namespace.

Namespace resolution in C++ is hierarchical. This means that within the hypothetical namespace food::soup, the identifier chicken refers to food::soup::chicken. If food::soup::chicken doesn't exist, it then refers to food::chicken. If neither food::soup::chicken nor food::chicken exist, chicken refers to ::chicken, an identifier in the global namespace.

Namespaces in C++ are most often used to avoid naming collisions. Although namespaces are used extensively in recent C++ code, most older code does not use this facility because it did not exist in early versions of the language. For example, the entire C++ Standard Library is defined within namespace std, but before standardization many components were originally in the global namespace. A programmer can insert the using directive to bypass namespace resolution requirements and obtain backwards compatibility with older code that expects all identifiers to be in the global namespace. However the use of the using directive for reasons other than backwards compatibility (e.g., convenience) is considered to be against good code practices.

Java

In Java, the idea of a namespace is embodied in Java packages. All code belongs to a package, although that package need not be explicitly named. Code from other packages is accessed by prefixing the package name before the appropriate identifier, for example class String in package java.lang can be referred to as java.lang.String (this is known as the fully qualified class name). Like C++, Java offers a construct that makes it unnecessary to type the package name (import). However, certain features (such as reflection) require the programmer to use the fully qualified name.

Unlike C++, namespaces in Java are not hierarchical as far as the syntax of the language is concerned. However, packages are named in a hierarchical manner. For example, all packages beginning with java are a part of the Java platform—the package contains classes core to the language, and contains core classes specifically relating to reflection.

In Java (and Ada, C#, and others), namespaces/packages express semantic categories of code. For example, in C#, namespace System contains code provided by the system (the .NET Framework). How specific these categories are and how deep the hierarchies go differ from language to language.

Function and class scopes can be viewed as implicit namespaces that are inextricably linked with visibility, accessibility, and object lifetime.

C#

Namespaces are heavily used in C# language. All .NET Framework classes are organized in namespaces, to be used more clearly and to avoid chaos. Furthermore, custom namespaces are extensively used by programmers, both to organize their work and to avoid naming collisions. When referencing a class, one should specify either its fully qualified name, which means namespace followed by the class name,

    System.Console.WriteLine("Hello World!");
    int i = System.Convert.ToInt32("123");

or add a USING statement. This, eliminates the need to mention the complete name of all classes in that namespace.

    using System;
    .
    .
    .
    Console.WriteLine("Hello World!");
    int i = Convert.ToInt32("123");

In the above examples, SYSTEM is a namespace, and CONSOLE and CONVERT are classes defined within SYSTEM.

Python

In Python, namespaces are defined by the individual modules, and since modules can be contained in hierarchical packages, then name spaces are hierarchical too.[12][13] In general when a module is imported then the names defined in the module are defined via that module's name space, and are accessed in from the calling modules by using the fully qualified name.

    # assume module a defines two functions : func1() and func2() and one class : class1
    import modulea

    modulea.func1()
    modulea.func2()
    a = modulea.class1()

The "from ... import ..." can be used to insert the relevant names directly into the calling module's namespace, and those names can be accessed from the calling module without the qualified name :

    # assume modulea defines two functions : func1() and func2() and one class : class1
    from modulea import func1

    func1()
    func2() # this will fail as an undefined name, as will the full name modulea.func2()
    a = class1() # this will fail as an undefined name, as will the full name modulea.class1()

Since this directly imports names (without qualification) it can overwrite existing names with no warnings.

A special form is "from ... import *", which imports all names defined in the named package directly in the calling modules namespace. Use of this form of import, although supported within the language, is generally discouraged as it pollutes the namespace of the calling module and will cause already defined names to be overwritten in the case of name clashes.

Python also supports "import x as y" as a way of providing an alias or alternative name for use by the calling module:

    import numpy as np
    a = np.arange(1000)

XML namespace

In XML, the XML namespace specification enables the names of elements and attributes in an XML document to be unique, similar to the role of namespaces in programming languages. Using XML namespaces, XML documents may contain element or attribute names from more than one XML vocabulary.

PHP

Namespaces were introduced into PHP from version 5.3 onwards. Naming collision of classes, functions and variables can be avoided. In PHP, a namespace is defined with a namespace block.

    # assume this is a class file defines two functions : foo() and bar()
    # location of the file phpstar/foobar.php
    namespace phpstar;

    class fooBar {
        public function foo() {
            echo 'hello world, from function foo';
        }

        public function bar() {
            echo 'hello world, from function bar';
        }
    }

We can reference a PHP namespace with the following different ways:

    # location of the file index.php
    # Include the file
    include "phpstar/foobar.php";

    # Option 1: directly prefix the class name with the namespace
    $obj_foobar = new \phpstar\fooBar();

    # Option 2: import the namespace
    use phpstar\fooBar;
    $obj_foobar = new fooBar();

    # Option 2a: import & alias the namespace
    use phpstar\fooBar as FB;
    $obj_foobar = new FB();

    # Access the properties and methods with regular way
    $obj_foobar->foo();
    $obj_foobar->bar();

Emulating namespaces

In programming languages lacking language support for namespaces, namespaces can be emulated to some extent by using an identifier naming convention. For example, C libraries such as Libpng often use a fixed prefix for all functions and variables that are part of their exposed interface. Libpng exposes identifiers such as:

png_create_write_struct
png_get_signature
png_read_row
png_set_invalid

This naming convention provides reasonable assurance that the identifiers are unique and can therefore be used in larger programs without naming collisions.[14] Likewise, many packages originally written in Fortran (e.g., BLAS, LAPACK) reserve the first few letters of a function's name to indicate which group it belongs to.

This technique has several drawbacks:

-   It doesn't scale well to nested namespaces; identifiers become excessively long since all uses of the identifiers must be fully namespace-qualified.
-   Individuals or organizations may use dramatically inconsistent naming conventions, potentially introducing unwanted obfuscation.
-   Compound or "query-based" operations on groups of identifiers, based on the namespaces in which they are declared, are rendered unwieldy or unfeasible.
-   In languages with restricted identifier length, the use of prefixes limits the number of characters that can be used to identify what the function does. This is a particular problem for packages originally written in FORTRAN 77, which offered only 6 characters per identifier. For example, the name of the BLAS function DGEMM function indicates that it operates on double-precision numbers ("D") and general matrices ("GE"), and only the last two characters show what it actually does: matrix-matrix multiplication (the "MM").

There are several advantages:

-   No special software tools are required to locate names in source-code files. A simple program like grep suffices.
-   There are no namespace name conflicts.
-   There is no need for name-mangling, and thus no potential incompatibility problems.


See also

-   11-Digit Delivery point ZIP code
-   Binomial nomenclature (genus-species in biology)
-   Chemical nomenclature
-   Dewey Decimal Classification
-   Digital object identifier
-   Domain Name System (DNS) names (Internet addresses)
-   Identity (object-oriented programming)
-   Library of Congress Classification
-   Star catalogues and astronomical naming conventions
-   XML namespace
-   Argument-dependent name lookup


References

Category:Naming conventions

[1]

[2]

[3]

[4]

[5]

[6]

[7] Stephen J. Gowdy. "List of USB ID's". 2013.

[8]

[9]

[10]

[11]

[12]

[13]

[14]