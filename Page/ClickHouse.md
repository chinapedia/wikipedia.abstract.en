CLICKHOUSE is an open-source column-oriented DBMS (columnar database management system) for online analytical processing (OLAP).

ClickHouse was developed by the Russian IT company Yandex for the Yandex.Metrica web analytics service.[1][2][3][4] ClickHouse allows analysis of data that is updated in real time. The system is marketed for high performance.[5]

The project was released as open-source software under the Apache 2 license in June 2016.[6]

ClickHouse is used by the Yandex.Tank load testing tool.[7] Yandex.Market uses ClickHouse to monitor site accessibility and KPIs.[8] ClickHouse was also implemented at CERN’s LHCb experiment[9] to store and process metadata on 10 billion events with over 1000 attributes per event, and Tinkoff Bank uses ClickHouse as a data store for a project.[10]


History

Yandex.Metrica previously used a classical approach, when raw data was stored in aggregated form.[11] This approach can help reduce the amount of stored data. However, it has several limitations and disadvantages:

-   The list of available reports must be pre-determined, and there is no way to make a custom report.
-   The volume of data can increase after aggregation. This happens when data is aggregated by a large number of keys or using keys with high cardinality (such as URLs).
-   It's difficult to support logical consistency around reports with different aggregations.

A different approach is to store unaggregated data. Processing raw data requires a high-performance system, since all calculations are made in real time. To solve this problem, a column-oriented DBMS is needed that can handle analytical data on the scale of the entire Internet. Yandex began developing its own. The first ClickHouse prototype appeared in 2009. By the end of 2014, Yandex.Metrica version 2.0 was released. The new version has an interface for creating custom reports and uses ClickHouse for storing and processing data.


Features

The main features of the ClickHouse DBMS are:[12]

-   _True column-oriented DBMS._ Nothing is stored with the values. For example, constant-length values are supported to avoid storing their length "number" next to the values.
-   _Linear scalability._ It's possible to extend a cluster by adding servers.
-   _Fault tolerance._ The system is a cluster of shards, where each shard is a group of replicas. ClickHouse uses asynchronous multimaster replication. Data is written to any available replica, then distributed to all the remaining replicas. ZooKeeper is used for coordinating processes, but it's not involved in query processing and execution.
-   _Capability to store and process petabytes of data._
-   _SQL support._ ClickHouse supports an extended SQL-like language that includes arrays and nested data structures, approximate and URI functions, and the availability to connect an external key-value store.
-   _High performance._[13]
    -   Vector calculations are used. Data is not only stored by columns, but is processed by vectors (parts of columns). This approach allows to achieve high CPU performance.
    -   Sampling and approximate calculations are supported.
    -   Parallel and distributed query processing is available (including JOINs).
-   _Data compression._
-   _Hard disk drive (HDD) optimization._ The system can process data that doesn't fit in random-access memory (RAM).
-   _Clients for database (DB) connectivity._ Database connection options include the console client, the HTTP API, or one of the wrappers (wrappers are available for Python, PHP,[14] NodeJS,[15] Perl,[16] Ruby[17] and R[18]). A JDBC driver is also available for ClickHouse.[19]
-   _Detailed documentation._


Limitations

ClickHouse has some features that can be considered disadvantages:

-   There is no support for transactions.
-   By default when performing aggregations the query intermediate states must fit in the RAM on a single server. However ClickHouse can be configured to spill on the disk in such case.
-   Lack of full-fledged UPDATE/DELETE implementation.


Use cases

ClickHouse was designed for OLAP queries.[20]

-   It works with a small number of tables that contain a large number of columns.
-   Queries can use a large number of rows extracted from the DB, but only a small subset of columns.
-   Queries are relatively rare (usually around 100 RPS per server).
-   For simple queries, latencies of about 50 ms are allowed.
-   Column values are fairly small, usually consisting of numbers and short strings (for example, 60 bytes per URL).
-   High throughput is required when processing a single query (up to billions of rows per second per server).
-   A query result is mostly filtered or aggregated.
-   Data update uses a simple scenario (usually batch-only, without complicated transactions).

One of the common cases for ClickHouse is server log analysis. After setting regular data uploads to ClickHouse (it's recommended to insert data in fairly large batches with more than 1000 rows), it's possible to analyze incidents with instant queries or monitor a service's metrics, such as error rates, response times, and so on.

ClickHouse can also be used as an internal data warehouse for in-house analysts. ClickHouse can store data from different systems (such as Hadoop or certain logs) and analysts can build internal dashboards with the data or perform real-time analysis for business purposes.


Benchmark results

According to benchmark tests conducted by developers,[21] for OLAP queries ClickHouse is more than 100 times faster than Hive (a DBMS based on the Hadoop technology stack) or MySQL (a common RDBMS).


References


External links

-   ClickHouse official page

Category:Free database management systems

[1]

[2]  Competitor Analysis {{!}} Google Analytics, Google Universal Analytics, Yandex Metrica|last=Datanyze|website=Datanyze|language=en-US|access-date=2016-11-10}}

[3]

[4]

[5]  Percona Live Amsterdam - Open Source Database Conference 2016|website=www.percona.com|access-date=2016-11-10}}

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

[21]