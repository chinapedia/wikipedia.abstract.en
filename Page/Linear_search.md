In computer science, a LINEAR SEARCH or SEQUENTIAL SEARCH is a method for finding an element within a list. It sequentially checks each element of the list until a match is found or the whole list has been searched.

A linear search runs in at worst linear time and makes at most comparisons, where is the length of the list. If each element is equally likely to be searched, then linear search has an average case of comparisons, but the average case can be affected if the search probabilities for each element vary. Linear search is rarely practical because other search algorithms and schemes, such as the binary search algorithm and hash tables, allow significantly faster searching for all but short lists.


Algorithm

A linear search sequentially checks each element of the list until it finds an element that matches the target value. If the algorithm reaches the end of the list, the search terminates unsuccessfully.

Basic algorithm

Given a list of elements with values or records , and target value , the following subroutine uses linear search to find the index of the target in .

1.  Set to 0.
2.  If _T_}}, the search terminates successfully; return .
3.  Increase by 1.
4.  If , go to step 2. Otherwise, the search terminates unsuccessfully.

With a sentinel

The basic algorithm above makes two comparisons per iteration: one to check if equals , and the other to check if still points to a valid index of the list. By adding an extra record to the list (a sentinel value) that equals the target, the second comparison can be eliminated until the end of the search, making the algorithm faster. The search will reach the sentinel if the target is not contained within the list.

1.  Set to 0.
2.  If _T_}}, go to step 4.
3.  Increase by 1 and go to step 2.
4.  If , the search terminates successfully; return . Else, the search terminates unsuccessfully.

In an ordered table

If the list is ordered such that , the search can establish the absence of the target more quickly by concluding the search once exceeds the target. This variation requires a sentinel that is greater than the target.

1.  Set to 0.
2.  If , go to step 4.
3.  Increase by 1 and go to step 2.
4.  If _T_}}, the search terminates successfully; return . Else, the search terminates unsuccessfully.

==Implementations in Different Programming Languages==

C

    #include<stdio.h>
    void main()
    {
        int a[] = {31,72,65,85,56};
        int n = sizeof(a)/sizeof(int);
        int i, e = 65, pos =- 1;
        printf("Array:");
        for (i=0;i<n;i++)
        {
            printf(" %d", a[i]);
        }
        for (i=0;i<n;i++)
        {
            if(a[i] == e)
            {
                pos=i;
                break;
            }
        }
        if (pos >= 0)
            printf("\nElement at %d", pos);
        else
            printf("\nElement not in array");
    }

Java

    class LinearSearch()
    {
        public static void main(String atgs[])
        {
            int a[] = {31, 72, 65, 85, 56};
            int n = 5;

            System.out.println("Array:");
            for(int i = 0; i < n; i++)
            {
                System.out.print(a[0] + " ");
            }

            int ele = 65;
            int pos = -1;
            for(int i = 0; i < n; i++)
            {
                if(a[i] == ele)
                {
                    pos=i;
                    break;
                }
            }

            if(pos!=-1)
                System.out.println("Element at position " + pos);
            else
                System.out.println("Element not in array");
        }
    }

Python3

    arr = [2,3,4,10,40]
    ele, n, pos = 10, len(arr), -1
    print("Array:", end=" ")
    for i in range(0,n):
        print(arr[i], end=" ")
    for i in range(0,n):
        if(arr[i] == ele):
            pos = i
            break
    if(pos == -1):
        print("Element is not present in array")
    else:
        print("Element is present at index", pos)


Analysis

For a list with _n_ items, the best case is when the value is equal to the first element of the list, in which case only one comparison is needed. The worst case is when the value is not in the list (or occurs only once at the end of the list), in which case _n_ comparisons are needed.

If the value being sought occurs _k_ times in the list, and all orderings of the list are equally likely, the expected number of comparisons is

$$\begin{cases}
  n                   & \mbox{if } k = 0 \\[5pt]
  \displaystyle\frac{n + 1}{k + 1} & \mbox{if } 1 \le k \le n.
\end{cases}$$

For example, if the value being sought occurs once in the list, and all orderings of the list are equally likely, the expected number of comparisons is $\frac{n + 1}2$. However, if it is _known_ that it occurs once, then at most _n_ - 1 comparisons are needed, and the expected number of comparisons is

$$\displaystyle\frac{(n + 2)(n-1)}{2n}$$

(for example, for _n_ = 2 this is 1, corresponding to a single if-then-else construct).

Either way, asymptotically the worst-case cost and the expected cost of linear search are both O(_n_).

Non-uniform probabilities

The performance of linear search improves if the desired value is more likely to be near the beginning of the list than to its end. Therefore, if some values are much more likely to be searched than others, it is desirable to place them at the beginning of the list.

In particular, when the list items are arranged in order of decreasing probability, and these probabilities are geometrically distributed, the cost of linear search is only O(1).

 


Application

Linear search is usually very simple to implement, and is practical when the list has only a few elements, or when performing a single search in an un-ordered list.

When many values have to be searched in the same list, it often pays to pre-process the list in order to use a faster method. For example, one may sort the list and use binary search, or build an efficient search data structure from it. Should the content of the list change frequently, repeated re-organization may be more trouble than it is worth.

As a result, even though in theory other search algorithms may be faster than linear search (for instance binary search), in practice even on medium-sized arrays (around 100 items or less) it might be infeasible to use anything else. On larger arrays, it only makes sense to use other, faster search methods if the data is large enough, because the initial time to prepare (sort) the data is comparable to many linear searches [1]


See also

-   Ternary search
-   Hash table
-   Linear search problem


References

Citations

Works

-

Category:Search algorithms Category:Articles with example pseudocode Category:Articles with example Java code

[1]