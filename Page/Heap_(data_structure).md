max-heap with node keys being integers from 1 to 100]] In computer science, a HEAP is a specialized tree-based data structure which is essentially an almost complete[1] tree that satisfies the HEAP PROPERTY: in a _max heap_, for any given node C, if P is a parent node of C, then the _key_ (the _value_) of P is greater than or equal to the key of C. In a _min heap_, the key of P is less than or equal to the key of C.[2] The node at the "top" of the heap (with no parents) is called the _root_ node.

The heap is one maximally efficient implementation of an abstract data type called a priority queue, and in fact, priority queues are often referred to as "heaps", regardless of how they may be implemented. In a heap, the highest (or lowest) priority element is always stored at the root. However, a heap is not a sorted structure; it can be regarded as being partially ordered. A heap is a useful data structure when it is necessary to repeatedly remove the object with the highest (or lowest) priority.

A common implementation of a heap is the binary heap, in which the tree is a binary tree (see figure). The heap data structure, specifically the binary heap, was introduced by J. W. J. Williams in 1964, as a data structure for the heapsort sorting algorithm.[3] Heaps are also crucial in several efficient graph algorithms such as Dijkstra's algorithm. When a heap is a complete binary tree, it has a smallest possible height—a heap with _N_ nodes and for each node _a_ branches always has log_(_a_) _N_ height.

Note that, as shown in the graphic, there is no implied ordering between siblings or cousins and no implied sequence for an in-order traversal (as there would be in, e.g., a binary search tree). The heap relation mentioned above applies only between nodes and their parents, grandparents, etc. The maximum number of children each node can have depends on the type of heap.


Operations

The common operations involving heaps are:

Basic

-   _find-max_ (or _find-min_): find a maximum item of a max-heap, or a minimum item of a min-heap, respectively (a.k.a. _peek_)
-   _insert_: adding a new key to the heap (a.k.a., _push_[4])
-   _extract-max_ (or _extract-min_): returns the node of maximum value from a max heap [or minimum value from a min heap] after removing it from the heap (a.k.a., _pop_[5])
-   _delete-max_ (or _delete-min_): removing the root node of a max heap (or min heap), respectively
-   _replace_: pop root and push a new key. More efficient than pop followed by push, since only need to balance once, not twice, and appropriate for fixed-size heaps.[6]

Creation

-   _create-heap_: create an empty heap
-   _heapify_: create a heap out of given array of elements
-   _merge_ (_union_): joining two heaps to form a valid new heap containing all the elements of both, preserving the original heaps.
-   _meld_: joining two heaps to form a valid new heap containing all the elements of both, destroying the original heaps.

Inspection

-   _size_: return the number of items in the heap.
-   _is-empty_: return true if the heap is empty, false otherwise.

Internal

-   _increase-key_ or _decrease-key_: updating a key within a max- or min-heap, respectively
-   _delete_: delete an arbitrary node (followed by moving last node and sifting to maintain heap)
-   _sift-up_: move a node up in the tree, as long as needed; used to restore heap condition after insertion. Called "sift" because node moves up the tree until it reaches the correct level, as in a sieve.
-   _sift-down_: move a node down in the tree, similar to sift-up; used to restore heap condition after deletion or replacement.


Implementation

Heaps are usually implemented in an array (fixed size or dynamic array), and do not require pointers between elements. After an element is inserted into or deleted from a heap, the heap property may be violated and the heap must be balanced by internal operations.

Binary heaps may be represented in a very space-efficient way (as an implicit data structure) using an array alone. The first (or last) element will contain the root. The next two elements of the array contain its children. The next four contain the four children of the two child nodes, etc. Thus the children of the node at position _n_ would be at positions 2N and 2N + 1 in a one-based array, or 2N + 1 and 2N + 2 in a zero-based array. This allows moving up or down the tree by doing simple index computations. Balancing a heap is done by sift-up or sift-down operations (swapping elements which are out of order). As we can build a heap from an array without requiring extra memory (for the nodes, for example), heapsort can be used to sort an array in-place.

Different types of heaps implement the operations in different ways, but notably, insertion is often done by adding the new element at the end of the heap in the first available free space. This will generally violate the heap property, and so the elements are then sifted up until the heap property has been reestablished. Similarly, deleting the root is done by removing the root and then putting the last element in the root and sifting down to rebalance. Thus replacing is done by deleting the root and putting the _new_ element in the root and sifting down, avoiding a sifting up step compared to pop (sift down of last element) followed by push (sift up of new element).

Construction of a binary (or _d_-ary) heap out of a given array of elements may be performed in linear time using the classic Floyd algorithm, with the worst-case number of comparisons equal to 2_N_ − 2_s_₂(_N_) − _e_₂(_N_) (for a binary heap), where _s_₂(_N_) is the sum of all digits of the binary representation of _N_ and _e_₂(_N_) is the exponent of 2 in the prime factorization of _N_.[7] This is faster than a sequence of consecutive insertions into an originally empty heap, which is log-linear.


Variants

-   2–3 heap
-   B-heap
-   Beap
-   Binary heap
-   Binomial heap
-   Brodal queue
-   _d_-ary heap
-   Fibonacci heap
-   K-D Heap
-   Leaf heap
-   Leftist heap
-   Pairing heap
-   Radix heap
-   Randomized meldable heap
-   Skew heap
-   Soft heap
-   Ternary heap
-   Treap
-   Weak heap


Comparison of theoretic bounds for variants


Applications

The heap data structure has many applications.

-   Heapsort: One of the best sorting methods being in-place and with no quadratic worst-case scenarios.
-   Selection algorithms: A heap allows access to the min or max element in constant time, and other selections (such as median or kth-element) can be done in sub-linear time on data that is in a heap.[8]
-   Graph algorithms: By using heaps as internal traversal data structures, run time will be reduced by polynomial order. Examples of such problems are Prim's minimal-spanning-tree algorithm and Dijkstra's shortest-path algorithm.
-   Priority Queue: A priority queue is an abstract concept like "a list" or "a map"; just as a list can be implemented with a linked list or an array, a priority queue can be implemented with a heap or a variety of other methods.
-   K-way merge: A heap data structure is useful to merge many already-sorted input streams into a single sorted output stream. Examples of the need for merging include external sorting and streaming results from distributed data such as a log structured merge tree. The inner loop is obtaining the min element, replacing with the next element for the corresponding input stream, then doing a sift-down heap operation. (Alternatively the replace function.) (Using extract-max and insert functions of a priority queue are much less efficient.)
-   Order statistics: The Heap data structure can be used to efficiently find the kth smallest (or largest) element in an array.


Implementations

-   The C++ Standard Library provides the make_heap, push_heap and pop_heap algorithms for heaps (usually implemented as binary heaps), which operate on arbitrary random access iterators. It treats the iterators as a reference to an array, and uses the array-to-heap conversion. It also provides the container adaptor priority_queue, which wraps these facilities in a container-like class. However, there is no standard support for the replace, sift-up/sift-down, or decrease/increase-key operations.
-   The Boost C++ libraries include a heaps library. Unlike the STL, it supports decrease and increase operations, and supports additional types of heap: specifically, it supports _d_-ary, binomial, Fibonacci, pairing and skew heaps.
-   There is a generic heap implementation for C and C++ with D-ary heap and B-heap support. It provides an STL-like API.
-   The standard library of the D programming language includes std.container.BinaryHeap, which is implemented in terms of D's ranges. Instances can be constructed from any random-access range. BinaryHeap exposes an input range interface that allows iteration with D's built-in foreach statements and integration with the range-based API of the std.algorithm package.
-   The Java platform (since version 1.5) provides a binary heap implementation with the class in the Java Collections Framework. This class implements by default a min-heap; to implement a max-heap, programmer should write a custom comparator. There is no support for the replace, sift-up/sift-down, or decrease/increase-key operations.
-   Python has a heapq module that implements a priority queue using a binary heap. The library exposes a heapreplace function to support k-way merging.
-   PHP has both max-heap (SplMaxHeap) and min-heap (SplMinHeap) as of version 5.3 in the Standard PHP Library.
-   Perl has implementations of binary, binomial, and Fibonacci heaps in the Heap distribution available on CPAN.
-   The Go language contains a heap package with heap algorithms that operate on an arbitrary type that satisfies a given interface. That package does not support the replace, sift-up/sift-down, or decrease/increase-key operations.
-   Apple's Core Foundation library contains a CFBinaryHeap structure.
-   Pharo has an implementation of a heap in the Collections-Sequenceable package along with a set of test cases. A heap is used in the implementation of the timer event loop.
-   The Rust programming language has a binary max-heap implementation, BinaryHeap, in the collections module of its standard library.


See also

-   Sorting algorithm
-   Search data structure
-   Stack (abstract data type)
-   Queue (abstract data type)
-   Tree (data structure)
-   Treap, a form of binary search tree based on heap-ordered trees


References


External links

-   Heap at Wolfram MathWorld
-   Explanation of how the basic heap algorithms work
-

Heaps_(data_structures)

[1]

[2] Black (ed.), Paul E. (2004-12-14). Entry for _heap_ in _Dictionary of Algorithms and Data Structures_. Online version. U.S. National Institute of Standards and Technology, 14 December 2004. Retrieved on 2017-10-08 from https://xlinux.nist.gov/dads/HTML/heap.html.

[3]

[4] The Python Standard Library, 8.4. heapq — Heap queue algorithm, heapq.heappush

[5] The Python Standard Library, 8.4. heapq — Heap queue algorithm, heapq.heappop

[6] The Python Standard Library, 8.4. heapq — Heap queue algorithm, heapq.heapreplace

[7] .

[8]