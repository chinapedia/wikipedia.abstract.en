MYSQL ( "My S-Q-L")[1] is an open-source relational database management system (RDBMS).[2] Its name is a combination of "My", the name of co-founder Michael Widenius's daughter,[3] and "SQL", the abbreviation for Structured Query Language.

MySQL is free and open-source software under the terms of the GNU General Public License, and is also available under a variety of proprietary licenses. MySQL was owned and sponsored by the Swedish company MySQL AB, which was bought by Sun Microsystems (now Oracle Corporation).[4] In 2010, when Oracle acquired Sun, Widenius forked the open-source MySQL project to create MariaDB.

MySQL is a component of the LAMP web application software stack (and others), which is an acronym for _Linux, Apache, MySQL, Perl/PHP/Python_. MySQL is used by many database-driven web applications, including Drupal, Joomla, phpBB, and WordPress. MySQL is also used by many popular websites, including Facebook,[5][6][7] Flickr,[8] MediaWiki, Twitter,[9] and YouTube.[10]


Overview

MySQL is written in C and C++. Its SQL parser is written in yacc, but it uses a home-brewed lexical analyzer.[11] MySQL works on many system platforms, including AIX, BSDi, FreeBSD, HP-UX, eComStation, i5/OS, IRIX, Linux, macOS, Microsoft Windows, NetBSD, Novell NetWare, OpenBSD, OpenSolaris, OS/2 Warp, QNX, Oracle Solaris, Symbian, SunOS, SCO OpenServer, SCO UnixWare, Sanos and Tru64. A port of MySQL to OpenVMS also exists.[12]

The MySQL server software itself and the client libraries use dual-licensing distribution. They are offered under GPL version 2,[13] or a proprietary license.[14]

Support can be obtained from the official manual.[15] Free support additionally is available in different IRC channels and forums. Oracle offers paid support via its MySQL Enterprise products. They differ in the scope of services and in price. Additionally, a number of third party organisations exist to provide support and services, including MariaDB and Percona.

MySQL has received positive reviews, and reviewers noticed it "performs extremely well in the average case" and that the "developer interfaces are there, and the documentation (not to mention feedback in the real world via Web sites and the like) is very, very good".[16] It has also been tested to be a "fast, stable and true multi-user, multi-threaded sql database server".[17]


History

MySQL was created by a Swedish company, MySQL AB, founded by David Axmark, Allan Larsson and Michael "Monty" Widenius. Original development of MySQL by Widenius and Axmark began in 1994.[18] The first version of MySQL appeared on 23 May 1995. It was initially created for personal usage from mSQL based on the low-level language ISAM, which the creators considered too slow and inflexible. They created a new SQL interface, while keeping the same API as mSQL. By keeping the API consistent with the mSQL system, many developers were able to use MySQL instead of the (proprietarily licensed) mSQL antecedent.

Milestones

Additional milestones in MySQL development included:

-   First internal release on 23 May 1995
-   Version 3.19: End of 1996, from www.tcx.se
-   Version 3.20: January 1997
-   Windows version was released on 8 January 1998 for Windows 95 and NT
-   Version 3.21: production release 1998, from www.mysql.com
-   Version 3.22: alpha, beta from 1998
-   Version 3.23: beta from June 2000, production release 22 January 2001[19]
-   Version 4.0: beta from August 2002, production release March 2003 (unions).
-   Version 4.01: beta from August 2003, Jyoti adopts MySQL for database tracking
-   Version 4.1: beta from June 2004, production release October 2004 (R-trees and B-trees, subqueries, prepared statements).
-   Version 5.0: beta from March 2005, production release October 2005 (cursors, stored procedures, triggers, views, XA transactions).

    The developer of the Federated Storage Engine states that "The Federated Storage Engine is a proof-of-concept storage engine",[20] but the main distributions of MySQL version 5.0 included it and turned it on by default. Documentation of some of the short-comings appears in "MySQL Federated Tables: The Missing Manual".[21]

-   Sun Microsystems acquired MySQL AB in 2008.[22]
-   Version 5.1: production release 27 November 2008 (event scheduler, partitioning, plugin API, row-based replication, server log tables)

    Version 5.1 contained 20 known crashing and wrong result bugs in addition to the 35 present in version 5.0 _(almost all fixed as of release 5.1.51)_.[23]
    MySQL 5.1 and 6.0-alpha showed poor performance when used for data warehousing partly due to its inability to utilize multiple CPU cores for processing a single query.[24]

-   Oracle acquired Sun Microsystems on 27 January 2010.[25][26][27]
-   The day Oracle announced the purchase of Sun, Michael "Monty" Widenius forked MySQL, launching MariaDB, and took a swath of MySQL developers with him.[28]

-   MySQL Server 5.5 was generally available (). Enhancements and features include:
    -   The default storage engine is InnoDB, which supports transactions and referential integrity constraints.
    -   Improved InnoDB I/O subsystem[29]
    -   Improved SMP support[30]
    -   Semisynchronous replication.
    -   SIGNAL and RESIGNAL statement in compliance with the SQL standard.
    -   Support for supplementary Unicode character sets utf16, utf32, and utf8mb4.
    -   New options for user-defined partitioning.
-   MySQL Server 6.0.11-alpha was announced[31] on 22 May 2009 as the last release of the 6.0 line. Future MySQL Server development uses a New Release Model. Features developed for 6.0 are being incorporated into future releases.
-   The general availability of MySQL 5.6 was announced in February 2013.[32] New features included performance improvements to the query optimizer, higher transactional throughput in InnoDB, new NoSQL-style memcached APIs, improvements to partitioning for querying and managing very large tables, TIMESTAMP column type that correctly stores milliseconds, improvements to replication, and better performance monitoring by expanding the data available through the PERFORMANCE_SCHEMA.[33] The InnoDB storage engine also included support for full-text search and improved group commit performance.
-   The general availability of MySQL 5.7 was announced in October 2015.[34] As of MySQL 5.7.8, August 2015,[35] MySQL supports a native JSON data type defined by RFC 7159.[36]
-   MySQL Server 8.0 was announced in April 2018,[37] including NoSQL Document Store, atomic and crash safe DDL sentences and JSON Extended syntax, new functions, such as JSON table functions, improved sorting, and partial updates. Previous MySQL Server 8.0.0-dmr (Milestone Release) was announced 12 September 2016.[38]

Release history

+---------+----------------------+----------------------+----------------+--------------------+
| Release | General availability | Latest minor version | Latest release | End of support[39] |
+=========+======================+======================+================+====================+
|         | [40]                 | 5.1.73[41]           | 2013-12-03     |                    |
+---------+----------------------+----------------------+----------------+--------------------+
|         | [42]                 | 5.5.62               | 2018-10-22     |                    |
+---------+----------------------+----------------------+----------------+--------------------+
|         | [43]                 | 5.6.44               | 2019-04-25     |                    |
+---------+----------------------+----------------------+----------------+--------------------+
|         | [44]                 | 5.7.26               | 2019-04-25     |                    |
+---------+----------------------+----------------------+----------------+--------------------+
|         | [45]                 | 8.0.16[46]           | 2019-04-25     | April 2026         |
+---------+----------------------+----------------------+----------------+--------------------+

Work on version 6 stopped after the Sun Microsystems acquisition. The MySQL Cluster product uses version 7. The decision was made to jump to version 8 as the next major version number.[47]

Legal disputes and acquisitions

On 15 June 2001, NuSphere sued MySQL AB, TcX DataKonsult AB and its original authors Michael ("Monty") Widenius and David Axmark in U.S District Court in Boston for "breach of contract, tortious interference with third party contracts and relationships and unfair competition".[48][49]

In 2002, MySQL AB sued Progress NuSphere for copyright and trademark infringement in United States district court. NuSphere had allegedly violated MySQL AB's copyright by linking MySQL's GPL'ed code with NuSphere Gemini table without being in compliance with the license.[50] After a preliminary hearing before Judge Patti Saris on 27 February 2002, the parties entered settlement talks and eventually settled.[51] After the hearing, FSF commented that "Judge Saris made clear that she sees the GNU GPL to be an enforceable and binding license."[52]

In October 2005, Oracle Corporation acquired Innobase OY, the Finnish company that developed the third-party InnoDB storage engine that allows MySQL to provide such functionality as transactions and foreign keys. After the acquisition, an Oracle press release mentioned that the contracts that make the company's software available to MySQL AB would be due for renewal (and presumably renegotiation) some time in 2006.[53] During the MySQL Users Conference in April 2006, MySQL AB issued a press release that confirmed that MySQL AB and Innobase OY agreed to a "multi-year" extension of their licensing agreement.[54]

In February 2006, Oracle Corporation acquired Sleepycat Software,[55] makers of the Berkeley DB, a database engine providing the basis for another MySQL storage engine. This had little effect, as Berkeley DB was not widely used, and was dropped (due to lack of use) in MySQL 5.1.12, a pre-GA release of MySQL 5.1 released in October 2006.[56]

In January 2008, Sun Microsystems bought MySQL AB for $1 billion.[57]

In April 2009, Oracle Corporation entered into an agreement to purchase Sun Microsystems,[58] then owners of MySQL copyright and trademark. Sun's board of directors unanimously approved the deal. It was also approved by Sun's shareholders, and by the U.S. government on 20 August 2009.[59] On 14 December 2009, Oracle pledged to continue to enhance MySQL[60] as it had done for the previous four years.

A movement against Oracle's acquisition of MySQL AB, to "Save MySQL"[61] from Oracle was started by one of the MySQL AB founders, Monty Widenius. The petition of 50,000+ developers and users called upon the European Commission to block approval of the acquisition. At the same time, some Free Software opinion leaders (including Pamela Jones of Groklaw, Jan Wildeboer and Carlo Piana, who also acted as co-counsel in the merger regulation procedure) advocated for the unconditional approval of the merger.[62][63][64] As part of the negotiations with the European Commission, Oracle committed that MySQL server will continue until at least 2015 to use the dual-licensing strategy long used by MySQL AB, with proprietary and GPL versions available. The antitrust of the EU had been "pressuring it to divest MySQL as a condition for approval of the merger". But, as revealed by WikiLeaks, the US Department of Justice, at the request of Oracle, pressured the EU to approve the merger unconditionally.[65] The European Commission eventually unconditionally approved Oracle's acquisition of MySQL AB on 21 January 2010.[66]

In January 2010, before Oracle's acquisition of MySQL AB, Monty Widenius started a GPL-only fork, MariaDB. MariaDB is based on the same code base as MySQL server 5.5 and aims to maintain compatibility with Oracle-provided versions.[67]


Features

MySQL is offered under two different editions: the open source MySQL Community Server and the proprietary Enterprise Server.[68] MySQL Enterprise Server is differentiated by a series of proprietary extensions which install as server plugins, but otherwise shares the version numbering system and is built from the same code base.

Major features as available in MySQL 5.6:

-   A broad subset of ANSI SQL 99, as well as extensions
-   Cross-platform support
-   Stored procedures, using a procedural language that closely adheres to SQL/PSM[69]
-   Triggers
-   Cursors
-   Updatable views
-   Online Data Definition Language (DDL) when using the InnoDB Storage Engine.
-   Information schema
-   Performance Schema that collects and aggregates statistics about server execution and query performance for monitoring purposes.[70]
-   A set of SQL Mode options to control runtime behavior, including a strict mode to better adhere to SQL standards.
-   X/Open XA distributed transaction processing (DTP) support; two phase commit as part of this, using the default InnoDB storage engine
-   Transactions with savepoints when using the default InnoDB Storage Engine. The NDB Cluster Storage Engine also supports transactions.
-   ACID compliance when using InnoDB and NDB Cluster Storage Engines[71]
-   SSL support
-   Query caching
-   Sub-SELECTs (i.e. nested SELECTs)
-   Built-in replication support
    -   Asynchronous replication: master-slave from one master to many slaves[72][73] or many masters to one slave[74]
    -   Semi synchronous replication: Master to slave replication where the master waits on replication[75] [76]
    -   Synchronous replication: Multi-master replication is provided in MySQL Cluster [77].
    -   Virtual Synchronous: Self managed groups of MySQL servers with multi master support can be done using: Galera Cluster [78] or the built in Group Replication plugin[79]
-   Full-text indexing and searching
-   Embedded database library
-   Unicode support
-   Partitioned tables with pruning of partitions in optimizer
-   Shared-nothing clustering through MySQL Cluster
-   Multiple storage engines, allowing one to choose the one that is most effective for each table in the application.
-   Native storage engines InnoDB, MyISAM, Merge, Memory (heap), Federated, Archive, CSV, Blackhole, NDB Cluster.
-   Commit grouping, gathering multiple transactions from multiple connections together to increase the number of commits per second.

The developers release minor updates of the MySQL Server approximately every two months. The sources can be obtained from MySQL's website or from MySQL's GitHub repository, both under the GPL license.

Limitations

When using some storage engines other than the default of InnoDB, MySQL does not comply with the full SQL standard for some of the implemented functionality, including foreign key references.[80] Check constraints are parsed but ignored by all storage engines before MySQL version 8.0.15.[81][82]

Up until MySQL 5.7, triggers are limited to one per action / timing, meaning that at most one trigger can be defined to be executed after an INSERT operation, and one before INSERT on the same table.[83] No triggers can be defined on views.[84]

MySQL database's inbuilt functions like UNIX_TIMESTAMP() will return 0 after 03:14:07 UTC on 19 January 2038.[85] Recently, there had been an attempt to solve the problem which had been assigned to the internal queue.[86]

Deployment

MySQL can be built and installed manually from source code, but it is more commonly installed from a binary package unless special customizations are required. On most Linux distributions, the package management system can download and install MySQL with minimal effort, though further configuration is often required to adjust security and optimization settings.

software bundle, displayed here together with Squid.]]

Though MySQL began as a low-end alternative to more powerful proprietary databases, it has gradually evolved to support higher-scale needs as well. It is still most commonly used in small to medium scale single-server deployments, either as a component in a LAMP-based web application or as a standalone database server. Much of MySQL's appeal originates in its relative simplicity and ease of use, which is enabled by an ecosystem of open source tools such as phpMyAdmin. In the medium range, MySQL can be scaled by deploying it on more powerful hardware, such as a multi-processor server with gigabytes of memory.

There are, however, limits to how far performance can scale on a single server ('scaling up'), so on larger scales, multi-server MySQL ('scaling out') deployments are required to provide improved performance and reliability. A typical high-end configuration can include a powerful master database which handles data write operations and is replicated to multiple slaves that handle all read operations.[87] The master server continually pushes binlog events to connected slaves so in the event of failure a slave can be promoted to become the new master, minimizing downtime. Further improvements in performance can be achieved by caching the results from database queries in memory using memcached, or breaking down a database into smaller chunks called shards which can be spread across a number of distributed server clusters.[88]

Backup software

is a logical backup tool included with both community and enterprise editions of MySQL. It supports backing up from all storage engines. MySQL Enterprise Backup is a hot backup utility included as part of the MySQL Enterprise subscription from Oracle, offering native InnoDB hot backup, as well as backup for other storage engines.

is an open-source MySQL hot backup software program. Features include hot, non-locking backups for InnoDB storage, incremental backups, streaming, parallel-compressed backups, throttling based on the number of I/O operations per second, etc.[89]

High availability software

Oracle MySQL offers a high availability solution with a mix of tools including the MySQL router and the MySQL shell. They are based on Group Replication, open source tools.[90]

MariaDB offers a similar offer in terms of products [91]

Cloud deployment

MySQL can also be run on cloud computing platforms such as Microsoft Azure, Amazon EC2, Oracle Cloud Infrastructure. Some common deployment models for MySQL on the cloud are:

Virtual machine image
    In this implementation, cloud users can upload a machine image of their own with MySQL installed, or use a ready-made machine image with an optimized installation of MySQL on it, such as the one provided by Amazon EC2.[92]

MySQL as a service
    Some cloud platforms offer MySQL "as a service". In this configuration, application owners do not have to install and maintain the MySQL database on their own. Instead, the database service provider takes responsibility for installing and maintaining the database, and application owners pay according to their usage.[93] Notable cloud-based MySQL services are the Amazon Relational Database Service; Oracle MySQL Cloud Service, Azure Database for MySQL, Rackspace; HP Converged Cloud; Heroku, Jelastic and ScaleGrid for MySQL. (Note In this model the database service provider takes responsibility for maintaining the host and database)


User interfaces

Graphical user interfaces

A graphical user interface (GUI) is a type of interface that allows users to interact with electronic devices or programs through graphical icons and visual indicators such as secondary notation, as opposed to text-based interfaces, typed command labels or text navigation. GUIs are easier to learn than command-line interfaces (CLIs), which require commands to be typed on the keyboard.

Third-party proprietary and free graphical administration applications (or "front ends") are available that integrate with MySQL and enable users to work with database structure and data visually. Some well-known front ends are:

running on macOS]]

MySQL Workbench
    MySQL Workbench is the official integrated environment for MySQL. It was developed by MySQL AB, and enables users to graphically administer MySQL databases and visually design database structures. MySQL Workbench replaces the previous package of software, MySQL GUI Tools. Similar to other third-party packages, but still considered the authoritative MySQL front end, MySQL Workbench lets users manage database design & modeling, SQL development (replacing MySQL Query Browser) and Database administration (replacing MySQL Administrator).
    MySQL Workbench is available in two editions, the regular free and open source _Community Edition_ which may be downloaded from the MySQL website, and the proprietary _Standard Edition_ which extends and improves the feature set of the Community Edition.

Adminer
    Adminer (formerly known as phpMinAdmin) is a free MySQL front end for managing content in MySQL databases (since version 2, it also works on PostgreSQL, Microsoft SQL Server, SQLite and Oracle databases). Adminer is distributed under the Apache License (or GPL v2) in the form of a single PHP file (around 300 KiB in size), and is capable of managing multiple databases, with many CSS skins available. Its author is Jakub Vrána who started to develop this tool as a light-weight alternative to phpMyAdmin, in July 2007.

ClusterControl
    ClusterControl is an end-to-end MySQL management system GUI that provides the ability to deploy, monitor, manage and scale MySQL instances from a single interface. It is developed by Severalnines.
    The Community version of ClusterControl is free to use and lets the user deploy and monitor their MySQL instances. Advanced features like load balancing, backup & restore, failover, etc are part of a paid offering.

Database Workbench
    Database Workbench is a software application for development and administration of multiple relational databases using SQL, with interoperationality between different database systems, developed by Upscene Productions.
    Because Databases Workbench supports multiple database systems, it can provide software developers with the same interface and development environment for these otherwise different database systems and also includes cross database tools.
    Database Workbench supports the following relational databases: Oracle Database, Microsoft SQL Server, SQL Anywhere, Firebird, NexusDB, InterBase, MySQL and MariaDB. Database Workbench 5 runs on 32-bit or 64-bit Windows platforms. Under Linux, FreeBSD or macOS Database Workbench can operate using Wine.

DBeaver
    DBeaver is an SQL client and a database administration tool. DBeaver includes extended support of following databases: MySQL and MariaDB, PostgreSQL, Oracle, DB2 (LUW), Exasol, SQL Server, Sybase, Firebird, Teradata, Vertica, Apache Phoenix, Netezza, Informix, {[Apache Derby]], H2, SQLite and any other database which has a JDBC or ODBC driver. DBeaver is free and open source software that is distributed under the Apache License 2.0. The source code is hosted on GitHub.

DBEdit
    DBEdit is a database editor, which can connect to an Oracle, DB2, MySQL and any database that provides a JDBC driver. It runs on Windows, Linux and Solaris. DBEdit is free and open source software and distributed under the GNU General Public License. The source code is hosted on SourceForge.

HeidiSQL
    HeidiSQL, previously known as MySQL-Front, is a free and open source client, or frontend for MySQL (and for its forks like MariaDB and Percona Server), Microsoft SQL Server and PostgreSQL. HeidiSQL is developed by German programmer Ansgar Becker and a few other contributors in Delphi. To manage databases with HeidiSQL, users must login to a local or remote MySQL server with acceptable credentials, creating a session. Within this session users may manage MySQL Databases within the connected MySQL server, disconnecting from the server when done. Its feature set is sufficient for most common and advanced database, table and data record operations but remains in active development to move towards the full functionality expected in a MySQL Frontend.

LibreOffice Base
    LibreOffice Base allows the creation and management of databases, preparation of forms and reports that provide end users easy access to data. Like Microsoft Access, it can be used as a front-end for various database systems, including Access databases (JET), ODBC data sources, and MySQL or PostgreSQL[94]

Navicat
    Navicat is a series of graphical database management and development software produced by PremiumSoft CyberTech Ltd. for MySQL, MariaDB, Oracle, SQLite, PostgreSQL and Microsoft SQL Server. It has an Explorer-like graphical user interface and supports multiple database connections for local and remote databases. Its design is made to meet the needs of a variety of audiences, from database administrators and programmers to various businesses/companies that serve clients and share information with partners.
    Navicat is a cross-platform tool and works on Microsoft Windows, OS X and Linux platforms. Upon purchase, users are able to select a language for the software from eight available languages: English, French, German, Spanish, Japanese, Polish, Simplified Chinese and Traditional Chinese.

OpenOffice.org
    OpenOffice.org Base is freely available and can manage MySQL databases if the entire suite is installed.

phpMyAdmin
    phpMyAdmin is a free and open source tool written in PHP intended to handle the administration of MySQL with the use of a web browser. It can perform various tasks such as creating, modifying or deleting databases, tables, fields or rows; executing SQL statements; or managing users and permissions. The software, which is available in 78 languages,[95] is maintained by _The phpMyAdmin Project_.[96]
    It can import data from CSV and SQL, and transform stored data into any format using a set of predefined functions, like displaying BLOB-data as images or download-links.

Sequel Pro
    Sequel Pro is a free and open-source MacOS application for working with MySQL databases locally or remotely. It uses the freemium model, where the Gratis users are actually getting features to most of the basic services. It takes a SQL Table itself to manage these requests. It can handle the new "fun" UTF-8 features for newer unicode as well as having multiple GB tables without issue. It is hosted on Sourceforge.[97]

SQLBuddy
    SQLBuddy is an open-source web-based application written in PHP intended to handle the administration of MySQL and SQLite with the use of a Web browser. The project places an emphasis on ease of installation and a simple user interface.

SQLyog
    SQLyog is a GUI tool available in free as well as paid versions. Data manipulations (e.g., insert, update, and delete) may be done from a spreadsheet-like interface. Its editor has syntax highlighting and various automatic formatting options. Both raw table data and a result set from a query can be manipulated. Its data search feature uses Google-like search syntax and translates to SQL transparently for the user. It has a backup tool for performing unattended backups. Backups may be compressed and optionally stored as a file-per-table as well as identified with a timestamp.

Toad for MySQL
    Toad for MySQL is a software application from Dell Software that database developers, database administrators and data analysts use to manage both relational and non-relational databases using SQL. Toad supports many databases and environments. It runs on all 32-bit/64-bit Windows platforms, including Microsoft Windows Server, Windows XP, Windows Vista, Windows 7 and 8 (32-Bit or 64-Bit). Dell Software has also released a Toad Mac Edition. Dell provides Toad in commercial and trial/freeware versions. The freeware version is available from the ToadWorld.com community.

Webmin
    Webmin is a web-based system configuration tool for Unix-like systems, although recent versions can also be installed and run on Windows. With it, it is possible to configure operating system internals, such as users, disk quotas, services or configuration files, as well as modify and control open source apps, such as the Apache HTTP Server, PHP or MySQL.
    Webmin is largely based on Perl, running as its own process and web server. It defaults to TCP port 10000 for communicating, and can be configured to use SSL if OpenSSL is installed with additional required Perl modules.
    It is built around modules, which have an interface to the configuration files and the Webmin server. This makes it easy to add new functionality. Due to Webmin's modular design, it is possible for anyone who is interested to write plugins for desktop configuration.
    Webmin also allows for controlling many machines through a single interface, or seamless login on other webmin hosts on the same subnet or LAN.

Command-line interfaces

A command-line interface is a means of interacting with a computer program where the user issues commands to the program by typing in successive lines of text (command lines). MySQL ships with many command line tools, from which the main interface is the client.[98][99]

MySQL Utilities is a set of utilities designed to perform common maintenance and administrative tasks. Originally included as part of the MySQL Workbench, the utilities are a stand-alone download available from Oracle.

Percona Toolkit is a cross-platform toolkit for MySQL, developed in Perl.[100] Percona Toolkit can be used to prove replication is working correctly, fix corrupted data, automate repetitive tasks, and speed up servers. Percona Toolkit is included with several Linux distributions such as CentOS and Debian, and packages are available for Fedora and Ubuntu as well. Percona Toolkit was originally developed as Maatkit, but as of late 2011, Maatkit is no longer developed.

MySQL shell is a tool for interactive use and administration of the MySQL database. It supports JavaScript, Python or SQL modes and it can be used for administration and access purposes. [101]


Application programming interfaces

Many programming languages with language-specific APIs include libraries for accessing MySQL databases. These include MySQL Connector/Net for integration with Microsoft's Visual Studio (languages such as C# and VB are most commonly used) and the JDBC driver for Java. In addition, an ODBC interface called MySQL Connector/ODBC allows additional programming languages that support the ODBC interface to communicate with a MySQL database, such as ASP or ColdFusion. The HTSQL URL-based query method also ships with a MySQL adapter, allowing direct interaction between a MySQL database and any web client via structured URLs. Other drivers exists for languages like Python[102] or Node.js[103].


Project forks

A variety of MySQL forks exist, including the following.

Current

MariaDB
    MariaDB is a community-developed fork of the MySQL relational database management system intended to remain free under the GNU GPL. Being a fork of a leading open source software system, it is notable for being led by the original developers of MySQL, who forked it due to concerns over its acquisition by Oracle.[104] Contributors are required to share their copyright with the MariaDB Foundation.[105] MariaDB intends to maintain high compatibility with MySQL, ensuring a "drop-in" replacement capability with library binary equivalency and exact matching with MySQL APIs and commands.[106] There are some documented differences and incompatibilities between versions of MySQL and MariaDB,[107] however, and some tools for interacting with MySQL, such as the MySQL Workbench, are not fully compatible with MariaDB.[108] It includes the XtraDB storage engine for replacing InnoDB,[109] as well as a new storage engine, Aria, that intends to be both a transactional and non-transactional engine perhaps even included in future versions of MySQL.[110]

Percona Server for MySQL
    Percona Server for MySQL, forked by Percona, aims to retain close compatibility to the official MySQL releases, while focusing on performance and increased visibility into server operations.[111] Also included in Percona Server for MySQL is XtraDB, Percona's fork of the InnoDB Storage Engine. Percona freely includes a number of scalability, availability, security and backup features only available in MySQL's commercial Enterprise edition.[112]

Abandoned

Drizzle
    Drizzle was a free software/open source relational database management system (DBMS) that was forked from the now-defunct 6.0 development branch of the MySQL DBMS.[113] Like MySQL, Drizzle had a client/server architecture and uses SQL as its primary command language. Drizzle was distributed under version 2 and 3 of the GNU General Public License (GPL) with portions, including the protocol drivers and replication messaging under the BSD license.

WebScaleSQL
    WebScaleSQL was a software branch of MySQL 5.6, and was announced on 27 March 2014 by Facebook, Google, LinkedIn and Twitter as a joint effort to provide a centralized development structure for extending MySQL with new features specific to its large-scale deployments, such as building large replicated databases running on server farms. Thus, WebScaleSQL opened a path toward deduplicating the efforts each company had been putting into maintaining its own branch of MySQL, and toward bringing together more developers. By combining the efforts of these companies and incorporating various changes and new features into MySQL, WebScaleSQL aimed at supporting the deployment of MySQL in large-scale environments.[114][115] The project's source code is licensed under version 2 of the GNU General Public License, and is hosted on GitHub.[116][117]


See also

-   Comparison of database tools
-   Comparison of MySQL database engines
-   Comparison of relational database management systems
-   SQL compliance


Notes


References


External links

-   -   MySQL at Oracle
-   -

MySQL Category:1995 software Category:Client-server database management systems Category:Cross-platform software Category:Free database management systems Category:Oracle software Category:RDBMS software for Linux Category:Relational database management systems Category:Sun Microsystems software Category:Software_using_the_GPL_license

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

[15] MySQL Support Manual, MySQL Developers

[16] Review of MySQL Server 5.0, Techworld.com, November 2005

[17] MySQL Server Review, LinuxMint.com

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

[32] http://www.oracle.com/us/corporate/press/1904335

[33]

[34]

[35] https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-8.html#mysqld-5-7-8-json

[36] https://dev.mysql.com/doc/refman/5.7/en/json.html

[37] https://blogs.oracle.com/mysql/announcing-general-availability-of-mysql-80

[38]

[39] Oracle Lifetime Support Policy

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

[93]

[94]

[95]

[96]

[97] https://sequelpro

[98] mysql — The MySQL Command-Line Tool, MySQL Reference Manual

[99] mysqladmin – the MySQL command-line tool, MySQL Reference Manual

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