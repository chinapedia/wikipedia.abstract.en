In computer science, a PRIORITY QUEUE is an abstract data type which is like a regular queue or stack data structure, but where additionally each element has a "priority" associated with it. In a priority queue, an element with high priority is served before an element with low priority. In some implementations, if two elements have the same priority, they are served according to the order in which they were enqueued, while in other implementations, ordering of elements with the same priority is undefined.

While priority queues are often implemented with heaps, they are conceptually distinct from heaps. A priority queue is an abstract concept like "a list" or "a map"; just as a list can be implemented with a linked list or an array, a priority queue can be implemented with a heap or a variety of other methods such as an unordered array.


Operations

A priority queue must at least support the following operations:

-   _is_empty_: check whether the queue has no elements.
-   _insert_with_priority_: add an element to the queue with an associated priority.
-   _pull_highest_priority_element_: remove the element from the queue that has the _highest priority_, and return it.

        This is also known as "_pop_element(Off)_", "_get_maximum_element_" or "_get_front(most)_element_".
        Some conventions reverse the order of priorities, considering lower values to be higher priority, so this may also be known as "_get_minimum_element_", and is often referred to as "_get-min_" in the literature.
        This may instead be specified as separate "_peek_at_highest_priority_element_" and "_delete_element_" functions, which can be combined to produce "_pull_highest_priority_element_".

In addition, _peek_ (in this context often called _find-max_ or _find-min_), which returns the highest-priority element but does not modify the queue, is very frequently implemented, and nearly always executes in _O_(1) time. This operation and its _O_(1) performance is crucial to many applications of priority queues.

More advanced implementations may support more complicated operations, such as _pull_lowest_priority_element_, inspecting the first few highest- or lowest-priority elements, clearing the queue, clearing subsets of the queue, performing a batch insert, merging two or more queues into one, incrementing priority of any element, etc.

One can imagine a priority queue as a modified queue, but when one would get the next element off the queue, the highest-priority element is retrieved first.

Stacks and queues may be modeled as particular kinds of priority queues. As a reminder, here is how stacks and queues behave:

-   _stack_ – elements are pulled in last-in first-out-order (e.g., a stack of papers)
-   _queue_ – elements are pulled in first-in first-out-order (e.g., a line in a cafeteria)

In a stack, the priority of each inserted element is monotonically increasing; thus, the last element inserted is always the first retrieved. In a queue, the priority of each inserted element is monotonically decreasing; thus, the first element inserted is always the first retrieved.


Implementation

Naive implementations

There are a variety of simple, usually inefficient, ways to implement a priority queue. They provide an analogy to help one understand what a priority queue is. For instance, one can keep all the elements in an unsorted list. Whenever the highest-priority element is requested, search through all elements for the one with the highest priority. (In big _O_ notation: _O_(1) insertion time, _O_(_n_) pull time due to search.)

Usual implementation

To improve performance, priority queues typically use a heap as their backbone, giving _O_(log _n_) performance for inserts and removals, and _O_(_n_) to build initially. Variants of the basic heap data structure such as pairing heaps or Fibonacci heaps can provide better bounds for some operations.[1]

Alternatively, when a self-balancing binary search tree is used, insertion and removal also take _O_(log _n_) time, although building trees from existing sequences of elements takes _O_(_n_ log _n_) time; this is typical where one might already have access to these data structures, such as with third-party or standard libraries.

From a computational-complexity standpoint, priority queues are congruent to sorting algorithms. The section on the equivalence of priority queues and sorting algorithms, below, describes how efficient sorting algorithms can create efficient priority queues.

Specialized heaps

There are several specialized heap data structures that either supply additional operations or outperform heap-based implementations for specific types of keys, specifically integer keys.

-   When the set of keys is {1, 2, ..., _C_}, and only _insert_, _find-min_ and _extract-min_ are needed, a bucket queue can be constructed as an array of linked lists plus a pointer , initially . Inserting an item with key appends the item to the 'th, and updates , both in constant time. _Extract-min_ deletes and returns one item from the list with index , then increments if needed until it again points to a non-empty list; this takes time in the worst case. These queues are useful for sorting the vertices of a graph by their degree.[2]
-   For the set of keys {1, 2, ..., _C_}, a van Emde Boas tree would support the _minimum_, _maximum_, _insert_, _delete_, _search_, _extract-min_, _extract-max_, _predecessor_ and _successor_ operations in _O_(log log _C_) time, but has a space cost for small queues of about _O_(2^(_m_/2)), where _m_ is the number of bits in the priority value.[3]
-   The Fusion tree algorithm by Fredman and Willard implements the _minimum_ operation in _O_(1) time and _insert_ and _extract-min_ operations in $O(\sqrt{\log n})$ time however it is stated by the author that, "Our algorithms have theoretical interest only; The constant factors involved in the execution times preclude practicality.".[4]

For applications that do many "peek" operations for every "extract-min" operation, the time complexity for peek actions can be reduced to _O_(1) in all tree and heap implementations by caching the highest priority element after every insertion and removal. For insertion, this adds at most a constant cost, since the newly inserted element is compared only to the previously cached minimum element. For deletion, this at most adds an additional "peek" cost, which is typically cheaper than the deletion cost, so overall time complexity is not significantly impacted.

Monotone priority queues are specialized queues that are optimized for the case where no item is ever inserted that has a lower priority (in the case of min-heap) than any item previously extracted. This restriction is met by several practical applications of priority queues.

Summary of running times


Equivalence of priority queues and sorting algorithms

Using a priority queue to sort

The semantics of priority queues naturally suggest a sorting method: insert all the elements to be sorted into a priority queue, and sequentially remove them; they will come out in sorted order. This is actually the procedure used by several sorting algorithms, once the layer of abstraction provided by the priority queue is removed. This sorting method is equivalent to the following sorting algorithms:

  Name             Priority Queue Implementation       Best       Average    Worst
  ---------------- ----------------------------------- ---------- ---------- ----------
  Heapsort         Heap                                nlog (n)   nlog (n)   nlog (n)
  Smoothsort       Leonardo Heap                       n          nlog (n)   nlog (n)
  Selection sort   Unordered Array                     n²         n²         n²
  Insertion sort   Ordered Array                       n          n²         n²
  Tree sort        Self-balancing binary search tree   nlog (n)   nlog (n)   nlog (n)

Using a sorting algorithm to make a priority queue

A sorting algorithm can also be used to implement a priority queue. Specifically, Thorup says:[5]

  We present a general deterministic linear space reduction from priority queues to sorting implying that if we can sort up to _n_ keys in _S_(_n_) time per key, then there is a priority queue supporting _delete_ and _insert_ in _O_(_S_(_n_)) time and _find-min_ in constant time.

That is, if there is a sorting algorithm which can sort in _O_(_S_) time per key, where _S_ is some function of _n_ and word size,[6] then one can use the given procedure to create a priority queue where pulling the highest-priority element is _O_(1) time, and inserting new elements (and deleting elements) is _O_(_S_) time. For example, if one has an _O_(_n_ log log _n_) sort algorithm, one can create a priority queue with _O_(1) pulling and _O_(log log _n_) insertion.


Libraries

A priority queue is often considered to be a "container data structure".

The Standard Template Library (STL), and the C++ 1998 standard, specifies priority_queue as one of the STL container adaptor class templates. However, it does not specify how two elements with same priority should be served, and indeed, common implementations will not return them according to their order in the queue. It implements a max-priority-queue, and has three parameters: a comparison object for sorting such as a function object (defaults to less if unspecified), the underlying container for storing the data structures (defaults to std::vector), and two iterators to the beginning and end of a sequence. Unlike actual STL containers, it does not allow iteration of its elements (it strictly adheres to its abstract data type definition). STL also has utility functions for manipulating another random-access container as a binary max-heap. The Boost libraries also have an implementation in the library heap.

Python's heapq module implements a binary min-heap on top of a list.

Java's library contains a class, which implements a min-priority-queue.

Go's library contains a container/heap module, which implements a min-heap on top of any compatible data structure.

The Standard PHP Library extension contains the class SplPriorityQueue.

Apple's Core Foundation framework contains a CFBinaryHeap structure, which implements a min-heap.


Applications

Bandwidth management

Priority queuing can be used to manage limited resources such as bandwidth on a transmission line from a network router. In the event of outgoing traffic queuing due to insufficient bandwidth, all other queues can be halted to send the traffic from the highest priority queue upon arrival. This ensures that the prioritized traffic (such as real-time traffic, e.g. an RTP stream of a VoIP connection) is forwarded with the least delay and the least likelihood of being rejected due to a queue reaching its maximum capacity. All other traffic can be handled when the highest priority queue is empty. Another approach used is to send disproportionately more traffic from higher priority queues.

Many modern protocols for local area networks also include the concept of priority queues at the media access control (MAC) sub-layer to ensure that high-priority applications (such as VoIP or IPTV) experience lower latency than other applications which can be served with best effort service. Examples include IEEE 802.11e (an amendment to IEEE 802.11 which provides quality of service) and ITU-T G.hn (a standard for high-speed local area network using existing home wiring (power lines, phone lines and coaxial cables).

Usually a limitation (policer) is set to limit the bandwidth that traffic from the highest priority queue can take, in order to prevent high priority packets from choking off all other traffic. This limit is usually never reached due to high level control instances such as the Cisco Callmanager, which can be programmed to inhibit calls which would exceed the programmed bandwidth limit.

Discrete event simulation

Another use of a priority queue is to manage the events in a discrete event simulation. The events are added to the queue with their simulation time used as the priority. The execution of the simulation proceeds by repeatedly pulling the top of the queue and executing the event thereon.

_See also_: Scheduling (computing), queueing theory

Dijkstra's algorithm

When the graph is stored in the form of adjacency list or matrix, priority queue can be used to extract minimum efficiently when implementing Dijkstra's algorithm, although one also needs the ability to alter the priority of a particular vertex in the priority queue efficiently.

Huffman coding

Huffman coding requires one to repeatedly obtain the two lowest-frequency trees. A priority queue is one method of doing this.

Best-first search algorithms

Best-first search algorithms, like the A* search algorithm, find the shortest path between two vertices or nodes of a weighted graph, trying out the most promising routes first. A priority queue (also known as the _fringe_) is used to keep track of unexplored routes; the one for which the estimate (a lower bound in the case of A*) of the total path length is smallest is given highest priority. If memory limitations make best-first search impractical, variants like the SMA* algorithm can be used instead, with a double-ended priority queue to allow removal of low-priority items.

ROAM triangulation algorithm

The Real-time Optimally Adapting Meshes (ROAM) algorithm computes a dynamically changing triangulation of a terrain. It works by splitting triangles where more detail is needed and merging them where less detail is needed. The algorithm assigns each triangle in the terrain a priority, usually related to the error decrease if that triangle would be split. The algorithm uses two priority queues, one for triangles that can be split and another for triangles that can be merged. In each step the triangle from the split queue with the highest priority is split, or the triangle from the merge queue with the lowest priority is merged with its neighbours.

Prim's algorithm for minimum spanning tree

Using min heap priority queue in Prim's algorithm to find the minimum spanning tree of a connected and undirected graph, one can achieve a good running time. This min heap priority queue uses the min heap data structure which supports operations such as _insert_, _minimum_, _extract-min_, _decrease-key_.[7] In this implementation, the weight of the edges is used to decide the priority of the vertices. Lower the weight, higher the priority and higher the weight, lower the priority.[8]


See also

-   Batch queue
-   Command queue
-   Job scheduler


References


Further reading

-


External links

-   C++ reference for std::priority_queue
-   Descriptions by Lee Killough
-   PQlib - Open source Priority Queue library for C
-   libpqueue is a generic priority queue (heap) implementation (in C) used by the Apache HTTP Server project.
-   Survey of known priority queue structures by Stefan Xenos
-   UC Berkeley - Computer Science 61B - Lecture 24: Priority Queues (video) - introduction to priority queues using binary heap

Priority_queues Category:Abstract data types

[1]  Third edition, p. 518.

[2]

[3] P. van Emde Boas. Preserving order in a forest in less than logarithmic time. In _Proceedings of the 16th Annual Symposium on Foundations of Computer Science_, pages 75-84. IEEE Computer Society, 1975.

[4] Michael L. Fredman and Dan E. Willard. Surpassing the information theoretic bound with fusion trees. _Journal of Computer and System Sciences_, 48(3):533-551, 1994

[5]

[6]

[7]

[8]