STATIC PROGRAM ANALYSIS is the analysis of computer software that is performed without actually executing programs, in contrast with dynamic analysis, which is analysis performed on programs while they are executing.[1] In most cases the analysis is performed on some version of the source code, and in the other cases, some form of the object code.

The term is usually applied to the analysis performed by an automated tool, with human analysis being called program understanding, program comprehension, or code review. Software inspections and software walkthroughs are also used in the latter case.


Rationale

The sophistication of the analysis performed by tools varies from those that only consider the behaviour of individual statements and declarations, to those that include the complete source code of a program in their analysis. The uses of the information obtained from the analysis vary from highlighting possible coding errors (e.g., the lint tool) to formal methods that mathematically prove properties about a given program (e.g., its behaviour matches that of its specification).

Software metrics and reverse engineering can be described as forms of static analysis. Deriving software metrics and static analysis are increasingly deployed together, especially in creation of embedded systems, by defining so-called _software quality objectives_.[2]

A growing commercial use of static analysis is in the verification of properties of software used in safety-critical computer systems and locating potentially vulnerable code.[3] For example, the following industries have identified the use of static code analysis as a means of improving the quality of increasingly sophisticated and complex software:

1.  Medical software: The U.S. Food and Drug Administration (FDA) has identified the use of static analysis for medical devices.[4]
2.  Nuclear software: In the UK the Office for Nuclear Regulation (ONR) recommends the use of static analysis on reactor protection systems.[5]
3.  Aviation software (in combination with dynamic analysis)[6]

A study in 2012 by VDC Research reports that 28.7% of the embedded software engineers surveyed currently use static analysis tools and 39.7% expect to use them within 2 years.[7] A study from 2010 found that 60% of the interviewed developers in European research projects made at least use of their basic IDE built-in static analyzers. However, only about 10% employed an additional other (and perhaps more advanced) analysis tool.[8]

In the application security industry the name _Static Application Security Testing_ (SAST) is also used. SAST is an important part of Security Development Lifecycles (SDLs) such as the SDL defined by Microsoft [9] and a common practice in software companies.[10]


Tool types

The OMG (Object Management Group) published a study regarding the types of software analysis required for software quality measurement and assessment. This document on "How to Deliver Resilient, Secure, Efficient, and Easily Changed IT Systems in Line with CISQ Recommendations" describes three levels of software analysis.[11]

Unit Level: Analysis that takes place within a specific program or subroutine, without connecting to the context of that program.
Technology Level: Analysis that takes into account interactions between unit programs to get a more holistic and semantic view of the overall program in order to find issues and avoid obvious false positives. For instance, it is possible to statically analyze the Android technology stack to find permission errors.[12]
System Level: Analysis that takes into account the interactions between unit programs, but without being limited to one specific technology or programming language.

A further level of software analysis can be defined.

Mission/Business Level: Analysis that takes into account the business/mission layer terms, rules and processes that are implemented within the software system for its operation as part of enterprise or program/mission layer activities. These elements are implemented without being limited to one specific technology or programming language and in many cases are distributed across multiple languages, but are statically extracted and analyzed for system understanding for mission assurance.


Formal methods

Formal methods is the term applied to the analysis of software (and computer hardware) whose results are obtained purely through the use of rigorous mathematical methods. The mathematical techniques used include denotational semantics, axiomatic semantics, operational semantics, and abstract interpretation.

By a straightforward reduction to the halting problem, it is possible to prove that (for any Turing complete language), finding all possible run-time errors in an arbitrary program (or more generally any kind of violation of a specification on the final result of a program) is undecidable: there is no mechanical method that can always answer truthfully whether an arbitrary program may or may not exhibit runtime errors. This result dates from the works of Church, Gödel and Turing in the 1930s (see: Halting problem and Rice's theorem). As with many undecidable questions, one can still attempt to give useful approximate solutions.

Some of the implementation techniques of formal static analysis include:[13]

-   Abstract interpretation, to model the effect that every statement has on the state of an abstract machine (i.e., it 'executes' the software based on the mathematical properties of each statement and declaration). This abstract machine over-approximates the behaviours of the system: the abstract system is thus made simpler to analyze, at the expense of _incompleteness_ (not every property true of the original system is true of the abstract system). If properly done, though, abstract interpretation is _sound_ (every property true of the abstract system can be mapped to a true property of the original system).[14] The Frama-C value analysis plugin and Polyspace heavily rely on abstract interpretation.
-   Data-flow analysis, a lattice-based technique for gathering information about the possible set of values;
-   Hoare logic, a formal system with a set of logical rules for reasoning rigorously about the correctness of computer programs. There is tool support for some programming languages (e.g., the SPARK programming language (a subset of Ada) and the Java Modeling Language—JML—using ESC/Java and ESC/Java2, Frama-C WP (weakest precondition) plugin for the C language extended with ACSL (ANSI/ISO C Specification Language) ).
-   Model checking, considers systems that have finite state or may be reduced to finite state by abstraction;
-   Symbolic execution, as used to derive mathematical expressions representing the value of mutated variables at particular points in the code.


Data-driven static analysis

Data-driven static analysis uses large amounts of code to infer coding rules.[15] For instance, one can use all Java open-source packages on GitHub to learn a good analysis strategy. The rule inference can use machine learning techniques.[16] For instance, it has been shown that when one deviates too much in the way one uses an object-oriented API, it is likely to be a bug.[17] It is also possible to learn from a large amount of past fixes and warnings.[18]


See also

-   Code audit
-   Documentation generator
-   Formal semantics of programming languages
-   Formal verification
-   List of tools for static code analysis
-   Shape analysis (software)


References


Further reading

-   Syllabus and readings for Alex Aiken’s Stanford CS295 course.
-   -   -   -   "Abstract interpretation and static analysis," International Winter School on Semantics and Applications 2003, by David A. Schmidt


External links

-   Code Quality Improvement - Coding standards conformance checking (DDJ)
-   Competition on Software Verification (SV-COMP)
-   Episode 59: Static Code Analysis Interview (Podcast) at _Software Engineering Radio_
-   Implementing Automated Governance for Coding Standards Explains why and how to integrate static code analysis into the build process
-   Integrate static analysis into a software development process
-   The SAMATE Project, a resource for Automated Static Analysis tools

Category:Program analysis Category:Software review Category:Software testing Category:Static program analysis Category:Quality assurance

[1]

[2] "Software Quality Objectives for Source Code" (PDF). _Proceedings: Embedded Real Time Software and Systems 2010 Conference_, ERTS2010.org, Toulouse, France: Patrick Briand, Martin Brochet, Thierry Cambois, Emmanuel Coutenceau, Olivier Guetta, Daniel Mainberte, Frederic Mondot, Patrick Munier, Loic Noury, Philippe Spozio, Frederic Retailleau.

[3] _Improving Software Security with Precise Static and Runtime Analysis_ (PDF), Benjamin Livshits, section 7.3 "Static Techniques for Security". Stanford doctoral thesis, 2006.

[4]

[5] Computer based safety systems - technical guidance for assessing software aspects of digital computer based protection systems,

[6] Position Paper CAST-9. Considerations for Evaluating Safety Engineering Approaches to Software Assurance // FAA, Certification Authorities Software Team (CAST), January, 2002: "Verification. A combination of both static and dynamic analyses should be specified by the applicant/developer and applied to the software."

[7]

[8] Prause, Christian R., René Reiners, and Silviya Dencheva. "Empirical study of tool support in highly distributed research projects." Global Software Engineering (ICGSE), 2010 5th IEEE International Conference on. IEEE, 2010 http://ieeexplore.ieee.org/ielx5/5581168/5581493/05581551.pdf

[9] M. Howard and S. Lipner. The Security Development Lifecycle: SDL: A Process for Developing Demonstrably More Secure Software. Microsoft Press, 2006.

[10] Achim D. Brucker and Uwe Sodan. Deploying Static Application Security Testing on a Large Scale . In GI Sicherheit 2014. Lecture Notes in Informatics, 228, pages 91-101, GI, 2014.

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]