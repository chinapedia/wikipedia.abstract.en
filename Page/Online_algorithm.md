In computer science, an ONLINE ALGORITHM[1] is one that can process its input piece-by-piece in a serial fashion, i.e., in the order that the input is fed to the algorithm, without having the entire input available from the start.

In contrast, an OFFLINE ALGORITHM is given the whole problem data from the beginning and is required to output an answer which solves the problem at hand. In operations research, the area in which online algorithms are developed is called online optimization.

As an example, consider the sorting algorithms selection sort and insertion sort: selection sort repeatedly selects the minimum element from the unsorted remainder and places it at the front, which requires access to the entire input; it is thus an offline algorithm. On the other hand, insertion sort considers one input element per iteration and produces a partial solution without considering future elements. Thus insertion sort is an online algorithm.

Note that insertion sort produces the optimum result, i.e., a correctly sorted list. For many problems, online algorithms cannot match the performance of offline algorithms. If the ratio between the performance of an online algorithm and an optimal offline algorithm is bounded, the online algorithm is called competitive.[2]

Not every _offline algorithm_ has an efficient _online_ counterpart.


Definition

Because it does not know the whole input, an online algorithm is forced to make decisions that may later turn out not to be optimal, and the study of online algorithms has focused on the quality of decision-making that is possible in this setting. Competitive analysis formalizes this idea by comparing the relative performance of an online and offline algorithm for the same problem instance. Specifically, the competitive ratio of an algorithm, is defined as the worst-case ratio of its cost divided by the optimal cost, over all possible inputs. The competitive ratio of an online problem is the best competitive ratio achieved by an online algorithm. Intuitively, the competitive ratio of an algorithm gives a measure on the quality of solutions produced by this algorithm, while the competitive ratio of a problem shows the importance of knowing the future for this problem.

Other interpretations

For other points of view on _online inputs to algorithms_, see

-   streaming algorithm: focusing on the amount of memory needed to accurately represent past inputs;
-   dynamic algorithm: focusing on the time complexity of maintaining solutions to problems with online inputs.

Examples

Some _online algorithms_:

-   Insertion sort
-   Perceptron
-   Reservoir sampling

-   Greedy algorithm
-   Adversary model
-   Metrical task systems
-   Odds algorithm
-   Page replacement algorithm
-   Algorithms for calculating variance
-   Ukkonen's algorithm


Online problems

A problem exemplifying the concepts of online algorithms is the Canadian Traveller Problem. The goal of this problem is to minimize the cost of reaching a target in a weighted graph where some of the edges are unreliable and may have been removed from the graph. However, that an edge has been removed (_failed_) is only revealed to _the traveller_ when she/he reaches one of the edge's endpoints. The worst case for this problem is simply that all of the unreliable edges fail and the problem reduces to the usual Shortest Path Problem. An alternative analysis of the problem can be made with the help of competitive analysis. For this method of analysis, the offline algorithm knows in advance which edges will fail and the goal is to minimize the ratio between the online and offline algorithms' performance. This problem is PSPACE-complete.

There are many formal problems that offer more than one _online algorithm_ as solution:

-   K-server problem
-   Job shop scheduling problem
-   List update problem
-   Bandit problem
-   Secretary problem
-   Search games
-   Ski rental problem
-   Linear search problem
-   Portfolio selection problem[3]


See also

-   Dynamic algorithm
-   Streaming algorithm
-   Real-time computing
-   Sequential algorithm
-   Online machine learning/Offline learning


References

-


External links

-   Bibliography of papers on online algorithms

Online_algorithms

[1]

[2]

[3]