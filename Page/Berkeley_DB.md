BERKELEY DB (BDB) is a software library intended to provide a high-performance embedded database for key/value data. Berkeley DB is written in C with API bindings for C++, C#, Java, Perl, PHP, Python, Ruby, Smalltalk, Tcl, and many other programming languages. BDB stores arbitrary key/data pairs as byte arrays, and supports multiple data items for a single key. Berkeley DB is not a relational database.[1]

BDB can support thousands of simultaneous threads of control or concurrent processes manipulating databases as large as 256 terabytes,[2] on a wide variety of operating systems including most Unix-like and Windows systems, and real-time operating systems.

BDB was commercially supported and developed by Sleepycat Software from 1996 to 2006. This company was acquired by Oracle Corporation in February 2006, which continues to develop and sell Berkeley DB. Under Oracle's stewardship, "Berkeley DB" has become a common brand name for three distinct products: Oracle Berkeley DB, Berkeley DB Java Edition, and Berkeley DB XML. These three products all share a common ancestry and are currently under active development.


Origin

Berkeley DB originated at the University of California, Berkeley as part of BSD, Berkeley's version of the Unix operating system. After 4.3BSD (1986), the BSD developers attempted to remove or replace all code originating in the original AT&T Unix from which BSD was derived. In doing so, they needed to rewrite the Unix database package.[3] Seltzer and Yigit[4] created a new database, unencumbered by any AT&T patents: an on-disk hash table that outperformed the existing dbm libraries. Berkeley DB itself was first released in 1991 and later included with 4.4BSD. In 1996 Netscape requested that the authors of Berkeley DB improve and extend the library, then at version 1.86, to suit Netscape's requirements for an LDAP server[5] and for use in the Netscape browser. That request led to the creation of Sleepycat Software. This company was acquired by Oracle Corporation in February 2006, which continues to develop and sell Berkeley DB.

Since its initial release, Berkeley DB has gone through various versions. Each major release cycle has introduced a single new major feature generally layering on top of the earlier features to add functionality to the product. The 1.x releases focused on managing key/value data storage and are referred to as "Data Store" (DS). The 2.x releases added a locking system enabling concurrent access to data. This is what is known as "Concurrent Data Store" (CDS). The 3.x releases added a logging system for transactions and recovery, called "Transactional Data Store" (TDS). The 4.x releases added the ability to replicate log records and create a distributed highly available single-master multi-replica database. This is called the "High Availability" (HA) feature set. Berkeley DB's evolution has sometimes led to minor API changes or log format changes, but very rarely have database formats changed. Berkeley DB HA supports online upgrades from one version to the next by maintaining the ability to read and apply the prior release's log records.

The FreeBSD and OpenBSD operating systems continue to use Berkeley DB 1.8x for compatibility reasons;[6] Linux-based operating systems commonly include several versions to accommodate for applications still using older interfaces/files.

Starting with the 6.0/12c releases, all Berkeley DB products are licensed under the GNU AGPL.[7] Berkeley DB JE 7.3.7 is licensed under the Apache License, Version 2.0 . Previously Berkeley DB was redistributed under the 4-clause BSD license (before version 2.0), and the Sleepycat Public License, which is an OSI-approved open-source license as well as an FSF-approved free software license.[8][9] The product ships with complete source code, build script, test suite, and documentation. The code quality and general utility along with the licensing terms have led to its use in a multitude of free and open-source software. Those who do not wish to abide by the terms of the GNU AGPL, or use an older version with the Sleepycat Public License, have the option of purchasing another proprietary license for redistribution from Oracle Corporation. This technique is called dual licensing. Different versions of Berkeley DB (DB, JE, XML) may have different licensing terms.

Berkeley DB includes compatibility interfaces for some historic Unix database libraries: dbm, ndbm and hsearch (a System V library for creating in-memory hash tables).


Architecture

Berkeley DB has an architecture notably simpler than that of other database systems like relational database management systems. For example, like SQLite, it does not provide support for network access programs access the database using in-process API calls. Oracle added support for SQL in 11g R2 release based on the popular SQLite API by including a version of SQLite in Berkeley DB (it uses Berkley DB for storage).[10] There is third party support for PL/SQL in Berkeley DB via a commercial product named Metatranz StepSqlite.[11]

A program accessing the database is free to decide how the data is to be stored in a record. Berkeley DB puts no constraints on the record's data. The record and its key can both be up to four gigabytes long.

Despite having a simple architecture, Berkeley DB supports many advanced database features such as ACID transactions, fine-grained locking, hot backups and replication.


Editions

The name "Berkeley DB" is given to three different products:

1.  Berkeley DB – the current version as of April 2016 is 6.2.
2.  Berkeley DB Java Edition – the current version as of November 2017 is 7.5.11
3.  Berkeley DB XML – the current version as of November 2017 is 6.1.4

Each edition has separate database libraries, despite the common branding. The first is the traditional Berkeley DB, written in C. It contains several database implementations, including a B-tree and one built around extensible hashing. It supports multiple language bindings, including C/C++, Java (via JNI), C# .NET, Perl and Python.

Berkeley DB Java Edition (JE) is a pure Java database management library. Its design resembles that of Berkeley DB without replicating it exactly, and has a feature set that includes many of those found in the traditional Berkeley DB and others that are specific to the Java Edition. It has a log structured storage architecture, which gives it different performance and concurrency characteristics. Three APIs are available a Direct Persistence Layer which is "Plain Old Java Objects" (POJO); one which is based on the Java Collections Framework (an object persistence approach); and one based on the traditional Berkeley DB API. The Berkeley DB Java Edition High Availability option (Replication) is available. Note that traditional Berkeley DB also supports a Java API, but it does so via JNI and thus requires an installed native library.

The Berkeley DB XML database specializes in the storage of XML documents, supporting XQuery via XQilla. It is implemented as an additional layer on top of (a legacy version of) Berkeley DB and the Xerces library. DB XML is written in C++ and supports multiple language bindings, including C++, Java (via JNI), Perl and Python.


Programs that use Berkeley DB

Berkeley DB provides the underlying storage and retrieval system of several LDAP servers, database systems, and many other proprietary and free/open source applications. Notable software that use Berkeley DB for data storage include:

-   Bitcoin Core – The first implementation of the Bitcoin cryptocurrency
-   Bogofilter – A free/open source spam filter that saves its wordlists using Berkeley DB
-   Carbonado – An open source relational database access layer
-   Citadel – A free/open source groupware platform that keeps all of its data stores, including the message base, in Berkeley DB
-   Evolution – A free/open source mail client; contacts are stored in addressbook.db using Berkeley DB
-   Jabberd2 – An XMPP server
-   KDevelop – An IDE for Unix-like operating systems
-   memcacheDB – A persistence-enabled variant of memcached
-   Oracle NoSQL – A NoSQL distributed key-value database
-   Oracle Retail Predictive Application Server (RPAS) - A platform used by Oracle Retail to implement solutions for Retail Financial Planning, Merchandise Planning/Ranging, and Supply Chain Planning
-   Parallel Virtual File System (PVFS) – A parallel file system for HPC clusters.[12]
-   Red Dwarf – A server framework originally developed by Sun, now open sourced, commonly used for game development.
-   RPM – The RPM Package Manager uses Berkeley DB to retain its internal database of packages installed on a system[13]
-   Sendmail – A popular MTA for Linux/Unix systems
-   Spamassassin – An anti-spam application
-   Sun Grid Engine – A free and open-source distributed resource management system
-   Voldemort – A NoSQL distributed key-value database[14]

Past users

-   MySQL database system – MySQL included a BDB data storage backend prior to v5.1
-   Exim – An MTA developed at the University of Cambridge for use on Unix systems connected to the internet. Deprecated in favor of LMDB
-   Cyrus IMAP Server – A free/open source IMAP and POP3 server, developed by Carnegie Mellon University. Deprecated in favor of LMDB
-   OpenLDAP – A free/open source implementation of the Lightweight Directory Access Protocol (LDAP). Deprecated in favor of LMDB
-   OrangeFS – An open-source parallel file system, the next generation of Parallel Virtual File System. Deprecated in favor of LMDB
-   Postfix – A fast, secure, easy-to-administer MTA for Linux/Unix systems. Deprecated in favor of LMDB
-   Subversion – A centralized version control system. Deprecated in favor of FSFS
-   DynamoDB — Early versions of AWS’s DynamoDB used BerkleyDB as their backing store
-   GlusterFS – Prior to v3.4, GlusterFS included a BDB storage translator
-   Samba – A free software re-implementation of the SMB networking protocol. Deprecated in favor of LMDB


Licensing

Berkeley DB V2.0 and higher is available under a dual license:

1.  Oracle commercial license with professional support[15]
2.  Open source license
    -   Berkeley DB and Berkeley DB XML
        -   V2.0 - V6.0.19 is licensed under the Sleepycat License
        -   V6.0.20 and newer is licensed under the GNU AGPL v3.[16]
    -   Berkeley DB JE (Java Edition)
        -   V2.0 - V6.0.19 is licensed under the Sleepycat License
        -   V6.0.20 - V7.3.6 is licensed under the GNU AGPL v3
        -   V7.3.7 and newer is licensed under the Apache License, Version 2.0.


See also

-   Lightning Memory-Mapped Database


References


External links

-   Oracle Berkeley DB Site
-   Berkeley DB Programmer's Reference Guide
-   Licensing pitfalls for Oracle Technology Products
-   _The Berkeley DB Book_ by Himanshu Yadava
-   Launchpad.net Berkeley DB at Launchpad
-   Oracle Licensing Knowledge Net
-   Oracle Berkeley DB Licensing Information
-   Text of the Sleepycat License (old)

Category:Database-related software for Linux Category:Embedded databases Category:Free database management systems Category:Free software programmed in C Category:NoSQL Category:Oracle software Category:Structured storage Category:Database engines Category:Key-value databases

[1] Berkeley DB Reference Guide: What is Berkeley DB not?. Doc.gnu-darwin.org (2001-05-31). Retrieved on 2013-09-18.

[2] http://doc.gnu-darwin.org/am_misc/dbsizes.html Berkeley DB Reference Guide: Database limits Retrieved on 2013-09-19

[3]

[4]

[5]

[6]

[7] [Berkeley DB Announce Major Release: Berkeley DB 12gR1 (12.1.6.0)]. Retrieved July 5, 2013.

[8]

[9]

[10]

[11]

[12] RCE 35: PVFS Parallel Virtual FileSystem

[13] NewRpmDBFormat, Fedora Project

[14]

[15]

[16]