SQL ( _S-Q-L_,[1] "sequel"; STRUCTURED QUERY LANGUAGE)[2][3][4][5] is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data where there are relations between different entities/variables of the data. SQL offers two main advantages over older read/write APIs like ISAM or VSAM. First, it introduced the concept of accessing many records with one single command; and second, it eliminates the need to specify _how_ to reach a record, e.g. with or without an index.

Originally based upon relational algebra and tuple relational calculus, SQL consists of many types of statements,[6] which may be informally classed as sublanguages, commonly: a data query language (DQL), a data definition language (DDL), a data control language (DCL), and a data manipulation language (DML).[7] The scope of SQL includes data query, data manipulation (insert, update and delete), data definition (schema creation and modification), and data access control. Although SQL is often described as, and to a great extent is, a declarative language (4GL), it also includes procedural elements.

SQL was one of the first commercial languages for Edgar F. Codd's relational model. The model was described in his influential 1970 paper, "A Relational Model of Data for Large Shared Data Banks".[8] Despite not entirely adhering to the relational model as described by Codd, it became the most widely used database language.[9][10]

SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987.[11] Since then, the standard has been revised to include a larger set of features. Despite the existence of such standards, most SQL code is not completely portable among different database systems without adjustments.


History

SQL was initially developed at IBM by Donald D. Chamberlin and Raymond F. Boyce after learning about the relational model from Ted Codd[12] in the early 1970s.[13] This version, initially called _SEQUEL_ (_Structured English Query Language_), was designed to manipulate and retrieve data stored in IBM's original quasi-relational database management system, System R, which a group at IBM San Jose Research Laboratory had developed during the 1970s.[14]

Chamberlin and Boyce's first attempt of a relational database language was Square, but it was difficult to use due to subscript notation. After moving to the San Jose Research Laboratory in 1973, they began work on SEQUEL.[15] The acronym SEQUEL was later changed to SQL because "SEQUEL" was a trademark of the UK-based Hawker Siddeley Dynamics Engineering Limited company.[16]

After testing SQL at customer test sites to determine the usefulness and practicality of the system, IBM began developing commercial products based on their System R prototype including System/38, SQL/DS, and DB2, which were commercially available in 1979, 1981, and 1983, respectively.[17]

In the late 1970s, Relational Software, Inc. (now Oracle Corporation) saw the potential of the concepts described by Codd, Chamberlin, and Boyce, and developed their own SQL-based RDBMS with aspirations of selling it to the U.S. Navy, Central Intelligence Agency, and other U.S. government agencies. In June 1979, Relational Software, Inc. introduced the first commercially available implementation of SQL, Oracle V2 (Version2) for VAX computers.

By 1986, ANSI and ISO standard groups officially adopted the standard "Database Language SQL" language definition. New versions of the standard were published in 1989, 1992, 1996, 1999, 2003, 2006, 2008, 2011,[18] and most recently, 2016.


Design

SQL deviates in several ways from its theoretical foundation, the relational model and its tuple calculus. In that model, a table is a set of tuples, while in SQL, tables and query results are lists of rows: the same row may occur multiple times, and the order of rows can be employed in queries (e.g. in the LIMIT clause).

Critics argue that SQL should be replaced with a language that strictly returns to the original foundation: for example, see _The Third Manifesto_. However, no known proof exists that such uniqueness cannot be added to SQL itself, or at least a variation of SQL. In other words, it's quite possible that SQL can be "fixed" or at least improved in this regard such that the industry may not have to switch to a completely different query language to obtain uniqueness. Debate on this remains open.


Syntax

|width=500|caption=A chart showing several of the SQL language elements that compose a single statement}}

The SQL language is subdivided into several language elements, including:

-   _Clauses_, which are constituent components of statements and queries. (In some cases, these are optional.)[19]
-   _Expressions_, which can produce either scalar values, or tables consisting of columns and rows of data
-   _Predicates_, which specify conditions that can be evaluated to SQL three-valued logic (3VL) (true/false/unknown) or Boolean truth values and are used to limit the effects of statements and queries, or to change program flow.
-   _Queries_, which retrieve the data based on specific criteria. This is an important element of _SQL_.
-   _Statements_, which may have a persistent effect on schemata and data, or may control transactions, program flow, connections, sessions, or diagnostics.
    -   SQL statements also include the semicolon (";") statement terminator. Though not required on every platform, it is defined as a standard part of the SQL grammar.
-   _Insignificant whitespace_ is generally ignored in SQL statements and queries, making it easier to format SQL code for readability.


Procedural extensions

SQL is designed for a specific purpose: to query data contained in a relational database. SQL is a set-based, declarative programming language, not an imperative programming language like C or BASIC. However, extensions to Standard SQL add procedural programming language functionality, such as control-of-flow constructs. These include:

  Source                 Common name       Full name
  ---------------------- ----------------- -----------------------------------------------------------------------------------------------
  ANSI/ISO Standard      SQL/PSM           SQL/Persistent Stored Modules
  Interbase / Firebird   PSQL              Procedural SQL
  IBM DB2                SQL PL            SQL Procedural Language (implements SQL/PSM)
  IBM Informix           SPL               Stored Procedural Language
  IBM Netezza            NZPLSQL[20]       (based on Postgres PL/pgSQL)
  Invantive              PSQL[21]          Invantive Procedural SQL (implements SQL/PSM and PL/SQL)
  MariaDB                SQL/PSM, PL/SQL   SQL/Persistent Stored Module (implements SQL/PSM), Procedural Language/SQL (based on Ada)[22]

  Microsoft / Sybase     T-SQL             Transact-SQL
  Mimer SQL              SQL/PSM           SQL/Persistent Stored Module (implements SQL/PSM)
  MySQL                  SQL/PSM           SQL/Persistent Stored Module (implements SQL/PSM)
  MonetDB                SQL/PSM           SQL/Persistent Stored Module (implements SQL/PSM)
  NuoDB                  SSP               Starkey Stored Procedures
  Oracle                 PL/SQL            Procedural Language/SQL (based on Ada)
  PostgreSQL             PL/pgSQL          Procedural Language/PostgreSQL Structured Query Language (implements SQL/PSM)
  SAP R/3                ABAP              Advanced Business Application Programming
  SAP HANA               SQLScript         SQLScript
  Sybase                 Watcom-SQL        SQL Anywhere Watcom-SQL Dialect
  Teradata               SPL               Stored Procedural Language

In addition to the standard SQL/PSM extensions and proprietary SQL extensions, procedural and object-oriented programmability is available on many SQL platforms via DBMS integration with other languages. The SQL standard defines SQL/JRT extensions (SQL Routines and Types for the Java Programming Language) to support Java code in SQL databases. SQL Server 2005 uses the SQLCLR (SQL Server Common Language Runtime) to host managed .NET assemblies in the database, while prior versions of SQL Server were restricted to unmanaged extended stored procedures primarily written in C. PostgreSQL lets users write functions in a wide variety of languages—including Perl, Python, Tcl, JavaScript (PL/V8) and C.[23]


Interoperability and standardization

SQL implementations are incompatible between vendors and do not necessarily completely follow standards. In particular date and time syntax, string concatenation, NULLs, and comparison case sensitivity vary from vendor to vendor. Particular exceptions are PostgreSQL[24] and Mimer SQL[25] which strive for standards compliance, though PostgreSQL does not adhere to the standard in how folding of unquoted names is done. The folding of unquoted names to lower case in PostgreSQL is incompatible with the SQL standard,[26] which says that unquoted names should be folded to upper case.[27] Thus, Foo should be equivalent to FOO not foo according to the standard.

Popular implementations of SQL commonly omit support for basic features of Standard SQL, such as the DATE or TIME data types. The most obvious such examples, and incidentally the most popular commercial and proprietary SQL DBMSs, are Oracle (whose DATE behaves as DATETIME,[28][29] and lacks a TIME type)[30] and MS SQL Server (before the 2008 version). As a result, SQL code can rarely be ported between database systems without modifications.

There are several reasons for this lack of portability between database systems:

-   The complexity and size of the SQL standard means that most implementors do not support the entire standard.
-   The standard does not specify database behavior in several important areas (e.g. indexes, file storage...), leaving implementations to decide how to behave.
-   The SQL standard precisely specifies the syntax that a conforming database system must implement. However, the standard's specification of the semantics of language constructs is less well-defined, leading to ambiguity.
-   Many database vendors have large existing customer bases; where the newer version of the SQL standard conflicts with the prior behavior of the vendor's database, the vendor may be unwilling to break backward compatibility.
-   There is little commercial incentive for vendors to make it easier for users to change database suppliers (see vendor lock-in).
-   Users evaluating database software tend to place other factors such as performance higher in their priorities than standards conformance.

SQL was adopted as a standard by the American National Standards Institute (ANSI) in 1986 as SQL-86[31] and the International Organization for Standardization (ISO) in 1987.[32] It is maintained by _ISO/IEC JTC 1, Information technology, Subcommittee SC 32, Data management and interchange_. The standard is commonly denoted by the pattern: _ISO/IEC 9075-n:yyyy Part n: title_, or, as a shortcut, _ISO/IEC 9075_.

_ISO/IEC 9075_ is complemented by _ISO/IEC 13249: SQL Multimedia and Application Packages_ (SQL/MM), which defines SQL based interfaces and packages to widely spread applications like video, audio and spatial data.

Until 1996, the National Institute of Standards and Technology (NIST) data management standards program certified SQL DBMS compliance with the SQL standard. Vendors now self-certify the compliance of their products.[33]

The original standard declared that the official pronunciation for "SQL" was an initialism: ("ess cue el").[34] Regardless, many English-speaking database professionals (including Donald Chamberlin himself[35]) use the acronym-like pronunciation of ("sequel"),[36] mirroring the language's pre-release development name of "SEQUEL".[37][38][39][40] The SQL standard has gone through a number of revisions:

  Year   Name       Alias              Comments
  ------ ---------- ------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1986   SQL-86     SQL-87             First formalized by ANSI.
  1989   SQL-89     FIPS 127-1         Minor revision that added integrity constraints, adopted as FIPS 127-1.
  1992   SQL-92     SQL2, FIPS 127-2   Major revision (ISO 9075), _Entry Level_ SQL-92 adopted as FIPS 127-2.
  1999   SQL:1999   SQL3               Added regular expression matching, recursive queries (e.g. transitive closure), triggers, support for procedural and control-of-flow statements, non-scalar types (arrays), and some object-oriented features (e.g. structured types). Support for embedding SQL in Java (SQL/OLB) and vice versa (SQL/JRT).
  2003   SQL:2003                      Introduced XML-related features (SQL/XML), _window functions_, standardized sequences, and columns with auto-generated values (including identity-columns).
  2006   SQL:2006                      ISO/IEC 9075-14:2006 defines ways that SQL can be used with XML. It defines ways of importing and storing XML data in an SQL database, manipulating it within the database, and publishing both XML and conventional SQL-data in XML form. In addition, it lets applications integrate queries into their SQL code with XQuery, the XML Query Language published by the World Wide Web Consortium (W3C), to concurrently access ordinary SQL-data and XML documents.[41]
  2008   SQL:2008                      Legalizes ORDER BY outside cursor definitions. Adds INSTEAD OF triggers, TRUNCATE statement,[42] FETCH clause.
  2011   SQL:2011                      Adds temporal data (PERIOD FOR)[43] (more information at: Temporal database#History). Enhancements for _window functions_ and FETCH clause.[44]
  2016   SQL:2016                      Adds row pattern matching, polymorphic table functions, JSON.
  2019   SQL:2019                      Adds Part 15, multidimensional arrays (MDarray type and operators).

Interested parties may purchase SQL standards documents from ISO,[45] IEC or ANSI. A draft of SQL:2008 is freely available as a zip archive.[46]

The SQL standard is divided into ten parts.

-   ISO/IEC 9075-1:2016 Part 1: _Framework_ (SQL/Framework). It provides logical concepts.[47]
-   ISO/IEC 9075-2:2016 Part 2: _Foundation_ (SQL/Foundation). It contains the most central elements of the language and consists of both _mandatory and optional_ features.
-   ISO/IEC 9075-3:2016 Part 3: _Call-Level Interface_ (SQL/CLI). It defines interfacing components (structures, procedures, variable bindings) that can be used to execute SQL statements from applications written in Ada, C respectively C++, COBOL, Fortran, MUMPS, Pascal or PL/I. (For Java see part 10.) SQL/CLI is defined in such a way that SQL statements and SQL/CLI procedure calls are treated as separate from the calling application's source code. Open Database Connectivity is a well-known superset of SQL/CLI. This part of the standard consists solely of _mandatory_ features.
-   ISO/IEC 9075-4:2016 Part 4: _Persistent stored modules_ (SQL/PSM). It standardizes procedural extensions for SQL, including flow of control, condition handling, statement condition signals and resignals, cursors and local variables, and assignment of expressions to variables and parameters. In addition, SQL/PSM formalizes declaration and maintenance of persistent database language routines (e.g., "stored procedures"). This part of the standard consists solely of _optional_ features.
-   ISO/IEC 9075-9:2016 Part 9: _Management of External Data_ (SQL/MED). It provides extensions to SQL that define foreign-data wrappers and datalink types to allow SQL to manage external data. External data is data that is accessible to, but not managed by, an SQL-based DBMS. This part of the standard consists solely of _optional_ features.
-   ISO/IEC 9075-10:2016 Part 10: _Object language bindings_ (SQL/OLB). It defines the syntax and semantics of SQLJ, which is SQL embedded in Java (see also part 3). The standard also describes mechanisms to ensure binary portability of SQLJ applications, and specifies various Java packages and their contained classes. This part of the standard consists solely of _optional_ features. Unlike SQL/OLB JDBC defines an API and is not part of the SQL standard.
-   ISO/IEC 9075-11:2016 Part 11: _Information and definition schemas_ (SQL/Schemata). It defines the Information Schema and Definition Schema, providing a common set of tools to make SQL databases and objects self-describing. These tools include the SQL object identifier, structure and integrity constraints, security and authorization specifications, features and packages of ISO/IEC 9075, support of features provided by SQL-based DBMS implementations, SQL-based DBMS implementation information and sizing items, and the values supported by the DBMS implementations.[48] This part of the standard contains both _mandatory and optional_ features.
-   ISO/IEC 9075-13:2016 Part 13: _SQL Routines and types using the Java TM programming language_ (SQL/JRT). It specifies the ability to invoke static Java methods as routines from within SQL applications ('Java-in-the-database'). It also calls for the ability to use Java classes as SQL structured user-defined types. This part of the standard consists solely of _optional_ features.
-   ISO/IEC 9075-14:2016 Part 14: _XML-Related Specifications_ (SQL/XML). It specifies SQL-based extensions for using XML in conjunction with SQL. The _XML_ data type is introduced, as well as several routines, functions, and XML-to-SQL data type mappings to support manipulation and storage of XML in an SQL database.[49] This part of the standard consists solely of _optional_ features.
-   ISO/IEC 9075-15:2019 Part 15: _Multi-dimensional arrays_ (SQL/MDA). It specifies a multidimensional array type (MDarray) for SQL, along with operations on MDarrays, MDarray slices, MDarray cells, and related features. This part of the standard consists solely of _optional_ features.

ISO/IEC 9075 is complemented by ISO/IEC 13249 _SQL Multimedia and Application Packages_. This closely related but separate standard is developed by the same committee. It defines interfaces and packages based on SQL. The aim is a unified access to typical database applications like text, pictures, data mining or spatial data.

-   ISO/IEC 13249-1:2016 Part 1: _Framework_
-   ISO/IEC 13249-2:2003 Part 2: _Full-Text_
-   ISO/IEC 13249-3:2016 Part 3: _Spatial_
-   ISO/IEC 13249-5:2003 Part 5: _Still image_
-   ISO/IEC 13249-6:2006 Part 6: _Data mining_
-   ISO/IEC 13249-7:2013 Part 7: _History_
-   ISO/IEC 13249-8:xxxx Part 8: _Metadata Registry Access_ MRA (work in progress)

ISO/IEC 9075 is also accompanied by a series of Technical Reports, published as ISO/IEC TR 19075 in 8 parts. These Technical Reports explain the justification for and usage of some features of SQL, giving examples where appropriate. The Technical Reports are non-normative; if there is any discrepancy from 9075, the text in 9075 holds. Currently available 19075 Technical Reports are:

-   ISO/IEC TR 19075-1:2011 Part 1: XQuery Regular Expression Support in SQL
-   ISO/IEC TR 19075-2:2015 Part 2: SQL Support for Time-Related Information
-   ISO/IEC TR 19075-3:2015 Part 3: SQL Embedded in Programs using the Java^(TM) programming language
-   ISO/IEC TR 19075-4:2015 Part 4: SQL with Routines and types using the Java^(TM) programming language
-   ISO/IEC TR 19075-5:2016 Part 5: Row Pattern Recognition in SQL
-   ISO/IEC TR 19075-6:2017 Part 6: SQL support for Javascript Object Notation (JSON)
-   ISO/IEC TR 19075-7:2017 Part 7: Polymorphic table functions in SQL
-   ISO/IEC TR 19075-8:2019 Part 8: Multi-Dimensional Arrays (SQL/MDA)


Alternatives

A distinction should be made between alternatives to SQL as a language, and alternatives to the relational model itself. Below are proposed relational alternatives to the SQL language. See navigational database and NoSQL for alternatives to the relational model.

-   .QL: object-oriented Datalog
-   4D Query Language (4D QL)
-   Datalog: critics suggest that Datalog has two advantages over SQL: it has cleaner semantics, which facilitates program understanding and maintenance, and it is more expressive, in particular for recursive queries.[50]
-   HTSQL: URL based query method
-   IBM Business System 12 (IBM BS12): one of the first fully relational database management systems, introduced in 1982
-   ISBL
-   jOOQ: SQL implemented in Java as an internal domain-specific language
-   Java Persistence Query Language (JPQL): The query language used by the Java Persistence API and Hibernate persistence library
-   JavaScript: MongoDB implements its query language in a JavaScript API.
-   LINQ: Runs SQL statements written like language constructs to query collections directly from inside .Net code.
-   Object Query Language
-   QBE (Query By Example) created by Moshè Zloof, IBM 1977
-   Quel introduced in 1974 by the U.C. Berkeley Ingres project.
-   Tutorial D
-   XQuery


Distributed SQL processing

Distributed Relational Database Architecture (DRDA) was designed by a work group within IBM in the period 1988 to 1994. DRDA enables network connected relational databases to cooperate to fulfill SQL requests.[51][52]

An interactive user or program can issue SQL statements to a local RDB and receive tables of data and status indicators in reply from remote RDBs. SQL statements can also be compiled and stored in remote RDBs as packages and then invoked by package name. This is important for the efficient operation of application programs that issue complex, high-frequency queries. It is especially important when the tables to be accessed are located in remote systems.

The messages, protocols, and structural components of DRDA are defined by the Distributed Data Management Architecture.


Criticisms

Chamberlin's 2012 paper[53] discusses four historical criticisms of SQL:

Orthogonality and completeness

Early specifications did not support major features, such as primary keys. Result sets could not be named, and sub-queries had not been defined. These were added in 1992.[54]

NULLs

SQL's controversial "NULL" and three-value logic. Predicates evaluated over nulls return the logical value of "unknown" rather than true or false. Features such as outer-join depend on nulls. Null is not equivalent to space. NULL represents no data in the row.

Duplicates

Another popular criticism is that it allows duplicate rows, making integration with languages such as Python, whose data types might make it difficult to accurately represent the data,[55] difficult in terms of parsing and by the absence of modularity.[56]

This can be avoided declaring a unique constraint with one or more fields that identifies uniquely a row in the table. That constraint could became also the primary key of the table.

Impedance mismatch

In a similar sense to Object-relational impedance mismatch, there is a mismatch between the declarative SQL language and the procedural languages that SQL is typically embedded in.


See also

-

-   Comparison of object-relational database management systems
-   Comparison of relational database management systems
-   D (data language specification)
-   D4 (programming language)
-   Hierarchical model
-   List of relational database management systems
-   MUMPS
-   NoSQL
-   Query by Example
-   Transact-SQL
-   Online analytical processing (OLAP)
-   Online transaction processing (OLTP)
-   Data warehouse
-   Relational data stream management system
-   Star schema
-   Snowflake schema


Notes


References

[57] [58] [59] [60] [61] [62] [63] [64] [65] [66] [67] [68] [69]ANSI/ISO/IEC International Standard (IS). Database Language SQL—Part 2: Foundation (SQL/Foundation). 1999. [70] [71] [72] [73] [74] [75] [76] [77] [78] [79] [80] [81] [82] [83]

[84]

[85]{{ cite journal | title = ISO/IEC 9075-11:2008: Information and Definition Schemas (SQL/Schemata) | page = 1 | year = 2008 }}

[86]

[87] }}


Sources

-   -   Discussion on alleged SQL flaws (C2 wiki)
-   C. J. Date with Hugh Darwen: _A Guide to the SQL standard : a users guide to the standard database language SQL, 4th ed._, Addison Wesley, USA 1997,

SQL standards documents

ITTF publicly available standards and technical reports

The ISO/IEC Information Technology Task Force publishes publicly available standards including SQL. Technical Corrigenda (corrections) and Technical Reports (discussion documents) are published there.

SQL -- Part 1: Framework (SQL/Framework)

Draft documents

Formal SQL standards are available from ISO and ANSI for a fee. For informative use, as opposed to strict standards compliance, late drafts often suffice.

-   SQL:2011 draft
-   SQL-92 draft


External links

-   _1995 SQL Reunion: People, Projects, and Politics_, by Paul McJones (ed.): transcript of a reunion meeting devoted to the personal history of relational databases and SQL.
-   American National Standards Institute. X3H2 Records, 1978–1995 Charles Babbage Institute Collection documents the H2 committee's development of the NDL and SQL standards.
-   Oral history interview with Donald D. Chamberlin Charles Babbage Institute In this oral history Chamberlin recounts his early life, his education at Harvey Mudd College and Stanford University, and his work on relational database technology. Chamberlin was a member of the System R research team and, with Raymond F. Boyce, developed the SQL database language. Chamberlin also briefly discusses his more recent research on XML query languages.
-   Comparison of Different SQL Implementations This comparison of various SQL implementations is intended to serve as a guide to those interested in porting SQL code between various RDBMS products, and includes comparisons between SQL:2008, PostgreSQL, DB2, MS SQL Server, MySQL, Oracle, and Informix.
-   Event stream processing with SQL - An introduction to real-time processing of streaming data with continuous SQL queries
-   BNF Grammar for ISO/IEC 9075:2003, part 2 SQL/Framework

SQL Category:Articles with example SQL code Category:Data modeling languages Category:Declarative programming languages Category:Programming languages with an ISO standard Category:Query languages Category:Relational database management systems

[1]

[2]

[3]

[4]

[5]

[6] SQL-92, 4.22 SQL-statements, 4.22.1 Classes of SQL-statements "There are at least five ways of classifying SQL-statements:", 4.22.2, SQL statements classified by function "The following are the main classes of SQL-statements:"; SQL:2003 4.11 SQL-statements, and later revisions.

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

[61] {{ cite journal | last = Codd | first = Edgar F. | title = A Relational Model of Data for Large Shared Data Banks | journal = Communications of the ACM | volume = 13 | issue = 6 | pages = 377–87 | date = June 1970 | doi = 10.1145/362384.362685 | citeseerx = 10.1.1.88.646 }}

[62]

[63]

[64]

[65]

[66] {{ cite journal | last1 = Chamberlin | first1 = Donald D | last2 = Boyce | first2 = Raymond F | title = SEQUEL: A Structured English Query Language | journal = Proceedings of the 1974 ACM SIGFIDET Workshop on Data Description, Access and Control | pages = 249–64 | publisher = Association for Computing Machinery | year = 1974 | url = http://www.almaden.ibm.com/cs/people/chamberlin/sequel-1974.pdf | accessdate = 2007-06-09 }}

[67] {{ cite book | last = Oppel | first = Andy | title = Databases Demystified | publisher = McGraw-Hill Osborne Media | date = February 27, 2004 | location = San Francisco, CA | pages = 90–1 | url = http://www.mhprofessional.com/product.php?cat=112&isbn=0071469605 | isbn = 978-0-07-146960-9 }}

[68]

[69]

[70]

[71]

[72]

[73]

[74] {{ cite book | first1 = Diana | last1 = Lorentz | first2 = Mary Beth | last2 = Roeser | first3 = Sundeep | last3 = Abraham | first4 = Angela | last4 = Amor | first5 = Geeta | last5 = Arora | first6 = Vikas | last6 = Arora | first7 = Lance | last7 = Ashdown | first8 = Hermann | last8 = Baer | first9 = Shrikanth | last9 = Bellamkonda | series = Oracle Database Documentation Library | publisher = Oracle USA, Inc | place = Redwood City, CA | title = Oracle Database SQL Language Reference 11g Release 2 (11.2) | chapter = Basic Elements of Oracle SQL: Data Types | origyear = 1996 | date = October 2010 | accessdate = December 29, 2010 | chapter-url = http://download.oracle.com/docs/cd/E11882_01/server.112/e17118/sql_elements001.htm#sthref154 | quote = For each DATE value, Oracle stores the following information: century, year, month, date, hour, minute, and second }}

[75] {{ cite book | first1 = Diana | last1 = Lorentz | first2 = Mary Beth | last2 = Roeser | first3 = Sundeep | last3 = Abraham | first4 = Angela | last4 = Amor | first5 = Geeta | last5 = Arora | first6 = Vikas | last6 = Arora | first7 = Lance | last7 = Ashdown | first8 = Hermann | last8 = Baer | first9 = Shrikanth | last9 = Bellamkonda | series = Oracle Database Documentation Library | publisher = Oracle USA, Inc | place = Redwood City, CA | title = Oracle Database SQL Language Reference 11g Release 2 (11.2) | chapter = Basic Elements of Oracle SQL: Data Types | origyear = 1996 | date = October 2010 | accessdate = December 29, 2010 | chapter-url = http://download.oracle.com/docs/cd/E11882_01/server.112/e17118/sql_elements001.htm#sthref154 | quote = The datetime data types are DATE... }}

[76] {{ cite book | first1 = Diana | last1 = Lorentz | first2 = Mary Beth | last2 = Roeser | first3 = Sundeep | last3 = Abraham | first4 = Angela | last4 = Amor | first5 = Geeta | last5 = Arora | first6 = Vikas | last6 = Arora | first7 = Lance | last7 = Ashdown | first8 = Hermann | last8 = Baer | first9 = Shrikanth | last9 = Bellamkonda | series = Oracle Database Documentation Library | publisher = Oracle USA, Inc | place = Redwood City, CA | title = Oracle Database SQL Language Reference 11g Release 2 (11.2) | chapter = Basic Elements of Oracle SQL: Data Types | origyear = 1996 | date = October 2010 | accessdate = December 29, 2010 | chapter-url = http://download.oracle.com/docs/cd/E11882_01/server.112/e17118/sql_elements001.htm#i54335 | quote = Do not define columns with the following SQL/DS and DB2 data types, because they have no corresponding Oracle data type:... TIME }}

[77] {{ cite book | chapter-url = http://special.lib.umn.edu/findaid/xml/cbi00168.xml | publisher = American National Standards Institute | title = X3H2 Records, 1978–95 | chapter = Finding Aid }}

[78]

[79]

[80] {{ cite book | title = Understanding the New SQL: A Complete Guide | last = Melton | first = Jim | author2 = Alan R Simon | year = 1993 | publisher = Morgan Kaufmann | isbn = 978-1-55860-245-8 | page = 536 | chapter = 1.2. What is SQL? | quote = SQL (correctly pronounced "ess cue ell," instead of the somewhat common "sequel")... }}

[81] {{ cite book | title = SQL/XML:2006 - Evaluierung der Standardkonformität ausgewählter Datenbanksysteme | last = Wagner | first = Michael | year = 2010 | publisher = Diplomica Verlag | isbn = 978-3-8366-9609-8 | page = 100 | chapter = | quote = }}

[82] {{ cite journal|date=July 2008 |title=SQL:2008 now an approved ISO international standard |publisher=Sybase |url=http://iablog.sybase.com/paulley/2008/07/sql2008-now-an-approved-iso-international-standard/ |deadurl=yes |archiveurl=https://web.archive.org/web/20110628130925/http://iablog.sybase.com/paulley/2008/07/sql2008-now-an-approved-iso-international-standard/ |archivedate=2011-06-28 |df= }}

[83]

[84] {{ cite journal | url = http://www.wiscorp.com/sql200n.zip | format = Zip | title = SQL:2008 draft | publisher = Whitemarsh Information Systems Corporation }}

[85]

[86] {{ cite journal | title = What's new in SQL:2011 | url = http://www.sigmod.org/publications/sigmod-record/1203/pdfs/10.industry.zemke.pdf | author = Fred Zemke | year = 2012 }}

[87] {{ cite journal | title = Temporal features in SQL:2011 | url = http://cs.ulb.ac.be/public/_media/teaching/infoh415/tempfeaturessql2011.pdf | author = Krishna Kulkarni, Jan-Eike Michels | year = 2012 }}