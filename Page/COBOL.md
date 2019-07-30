COBOL (; an acronym for "common business-oriented language") is a compiled English-like computer programming language designed for business use. It is imperative, procedural and, since 2002, object-oriented. COBOL is primarily used in business, finance, and administrative systems for companies and governments. COBOL is still widely used in legacy applications deployed on mainframe computers, such as large-scale batch and transaction processing jobs. But due to its declining popularity and the retirement of experienced COBOL programmers, programs are being migrated to new platforms, rewritten in modern languages or replaced with software packages.[1] Most programming in COBOL is now purely to maintain existing applications.[2]

COBOL was designed in 1959 by CODASYL and was partly based on previous programming language design work by Grace Hopper, commonly referred to as "the (grand)mother of COBOL".[3][4][5] It was created as part of a US Department of Defense effort to create a portable programming language for data processing. It was originally seen as a stopgap, but the Department of Defense promptly forced computer manufacturers to provide it, resulting in its widespread adoption.[6] It was standardized in 1968 and has since been revised four times. Expansions include support for structured and object-oriented programming. The current standard is _ISO/IEC 1989:2014_.[7]

COBOL statements have an English-like syntax, which was designed to be self-documenting and highly readable. However, it is verbose and uses over 300 reserved words. In contrast with modern, succinct syntax like , COBOL has a more English-like syntax (in this case, ). COBOL code is split into four _divisions_ (identification, environment, data and procedure) containing a rigid hierarchy of sections, paragraphs and sentences. Lacking a large standard library, the standard specifies 43 statements, 87 functions and just one class.

Academic computer scientists were generally uninterested in business applications when COBOL was created and were not involved in its design; it was (effectively) designed from the ground up as a computer language for business, with an emphasis on inputs and outputs, whose only data types were numbers and strings of text.[8] COBOL has been criticized throughout its life, for its verbosity, design process, and poor support for structured programming. These weaknesses result in monolithic and, though intended to be English-like, not easily comprehensible and verbose programs.


History and specification

Background

In the late 1950s, computer users and manufacturers were becoming concerned about the rising cost of programming. A 1959 survey had found that in any data processing installation, the programming cost US$800,000 on average and that translating programs to run on new hardware would cost $600,000. At a time when new programming languages were proliferating at an ever-increasing rate, the same survey suggested that if a common business-oriented language were used, conversion would be far cheaper and faster.

, the inventor of FLOW-MATIC, a predecessor to COBOL]]

On 8 April 1959, Mary K. Hawes, a computer scientist at Burroughs Corporation, called a meeting of representatives from academia, computer users, and manufacturers at the University of Pennsylvania to organize a formal meeting on common business languages.[9] Representatives included Grace Hopper, inventor of the English-like data processing language FLOW-MATIC, Jean Sammet and Saul Gorn.

At the April meeting, the group asked the Department of Defense (DoD) to sponsor an effort to create a common business language. The delegation impressed Charles A. Phillips, director of the Data System Research Staff at the DoD,[10] who thought that they "thoroughly understood" the DoD's problems. The DoD operated 225 computers, had a further 175 on order and had spent over $200 million on implementing programs to run on them. Portable programs would save time, reduce costs and ease modernization.

Phillips agreed to sponsor the meeting and tasked the delegation with drafting the agenda.

COBOL 60

On 28 and 29 May 1959 (exactly one year after the Zürich ALGOL 58 meeting), a meeting was held at the Pentagon to discuss the creation of a common programming language for business. It was attended by 41 people and was chaired by Phillips.[11] The Department of Defense was concerned about whether it could run the same data processing programs on different computers. FORTRAN, the only mainstream language at the time, lacked the features needed to write such programs.

Representatives enthusiastically described a language that could work in a wide variety of environments, from banking and insurance to utilities and inventory control. They agreed unanimously that more people should be able to program and that the new language should not be restricted by the limitations of contemporary technology. A majority agreed that the language should make maximal use of English, be capable of change, be machine-independent and be easy to use, even at the expense of power.

The meeting resulted in the creation of a steering committee and short-, intermediate- and long-range committees. The short-range committee was given to September (three months) to produce specifications for an interim language, which would then be improved upon by the other committees. Their official mission, however, was to identify the strengths and weaknesses of existing programming languages and did not explicitly direct them to create a new language. The deadline was met with disbelief by the short-range committee. One member, Betty Holberton, described the three-month deadline as "gross optimism" and doubted that the language really would be a stopgap.

The steering committee met on 4 June and agreed to name the entire activity as the _Committee on Data Systems Languages_, or CODASYL, and to form an executive committee.

The short-range committee was made up of members representing six computer manufacturers and three government agencies. The six computer manufacturers were Burroughs Corporation, IBM, Minneapolis-Honeywell (Honeywell Labs), RCA, Sperry Rand, and Sylvania Electric Products. The three government agencies were the US Air Force, the Navy's David Taylor Model Basin, and the National Bureau of Standards (now the National Institute of Standards and Technology). The committee was chaired by Joseph Wegstein of the US National Bureau of Standards. Work began by investigating data description, statements, existing applications and user experiences.

The committee mainly examined the FLOW-MATIC, AIMACO and COMTRAN programming languages. The FLOW-MATIC language was particularly influential because it had been implemented and because AIMACO was a derivative of it with only minor changes.[12] FLOW-MATIC's inventor, Grace Hopper, also served as a technical adviser to the committee. FLOW-MATIC's major contributions to COBOL were long variable names, English words for commands and the separation of data descriptions and instructions.

IBM's COMTRAN language, invented by Bob Bemer, was regarded as a competitor to FLOW-MATIC by a short-range committee made up of colleagues of Grace Hopper. Some of its features were not incorporated into COBOL so that it would not look like IBM had dominated the design process, and Jean Sammet said in 1981 that there had been a "strong anti-IBM bias" from some committee members (herself included). In one case, after Roy Goldfinger, author of the COMTRAN manual and intermediate-range committee member, attended a subcommittee meeting to support his language and encourage the use of algebraic expressions, Grace Hopper sent a memo to the short-range committee reiterating Sperry Rand's efforts to create a language based on English. In 1980, Grace Hopper commented that "COBOL 60 is 95% FLOW-MATIC" and that COMTRAN had had an "extremely small" influence. Furthermore, she said that she would claim that work was influenced by both FLOW-MATIC and COMTRAN only to "keep other people happy [so they] wouldn't try to knock us out".[13] Features from COMTRAN incorporated into COBOL included formulas, the [[#PICTURE_clause|


Features

Syntax

COBOL has an English-like syntax, which is used to describe nearly everything in a program. For example, a condition can be expressed as   or more concisely as    or  . More complex conditions can be "abbreviated" by removing repeated conditions and variables. For example,    can be shortened to . As a consequence of this English-like syntax, COBOL has over 300 keywords. Some of the keywords are simple alternative or pluralized spellings of the same word, which provides for more English-like statements and clauses; e.g., the and keywords can be used interchangeably, as can and , and and .

Each COBOL program is made up of four basic lexical items: words, literals, picture character-strings (see ) and separators. Words include reserved words and user-defined identifiers. They are up to 31 characters long and may include letters, digits, hyphens and underscores. Literals include numerals (e.g. ) and strings (e.g. ). Separators include the space character and commas and semi-colons followed by a space.

A COBOL program is split into four divisions: the identification division, the environment division, the data division and the procedure division. The identification division specifies the name and type of the source element and is where classes and interfaces are specified. The environment division specifies any program features that depend on the system running it, such as files and character sets. The data division is used to declare variables and parameters. The procedure division contains the program's statements. Each division is sub-divided into sections, which are made up of paragraphs.

Metalanguage

COBOL's syntax is usually described with a unique metalanguage using braces, brackets, bars and underlining. The metalanguage was developed for the original COBOL specifications. Although Backus–Naur form did exist at the time, the committee had not heard of it.

+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Element      | Appearance                                                                  | Function                                                                   |
+==============+=============================================================================+============================================================================+
|              |                                                                             |                                                                            |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| All capitals | EXAMPLE                                                                     | Reserved word                                                              |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Underlining  |                                                                             | The reserved word is compulsory                                            |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Braces       | { }                                                                         | Only one option may be selected                                            |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Brackets     | []                                                                          | Zero or one options may be selected                                        |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Ellipsis     | ...                                                                         | The preceding element may be repeated                                      |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Bars         |                                                                             | One or more options may be selected. Any option may only be selected once. |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+
| [ ]          | Zero or more options may be selected. Any option may only be selected once. |                                                                            |
+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------+

: Elements of COBOL's metalanguage

As an example, consider the following description of an ADD statement:

$\begin{array}{l}
  \underline{\text{ADD}}\,
  \begin{Bmatrix}
    \text{identifier-1} \\
    \text{literal-1}
  \end{Bmatrix}\dots
  \;\underline{\text{TO}}\,\left\{\text{identifier-2}\,\left[\,\underline{\text{ROUNDED}}\,\right]\right\}\dots
  \\

  \quad
  \left[\left|\begin{array}{l}
     \text{ON}\,\underline{\text{SIZE}}\,\underline{\text{ERROR}}\,\text{imperative-statement-1} \\
     \underline{\text{NOT}}\,\text{ON}\,\underline{\text{SIZE}}\,\underline{\text{ERROR}}\,\text{imperative-statement-2} \\
  \end{array}\right|\right]
  \\

  \quad
  \left[\,\underline{\text{END-ADD}}\,\right]
\end{array}$

This description permits the following variants:

    ADD 1 TO x
    ADD 1, a, b TO x ROUNDED, y, z ROUNDED

    ADD a, b TO c
        ON SIZE ERROR
            DISPLAY "Error"
    END-ADD

    ADD a TO b
        NOT SIZE ERROR
            DISPLAY "No error"
        ON SIZE ERROR
            DISPLAY "Error"

Code format

COBOL can be written in two formats: fixed (the default) or free. In fixed-format, code must be aligned to fit in certain areas (a hold-over from using punched cards). Until COBOL 2002, these were:

+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+
| Name                 | Column(s) | Usage                                                                                                              |
+======================+===========+====================================================================================================================+
| Sequence number area | 1–6       | Originally used for card/line numbers, this area is ignored by the compiler                                        |
+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+
| Indicator area       | 7         | The following characters are allowed here:                                                                         |
|                      |           |                                                                                                                    |
|                      |           | -   * – Comment line                                                                                               |
|                      |           | -   / – Comment line that will be printed on a new page of a source listing                                        |
|                      |           | -   - – Continuation line, where words or literals from the previous line are continued                            |
|                      |           | -   D – Line enabled in debugging mode, which is otherwise ignored                                                 |
+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+
| Area A               | 8–11      | This contains: DIVISION, SECTION and procedure headers; 01 and 77 level numbers and file/report descriptors        |
+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+
| Area B               | 12–72     | Any other code not allowed in Area A                                                                               |
+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+
| Program name area    | 73–       | Historically up to column 80 for punched cards, it is used to identify the program or sequence the card belongs to |
+----------------------+-----------+--------------------------------------------------------------------------------------------------------------------+

In COBOL 2002, Areas A and B were merged to form the program-text area, which now ends at an implementor-defined column.

COBOL 2002 also introduced free-format code. Free-format code can be placed in any column of the file, as in newer programming languages. Comments are specified using *>, which can be placed anywhere and can also be used in fixed-format source code. Continuation lines are not present, and the >>PAGE directive replaces the / indicator.

Identification division

The identification division identifies the following code entity and contains the definition of a class or interface.

Object-oriented programming

Classes and interfaces have been in COBOL since 2002. Classes have factory objects, containing class methods and variables, and instance objects, containing instance methods and variables. Inheritance and interfaces provide polymorphism. Support for generic programming is provided through parameterized classes, which can be instantiated to use any class or interface. Objects are stored as references which may be restricted to a certain type. There are two ways of calling a method: the statement, which acts similarly to , or through inline method invocation, which is analogous to using functions.

    *> These are equivalent.
    INVOKE my-class "foo" RETURNING var
    MOVE my-class::"foo" TO var *> Inline method invocation

COBOL does not provide a way to hide methods. Class data can be hidden, however, by declaring it without a [[property_(programming)|

Compatibility issues

COBOL was intended to be a highly portable, "common" language. However, by 2001, around 300 dialects had been created.[14] One source of dialects was the standard itself: the 1974 standard was composed of one mandatory nucleus and eleven functional modules, each containing two or three levels of support. This permitted 104,976 official variants.[15]

COBOL-85 was not fully compatible with earlier versions, and its development was controversial. Joseph T. Brophy, the CIO of Travelers Insurance, spearheaded an effort to inform COBOL users of the heavy reprogramming costs of implementing the new standard. As a result, the ANSI COBOL Committee received more than 2,200 letters from the public, mostly negative, requiring the committee to make changes. On the other hand, conversion to COBOL-85 was thought to increase productivity in future years, thus justifying the conversion costs.

Verbose syntax

COBOL syntax has often been criticized for its verbosity. Proponents say that this was intended to make the code self-documenting, easing program maintenance. COBOL was also intended to be easy for programmers to learn and use, while still being readable to non-technical staff such as managers. The desire for readability led to the use of English-like syntax and structural elements, such as nouns, verbs, clauses, sentences, sections, and divisions. Yet by 1984, maintainers of COBOL programs were struggling to deal with "incomprehensible" code and the main changes in COBOL-85 were there to help ease maintenance.[16]

Jean Sammet, a short-range committee member, noted that "little attempt was made to cater to the professional programmer, in fact people whose main interest is programming tend to be very unhappy with COBOL" which she attributed to COBOL's verbose syntax.

Isolation from the computer science community

The COBOL community has always been isolated from the computer science community. No academic computer scientists participated in the design of COBOL: all of those on the committee came from commerce or government. Computer scientists at the time were more interested in fields like numerical analysis, physics and system programming than the commercial file-processing problems which COBOL development tackled. Jean Sammet attributed COBOL's unpopularity to an initial "snob reaction" due to its inelegance, the lack of influential computer scientists participating in the design process and a disdain for business data processing. The COBOL specification used a unique "notation", or metalanguage, to define its syntax rather than the new Backus–Naur form which the committee did not know of. This resulted in "severe" criticism.

Later, COBOL suffered from a shortage of material covering it; it took until 1963 for introductory books to appear (with Richard D. Irwin publishing a college textbook on COBOL in 1966).[17] By 1985, there were twice as many books on Fortran and four times as many on BASIC as on COBOL in the Library of Congress. University professors taught more modern, state-of-the-art languages and techniques instead of COBOL which was said to have a "trade school" nature. Donald Nelson, chair of the CODASYL COBOL committee, said in 1984 that "academics ... hate COBOL" and that computer science graduates "had 'hate COBOL' drilled into them".[18] A 2013 poll by Micro Focus found that 20% of university academics thought COBOL was outdated or dead and that 55% believed their students thought COBOL was outdated or dead. The same poll also found that only 25% of academics had COBOL programming on their curriculum even though 60% thought they should teach it.[19] In contrast, in 2003, COBOL featured in 80% of information systems curricula in the United States, the same proportion as C++ and Java.

There was also significant condescension towards COBOL in the business community from users of other languages, for example FORTRAN or assembler, implying that COBOL could be used only for non-challenging problems.

Concerns about the design process

Doubts have been raised about the competence of the standards committee. Short-term committee member Howard Bromberg said that there was "little control" over the development process and that it was "plagued by discontinuity of personnel and ... a lack of talent." Jean Sammet and Jerome Garfunkel also noted that changes introduced in one revision of the standard would be reverted in the next, due as much to changes in who was in the standard committee as to objective evidence.[20]

COBOL standards have repeatedly suffered from delays: COBOL-85 arrived five years later than hoped,[21] COBOL 2002 was five years late,[22] and COBOL 2014 was six years late.[23][24] To combat delays, the standard committee allowed the creation of optional addenda which would add features more quickly than by waiting for the next standard revision. However, some committee members raised concerns about incompatibilities between implementations and frequent modifications of the standard.[25]

Influences on other languages

COBOL's data structures influenced subsequent programming languages. Its record and file structure influenced PL/I and Pascal, and the REDEFINES clause was a predecessor to Pascal's variant records. Explicit file structure definitions preceded the development of database management systems and aggregated data was a significant advance over Fortran's arrays. PICTURE data declarations were incorporated into PL/I, with minor changes.

COBOL's facility, although considered "primitive",[26] influenced the development of include directives.

The focus on portability and standardization meant programs written in COBOL could be portable and facilitated the spread of the language to a wide variety of hardware platforms and operating systems.This can be seen in:

-   -   -   Additionally, the well-defined division structure restricts the definition of external references to the Environment Division, which simplifies platform changes in particular.[27]


See also

-   Alphabetical list of programming languages
-   BLIS/COBOL
-   COBOL ReSource
-   CODASYL
-   Comparison of programming languages
-   Generational list of programming languages#COBOL based
-   List of compilers#COBOL compilers


Notes


References

Citations

Sources

-   -   -

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-

COBOL Category:.NET programming languages Category:1959 software Category:Class-based programming languages Category:Computer-related introductions in 1959 Category:Cross-platform software Category:Object-oriented programming languages Category:Procedural programming languages Category:Programming languages created by women Category:Programming languages created in 1959 Category:Programming languages with an ISO standard Category:Statically typed programming languages Category:Structured programming languages

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] {{ cite web | url = https://www.tpr.org/post/how-cobol-still-powers-global-economy-60-years-old | title = How COBOL Still Powers The Global Economy At 60 Years Old | access-date = 19 July 2019 | first = Paul | last = Flahive | date = 24 May 2019 | website = Texas Public Radio | quote = (Grace Hopper) Nicknamed Grandma Cobol, the code was based on some of her earlier work. She said — after hearing the rumors — one of her collaborators went out and bought a granite tombstone. “He had the word COBOL cut in the front of it. Then he shipped it express collect to Mr. Phillips in the pentagon.” The prank on Charles Phillips, a leader for the project at the defense department, got the attention of the powers that be and was a turning point she said. COBOL would go on to become the most widely used and longest lasting computer languages in history. | format = html | archive-url = https://web.archive.org/web/20190524035248/https://www.tpr.org/post/how-cobol-still-powers-global-economy-60-years-old | archive-date = 24 May 2019 | df = dmy-all }}

[11]

[12]

[13]

[14]

[15]

[16]

[17] https://books.bibliopolis.com/main/find/2200821/COBOL-Logic-and-Programming-third-edition-1974-McCameron-Fritz-oldcomputerbooks-com.html

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