'''Distributed computing '''is a field of computer science that studies distributed systems. A _distributed system_ is a system whose components are located on different networked computers, which communicate and coordinate their actions by passing messages to one another.[1] The components interact with one another in order to achieve a common goal. Three significant characteristics of distributed systems are: concurrency of components, lack of a global clock, and independent failure of components.[2] Examples of distributed systems vary from SOA-based systems to massively multiplayer online games to peer-to-peer applications.

A computer program that runs within a distributed system is called a DISTRIBUTED PROGRAM (and distributed programming is the process of writing such programs).[3] There are many different types of implementations for the message passing mechanism, including pure HTTP, RPC-like connectors and message queues.[4]

_Distributed computing_ also refers to the use of distributed systems to solve computational problems. In _distributed computing_, a problem is divided into many tasks, each of which is solved by one or more computers,[5] which communicate with each other via message passing.[6]


Introduction

The word _parallel_ in terms such as "parallel system", "distributed programming", and "distributed algorithm" originally referred to computer networks where individual computers were physically distributed within some geographical area.[7] The terms are nowadays used in a much wider sense, even referring to autonomous processes that run on the same physical computer and interact with each other by message passing.[8]

While there is no single definition of a distributed system,[9] the following defining properties are commonly used as:

-   There are several autonomous computational entities (_computers_ or _nodes_), each of which has its own local memory.[10]
-   The entities communicate with each other by message passing.[11]

A distributed system may have a common goal, such as solving a large computational problem;[12] the user then perceives the collection of autonomous processors as a unit. Alternatively, each computer may have its own user with individual needs, and the purpose of the distributed system is to coordinate the use of shared resources or provide communication services to the users.[13]

Other typical properties of distributed systems include the following:

-   The system has to tolerate failures in individual computers.[14]
-   The structure of the system (network topology, network latency, number of computers) is not known in advance, the system may consist of different kinds of computers and network links, and the system may change during the execution of a distributed program.[15]
-   Each computer has only a limited, incomplete view of the system. Each computer may know only one part of the input.[16]


Parallel and distributed computing

Distributed systems are groups of networked computers, which have the same goal for their work. The terms "concurrent computing", "parallel computing", and "distributed computing" have a lot of overlap, and no clear distinction exists between them.[17] The same system may be characterized both as "parallel" and "distributed"; the processors in a typical distributed system run concurrently in parallel.[18] Parallel computing may be seen as a particular tightly coupled form of distributed computing,[19] and distributed computing may be seen as a loosely coupled form of parallel computing.[20] Nevertheless, it is possible to roughly classify concurrent systems as "parallel" or "distributed" using the following criteria:

-   In parallel computing, all processors may have access to a shared memory to exchange information between processors.[21]
-   In distributed computing, each processor has its own private memory (distributed memory). Information is exchanged by passing messages between the processors.[22]

The figure on the right illustrates the difference between distributed and parallel systems. Figure (a) is a schematic view of a typical distributed system; the system is represented as a network topology in which each node is a computer and each line connecting the nodes is a communication link. Figure (b) shows the same distributed system in more detail: each computer has its own local memory, and information can be exchanged only by passing messages from one node to another by using the available communication links. Figure (c) shows a parallel system in which each processor has a direct access to a shared memory.

The situation is further complicated by the traditional uses of the terms parallel and distributed _algorithm_ that do not quite match the above definitions of parallel and distributed _systems_ (see below for more detailed discussion). Nevertheless, as a rule of thumb, high-performance parallel computation in a shared-memory multiprocessor uses parallel algorithms while the coordination of a large-scale distributed system uses distributed algorithms.[23]


History

The use of concurrent processes that communicate by message-passing has its roots in operating system architectures studied in the 1960s.[24] The first widespread distributed systems were local-area networks such as Ethernet, which was invented in the 1970s.[25]

ARPANET, the predecessor of the Internet, was introduced in the late 1960s, and ARPANET e-mail was invented in the early 1970s. E-mail became the most successful application of ARPANET,[26] and it is probably the earliest example of a large-scale distributed application. In addition to ARPANET, and its successor, the Internet, other early worldwide computer networks included Usenet and FidoNet from the 1980s, both of which were used to support distributed discussion systems.[27]

The study of distributed computing became its own branch of computer science in the late 1970s and early 1980s. The first conference in the field, Symposium on Principles of Distributed Computing (PODC), dates back to 1982, and its counterpart International Symposium on Distributed Computing (DISC) was first held in Ottawa in 1985 as the International Workshop on Distributed Algorithms on Graphs.[28]


Architectures

Various hardware and software architectures are used for distributed computing. At a lower level, it is necessary to interconnect multiple CPUs with some sort of network, regardless of whether that network is printed onto a circuit board or made up of loosely coupled devices and cables. At a higher level, it is necessary to interconnect processes running on those CPUs with some sort of communication system.[29]

Distributed programming typically falls into one of several basic architectures: client–server, three-tier, _n_-tier, or peer-to-peer; or categories: loose coupling, or tight coupling.[30]

-   Client–server: architectures where smart clients contact the server for data then format and display it to the users. Input at the client is committed back to the server when it represents a permanent change.
-   Three-tier: architectures that move the client intelligence to a middle tier so that stateless clients can be used. This simplifies application deployment. Most web applications are three-tier.
-   _n_-tier: architectures that refer typically to web applications which further forward their requests to other enterprise services. This type of application is the one most responsible for the success of application servers.
-   Peer-to-peer: architectures where there are no special machines that provide a service or manage the network resources.[31] Instead all responsibilities are uniformly divided among all machines, known as peers. Peers can serve both as clients and as servers.[32]

Another basic aspect of distributed computing architecture is the method of communicating and coordinating work among concurrent processes. Through various message passing protocols, processes may communicate directly with one another, typically in a master/slave relationship. Alternatively, a "database-centric" architecture can enable distributed computing to be done without any form of direct inter-process communication, by utilizing a shared database.[33]


Applications

Reasons for using distributed systems and distributed computing may include:

1.  The very nature of an application may _require_ the use of a communication network that connects several computers: for example, data produced in one physical location and required in another location.
2.  There are many cases in which the use of a single computer would be possible in principle, but the use of a distributed system is _beneficial_ for practical reasons. For example, it may be more cost-efficient to obtain the desired level of performance by using a cluster of several low-end computers, in comparison with a single high-end computer. A distributed system can provide more reliability than a non-distributed system, as there is no single point of failure. Moreover, a distributed system may be easier to expand and manage than a monolithic uniprocessor system.[34]


Examples

Examples of distributed systems and applications of distributed computing include the following:[35]

-   telecommunication networks:
    -   telephone networks and cellular networks,
    -   computer networks such as the Internet,
    -   wireless sensor networks,
    -   routing algorithms;
-   network applications:
    -   World Wide Web and peer-to-peer networks,
    -   massively multiplayer online games and virtual reality communities,
    -   distributed databases and distributed database management systems,
    -   network file systems,
    -   distributed information processing systems such as banking systems and airline reservation systems;
-   real-time process control:
    -   aircraft control systems,
    -   industrial control systems;
-   parallel computation:
    -   scientific computing, including cluster computing and grid computing and various volunteer computing projects (see the list of distributed computing projects),
    -   distributed rendering in computer graphics


Theoretical foundations

Models

Many tasks that we would like to automate by using a computer are of question–answer type: we would like to ask a question and the computer should produce an answer. In theoretical computer science, such tasks are called computational problems. Formally, a computational problem consists of _instances_ together with a _solution_ for each instance. Instances are questions that we can ask, and solutions are desired answers to these questions.

Theoretical computer science seeks to understand which computational problems can be solved by using a computer (computability theory) and how efficiently (computational complexity theory). Traditionally, it is said that a problem can be solved by using a computer if we can design an algorithm that produces a correct solution for any given instance. Such an algorithm can be implemented as a computer program that runs on a general-purpose computer: the program reads a problem instance from input, performs some computation, and produces the solution as output. Formalisms such as random access machines or universal Turing machines can be used as abstract models of a sequential general-purpose computer executing such an algorithm.[36][37]

The field of concurrent and distributed computing studies similar questions in the case of either multiple computers, or a computer that executes a network of interacting processes: which computational problems can be solved in such a network and how efficiently? However, it is not at all obvious what is meant by "solving a problem" in the case of a concurrent or distributed system: for example, what is the task of the algorithm designer, and what is the concurrent or distributed equivalent of a sequential general-purpose computer?

The discussion below focuses on the case of multiple computers, although many of the issues are the same for concurrent processes running on a single computer.

Three viewpoints are commonly used:

Parallel algorithms in shared-memory model

-   All processors have access to a shared memory. The algorithm designer chooses the program executed by each processor.
-   One theoretical model is the parallel random access machines (PRAM) that are used.[38] However, the classical PRAM model assumes synchronous access to the shared memory.
-   Shared-memory programs can be extended to distributed systems if the underlying operating system encapsulates the communication between nodes and virtually unifies the memory across all individual systems.
-   A model that is closer to the behavior of real-world multiprocessor machines and takes into account the use of machine instructions, such as Compare-and-swap (CAS), is that of _asynchronous shared memory_. There is a wide body of work on this model, a summary of which can be found in the literature.[39][40]

Parallel algorithms in message-passing model

-   The algorithm designer chooses the structure of the network, as well as the program executed by each computer.
-   Models such as Boolean circuits and sorting networks are used.[41] A Boolean circuit can be seen as a computer network: each gate is a computer that runs an extremely simple computer program. Similarly, a sorting network can be seen as a computer network: each comparator is a computer.

Distributed algorithms in message-passing model

-   The algorithm designer only chooses the computer program. All computers run the same program. The system must work correctly regardless of the structure of the network.
-   A commonly used model is a graph with one finite-state machine per node.

In the case of distributed algorithms, computational problems are typically related to graphs. Often the graph that describes the structure of the computer network _is_ the problem instance. This is illustrated in the following example.

An example

Consider the computational problem of finding a coloring of a given graph _G_. Different fields might take the following approaches:

Centralized algorithms

-   The graph _G_ is encoded as a string, and the string is given as input to a computer. The computer program finds a coloring of the graph, encodes the coloring as a string, and outputs the result.

Parallel algorithms

-   Again, the graph _G_ is encoded as a string. However, multiple computers can access the same string in parallel. Each computer might focus on one part of the graph and produce a coloring for that part.
-   The main focus is on high-performance computation that exploits the processing power of multiple computers in parallel.

Distributed algorithms

-   The graph _G_ is the structure of the computer network. There is one computer for each node of _G_ and one communication link for each edge of _G_. Initially, each computer only knows about its immediate neighbors in the graph _G_; the computers must exchange messages with each other to discover more about the structure of _G_. Each computer must produce its own color as output.
-   The main focus is on coordinating the operation of an arbitrary distributed system.

While the field of parallel algorithms has a different focus than the field of distributed algorithms, there is a lot of interaction between the two fields. For example, the Cole–Vishkin algorithm for graph coloring[42] was originally presented as a parallel algorithm, but the same technique can also be used directly as a distributed algorithm.

Moreover, a parallel algorithm can be implemented either in a parallel system (using shared memory) or in a distributed system (using message passing).[43] The traditional boundary between parallel and distributed algorithms (choose a suitable network vs. run in any given network) does not lie in the same place as the boundary between parallel and distributed systems (shared memory vs. message passing).

Complexity measures

In parallel algorithms, yet another resource in addition to time and space is the number of computers. Indeed, often there is a trade-off between the running time and the number of computers: the problem can be solved faster if there are more computers running in parallel (see speedup). If a decision problem can be solved in polylogarithmic time by using a polynomial number of processors, then the problem is said to be in the class NC.[44] The class NC can be defined equally well by using the PRAM formalism or Boolean circuits—PRAM machines can simulate Boolean circuits efficiently and vice versa.[45]

In the analysis of distributed algorithms, more attention is usually paid on communication operations than computational steps. Perhaps the simplest model of distributed computing is a synchronous system where all nodes operate in a lockstep fashion. This model is commonly known as the LOCAL model. During each _communication round_, all nodes in parallel (1) receive the latest messages from their neighbours, (2) perform arbitrary local computation, and (3) send new messages to their neighbors. In such systems, a central complexity measure is the number of synchronous communication rounds required to complete the task.[46]

This complexity measure is closely related to the diameter of the network. Let _D_ be the diameter of the network. On the one hand, any computable problem can be solved trivially in a synchronous distributed system in approximately 2_D_ communication rounds: simply gather all information in one location (_D_ rounds), solve the problem, and inform each node about the solution (_D_ rounds).

On the other hand, if the running time of the algorithm is much smaller than _D_ communication rounds, then the nodes in the network must produce their output without having the possibility to obtain information about distant parts of the network. In other words, the nodes must make globally consistent decisions based on information that is available in their _local D-neighbourhood_. Many distributed algorithms are known with the running time much smaller than _D_ rounds, and understanding which problems can be solved by such algorithms is one of the central research questions of the field.[47] Typically an algorithm which solves a problem in polylogarithmic time in the network size is considered efficient in this model.

Another commonly used measure is the total number of bits transmitted in the network (cf. communication complexity).[48] The features of this concept are typically captured with the CONGEST(B) model, which similarly defined as the LOCAL model but where single messages can only contain B bits.

Other problems

Traditional computational problems take the perspective that we ask a question, a computer (or a distributed system) processes the question for a while, and then produces an answer and stops. However, there are also problems where we do not want the system to ever stop. Examples of such problems include the dining philosophers problem and other similar mutual exclusion problems. In these problems, the distributed system is supposed to continuously coordinate the use of shared resources so that no conflicts or deadlocks occur.

There are also fundamental challenges that are unique to distributed computing. The first example is challenges that are related to _fault-tolerance_. Examples of related problems include consensus problems,[49] Byzantine fault tolerance,[50] and self-stabilisation.[51]

A lot of research is also focused on understanding the _asynchronous_ nature of distributed systems:

-   Synchronizers can be used to run synchronous algorithms in asynchronous systems.[52]
-   Logical clocks provide a causal happened-before ordering of events.[53]
-   Clock synchronization algorithms provide globally consistent physical time stamps.[54]

Election

_Coordinator election_ (or _leader election_) is the process of designating a single process as the organizer of some task distributed among several computers (nodes). Before the task is begun, all network nodes are either unaware which node will serve as the "coordinator" (or leader) of the task, or unable to communicate with the current coordinator. After a coordinator election algorithm has been run, however, each node throughout the network recognizes a particular, unique node as the task coordinator.[55]

The network nodes communicate among themselves in order to decide which of them will get into the "coordinator" state. For that, they need some method in order to break the symmetry among them. For example, if each node has unique and comparable identities, then the nodes can compare their identities, and decide that the node with the highest identity is the coordinator.[56]

The definition of this problem is often attributed to LeLann, who formalized it as a method to create a new token in a token ring network in which the token has been lost.[57]

Coordinator election algorithms are designed to be economical in terms of total bytes transmitted, and time. The algorithm suggested by Gallager, Humblet, and Spira [58] for general undirected graphs has had a strong impact on the design of distributed algorithms in general, and won the Dijkstra Prize for an influential paper in distributed computing.

Many other algorithms were suggested for different kind of network graphs, such as undirected rings, unidirectional rings, complete graphs, grids, directed Euler graphs, and others. A general method that decouples the issue of the graph family from the design of the coordinator election algorithm was suggested by Korach, Kutten, and Moran.[59]

In order to perform coordination, distributed systems employ the concept of coordinators. The coordinator election problem is to choose a process from among a group of processes on different processors in a distributed system to act as the central coordinator. Several central coordinator election algorithms exist.[60]

Properties of distributed systems

So far the focus has been on _designing_ a distributed system that solves a given problem. A complementary research problem is _studying_ the properties of a given distributed system.[61][62]

The halting problem is an analogous example from the field of centralised computation: we are given a computer program and the task is to decide whether it halts or runs forever. The halting problem is undecidable in the general case, and naturally understanding the behaviour of a computer network is at least as hard as understanding the behaviour of one computer.[63]

However, there are many interesting special cases that are decidable. In particular, it is possible to reason about the behaviour of a network of finite-state machines. One example is telling whether a given network of interacting (asynchronous and non-deterministic) finite-state machines can reach a deadlock. This problem is PSPACE-complete,[64] i.e., it is decidable, but it is not likely that there is an efficient (centralised, parallel or distributed) algorithm that solves the problem in the case of large networks.


See also

-   AppScale
-   BOINC
-   Code mobility
-   Decentralized computing
-   Distributed algorithm
-   Distributed algorithmic mechanism design
-   Distributed cache
-   Distributed operating system
-   Edsger W. Dijkstra Prize in Distributed Computing
-   Fog computing
-   Folding@home
-   Grid computing
-   Inferno
-   Jungle computing
-   Layered queueing network
-   Library Oriented Architecture (LOA)
-   List of distributed computing conferences
-   List of distributed computing projects
-   List of important publications in concurrent, parallel, and distributed computing
-   Model checking
-   Parallel distributed processing
-   Parallel programming model
-   Plan 9 from Bell Labs
-   Shared nothing architecture


Notes


References

Books

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

Articles

-   .

-   .

-   .

-   .

Web sites

-   -


Further reading

Books

-   .

-   -   .

-   : Java Distributed Computing by Jim Faber, 1998

-   .

-   -

Articles

-   .

-

Conference Papers

-   C. Rodríguez, M. Villagra and B. Barán, , Bionetics2007, pp. 66–69, 2007.


External links

-   -

Distributed_computing Category:Decentralization

[1]

[2]

[3] . . , p. 10.

[4]

[5] .

[6] , p. 291–292. , p. 5.

[7] , p. 1.

[8]

[9] , p. 10.

[10] , pp. 8–9, 291. , p. 5. , p. 3. , p. xix, 1. , p. xv.

[11] , p. 291. , p. 3. , p. 4.

[12] , p. 3–4. , p. 1.

[13] , p. 4. , p. 2.

[14] , p. 4, 8. , p. 2–3. , p. 4.

[15] , p. 2. , p. 1.

[16] , p. 7. , p. xix, 2. , p. 4.

[17] , p. 10. .

[18] , p. xix, 1–2. , p. 1.

[19] , p. 1.

[20]

[21] , Chapter 15. .

[22] See references in Introduction.

[23]

[24] , p. 348.

[25] , p. 32.

[26] , The history of email.

[27]

[28]

[29]

[30]

[31] Vigna P, Casey MJ. _The Age of Cryptocurrency: How Bitcoin and the Blockchain Are Challenging the Global Economic Order_ St. Martin's Press January 27, 2015

[32]

[33]

[34] , Section 24.1.2.

[35] , p. 10–11. , p. 4–6. , p. xix, 1. , p. xv. , Section 24.

[36]

[37]

[38] , Section 30.

[39] , Chapters 2-6.

[40]

[41] , Sections 28 and 29.

[42] . , Section 30.5.

[43] , p. ix.

[44] , Section 6.7. , Section 15.3.

[45] , Section 15.2.

[46] , p. 17–23.

[47] , Sections 2.3 and 7. . .

[48]

[49] , Sections 5–7. , Chapter 13.

[50] , p. 99–102. , p. 192–193.

[51] . , Chapter 17.

[52] , Section 16. , Section 6.

[53] , Section 18. , Sections 6.2–6.3.

[54] , Section 6.4.

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64] , Section 19.3.