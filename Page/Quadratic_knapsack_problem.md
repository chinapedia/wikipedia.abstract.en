The QUADRATIC KNAPSACK PROBLEM (QKP), first introduced in 19th century,[1] is an extension of knapsack problem that allows for quadratic terms in the objective function: Given a set of items, each with a weight, a value, and an extra profit that can be earned if two items are selected, determine the number of item to include in a collection without exceeding capacity of the knapsack, so as to maximize the overall profit. Usually, quadratic knapsack problems come with a restriction on the number of copies of each kind of item: either 0, or 1. This special type of QKP forms the 0-1 quadratic knapsack problem, which was first discussed by Gallo et al.[2] The 0-1 quadratic knapsack problem is a variation of knapsack problems, combining the features of unbounded knapsack problem, 0-1 knapsack problem and quadratic knapsack problem.


Definition

Specifically, the 0–1 quadratic knapsack problem has the following form:

    $\text{maximize } \left\{\sum_{i=1}^n p_i x_i + \sum_{i=1}^n\sum_{j=1,i\neq j}^n P_{ij}x_ix_j:  x\in X, x \text{ binary} \right\}$
    $\text{subject to } X\equiv\left\{x \in \R^n: \sum_{i=1}^n w_i x_i \leq W; 0\leq x_i\leq 1 \text{ for } i=1,\ldots, n \right\}.$

While the binary variable _x_(i)_ represents whether item _i_ is included in the knapsack, p_(i) is the profit earned by selecting item _i_ and P_(ij) is the profit achieved if both item _i_ and _j_ are added.

Informally, the problem is to maximize the sum of the values of the items in the knapsack so that the sum of the weights is less than or equal to the knapsack's capacity.


Application

As one might expect, QKP has a wide range of applications including telecommunication, transportation network, computer science and economics. In fact, Witzgall first discussed QKP when selecting sites for satellite stations in order to maximize the global traffic with respect to a budget constraint. Similar model applies to problems like considering the location of airports, railway stations, or freight handling terminals.[3] Applications of QKP in the field of computer science is more common after the early days: compiler design problem,[4] clique problem,[5][6] very large scale integration (VLSI) design.[7] Additionally, pricing problems appear to be an application of QKP as described by Johnson et al.[8]


Computational complexity

In general, the decision version of the knapsack problem (Can a value of at least V be achieved under a restriction of a certain capacity W?) is NP-complete.[9] Thus, a given solution can be verified to in polynomial time while no algorithm can identify a solution efficiently.

The optimization knapsack problem is NP-hard and there is no known algorithm that can solve the problem in polynomial time.

As a particular variation of the knapsack problem, the 0-1 quadratic knapsack problem is also NP-hard.

While no available efficient algorithm exists in the literature, there is a pseudo-polynomial time based on dynamic programming and other heuristic algorithms that can always generate “good” solutions.


Solving

While the knapsack problem is one of the most commonly solved operation research (OR) problems, there are limited efficient algorithms that can solve 0-1 quadratic knapsack problems. Available algorithms include but are not limited to brute force, linearization,[10] and convex reformulation. Just like other NP-hard problems, it is usually enough to find a workable solution even if it is not necessarily optimal. Heuristic algorithms based on greedy algorithm, dynamic programming can give a relatively “good” solution to the 0-1 QKP efficiently.

Brute force

The brute force algorithm to solve this problem is to identify all possible subsets of the items without exceeding the capacity and select the one with the optimal value. The pseudo-code is provided as follows:

    // Input:
    // Profits (stored in array p)
    // Quadratic profits (stored in matrix P)
    // Weights (stored in array w)
    // Number of items (n)
    // Knapsack capacity (W)

    int max =0
    for all subset S do
        int value, weight = 0
        for i from 0 to S.size-1 do:
            value = value +p[i]
            weight = weight +w[i]
                for j from i+1 to S.size-1 do:
                    value = value + P[i][j]
        if weight <= W then:
            if value > max then:
                max = value

Given _n_ items, there will be at most 2^(n) subsets and for each legal candidate set, the running time of computing the values earned is O(n²). Thus, the efficiency class of brute force algorithm is (2^(n)n²) = λ(2^(n)), being exponential.

Linearization

Problems of such form are difficult to solve directly using standard solvers and thus people try to reformulate it as a linear program using auxiliary variables and constraints so that the problem can be readily solved using commercial packages. Two well-known linearization approaches for the 0-1 QKP are the standard linearization and Glover’s linearization.[11][12][13]

Standard linearization

The first one is the standard linearization strategy, as shown below:

    LP1: maximize
    $\sum_{i=1}^n p_i x_i + \sum_{i=1}^n \left(\sum_{j=1,i\neq j}^n (P_{ij} + P_{ji}) z_{ij} \right).$
    subject to
    z_(ij) ≤ x_(i) for all (i, j), i < j
    z_(ij) ≤ x_(j) for all (i, j), i < j
    x_(i) + x_(j) − 1 ≤ z_(ij) for all (i, j), i < j
    z_(ij) ≥ 0 for all (i, j), i < j
    x ∈ X, x binary

In the formulation LP1, we have replaced the _x_(i)x_(j)_ term with a continuous variable _z_(ij)_. This reformulates the QKP into a knapsack problem, which we can then solve optimally using standard solvers.

Glover's linearization

The second reformulation, which is more concise, is called Glover’s linearization.[14][15][16] The Glover formulation is shown below, where _L_(i)_ and _U_(i)_ are lower and upper bounds on $\sum_{j=1,i\neq j}^n P_{ij}x_j$, respectively:

    LP2: maximize
    $\sum_{i=1}^n p_i x_i + \sum_{i=1}^nz_i$
    subject to
    L_(i)x_(i) ≤ z_(i) ≤ U_(i)x_(i) for i = 1, …, n
    $\sum_{j=1,i\neq j}^nP_{ij} x_j - U_i(1-x_i)\leq z_i\leq \sum_{j=1,i\neq j}^nP_{ij} x_j-L_i(1-x_i)$ for i = 1, …, n
    x ∈ X, x binary

In the formulation LP2, we have replaced the expression $\sum_{j=1,i\neq j}^n P_{ij} x_i x_j$ with a continuous variable _z_(i)_. Similarly, we can use standard solvers to solve the linearization problem. Note that Glover’s linearization only includes n auxiliary variables with 2n constraints while standard linearization requires ${n \choose 2}$ auxiliary variables and $3{n \choose 2}$ constraints to achieve linearity.

Convex quadratic reformulation

Note that nonlinear programs are hard to solve due to the possibility of being stuck at a local maximum. However, when the program is convex, any local maximum is the global maximum. A convex program is to maximize a concave function or minimize a convex function on a convex set. A set S is convex if ∀u, v ∈ S, λu + (1 − λ)v ∈ S where λ ∈ [0, 1]. That is to say, any point between two points in the set must also be an element of the set. A function _f_ is concave if f[λu + (1 − λ)v] ≤ λf(u) + (1 − λ)f(v). A function _f_ is convex if f[λu + (1 − λ)v] ≥ λf(u) + (1 − λ)f(v). Informally, a function is concave if the line segment connecting two points on the graph lies above or on the graph, while a function is convex if below or on the graph. Thus, by rewriting the objective function into an equivalent convex function, we can reformulate the program to be convex, which can be solved using optimization packages.

The objective function can be written as c^(T)x + x^(T)Cx using linear algebra notation. We need to make _P_ a positive semi-definite matrix in order to reformulate a convex function. In this case, we modify the objective function to be $p^Tx+x^TPx+\sum_{i=1}^n \left(\sum_{j=1,j\neq i}^n|P_{ij}|\right)(x_i^2-x_i)$ by applying results from linear algebra, where _P_ is a diagonally dominant matrix and thus a positive semi-definite. This reformulation can be solved using a standard commercial mixed-integer quadratic package.[17]

Greedy heuristic algorithm

George Dantzig[18] proposed a greedy approximation algorithm to unbounded knapsack problem which can also be used to solve the 0-1 QKP. The algorithm consists of two phrases: identify an initial solution and improve it.

First compute for each item, the total objective contribution realizable by selecting it, $p_i+\sum_{i\neq j}^n P_{ij}$, and sort the items in decreasing order of the potential value per unit of weight, $(p_i+\sum_{i\neq j}^nP_{ij})/w_i$. Then select the items with the maximal value-weight ratio into the knapsack until there is no space for more, which forms the initial solution. Starting with the initial solution, the improvement is conducted by pairwise exchange. For each item in the solution set, identify the items not in the set where swapping results in an improving objective. Select the pair with maximal improvement and swap. There are also possibilities that removing one from the set or adding one to the set will produce the greatest contribution. Repeat until there is no improving swapping. The complexity class of this algorithm is O(2^(n)) since for the worst case every possible combination of items will be identified.

Quadknap

Quadknap is an exact branch-and-bound algorithm raised by Caprara et al.,[19] where upper bounds are computed by considering a Lagrangian relaxation which approximate a difficult problem by a simpler problem and penalizes violations of constraints using Lagrange multiplier to impost a cost on violations. Quadknap releases the integer requirement when computing the upper bounds. Suboptimal Lagrangian multipliers are derived from sub-gradient optimization and provide a convenient reformulation of the problem. This algorithm is quite efficient since Lagrangian multipliers are stable, and suitable data structures are adopted to compute a tight upper bound in linear expected time in the number of variables. This algorithm was reported to generate exact solutions of instances with up to 400 binary variables, i.e., significantly larger than those solvable by other approaches. The code was written C language and available online.[20]

Dynamic programming heuristic

While dynamic programming can generate optimal solutions to knapsack problems, dynamic programming approaches for QKP[21] can only yield a relatively good quality solution, which can serve as a lower bound to the optimal objectives. While it runs in pseudo-polynomial time, it has a large memory requirement.

Dynamic programming algorithm

For simplicity, assume all weights are non-negative. The objective is to maximize total value subject to the constraint: that the total weight is less than or equal to _W_. Then for each w ≤ W, define f(m, w) to be the value of the most profitable packing of the first m items found with a total weight of _w_. That is, let

    $f(m,w)=\max\left\{\sum_{i=1}^m p_i x_i + \sum_{i=1}^m\sum_{j=1,i\neq j}^m P_{ij}x_ix_j:  \sum_{i=1}^m w_i=w,1\leq i\leq m \right\}.$

Then, f(m, w) is the solution to the problem. Note that by dynamic programming, the solution to a problem arises from the solution to its smaller sub-problems. In this particular case, start with the first item and try to find a better packing by considering adding items with an expected weight of 𝑤. If the weight of the item to be added exceeds _𝑤_, then f(m, w) is the same with f(m − 1, w). Given that the item has a smaller weight compared with the desired weight, f(m, w) is either the same as f(m − 1, w) if adding makes no contribution, or the same as the solution for a knapsack with smaller capacity, specifically one with the capacity reduced by the weight of that chosen item, plus the value of one correct item, i.e. $f(m-1,w-w_m)+p_m+\sum_{i=1}^{m-1}P_{im}x_i$. To conclude, we have that

    f(m,w)=

\begin{cases}
\max f(m-1,w),f(m-1,w-w_m)+p_m+\sum_{i=1}^{m-1}P_{im}x_i & \text{if } w_m\leq w\\
f(m-1,w) & \text{otherwise}
\end{cases}

Note on efficiency class: Clearly the running time of this algorithm is O(Wn²), based on the nested loop and the computation of the profit of new packing. This does not contradict the fact the QKP is NP-hard since _W_ is not polynomial in the length of the input.

Revised dynamic programming algorithm

Note that the previous algorithm requires O(Wn²) space for storing the current packing of items for all _m,w_, which may not be able to handle large-size problems. In fact, this can be easily improved by dropping the index _m_ from f(m, w) since all the computations depend only on the results from the preceding stage.

Redefine f(w) to be the current value of the most profitable packing found by the heuristic. That is,

    $f(w)=\max\left\{\sum_{i=1}^m p_i x_i + \sum_{i=1}^m \sum_{j=1,i\neq j}^m P_{ij}x_ix_j:  \sum_{i=1}^m w_i=w,m\leq n \right\}.$

Accordingly, by dynamic programming we have that

    f(m)=

\begin{cases}
\max f(w),f(w-w_m)+p_m+\sum_{i=1}^{m-1}P_{im}x_i & \text{if } w_m\leq w, \\
f(w) & \text{otherwise.} 
\end{cases}

Note this revised algorithm still runs in O(Wn²) while only taking up O(Wn) memory compared to the previous O(Wn²).


Related research topics

Researchers have been studied 0-1 quadratic knapsack problems for decades. One focus is to find effective algorithms or effective heuristics, especially those with an outstanding performance solving real world problems. The relationship between the decision version and the optimization version of the 0-1 QKP should not be ignored when working with either one. On one hand, if the decision problem can be solved in polynomial time, then one can find the optimal solution by applying this algorithm iteratively. On the other hand, if there exists an algorithm that can solve the optimization problem efficiently, then it can be utilized in solving the decision problem by comparing the input with the optimal value.

Another theme in literature is to identify what are the "hard" problems. Researchers who study the 0-1 QKP often perform computational studies[22] to show the superiority of their strategies. Such studies can also be conducted to assess the performance of different solution methods. For the 0-1 QKP, those computational studies often rely on randomly generated data, introduced by Gallo et al. Essentially every computational study of the 0-1 QKP utilizes data that is randomly generated as follows. The weights are integers taken from a uniform distribution over the interval [1, 50], and the capacity constraints is an integer taken from a uniform distribution between 50 and the sum of item weights. The objective coefficients, i.e. the values are randomly chosen from [1,100]. It has been observed that generating instances of this form yields problems with highly variable and unpredictable difficulty. Therefore, the computational studies presented in the literature may be unsound. Thus some researches aim to develop a methodology to generate instances of the 0-1 QKP with a predictable and consistent level of difficulty.


See also

-   Knapsack problem
-   Combinatorial auction
-   Combinatorial optimization
-   Continuous knapsack problem
-   List of knapsack problems
-   Packing problem


Notes


External links

-   David Pisinger's Codes for different knapsack problem
-   Codes for Quadratic Knapsack Problem

Category:Packing problems Category:NP-complete problems Category:Dynamic programming Category:Combinatorial optimization Category:Pseudo-polynomial time algorithms

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

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]