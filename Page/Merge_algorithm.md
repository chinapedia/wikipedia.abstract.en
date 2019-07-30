MERGE ALGORITHMS are a family of algorithms that take multiple sorted lists as input and produce a single list as output, containing all the elements of the inputs lists in sorted order. These algorithms are used as subroutines in various sorting algorithms, most famously merge sort.


Application

The merge algorithm plays a critical role in the merge sort algorithm, a comparison-based sorting algorithm. Conceptually, merge sort algorithm consists of two steps:

1.  Recursively divide the list into sublists of (roughly) equal length, until each sublist contains only one element, or in the case of iterative (bottom up) merge sort, consider a list of _n_ elements as _n_ sub-lists of size 1. A list containing a single element is, by definition, sorted.
2.  Repeatedly merge sublists to create a new sorted sublist until the single list contains all elements. The single list is the sorted list.

The merge algorithm is used repeatedly in the merge sort algorithm.

An example merge sort is given in the illustration. It starts with an unsorted array of 7 integers. The array is divided into 7 partitions; each partition contains 1 element and is sorted. The sorted partitions are then merged to produce larger, sorted, partitions, until 1 partition, the sorted array, is left.


Merging two lists

Merging two sorted lists into one can be done in linear time and linear space. The following pseudocode demonstrates an algorithm that merges input lists (either linked lists or arrays) and into a new list .[1] The function yields the first element of a list; "dropping" an element means removing it from its list, typically by incrementing a pointer or index.

algorithm merge(A, B) is
    inputs A, B : list
    returns list
    C := new empty list
    while A is not empty and B is not empty do
        if head(A) ≤ head(B) then
            append head(A) to C
            drop the head of A
        else
            append head(B) to C
            drop the head of B
    _// By now, either A or B is empty. It remains to empty the other input list._
    while A is not empty do
        append head(A) to C
        drop the head of A
    while B is not empty do
        append head(B) to C
        drop the head of B
    return C

When the inputs are linked lists, this algorithm can be implemented to use only a constant amount of working space; the pointers in the lists' nodes can be reused for bookkeeping and for constructing the final merged list.

In the merge sort algorithm, this subroutine is typically used to merge two sub-arrays , of a single array . This can be done by copying the sub-arrays into a temporary array, then applying the merge algorithm above. The allocation of a temporary array can be avoided, but at the expense of speed and programming ease. Various in-place merge algorithms have been devised,[2] sometimes sacrificing the linear-time bound to produce an algorithm;[3] see for discussion.


K-way merging

-way merging generalizes binary merging to an arbitrary number of sorted input lists. Applications of -way merging arise in various sorting algorithms, including patience sorting[4] and an external sorting algorithm that divides its input into − 1}} blocks that fit in memory, sorts these one by one, then merges these blocks.

Several solutions to this problem exist. A naive solution is to do a loop over the lists to pick off the minimum element each time, and repeat this loop until all lists are empty:

-   Input: a list of lists.
-   While any of the lists is non-empty:
    -   Loop over the lists to find the one with the minimum first element.
    -   Output the minimum element and remove it from its list.

In the worst case, this algorithm performs element comparisons to perform its work if there are a total of elements in the lists.[5] It can be improved by storing the lists in a priority queue (min-heap) keyed by their first element:

-   Build a min-heap of the lists, using the first element as the key.
-   While any of the lists is non-empty:
    -   Let find-min(_h_)}}.
    -   Output the first element of list and remove it from its list.
    -   Re-heapify .

Searching for the next smallest element to be output (find-min) and restoring heap order can now be done in time (more specifically, comparisons), and the full problem can be solved in time (approximately comparisons).[6]

A third algorithm for the problem is a divide and conquer solution that builds on the binary merge algorithm:

-   If 1}}, output the single input list.
-   If 2}}, perform a binary merge.
-   Else, recursively merge the first lists and the final lists, then binary merge these.

When the input lists to this algorithm are ordered by length, shortest first, it requires fewer than comparisons, i.e., less than half the number used by the heap-based algorithm; in practice, it may be about as fast or slow as the heap-based algorithm.


Parallel merge

A parallel version of the binary merge algorithm can serve as a building block of a parallel merge sort. The following pseudocode demonstrates this algorithm in a parallel divide-and-conquer style (adapted from Cormen _et al._[7]). It operates on two sorted arrays and and writes the sorted output to array . The notation denotes the part of from index through , exclusive.

algorithm merge(A[i...j], B[k...ℓ], C[p...q]) is
    inputs A, B, C : array
           i, j, k, ℓ, p, q : indices
    let m = j - i,
        n = ℓ - k
    if m < n then
        swap A and B  _// ensure that A is the larger array: i, j still belong to A; k, ℓ to B_
        swap m and n
    if m ≤ 0 then
        return  _// base case, nothing to merge_
    let r = ⌊(i + j)/2⌋
    let s = binary-search(A[r], B[k...ℓ])
    let t = p + (r - i) + (s - k)
    C[t] = A[r]
    in parallel do
        merge(A[i...r], B[k...s], C[p...t])
        merge(A[r+1...j], B[s...ℓ], C[t+1...q])

The algorithm operates by splitting either or , whichever is larger, into (nearly) equal halves. It then splits the other array into a part with values smaller than the midpoint of the first, and a part with larger or equal values. (The binary search subroutine returns the index in where would be, if it were in ; that this always a number between and .) Finally, each pair of halves is merged recursively, and since the recursive calls are independent of each other, they can be done in parallel. Hybrid approach, where serial algorithm is used for recursion base case has been shown to perform well in practice [8]

The work performed by the algorithm for two arrays holding a total of elements, i.e., the running time of a serial version of it, is . This is optimal since elements need to be copied into . Its critical path length, however, is , meaning that it takes that much time on an ideal machine with an unbounded number of processors.

NOTE: The routine is not stable: if equal items are separated by splitting and , they will become interleaved in ; also swapping and will destroy the order, if equal items are spread among both input arrays. As a result, when used for sorting, this algorithm produces a sort that is not stable.


Language support

Some computer languages provide built-in or library support for merging sorted collections.

C++

The C++'s Standard Template Library has the function , which merges two sorted ranges of iterators, and , which merges two consecutive sorted ranges _in-place_. In addition, the (linked list) class has its own method which merges another list into itself. The type of the elements merged must support the less-than () operator, or it must be provided with a custom comparator.

C++17 allows for differing execution policies, namely sequential, parallel, and parallel-unsequenced.[9]

Python

Python's standard library (since 2.6) also has a function in the module, that takes multiple sorted iterables, and merges them into a single iterator.[10]


See also

-   Merge (revision control)
-   Join (relational algebra)
-   Join (SQL)
-   Join (Unix)


References


Further reading

-   Donald Knuth. _The Art of Computer Programming_, Volume 3: _Sorting and Searching_, Third Edition. Addison-Wesley, 1997. . Pages 158–160 of section 5.2.4: Sorting by Merging. Section 5.3.2: Minimum-Comparison Merging, pp. 197–207.


External links

-   High Performance Implementation of Parallel and Serial Merge in C# with source in GitHub and in C++ GitHub

Category:Articles with example pseudocode Category:Sorting algorithms

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] https://docs.python.org/library/heapq.html#heapq.merge