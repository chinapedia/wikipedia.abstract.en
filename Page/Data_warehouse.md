Data_warehouse_overview.JPG Data_warehouse_architecture.jpg

In computing, a DATA WAREHOUSE (DW or DWH), also known as an ENTERPRISE DATA WAREHOUSE (EDW), is a system used for reporting and data analysis, and is considered a core component of business intelligence.[1] DWs are central repositories of integrated data from one or more disparate sources. They store current and historical data in one single place[2] that are used for creating analytical reports for workers throughout the enterprise.[3]

The data stored in the warehouse is uploaded from the operational systems (such as marketing or sales). The data may pass through an operational data store and may require data cleansing[4] for additional operations to ensure data quality before it is used in the DW for reporting.

The typical extract, transform, load (ETL)-based data warehouse[5] uses staging, data integration, and access layers to house its key functions. The staging layer or staging database stores raw data extracted from each of the disparate source data systems. The integration layer integrates the disparate data sets by transforming the data from the staging layer often storing this transformed data in an operational data store (ODS) database. The integrated data are then moved to yet another database, often called the data warehouse database, where the data is arranged into hierarchical groups, often called dimensions, and into facts and aggregate facts. The combination of facts and dimensions is sometimes called a star schema. The access layer helps users retrieve data.[6]

The main source of the data is cleansed, transformed, catalogued, and made available for use by managers and other business professionals for data mining, online analytical processing, market research and decision support.[7] However, the means to retrieve and analyze data, to extract, transform, and load data, and to manage the data dictionary are also considered essential components of a data warehousing system. Many references to data warehousing use this broader context. Thus, an expanded definition for data warehousing includes business intelligence tools, tools to extract, transform, and load data into the repository, and tools to manage and retrieve metadata.


Benefits

A data warehouse maintains a copy of information from the source transaction systems. This architectural complexity provides the opportunity to:

-   Integrate data from multiple sources into a single database and data model. More congregation of data to single database so a single query engine can be used to present data in an ODS.
-   Mitigate the problem of database isolation level lock contention in transaction processing systems caused by attempts to run large, long-running, analysis queries in transaction processing databases.
-   Maintain data history, even if the source transaction systems do not.
-   Integrate data from multiple source systems, enabling a central view across the enterprise. This benefit is always valuable, but particularly so when the organization has grown by merger.
-   Improve data quality, by providing consistent codes and descriptions, flagging or even fixing bad data.
-   Present the organization's information consistently.
-   Provide a single common data model for all data of interest regardless of the data's source.
-   Restructure the data so that it makes sense to the business users.
-   Restructure the data so that it delivers excellent query performance, even for complex analytic queries, without impacting the operational systems.
-   Add value to operational business applications, notably customer relationship management (CRM) systems.
-   Make decision–support queries easier to write.
-   Organize and disambiguate repetitive data


Generic

The environment for data warehouses and marts includes the following:

-   Source systems that provide data to the warehouse or mart;
-   Data integration technology and processes that are needed to prepare the data for use;
-   Different architectures for storing data in an organization's data warehouse or data marts;
-   Different tools and applications for the variety of users;
-   Metadata, data quality, and governance processes must be in place to ensure that the warehouse or mart meets its purposes.

In regards to source systems listed above, R. Kelly Rainer states, "A common source for the data in data warehouses is the company's operational databases, which can be relational databases".[8]

Regarding data integration, Rainer states, "It is necessary to extract data from source systems, transform them, and load them into a data mart or warehouse".[9]

Rainer discusses storing data in an organization's data warehouse or data marts.[10]

Metadata are data about data. "IT personnel need information about data sources; database, table, and column names; refresh schedules; and data usage measures".[11]

Today, the most successful companies are those that can respond quickly and flexibly to market changes and opportunities. A key to this response is the effective and efficient use of data and information by analysts and managers.[12] A "data warehouse" is a repository of historical data that are organized by subject to support decision makers in the organization.[13] Once data are stored in a data mart or warehouse, they can be accessed.


Related systems (data mart, OLAP, OLTP, predictive analytics)

A data mart is a simple form of a data warehouse that is focused on a single subject (or functional area), hence they draw data from a limited number of sources such as sales, finance or marketing. Data marts are often built and controlled by a single department within an organization. The sources could be internal operational systems, a central data warehouse, or external data.[14] Denormalization is the norm for data modeling techniques in this system. Given that data marts generally cover only a subset of the data contained in a data warehouse, they are often easier and faster to implement.

  Attribute                      Data warehouse    Data mart
  ------------------------------ ----------------- -----------------
  Scope of the data              enterprise-wide   department-wide
  Number of subject areas        multiple          single
  How difficult to build         difficult         easy
  How much time takes to build   more              less
  Amount of memory               larger            limited

  : Difference between data warehouse and

Types of data marts include dependent, independent, and hybrid data marts.

Online analytical processing (OLAP) is characterized by a relatively low volume of transactions. Queries are often very complex and involve aggregations. For OLAP systems, response time is an effectiveness measure. OLAP applications are widely used by Data Mining techniques. OLAP databases store aggregated, historical data in multi-dimensional schemas (usually star schemas). OLAP systems typically have data latency of a few hours, as opposed to data marts, where latency is expected to be closer to one day. The OLAP approach is used to analyze multidimensional data from multiple sources and perspectives. The three basic operations in OLAP are : Roll-up (Consolidation), Drill-down and Slicing & Dicing.

Online transaction processing (OLTP) is characterized by a large number of short on-line transactions (INSERT, UPDATE, DELETE). OLTP systems emphasize very fast query processing and maintaining data integrity in multi-access environments. For OLTP systems, effectiveness is measured by the number of transactions per second. OLTP databases contain detailed and current data. The schema used to store transactional databases is the entity model (usually 3NF).[15] Normalization is the norm for data modeling techniques in this system.

Predictive analytics is about finding and quantifying hidden patterns in the data using complex mathematical models that can be used to predict future outcomes. Predictive analysis is different from OLAP in that OLAP focuses on historical data analysis and is reactive in nature, while predictive analysis focuses on the future. These systems are also used for customer relationship management (CRM).


History

The concept of data warehousing dates back to the late 1980s[16] when IBM researchers Barry Devlin and Paul Murphy developed the "business data warehouse". In essence, the data warehousing concept was intended to provide an architectural model for the flow of data from operational systems to decision support environments. The concept attempted to address the various problems associated with this flow, mainly the high costs associated with it. In the absence of a data warehousing architecture, an enormous amount of redundancy was required to support multiple decision support environments. In larger corporations, it was typical for multiple decision support environments to operate independently. Though each environment served different users, they often required much of the same stored data. The process of gathering, cleaning and integrating data from various sources, usually from long-term existing operational systems (usually referred to as legacy systems), was typically in part replicated for each environment. Moreover, the operational systems were frequently reexamined as new decision support requirements emerged. Often new requirements necessitated gathering, cleaning and integrating new data from "data marts" that was tailored for ready access by users.

Key developments in early years of data warehousing:

-   1960s – General Mills and Dartmouth College, in a joint research project, develop the terms _dimensions_ and _facts_.[17]
-   1970s – ACNielsen and IRI provide dimensional data marts for retail sales.[18]
-   1970s – Bill Inmon begins to define and discuss the term Data Warehouse.
-   1975 – Sperry Univac introduces MAPPER (MAintain, Prepare, and Produce Executive Reports) is a database management and reporting system that includes the world's first 4GL. It is the first platform designed for building Information Centers (a forerunner of contemporary data warehouse technology).
-   1983 – Teradata introduces the DBC/1012 database computer specifically designed for decision support.[19]
-   1984 – Metaphor Computer Systems, founded by David Liddle and Don Massaro, releases a hardware/software package and GUI for business users to create a database management and analytic system.
-   1985 - Sperry Corporation publishes an article (Martyn Jones and Philip Newman) on information centers, where they introduce the term MAPPER data warehouse in the context of information centers.
-   1988 – Barry Devlin and Paul Murphy publish the article _An architecture for a business and information system_ where they introduce the term "business data warehouse".[20]
-   1990 – Red Brick Systems, founded by Ralph Kimball, introduces Red Brick Warehouse, a database management system specifically for data warehousing.
-   1991 – Prism Solutions, founded by Bill Inmon, introduces Prism Warehouse Manager, software for developing a data warehouse.
-   1992 – Bill Inmon publishes the book _Building the Data Warehouse_.[21]
-   1995 – The Data Warehousing Institute, a for-profit organization that promotes data warehousing, is founded.
-   1996 – Ralph Kimball publishes the book _The Data Warehouse Toolkit_.[22]
-   2000 – Dan Linstedt releases in the public domain the Data vault modeling conceived in 1990 as an alternative to Inmon and Kimball to provide long-term historical storage of data coming in from multiple operational systems, with emphasis on tracing, auditing and resiliance to change of the source data model.
-   2012 – Bill Inmon develops and makes public technology known as "textual disambiguation". Textual disambiguation applies context to raw text and reformats the raw text and context into a standard data base format. Once raw text is passed through textual disambiguation, it can easily and efficiently be accessed and analyzed by standard business intelligence technology. Textual disambiguation is accomplished through the execution of textual ETL. Textual disambiguation is useful wherever raw text is found, such as in documents, Hadoop, email, and so forth.


Information storage

Facts

A fact is a value, or measurement, which represents a fact about the managed entity or system.

Facts, as reported by the reporting entity, are said to be at raw level; e.g., in a mobile telephone system, if a BTS (base transceiver station) receives 1,000 requests for traffic channel allocation, allocates for 820, and rejects the remaining, it would report three FACTS or measurements to a management system:

-   tch_req_total = 1000
-   tch_req_success = 820
-   tch_req_fail = 180

Facts at the raw level are further aggregated to higher levels in various dimensions to extract more service or business-relevant information from it. These are called aggregates or summaries or aggregated facts.

For instance, if there are three BTS in a city, then the facts above can be aggregated from the BTS to the city level in the network dimension. For example:

-   tch_req_success_city = tch_req_success_bts1 + tch_req_success_bts2 + tch_req_success_bts3
-   avg_tch_req_success_city = (tch_req_success_bts1 + tch_req_success_bts2 + tch_req_success_bts3) / 3

Dimensional versus normalized approach for storage of data

There are three or more leading approaches to storing data in a data warehouse — the most important approaches are the dimensional approach and the normalized approach.

Dimensional approach

The dimensional approach refers to Ralph Kimball's approach in which it is stated that the data warehouse should be modeled using a Dimensional Model/star schema. The normalized approach, also called the 3NF model (Third Normal Form) refers to Bill Inmon's approach in which it is stated that the data warehouse should be modeled using an E-R model/normalized model.

In a dimensional approach, transaction data are partitioned into "facts", which are generally numeric transaction data, and "dimensions", which are the reference information that gives context to the facts. For example, a sales transaction can be broken up into facts such as the number of products ordered and the total price paid for the products, and into dimensions such as order date, customer name, product number, order ship-to and bill-to locations, and salesperson responsible for receiving the order.

A key advantage of a dimensional approach is that the data warehouse is easier for the user to understand and to use. Also, the retrieval of data from the data warehouse tends to operate very quickly.[23] Dimensional structures are easy to understand for business users, because the structure is divided into measurements/facts and context/dimensions. Facts are related to the organization's business processes and operational system whereas the dimensions surrounding them contain context about the measurement (Kimball, Ralph 2008). Another advantage offered by dimensional model is that it does not involve a relational database every time. Thus, this type of modeling technique is very useful for end-user queries in data warehouse.

The model of facts and dimensions can also be understood as data cube. Where the dimensions are the categorical coordinates in a multi-dimensional cube, while the fact is a value corresponding to the coordinates.

The main disadvantages of the dimensional approach are the following:

1.  To maintain the integrity of facts and dimensions, loading the data warehouse with data from different operational systems is complicated.
2.  It is difficult to modify the data warehouse structure if the organization adopting the dimensional approach changes the way in which it does business.

Normalized approach

In the normalized approach, the data in the data warehouse are stored following, to a degree, database normalization rules. Tables are grouped together by _subject areas_ that reflect general data categories (e.g., data on customers, products, finance, etc.). The normalized structure divides data into entities, which creates several tables in a relational database. When applied in large enterprises the result is dozens of tables that are linked together by a web of joins. Furthermore, each of the created entities is converted into separate physical tables when the database is implemented (Kimball, Ralph 2008).[24] The main advantage of this approach is that it is straightforward to add information into the database. Some disadvantages of this approach are that, because of the number of tables involved, it can be difficult for users to join data from different sources into meaningful information and to access the information without a precise understanding of the sources of data and of the data structure of the data warehouse.

Both normalized and dimensional models can be represented in entity-relationship diagrams as both contain joined relational tables. The difference between the two models is the degree of normalization (also known as Normal Forms). These approaches are not mutually exclusive, and there are other approaches. Dimensional approaches can involve normalizing data to a degree (Kimball, Ralph 2008).

In _Information-Driven Business_,[25] Robert Hillard proposes an approach to comparing the two approaches based on the information needs of the business problem. The technique shows that normalized models hold far more information than their dimensional equivalents (even when the same fields are used in both models) but this extra information comes at the cost of usability. The technique measures information quantity in terms of information entropy and usability in terms of the Small Worlds data transformation measure.[26]


Design methods

Bottom-up design

In the _bottom-up_ approach, data marts are first created to provide reporting and analytical capabilities for specific business processes. These data marts can then be integrated to create a comprehensive data warehouse. The data warehouse bus architecture is primarily an implementation of "the bus", a collection of conformed dimensions and conformed facts, which are dimensions that are shared (in a specific way) between facts in two or more data marts.[27]

Top-down design

The _top-down_ approach is designed using a normalized enterprise data model. "Atomic" data, that is, data at the greatest level of detail, are stored in the data warehouse. Dimensional data marts containing data needed for specific business processes or specific departments are created from the data warehouse.[28]

Hybrid design

Data warehouses (DW) often resemble the hub and spokes architecture. Legacy systems feeding the warehouse often include customer relationship management and enterprise resource planning, generating large amounts of data. To consolidate these various data models, and facilitate the extract transform load process, data warehouses often make use of an operational data store, the information from which is parsed into the actual DW. To reduce data redundancy, larger systems often store the data in a normalized way. Data marts for specific reports can then be built on top of the data warehouse.

A hybrid DW database is kept on third normal form to eliminate data redundancy. A normal relational database, however, is not efficient for business intelligence reports where dimensional modelling is prevalent. Small data marts can shop for data from the consolidated warehouse and use the filtered, specific data for the fact tables and dimensions required. The DW provides a single source of information from which the data marts can read, providing a wide range of business information. The hybrid architecture allows a DW to be replaced with a master data management repository where operational, not static information could reside.

The data vault modeling components follow hub and spokes architecture. This modeling style is a hybrid design, consisting of the best practices from both third normal form and star schema. The data vault model is not a true third normal form, and breaks some of its rules, but it is a top-down architecture with a bottom up design. The data vault model is geared to be strictly a data warehouse. It is not geared to be end-user accessible, which when built, still requires the use of a data mart or star schema based release area for business purposes.


Data warehouse characteristics

There are basic features that define the data in the data warehouse that include subject orientation, data integration, time-variant, nonvolatile data, and data granularity.

Subject-Oriented

Unlike the operational systems, the data in the data warehouse revolves around subjects of the enterprise (database normalization). Subject orientation can be really useful for decision making. Gathering the required objects is called subject oriented.

Integrated

The data found within the data warehouse is integrated. Since it comes from several operational systems, all inconsistencies must be removed. Consistencies include naming conventions, measurement of variables, encoding structures, physical attributes of data, and so forth.

Time-variant

While operational systems reflect current values as they support day-to-day operations, data warehouse data represents data over a long time horizon (up to 10 years) which means it stores historical data. It is mainly meant for data mining and forecasting, If a user is searching for a buying pattern of a specific customer, the user needs to look at data on the current and past purchases.[29]

Nonvolatile

The data in the data warehouse is read-only which means it cannot be updated, created, or deleted.[30]

Summarized

In the data warehouse, data is summarized at different levels.The user may start looking at the total sale units of a product in an entire region. Then the user looks at the states in that region. Finally, they may examine the individual stores in a certain state. Therefore, typically, the analysis starts at a higher level and moves down to lower levels of details.[31]


Data warehouse architecture

The different methods used to construct/organize a data warehouse specified by an organization are numerous. The hardware utilized, software created and data resources specifically required for the correct functionality of a data warehouse are the main components of the data warehouse architecture. All data warehouses have multiple phases in which the requirements of the organization are modified and fine tuned.[32]


Versus operational system

Operational systems are optimized for preservation of data integrity and speed of recording of business transactions through use of database normalization and an entity-relationship model. Operational system designers generally follow Codd's 12 rules of database normalization to ensure data integrity. Fully normalized database designs (that is, those satisfying all Codd rules) often result in information from a business transaction being stored in dozens to hundreds of tables. Relational databases are efficient at managing the relationships between these tables. The databases have very fast insert/update performance because only a small amount of data in those tables is affected each time a transaction is processed. To improve performance, older data are usually periodically purged from operational systems.

Data warehouses are optimized for analytic access patterns. Analytic access patterns generally involve selecting specific fields and rarely if ever 'select *' as is more common in operational databases. Because of these differences in access patterns, operational databases (loosely, OLTP) benefit from the use of a row-oriented DBMS whereas analytics databases (loosely, OLAP) benefit from the use of a column-oriented DBMS. Unlike operational systems which maintain a snapshot of the business, data warehouses generally maintain an infinite history which is implemented through ETL processes that periodically migrate data from the operational systems over to the data warehouse.


Evolution in organization use

These terms refer to the level of sophistication of a data warehouse:

Offline operational data warehouse: Data warehouses in this stage of evolution are updated on a regular time cycle (usually daily, weekly or monthly) from the operational systems and the data is stored in an integrated reporting-oriented data
Offline data warehouse: Data warehouses at this stage are updated from data in the operational systems on a regular basis and the data warehouse data are stored in a data structure designed to facilitate reporting.
On time data warehouse: Online Integrated Data Warehousing represent the real time Data warehouses stage data in the warehouse is updated for every transaction performed on the source data
Integrated data warehouse: These data warehouses assemble data from different areas of business, so users can look up the information they need across other systems.[33]


References


Further reading

-   Davenport, Thomas H. and Harris, Jeanne G. _Competing on Analytics: The New Science of Winning_ (2007) Harvard Business School Press.
-   Ganczarski, Joe. _Data Warehouse Implementations: Critical Implementation Factors Study_ (2009) VDM Verlag
-   Kimball, Ralph and Ross, Margy. _The Data Warehouse Toolkit_ Third Edition (2013) Wiley,
-   Linstedt, Graziano, Hultgren. _The Business of Data Vault Modeling_ Second Edition (2010) Dan linstedt,
-   William Inmon. _Building the Data Warehouse_ (2005) John Wiley and Sons,

Category:Business intelligence Category:Data management Data_warehousing Category:Information technology management

[1]

[2]

[3]

[4]

[5]

[6]

[7] Marakas & O'Brien 2009

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] Kimball 2002, pg. 16

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

[28] Gartner, Of Data Warehouses, Operational Data Stores, Data Marts and Data Outhouses, Dec 2005

[29]

[30]

[31]

[32]

[33]