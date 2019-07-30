STARCOUNTER is an in-memory application platform built by Starcounter AB. The platform is based on a combined in-memory database engine and application server.


Technology

Starcounter_architecture.png A combined in-memory database engine and application server keeps data in one place. This technology is called "virtual machine database management system", or VMDBMS. The patent related to the technology explains it this way:

  In such a system, the environment is configured to maintain a database of objects in a database memory within the environment memory. An application executes in an application memory within the environment memory, and upon instantiation of a database object, the application environment allocates memory in the database for the database object, the database providing master storage for the database object.[1]

Tables and classes are the same as a consequence of the VMDBMS which lets the application and database be in the same virtual memory space. The implication of this is that there is no object-relational mapper (ORM). Instead, the database is directly accessed using SQL-like queries called NewSQL from the application code.[2]

A major drawback with in-memory databases is that main memory is volatile and does therefore not ensure durability. The solution to this, which Starcounter utilizes, is to write transaction logs to a disk the same way it's done in traditional SQL databases.[3] If data needs to be recovered, it's possible to do so by going back in the transaction logs.[4]

The database maintains ACID compliance by using transactional scope and transactional memory which allows for long-running transactions, nested transactions, and parallel transactions.[5]

Starcounter uses a Model-View-ViewModel (MVVM) pattern where the view model is hosted on the server. The server-side code is written using C# since the platform is making use of the .NET framework.[6][7] The communication between the client and the server is done using a thin client library that sends JSON-patches. The recommended way to build the view in Starcounter applications is to use HTML, CSS, Polymer, and Web Components, with as little logic as possible on the client side.


Similar Software

Starcounter can be likened by Oracle's TimesTen in-memory database and SAP HANA. What these have in common is that they are all based on in-memory technology and are often targeted towards customers that use real-time applications. The main difference is the way the database management system is integrated. SAP HANA makes use of a column-oriented database management system. TimesTen, on the other hand, uses a relational database management system (RDBMS). Starcounter is unique in that it uses an object-oriented approach that is integrated with the application (VMDBMS) with an underlying RDMBS .[8]


History

Starcounter AB was established and started its development of Starcounter in 2006. It received $1.8 million in funding from a VC round led by Industrifonden in 2015 to continue the development.[9]

The Starcounter 2.0 beta version, which bundles a web application framework with the database, was released in August 2013.[10]

Starcounter AB was named a "Cool Vendor" in In-Memory Computing Technologies for 2015 by Gartner.[11]

In September 2017, Starcounter AB took in 35 million SEK in funding from existing investors and an anonymous investor. [12]

Also in September 2017, Starcounter AB won a 2.2 million Euro prize in the competition "SME Instrument - Open Disruptive Innovation Scheme" organized by Horizon 2020. [13]


Adoption

Starcounter is used for enterprise installations such as the supply chain management application used by the Swedish superstore Gekås Ullared.[14]


References

Category:NewSQL Category:Proprietary database management systems Category:Database management systems

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