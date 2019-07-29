prog_one.png program, _Lichess_, showing artificial intelligence programming– if the white bishop at b3 moves to a2, capturing the black knight, then the black pawn at b1 is programmed to capture the bishop back. Black has just moved a pawn to c2. ]]

COMPUTER PROGRAMMING is the process of designing and building an executable computer program for accomplishing a specific computing task. PROGRAMMING involves tasks such as: analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as CODING)[1][2]. The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem. The process of programming thus often requires expertise in several different subjects, including knowledge of the application domain, specialized algorithms, and formal logic.

Tasks accompanying and related to programming include: testing, debugging, source code maintenance, implementation of build systems, and management of derived artifacts, such as the machine code of computer programs. These might be considered part of the programming process, but often the term _software development_ is used for this larger process with the term _programming_, _implementation_, or _coding_ reserved for the actual writing of code. _Software engineering_ combines engineering techniques with software development practices. _Reverse engineering_ is the opposite process. A _hacker_ is any skilled computer expert that uses their technical knowledge to overcome a problem, but it can also mean a _security hacker_ in common language.


History

Ada_lovelace.jpg, whose notes added to the end of Luigi Menabrea's paper included the first algorithm designed for processing by an Analytical Engine. She is often recognized as history's first computer programmer.]]

Programmable devices have existed at least as far back as 1206 AD, when the automata of Al-Jazari were programmable, via pegs and cams, to play various rhythms and drum patterns;[3] and the 1801 Jacquard loom could produce entirely different weaves by changing the "program" - a series of pasteboard cards with holes punched in them.

However, the first computer program is generally dated to 1843, when mathematician Ada Lovelace published an algorithm to calculate a sequence of Bernoulli numbers, intended to be carried out by Charles Babbage's Analytical Engine.[4]

PunchCardDecks.agr.jpgs, which were kept in order and arranged in program decks.]] In the 1880s Herman Hollerith invented the concept of storing _data_ in machine-readable form.[5] Later a control panel (plugboard) added to his 1906 Type I Tabulator allowed it to be programmed for different jobs, and by the late 1940s, unit record equipment such as the IBM 602 and IBM 604, were programmed by control panels in a similar way; as were the first electronic computers. However, with the concept of the stored-program computers introduced in 1949, both programs and data were stored and manipulated in the same way in computer memory.

Machine code was the language of early programs, written in the instruction set of the particular machine, often in binary notation. Assembly languages were soon developed that let the programmer specify instruction in a text format, (e.g., ADD X, TOTAL), with abbreviations for each operation code and meaningful names for specifying addresses. However, because an assembly language is little more than a different notation for a machine language, any two machines with different instruction sets also have different assembly languages.

IBM402plugboard.Shrigley.wireside.jpg.]] High-level languages made the process of developing a program simpler and more understandable, and less bound to the underlying hardware. FORTRAN, the first widely used high-level language to have a functional implementation, came out in 1957[6] and many other languages were soon developed – in particular, COBOL aimed at commercial data processing, and Lisp for computer research.

Programs were mostly still entered using punched cards or paper tape. See computer programming in the punch card era. By the late 1960s, data storage devices and computer terminals became inexpensive enough that programs could be created by typing directly into the computers. Text editors were developed that allowed changes and corrections to be made much more easily than with punched cards.


Modern programming

Quality requirements

Whatever the approach to development may be, the final program must satisfy some fundamental properties. The following properties are among the most important:

-   Reliability: how often the results of a program are correct. This depends on conceptual correctness of algorithms, and minimization of programming mistakes, such as mistakes in resource management (e.g., buffer overflows and race conditions) and logic errors (such as division by zero or off-by-one errors).
-   Robustness: how well a program anticipates problems due to errors (not bugs). This includes situations such as incorrect, inappropriate or corrupt data, unavailability of needed resources such as memory, operating system services and network connections, user error, and unexpected power outages.
-   Usability: the ergonomics of a program: the ease with which a person can use the program for its intended purpose or in some cases even unanticipated purposes. Such issues can make or break its success even regardless of other issues. This involves a wide range of textual, graphical and sometimes hardware elements that improve the clarity, intuitiveness, cohesiveness and completeness of a program's user interface.
-   Portability: the range of computer hardware and operating system platforms on which the source code of a program can be compiled/interpreted and run. This depends on differences in the programming facilities provided by the different platforms, including hardware and operating system resources, expected behavior of the hardware and operating system, and availability of platform specific compilers (and sometimes libraries) for the language of the source code.
-   Maintainability: the ease with which a program can be modified by its present or future developers in order to make improvements or customizations, fix bugs and security holes, or adapt it to new environments. Good practices[7] during initial development make the difference in this regard. This quality may not be directly apparent to the end user but it can significantly affect the fate of a program over the long term.
-   Efficiency/performance: Measure of system resources a program consumes (processor time, memory space, slow devices such as disks, network bandwidth and to some extent even user interaction): the less, the better. This also includes careful management of resources, for example cleaning up temporary files and eliminating memory leaks.

Readability of source code

In computer programming, readability refers to the ease with which a human reader can comprehend the purpose, control flow, and operation of source code. It affects the aspects of quality above, including portability, usability and most importantly maintainability.

Readability is important because programmers spend the majority of their time reading, trying to understand and modifying existing source code, rather than writing new source code. Unreadable code often leads to bugs, inefficiencies, and duplicated code. A study[8] found that a few simple readability transformations made code shorter and drastically reduced the time to understand it.

Following a consistent programming style often helps readability. However, readability is more than just programming style. Many factors, having little or nothing to do with the ability of the computer to efficiently compile and execute the code, contribute to readability.[9] Some of these factors include:

-   Different indent styles (whitespace)
-   Comments
-   Decomposition
-   Naming conventions for objects (such as variables, classes, procedures, etc.)

The presentation aspects of this (such as indents, line breaks, color highlighting, and so on) are often handled by the source code editor, but the content aspects reflect the programmer's talent and skills.

Various visual programming languages have also been developed with the intent to resolve readability concerns by adopting non-traditional approaches to code structure and display. Integrated development environments (IDEs) aim to integrate all such help. Techniques like Code refactoring can enhance readability.

Algorithmic complexity

The academic field and the engineering practice of computer programming are both largely concerned with discovering and implementing the most efficient algorithms for a given class of problem. For this purpose, algorithms are classified into _orders_ using so-called Big O notation, which expresses resource use, such as execution time or memory consumption, in terms of the size of an input. Expert programmers are familiar with a variety of well-established algorithms and their respective complexities and use this knowledge to choose algorithms that are best suited to the circumstances.

Chess algorithms as an example

"Programming a Computer for Playing Chess" was a 1950 paper that evaluated a "minimax" algorithm that is part of the history of algorithmic complexity; a course on IBM's Deep Blue (chess computer) is part of the computer science curriculum at Stanford University.[10]

Methodologies

The first step in most formal software development processes is requirements analysis, followed by testing to determine value modeling, implementation, and failure elimination (debugging). There exist a lot of differing approaches for each of those tasks. One approach popular for requirements analysis is Use Case analysis. Many programmers use forms of Agile software development where the various stages of formal software development are more integrated together into short cycles that take a few weeks rather than years. There are many approaches to the Software development process.

Popular modeling techniques include Object-Oriented Analysis and Design (OOAD) and Model-Driven Architecture (MDA). The Unified Modeling Language (UML) is a notation used for both the OOAD and MDA.

A similar technique used for database design is Entity-Relationship Modeling (ER Modeling).

Implementation techniques include imperative languages (object-oriented or procedural), functional languages, and logic languages.

Measuring language usage

It is very difficult to determine what are the most popular of modern programming languages. Methods of measuring programming language popularity include: counting the number of job advertisements that mention the language,[11] the number of books sold and courses teaching the language (this overestimates the importance of newer languages), and estimates of the number of existing lines of code written in the language (this underestimates the number of users of business languages such as COBOL).

Some languages are very popular for particular kinds of applications, while some languages are regularly used to write many different kinds of applications. For example, COBOL is still strong in corporate data centers[12] often on large mainframe computers, Fortran in engineering applications, scripting languages in Web development, and C in embedded software. Many applications use a mix of several languages in their construction and use. New languages are generally designed around the syntax of a prior language with new functionality added, (for example C++ adds object-orientation to C, and Java adds memory management and bytecode to C++, but as a result, loses efficiency and the ability for low-level manipulation).

Debugging

H96566k.jpg from 1947 which is at the origin of a popular (but incorrect) etymology for the common term for a software defect.]] Debugging is a very important task in the software development process since having defects in a program can have significant consequences for its users. Some languages are more prone to some kinds of faults because their specification does not require compilers to perform as much checking as other languages. Use of a static code analysis tool can help detect some possible problems. Normally the first step in debugging is to attempt to reproduce the problem. This can be a non-trivial task, for example as with parallel processes or some unusual software bugs. Also, specific user environment and usage history can make it difficult to reproduce the problem.

After the bug is reproduced, the input of the program may need to be simplified to make it easier to debug. For example, a bug in a compiler can make it crash when parsing some large source file. However, after simplification of the test case, only few lines from the original source file can be sufficient to reproduce the same crash. Such simplification can be done manually, using a divide-and-conquer approach. The programmer will try to remove some parts of original test case and check if the problem still exists. When debugging the problem in a GUI, the programmer can try to skip some user interaction from the original problem description and check if remaining actions are sufficient for bugs to appear.

Debugging is often done with IDEs like Eclipse, Visual Studio, Xcode, Kdevelop, NetBeans and Code::Blocks. Standalone debuggers like GDB are also used, and these often provide less of a visual environment, usually using a command line. Some text editors such as Emacs allow GDB to be invoked through them, to provide a visual environment.


Programming languages

Different programming languages support different styles of programming (called _programming paradigms_). The choice of language used is subject to many considerations, such as company policy, suitability to task, availability of third-party packages, or individual preference. Ideally, the programming language best suited for the task at hand will be selected. Trade-offs from this ideal involve finding enough programmers who know the language to build a team, the availability of compilers for that language, and the efficiency with which programs written in a given language execute. Languages form an approximate spectrum from "low-level" to "high-level"; "low-level" languages are typically more machine-oriented and faster to execute, whereas "high-level" languages are more abstract and easier to use but execute less quickly. It is usually easier to code in "high-level" languages than in "low-level" ones.

Allen Downey, in his book,"_How To Think Like A Computer Scientist"_, writes:

    The details look different in different languages, but a few basic instructions appear in just about every language:
    -   Input: Gather data from the keyboard, a file, or some other device.
    -   Output: Display data on the screen or send data to a file or other device.
    -   Arithmetic: Perform basic arithmetical operations like addition and multiplication.
    -   Conditional Execution: Check for certain conditions and execute the appropriate sequence of statements.
    -   Repetition: Perform some action repeatedly, usually with some variation.

Many computer languages provide a mechanism to call functions provided by shared libraries. Provided the functions in a library follow the appropriate run-time conventions (e.g., method of passing arguments), then these functions may be written in any other language.


Programmers

Computer programmers are those who write computer software. Their jobs usually involve:

-   Coding
-   Debugging
-   Documentation
-   Integration
-   Maintenance
-   Requirements analysis
-   Software architecture
-   Software testing
-   Specification


See also

-   ACCU
-   Association for Computing Machinery
-   Computer networking
-   Hello world program
-   Institution of Analysts and Programmers
-   National Coding Week
-   System programming
-   Computer programming in the punched card era
-   _The Art of Computer Programming_
-   Women in computing
-   Timeline of women in computing


References

Sources

-   -   -   -


Further reading

-   A.K. Hartmann, _Practical Guide to Computer Simulations_, Singapore: World Scientific (2009)
-   A. Hunt, D. Thomas, and W. Cunningham, _The Pragmatic Programmer. From Journeyman to Master_, Amsterdam: Addison-Wesley Longman (1999)
-   Brian W. Kernighan, _The Practice of Programming_, Pearson (1999)
-   Weinberg, Gerald M., _The Psychology of Computer Programming_, New York: Van Nostrand Reinhold (1971)
-   Edsger W. Dijkstra, _A Discipline of Programming_, Prentice-Hall (1976)
-   O.-J. Dahl, E.W.Dijkstra, C.A.R. Hoare, _Structured Pogramming_, Academic Press (1972)
-   David Gries, _The Science of Programming_, Springer-Verlag (1981)


External links

-   -

-

Computer_programming Programming

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

[11] Survey of Job advertisements mentioning a given language

[12]