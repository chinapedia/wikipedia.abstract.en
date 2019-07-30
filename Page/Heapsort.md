In computer science, HEAPSORT is a comparison-based sorting algorithm. Heapsort can be thought of as an improved selection sort: like that algorithm, it divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region. The improvement consists of the use of a heap data structure rather than a linear-time search to find the maximum.[1]

Although somewhat slower in practice on most machines than a well-implemented quicksort, it has the advantage of a more favorable worst-case {{math runtime. Heapsort is an in-place algorithm, but it is not a stable sort.

Heapsort was invented by J. W. J. Williams in 1964.[2] This was also the birth of the heap, presented already by Williams as a useful data structure in its own right.[3] In the same year, R. W. Floyd published an improved version that could sort an array in-place, continuing his earlier research into the treesort algorithm.[4]


Overview

The heapsort algorithm can be divided into two parts.

In the first step, a heap is built out of the data. The heap is often placed in an array with the layout of a complete binary tree. The complete binary tree maps the binary tree structure into the array indices; each array index represents a node; the index of the node's parent, left child branch, or right child branch are simple expressions. For a zero-based array, the root node is stored at index 0; if i is the index of the current node, then

      iParent(i)     = floor((i-1) / 2) where floor functions map a real number to the smallest leading integer.
      iLeftChild(i)  = 2*i + 1
      iRightChild(i) = 2*i + 2

In the second step, a sorted array is created by repeatedly removing the largest element from the heap (the root of the heap), and inserting it into the array. The heap is updated after each removal to maintain the heap property. Once all objects have been removed from the heap, the result is a sorted array.

Heapsort can be performed in place. The array can be split into two parts, the sorted array and the heap. The storage of heaps as arrays is diagrammed here. The heap's invariant is preserved after each extraction, so the only cost is that of extraction.


Algorithm

The Heapsort algorithm involves preparing the list by first turning it into a max heap. The algorithm then repeatedly swaps the first value of the list with the last value, decreasing the range of values considered in the heap operation by one, and sifting the new first value into its position in the heap. This repeats until the range of considered values is one value in length.

The steps are:

1.  Call the buildMaxHeap() function on the list. Also referred to as heapify(), this builds a heap from a list in O(n) operations.
2.  Swap the first element of the list with the final element. Decrease the considered range of the list by one.
3.  Call the siftDown() function on the list to sift the new first element to its appropriate index in the heap.
4.  Go to step (2) unless the considered range of the list is one element.

The buildMaxHeap() operation is run once, and is in performance. The siftDown() function is , and is called times. Therefore, the performance of this algorithm is .

Pseudocode

The following is a simple way to implement the algorithm in pseudocode. Arrays are zero-based and swap is used to exchange two elements of the array. Movement 'down' means from the root towards the leaves, or from lower indices to higher. Note that during the sort, the largest element is at the root of the heap at a[0], while at the end of the sort, the largest element is in a[end].

procedure heapsort(a, count) is
    input: an unordered array _a_ of length _count_
 
    _(Build the heap in array a so that largest value is at the root)_
    heapify(a, count)
    _(The following loop maintains the invariants that a[0:end] is a heap and every element_
     _beyond end is greater than everything before it (so a[end:count] is in sorted order))_
    end ← count - 1
    while end > 0 do
        _(a[0] is the root and largest value. The swap moves it in front of the sorted elements.)_
        swap(a[end], a[0])
        _(the heap size is reduced by one)_
        end ← end - 1
        _(the swap ruined the heap property, so restore it)_
        siftDown(a, 0, end)

The sorting routine uses two subroutines, heapify and siftDown. The former is the common in-place heap construction routine, while the latter is a common subroutine for implementing heapify.

_(Put elements of 'a' in heap order, in-place)_
procedure heapify(a, count) is
    _(start is assigned the index in 'a' of the last parent node)_
    _(the last element in a 0-based array is at index count-1; find the parent of that element)_
    start ← iParent(count-1)
    
    while start ≥ 0 do
        _(sift down the node at index 'start' to the proper place such that all nodes below_
        '' the start index are in heap order)''
        siftDown(a, start, count - 1)
        _(go to the next parent node)_
        start ← start - 1
    _(after sifting down the root all nodes/elements are in heap order)_
''(Repair the heap whose root element is at index 'start', assuming the heaps rooted at its children are valid)
procedure siftDown(a, start, end) is
    root ← start
    while iLeftChild(root) ≤ end do    _(While the root has at least one child)_
        child ← iLeftChild(root)   _(Left child of root)_
        swap ← root                _(Keeps track of child to swap with)_
        if a[swap] < a[child]
            swap ← child
        _(If there is a right child and that child is greater)_
        if child+1 ≤ end and a[swap] < a[child+1]
            swap ← child + 1
        if swap = root
            _(The root holds the largest element. Since we assume the heaps rooted at the_
            '' children are valid, this means that we are done.)''
            return
        else
            swap(a[root], a[swap])
            root ← swap            _(repeat to continue sifting down the child now)_

The heapify procedure can be thought of as building a heap from the bottom up by successively sifting downward to establish the heap property. An alternative version (shown below) that builds the heap top-down and sifts upward may be simpler to understand. This siftUp version can be visualized as starting with an empty heap and successively inserting elements, whereas the siftDown version given above treats the entire input array as a full but "broken" heap and "repairs" it starting from the last non-trivial sub-heap (that is, the last parent node).

Also, the siftDown version of heapify [[Binary_heap#Building_a_heap|has

function leafSearch(a, i, end) is
    j ← i
    while iRightChild(j) ≤ end do
        _(Determine which of j's two children is the greater)_
        if a[iRightChild(j)] > a[iLeftChild(j)] then
            j ← iRightChild(j)
        else
            j ← iLeftChild(j)
    _(At the last level, there might be only one child)_
    if iLeftChild(j) ≤ end then
        j ← iLeftChild(j)
    return j

The return value of the leafSearch is used in the modified siftDown routine:[5]

procedure siftDown(a, i, end) is
    j ← leafSearch(a, i, end)
    while a[i] > a[j] do
        j ← iParent(j)
    x ← a[j]
    a[j] ← a[i]
    while j > i do
        swap x, a[iParent(j)]
        j ← iParent(j)

Bottom-up heapsort was announced as beating quicksort (with median-of-three pivot selection) on arrays of size ≥16000.

A 2008 re-evaluation of this algorithm showed it to be no faster than ordinary heapsort for integer keys, presumably because modern branch prediction nullifies the cost of the predictable comparisons which bottom-up heapsort manages to avoid.[6]

A further refinement does a binary search in the path to the selected leaf, and sorts in a worst case of comparisons, approaching the information-theoretic lower bound of comparisons.[7]

A variant which uses two extra bits per internal node (_n_−1 bits total for an _n_-element heap) to cache information about which child is greater (two bits are required to store three cases: left, right, and unknown)[8] uses less than compares.[9]

Other variations

-   Ternary heapsort[10] uses a ternary heap instead of a binary heap; that is, each element in the heap has three children. It is more complicated to program, but does a constant number of times fewer swap and comparison operations. This is because each sift-down step in a ternary heap requires three comparisons and one swap, whereas in a binary heap two comparisons and one swap are required. Two levels in a ternary heap cover 3² = 9 elements, doing more work with the same number of comparisons as three levels in the binary heap, which only cover 2³ = 8. This is primarily of academic interest, as the additional complexity is not worth the minor savings, and bottom-up heapsort beats both.
-   The smoothsort algorithm[11] is a variation of heapsort developed by Edsger Dijkstra in 1981. Like heapsort, smoothsort's upper bound is {{math. The advantage of smoothsort is that it comes closer to time if the input is already sorted to some degree, whereas heapsort averages regardless of the initial sorted state. Due to its complexity, smoothsort is rarely used.
-   Levcopoulos and Petersson[12] describe a variation of heapsort based on a heap of Cartesian trees. First, a Cartesian tree is built from the input in time, and its root is placed in a 1-element binary heap. Then we repeatedly extract the minimum from the binary heap, output the tree's root element, and add its left and right children (if any) which are themselves Cartesian trees, to the binary heap.[13] As they show, if the input is already nearly sorted, the Cartesian trees will be very unbalanced, with few nodes having left and right children, resulting in the binary heap remaining small, and allowing the algorithm to sort more quickly than for inputs that are already nearly sorted.
-   Several variants such as weak heapsort require comparisons in the worst case, close to the theoretical minimum, using one extra bit of state per node. While this extra bit makes the algorithms not truly in-place, if space for it can be found inside the element, these algorithms are simple and efficient, but still slower than binary heaps if key comparisons are cheap enough (e.g. integer keys) that a constant factor does not matter.[14]
-   Katajainen's "ultimate heapsort" requires no extra storage, performs comparisons, and a similar number of element moves.[15] It is, however, even more complex and not justified unless comparisons are very expensive.


Comparison with other sorts

Heapsort primarily competes with quicksort, another very efficient general purpose nearly-in-place comparison-based sort algorithm.

Quicksort is typically somewhat faster due to some factors, but the worst-case running time for quicksort is , which is unacceptable for large data sets and can be deliberately triggered given enough knowledge of the implementation, creating a security risk. See quicksort for a detailed discussion of this problem and possible solutions.

Thus, because of the upper bound on heapsort's running time and constant upper bound on its auxiliary storage, embedded systems with real-time constraints or systems concerned with security often use heapsort, such as the Linux kernel.[16]

Heapsort also competes with merge sort, which has the same time bounds. Merge sort requires auxiliary space, but heapsort requires only a constant amount. Heapsort typically runs faster in practice on machines with small or slow data caches, and does not require as much external memory. On the other hand, merge sort has several advantages over heapsort:

-   Merge sort on arrays has considerably better data cache performance, often outperforming heapsort on modern desktop computers because merge sort frequently accesses contiguous memory locations (good locality of reference); heapsort references are spread throughout the heap.
-   Heapsort is not a stable sort; merge sort is stable.
-   Merge sort parallelizes well and can achieve close to linear speedup with a trivial implementation; heapsort is not an obvious candidate for a parallel algorithm.
-   Merge sort can be adapted to operate on SINGLY linked lists with extra space. Heapsort can be adapted to operate on DOUBLY linked lists with only extra space overhead.
-   Merge sort is used in external sorting; heapsort is not. Locality of reference is the issue.

Introsort is an alternative to heapsort that combines quicksort and heapsort to retain advantages of both: worst case speed of heapsort and average speed of quicksort.


Example

Let { 6, 5, 3, 1, 8, 7, 2, 4 } be the list that we want to sort from the smallest to the largest. (NOTE, for 'Building the Heap' step: Larger nodes don't stay below smaller node parents. They are swapped with parents, and then recursively checked if another swap is needed, to keep larger numbers above smaller numbers on the heap binary tree.)

  Heap                     newly added element   swap elements
  ------------------------ --------------------- ---------------
  null                     6
  6                        5
  6, 5                     3
  6, 5, 3                  1
  6, 5, 3, 1               8
  6, 5, 3, 1, '''8 '''                           5, 8
  6, 8, 3, 1, 5                                  6, 8
  8, 6, 3, 1, 5            7
  8, 6, 3, 1, 5, 7                               3, 7
  8, 6, 7, 1, 5, 3         2
  8, 6, 7, 1, 5, 3, 2      4
  8, 6, 7, 1, 5, 3, 2, 4                         1, 4
  8, 6, 7, 4, 5, 3, 2, 1

  : style="text-align: left;" | 1. Build the heap

  Heap                     swap elements   delete element   sorted array             details
  ------------------------ --------------- ---------------- ------------------------ ---------------------------------------------------
  8, 6, 7, 4, 5, 3, 2, 1   8, 1                                                      swap 8 and 1 in order to delete 8 from heap
  1, 6, 7, 4, 5, 3, 2, 8                   8                                         delete 8 from heap and add to sorted array
  1, 6, 7, 4, 5, 3, 2      1, 7                             8                        swap 1 and 7 as they are not in order in the heap
  7, 6, 1, 4, 5, 3, 2      1, 3                             8                        swap 1 and 3 as they are not in order in the heap
  7, 6, 3, 4, 5, 1, 2      7, 2                             8                        swap 7 and 2 in order to delete 7 from heap
  2, 6, 3, 4, 5, 1, 7                      7                8                        delete 7 from heap and add to sorted array
  2, 6, 3, 4, 5, 1         2, 6                             7, 8                     swap 2 and 6 as they are not in order in the heap
  6, 2, 3, 4, 5, 1         2, 5                             7, 8                     swap 2 and 5 as they are not in order in the heap
  6, 5, 3, 4, 2, 1         6, 1                             7, 8                     swap 6 and 1 in order to delete 6 from heap
  1, 5, 3, 4, 2, 6                         6                7, 8                     delete 6 from heap and add to sorted array
  1, 5, 3, 4, 2            1, 5                             6, 7, 8                  swap 1 and 5 as they are not in order in the heap
  5, 1, 3, 4, 2            1, 4                             6, 7, 8                  swap 1 and 4 as they are not in order in the heap
  5, 4, 3, 1, 2            5, 2                             6, 7, 8                  swap 5 and 2 in order to delete 5 from heap
  2, 4, 3, 1, 5                            5                6, 7, 8                  delete 5 from heap and add to sorted array
  2, 4, 3, 1               2, 4                             5, 6, 7, 8               swap 2 and 4 as they are not in order in the heap
  4, 2, 3, 1               4, 1                             5, 6, 7, 8               swap 4 and 1 in order to delete 4 from heap
  1, 2, 3, 4                               4                5, 6, 7, 8               delete 4 from heap and add to sorted array
  1, 2, 3                  1, 3                             4, 5, 6, 7, 8            swap 1 and 3 as they are not in order in the heap
  3, 2, 1                  3, 1                             4, 5, 6, 7, 8            swap 3 and 1 in order to delete 3 from heap
  1, 2, 3                                  3                4, 5, 6, 7, 8            delete 3 from heap and add to sorted array
  1, 2                     1, 2                             3, 4, 5, 6, 7, 8         swap 1 and 2 as they are not in order in the heap
  2, 1                     2, 1                             3, 4, 5, 6, 7, 8         swap 2 and 1 in order to delete 2 from heap
  1, 2                                     2                3, 4, 5, 6, 7, 8         delete 2 from heap and add to sorted array
  1                                        1                2, 3, 4, 5, 6, 7, 8      delete 1 from heap and add to sorted array
                                                            1, 2, 3, 4, 5, 6, 7, 8   completed

  : style="text-align: left;" | 2. Sorting


Notes


References

-   -   -   -   -   Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. _Introduction to Algorithms_, Second Edition. MIT Press and McGraw-Hill, 2001. . Chapters 6 and 7 Respectively: Heapsort and Priority Queues
-   A PDF of Dijkstra's original paper on Smoothsort
-   Heaps and Heapsort Tutorial by David Carlson, St. Vincent College


External links

-   – graphical demonstration

-   Courseware on Heapsort from Univ. Oldenburg - With text, animations and interactive exercises
-   NIST's Dictionary of Algorithms and Data Structures: Heapsort
-   Heapsort implemented in 12 languages
-   Sorting revisited by Paul Hsieh
-   A PowerPoint presentation demonstrating how Heap sort works that is for educators.
-   Open Data Structures - Section 11.1.3 - Heap-Sort

no:Sorteringsalgoritme#Heap sort

Category:Sorting algorithms Category:Comparison sorts Category:Heaps (data structures) Category:Articles with example pseudocode

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] "Data Structures Using Pascal", 1991, page 405, gives a ternary heapsort as a student exercise. "Write a sorting routine similar to the heapsort except that it uses a ternary heap."

[11]

[12]  .

[13]

[14]

[15]

[16] https://github.com/torvalds/linux/blob/master/lib/sort.c Linux kernel source