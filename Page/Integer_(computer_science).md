long|Long, Long, Long}} In computer science, an INTEGER is a datum of INTEGRAL DATA TYPE, a data type that represents some range of mathematical integers. Integral data types may be of different sizes and may or may not be allowed to contain negative values. Integers are commonly represented in a computer as a group of binary digits (bits). The size of the grouping varies so the set of integer sizes available varies between different types of computers. Computer hardware, including virtual machines, nearly always provide a way to represent a processor register or memory address as an integer.


Value and representation

The _value_ of an item with an integral type is the mathematical integer that it corresponds to. Integral types may be _unsigned_ (capable of representing only non-negative integers) or _signed_ (capable of representing negative integers as well).[1]

An integer value is typically specified in the source code of a program as a sequence of digits optionally prefixed with + or −. Some programming languages allow other notations, such as hexadecimal (base 16) or octal (base 8). Some programming languages also permit digit group separators.[2]

The _internal representation_ of this datum is the way the value is stored in the computer's memory. Unlike mathematical integers, a typical datum in a computer has some minimal and maximum possible value.

The most common representation of a positive integer is a string of bits, using the binary numeral system. The order of the memory bytes storing the bits varies; see endianness. The _width_ or _precision_ of an integral type is the number of bits in its representation. An integral type with _n_ bits can encode 2^(_n_) numbers; for example an unsigned type typically represents the non-negative values 0 through 2^(_n_)−1. Other encodings of integer values to bit patterns are sometimes used, for example binary-coded decimal or Gray code, or as printed character codes such as ASCII.

There are four well-known ways to represent signed numbers in a binary computing system. The most common is two's complement, which allows a signed integral type with _n_ bits to represent numbers from −2^((_n_−1)) through 2^((_n_−1))−1. Two's complement arithmetic is convenient because there is a perfect one-to-one correspondence between representations and values (in particular, no separate +0 and −0), and because addition, subtraction and multiplication do not need to distinguish between signed and unsigned types. Other possibilities include offset binary, sign-magnitude, and ones' complement.

Some computer languages define integer sizes in a machine-independent way; others have varying definitions depending on the underlying processor word size. Not all language implementations define variables of all integer sizes, and defined sizes may not even be distinct in a particular implementation. An integer in one programming language may be a different size in a different language or on a different processor.


Common integral data types

+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| Bits                                                                                             | Name                                                                | Range (assuming two's complement for signed)                                                                                                                                 | Decimal digits      | Uses                                                                           | Implementations                                               |
+==================================================================================================+=====================================================================+==============================================================================================================================================================================+=====================+================================================================================+===============================================================+
| C/C++                                                                                            | C#                                                                  | Pascal and Delphi                                                                                                                                                            | Java                | SQL                                                                            | FORTRAN                                                       |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 4                                                                                                | nibble, semioctet                                                   | _Signed:_ From −8 to 7, from −(2³) to 2³ − 1                                                                                                                                 | 1                   | Binary-coded decimal, single decimal digit representation                      | n/a                                                           |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 15, which equals 2⁴ − 1                                                    | 2                                                                   |                                                                                                                                                                              |                     |                                                                                |                                                               |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 8                                                                                                | byte, octet                                                         | _Signed:_ From −128 to 127, from −(2⁷) to 2⁷ − 1                                                                                                                             | 3                   | ASCII characters, code units in the UTF-8 character encoding                   | int8_t, char                                                  |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 255, which equals 2⁸ − 1                                                   | 3                                                                   | uint8_t, char                                                                                                                                                                | byte                | Byte                                                                           | n/a                                                           |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 16                                                                                               | halfword, word, short                                               | _Signed:_ From −32,768 to 32,767, from −(2¹⁵) to 2¹⁵ − 1                                                                                                                     | 5                   | UCS-2 characters, code units in the UTF-16 character encoding                  | int16_t, short, int                                           |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 65,535, which equals 2¹⁶ − 1                                               | 5                                                                   | uint16_t, unsigned, unsigned int                                                                                                                                             | ushort              | Word                                                                           | char                                                          |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 32                                                                                               | word, long, doubleword, longword, int                               | _Signed:_ From −2,147,483,648 to 2,147,483,647, from −(2³¹) to 2³¹ − 1                                                                                                       | 10                  | UTF-32 characters, True color with alpha, FourCC, pointers in 32-bit computing | int32_t, int, long                                            |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 4,294,967,295, which equals 2³² − 1                                        | 10                                                                  | uint32_t, unsigned, unsigned int, unsigned long                                                                                                                              | uint                | LongWord; DWord; Cardinal                                                      | n/a                                                           |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 64                                                                                               | word, doubleword, longword, long long, quad, quadword, qword, int64 | _Signed:_ From −9,223,372,036,854,775,808 to 9,223,372,036,854,775,807, from −(2⁶³) to 2⁶³ − 1                                                                               | 19                  | Time (milliseconds since the Unix epoch), pointers in 64-bit computing         | int64_t, long, long long                                      |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 18,446,744,073,709,551,615, which equals 2⁶⁴ − 1                           | 20                                                                  | uint64_t, unsigned long long                                                                                                                                                 | ulong               | UInt64; QWord                                                                  | n/a                                                           |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| 128                                                                                              | octaword, double quadword                                           | _Signed:_ From −170,141,183,460,469,231,731,687,303,715,884,105,728 to 170,141,183,460,469,231,731,687,303,715,884,105,727, from −(2¹²⁷) to 2¹²⁷ − 1                         | 39                  | Complex scientific calculations, IPv6 addresses, GUIDs                         | C: only available as non-standard compiler-specific extension |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ From 0 to 340,282,366,920,938,463,463,374,607,431,768,211,455, which equals 2¹²⁸ − 1 | 39                                                                  | n/a                                                                                                                                                                          |                     |                                                                                |                                                               |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _n_                                                                                              | _n_-bit integer                                                     | _Signed:_ −(2^(_n_−1)) to (2^(_n_−1) − 1)                                                                                                                                    | ⌈(_n_ − 1) log₁₀ 2⌉ | Ada: range -2**(n-1)..2**(n-1)-1                                               |                                                               |
|                                                                                                  | (general case)                                                      |                                                                                                                                                                              |                     |                                                                                |                                                               |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+
| _Unsigned:_ 0 to (2^(_n_) − 1)                                                                   | ⌈_n_ log₁₀ 2⌉                                                       | Ada: range 0..2**n-1, mod 2**n; standard libraries' or third-party arbitrary arithmetic libraries' BigDecimal or Decimal classes in many languages such as Python, C++, etc. |                     |                                                                                |                                                               |
+--------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------+

Different CPUs support different integral data types. Typically, hardware will support both signed and unsigned types, but only a small, fixed set of widths.

The table above lists integral type widths that are supported in hardware by common processors. High level programming languages provide more possibilities. It is common to have a 'double width' integral type that has twice as many bits as the biggest hardware-supported type. Many languages also have _bit-field_ types (a specified number of bits, usually constrained to be less than the maximum hardware-supported width) and _range_ types (that can represent only the integers in a specified range).

Some languages, such as Lisp, Smalltalk, REXX, Haskell, Python, and Perl 6 support _arbitrary precision_ integers (also known as _infinite precision integers_ or _bignums_). Other languages that do not support this concept as a top-level construct may have libraries available to represent very large numbers using arrays of smaller variables, such as Java's BigInteger class or Perl 5's "bigint" package.[3] These use as much of the computer's memory as is necessary to store the numbers; however, a computer has only a finite amount of storage, so they too can only represent a finite subset of the mathematical integers. These schemes support very large numbers, for example one kilobyte of memory could be used to store numbers up to 2466 decimal digits long.

A Boolean or Flag type is a type that can represent only two values: 0 and 1, usually identified with _false_ and _true_ respectively. This type can be stored in memory using a single bit, but is often given a full byte for convenience of addressing and speed of access.

A four-bit quantity is known as a _nibble_ (when eating, being smaller than a _bite_) or _nybble_ (being a pun on the form of the word _byte_). One nibble corresponds to one digit in hexadecimal and holds one digit or a sign code in binary-coded decimal.

Bytes and octets

The term _byte_ initially meant 'the smallest addressable unit of memory'. In the past, 5-, 6-, 7-, 8-, and 9-bit bytes have all been used. There have also been computers that could address individual bits ('bit-addressed machine'), or that could only address 16- or 32-bit quantities ('word-addressed machine'). The term _byte_ was usually not used at all in connection with bit- and word-addressed machines.

The term _octet_ always refers to an 8-bit quantity. It is mostly used in the field of computer networking, where computers with different byte widths might have to communicate.

In modern usage _byte_ almost invariably means eight bits, since all other sizes have fallen into disuse; thus _byte_ has come to be synonymous with _octet_.

Words

The term 'word' is used for a small group of bits that are handled simultaneously by processors of a particular architecture. The size of a word is thus CPU-specific. Many different word sizes have been used, including 6-, 8-, 12-, 16-, 18-, 24-, 32-, 36-, 39-, 40-, 48-, 60-, and 64-bit. Since it is architectural, the size of a _word_ is usually set by the first CPU in a family, rather than the characteristics of a later compatible CPU. The meanings of terms derived from _word_, such as _longword_, _doubleword_, _quadword_, and _halfword_, also vary with the CPU and OS.[4]

Practically all new desktop processors are capable of using 64-bit words, though embedded processors with 8- and 16-bit word size are still common. The 36-bit word length was common in the early days of computers.

One important cause of non-portability of software is the incorrect assumption that all computers have the same word size as the computer used by the programmer. For example, if a programmer using the C language incorrectly declares as int a variable that will be used to store values greater than 2¹⁵−1, the program will fail on computers with 16-bit integers. That variable should have been declared as long, which has at least 32 bits on any computer. Programmers may also incorrectly assume that a pointer can be converted to an integer without loss of information, which may work on (some) 32-bit computers, but fail on 64-bit computers with 64-bit pointers and 32-bit integers.

Short integer

A _short integer_ can represent a whole number that may take less storage, while having a smaller range, compared with a standard integer on the same machine.

In C, it is denoted by short. It is required to be at least 16 bits, and is often smaller than a standard integer, but this is not required.[5][6] A conforming program can assume that it can safely store values between −(2¹⁵−1)[7] and 2¹⁵−1,[8] but it may not assume that the range isn't larger. In Java, a short is _always_ a 16-bit integer. In the Windows API, the datatype SHORT is defined as a 16-bit signed integer on all machines.[9]

Common short integer sizes

+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+
| Programming language | Platforms              | Data type name | Signedness | Storage in bytes | Minimum value | Maximum value |
+======================+========================+================+============+==================+===============+===============+
| C and C++            | common implementations | short          | signed     | 2                | −32,767       | +32,767       |
+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+
| unsigned short       | unsigned               | 2              | 0          | 65,535           |               |               |
+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+
| C#                   | .NET CLR/CTS           | short          | signed     | 2                | −32,768       | +32,767       |
+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+
| ushort               | unsigned               | 2              | 0          | 65,535           |               |               |
+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+
| Java                 | Java platform          | short          | signed     | 2                | −32,768       | +32,767       |
+----------------------+------------------------+----------------+------------+------------------+---------------+---------------+

Long integer

A _long integer_ can represent a whole integer whose range is greater than or equal to that of a standard integer on the same machine.

In C, it is denoted by long. It is required to be at least 32 bits, and may or may not be larger than a standard integer. A conforming program can assume that it can safely store values between −(2³¹−1)[10] and 2³¹−1,[11] but it may not assume that the range isn't larger.

Common long integer sizes

+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| Programming language | Approval Type                  | Platforms                        | Data type name | Storage in bytes        | Signed range                                                                                                                               | Unsigned range                              |
+======================+================================+==================================+================+=========================+============================================================================================================================================+=============================================+
| C ISO/ANSI C99       | International Standard         | Unix,16/32-bit systems[12]       | long^(†)       | 4                       | −2,147,483,647 to +2,147,483,647                                                                                                           | 0 to 4,294,967,295                          |
|                      |                                | Windows,16/32/64-bit systems[13] |                | (minimum requirement 4) |                                                                                                                                            | (minimum requirement)                       |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| C ISO/ANSI C99       | International Standard         | Unix,                            | long^(†)       | 8                       | −9,223,372,036,854,775,807 to +9,223,372,036,854,775,807                                                                                   | 0 to 18,446,744,073,709,551,615             |
|                      |                                | 64-bit systems[14][15]           |                | (minimum requirement 4) |                                                                                                                                            |                                             |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| C++ ISO/ANSI         | International Standard         | Unix, Windows,                   | long^(†)       | 4 {{cite web            | title=Fundamental types in C++|url=http://cppreference.com/wiki/language/types%7Cpublisher=cppreference.com%7Caccessdate=5 December 2010}} | −2,147,483,648 to +2,147,483,647            |
|                      |                                | 16/32-bit system                 |                |                         | (minimum requirement 4)                                                                                                                    |                                             |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| C++/CLI              | International Standard         | Unix, Windows,                   | long^(†)       | 4 [16]                  | −2,147,483,648 to +2,147,483,647                                                                                                           | 0 to 4,294,967,295                          |
|                      | ECMA-372                       | 16/32-bit systems                |                | (minimum requirement 4) |                                                                                                                                            | (minimum requirement)                       |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| VB                   | Company Standard               | Windows                          | Long           | 4 [17]                  | −2,147,483,648 to +2,147,483,647                                                                                                           | N/A                                         |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| VBA                  | Company Standard               | Windows, Mac OS X                | Long           | 4 [18]                  | −2,147,483,648 to +2,147,483,647                                                                                                           | N/A                                         |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| SQL Server           | Company Standard               | Windows                          | BigInt         | 8                       | −9,223,372,036,854,775,808 to +9,223,372,036,854,775,807                                                                                   | 0 to 18,446,744,073,709,551,615             |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| C#/ VB.NET           | ECMA International Standard    | Microsoft .NET                   | long or Int64  | 8                       | −9,223,372,036,854,775,808 to +9,223,372,036,854,775,807                                                                                   | 0 to 18,446,744,073,709,551,615             |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| Java                 | International/Company Standard | Java platform                    | long           | 8                       | −9,223,372,036,854,775,808 to +9,223,372,036,854,775,807                                                                                   | N/A                                         |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+
| Pascal               | ?                              | Windows, UNIX                    | int64          | 8                       | −9,223,372,036,854,775,808 to +9,223,372,036,854,775,807                                                                                   | 0 to 18,446,744,073,709,551,615(Qword type) |
+----------------------+--------------------------------+----------------------------------+----------------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------+

^(†) the terms long and int are equivalent[19]

Long long

In the C99 version of the C programming language and the C++11 version of C++, a long long type is supported that has double the minimum capacity of the standard long. This type is not supported by compilers that require C code to be compliant with the previous C++ standard, C++03, because the long long type did not exist in C++03. For an ANSI/ISO compliant compiler, the minimum requirements for the specified ranges, that is, −(2⁶³−1)[20] to 2⁶³−1 for signed and 0 to 2⁶⁴−1 for unsigned,[21] must be fulfilled; however, extending this range is permitted.[22][23] This can be an issue when exchanging code and data between platforms, or doing direct hardware access. Thus, there are several sets of headers providing platform independent exact width types. The C standard library provides _stdint.h_; this was introduced in C99 and C++11.


See also

-   Signed number representations
-   Binary-coded decimal, a representation of integers commonly used in mainframe financial applications and in databases
-   Integer overflow
-   C data types


Notes


References

Category:Data types Category:Computer arithmetic Category:Primitive types

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

[17] VB 6.0 help file

[18]

[19]

[20]

[21]

[22]

[23]