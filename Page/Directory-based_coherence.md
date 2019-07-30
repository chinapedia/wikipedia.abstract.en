DIRECTORY-BASED COHERENCE is a mechanism to handle Cache coherence problem in Distributed shared memory (DSM) a.k.a. Non-Uniform Memory Access (NUMA). Another popular way is to use a special type of computer bus between all the nodes as a "shared bus" (a.k.a. System bus).[1] Directory-based coherence uses a special directory to serve instead of the shared bus in the bus-based coherence protocols. Both of these designs use the corresponding medium (i.e. directory or bus) as tool to facilitate the communication between different nodes, and to guarantee that the coherence protocol is working properly along all the communicating nodes. In directory based cache coherence, this is done by using this directory to keep track of the status of all cache blocks, the status of each block includes in which cache coherence "state" that block is, and which nodes are sharing that block at that time, which can be used to eliminate the need to broadcast all the signals to all nodes, and only send it to the nodes that are interested in this single block.

Following are a few advantages and disadvantages of the directory based cache coherence protocol:

-   SCALABILITY: This is one of the strongest motivations for going to directory based designs. What we mean by scalability, in short, is how good a specific system is in handling the growing amount of work that it is responsible to do . For this criteria, Bus based systems cannot do well due to the limitation caused when having a shared bus that all nodes are using in the same time. For a relatively small number of nodes, bus systems can do well. However, while the number of nodes is growing, some problems may occur in this regard. Especially since only one node is allowed to use the bus at a time, which will significantly harm the performance of the overall system. On the other hand, using directory-based systems, there will be no such bottleneck to constrain the scalability of the system.
-   SIMPLICITY: This is one of the points where bus-system is superior. Since the bus structure itself can serve as an organizer for all the traffic that goes through the system, and ensure the atomicity of all the signals passed through. Thus, there will be no need to put more effort in ensuring atomicity and ordering between signals as the case in directory based systems, which leads to several overhead faced in the later system design when dealing with issues like consistency.

According to the above discussion, it is clear that using bus based systems seems more attractive for relatively small systems. However, directory based systems become crucial when the system scale up and the number of nodes grows. So there is a kind of trade-off between the simplicity and the scalability when comparing between Bus-based and Directory-based cache coherence designs.[2]


History

The idea of Directory-based cache coherence systems began long ago. The idea of DASH (Directory Architecture for SHared-memory) was first proposed by C.K. Tang[3] in the mid 1970s. However, applying it to cache coherence was proposed a few years later, specifically in 1978, when researchers at Stanford university proposed the first version of this coherence systems called Stanford DASH, in a paper[4] that described the system with the difficulties and improvements associated with such designs. Beside this approach, several attempts were done to provide a scalable systems. For instance, BBN Butterfly[5] which was introduced in 1985, and IBM PR3[6] which was introduced in 1987, are some examples of scalable multiprocessor systems. However, both of these systems have a drawback; For example, BBN Butterfly does not have caches. Similarly, IBM PR3 does not provide hardware cache coherence, which limits the performance of both of these designs, especially when employing high performance processors.[7]

The limitations of other competitors made it easier for DASH based systems to get chosen when designing cache coherence systems and other systems needing scalability in cache-based nodes. In 1985, James Archibald[8] and Jean-Loup Baer from the University of Washington published a paper[9] that proposes a more economical, expandable, and modular variation of the "global directory" approach in the term of hardware use in the design.

In 1992, Daniel Lenoski from Stanford university published a paper[10] proposing advances in cache coherence protocols for directory-based systems. In a 1996 paper,[11] he introduced the design of the SGI Origin 2000, a family of server computers employing directory based cache coherence. The subsequent Origin 3000[12] was introduced in July 2000.


Protocols

Unlike snoopy coherence protocols, in a directory based coherence approach, the information about which caches have a copy of a block is maintained in a structure called _Directory_. In a directory based scheme, participating caches do not broadcast requests to all other sharing caches of the block in order to locate cached copies, instead it queries the directory to retrieve the information about which block have cached copies and sends only to those particular processors and hence traffic saving compared to a snoopy protocol is large. In well optimized applications, most data sharing is only for data that is read only, and there is little sharing for data that is frequently read and written. A directory approach can result in a substantial traffic saving compared to broadcast/snoopy approach in such applications.

Directory_Scheme.png

As shown in the data flow diagram, the actors involved in a distributed shared memory system implementing directory based coherence protocol are:

-   REQUESTOR NODE : This node is the processor who is requesting for a read/write of a memory block.
-   DIRECTORY NODE : This node maintains the information of the state of each cache block in the system and requestor directs its requests to the directory node.
-   OWNER NODE: An owner node owns the most recent state of the cache block, note that directory might not be always up to date with latest data.
-   SHARER NODE: One or many node which are sharing a copy of the cache block.

Directory_Protocol_State_transtion_diagram.pngRequestor and Owner nodes maintain their state transition similar to a snoopy coherence protocols like MESI protocol. However, unlike a bus based implementation where nodes communicate using a common bus, directory based implementation uses message passing model to exchange information required for maintaining cache coherence.

Directory node acts as a serializing point and all communications are directed through this node to maintain correctness.


Directory Node

A directory node keeps track of the overall state of a cache block in the entire cache system for all processors. It can be in three states :

-   UNCACHED (U): No processor has data cached, memory up-to-date .
-   SHARED (S): one or more processors have data cached, memory up-to-date. In this state directory and sharers have clean copy of the cached block.
-   EXCLUSIVE/MODIFIED (EM): one processor (owner) has data cached; memory out-of-date. Note that directory can not distinguish a block cached in an exclusive or modified state at the processor as processors can transition from an exclusive state to modified state with out any bus transaction.

Explanation of the Directory state transition Finite State Machine (refer image 1) is captured below in the table:

+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
| Initial State | Bus Request     | Response/ Action                                                                             | New State |
+===============+=================+==============================================================================================+===========+
| U             | BUSRD or BUSRDX | -   Fetch block from memory as the directory is having the updated copy of the block.        | EM        |
|               |                 | -   send the memory block to requestor using the message (REPLYD).                           |           |
|               |                 | -   if there are no sharers : requestor = first sharer, directory transitions into EM state. |           |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
| EM            | BUSRD           | -   Send intervention(INT) to the Owner                                                      | S         |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
|               | BUSRDX          | -   Send Invalidation(INV) to the current owner.                                             | -         |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
| S             | BUSRD           | -   Reply to the requestor with the memory block (REPLYD)                                    | -         |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
|               | BUSRDX          | -   Reply to the requestor with the memory block (REPLYD)                                    | EM        |
|               |                 | -   Invalidate(INV) all sharers.                                                             |           |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+
|               | BUSUPGR         | -   Invalidate(INV) all sharers.                                                             | EM        |
|               |                 | -   Reply to the requestor that he can upgrade .(REPLY)                                      |           |
+---------------+-----------------+----------------------------------------------------------------------------------------------+-----------+

In addition to cache state, a directory must track which processors have data when in the shared state. This is required to for sending invalidation and intervention requests to the individual processor caches which have the cache block in shared state. Few of the popular implementation approaches are:

-   FULL BIT-VECTOR: A bit field for each processor at the directory node are maintained. The storage overhead scales with the number of processors.
-   LIMITED POINTER: In this approach directory information of limited number of blocks is kept at the directory to reduce storage overhead.

Please note that the protocol described above is the basic implementation and race conditions can occur due to the fact that directory can be out of sync with the caches and also messages between processors can be overlapping. More complex implementations are available like Scalable Coherent Interface which have multiple states.

DASH[13] cache coherence protocol is another protocol that uses directory-based coherence scheme. DASH protocol uses a clustered approach, where processors inside a cluster are kept coherent using bus based snooping scheme, while the clusters are connected in a directory approach. Even though various protocols use different implementations for tracking cache blocks, however the concept of directory remains same.


See also

-   Coherence protocol
-   MSI protocol
-   Bit array
-   Distributed shared memory
-   Snoopy cache


References

Category:Computer architecture

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