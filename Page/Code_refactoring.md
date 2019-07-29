CODE REFACTORING is the process of restructuring existing computer code—changing the _factoring_—without changing its external behavior. Refactoring is intended to improve _nonfunctional_ attributes of the software. Advantages include improved code readability and reduced complexity; these can improve source-code maintainability and create a more expressive internal architecture or object model to improve extensibility.

Typically, refactoring applies a series of standardised basic _micro-refactorings_, each of which is (usually) a tiny change in a computer program's source code that either preserves the behaviour of the software, or at least does not modify its conformance to functional requirements. Many development environments provide automated support for performing the mechanical aspects of these basic refactorings. If done well, code refactoring may help software developers discover and fix hidden or dormant bugs or vulnerabilities in the system by simplifying the underlying logic and eliminating unnecessary levels of complexity. If done poorly it may fail the requirement that external functionality not be changed, introduce new bugs, or both.


Motivation

Refactoring is usually motivated by noticing a code smell.[1] For example, the method at hand may be very long, or it may be a near duplicate of another nearby method. Once recognized, such problems can be addressed by _refactoring_ the source code, or transforming it into a new form that behaves the same as before but that no longer "smells".

For a long routine, one or more smaller subroutines can be extracted; or for duplicate routines, the duplication can be removed and replaced with one shared function. Failure to perform refactoring can result in accumulating technical debt; on the other hand, refactoring is one of the primary means of repaying technical debt.[2]


Benefits

There are two general categories of benefits to the activity of refactoring.

1.  Maintainability. It is easier to fix bugs because the source code is easy to read and the intent of its author is easy to grasp.[3] This might be achieved by reducing large monolithic routines into a set of individually concise, well-named, single-purpose methods. It might be achieved by moving a method to a more appropriate class, or by removing misleading comments.
2.  Extensibility. It is easier to extend the capabilities of the application if it uses recognizable design patterns, and it provides some flexibility where none before may have existed.[4]


Testing

Automatic unit tests should be set up before refactoring to ensure routines still behave as expected.[5] Unit tests can bring stability to even large refactors when performed with a single atomic commit. A common strategy to allow safe and atomic refactors spanning multiple projects is to store all projects in a single repository, known as monorepo.[6]

With unit testing in place, refactoring is then an iterative cycle of making a small program transformation, testing it to ensure correctness, and making another small transformation. If at any point a test fails, the last small change is undone and repeated in a different way. Through many small steps the program moves from where it was to where you want it to be. For this very iterative process to be practical, the tests must run very quickly, or the programmer would have to spend a large fraction of their time waiting for the tests to finish. Proponents of extreme programming and other agile software development describe this activity as an integral part of the software development cycle.


Techniques

Here are some examples of micro-refactorings; some of these may only apply to certain languages or language types. A longer list can be found in Martin Fowler's refactoring book[7] and website.[8] Many development environments provide automated support for these micro-refactorings. For instance, a programmer could click on the name of a variable and then select the "Encapsulate field" refactoring from a context menu. The IDE would then prompt for additional details, typically with sensible defaults and a preview of the code changes. After confirmation by the programmer it would carry out the required changes throughout the code.

-   Techniques that allow for more abstraction
    -   Encapsulate field – force code to access the field with getter and setter methods
    -   Generalize type – create more general types to allow for more code sharing
    -   Replace type-checking code with state/strategy[9]
    -   Replace conditional with polymorphism [10]
-   Techniques for breaking code apart into more logical pieces
    -   Componentization breaks code down into reusable semantic units that present clear, well-defined, simple-to-use interfaces.
    -   Extract class moves part of the code from an existing class into a new class.
    -   Extract method, to turn part of a larger method into a new method. By breaking down code in smaller pieces, it is more easily understandable. This is also applicable to functions.
-   Techniques for improving names and location of code
    -   Move method or move field – move to a more appropriate class or source file
    -   Rename method or rename field – changing the name into a new one that better reveals its purpose
    -   Pull up – in object-oriented programming (OOP), move to a superclass
    -   Push down – in OOP, move to a subclass[11]
-   Automatic clone detection[12]


Hardware refactoring

While the term _refactoring_ originally referred exclusively to refactoring of software code, in recent years code written in hardware description languages (HDLs) has also been refactored. The term _hardware refactoring_ is used as a shorthand term for refactoring of code in hardware description languages. Since HDLs are not considered to be programming languages by most hardware engineers,[13] hardware refactoring is to be considered a separate field from traditional code refactoring.

Automated refactoring of analog hardware descriptions (in VHDL-AMS) has been proposed by Zeng and Huss.[14] In their approach, refactoring preserves the simulated behavior of a hardware design. The non-functional measurement that improves is that refactored code can be processed by standard synthesis tools, while the original code cannot. Refactoring of digital HDLs, albeit manual refactoring, has also been investigated by Synopsys fellow Mike Keating.[15][16] His target is to make complex systems easier to understand, which increases the designers' productivity.


History

Although refactoring code has been done informally for decades, William Griswold's 1991 Ph.D. dissertation[17] is one of the first major academic works on refactoring functional and procedural programs, followed by William Opdyke's 1992 dissertation[18] on the refactoring of object-oriented programs,[19] although all the theory and machinery have long been available as program transformation systems. All of these resources provide a catalog of common methods for refactoring; a refactoring method has a description of how to apply the method and indicators for when you should (or should not) apply the method.

Martin Fowler's book _Refactoring: Improving the Design of Existing Code_[20] is the canonical reference.

The first known use of the term "refactoring" in the published literature was in a September, 1990 article by William Opdyke and Ralph Johnson.[21] Griswold's Ph.D. thesis,[22] Opdyke's Ph.D. thesis,[23] published in 1992, also used this term.[24]

The term "factoring" has been used in the Forth community since at least the early 1980s. Chapter Six of Leo Brodie's book _Thinking Forth_ (1984) is dedicated to the subject.

In extreme programming, the Extract Method refactoring technique has essentially the same meaning as factoring in Forth; to break down a "word" (or function) into smaller, more easily maintained functions.

Refactorings can also be reconstructed[25] posthoc to produce concise descriptions of complex software changes recorded in software repositories like CVS or SVN.


Automated code refactoring

Many software editors and IDEs have automated refactoring support. It is possible to refactor application code as well as test code.[26] Here is a list of a few of these editors, or so-called refactoring browsers.

-   DMS Software Reengineering Toolkit (Implements large-scale refactoring for C, C++, C#, COBOL, Java, PHP and other languages)
-   Eclipse based:
    -   Eclipse (for Java, and to a lesser extent, C++, PHP, Ruby and JavaScript)
    -   PyDev (for Python)
    -   Photran (a Fortran plugin for the Eclipse IDE)
-   Embarcadero Delphi
-   IntelliJ based:
    -   AppCode (for Objective-C, C and C++)
    -   IntelliJ IDEA (for Java)
    -   PyCharm (for Python)
    -   WebStorm (for JavaScript)
    -   Android Studio (for Java)
-   JDeveloper (for Java)
-   NetBeans (for Java)
-   Smalltalk: Most dialects include powerful refactoring tools. Many use the original refactoring browser produced in the early '90s by Ralph Johnson.
-   Visual Studio based:
    -   Visual Studio (for .NET and C++)
    -   CodeRush (addon for Visual Studio)
    -   Visual Assist (addon for Visual Studio with refactoring support for C# and C++)
-   Wing IDE (for Python)
-   Xcode (for C, Objective-C, and Swift)[27]


See also

-   Code review
-   Database refactoring
-   Decomposition (computer science)
-   Design pattern (computer science)
-   Obfuscated code
-   Software peer review
-   Prefactoring
-   Separation of concerns
-   Test-driven development
-   Modular programming
-   Amelioration pattern


References


Further reading

-   -   -   -   -   -   -


External links

-   What Is Refactoring? (c2.com article)
-   Martin Fowler's homepage about refactoring
-

Category:Extreme programming Code_refactoring Category:Technology neologisms

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] (these are only about OOP however).Refactoring techniques in Fowler's refactoring Website

[9] Replace type-checking code with State/Strategy

[10] Replace conditional with polymorphism

[11]

[12] Bruntink, Magiel, et al. "An evaluation of clone detection techniques for crosscutting concerns." Software Maintenance, 2004. Proceedings. 20th IEEE International Conference on. IEEE, 2004.

[13] Hardware description languages#HDL and programming languages

[14] Kaiping Zeng, Sorin A. Huss, "Architecture refinements by code refactoring of behavioral VHDL-AMS models". ISCAS 2006

[15] M. Keating :"Complexity, Abstraction, and the Challenges of Designing Complex Systems", in DAC'08 tutorial 1"Bridging a Verification Gap: C++ to RTL for Practical Design"

[16] M. Keating, P. Bricaud: _Reuse Methodology Manual for System-on-a-Chip Designs_, Kluwer Academic Publishers, 1999.

[17]

[18]

[19] Martin Fowler, "MF Bliki: EtymologyOfRefactoring"

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27] What's new in Xcode 9