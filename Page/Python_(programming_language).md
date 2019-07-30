Python}}

PYTHON is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[1]

Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. Python is often described as a "batteries included" language due to its comprehensive standard library.[2]

Python was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3. Due to concern about the amount of code written for Python 2, support for Python 2.7 (the last release in the 2.x series) was extended to 2020. Language developer Guido van Rossum shouldered sole responsibility for the project until July 2018 but now shares his leadership as a member of a five-person steering council.[3][4][5]

Python interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, an open source[6] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.


History

at OSCON 2006.]]

Python was conceived in the late 1980s[7] by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to the ABC language (itself inspired by SETL),[8] capable of exception handling and interfacing with the Amoeba operating system.[9] Its implementation began in December 1989.[10] Van Rossum continued as Python's lead developer until July 12, 2018, when he announced his "permanent vacation" from his responsibilities as Python's _Benevolent Dictator For Life_, a title the Python community bestowed upon him to reflect his long-term commitment as the project's chief decision-maker.[11] In January, 2019, active Python core developers elected Brett Cannon, Nick Coghlan, Barry Warsaw, Carol Willing and Van Rossum to a five-member "Steering Council" to lead the project.[12]

Python 2.0 was released on 16 October 2000 with many major new features, including a cycle-detecting garbage collector and support for Unicode.[13]

Python 3.0 was released on 3 December 2008. It was a major revision of the language that is not completely backward-compatible.[14] Many of its major features were backported to Python 2.6.x[15] and 2.7.x version series. Releases of Python 3 include the 2to3 utility, which automates (at least partially) the translation of Python 2 code to Python 3.[16]

Python 2.7's end-of-life date was initially set at 2015 then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3.[17][18] In January 2017, Google announced work on a Python 2.7 to Go transcompiler to improve performance under concurrent workloads.[19]


Features and philosophy

Python is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of its features support functional programming and aspect-oriented programming (including by metaprogramming[20] and metaobjects (magic methods)).[21] Many other paradigms are supported via extensions, including design by contract[22][23] and logic programming.[24]

Python uses dynamic typing, and a combination of reference counting and a cycle-detecting garbage collector for memory management. It also features dynamic name resolution (late binding), which binds method and variable names during program execution.

Python's design offers some support for functional programming in the Lisp tradition. It has filter, map, and reduce functions; list comprehensions, dictionaries, sets and generator expressions.[25] The standard library has two modules (itertools and functools) that implement functional tools borrowed from Haskell and Standard ML.[26]

The language's core philosophy is summarized in the document _The Zen of Python_ (_PEP 20_), which includes aphorisms such as:[27]

-   Beautiful is better than ugly
-   Explicit is better than implicit
-   Simple is better than complex
-   Complex is better than complicated
-   Readability counts

Rather than having all of its functionality built into its core, Python was designed to be highly extensible. This compact modularity has made it particularly popular as a means of adding programmable interfaces to existing applications. Van Rossum's vision of a small core language with a large standard library and easily extensible interpreter stemmed from his frustrations with ABC, which espoused the opposite approach.[28]

Python strives for a simpler, less-cluttered syntax and grammar while giving developers a choice in their coding methodology. In contrast to Perl's "there is more than one way to do it" motto, Python embraces a "there should be one—and preferably only one—obvious way to do it" design philosophy.[29] Alex Martelli, a Fellow at the Python Software Foundation and Python book author, writes that "To describe something as 'clever' is _not_ considered a compliment in the Python culture."[30]

Python's developers strive to avoid premature optimization, and reject patches to non-critical parts of the CPython reference implementation that would offer marginal increases in speed at the cost of clarity.[31] When speed is important, a Python programmer can move time-critical functions to extension modules written in languages such as C, or use PyPy, a just-in-time compiler. Cython is also available, which translates a Python script into C and makes direct C-level API calls into the Python interpreter.

An important goal of Python's developers is keeping it fun to use. This is reflected in the language's name—a tribute to the British comedy group Monty Python[32]—and in occasionally playful approaches to tutorials and reference materials, such as examples that refer to spam and eggs (from a famous Monty Python sketch) instead of the standard foo and bar.[33][34]

A common neologism in the Python community is _pythonic_, which can have a wide range of meanings related to program style. To say that code is pythonic is to say that it uses Python idioms well, that it is natural or shows fluency in the language, that it conforms with Python's minimalist philosophy and emphasis on readability. In contrast, code that is difficult to understand or reads like a rough transcription from another programming language is called _unpythonic_.

Users and admirers of Python, especially those considered knowledgeable or experienced, are often referred to as _Pythonists_, _Pythonistas_, and _Pythoneers_.[35][36]


Syntax and semantics

Python is meant to be an easily readable language. Its formatting is visually uncluttered, and it often uses English keywords where other languages use punctuation. Unlike many other languages, it does not use curly brackets to delimit blocks, and semicolons after statements are optional. It has fewer syntactic exceptions and special cases than C or Pascal.[37]

Indentation

Python uses whitespace indentation, rather than curly brackets or keywords, to delimit blocks. An increase in indentation comes after certain statements; a decrease in indentation signifies the end of the current block.[38] Thus, the program's visual structure accurately represents the program's semantic structure.[39] This feature is also sometimes termed the off-side rule.

Statements and control flow

Python's statements include (among others):

-   The assignment statement (token '=', the equals sign). This operates differently than in traditional imperative programming languages, and this fundamental mechanism (including the nature of Python's version of _variables_) illuminates many other features of the language. Assignment in C, e.g., x = 2, translates to "typed variable name x receives a copy of numeric value 2". The (right-hand) value is copied into an allocated storage location for which the (left-hand) variable name is the symbolic address. The memory allocated to the variable is large enough (potentially quite large) for the declared type. In the simplest case of Python assignment, using the same example, x = 2, translates to "(generic) name x receives a reference to a separate, dynamically allocated object of numeric (int) type of value 2." This is termed _binding_ the name to the object. Since the name's storage location doesn't _contain_ the indicated value, it is improper to call it a _variable_. Names may be subsequently rebound at any time to objects of greatly varying types, including strings, procedures, complex objects with data and methods, etc. Successive assignments of a common value to multiple names, e.g., x = 2; y = 2; z = 2 result in allocating storage to (at most) three names and one numeric object, to which all three names are bound. Since a name is a generic reference holder it is unreasonable to associate a fixed data type with it. However at a given time a name will be bound to _some_ object, which WILL have a type; thus there is dynamic typing.
-   The if statement, which conditionally executes a block of code, along with else and elif (a contraction of else-if).
-   The for statement, which iterates over an iterable object, capturing each element to a local variable for use by the attached block.
-   The while statement, which executes a block of code as long as its condition is true.
-   The try statement, which allows exceptions raised in its attached code block to be caught and handled by except clauses; it also ensures that clean-up code in a finally block will always be run regardless of how the block exits.
-   The raise statement, used to raise a specified exception or re-raise a caught exception.
-   The class statement, which executes a block of code and attaches its local namespace to a class, for use in object-oriented programming.
-   The def statement, which defines a function or method.
-   The with statement, from Python 2.5 released on September 2006,[40] which encloses a code block within a context manager (for example, acquiring a lock before the block of code is run and releasing the lock afterwards, or opening a file and then closing it), allowing Resource Acquisition Is Initialization (RAII)-like behavior and replaces a common try/finally idiom.[41]
-   The pass statement, which serves as a NOP. It is syntactically needed to create an empty code block.
-   The assert statement, used during debugging to check for conditions that ought to apply.
-   The yield statement, which returns a value from a generator function. From Python 2.5, yield is also an operator. This form is used to implement coroutines.
-   The import statement, which is used to import modules whose functions or variables can be used in the current program. There are three ways of using import: import  [as ] or from  import * or from  import <definition 1> [as <alias 1>], <definition 2> [as <alias 2>], ....
-   The print statement was changed to the print() function in Python 3.[42]

Python does not support tail call optimization or first-class continuations, and, according to Guido van Rossum, it never will.[43][44] However, better support for coroutine-like functionality is provided in 2.5, by extending Python's generators.[45] Before 2.5, generators were lazy iterators; information was passed unidirectionally out of the generator. From Python 2.5, it is possible to pass information back into a generator function, and from Python 3.3, the information can be passed through multiple stack levels.[46]

Expressions

Some Python expressions are similar to languages such as C and Java, while some are not:

-   Addition, subtraction, and multiplication are the same, but the behavior of division differs. There are two types of divisions in Python. They are floor division and integer division.[47] Python also added the ** operator for exponentiation.
-   From Python 3.5, the new @ infix operator was introduced. It is intended to be used by libraries such as NumPy for matrix multiplication.[48][49]
-   In Python, == compares by value, versus Java, which compares numerics by value[50] and objects by reference.[51] (Value comparisons in Java on objects can be performed with the equals() method.) Python's is operator may be used to compare object identities (comparison by reference). In Python, comparisons may be chained, for example a <= b <= c.
-   Python uses the words and, or, not for its boolean operators rather than the symbolic &&, ||, ! used in Java and C.
-   Python has a type of expression termed a _list comprehension_. Python 2.4 extended list comprehensions into a more general expression termed a _generator expression_.[52]
-   Anonymous functions are implemented using lambda expressions; however, these are limited in that the body can only be one expression.
-   Conditional expressions in Python are written as x if c else y[53] (different in order of operands from the c ? x : y operator common to many other languages).
-   Python makes a distinction between lists and tuples. Lists are written as [1, 2, 3], are mutable, and cannot be used as the keys of dictionaries (dictionary keys must be immutable in Python). Tuples are written as (1, 2, 3), are immutable and thus can be used as the keys of dictionaries, provided all elements of the tuple are immutable. The + operator can be used to concatenate two tuples, which does not directly modify their contents, but rather produces a new tuple containing the elements of both provided tuples. Thus, given the variable t initially equal to (1, 2, 3), executing t = t + (4, 5) first evaluates t + (4, 5), which yields (1, 2, 3, 4, 5), which is then assigned back to t, thereby effectively "modifying the contents" of t, while conforming to the immutable nature of tuple objects. Parentheses are optional for tuples in unambiguous contexts.[54]
-   Python features _sequence unpacking_ where multiple expressions, each evaluating to anything that can be assigned to (a variable, a writable property, etc.), are associated in the identical manner to that forming tuple literals and, as a whole, are put on the left hand side of the equal sign in an assignment statement. The statement expects an _iterable_ object on the right hand side of the equal sign that produces the same number of values as the provided writable expressions when iterated through, and will iterate through it, assigning each of the produced values to the corresponding expression on the left.[55]
-   Python has a "string format" operator %. This functions analogous to printf format strings in C, e.g. "spam=%s eggs=%d" % ("blah", 2) evaluates to "spam=blah eggs=2". In Python 3 and 2.6+, this was supplemented by the format() method of the str class, e.g. "spam={0} eggs={1}".format("blah", 2). Python 3.6 added "f-strings": blah = "blah"; eggs = 2; f'spam={blah} eggs={eggs}'.[56]
-   Python has various kinds of string literals:
    -   Strings delimited by single or double quote marks. Unlike in Unix shells, Perl and Perl-influenced languages, single quote marks and double quote marks function identically. Both kinds of string use the backslash (\) as an escape character. String interpolation became available in Python 3.6 as "formatted string literals".[57]
    -   Triple-quoted strings, which begin and end with a series of three single or double quote marks. They may span multiple lines and function like here documents in shells, Perl and Ruby.
    -   Raw string varieties, denoted by prefixing the string literal with an r. Escape sequences are not interpreted; hence raw strings are useful where literal backslashes are common, such as regular expressions and Windows-style paths. Compare "@-quoting" in C#.
-   Python has array index and array slicing expressions on lists, denoted as a[key], a[start:stop] or a[start:stop:step]. Indexes are zero-based, and negative indexes are relative to the end. Slices take elements from the _start_ index up to, but not including, the _stop_ index. The third slice parameter, called _step_ or _stride_, allows elements to be skipped and reversed. Slice indexes may be omitted, for example a[:] returns a copy of the entire list. Each element of a slice is a shallow copy.

In Python, a distinction between expressions and statements is rigidly enforced, in contrast to languages such as Common Lisp, Scheme, or Ruby. This leads to duplicating some functionality. For example:

-   List comprehensions vs. for-loops
-   Conditional expressions vs. if blocks
-   The eval() vs. exec() built-in functions (in Python 2, exec is a statement); the former is for expressions, the latter is for statements.

Statements cannot be a part of an expression, so list and other comprehensions or lambda expressions, all being expressions, cannot contain statements. A particular case of this is that an assignment statement such as a = 1 cannot form part of the conditional expression of a conditional statement. This has the advantage of avoiding a classic C error of mistaking an assignment operator = for an equality operator == in conditions: if (c = 1) { ... } is syntactically valid (but probably unintended) C code but if c = 1: ... causes a syntax error in Python.

Methods

Methods on objects are functions attached to the object's class; the syntax instance.method(argument) is, for normal methods and functions, syntactic sugar for Class.method(instance, argument). Python methods have an explicit self parameter to access instance data, in contrast to the implicit self (or this) in some other object-oriented programming languages (e.g., C++, Java, Objective-C, or Ruby).[58]

Typing

Python uses duck typing and has typed objects but untyped variable names. Type constraints are not checked at compile time; rather, operations on an object may fail, signifying that the given object is not of a suitable type. Despite being dynamically typed, Python is strongly typed, forbidding operations that are not well-defined (for example, adding a number to a string) rather than silently attempting to make sense of them.

Python allows programmers to define their own types using classes, which are most often used for object-oriented programming. New instances of classes are constructed by calling the class (for example, SpamClass() or EggsClass()), and the classes are instances of the metaclass type (itself an instance of itself), allowing metaprogramming and reflection.

Before version 3.0, Python had two kinds of classes: _old-style_ and _new-style_.[59] The syntax of both styles is the same, the difference being whether the class object is inherited from, directly or indirectly (all new-style classes inherit from object and are instances of type). In versions of Python 2 from Python 2.2 onwards, both kinds of classes can be used. Old-style classes were eliminated in Python 3.0.

The long term plan is to support gradual typing[60] and from Python 3.5, the syntax of the language allows specifying static types but they are not checked in the default implementation, CPython. An experimental optional static type checker named _mypy_ supports compile-time type checking.[61]

+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| Type               | mutable   | Description                                                                                                                       | Syntax example                   |
+====================+===========+===================================================================================================================================+==================================+
| bool               | immutable | Boolean value                                                                                                                     | True                             |
|                    |           |                                                                                                                                   | False                            |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| bytearray          | mutable   | Sequence of bytes                                                                                                                 | bytearray(b'Some ASCII')         |
|                    |           |                                                                                                                                   | bytearray(b"Some ASCII")         |
|                    |           |                                                                                                                                   | bytearray([119, 105, 107, 105])  |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| bytes              | immutable | Sequence of bytes                                                                                                                 | b'Some ASCII'                    |
|                    |           |                                                                                                                                   | b"Some ASCII"                    |
|                    |           |                                                                                                                                   | bytes([119, 105, 107, 105])      |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| complex            | immutable | Complex number with real and imaginary parts                                                                                      | 3+2.7j                           |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| dict               | mutable   | Associative array (or dictionary) of key and value pairs; can contain mixed types (keys and values), keys must be a hashable type | {'key1': 1.0, 3: False}          |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| ellipsis           | immutable | An ellipsis placeholder to be used as an index in NumPy arrays                                                                    | ...                              |
|                    |           |                                                                                                                                   | Ellipsis                         |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| float              | immutable | Floating point number, system-defined precision                                                                                   | 3.1415927                        |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| frozenset          | immutable | Unordered set, contains no duplicates; can contain mixed types, if hashable                                                       | frozenset([4.0, 'string', True]) |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| int                | immutable | Integer of unlimited magnitude[62]                                                                                                | 42                               |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| list               | mutable   | List, can contain mixed types                                                                                                     | [4.0, 'string', True]            |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| NoneType           | immutable | An object representing the absence of a value.                                                                                    | None                             |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| NotImplementedType | immutable | A placeholder that can be returned from overloaded operators to indicate unsupported operand types.                               | NotImplemented                   |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| set                | mutable   | Unordered set, contains no duplicates; can contain mixed types, if hashable                                                       | {4.0, 'string', True}            |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| str                | immutable | A character string: sequence of Unicode codepoints                                                                                | 'Wikipedia'                      |
|                    |           |                                                                                                                                   | "Wikipedia"                      |
|                    |           |                                                                                                                                   | """Spanning                      |
|                    |           |                                                                                                                                   | multiple                         |
|                    |           |                                                                                                                                   | lines"""                         |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| tuple              | immutable | Can contain mixed types                                                                                                           | (4.0, 'string', True)            |
+--------------------+-----------+-----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+

: Summary of Python 3's built-in types

Mathematics

Python has the usual C language arithmetic operators (+, -, *, /, %). It also has ** for exponentiation, e.g. 5**3 == 125 and 9**0.5 == 3.0, and a new matrix multiply @ operator is included in version 3.5.[63] Additionally, it has a unary operator (~), which essentially inverts all the bits of its one argument. For integers, this means ~x=-x-1.[64] Other operators include bitwise shift operators x << y, which shifts x to the left y places, the same as x*(2**y), and x >> y, which shifts x to the right y places, the same as x//(2**y).[65]

The behavior of division has changed significantly over time so that division between integers produces accurate floating point results:[66]

-   Python 2.1 and earlier use the C division behavior. The / operator is integer division if both operands are integers, and floating-point division otherwise. Integer division rounds towards 0, e.g. and
-   Python 2.2 changes integer division to round towards negative infinity, e.g. 7/3 == 2 and -7/3 == -3. The floor division // operator is introduced. So 7//3 == 2, -7//3 == -3, 7.5//3 == 2.0 and -7.5//3 == -3.0. Adding from __future__ import division causes a module to use Python 3.0 rules for division (see next).
-   Python 3.0 changes / to always be floating-point division, e.g. . In Python terms, the pre-3.0 / is _classic division_, the version-3.0 / is _true division_, and // is _floor division_.

Rounding towards negative infinity, though different from most languages, adds consistency. For instance, it means that the equation (a + b)//b == a//b + 1 is always true. It also means that the equation b*(a//b) + a%b == a is valid for both positive and negative values of a. However, maintaining the validity of this equation means that while the result of a%b is, as expected, in the half-open interval [0, _b_), where b is a positive integer, it has to lie in the interval (_b_, 0] when b is negative.[67]

Python provides a round function for rounding a float to the nearest integer. For tie-breaking, versions before 3 use round-away-from-zero: round(0.5) is 1.0, round(-0.5) is −1.0.[68] Python 3 uses round to even: round(1.5) is 2, round(2.5) is 2.[69]

Python allows boolean expressions with multiple equality relations in a manner that is consistent with general use in mathematics. For example, the expression a < b < c tests whether a is less than b and b is less than c.[70] C-derived languages interpret this expression differently: in C, the expression would first evaluate a < b, resulting in 0 or 1, and that result would then be compared with c.[71]

Python has extensive built-in support for arbitrary precision arithmetic. Integers are transparently switched from the machine-supported maximum fixed-precision (usually 32 or 64 bits), belonging to the python type int, to arbitrary precision, belonging to the Python type long, where needed. The latter have an "L" suffix in their textual representation.[72] (In Python 3, the distinction between the int and long types was eliminated; this behavior is now entirely contained by the int class.) The Decimal type/class in module decimal (since version 2.4) provides decimal floating point numbers to arbitrary precision and several rounding modes.[73] The Fraction type in module fractions (since version 2.6) provides arbitrary precision for rational numbers.[74]

Due to Python's extensive mathematics library, and the third-party library NumPy that further extends the native capabilities, it is frequently used as a scientific scripting language to aid in problems such as numerical data processing and manipulation.[75][76]


Libraries

Python's large standard library, commonly cited as one of its greatest strengths,[77] provides tools suited to many tasks. For Internet-facing applications, many standard formats and protocols such as MIME and HTTP are supported. It includes modules for creating graphical user interfaces, connecting to relational databases, generating pseudorandom numbers, arithmetic with arbitrary precision decimals,[78] manipulating regular expressions, and unit testing.

Some parts of the standard library are covered by specifications (for example, the Web Server Gateway Interface (WSGI) implementation wsgiref follows PEP 333[79]), but most modules are not. They are specified by their code, internal documentation, and test suites (if supplied). However, because most of the standard library is cross-platform Python code, only a few modules need altering or rewriting for variant implementations.

the Python Package Index (PyPI), the official repository for third-party Python software, contains over 130,000[80] packages with a wide range of functionality, including:

-   Graphical user interfaces
-   Web frameworks
-   Multimedia
-   Databases
-   Networking
-   Test frameworks
-   Automation
-   Web scraping[81]
-   Documentation
-   System administration
-   Scientific computing
-   Text processing
-   Image processing


Development environments

Most Python implementations (including CPython) include a read–eval–print loop (REPL), permitting them to function as a command line interpreter for which the user enters statements sequentially and receives results immediately.

Other shells, including IDLE and IPython, add further abilities such as auto-completion, session state retention and syntax highlighting.

As well as standard desktop integrated development environments, there are Web browser-based IDEs; SageMath (intended for developing science and math-related Python programs); PythonAnywhere, a browser-based IDE and hosting environment; and Canopy IDE, a commercial Python IDE emphasizing scientific computing.[82]


Implementations

Reference implementation

CPython is the reference implementation of Python. It is written in C, meeting the C89 standard with several select C99 features.[83] It compiles Python programs into an intermediate bytecode[84] which is then executed by its virtual machine.[85] CPython is distributed with a large standard library written in a mixture of C and native Python. It is available for many platforms, including Windows and most modern Unix-like systems. Platform portability was one of its earliest priorities.[86]

Other implementations

PyPy is a fast, compliant[87] interpreter of Python 2.7 and 3.5. Its just-in-time compiler brings a significant speed improvement over CPython.[88]

Stackless Python is a significant fork of CPython that implements microthreads; it does not use the C memory stack, thus allowing massively concurrent programs. PyPy also has a stackless version.[89]

MicroPython and CircuitPython are Python 3 variants optimised for microcontrollers. This includes Lego Mindstorms EV3.[90]

Unsupported implementations

Other just-in-time Python compilers have been developed, but are now unsupported:

-   Google began a project named Unladen Swallow in 2009 with the aim of speeding up the Python interpreter fivefold by using the LLVM, and of improving its multithreading ability to scale to thousands of cores.[91]
-   Psyco is a just-in-time specialising compiler that integrates with CPython and transforms bytecode to machine code at runtime. The emitted code is specialised for certain data types and is faster than standard Python code.

In 2005, Nokia released a Python interpreter for the Series 60 mobile phones named PyS60. It includes many of the modules from the CPython implementations and some additional modules to integrate with the Symbian operating system. The project has been kept up-to-date to run on all variants of the S60 platform, and several third-party modules are available. The Nokia N900 also supports Python with GTK widget libraries, enabling programs to be written and run on the target device.[92]

Cross-compilers to other languages

There are several compilers to high-level object languages, with either unrestricted Python, a restricted subset of Python, or a language similar to Python as the source language:

-   Jython compiles into Java byte code, which can then be executed by every Java virtual machine implementation. This also enables the use of Java class library functions from the Python program.
-   IronPython follows a similar approach in order to run Python programs on the .NET Common Language Runtime.
-   The RPython language can be compiled to C, Java bytecode, or Common Intermediate Language, and is used to build the PyPy interpreter of Python.
-   Pyjs compiles Python to JavaScript.
-   Cython compiles Python to C and C++.
-   Numba uses LLVM to compile Python to machine code.
-   Pythran compiles Python to C++.
-   Somewhat dated Pyrex (latest release in 2010) and Shed Skin (latest release in 2013) compile to C and C++ respectively.
-   Google's Grumpy compiles Python to Go.
-   MyHDL compiles Python to VHDL.
-   Nuitka compiles Python into C++.[93]

Performance

A performance comparison of various Python implementations on a non-numerical (combinatorial) workload was presented at EuroSciPy '13.[94]


Development

Python's development is conducted largely through the _Python Enhancement Proposal_ (PEP) process, the primary mechanism for proposing major new features, collecting community input on issues and documenting Python design decisions.[95] Python coding style is covered in PEP 8.[96] Outstanding PEPs are reviewed and commented on by the Python community and the steering council.[97]

Enhancement of the language corresponds with development of the CPython reference implementation. The mailing list python-dev is the primary forum for the language's development. Specific issues are discussed in the Roundup bug tracker maintained at python.org.[98] Development originally took place on a self-hosted source-code repository running Mercurial, until Python moved to GitHub in January 2017.[99]

CPython's public releases come in three types, distinguished by which part of the version number is incremented:

-   Backward-incompatible versions, where code is expected to break and need to be manually ported. The first part of the version number is incremented. These releases happen infrequently—for example, version 3.0 was released 8 years after 2.0.
-   Major or "feature" releases, about every 18 months, are largely compatible but introduce new features. The second part of the version number is incremented. Each major version is supported by bugfixes for several years after its release.[100]
-   Bugfix releases, which introduce no new features, occur about every 3 months and are made when a sufficient number of bugs have been fixed upstream since the last release. Security vulnerabilities are also patched in these releases. The third and final part of the version number is incremented.[101]

Many alpha, beta, and release-candidates are also released as previews and for testing before final releases. Although there is a rough schedule for each release, they are often delayed if the code is not ready. Python's development team monitors the state of the code by running the large unit test suite during development, and using the BuildBot continuous integration system.[102]

The community of Python developers has also contributed over 86,000[103] software modules () to the Python Package Index (PyPI), the official repository of third-party Python libraries.

The major academic conference on Python is PyCon. There are also special Python mentoring programmes, such as Pyladies.


Naming

Python's name is derived from the British comedy group Monty Python, whom Python creator Guido van Rossum enjoyed while developing the language. Monty Python references appear frequently in Python code and culture;[104] for example, the metasyntactic variables often used in Python literature are _spam_ and _eggs_ instead of the traditional _foo_ and _bar_.[105][106] The official Python documentation also contains various references to Monty Python routines.[107][108]

The prefix _Py-_ is used to show that something is related to Python. Examples of the use of this prefix in names of Python applications or libraries include Pygame, a binding of SDL to Python (commonly used to create games); PyQt and PyGTK, which bind Qt and GTK to Python respectively; and PyPy, a Python implementation originally written in Python.


API documentation generators

Python API documentation generators include:

-   Sphinx
-   Epydoc
-   HeaderDoc
-   pydoc


Uses

Since 2003, Python has consistently ranked in the top ten most popular programming languages in the TIOBE Programming Community Index where, , it is the third most popular language (behind Java, and C).[109] It was selected Programming Language of the Year in 2007, 2010, and 2018.[110]

An empirical study found that scripting languages, such as Python, are more productive than conventional languages, such as C and Java, for programming problems involving string manipulation and search in a dictionary, and determined that memory consumption was often "better than Java and not much worse than C or C++".[111]

Large organizations that use Python include Wikipedia, Google,[112] Yahoo!,[113] CERN,[114] NASA,[115] Facebook,[116] Amazon, Instagram,[117] Spotify[118] and some smaller entities like ILM[119] and ITA.[120] The social news networking site Reddit is written entirely in Python.[121]

Python can serve as a scripting language for web applications, e.g., via mod_wsgi for the Apache web server.[122] With Web Server Gateway Interface, a standard API has evolved to facilitate these applications. Web frameworks like Django, Pylons, Pyramid, TurboGears, web2py, Tornado, Flask, Bottle and Zope support developers in the design and maintenance of complex applications. Pyjs and IronPython can be used to develop the client-side of Ajax-based applications. SQLAlchemy can be used as data mapper to a relational database. Twisted is a framework to program communications between computers, and is used (for example) by Dropbox.

Libraries such as NumPy, SciPy and Matplotlib allow the effective use of Python in scientific computing,[123][124] with specialized libraries such as Biopython and Astropy providing domain-specific functionality. SageMath is a mathematical software with a notebook interface programmable in Python: its library covers many aspects of mathematics, including algebra, combinatorics, numerical mathematics, number theory, and calculus.

Python has been successfully embedded in many software products as a scripting language, including in finite element method software such as Abaqus, 3D parametric modeler like FreeCAD, 3D animation packages such as 3ds Max, Blender, Cinema 4D, Lightwave, Houdini, Maya, modo, MotionBuilder, Softimage, the visual effects compositor Nuke, 2D imaging programs like GIMP,[125] Inkscape, Scribus and Paint Shop Pro,[126] and musical notation programs like scorewriter and capella. GNU Debugger uses Python as a pretty printer to show complex structures such as C++ containers. Esri promotes Python as the best choice for writing scripts in ArcGIS.[127] It has also been used in several video games,[128][129] and has been adopted as first of the three available programming languages in Google App Engine, the other two being Java and Go.[130]

Python is commonly used in artificial intelligence projects with the help of libraries like TensorFlow, Keras and Scikit-learn.[131][132][133][134] As a scripting language with modular architecture, simple syntax and rich text processing tools, Python is often used for natural language processing.[135]

Many operating systems include Python as a standard component. It ships with most Linux distributions, AmigaOS 4, FreeBSD (as a package), NetBSD, OpenBSD (as a package) and macOS and can be used from the command line (terminal). Many Linux distributions use installers written in Python: Ubuntu uses the Ubiquity installer, while Red Hat Linux and Fedora use the Anaconda installer. Gentoo Linux uses Python in its package management system, Portage.

Python is used extensively in the information security industry, including in exploit development.[136][137]

Most of the Sugar software for the One Laptop per Child XO, now developed at Sugar Labs, is written in Python.[138] The Raspberry Pi single-board computer project has adopted Python as its main user-programming language.

LibreOffice includes Python, and intends to replace Java with Python. Its Python Scripting Provider is a core feature[139] since Version 4.0 from 7 February 2013.


Languages influenced by Python

Python's design and philosophy have influenced many other programming languages:

-   Boo uses indentation, a similar syntax, and a similar object model.[140]
-   Cobra uses indentation and a similar syntax, and its "Acknowledgements" document lists Python first among languages that influenced it.[141] However, Cobra directly supports design-by-contract, unit tests, and optional static typing.[142]
-   CoffeeScript, a programming language that cross-compiles to JavaScript, has Python-inspired syntax.
-   ECMAScript borrowed iterators and generators from Python.[143]
-   Go is designed for the "speed of working in a dynamic language like Python"[144] and shares the same syntax for slicing arrays.
-   Groovy was motivated by the desire to bring the Python design philosophy to Java.[145]
-   Julia was designed "with true macros [.. and to be] as usable for general programming as Python<!--, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as Matlab, as good at gluing programs together as the shell. Something that is dirt simple to learn, yet keeps the most serious hackers happy. We want it interactive and we want it compiled.

(Did we mention it --> [and] should be as fast as C ".[146] Calling to or from Julia is possible; to with PyCall.jl and a Python package pyjulia allows calling, in the other direction, from Python.

-   Kotlin is a functional programming language with an interactive shell similar to Python. However, Kotlin is strongly typed with access to standard Java libraries.[147]
-   Ruby's creator, Yukihiro Matsumoto, has said: "I wanted a scripting language that was more powerful than Perl, and more object-oriented than Python. That's why I decided to design my own language."[148]
-   Swift, a programming language developed by Apple, has some Python-inspired syntax.[149]
-   GDScript, dynamically typed programming language used to create video-games. It is extremely similar to Python with a few minor differences.

Python's development practices have also been emulated by other languages. For example, the practice of requiring a document describing the rationale for, and issues surrounding, a change to the language (in Python, a PEP) is also used in Tcl[150] and Erlang.[151]

Python received TIOBE's Programming Language of the Year awards in 2007, 2010 and 2018. The award is given to the language with the greatest growth in popularity over the year, as measured by the TIOBE index.[152]


See also

-   Comparison of programming languages
-   List of programming languages
-   pip (package manager)


References

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192]

[193]

[194]

[195]

[196]

[197]

[198]

[199]

[200]

[201]

[202]

[203]

[204]

[205]

[206]

[207]

[208]

[209]

[210]

[211]

[212]

[213]

[214]

[215]

[216]

[217]

[218]

[219]

[220]

[221]

[222]

[223]

[224]

[225]

[226]

[227]

[228]

[229]

[230]

[231]

[232]

[233]

[234]

[235]

[236]

[237]

[238]

[239]

[240]

[241]

[242]

[243]

[244]

}}

Sources

-   -   -   -


Further reading

-   -   -   -   -   -


External links

-   -

Category:Programming languages Category:Class-based programming languages Category:Computational notebook Category:Computer science in the Netherlands Category:Cross-platform free software Category:Dutch inventions Category:Dynamically typed programming languages Category:Educational programming languages Category:High-level programming languages Category:Information technology in the Netherlands Category:Object-oriented programming languages Category:Programming languages created in 1991 Python_(programming_language) Category:Scripting languages Category:Text-oriented programming languages Category:Cross-platform software

[1]

[2]

[3]  Linux Journal |url=https://www.linuxjournal.com/content/guido-van-rossum-stepping-down-role-pythons-benevolent-dictator-life |website=www.linuxjournal.com |language=en}}

[4]

[5]

[6]  "All Python releases are Open Source"

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

[25]

[26]

[27]

[28]

[29]

[30]

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

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]  Nuitka Home|website=nuitka.net|language=en|access-date=18 August 2017}}

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161] {{ cite book |last=Bini |first=Ola |title=Practical JRuby on Rails Web 2.0 Projects: bringing Ruby on Rails to the Java platform |year=2007 |publisher=APress |location=Berkeley |isbn=978-1-59059-881-8 |page=3}}

[162]

[163] , second section "Fans of Python use the phrase "batteries included" to describe the standard library, which covers everything from asynchronous processing to zip files."

[164]

[165]

[166] {{ cite mailing list |url=https://mail.python.org/pipermail/python-dev/2000-August/008881.html |title=SETL (was: Lukewarm about range literals) |date=29 August 2000 |accessdate=13 March 2011 |mailinglist=Python-Dev |last=van Rossum |first=Guido |authorlink=Guido van Rossum}}

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192] {{ cite journal |title=Python : the holy grail of programming |journal=CERN Bulletin |issue=31/2006 |publisher=CERN Publications |date=31 July 2006 |url=http://cdsweb.cern.ch/journal/CERNBulletin/2006/31/News%20Articles/974627?ln=en |accessdate=11 February 2012}}

[193]

[194]

[195]

[196]

[197]

[198]

[199]

[200]

[201]

[202]

[203]

[204]

[205]

[206]

[207]

[208]

[209]

[210]

[211]

[212]

[213]

[214]

[215]

[216]

[217]

[218]

[219]

[220]

[221]

[222]

[223]

[224]

[225]

[226]

[227]

[228]

[229]

[230]

[231]

[232]

[233]

[234]

[235]

[236]

[237]

[238]

[239]

[240]

[241]

[242]

[243]

[244]