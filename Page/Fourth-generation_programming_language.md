A FOURTH-GENERATION PROGRAMMING LANGUAGE (4GL) is any computer programming language that belongs to a class of languages envisioned as an advancement upon third-generation programming languages (3GL). Each of the programming language generations aims to provide a higher level of abstraction of the internal computer hardware details, making the language more programmer-friendly, powerful, and versatile. While the definition of 4GL has changed over time, it can be typified by operating more with large collections of information at once rather than focusing on just bits and bytes. Languages claimed to be 4GL may include support for database management, report generation, mathematical optimization, GUI development, or web development. Some researchers state that 4GLs are a subset of domain-specific languages.[1][2]

The concept of 4GL was developed from the 1970s through the 1990s, overlapping most of the development of 3GL. While 3GLs like C, C++, C#, Java, and JavaScript remain popular for a wide variety of uses, 4GLs as originally defined found narrower uses. Some advanced 3GLs like Python, Ruby, and Perl combine some 4GL abilities within a general-purpose 3GL environment. Also, libraries with 4GL-like features have been developed as add-ons for most popular 3GLs. This has blurred the distinction of 4GL and 3GL.

In the 1980s and 1990s, there were efforts to develop fifth-generation programming languages (5GL).


History

Though used earlier in papers and discussions, the term 4GL was first used formally by James Martin in his 1981 book _Applications Development Without Programmers_[3] to refer to non-procedural, high-level specification languages. In some primitive way, early 4GLs were included in the Informatics MARK-IV (1967) product and Sperry's MAPPER (1969 internal use, 1979 release).

The motivations for the '4GL' inception and continued interest are several. The term can apply to a large set of software products. It can also apply to an approach that looks for greater semantic properties and implementation power. Just as the 3GL offered greater power to the programmer, so too did the 4GL open up the development environment to a wider population.

The early input scheme for the 4GL supported entry of data within the 72-character limit of the punched card (8 bytes used for sequencing) where a card's tag would identify the type or function. With judicious use of a few cards, the 4GL deck could offer a wide variety of processing and reporting capability whereas the equivalent functionality coded in a 3GL could subsume, perhaps, a whole box or more of cards.[4]

The 72-character metaphor continued for a while as hardware progressed to larger memory and terminal interfaces. Even with its limitations, this approach supported highly sophisticated applications.

As interfaces improved and allowed longer statement lengths and grammar-driven input handling, greater power ensued. An example of this is described on the Nomad page.



        Another example of Nomad's power is illustrated by Nicholas Rawlings in his comments for the Computer History Museum about NCSS (see citation below). He reports that James Martin asked Rawlings for a Nomad solution to a standard problem Martin called the _Engineer's Problem_: "give 6% raises to engineers whose job ratings had an average of 7 or better." Martin provided a "dozen pages of COBOL, and then just a page or two of Mark IV, from Informatics." Rawlings offered the following single statement, performing a set-at-a-time operation...

The development of the 4GL was influenced by several factors, with the hardware and operating system constraints having a large weight. When the 4GL was first introduced, a disparate mix of hardware and operating systems mandated custom application development support that was specific to the system in order to ensure sales. One example is the MAPPER system developed by Sperry. Though it has roots back to the beginning, the system has proven successful in many applications and has been ported to modern platforms. The latest variant is embedded in the BIS[5] offering of Unisys. MARK-IV is now known as VISION:BUILDER and is offered by Computer Associates.

Santa Fe railroad used MAPPER to develop a system, in a project that was an early example of 4GL, rapid prototyping, and programming by users.[6] The idea was that it was easier to teach railroad experts to use MAPPER than to teach programmers the "intricacies of railroad operations".[7]

One of the early (and portable) languages that had 4GL properties was Ramis developed by Gerald C. Cohen at Mathematica, a mathematical software company. Cohen left Mathematica and founded Information Builders to create a similar reporting-oriented 4GL, called FOCUS.

Later 4GL types are tied to a database system and are far different from the earlier types in their use of techniques and resources that have resulted from the general improvement of computing with time.

An interesting twist to the 4GL scene is realization that graphical interfaces and the related reasoning done by the user form a 'language' that is poorly understood.


Types

A number of different types of 4GLs exist:

-   Table-driven (codeless) programming, usually running with a runtime framework and libraries. Instead of using code, the developer defines their logic by selecting an operation in a pre-defined list of memory or data table manipulation commands. In other words, instead of coding, the developer uses table-driven algorithm programming (see also control tables that can be used for this purpose). A good example of this type of 4GL language is PowerBuilder. These types of tools can be used for business application development usually consisting in a package allowing for both business data manipulation and reporting, therefore they come with GUI screens and report editors. They usually offer integration with lower level DLLs generated from a typical 3GL for when the need arise for more hardware/OS specific operations.
-   Report-generator programming languages take a description of the data format and the report to generate and from that they either generate the required report directly or they generate a program to generate the report. See also RPG
-   Similarly, forms generators manage online interactions with the application system users or generate programs to do so.
-   More ambitious 4GLs (sometimes termed _fourth generation environments_) attempt to automatically generate whole systems from the outputs of CASE tools, specifications of screens and reports, and possibly also the specification of some additional processing logic.
-   Data management 4GLs such as SAS, SPSS, and Stata provide sophisticated coding commands for data manipulation, file reshaping, case selection, and data documentation in the preparation of data for statistical analysis and reporting.

Some 4GLs have integrated tools that allow for the easy specification of all the required information:

-   James Martin's version of _Information Engineering_ systems development methodology was automated to allow the input of the results of system analysis and design in the form of data flow diagrams, entity relationship diagrams, entity life history diagrams etc., from which hundreds of thousands of lines of COBOL would be generated overnight.
-   More recently Oracle Corporation's Oracle Designer and Oracle Developer Suite 4GL products could be integrated to produce database definitions and the forms and reports programs.


Low code environments

In the twenty-first century, 4GL systems have emerged as "low code" environments or platforms for the problem of rapid application development in short periods of time. Vendors often provide sample systems such as CRM, contract management, bug tracking from which development can occur with little programming.[8]


Examples

General use / versatile

-   Accelerator (Productivity)
-   Accell/SQL (4GL) from Unify Corporation.
-   CA-Telon 4GL Cobol/PLI generator
-   Clarion
-   Clipper
-   Cognos PowerHouse 4GL
-   DataFlex
-   FOCUS
-   Forté TOOL (transactional object-oriented language)
-   GeneXus
-   Harbour
-   IBM Rational EGL (Enterprise Generation Language)
-   LabVIEW
-   LANSA
-   LINC
-   LiveCode
-   NATURAL
-   Omnis Studio SDK
-   Oracle Application Development Framework
-   OutSystems (Productivity/PaaS)
-   PowerBuilder
-   DEC RALLY
-   SheerPower4GL (Microsoft Windows only)
-   SQLWindows/Team Developer
-   Uniface
-   Unix Shell
-   Visual DataFlex (Microsoft Windows only)
-   Visual FoxPro
-   XBase++

Database query languages

-   FOCUS
-   4D QL
-   Informix-4GL
-   NATURAL
-   OpenEdge ABL
-   OpenROAD (Ingres 4GL)
-   Ramis
-   SQL

Report generators

-   LIRC
-   Oracle Reports
-   Progress 4GL Query/Results
-   RPG-II

Extract data from files or database to create reports in a wide range of formats is done by the report generator tools.

Data manipulation, analysis, and reporting languages

-   Ab Initio
-   ABAP
-   Audit Command Language
-   Clarion Programming Language
-   CorVision
-   Culprit
-   ADS/Online (plus transaction processing)
-   Easytrieve
-   FOCUS
-   GraphTalk
-   IDL
-   IGOR Pro
-   Informix-4GL
-   JSL
-   LANSA
-   LabVIEW
-   LiveCode
-   MANTIS
-   MAPPER (Unisys/Sperry) now part of BIS
-   MARK-IV (Sterling/Informatics) now VISION:BUILDER of CA
-   Simulink a component of MATLAB
-   NATURAL
-   Nomad
-   Octave
-   PL/SQL
-   Progress 4GL
-   PROIV
-   R
-   Ramis
-   S
-   Scilab
-   SAS
-   SPSS
-   SQL PL
-   SQR
-   Stata
-   Synon
-   Wolfram Language
-   XBase++
-   Xquery
-   siva

GUI creators

-   4th Dimension (Software)
-   LiveCode
-   MATLAB's GUIDE
-   Omnis Studio
-   OpenROAD
-   Progress 4GL AppBuilder
-   SuperTalk
-   Visual DataFlex
-   XUL Can be used with Xquery

Mathematical optimization

-   AIMMS
-   AMPL
-   GAMS
-   MathProg
-   MATLAB
-   Mathematica

Database-driven GUI application development

-   C/AL
-   Genexus
-   SB+/SystemBuilder
-   Unify VISION

Low code / No code development platforms[9][10]

-   1C:Enterprise programming language
-   Appcelerator
-   Appian
-   Bizagi
-   K2[11]
-   Kony[12]
-   LANSA
-   Mendix
-   OutSystems
-   PNMsoft
-   Progress
-   ServiceNow
-   Servoy
-   ViziApps

Screen painters and generators

-   Oracle Forms
-   Progress 4GL ProVision
-   SB+/SystemBuilder

Web development languages

-   ActiveVFP
-   CFML
-   LANSA
-   OutSystems
-   Wavemaker


What's previous

-   First-generation programming language
-   Second-generation programming language
-   Third-generation programming language


What's next

-   Fifth-generation programming language


See also

-   List of fourth-generation programming languages
-   Domain-specific programming language
-   Rapid application development


References

-

Category:Programming language classification Category:4GL

[1] 35th Hawaii International Conference on System Sciences - 1002 Domain-Specific Languages for Software Engineering

[2]

[3] Martin, James. _Application Development Without Programmers._ Prentice-Hall, 1981. .

[4]

[5]

[6]  [book on report generator and MAPPER systems]

[7]

[8]

[9]

[10]

[11]

[12]