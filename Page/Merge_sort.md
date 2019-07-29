In computer science, MERGE SORT (also commonly spelled MERGESORT) is an efficient, general-purpose, comparison-based sorting algorithm. Most implementations produce a stable sort, which means that the order of equal elements is the same in the input and output. Merge sort is a divide and conquer algorithm that was invented by John von Neumann in 1945.[1] A detailed description and analysis of bottom-up mergesort appeared in a report by Goldstine and von Neumann as early as 1948.[2]


Algorithm

Conceptually, a merge sort works as follows:

1.  Divide the unsorted list into _n_ sublists, each containing one element (a list of one element is considered sorted).
2.  Repeatedly merge sublists to produce new sorted sublists until there is only one sublist remaining. This will be the sorted list.

Top-down implementation

Example C-like code using indices for top-down merge sort algorithm that recursively splits the list (called _runs_ in this example) into sublists until sublist size is 1, then merges those sublists to produce a sorted list. The copy back step is avoided with alternating the direction of the merge with each level of recursion.

    // Array A[] has the items to sort; array B[] is a work array.
    void TopDownMergeSort(A[], B[], n)
    {
        CopyArray(A, 0, n, B);           // duplicate array A[] into B[]
        TopDownSplitMerge(B, 0, n, A);   // sort data from B[] into A[]
    }

    // Sort the given run of array A[] using array B[] as a source.
    // iBegin is inclusive; iEnd is exclusive (A[iEnd] is not in the set).
    void TopDownSplitMerge(B[], iBegin, iEnd, A[])
    {
        if(iEnd - iBegin < 2)                       // if run size == 1
            return;                                 //   consider it sorted
        // split the run longer than 1 item into halves
        iMiddle = (iEnd + iBegin) / 2;              // iMiddle = mid point
        // recursively sort both runs from array A[] into B[]
        TopDownSplitMerge(A, iBegin,  iMiddle, B);  // sort the left  run
        TopDownSplitMerge(A, iMiddle,    iEnd, B);  // sort the right run
        // merge the resulting runs from array B[] into A[]
        TopDownMerge(B, iBegin, iMiddle, iEnd, A);
    }

    //  Left source half is A[ iBegin:iMiddle-1].
    // Right source half is A[iMiddle:iEnd-1   ].
    // Result is            B[ iBegin:iEnd-1   ].
    void TopDownMerge(A[], iBegin, iMiddle, iEnd, B[])
    {
        i = iBegin, j = iMiddle;

        // While there are elements in the left or right runs...
        for (k = iBegin; k < iEnd; k++) {
            // If left run head exists and is <= existing right run head.
            if (i < iMiddle && (j >= iEnd || A[i] <= A[j])) {
                B[k] = A[i];
                i = i + 1;
            } else {
                B[k] = A[j];
                j = j + 1;
            }
        }
    }

    void CopyArray(A[], iBegin, iEnd, B[])
    {
        for(k = iBegin; k < iEnd; k++)
            B[k] = A[k];
    }

Bottom-up implementation

Example C-like code using indices for bottom-up merge sort algorithm which treats the list as an array of _n_ sublists (called _runs_ in this example) of size 1, and iteratively merges sub-lists back and forth between two buffers:

    // array A[] has the items to sort; array B[] is a work array
    void BottomUpMergeSort(A[], B[], n)
    {
        // Each 1-element run in A is already "sorted".
        // Make successively longer sorted runs of length 2, 4, 8, 16... until whole array is sorted.
        for (width = 1; width < n; width = 2 * width)
        {
            // Array A is full of runs of length width.
            for (i = 0; i < n; i = i + 2 * width)
            {
                // Merge two runs: A[i:i+width-1] and A[i+width:i+2*width-1] to B[]
                // or copy A[i:n-1] to B[] ( if(i+width >= n) )
                BottomUpMerge(A, i, min(i+width, n), min(i+2*width, n), B);
            }
            // Now work array B is full of runs of length 2*width.
            // Copy array B to array A for next iteration.
            // A more efficient implementation would swap the roles of A and B.
            CopyArray(B, A, n);
            // Now array A is full of runs of length 2*width.
        }
    }

    //  Left run is A[iLeft :iRight-1].
    // Right run is A[iRight:iEnd-1  ].
    void BottomUpMerge(A[], iLeft, iRight, iEnd, B[])
    {
        i = iLeft, j = iRight;
        // While there are elements in the left or right runs...
        for (k = iLeft; k < iEnd; k++) {
            // If left run head exists and is <= existing right run head.
            if (i < iRight && (j >= iEnd || A[i] <= A[j])) {
                B[k] = A[i];
                i = i + 1;
            } else {
                B[k] = A[j];
                j = j + 1;
            }
        }
    }

    void CopyArray(B[], A[], n)
    {
        for(i = 0; i < n; i++)
            A[i] = B[i];
    }

Top-down implementation using lists

Pseudocode for top-down merge sort algorithm which recursively divides the input list into smaller sublists until the sublists are trivially sorted, and then merges the sublists while returning up the call chain.

function merge_sort(_list_ m)
    // _Base case. A list of zero or one elements is sorted, by definition._
    if length of m ≤ 1 then
        return m
    // _Recursive case. First, divide the list into equal-sized sublists_
    // _consisting of the first half and second half of the list._
    // _This assumes lists start at index 0._
    var left := empty list
    var right := empty list
    for each x with index i in m do
        if i < (length of m)/2 then
            add x to left
        else
            add x to right
    // _Recursively sort both sublists._
    left := merge_sort(left)
    right := merge_sort(right)
    // Then merge the now-sorted sublists.
    return merge(left, right)

In this example, the function merges the left and right sublists.

function merge(left, right)
    var result := empty list
    while left is not empty and right is not empty do
        if first(left) ≤ first(right) then
            append first(left) to result
            left := rest(left)
        else
            append first(right) to result
            right := rest(right)
    // _Either left or right may have elements left; consume them._
    // _(Only one of the following loops will actually be entered.)_
    while left is not empty do
        append first(left) to result
        left := rest(left)
    while right is not empty do
        append first(right) to result
        right := rest(right)
    return result

Bottom-up implementation using lists

Pseudocode for bottom-up merge sort algorithm which uses a small fixed size array of references to nodes, where array[i] is either a reference to a list of size 2^(_i_) or _nil_. _node_ is a reference or pointer to a node. The merge() function would be similar to the one shown in the top-down merge lists example, it merges two already sorted lists, and handles empty lists. In this case, merge() would use _node_ for its input parameters and return value.

function merge_sort(_node_ head)
    // return if empty list
    if (head == nil)
        return nil
    var _node_ array[32]; initially all nil
    var _node_ result
    var _node_ next
    var _int_  i
    result = head
    // merge nodes into array
    while (result != nil)
         next = result.next;
         result.next = nil
         for(i = 0; (i < 32) && (array[i] != nil); i += 1)
              result = merge(array[i], result)
              array[i] = nil
         // do not go past end of array
         if (i == 32)
               i -= 1
         array[i] = result
         result = next
    // merge array into single list
    result = nil
    for (i = 0; i < 32; i += 1)
         result = merge(array[i], result)
    return result


Natural merge sort

A natural merge sort is similar to a bottom-up merge sort except that any naturally occurring runs (sorted sequences) in the input are exploited. Both monotonic and bitonic (alternating up/down) runs may be exploited, with lists (or equivalently tapes or files) being convenient data structures (used as FIFO queues or LIFO stacks).[3] In the bottom-up merge sort, the starting point assumes each run is one item long. In practice, random input data will have many short runs that just happen to be sorted. In the typical case, the natural merge sort may not need as many passes because there are fewer runs to merge. In the best case, the input is already sorted (i.e., is one run), so the natural merge sort need only make one pass through the data. In many practical cases, long natural runs are present, and for that reason natural merge sort is exploited as the key component of Timsort. Example:

Start       :  3  4  2  1  7  5  8  9  0  6
Select runs : (3  4)(2)(1  7)(5  8  9)(0  6)
Merge       : (2  3  4)(1  5  7  8  9)(0  6)
Merge       : (1  2  3  4  5  7  8  9)(0  6)
Merge       : (0  1  2  3  4  5  6  7  8  9)

Tournament replacement selection sorts are used to gather the initial runs for external sorting algorithms.


Analysis

merge_sort_algorithm_diagram.svg

In sorting _n_ objects, merge sort has an average and worst-case performance of O(_n_ log _n_). If the running time of merge sort for a list of length _n_ is _T_(_n_), then the recurrence _T_(_n_) = 2_T_(_n_/2) + _n_ follows from the definition of the algorithm (apply the algorithm to two lists of half the size of the original list, and add the _n_ steps taken to merge the resulting two lists). The closed form follows from the master theorem for divide-and-conquer recurrences.

In the worst case, the number of comparisons merge sort makes is given by the sorting numbers. These numbers are equal to or slightly smaller than (_n_ ⌈lg _n_⌉ − 2^(⌈lg _n_⌉) + 1), which is between (_n_ lg _n_ − _n_ + 1) and (_n_ lg _n_ + _n_ + O(lg _n_)).[4]

For large _n_ and a randomly ordered input list, merge sort's expected (average) number of comparisons approaches _α_·_n_ fewer than the worst case where $\alpha = -1 + \sum_{k=0}^\infty \frac1{2^k+1} \approx 0.2645.$

In the _worst_ case, merge sort does about 39% fewer comparisons than quicksort does in the _average_ case. In terms of moves, merge sort's worst case complexity is O(_n_ log _n_)—the same complexity as quicksort's best case, and merge sort's best case takes about half as many iterations as the worst case.

Merge sort is more efficient than quicksort for some types of lists if the data to be sorted can only be efficiently accessed sequentially, and is thus popular in languages such as Lisp, where sequentially accessed data structures are very common. Unlike some (efficient) implementations of quicksort, merge sort is a stable sort.

Merge sort's most common implementation does not sort in place;[5] therefore, the memory size of the input must be allocated for the sorted output to be stored in (see below for versions that need only _n_/2 extra spaces).


Variants

Variants of merge sort are primarily concerned with reducing the space complexity and the cost of copying.

A simple alternative for reducing the space overhead to _n_/2 is to maintain _left_ and _right_ as a combined structure, copy only the _left_ part of _m_ into temporary space, and to direct the _merge_ routine to place the merged output into _m_. With this version it is better to allocate the temporary space outside the _merge_ routine, so that only one allocation is needed. The excessive copying mentioned previously is also mitigated, since the last pair of lines before the _return result_ statement (function '' merge ''in the pseudo code above) become superfluous.

One drawback of merge sort, when implemented on arrays, is its working memory requirement. Several in-place variants have been suggested:

-   Katajainen _et al._ present an algorithm that requires a constant amount of working memory: enough storage space to hold one element of the input array, and additional space to hold pointers into the input array. They achieve an time bound with small constants, but their algorithm is not stable.[6]
-   Several attempts have been made at producing an _in-place merge_ algorithm that can be combined with a standard (top-down or bottom-up) merge sort to produce an in-place merge sort. In this case, the notion of "in-place" can be relaxed to mean "taking logarithmic stack space", because standard merge sort requires that amount of space for its own stack usage. It was shown by Geffert _et al._ that in-place, stable merging is possible in time using a constant amount of scratch space, but their algorithm is complicated and has high constant factors: merging arrays of length and can take moves.[7] This high constant factor and complicated in-place algorithm was made simpler and easier to understand. Bing-Chao Huang and Michael A. Langston[8] presented a straightforward linear time algorithm _practical in-place merge_ to merge a sorted list using fixed amount of additional space. They both have used the work of Kronrod and others. It merges in linear time and constant extra space. The algorithm takes little more average time than standard merge sort algorithms, free to exploit O(n) temporary extra memory cells, by less than a factor of two. Though the algorithm is much faster in a practical way but it is unstable also for some lists. But using similar concepts, they have been able to solve this problem. Other in-place algorithms include SymMerge, which takes time in total and is stable.[9] Plugging such an algorithm into merge sort increases its complexity to the non-linearithmic, but still quasilinear, .
-   A modern stable linear and in-place merging is block merge sort.

An alternative to reduce the copying into multiple lists is to associate a new field of information with each key (the elements in _m_ are called keys). This field will be used to link the keys and any associated information together in a sorted list (a key and its related information is called a record). Then the merging of the sorted lists proceeds by changing the link values; no records need to be moved at all. A field which contains only a link will generally be smaller than an entire record so less space will also be used. This is a standard sorting technique, not restricted to merge sort.


Use with tape drives

IBM_729_Tape_Drives.nasa.jpg and processed on banks of magnetic tape drives, such as these IBM 729s.]] An external merge sort is practical to run using disk or tape drives when the data to be sorted is too large to fit into memory. External sorting explains how merge sort is implemented with disk drives. A typical tape drive sort uses four tape drives. All I/O is sequential (except for rewinds at the end of each pass). A minimal implementation can get by with just two record buffers and a few program variables.

Naming the four tape drives as A, B, C, D, with the original data on A, and using only 2 record buffers, the algorithm is similar to Bottom-up implementation, using pairs of tape drives instead of arrays in memory. The basic algorithm can be described as follows:

1.  Merge pairs of records from A; writing two-record sublists alternately to C and D.
2.  Merge two-record sublists from C and D into four-record sublists; writing these alternately to A and B.
3.  Merge four-record sublists from A and B into eight-record sublists; writing these alternately to C and D
4.  Repeat until you have one list containing all the data, sorted—in log₂(_n_) passes.

Instead of starting with very short runs, usually a hybrid algorithm is used, where the initial pass will read many records into memory, do an internal sort to create a long run, and then distribute those long runs onto the output set. The step avoids many early passes. For example, an internal sort of 1024 records will save nine passes. The internal sort is often large because it has such a benefit. In fact, there are techniques that can make the initial runs longer than the available internal memory.[10]

With some overhead, the above algorithm can be modified to use three tapes. _O_(_n_ log _n_) running time can also be achieved using two queues, or a stack and a queue, or three stacks. In the other direction, using _k_ > two tapes (and _O_(_k_) items in memory), we can reduce the number of tape operations in _O_(log _k_) times by using a k/2-way merge.

A more sophisticated merge sort that optimizes tape (and disk) drive usage is the polyphase merge sort.


Optimizing merge sort

Merge_sort_animation2.gif On modern computers, locality of reference can be of paramount importance in software optimization, because multilevel memory hierarchies are used. Cache-aware versions of the merge sort algorithm, whose operations have been specifically chosen to minimize the movement of pages in and out of a machine's memory cache, have been proposed. For example, the algorithm stops partitioning subarrays when subarrays of size S are reached, where S is the number of data items fitting into a CPU's cache. Each of these subarrays is sorted with an in-place sorting algorithm such as insertion sort, to discourage memory swaps, and normal merge sort is then completed in the standard recursive fashion. This algorithm has demonstrated better performance on machines that benefit from cache optimization.

suggested an alternative version of merge sort that uses constant additional space. This algorithm was later refined.

Also, many applications of external sorting use a form of merge sorting where the input get split up to a higher number of sublists, ideally to a number for which merging them still makes the currently processed set of pages fit into main memory.


Parallel merge sort

Merge sort parallelizes well due to use of the divide-and-conquer method. Several parallel variants are discussed in the third edition of Cormen, Leiserson, Rivest, and Stein's _Introduction to Algorithms_.[11] The first of these can be very easily expressed in a pseudocode with fork and join keywords:

// _Sort elements lo through hi (exclusive) of array A._
algorithm mergesort(A, lo, hi) is
    if lo+1 < hi then  // _Two or more elements._
        mid = ⌊(lo + hi) / 2⌋
        fork mergesort(A, lo, mid)
        mergesort(A, mid, hi)
        join
        merge(A, lo, mid, hi)

This algorithm is a trivial modification from the serial version, and its speedup is not impressive: when executed on an infinite number of processors, it runs in time, which is only a improvement on the serial version. A better result can be obtained by using a parallelized merge algorithm, which gives parallelism , meaning that this type of parallel merge sort runs in

$$\Theta \left((n \log n) \cdot \frac{(\log n)^2}{n}\right) = \Theta((\log n)^3)$$

time if enough processors are available. Such a sort can perform well in practice when combined with a fast stable sequential sort, such as insertion sort, and a fast sequential merge as a base case for merging small arrays.[12]

Merge sort was one of the first sorting algorithms where optimal speed up was achieved, with Richard Cole using a clever subsampling algorithm to ensure merge.[13] Other sophisticated parallel sorting algorithms can achieve the same or better time bounds with a lower constant. For example, in 1991 David Powers described a parallelized quicksort (and a related radix sort) that can operate in _O_(log _n_) time on a CRCW parallel random-access machine (PRAM) with _n_ processors by performing partitioning implicitly.[14] Powers[15] further shows that a pipelined version of Batcher's Bitonic Mergesort at _O_((log _n_)²) time on a butterfly sorting network is in practice actually faster than his _O_(log _n_) sorts on a PRAM, and he provides detailed discussion of the hidden overheads in comparison, radix and parallel sorting.


Comparison with other sort algorithms

Although heapsort has the same time bounds as merge sort, it requires only Θ(1) auxiliary space instead of merge sort's Θ(_n_). On typical modern architectures, efficient quicksort implementations generally outperform mergesort for sorting RAM-based arrays. On the other hand, merge sort is a stable sort and is more efficient at handling slow-to-access sequential media. Merge sort is often the best choice for sorting a linked list: in this situation it is relatively easy to implement a merge sort in such a way that it requires only Θ(1) extra space, and the slow random-access performance of a linked list makes some other algorithms (such as quicksort) perform poorly, and others (such as heapsort) completely impossible.

As of Perl 5.8, merge sort is its default sorting algorithm (it was quicksort in previous versions of Perl). In Java, the Arrays.sort() methods use merge sort or a tuned quicksort depending on the datatypes and for implementation efficiency switch to insertion sort when fewer than seven array elements are being sorted.[16] The Linux kernel uses merge sort for its linked lists.[17] Python uses Timsort, another tuned hybrid of merge sort and insertion sort, that has become the standard sort algorithm in Java SE 7 (for arrays of non-primitive types),[18] on the Android platform,[19] and in GNU Octave.[20]


Notes


References

-   -   . Also Practical In-Place Mergesort. Also 3

-   -   -   -   -   -


External links

-   – graphical demonstration

-   Open Data Structures - Section 11.1.1 - Merge Sort

Category:Sorting algorithms Category:Comparison sorts Category:Stable sorts Category:Articles with example pseudocode

[1]

[2]

[3] Powers, David M. W. and McMahon Graham B. (1983), "A compendium of interesting prolog programs", DCS Technical Report 8313, Department of Computer Science, University of New South Wales.

[4] The worst case number given here does not agree with that given in Knuth's _Art of Computer Programming, Vol 3_. The discrepancy is due to Knuth analyzing a variant implementation of merge sort that is slightly sub-optimal

[5]

[6]

[7]

[8]

[9]

[10] Selection sort. Knuth's snowplow. Natural merge.

[11]

[12] Victor J. Duvanenko "Parallel Merge Sort" Dr. Dobb's Journal & blog1 and GitHub repo C++ implementation 2

[13]

[14] Powers, David M. W. Parallelized Quicksort and Radixsort with Optimal Speedup, _Proceedings of International Conference on Parallel Computing Technologies_. Novosibirsk. 1991.

[15] David M. W. Powers, Parallel Unification: Practical Complexity, Australasian Computer Architecture Workshop, Flinders University, January 1995

[16] OpenJDK src/java.base/share/classes/java/util/Arrays.java @ 53904:9c3fe09f69bc

[17] linux kernel /lib/list_sort.c

[18]

[19]

[20]