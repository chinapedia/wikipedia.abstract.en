MUMPS ("Massachusetts General Hospital Utility Multi-Programming System"), or M, is a general-purpose computer programming language originally designed in 1966 for the healthcare industry. Its differentiating feature is its "built-in" database, enabling high-level access to disk storage using simple symbolic program variables and subscripted arrays; similar to the variables used by most languages to access main memory.[1]

It continues to be used today by many large hospitals and banks to provide high-throughput transaction data processing.


History

Genesis

MUMPS was developed by Neil Pappalardo, Robert Greenes, and Curt Marble in Dr. Octo Barnett's animal lab at the Massachusetts General Hospital (MGH) in Boston during 1966 and 1967.

The original MUMPS system was, like Unix a few years later, built on a spare DEC PDP-7. Octo Barnett and Neil Pappalardo were also involved with MGH's planning for a Hospital Information System, obtained a backward compatible PDP-9, and began using MUMPS in the admissions cycle and laboratory test reporting. MUMPS was then an interpreted language, yet even then, incorporated a hierarchical database file system to standardize interaction with the data.

Some aspects of MUMPS can be traced from Rand Corporation's JOSS through BBN's TELCOMP and STRINGCOMP. The MUMPS team deliberately chose to include portability between machines as a design goal. Another feature, not widely supported for machines of the era, in operating systems or in computer hardware, was multitasking, which was also built into the language itself.

The portability was soon useful, as MUMPS was shortly adapted to a DEC PDP-15, where it lived for some time. MUMPS was developed with the support of a government research grant, and so MUMPS was released to the public domain (no longer a requirement for grants), and was soon ported to a number of other systems including the popular DEC PDP-8, the Data General Nova and the DEC PDP-11 and the Artronix PC12 minicomputer. Word about MUMPS spread mostly through the medical community, and by the early 1970s was in widespread use, often being locally modified for their own needs.

1970s

By the early 1970s, there were many and varied implementations of MUMPS on a range of hardware platforms. The most widespread was DEC's MUMPS-11 on the PDP-11, and MEDITECH's MIIS. In 1972, many MUMPS users attended a conference which standardized the then-fractured language, and created the MUMPS USERS GROUP and MUMPS DEVELOPMENT COMMITTEE (MDC) to do so. These efforts proved successful; a standard was complete by 1974, and was approved, on September 15, 1977, as ANSI standard, X11.1-1977. At about the same time DEC launched DSM-11 (Digital Standard MUMPS) for the PDP-11. This quickly dominated the market, and became the reference implementation of the time. Also, InterSystems sold ISM-11 for the PDP-11 (which was identical to DSM-11).

1980s

During the early 1980s several vendors brought MUMPS-based platforms that met the ANSI standard to market. The most significant were:

-   Digital Equipment Corporation with DSM (Digital Standard MUMPS). DSM-11 was superseded by VAX/DSM for the VAX/VMS platform, and that was ported to the Alpha in two variants: DSM FOR OPENVMS, and as DSM FOR ULTRIX.
-   InterSystems with ISM (InterSystems M) on VMS (M/VX), M/11+ on the PDP-11 platform, M/PC on MS-DOS, M/DG on Data General, M/VM on IBM VM/CMS, and M/UX on various Unixes.

Other companies developed important MUMPS implementations:

-   Greystone Technology Corporation with a compiled version called GT.M.
-   DataTree Inc. with an Intel PC based product called DTM.
-   Micronetics Design Corporation with a product line called MSM for UNIX and Intel PC platforms (later ported to IBM's VM operating system, VAX-VMS platforms and Alpha-VMS platforms).
-   Computer Consultants (later renamed MGlobal), a Houston-based company originally created CCSM on 6800, then 6809, and eventually a port to the 68000, which later became MACMUMPS, a Mac OS based product. They also worked on the MGM MUMPS implementation. MGlobal also ported their implementation to the DOS platform. MGlobal MUMPS was the first commercial MUMPS for the IBM PC and the only implementation for the classic Mac OS.
-   Tandem Computers developed an implementation for their fault-tolerant computers.{{ cite web |url=http://h17007.www1.hp.com/docs/enterprise/servers/nonstop/SPML_20_January_2012_final.pdf

|accessdate= 2014-05-17 |title= HP NonStop Servers, Software Product Maintenance List, Effective Date: January 2012 |publisher= Hewlett-Packard Development Company, L.P. |date=2012-01-20 |page=32 |quote= Description ... The date a product was classified as ACTIVE MATURE LIMITED ... MUMPS Oct-80 Dec-94 Dec-94 }}

This period also saw considerable MDC activity. The second revision of the ANSI standard for MUMPS (X11.1-1984) was approved on November 15, 1984.

1990s

-   On November 11, 1990 the third revision of the ANSI standard (X11.1-1990) was approved.
-   In 1992 the same standard was also adopted as ISO standard 11756-1992. Use of M as an alternative name for the language was approved around the same time.
-   On December 8, 1995 the fourth revision of the standard (X11.1-1995) was approved by ANSI, and by ISO in 1999 as ISO 11756:1999. The MDC finalized a further revision to the standard in 1998 but this has not been presented to ANSI for approval.
-   InterSystems' Open M for Windows/NT was released, as well as Open M for Alpha/OSF and Alpha/VMS (their first 64-bit implementations, for the 64-bit Alpha processor).
-   In 1997 Unicode support was added in InterSystems’ Caché 3.0

2000s

-   By 2000, the middleware vendor InterSystems had become the dominant player in the MUMPS market with the purchase of several other vendors. Initially they acquired DataTree Inc. in the early 1990s. And, on December 30, 1995, InterSystems acquired the DSM product line from DEC.[2] InterSystems consolidated these products into a single product line, branding them, on several hardware platforms, as OPENM. In 1997, InterSystems launched a new product named Caché. This was based on their ISM product, but with influences from the other implementations. Micronetics Design Corporation assets were also acquired by InterSystems on June 21, 1998. InterSystems remains the dominant MUMPS vendor, selling Caché to MUMPS developers who write applications for a variety of operating systems.
-   Greystone Technology Corporation's GT.M implementation was sold to Sanchez Computer Associates (now part of FIS) in the mid-1990s. On November 7, 2000 Sanchez made GT.M for Linux available under the GPL license[3] and on October 28, 2005 GT.M for OpenVMS and Tru64 UNIX were also made available under the AGPL license.[4] GT.M continues to be available on other UNIX platforms under a traditional license.
-   During 2000, Ray Newman and others released MUMPS V1, an implementation of MUMPS (initially on FreeBSD) similar to DSM-11. MUMPS V1 has since been ported to Linux, Mac OS X and Windows (using cygwin).[5] Initially only for the x86 CPU, MUMPS V1 has now been ported to the Raspberry Pi.
-   The newest implementation of MUMPS, released in April 2002, is an MSM derivative called M21 from the Real Software Company of Rugby, UK.
-   There are also several open source implementations of MUMPS, including some research projects. The most notable of these is Mumps/II, by Dr. Kevin O'Kane (Professor Emeritus, University of Northern Iowa) and students' project. Dr. O'Kane has also ported the interpreter to Mac OS X.[6]
-   One of the original creators of the MUMPS language, Neil Pappalardo, early founded a company called MEDITECH. They extended and built on the MUMPS language, naming the new language MIIS (and later, another language named MAGIC). Unlike InterSystems, MEDITECH no longer sells middleware, so MIIS and MAGIC are now only used internally at MEDITECH.
-   On 6 January 2005, and later again on 25 June 2010, ISO re-affirmed its MUMPS-related standards: ISO/IEC 11756:1999, language standard, ISO/IEC 15851:1999, Open MUMPS Interconnect and ISO/IEC 15852:1999, MUMPS Windowing Application Programmers Interface.


Current users of MUMPS applications

The US Department of Veterans Affairs (formerly the Veterans Administration) was one of the earliest major adopters of the MUMPS language. Their development work (and subsequent contributions to the free MUMPS application codebase) was an influence on many medical users worldwide. In 1995, the Veterans Affairs' patient Admission/Tracking/Discharge system, Decentralized Hospital Computer Program (DHCP) was the recipient of the Computerworld Smithsonian Award for best use of Information Technology in Medicine. In July 2006, the Department of Veterans Affairs (VA) / Veterans Health Administration (VHA) was the recipient of the Innovations in American Government Award presented by the Ash Institute of the John F. Kennedy School of Government at Harvard University for its extension of DHCP into the Veterans Health Information Systems and Technology Architecture (VistA). Nearly the entire VA hospital system in the United States, the Indian Health Service, and major parts of the Department of Defense CHCS hospital system use MUMPS databases for clinical data tracking. In 2015 the Department of Defense awarded a 10 year contract to Leidos, Cerner, and Accenture to replace CHCS.[7] In 2017 the Veterans Health Administration (VHA) announced that it would replace VistA with Cerner by 2024 or 2025. [8] In 2019 the VHA announced that it would also replace it's Epic Systems online appointment scheduling system with one from Cerner by 2024. [9]

Other healthcare IT companies using MUMPS include Epic, MEDITECH, GE Healthcare (formerly IDX Systems and Centricity), AmeriPath (part of Quest Diagnostics), Care Centric, Allscripts, Coventry Healthcare, EMIS, and Sunquest Information Systems (formerly Misys Healthcare[10]). Many reference laboratories, such as DASA, Quest Diagnostics,[11] and Dynacare, use MUMPS software written by or based on Antrim Corporation code. Antrim was purchased by Misys Healthcare (now Sunquest Information Systems) in 2001.[12]

MUMPS is also widely used in financial applications. MUMPS gained an early following in the financial sector and is in use at many banks and credit unions. It is used by Ameritrade, the largest online trading service in the US, with over 12 billion transactions per day, as well as by the Bank of England and Barclays Bank, among others.[13][14][15]

Since 2005, the use of MUMPS has been either in the form of GT.M or InterSystems Caché. The latter is being aggressively marketed by InterSystems and has had success in penetrating new markets, such as telecommunications, in addition to existing markets. The European Space Agency announced on May 13, 2010 that it will use the InterSystems Caché database to support the Gaia mission. This mission aims to map the Milky Way with unprecedented precision.[16]


Overview

MUMPS is a language intended for and designed to build database applications. Secondary language features were included to help programmers make applications using minimal computing resources. The original implementations were interpreted, though modern implementations may be fully or partially compiled. Individual "programs" run in memory "partitions". Early MUMPS memory partitions were limited to 2048 bytes so aggressive abbreviation greatly aided multi-programming on severely resource limited hardware, because more than one MUMPS job could fit into the very small memories extant in hardware at the time. The ability to provide multi-user systems was another language design feature. The word "Multi-Programming" in the acronym points to this. Even the earliest machines running MUMPS supported multiple jobs running at the same time. With the change from mini-computers to micro-computers a few years later, even a "single user PC" with a single 8-bit CPU and 16K or 64K of memory could support multiple users, who could connect to it from (non-graphical) video display terminals.

Since memory was tight originally, the language design for MUMPS valued very terse code. Thus, every MUMPS command or function name could be abbreviated from one to three letters in length, e.g. Quit (exit program) as Q, $P = $Piece function, R = Read command, $TR = $Translate function. Spaces and end-of-line markers are significant in MUMPS because line scope promoted the same terse language design. Thus, a single line of program code could express, with few characters, an idea for which other programming languages could require 5 to 10 times as many characters. Abbreviation was a common feature of languages designed in this period (e.g., FOCAL-69, early BASICs such as Tiny BASIC, etc.). An unfortunate side effect of this, coupled with the early need to write minimalist code, was that MUMPS programmers routinely did not comment code and used extensive abbreviations. This meant that even an expert MUMPS programmer could not just skim through a page of code to see its function but would have to analyze it line by line.

Database interaction is transparently built into the language. The MUMPS language provides a hierarchical database made up of persistent sparse arrays, which is implicitly "opened" for every MUMPS application. All variable names prefixed with the caret character ("^") use permanent (instead of RAM) storage, will maintain their values after the application exits, and will be visible to (and modifiable by) other running applications. Variables using this shared and permanent storage are called _Globals_ in MUMPS, because the scoping of these variables is "globally available" to all jobs on the system. The more recent and more common use of the name "global variables" in other languages is a more limited scoping of names, coming from the fact that unscoped variables are "globally" available to any programs running in the same process, but not shared among multiple processes. The MUMPS Storage mode (i.e. Globals stored as persistent sparse arrays), gives the MUMPS database the characteristics of a document-oriented database.[17]

All variable names which are not prefixed with caret character ("^") are temporary and private. Like global variables, they also have a hierarchical storage model, but are only "locally available" to a single job, thus they are called "locals". Both "globals" and "locals" can have child nodes (called _subscripts_ in MUMPS terminology). Subscripts are not limited to numerals—any ASCII character or group of characters can be a subscript identifier. While this is not uncommon for modern languages such as Perl or JavaScript, it was a highly unusual feature in the late 1970s. This capability was not universally implemented in MUMPS systems before the 1984 ANSI standard, as only canonically numeric subscripts were required by the standard to be allowed.[18] Thus, the variable named 'Car' can have subscripts "Door", "Steering Wheel" and "Engine", each of which can contain a value and have subscripts of their own. The variable ^Car("Door") could have a nested variable subscript of "Color" for example. Thus, you could say

    SET ^Car("Door","Color")="BLUE"

to modify a nested child node of ^Car. In MUMPS terms, "Color" is the 2nd subscript of the variable ^Car (both the names of the child-nodes and the child-nodes themselves are likewise called subscripts). Hierarchical variables are similar to objects with properties in many object oriented languages. Additionally, the MUMPS language design requires that all subscripts of variables are automatically kept in sorted order. Numeric subscripts (including floating-point numbers) are stored from lowest to highest. All non-numeric subscripts are stored in alphabetical order following the numbers. In MUMPS terminology, this is _canonical order_. By using only non-negative integer subscripts, the MUMPS programmer can emulate the arrays data type from other languages. Although MUMPS does not natively offer a full set of DBMS features such as mandatory schemas, several DBMS systems have been built on top of it that provide application developers with flat-file, relational and network database features.

Additionally, there are built-in operators which treat a delimited string (e.g., comma-separated values) as an array. Early MUMPS programmers would often store a structure of related information as a delimited string, parsing it after it was read in; this saved disk access time and offered considerable speed advantages on some hardware.

MUMPS has no data types. Numbers can be treated as strings of digits, or strings can be treated as numbers by numeric operators (_coerced_, in MUMPS terminology). Coercion can have some odd side effects, however. For example, when a string is coerced, the parser turns as much of the string (starting from the left) into a number as it can, then discards the rest. Thus the statement IF 20<"30 DUCKS" is evaluated as TRUE in MUMPS.

Other features of the language are intended to help MUMPS applications interact with each other in a multi-user environment. Database locks, process identifiers, and atomicity of database update transactions are all required of standard MUMPS implementations.

In contrast to languages in the C or Wirth traditions, some space characters between MUMPS statements are significant. A single space separates a command from its argument, and a space, or newline, separates each argument from the next MUMPS token. Commands which take no arguments (e.g., ELSE) require two following spaces. The concept is that one space separates the command from the (nonexistent) argument, the next separates the "argument" from the next command. Newlines are also significant; an IF, ELSE or FOR command processes (or skips) everything else till the end-of-line. To make those statements control multiple lines, you must use the DO command to create a code block.


"Hello, World!" example

A simple Hello world program in MUMPS might be:

    hello()
      write "Hello, World!",!
      quit

and would be run from the MUMPS command line with the command do ^hello. Since MUMPS allows commands to be strung together on the same line, and since commands can be abbreviated to a single letter, this routine could be made more compact:

    hello() w "Hello, World!",! q

The ',!' after the text generates a newline.


Summary of key language features

ANSI X11.1-1995 gives a complete, formal description of the language; an annotated version of this standard is available online.[19]

DATA TYPES: There is one universal datatype, which is implicitly coerced to string, integer, or floating-point datatypes as context requires.

BOOLEANS (called _truthvalues_ in MUMPS): In IF commands and other syntax that has expressions evaluated as conditions, any string value is evaluated as a numeric value, and if that is a nonzero value, then it is interpreted as True. a<b yields 1 if a is less than b, 0 otherwise.

DECLARATIONS: None. All variables are dynamically created at the first time a value is assigned.

LINES: are important syntactic entities, unlike their status in languages patterned on C or Pascal. Multiple statements per line are allowed and are common. The scope of any IF, ELSE, and FOR command is "the remainder of current line."

CASE SENSITIVITY: Commands and intrinsic functions are case-insensitive. In contrast, variable names and labels are case-sensitive. There is no special meaning for upper vs. lower-case and few widely followed conventions. The percent sign (%) is legal as first character of variables and labels.

POSTCONDITIONALS: execution of almost any command can be controlled by following it with a colon and a truthvalue expression. SET:N<10 A="FOO" sets A to "FOO" if N is less than 10; DO:N>100 PRINTERR, performs PRINTERR if N is greater than 100. This construct provides a conditional whose scope is less than a full line.

ABBREVIATION: You can abbreviate nearly all commands and native functions to one, two, or three characters.

RESERVED WORDS: None. Since MUMPS interprets source code by context, there is no need for reserved words. You may use the names of language commands as variables, so the following is perfectly legal MUMPS code:

    GREPTHIS()
           NEW SET,NEW,THEN,IF,KILL,QUIT SET IF="KILL",SET="11",KILL="l1",QUIT="RETURN",THEN="KILL"
           IF IF=THEN DO THEN
           QUIT:$QUIT QUIT QUIT ; (quit)
    THEN  IF IF,SET&KILL SET SET=SET+KILL QUIT

MUMPS can be made more obfuscated by using the contracted operator syntax, as shown in this terse example derived from the example above:

    GREPTHIS()
           N S,N,T,I,K,Q S I="K",S="11",K="l1",Q="R",T="K"
           I I=T D T
           Q:$Q Q Q
    T  I I,S&K S S=S+K Q

ARRAYS: are created dynamically, stored as B-trees, are sparse (i.e. use almost no space for missing nodes), can use any number of subscripts, and subscripts can be strings or numeric (including floating point). Arrays are always automatically stored in sorted order, so there is never any occasion to sort, pack, reorder, or otherwise reorganize the database. Built in functions such as $DATA, $ORDER, $NEXT(deprecated) and $QUERY functions provide efficient examination and traversal of the fundamental array structure, on disk or in memory.

    for i=10000:1:12345 set sqtable(i)=i*i
    set address("Smith","Daniel")="dpbsmith@world.std.com"

LOCAL ARRAYS: variable names not beginning with caret (i.e. "^") are stored in memory by process, are private to the creating process, and expire when the creating process terminates. The available storage depends on implementation. For those implementations using partitions, it is limited to the partition size, (A small partition might be 32K). For other implementations, it may be several megabytes.

GLOBAL ARRAYS: ^abc, ^def. These are stored on disk, are available to all processes, and are persistent when the creating process terminates. Very large globals (for example, hundreds of gigabytes) are practical and efficient in most implementations. This is MUMPS' main "database" mechanism. It is used instead of calling on the operating system to create, write, and read files.

INDIRECTION: in many contexts, @VBL can be used, and effectively substitutes the contents of VBL into another MUMPS statement. SET XYZ="ABC" SET @XYZ=123 sets the variable ABC to 123. SET SUBROU="REPORT" DO @SUBROU performs the subroutine named REPORT. This substitution allows for lazy evaluation and late binding as well as effectively the operational equivalent of "pointers" in other languages.

PIECE FUNCTION: This breaks variables into segmented pieces guided by a user specified separator string (sometimes called a "delimiter"). Those who know awk will find this familiar. $PIECE(STRINGVAR,"^",3) means the "third caret-separated piece of STRINGVAR." The piece function can also appear as an assignment (SET command) target.

$PIECE("world.std.com",".",2) yields "std".

After

    SET X="dpbsmith@world.std.com"

SET $P(X,"@",1)="office" causes X to become "office@world.std.com" (note that $P is equivalent to $PIECE and could be written as such).

ORDER FUNCTION: This function treats its input as a structure, and finds the next index that exists which has the same structure except for the last subscript. It returns the sorted value that is ordered after the one given as input. (This treats the array reference as a content-addressable data rather than an address of a value)

    Set stuff(6)="xyz",stuff(10)=26,stuff(15)=""

$Order(stuff("")) yields 6, $Order(stuff(6)) yields 10, $Order(stuff(8)) yields 10, $Order(stuff(10)) yields 15, $Order(stuff(15)) yields "".

    Set i="" For  Set i=$O(stuff(i)) Quit:i=""  Write !,i,10,stuff(i)

Here, the argument-less _For_ repeats until stopped by a terminating _Quit_. This line prints a table of i and stuff(i) where i is successively 6, 10, and 15.

For iterating the database, the Order function returns the next key to use.

    GTM>S n=""
    GTM>S n=$order(^nodex(n))
    GTM>zwr n
    n=" building"
    GTM>S n=$order(^nodex(n))
    GTM>zwr n
    n=" name:gd"
    GTM>S n=$order(^nodex(n))
    GTM>zwr n
    n="%kml:guid"

MULTI-USER/MULTI-TASKING/MULTI-PROCESSOR: MUMPS supports multiple simultaneous users and processes even when the underlying operating system does not (e.g., MS-DOS). Additionally, there is the ability to specify an environment for a variable, such as by specifying a machine name in a variable (as in SET ^|"DENVER"|A(1000)="Foo"), which can allow you to access data on remote machines.


Criticism

Some aspects of MUMPS syntax differ strongly from that of more modern languages, which can cause confusion. Whitespace is not allowed within expressions, as it ends a statement: 2 + 3 is an error, and must be written 2+3. All operators have the same precedence and are left-associative (2+3*10 evaluates to 50). The operators for "less than or equal to" and "greater than or equal to" are '> and '< (that is, the boolean negation operator ' plus a strict comparison operator). Periods (.) are used to indent the lines in a DO block, not whitespace. The ELSE command does not need a corresponding IF, as it operates by inspecting the value in the builtin system variable $test.

MUMPS scoping rules are more permissive than other modern languages. Declared local variables are scoped using the stack. A routine can normally see all declared locals of the routines below it on the call stack, and routines cannot prevent routines they call from modifying their declared locals. By contrast, undeclared variables (variables created by using them, rather than declaration) are in scope for all routines running in the same process, and remain in scope until the program exits.


"MUMPS" vs. "M" naming debate

All of the following positions can be, and have been, supported by knowledgeable people at various times:

-   The language's name became M in 1993 when the M Technology Association adopted it.
-   The name became M on December 8, 1995, with the approval of ANSI X11.1-1995
-   Both M _and_ MUMPS are officially accepted names.
-   M is only an "alternative name" or "nickname" for the language, and MUMPS is still the official name.

Some of the contention arose in response to strong M advocacy on the part of one commercial interest, InterSystems, whose chief executive disliked the name MUMPS and felt that it represented a serious marketing obstacle. Thus, favoring M to some extent became identified as alignment with InterSystems. The dispute also reflected rivalry between organizations (the M Technology Association, the MUMPS Development Committee, the ANSI and ISO Standards Committees) as to who determines the "official" name of the language. Some writers have attempted to defuse the issue by referring to the language as _M[UMPS]_, square brackets being the customary notation for optional syntax elements. A leading authority, and the author of an open source MUMPS implementation, Professor Kevin O'Kane, uses only 'MUMPS'.

The most recent standard (ISO/IEC 11756:1999, re-affirmed on 25 June 2010), still mentions both M and MUMPS as officially accepted names.

Trademark status

Massachusetts General Hospital registered "MUMPS" as a trademark with the USPTO on November 28, 1971, and renewed it on November 16, 1992 - but let it expire on August 30, 2003.[20]


Comparison to Pick

MUMPS invites comparison with the Pick operating system.[21] Similarities include:

-   Both systems are built on the efficient implementation of large, sparse, string-indexed arrays;
-   Both historically commingled the language and the OS;
-   Both have a similar domain of applicability.


See also

-   PSL an extension to MUMPS
-   Caché ObjectScript an object oriented extension to MUMPS from a prominent MUMPS vendor
-   GT.M an implementation of M
-   InterSystems Caché


References


Further reading

-   Walters, Richard (1989). "ABCs of MUMPS. 1989: Butterworth-Heinemann, .
-   Walters, Richard (1997). _M Programming: A Comprehensive Guide._ Digital Press. .
-   Lewkowicz, John. _The Complete MUMPS : An Introduction and Reference Manual for the MUMPS Programming Language._
-   Kirsten, Wolfgang, et al. (2003) _Object-Oriented Application Development Using the Caché Postrelational Database_
-   Martínez de Carvajal Hedrich, Ernesto (1993). "El Lenguaje MUMPS". Completa obra en castellano sobre el lenguaje Mumps. . Distribuido exclusivamente por su author (ecarvajal@hedrich.es)
-   O'Kane, K.C.; _A language for implementing information retrieval software,_ Online Review, Vol 16, No 3, pp 127–137 (1992).
-   O'Kane, K.C.; and McColligan, E. E., _A case study of a Mumps intranet patient record,_ Journal of the Healthcare Information and Management Systems Society, Vol 11, No 3, pp 81–95 (1997).
-   O'Kane, K.C.; and McColligan, E.E., _A Web Based Mumps Virtual Machine,_ Proceedings of the American Medical Informatics Association 1997
-   O'Kane, K.C., The Mumps Programming Language, Createspace, , 120 pages (2010).


External links

-   M Technology and MUMPS Language FAQ (1999) General source; also specific source for the Poitras quote re the origin of the 1840 epoch.
-   Mumps Programming Language Interpreter (GPL) by Kevin O'Kane, University of Northern Iowa
-   MDC - MUMPS Development Committee
-   The Annotated M{UMPS} Standards
-   MUMPS by Example - out of print book by Ed de Moel. Much of the language syntax is detailed here, with examples of usage.
-   MUMPS Systems - Source Forge index
-   M Links at Hardhats.org
-   M21 - An ANSI M(UMPS) Implementation
-   EsiObjects An Object Oriented extension of MUMPS
-   M/DB An Open Source MUMPS-based API-compatible alternative to SimpleDB
-   MiniM Database Servee A MUMPS Implementation
-   Development and Operation of a MUMPS Laboratory Information System: A Decade's Experience at Johns Hopkins Hospital
-   IDEA Systems' technology solutions based on Caché and GT.M
-   MUMPS documentation, topics, and resources (mixed Czech and English)

Category:MUMPS programming language Category:Dynamically typed programming languages Category:Data-centric programming languages Category:Persistent programming languages Category:Massachusetts General Hospital Category:Scripting languages Category:PDP-11 Category:ISO standards Category:IEC standards Category:Health informatics Category:Data processing Category:Programming languages with an ISO standard

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

[21] A 1980's "shootout" had Pick "still going after 30" minutes whereas MUMPS had finished sort 100,000 "in less than a minute."