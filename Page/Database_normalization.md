DATABASE NORMALIZATION is the process of structuring a relational database in accordance with a series of so-called normal forms in order to reduce data redundancy and improve data integrity. It was first proposed by Edgar F. Codd as an integral part of his relational model.

Normalization entails organizing the columns (attributes) and tables (relations) of a database to ensure that their dependencies are properly enforced by database integrity constraints. It is accomplished by applying some formal rules either by a process of _synthesis_ (creating a new database design) or _decomposition_ (improving an existing database design).


Objectives

A basic objective of the first normal form defined by Codd in 1970 was to permit data to be queried and manipulated using a "universal data sub-language" grounded in first-order logic.[1] (SQL is an example of such a data sub-language, albeit one that Codd regarded as seriously flawed.[2])

The objectives of normalization beyond 1NF (first normal form) were stated as follows by Codd:

Update_anomaly.svg Insertion_anomaly.svg Deletion_anomaly.svg

When an attempt is made to modify (update, insert into, or delete from) a relation, the following undesirable side-effects may arise in relations that have not been sufficiently normalized:

-   UPDATE ANOMALY. The same information can be expressed on multiple rows; therefore updates to the relation may result in logical inconsistencies. For example, each record in an "Employees' Skills" relation might contain an Employee ID, Employee Address, and Skill; thus a change of address for a particular employee may need to be applied to multiple records (one for each skill). If the update is only partially successful – the employee's address is updated on some records but not others – then the relation is left in an inconsistent state. Specifically, the relation provides conflicting answers to the question of what this particular employee's address is. This phenomenon is known as an update anomaly.
-   INSERTION ANOMALY. There are circumstances in which certain facts cannot be recorded at all. For example, each record in a "Faculty and Their Courses" relation might contain a Faculty ID, Faculty Name, Faculty Hire Date, and Course Code. Therefore, we can record the details of any faculty member who teaches at least one course, but we cannot record a newly hired faculty member who has not yet been assigned to teach any courses, except by setting the Course Code to null. This phenomenon is known as an insertion anomaly.
-   DELETION ANOMALY. Under certain circumstances, deletion of data representing certain facts necessitates deletion of data representing completely different facts. The "Faculty and Their Courses" relation described in the previous example suffers from this type of anomaly, for if a faculty member temporarily ceases to be assigned to any courses, we must delete the last of the records on which that faculty member appears, effectively also deleting the faculty member, unless we set the Course Code to null. This phenomenon is known as a deletion anomaly.

Minimize redesign when extending the database structure

A fully normalized database allows its structure to be extended to accommodate new types of data without changing existing structure too much. As a result, applications interacting with the database are minimally affected.

Normalized relations, and the relationship between one normalized relation and another, mirror real-world concepts and their interrelationships.

Example

Querying and manipulating the data within a data structure that is not normalized, such as the following non-1NF representation of customers, credit card transactions, involves more complexity than is really necessary:

+----------+----------+-----------------------------------+
| Customer | Cust. ID | Transactions                      |
+==========+==========+===================================+
| Abraham  | 1        |   Tr. ID   Date          Amount   |
|          |          |   -------- ------------- -------- |
|          |          |   12890    14-Oct-2003   −87      |
|          |          |   12904    15-Oct-2003   −50      |
+----------+----------+-----------------------------------+
| Issac    | 2        |   Tr. ID   Date          Amount   |
|          |          |   -------- ------------- -------- |
|          |          |   12898    14-Oct-2003   −21      |
+----------+----------+-----------------------------------+
| Jacob    | 3        |   Tr. ID   Date          Amount   |
|          |          |   -------- ------------- -------- |
|          |          |   12907    15-Oct-2003   −18      |
|          |          |   14920    20-Nov-2003   −70      |
|          |          |   15003    27-Nov-2003   −60      |
+----------+----------+-----------------------------------+

To each customer corresponds a 'repeating group' of transactions. The automated evaluation of any query relating to customers' transactions, therefore, would broadly involve two stages:

1.  Unpacking one or more customers' groups of transactions allowing the individual transactions in a group to be examined, and
2.  Deriving a query result based on the results of the first stage

For example, in order to find out the monetary sum of all transactions that occurred in October 2003 for all customers, the system would have to know that it must first unpack the _Transactions_ group of each customer, then sum the _Amounts_ of all transactions thus obtained where the _Date_ of the transaction falls in October 2003.

One of Codd's important insights was that structural complexity can be reduced. Reduced structural complexity gives users, application, and DBMS more power and flexibility to formulate and evaluate the queries. A more normalized equivalent of the structure above might look like this:

  Customer   Cust. ID
  ---------- ----------
  Abraham    1
  Issac      2
  Jacob      3

  Cust. ID   Tr. ID   Date          Amount
  ---------- -------- ------------- --------
  1          12890    14-Oct-2003   −87
  1          12904    15-Oct-2003   −50
  2          12898    14-Oct-2003   −21
  3          12907    15-Oct-2003   −18
  3          14920    20-Nov-2003   −70
  3          15003    27-Nov-2003   −60

In the modified structure, the key is {Cust. ID} in the first relation, {Cust. ID, Tr ID} in the second relation.

Now each row represents an individual credit card transaction, and the DBMS can obtain the answer of interest, simply by finding all rows with a Date falling in October, and summing their Amounts. The data structure places all of the values on an equal footing, exposing each to the DBMS directly, so each can potentially participate directly in queries; whereas in the previous situation some values were embedded in lower-level structures that had to be handled specially. Accordingly, the normalized design lends itself to general-purpose query processing, whereas the unnormalized design does not. The normalized version also allows the user to change the customer name in one place and guards against errors that arise if the customer name is misspelled on some records.


Normal forms

Codd introduced the concept of normalization and what is now known as the first normal form (1NF) in 1970.[3] Codd went on to define the second normal form (2NF) and third normal form (3NF) in 1971,[4] and Codd and Raymond F. Boyce defined the Boyce-Codd normal form (BCNF) in 1974.[5]

Informally, a relational database relation is often described as "normalized" if it meets third normal form.[6] Most 3NF relations are free of insertion, update, and deletion anomalies.

The normal forms (from least normalized to most normalized) are:

[TABLE]


Example of a step by step normalization

Normalization is a database design technique, which is used to design a relational database table up to higher normal form. [7] The process is progressive, and a higher level of database normalization cannot be achieved unless the previous levels have been satisfied. [8]

That means that, having data in unnormalized form (the least normalized) and aiming to achieve the highest level of normalization, the first step would be to ensure compliance to first normal form, the second step would be to ensure second normal form is satisfied, and so forth in order mentioned above, until the data conform to sixth normal form.

However, it is worth noting that normal forms beyond 4NF are mainly of academic interest, as the problems they exist to solve rarely appear in practice [9]

_Please note that the data in the following example were intentionally designed to contradict most of the normal forms. In real life, it's quite possible to be able to skip some of the normalization steps because the table doesn't contain anything contradicting the given normal form. It also commonly occurs that fixing a violation of one normal form also fixes a violation of a higher normal form in the process. Also one table has been chosen for normalization at each step, meaning that at the end of this example process, there might still be some tables not satisfying the highest normal form._

Initial data

Let a database table with the following structure: [10]

[TABLE]

We assume in this example that each book has only one author.

Satisfying 1NF

To satisfy 1NF, we need to ensure that the values in each column of a table are atomic. In the initial table, SUBJECT contains a set of values, meaning it does not comply.

One way to achieve the first normal form would be to separate the duplicities into multiple columns:

  Title                                              Format      Author         Author Nationality   Price   Subject 1   Subject 2   Subject 3   Pages   Thickness   Publisher   Publisher country   Genre ID   Genre Name
  -------------------------------------------------- ----------- -------------- -------------------- ------- ----------- ----------- ----------- ------- ----------- ----------- ------------------- ---------- ------------
  Beginning MySQL Database Design and Optimization   Hardcover   Chad Russell   American             49.99   MySQL       Database    Design      520     Thick       Apress      USA                 1          Tutorial

Although now the table formally complies to the 1NF (is atomic), the problem with this solution is obvious - if a book has more than three subjects, it cannot be added to the database without altering its structure.

To solve the problem in a more elegant way, it is necessary to identify entities represented in the table and separate them into their own respective tables. In this case, it would result in BOOK, SUBJECT and PUBLISHER tables: [11]

  Title                                              Format      Author         Author Nationality   Price   Pages   Thickness   Genre ID   Genre Name   _Publisher ID_
  -------------------------------------------------- ----------- -------------- -------------------- ------- ------- ----------- ---------- ------------ ----------------
  Beginning MySQL Database Design and Optimization   Hardcover   Chad Russell   American             49.99   520     Thick       1          Tutorial     _1_

  : Book

+-------------------------------+-------------------------------------+
|   SUBJECT ID   SUBJECT NAME   |   PUBLISHER_ID   NAME     COUNTRY   |
|   ------------ -------------- |   -------------- -------- --------- |
|   1            MySQL          |   1              Apress   USA       |
|   2            Database       |                                     |
|   3            Design         |   : PUBLISHER                       |
|                               |                                     |
|   : SUBJECT                   |                                     |
+-------------------------------+-------------------------------------+

Simply separating the initial data into multiple tables would break the connection between the data. That means we also need to determine the relationships between the newly introduced tables. You might have noticed the _Publisher ID_ column in the Book's table - it is a foreign key realizing many-to-one relation between a book and a publisher.

A book can fit many subjects, as well as a subject may correspond to many books. That means we also need to define a many-to-many relationship. We achieve that by creating a link table: [12]

+---------------------------------------------------------------------+
|   Title                                              _SUBJECT ID_   |
|   -------------------------------------------------- -------------- |
|   Beginning MySQL Database Design and Optimization   _1_            |
|   Beginning MySQL Database Design and Optimization   _2_            |
|   Beginning MySQL Database Design and Optimization   3              |
|                                                                     |
|   : TITLE - SUBJECT                                                 |
+---------------------------------------------------------------------+

Instead of one table in unnormalized form, we now have 4 tables conforming to the 1NF.

Satisfying 2NF

The _Book_ table has one candidate key, the compound key {TITLE , FORMAT}.[13] Consider the following table fragment:

  Title                                                     Format      Author         Author Nationality   Price   Pages   Thickness   Genre ID   Genre Name        _Publisher ID_
  --------------------------------------------------------- ----------- -------------- -------------------- ------- ------- ----------- ---------- ----------------- ----------------
  Beginning MySQL Database Design and Optimization          Hardcover   Chad Russell   American             49.99   520     Thick       1          Tutorial          _1_
  Beginning MySQL Database Design and Optimization          E-book      Chad Russell   American             22.34   520     Thick       1          Tutorial          _1_
  The Relational Model for Database Management: Version 2   E-book      E.F.Codd       British              13.88   538     Thick       2          Popular science   _2_
  The Relational Model for Database Management: Version 2   Paperback   E.F.Codd       British              39.99   538     Thick       2          Popular science   _2_

  : Book

All of the attributes that are not part of the key depend on _Title_, but only _Price_ also depends on _Format_. To conform to 2NF and remove duplicities, every non-key attribute must depend on the whole key, not just part of it.

To normalize this table, make {TITLE} the (simple) key so that every non-key attribute depends upon the whole key, and remove _Price_ into a separate table so that its dependency on _Format_ can be preserved:

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
|   Title                                                     Author         Author Nationality   Pages   Thickness   Genre ID   Genre Name        _Publisher ID_   |   Title                                                     Format      Price   |
|   --------------------------------------------------------- -------------- -------------------- ------- ----------- ---------- ----------------- ---------------- |   --------------------------------------------------------- ----------- ------- |
|   Beginning MySQL Database Design and Optimization          Chad Russell   American             520     Thick       1          Tutorial          _1_              |   Beginning MySQL Database Design and Optimization          Hardcover   49.99   |
|   The Relational Model for Database Management: Version 2   E.F.Codd       British              538     Thick       2          Popular science   _2_              |   Beginning MySQL Database Design and Optimization          E-book      22.34   |
|                                                                                                                                                                   |   The Relational Model for Database Management: Version 2   E-book      13.88   |
|   : Book                                                                                                                                                          |   The Relational Model for Database Management: Version 2   Paperback   39.99   |
|                                                                                                                                                                   |                                                                                 |
|                                                                                                                                                                   |   : Format - Prices                                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

Now, the book table conforms to 2NF.

Satisfying 3NF

A table in third normal form (3NF) is a table in 2NF that has no transitive dependencies. Note the book table with more rows (previously omitted for brevity):

  Title                                                     Author             Author Nationality   Pages   Thickness   Genre ID   Genre Name        _Publisher ID_
  --------------------------------------------------------- ------------------ -------------------- ------- ----------- ---------- ----------------- ----------------
  Beginning MySQL Database Design and Optimization          Chad Russell       American             520     Thick       1          Tutorial          _1_
  The Relational Model for Database Management: Version 2   E.F.Codd           British              538     Thick       2          Popular science   _2_
  Learning SQL                                              Alan Beaulieu      American             338     Slim        1          Tutorial          _3_
  SQL Cookbook                                              Anthony Molinaro   American             636     Thick       1          Tutorial          _3_

  : Book

GENRE ID and GENRE NAME both depend upon the primary key {TITLE}, but they are not independent of one another. The dependency of, say, GENRE NAME on the primary key can be deduced from the dependency of GENRE NAME on GENRE ID and of GENRE ID on the primary key. Since there are more titles than genres, that dependency introduces redundant data into the Book table which can be eliminated by abstracting the dependency of GENRE NAME on GENRE ID into its own table:

+-------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
|   Title                                                     Author             Author Nationality   Pages   Thickness   _Genre ID_   _Publisher ID_   | {| class="wikitable" |+Book Genres !Genre ID !Genre Name |- |1 |Tutorial |- |2 |Popular science |} |
|   --------------------------------------------------------- ------------------ -------------------- ------- ----------- ------------ ---------------- |                                                                                                    |
|   Beginning MySQL Database Design and Optimization          Chad Russell       American             520     Thick       _1_          _1_              |                                                                                                    |
|   The Relational Model for Database Management: Version 2   E.F.Codd           British              538     Thick       _2_          _2_              |                                                                                                    |
|   Learning SQL                                              Alan Beaulieu      American             338     Slim        _1_          _3_              |                                                                                                    |
|   SQL Cookbook                                              Anthony Molinaro   American             636     Thick       _1_          _3_              |                                                                                                    |
|                                                                                                                                                       |                                                                                                    |
|   : Book                                                                                                                                              |                                                                                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+

The Book table is now in third normal form. Although tables in 1NF are by definition normalized, "normalized" is commonly used to mean 3NF.[14]

Satisfying EKNF

EKNF falls strictly between 3NF and BCNF and isn't much discussed in the literature. It is intended _“to capture the salient qualities of both 3NF and BCNF”_ while avoiding the problems of both (namely, that 3NF is “too forgiving” and BCNF is “prone to computational complexity”). Since it is rarely mentioned in literature, it is not included in this example. [15] For more information on the EKNF, see its own Wikipedia page.

Satisfying BCNF

A relational schema R is considered to be in BOYCE–CODD NORMAL FORM (BCNF) if, for every one of its dependencies X → Y, one of the following conditions hold true:

-   X → Y is a trivial functional dependency (i.e., Y is a subset of X)
-   X is a superkey for schema R

Consider the table in 3NF from the previous step:

  Title                                                     Author             Author Nationality   Pages   Thickness   _Genre ID_   _Publisher ID_
  --------------------------------------------------------- ------------------ -------------------- ------- ----------- ------------ ----------------
  Beginning MySQL Database Design and Optimization          Chad Russell       American             520     Thick       _1_          _1_
  The Relational Model for Database Management: Version 2   E.F.Codd           British              538     Thick       _2_          _2_
  Learning SQL                                              Alan Beaulieu      American             338     Slim        _1_          _3_
  SQL Cookbook                                              Anthony Molinaro   American             636     Thick       _1_          _3_

  : Book

There is a non-trivial dependency violating BCNF - _{AUTHOR} → {AUTHOR NATIONALITY}_. Therefore, the table should be decomposed:

+----------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+--+
|   Title                                                     Author             Pages   Thickness   _Genre ID_   _Publisher ID_   |   Author             Author Nationality   |  |
|   --------------------------------------------------------- ------------------ ------- ----------- ------------ ---------------- |   ------------------ -------------------- |  |
|   Beginning MySQL Database Design and Optimization          Chad Russell       520     Thick       _1_          _1_              |   Chad Russell       American             |  |
|   The Relational Model for Database Management: Version 2   E.F.Codd           538     Thick       _2_          _2_              |   E.F.Codd           British              |  |
|   Learning SQL                                              Alan Beaulieu      338     Slim        _1_          _3_              |   Alan Beaulieu      American             |  |
|   SQL Cookbook                                              Anthony Molinaro   636     Thick       _1_          _3_              |   Anthony Molinaro   American             |  |
|                                                                                                                                  |                                           |  |
|   : Book                                                                                                                         |   : Author - Nationality                  |  |
+----------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+--+

Now, _each attribute represents a fact about the key, the whole key, and nothing but the key_. Therefore BCNF has been achieved. [16]

Satisfying 4NF

Assume the database is owned by a book retailer franchise that has several franchisees that own shops in different locations. And therefore the retailer decided to add a table that contains data about availability of the books at different locations:

  Franchisee ID   Title                                                     Location
  --------------- --------------------------------------------------------- ------------
  1               Beginning MySQL Database Design and Optimization          California
  1               Beginning MySQL Database Design and Optimization          Florida
  1               Beginning MySQL Database Design and Optimization          Texas
  1               The Relational Model for Database Management: Version 2   California
  1               The Relational Model for Database Management: Version 2   Florida
  1               The Relational Model for Database Management: Version 2   Texas
  2               Beginning MySQL Database Design and Optimization          California
  2               Beginning MySQL Database Design and Optimization          Florida
  2               Beginning MySQL Database Design and Optimization          Texas
  2               The Relational Model for Database Management: Version 2   California
  2               The Relational Model for Database Management: Version 2   Florida
  2               The Relational Model for Database Management: Version 2   Texas
  3               Beginning MySQL Database Design and Optimization          Texas


  : align="top" |FRANCHISEE - BOOK LOCATION

As this table structure consists of a compound primary key, it doesn't contain any non-key attributes and it's already in BCNF (and therefore also satisfies all the previous normal forms). However, if we assume that all available books are offered in each area, we might notice that the TITLE is not unambiguously bound to a certain LOCATION and therefore the table doesn't satisfy 4NF.

That means that, to satisfy the fourth normal form, this table needs to be decomposed as well:

+-----------------------------------------------------------------------------+----------------------------------------+
|   Franchisee ID   Title                                                     |   Franchisee ID   Location             |
|   --------------- --------------------------------------------------------- |   --------------- ------------         |
|   1               Beginning MySQL Database Design and Optimization          |   1               California           |
|   1               The Relational Model for Database Management: Version 2   |   1               Florida              |
|   2               Beginning MySQL Database Design and Optimization          |   1               Texas                |
|   2               The Relational Model for Database Management: Version 2   |   2               California           |
|   3               Beginning MySQL Database Design and Optimization          |   2               Florida              |
|                                                                             |   2               Texas                |
|                                                                             |   3               Texas                |
|   : align="top" |FRANCHISEE - BOOK                                          |                                        |
|                                                                             |                                        |
|                                                                             |   : align="top" |Franchisee - Location |
+-----------------------------------------------------------------------------+----------------------------------------+

Now, every record is unambiguously identified by a superkey, therefore 4NF is satisfied. [17]

Satisfying ETNF

Suppose the franchisees can also order books from different suppliers. Let the relation also be subject to the following constraint:

-   If a certain SUPPLIER supplies a certain TITLE
-   and the TITLE is supplied to the FRANCHISEE
-   and the FRANCHISEE is being supplied by the SUPPLIER,
-   then the SUPPLIER supplies the TITLE to the FRANCHISEE. [18]

  Supplier ID   Title                                                     Franchisee ID
  ------------- --------------------------------------------------------- ---------------
  1             Beginning MySQL Database Design and Optimization          1
  2             The Relational Model for Database Management: Version 2   2
  3             Learning SQL                                              3

  : Supplier - Book - Franchisee

This table is in 4NF, but the Supplier ID is equal to the join of its projections: { { SUPPLIER ID , BOOK } , { BOOK, FRANCHISEE ID } , { FRANCHISEE ID , SUPPLIER ID } }. No component of that join dependency is a superkey (the sole superkey being the entire heading), so the table does not satisfy the ETNF and can be further decomposed: [19]

+---------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------+
|   Supplier ID   Title                                                     |   Title                                                     Franchisee ID   |   Supplier ID   Franchisee ID   |
|   ------------- --------------------------------------------------------- |   --------------------------------------------------------- --------------- |   ------------- --------------- |
|   1             Beginning MySQL Database Design and Optimization          |   Beginning MySQL Database Design and Optimization          1               |   1             1               |
|   2             The Relational Model for Database Management: Version 2   |   The Relational Model for Database Management: Version 2   2               |   2             2               |
|   3             Learning SQL                                              |   Learning SQL                                              3               |   3             3               |
|                                                                           |                                                                             |                                 |
|   : Supplier - Book                                                       |   : Book - Franchisee                                                       |   : Franchisee - Supplier       |
+---------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------+

After the decomposition, compliance to ETNF is ensured.

Satisfying 5NF

To spot a table not satisfying the 5NF, it is usually necessary to examine the data thoroughly. Suppose the table from 4NF example with a little modification in data and let's examine if it satisfies 5NF:

  Franchisee ID   Title                                                     Location
  --------------- --------------------------------------------------------- ------------
  1               Beginning MySQL Database Design and Optimization          California
  1               Learning SQL                                              California
  1               The Relational Model for Database Management: Version 2   Texas
  2               The Relational Model for Database Management: Version 2   California


  : align="top" |FRANCHISEE - BOOK LOCATION

If we decompose this table, we lower redundancies and get the following two tables:

+-----------------------------------------------------------------------------+----------------------------------------+
|   Franchisee ID   Title                                                     |   Franchisee ID   Location             |
|   --------------- --------------------------------------------------------- |   --------------- ------------         |
|   1               Beginning MySQL Database Design and Optimization          |   1               California           |
|   1               Learning SQL                                              |   1               Texas                |
|   1               The Relational Model for Database Management: Version 2   |   2               California           |
|   2               The Relational Model for Database Management: Version 2   |                                        |
|                                                                             |                                        |
|                                                                             |   : align="top" |FRANCHISEE - LOCATION |
|   : align="top" |FRANCHISEE - BOOK                                          |                                        |
+-----------------------------------------------------------------------------+----------------------------------------+

What happens if we try to join these tables? The query would return the following data:

  Franchisee ID   Title                                                     Location
  --------------- --------------------------------------------------------- ------------
  1               Beginning MySQL Database Design and Optimization          California
  1               Learning SQL                                              California
  1               The Relational Model for Database Management: Version 2   California
  1               The Relational Model for Database Management: Version 2   Texas
  1               Learning SQL                                              Texas
  1               Beginning MySQL Database Design and Optimization          Texas
  2               The Relational Model for Database Management: Version 2   California


  : align="top" |FRANCHISEE - BOOK - LOCATION JOINED

Apparently, the JOIN returns three more rows than it should - let's try to add another table to clarify the relation. We end up with three separate tables:
{| |

  Franchisee ID   Title
  --------------- ---------------------------------------------------------
  1               Beginning MySQL Database Design and Optimization
  1               Learning SQL
  1               The Relational Model for Database Management: Version 2
  2               The Relational Model for Database Management: Version 2


  : align="top" |FRANCHISEE - BOOK

|

  Franchisee ID   Location
  --------------- ------------
  1               California
  1               Texas
  2               California


  : align="top" |FRANCHISEE - LOCATION

|

  Location     Title
  ------------ ---------------------------------------------------------
  California   Beginning MySQL Database Design and Optimization
  California   Learning SQL
  California   The Relational Model for Database Management: Version 2
  Texas        The Relational Model for Database Management: Version 2


  : align="top" |LOCATION - BOOK

|} What will the JOIN return now? It actually is not possible to join these three tables. That means it wasn't possible to decompose the FRANCHISEE - BOOK LOCATION without data loss, therefore the table already satisfies 5NF. [20]

C.J. Date has argued that only a database in 5NF is truly "normalized".[21]

Satisfying DKNF

Let's have a look at the BOOK table from previous examples and see if it satisfies the Domain Key Normal Form:

  Title                                                     PAGES   Thickness   _Genre ID_   _Publisher ID_
  --------------------------------------------------------- ------- ----------- ------------ ----------------
  Beginning MySQL Database Design and Optimization          520     Thick       _1_          _1_
  The Relational Model for Database Management: Version 2   538     Thick       _2_          _2_
  Learning SQL                                              338     Slim        _1_          _3_
  SQL Cookbook                                              636     Thick       _1_          _3_

  : Book

Logically, THICKNESS is determined by number of pages. That means it depends on PAGES which is not a key. Let's set an example convention saying a book up to 350 pages is considered "slim" and a book over 350 pages is considered "thick".

This convention is technically a constraint but it is neither a domain constraint nor a key constraint; therefore we cannot rely on domain constraints and key constraints to keep the data integrity.

In other words - nothing prevents us from putting, for example, "Thick" for a book with only 50 pages - and this makes the table violate DKNF.

To solve this, we can create a table holding enumeration that defines the THICKNESS and remove that column from the original table:

+---------------------------------------------+---------------------------------------------------------------------------------------------------+
|   Thickness   Min pages   Max pages         |   Title                                                     Pages   _Genre ID_   _Publisher ID_   |
|   ----------- ----------- ----------------- |   --------------------------------------------------------- ------- ------------ ---------------- |
|   Slim        1           350               |   Beginning MySQL Database Design and Optimization          520     _1_          _1_              |
|   Thick       351         999,999,999,999   |   The Relational Model for Database Management: Version 2   538     _2_          _2_              |
|                                             |   Learning SQL                                              338     _1_          _3_              |
|   : Thickness Enum                          |   SQL Cookbook                                              636     _1_          _3_              |
|                                             |                                                                                                   |
|                                             |   : Book - Pages - Genre - Publisher                                                              |
+---------------------------------------------+---------------------------------------------------------------------------------------------------+

That way, the domain integrity violation has been eliminated, and the table is in DKNF.

Satisfying 6NF

A simple and intuitive definition of the sixth normal form is that _"a table is in 6NF when THE ROW CONTAINS THE PRIMARY KEY, AND AT MOST ONE OTHER ATTRIBUTE"_. [22]

That means, for example, the PUBLISHERS table designed while creating the 1NF

  Publisher_ID   Name     Country
  -------------- -------- ---------
  1              Apress   USA

  : Publisher

needs to be further decomposed into two tables:

+---------------------------+----------------------------+
|   Publisher_ID   Name     |   Publisher_ID   Country   |
|   -------------- -------- |   -------------- --------- |
|   1              Apress   |   1              USA       |
|                           |                            |
|   : Publisher             |   : Publisher country      |
+---------------------------+----------------------------+

Such normalization to 6NF is mostly used in data warehouses where the benefits outweigh the drawbacks. [23]


See also

-   Denormalization
-   Database refactoring


Notes and references


Further reading

-   Date, C. J. (1999), _An Introduction to Database Systems_ (8th ed.). Addison-Wesley Longman. .
-   Kent, W. (1983) _A Simple Guide to Five Normal Forms in Relational Database Theory_, Communications of the ACM, vol. 26, pp. 120–125
-   H.-J. Schek, P. Pistor Data Structures for an Integrated Data Base Management and Information Retrieval System


External links

-   -   Database Normalization Basics by Mike Chapple (About.com)
-   Database Normalization Intro, Part 2
-   An Introduction to Database Normalization by Mike Hillyer.
-   A tutorial on the first 3 normal forms by Fred Coulson
-   Description of the database normalization basics by Microsoft
-   Normalization in DBMS by Chaitanya (beginnersbook.com)
-   A Step-by-Step Guide to Database Normalization
-   ETNF – Essential tuple normal form

Database_normalization Category:Database constraints Category:Data management Category:Data modeling Category:Relational algebra

[1] "The adoption of a relational model of data ... permits the development of a universal data sub-language based on an applied predicate calculus. A first-order predicate calculus suffices if the collection of relations is in first normal form. Such a language would provide a yardstick of linguistic power for all other proposed data languages, and would itself be a strong candidate for embedding (with appropriate syntactic modification) in a variety of host languages (programming, command- or problem-oriented)." Codd, "A Relational Model of Data for Large Shared Data Banks" , p. 381

[2] Codd, E.F. Chapter 23, "Serious Flaws in SQL", in _The Relational Model for Database Management: Version 2_. Addison-Wesley (1990), pp. 371–389

[3]

[4] Codd, E. F. "Further Normalization of the Data Base Relational Model". (Presented at Courant Computer Science Symposia Series 6, "Data Base Systems", New York City, May 24–25, 1971.) IBM Research Report RJ909 (August 31, 1971). Republished in Randall J. Rustin (ed.), _Data Base Systems: Courant Computer Science Symposia Series 6_. Prentice-Hall, 1972.

[5] Codd, E. F. "Recent Investigations into Relational Data Base Systems". IBM Research Report RJ1385 (April 23, 1974). Republished in _Proc. 1974 Congress_ (Stockholm, Sweden, 1974), N.Y.: North-Holland (1974).

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13] The table fragment itself has several candidate keys (simple key _Price_, and compound keys of _Format_ together with any column except _Price_ or _Thickness_), but we assume that in the complete table only _{Title, Format}_ will be unique.

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