Knapsack.svg could consider both the weight and volume of the boxes.
(Solution: if any number of each box is available, then three yellow boxes and three grey boxes; if only the shown boxes are available, then all but the green box.)]]

The KNAPSACK PROBLEM or RUCKSACK PROBLEM is a problem in combinatorial optimization: Given a set of items, each with a weight and a value, determine the number of each item to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible. It derives its name from the problem faced by someone who is constrained by a fixed-size knapsack and must fill it with the most valuable items.

The problem often arises in resource allocation where there are financial constraints and is studied in fields such as combinatorics, computer science, complexity theory, cryptography, applied mathematics, and daily fantasy sports.

The knapsack problem has been studied for more than a century, with early works dating as far back as 1897.[1] The name "knapsack problem" dates back to the early works of mathematician Tobias Dantzig (1884–1956),[2] and refers to the commonplace problem of packing the most valuable or useful items without overloading the luggage.


Applications

A 1998 study of the Stony Brook University Algorithm Repository showed that, out of 75 algorithmic problems, the knapsack problem was the 19th most popular and the third most needed after suffix trees and the bin packing problem.[3]

Knapsack problems appear in real-world decision-making processes in a wide variety of fields, such as finding the least wasteful way to cut raw materials,[4] selection of investments and portfolios,[5] selection of assets for asset-backed securitization,[6] and generating keys for the Merkle–Hellman[7] and other knapsack cryptosystems.

One early application of knapsack algorithms was in the construction and scoring of tests in which the test-takers have a choice as to which questions they answer. For small examples, it is a fairly simple process to provide the test-takers with such a choice. For example, if an exam contains 12 questions each worth 10 points, the test-taker need only answer 10 questions to achieve a maximum possible score of 100 points. However, on tests with a heterogeneous distribution of point values, it is more difficult to provide choices. Feuerman and Weiss proposed a system in which students are given a heterogeneous test with a total of 125 possible points. The students are asked to answer all of the questions to the best of their abilities. Of the possible subsets of problems whose total point values add up to 100, a knapsack algorithm would determine which subset gives each student the highest possible score.[8]


Definition

The most common problem being solved is the 0-1 KNAPSACK PROBLEM, which restricts the number _x_(i)_ of copies of each kind of item to zero or one. Given a set of _n_ items numbered from 1 up to _n_, each with a weight _w_(i)_ and a value _v_(i)_, along with a maximum weight capacity _W_,

    maximize $\sum_{i=1}^n v_i x_i$
    subject to $\sum_{i=1}^n w_i x_i \leq W$ and x_(i) ∈ {0, 1}.

Here _x_(i)_ represents the number of instances of item _i_ to include in the knapsack. Informally, the problem is to maximize the sum of the values of the items in the knapsack so that the sum of the weights is less than or equal to the knapsack's capacity.

The BOUNDED KNAPSACK PROBLEM (BKP) removes the restriction that there is only one of each item, but restricts the number x_(i) of copies of each kind of item to a maximum non-negative integer value c:

    maximize $\sum_{i=1}^n v_i x_i$
    subject to $\sum_{i=1}^n w_i x_i \leq W$ and 0 ≤ x_(i) ≤ c

The UNBOUNDED KNAPSACK PROBLEM (UKP) places no upper bound on the number of copies of each kind of item and can be formulated as above except for that the only restriction on x_(i) is that it is a non-negative integer.

    maximize $\sum_{i=1}^n v_i x_i$
    subject to $\sum_{i=1}^n w_i x_i \leq W$ and x_(i) ≥ 0

One example of the unbounded knapsack problem is given using the figure shown at the beginning of this article and the text "if any number of each box is available" in the caption of that figure.


Computational complexity

The knapsack problem is interesting from the perspective of computer science for many reasons:

-   The decision problem form of the knapsack problem (''Can a value of at least _V_ be achieved without exceeding the weight _W_?'') is NP-complete, thus there is no known algorithm both correct and fast (polynomial-time) in all cases.
-   While the decision problem is NP-complete, the optimization problem is NP-hard, its resolution is at least as difficult as the decision problem, and there is no known polynomial algorithm which can tell, given a solution, whether it is optimal (which would mean that there is no solution with a larger _V_, thus solving the NP-complete decision problem).
-   There is a pseudo-polynomial time algorithm using dynamic programming.
-   There is a fully polynomial-time approximation scheme, which uses the pseudo-polynomial time algorithm as a subroutine, described below.
-   Many cases that arise in practice, and "random instances" from some distributions, can nonetheless be solved exactly.

There is a link between the "decision" and "optimization" problems in that if there exists a polynomial algorithm that solves the "decision" problem, then one can find the maximum value for the optimization problem in polynomial time by applying this algorithm iteratively while increasing the value of k . On the other hand, if an algorithm finds the optimal value of the optimization problem in polynomial time, then the decision problem can be solved in polynomial time by comparing the value of the solution output by this algorithm with the value of k . Thus, both versions of the problem are of similar difficulty.

One theme in research literature is to identify what the "hard" instances of the knapsack problem look like,[9][10] or viewed another way, to identify what properties of instances in practice might make them more amenable than their worst-case NP-complete behaviour suggests.[11] The goal in finding these "hard" instances is for their use in public key cryptography systems, such as the Merkle-Hellman knapsack cryptosystem.


Solving

Several algorithms are available to solve knapsack problems, based on dynamic programming approach,[12] branch and bound approach[13] or hybridizations of both approaches.[14][15][16][17]

Dynamic programming in-advance algorithm

The UNBOUNDED KNAPSACK PROBLEM (UKP) places no restriction on the number of copies of each kind of item. Besides, here we assume that x_(i) > 0

    $m[w']= \max \left( \sum_{i=1}^n v_i x_i \right)$
    subject to $\sum_{i=1}^n w_i x_i \leq w'$ and x_(i) > 0

Observe that m[w] has the following properties:

1. m[0] = 0 ​ (the sum of zero items, i.e., the summation of the empty set).

2. m[w] = max (v₁ + m[w − w₁], v₂ + m[w − w₂], ..., v_(i) + m[w − w_(i)]) , w_(i) ≤ w, where v_(i) is the value of the i-th kind of item.

The second property needs to be explained in detail. During the process of the running of this method, how do we get the weight w? There are only i ways and the previous weights are w − w₁, w − w₂, ..., w − w_(i) where there are total i kinds of different item(by saying different, we mean that the weight and the value are not completely the same). If we know each value of these i items and the related maximum value previously, we just compare them to each other and get the maximum value ultimately and we are done.

Here the maximum of the empty set is taken to be zero. Tabulating the results from m[0] up through m[W] gives the solution. Since the calculation of each m[w] involves examining at most n items, and there are at most W values of m[w] to calculate, the running time of the dynamic programming solution is O(nW). Dividing w₁, w₂, …, w_(n), W by their greatest common divisor is a way to improve the running time.

Even P≠NP, the O(nW) complexity does not contradict the fact that the knapsack problem is NP-complete, since W, unlike n, is not polynomial in the length of the input to the problem. The length of the W input to the problem is proportional to the number of bits in W, log W, not to W itself. However, since this runtime is pseudopolynomial, this makes the (decision version of the) knapsack problem a weakly NP-complete problem.

0/1 knapsack problem

A similar dynamic programming solution for the 0/1 knapsack problem also runs in pseudo-polynomial time. Assume w₁, w₂, …, w_(n), W are strictly positive integers. Define m[i, w] to be the maximum value that can be attained with weight less than or equal to w using items up to i (first i items).

We can define m[i, w] recursively as follows: '''(Definition A) '''

-   m[0, w] = 0
-   m[i, w] = m[i − 1, w] if w_(i) > w ​ (the new item is more than the current weight limit)
-   m[i, w] = max (m[i − 1, w], m[i − 1, w − w_(i)] + v_(i)) if w_(i) ≤ w.

The solution can then be found by calculating m[n, W]. To do this efficiently, we can use a table to store previous computations.

The following is pseudo code for the dynamic program:

    // Input:
    // Values (stored in array v)
    // Weights (stored in array w)
    // Number of distinct items (n)
    // Knapsack capacity (W)
    // NOTE: The array "v" and array "w" are assumed to store all relevant values starting at index 1.

    for j from 0 to W do:
        m[0, j] := 0

    for i from 1 to n do:
        for j from 0 to W do:
            if w[i] > j then:
                m[i, j] := m[i-1, j]
            else:
                m[i, j] := max(m[i-1, j], m[i-1, j-w[i]] + v[i])

This solution will therefore run in O(nW) time and O(nW) space.

However, if we take it a step or two further, we should know that the method will run in the time between O(nW) and O(2^(n)). From DEFINITION A, we can know that there is no need for computing all the weights when the number of items and the items themselves that we chose are fixed. That is to say, the program above computes more than expected because that the weight changes from 0 to W all the time. All we need to do is to compare m[i-1, j] and m[i-1, j-w[i]] + v[i] for m[i, j], and when m[i-1, j-w[i]] is out of range, we just give the value of m[i-1, j] to m[i, j]. From this perspective, we can program this method so that it runs recursively!

    // Input:
    // Values (stored in array v)
    // Weights (stored in array w)
    // Number of distinct items (n)
    // Knapsack capacity (W)
    // NOTE: The array "v" and array "w" are assumed to store all relevant values starting at index 1.

    Define value[n, W]

    Initialize All value[i, j] = -1

    Define m:=(i,j)         //Define function m so that it represents the maximum value we can get under the condition: use first i items, total weight limit is j
    {
        if i = 0 or j <= 0 then:
            return 0

        if (value[i-1,j] == -1) then:     //m[i-1, j] has not been calculated, we have to call function m
            value[i-1,j] = m(i-1,j)

        if w[i] > j:                      //item cannot fit in the bag (THIS WAS MISSING FROM THE PREVIOUS ALGORITHM)
            value[i,j] = value[i-1,j]
        else:
            if (value[i-1, j-w[i]] == -1) then:     //m[i-1,j-w[i]] has not been calculated, we have to call function m
                value[i-1, j-w[i]] = m(i-1, j-w[i])
            value[i, j] = max(value[i-1,j], value[i-1, j-w[i]] + v[i])

        return value[i,j]
    }

    Run m(n,W)

For example, there are 10 different items and the weight limit is 67. So,

$$\begin{align}
&w[  1]= 23 ,w[  2]= 26,w[  3]= 20,w[  4]= 18,w[  5]= 32,w[  6]= 27,w[  7]= 29,w[  8]= 26,w[  9]= 30,w[ 10]= 27 \\
&v[  1]=505 ,v[  2]=352,v[  3]=458,v[  4]=220,v[  5]=354,v[  6]=414,v[  7]=498,v[  8]=545,v[  9]=473,v[ 10]=543 \\
\end{align}$$
If you use above method to compute for m(10, 67), you will get (_excluding calls that produce m(i,j) = 0_):

$$\begin{align}
&m(10, 67) = 1270\\
&m(9, 67) = 1270, m(9, 40) = 678\\
&m(8, 67) = 1270, m(8, 40) = 678, m(8, 37) = 545\\
&m(7, 67) = 1183, m(7, 41) = 725, m(7, 40) = 678, m(7, 37) = 505\\
&m(6, 67) = 1183, m(6, 41) = 725, m(6, 40) = 678, m(6, 38) = 678, m(6, 37) = 505\\
&m(5, 67) = 1183, m(5, 41) = 725, m(5, 40) = 678, m(5, 38) = 678, m(5, 37) = 505\\
&m(4, 67) = 1183, m(4, 41) = 725, m(4, 40) = 678, m(4, 38) = 678, m(4, 37) = 505, m(4, 35) = 505\\
&m(3, 67) = 963, m(3, 49) = 963, m(3, 41) = 505, m(3, 40) = 505, m(3, 38) = 505, m(3, 37) = 505, m(3, 35) = 505, m(3, 23) = 505, m(3, 22) = 458, m(3, 20) = 458\\
&m(2, 67) = 857, m(2, 49) = 857, m(2, 47) = 505, m(2, 41) = 505, m(2, 40) = 505, m(2, 38) = 505, m(2, 37) = 505, m(2, 35) = 505, m(2, 29) = 505, m(2, 23) = 505\\
&m(1, 67) = 505, m(1, 49) = 505, m(1, 47) = 505, m(1, 41) = 505, m(1, 40) = 505, m(1, 38) = 505, m(1, 37) = 505, m(1, 35) = 505, m(1, 29) = 505, m(1, 23) = 505\\
\end{align}$$

Besides, we can break the recursion and convert it into a tree. Then we can cut some leaves and use parallel computing to expedite the running of this method!

Meet-in-the-middle

Another algorithm for 0-1 knapsack, discovered in 1974[18] and sometimes called "meet-in-the-middle" due to parallels to a similarly named algorithm in cryptography, is exponential in the number of different items but may be preferable to the DP algorithm when W is large compared to _n_. In particular, if the w_(i) are nonnegative but not integers, we could still use the dynamic programming algorithm by scaling and rounding (i.e. using fixed-point arithmetic), but if the problem requires d fractional digits of precision to arrive at the correct answer, W will need to be scaled by 10^(d), and the DP algorithm will require O(W10^(d)) space and O(nW10^(d)) time.

    '' Meet-in-the-middle algorithm

  input: 
    a set of items with weights and values
  output: 
    the greatest combined value of a subset
  partition the set {1...n} into two sets A and B of approximately equal size
  compute the weights and values of all subsets of each set
  for each subset of A
    find the subset of B of greatest value such that the combined weight is less than W
  keep track of the greatest combined value seen so far

The algorithm takes O(2^(n/2)) space, and efficient implementations of step 3 (for instance, sorting the subsets of B by weight, discarding subsets of B which weigh more than other subsets of B of greater or equal value, and using binary search to find the best match) result in a runtime of O(n2^(n/2)). As with the meet in the middle attack in cryptography, this improves on the O(n2^(n)) runtime of a naive brute force approach (examining all subsets of {1...n}), at the cost of using exponential rather than constant space (see also baby-step giant-step).

Approximation algorithms

As for most NP-complete problems, it may be enough to find workable solutions even if they are not optimal. Preferably, however, the approximation comes with a guarantee on the difference between the value of the solution found and the value of the optimal solution.

As with many useful but computationally complex algorithms, there has been substantial research on creating and analyzing algorithms that approximate a solution. The knapsack problem, though NP-Hard, is one of a collection of algorithms that can still be approximated to any specified degree. This means that the problem has a polynomial time approximation scheme. To be exact, the knapsack problem has a fully polynomial time approximation scheme (FPTAS).[19]

Greedy approximation algorithm

George Dantzig proposed a greedy approximation algorithm to solve the unbounded knapsack problem.[20] His version sorts the items in decreasing order of value per unit of weight, v_(i)/w_(i). It then proceeds to insert them into the sack, starting with as many copies as possible of the first kind of item until there is no longer space in the sack for more. Provided that there is an unlimited supply of each kind of item, if m is the maximum value of items that fit into the sack, then the greedy algorithm is guaranteed to achieve at least a value of m/2. However, for the bounded problem, where the supply of each kind of item is limited, the algorithm may be far from optimal.

Fully polynomial time approximation scheme

The fully polynomial time approximation scheme (FPTAS) for the knapsack problem takes advantage of the fact that the reason the problem has no known polynomial time solutions is because the profits associated with the items are not restricted. If one rounds off some of the least significant digits of the profit values then they will be bounded by a polynomial and 1/ε where ε is a bound on the correctness of the solution. This restriction then means that an algorithm can find a solution in polynomial time that is correct within a factor of (1-ε) of the optimal solution.[21]

    '' An Algorithm for FPTAS

 input: 
   ε ∈ (0,1]
   a list A of n items, specified by their values, v_(i), and weights
 output:
   S' the FPTAS solution

 P := max {v_(i) ∣ 1 ≤ i ≤ n}  // the highest item value
 K := ε $\frac{P}{n}$
 for i from 1 to n do
    v′_(i) := $\left\lfloor \frac{v_i}{K} \right\rfloor$
 end for
 return the solution, S', using the v′_(i) values in the dynamic program outlined above

THEOREM: The set S′ computed by the algorithm above satisfies profit(S′) ≥ (1 − ε) ⋅ profit(S^(*)), where S^(*) is an optimal solution.

Dominance relations

Solving the unbounded knapsack problem can be made easier by throwing away items which will never be needed. For a given item i, suppose we could find a set of items J such that their total weight is less than the weight of i, and their total value is greater than the value of i. Then i cannot appear in the optimal solution, because we could always improve any potential solution containing i by replacing i with the set J. Therefore, we can disregard the i-th item altogether. In such cases, J is said to DOMINATE i. (Note that this does not apply to bounded knapsack problems, since we may have already used up the items in J.)

Finding dominance relations allows us to significantly reduce the size of the search space. There are several different types of dominance relations,[22] which all satisfy an inequality of the form:

  ∑_(j ∈ J)w_(j) x_(j)  ≤ α w_(i), and ∑_(j ∈ J)v_(j) x_(j)  ≥ α v_(i)  for some x ∈ Z₊^(n)

where α ∈ Z₊ , J ⊊ N and i ∉ J. The vector x denotes the number of copies of each member of J.

Collective dominance: The i-th item is COLLECTIVELY DOMINATED by J, written as i ≪ J, if the total weight of some combination of items in J is less than _w_(i)_ and their total value is greater than _v_(i)_. Formally, ∑_(j ∈ J)w_(j) x_(j)  ≤ w_(i) and ∑_(j ∈ J)v_(j) x_(j)  ≥ v_(i) for some x ∈ Z₊^(n), i.e. α = 1. Verifying this dominance is computationally hard, so it can only be used with a dynamic programming approach. In fact, this is equivalent to solving a smaller knapsack decision problem where V = v_(i), W = w_(i), and the items are restricted to J.
Threshold dominance: The i-th item is THRESHOLD DOMINATED by J, written as i ≺  ≺ J, if some number of copies of i are dominated by J. Formally, ∑_(j ∈ J)w_(j) x_(j)  ≤ α w_(i), and ∑_(j ∈ J)v_(j) x_(j)  ≥ α v_(i)  for some x ∈ Z₊^(n) and α ≥ 1. This is a generalization of collective dominance, first introduced in[23] and used in the EDUK algorithm. The smallest such α defines the THRESHOLD of the item i, written t_(i) = (α − 1)w_(i). In this case, the optimal solution could contain at most α − 1 copies of i.
Multiple dominance: The i-th item is MULTIPLY DOMINATED by a single item j, written as i≪_(m)j, if i is dominated by some number of copies of j. Formally, w_(j) x_(j)  ≤ w_(i), and v_(j) x_(j)  ≥ v_(i) for some x_(j) ∈ Z₊ i.e. $J=\{j\}, \alpha=1,  x_j=\lfloor \frac{w_i}{w_j}\rfloor$. This dominance could be efficiently used during preprocessing because it can be detected relatively easily.
Modular dominance: Let b be the _best item_, i.e. $\frac{v_b}{w_b}\ge\frac{v_i}{w_i}\,$ for all i. This is the item with the greatest density of value. The i-th item is MODULARLY DOMINATED by a single item j, written as i≪_(≡)j, if i is dominated by j plus several copies of b. Formally, w_(j) + tw_(b) ≤ w_(i), and v_(j) + tv_(b) ≥ v_(i) i.e. J = {b, j}, α = 1, x_(b) = t, x_(j) = 1.


Variations

There are many variations of the knapsack problem that have arisen from the vast number of applications of the basic problem. The main variations occur by changing the number of some problem parameter such as the number of items, number of objectives, or even the number of knapsacks.

Multi-objective knapsack problem

This variation changes the goal of the individual filling the knapsack. Instead of one objective, such as maximizing the monetary profit, the objective could have several dimensions. For example, there could be environmental or social concerns as well as economic goals. Problems frequently addressed include portfolio and transportation logistics optimizations.[24][25]

As an example, suppose you ran a cruise ship. You have to decide how many famous comedians to hire. This boat can handle no more than one ton of passengers and the entertainers must weigh less than 1000 lbs. Each comedian has a weight, brings in business based on their popularity and asks for a specific salary. In this example, you have multiple objectives. You want, of course, to maximize the popularity of your entertainers while minimizing their salaries. Also, you want to have as many entertainers as possible.

Multi-dimensional knapsack problem

In this variation, the weight of knapsack item i is given by a D-dimensional vector $\overline{w_i}=(w_{i1},\ldots,w_{iD})$ and the knapsack has a D-dimensional capacity vector (W₁, …, W_(D)). The target is to maximize the sum of the values of the items in the knapsack so that the sum of weights in each dimension d does not exceed W_(d).

Multi-dimensional knapsack is computationally harder than knapsack; even for D = 2, the problem does not have EPTAS unless P=NP.[26] However, the algorithm in[27] is shown to solve sparse instances efficiently. An instance of multi-dimensional knapsack is sparse if there is a set J = {1, 2, …, m} for m < D such that for every knapsack item i, ∃z > m such that ∀j ∈ J ∪ {z}, w_(ij) ≥ 0 and ∀y ∉ J ∪ {z}, w_(iy) = 0. Such instances occur, for example, when scheduling packets in a wireless network with relay nodes.[28] The algorithm from[29] also solves sparse instances of the multiple choice variant, multiple-choice multi-dimensional knapsack.

The IHS (Increasing Height Shelf) algorithm is optimal for 2D knapsack (packing squares into a two-dimensional unit size square): when there are at most five square in an optimal packing.[30]

Multiple knapsack problem

This variation is similar to the Bin Packing Problem. It differs from the Bin Packing Problem in that a subset of items can be selected, whereas, in the Bin Packing Problem, all items have to be packed to certain bins. The concept is that there are multiple knapsacks. This may seem like a trivial change, but it is not equivalent to adding to the capacity of the initial knapsack. This variation is used in many loading and scheduling problems in Operations Research and has a Polynomial-time approximation scheme.[31]

Quadratic knapsack problem

As described by Wu et al.:

  The quadratic knapsack problem (QKP) maximizes a quadratic objective function subject to a binary and linear capacity constraint.[32]

The quadratic knapsack problem was discussed under that title by Gallo, Hammer, and Simeone in 1980.[33] However, Gallo and Simeone[34] attribute the first treatment of the problem to Witzgall[35] in 1975.

Subset-sum problem

The subset sum problem is a special case of the decision and 0-1 problems where each kind of item, the weight equals the value: w_(i) = v_(i). In the field of cryptography, the term _knapsack problem_ is often used to refer specifically to the subset sum problem and is commonly known as one of Karp's 21 NP-complete problems.[36]

The generalization of subset sum problem is called multiple subset-sum problem, in which multiple bins exist with the same capacity. It has been shown that the generalization does not have an FPTAS.[37]


In popular culture

-   Neal Stephenson provides an example of the knapsack problem in chapter 70 of his novel _Cryptonomicon_ to distribute family heirlooms.
-   The knapsack problem occurs commonly in role-playing games, both digital and paper-based (prominent examples include _The Elder Scrolls_ series and the _Dungeons and Dragons_ game, respectively), where the player character is constrained by their encumbrance threshold when carrying items and treasure, which regularly forces the player to evaluate the items' value-to-weight ratio in order to bring only the most value-dense items to a merchant.
-   Web comic xkcd #287 - NP-Complete
-   In Charles Stross' _Accelerando_, the main character Manfred refers to the 'blind knapsack problem' in chapter 2, presumably a generalization or more complex version of the regular knapsack problem.


See also

-   Change-making problem
-   Combinatorial auction
-   Combinatorial optimization
-   Continuous knapsack problem
-   Cutting stock problem
-   List of knapsack problems
-   Packing problem


Notes


References

-   A6: MP9, pg.247.

-
-


External links

-   Free download of the book "Knapsack problems: Algorithms and computer implementations", by Silvano Martello and Paolo Toth
-   Lecture slides on the knapsack problem
-   PYAsUKP: Yet Another solver for the Unbounded Knapsack Problem, with code taking advantage of the dominance relations in an hybrid algorithm, benchmarks and downloadable copies of some papers.
-   Home page of David Pisinger with downloadable copies of some papers on the publication list (including "Where are the hard knapsack problems?")
-   Knapsack Problem solutions in many languages at Rosetta Code
-   Dynamic Programming algorithm to 0/1 Knapsack problem
-   Knapsack Problem solver (online)
-   Solving 0-1-KNAPSACK with Genetic Algorithms in Ruby
-   Codes for Quadratic Knapsack Problem

-   Optimizing Three-Dimensional Bin Packing

Category:Cryptography Category:Packing problems Category:NP-complete problems Category:Dynamic programming Category:Combinatorial optimization Category:Weakly NP-complete problems Category:Pseudo-polynomial time algorithms

[1]

[2] Dantzig, Tobias. Numbers: The Language of Science, 1930.

[3]

[4] Kellerer, Pferschy, and Pisinger 2004, p. 449

[5] Kellerer, Pferschy, and Pisinger 2004, p. 461

[6] Kellerer, Pferschy, and Pisinger 2004, p. 465

[7] Kellerer, Pferschy, and Pisinger 2004, p. 472

[8]

[9] Pisinger, D. 2003. Where are the hard knapsack problems? Technical Report 2003/08, Department of Computer Science, University of Copenhagen, Copenhagen, Denmark.

[10]

[11]

[12]

[13] S. Martello, P. Toth, Knapsack Problems: Algorithms and Computer Implementations, John Wiley and Sons, 1990

[14]

[15] S. Martello, D. Pisinger, P. Toth, Dynamic programming and strong bounds for the 0-1 knapsack problem, _Manag. Sci._, 45:414–424, 1999.

[16]

[17]

[18]

[19] Vazirani, Vijay. Approximation Algorithms. Springer-Verlag Berlin Heidelberg, 2003.

[20]

[21]

[22]

[23]

[24] Chang, T. J., et al. Heuristics for Cardinality Constrained Portfolio Optimization. Technical Report, London SW7 2AZ, England: The Management School, Imperial College, May 1998

[25] Chang, C. S., et al. "Genetic Algorithm Based Bicriterion Optimization for Traction Substations in DC Railway System." In Fogel [102], 11-16.

[26]

[27] Cohen, R. and Grebla, G. 2014. "Multi-Dimensional OFDMA Scheduling in a Wireless Network with Relay Nodes". in _Proc. IEEE INFOCOM’14_, 2427–2435.

[28]

[29]

[30] Yan Lan, György Dósa, Xin Han, Chenyang Zhou, Attila Benkő 1: _2D knapsack: Packing squares_, Theoretical Computer Science Vol. 508, pp. 35–40.

[31]

[32]

[33]

[34]

[35]

[36] Richard M. Karp (1972). "Reducibility Among Combinatorial Problems". In R. E. Miller and J. W. Thatcher (editors). Complexity of Computer Computations. New York: Plenum. pp. 85–103

[37]