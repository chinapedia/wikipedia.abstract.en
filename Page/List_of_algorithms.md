The following is a LIST OF ALGORITHMS along with one-line descriptions for each.


Automated planning


Combinatorial algorithms

General combinatorial algorithms

-   Brent's algorithm: finds a cycle in function value iterations using only two iterators
-   Floyd's cycle-finding algorithm: finds a cycle in function value iterations
-   Gale–Shapley algorithm: solves the stable marriage problem
-   Pseudorandom number generators (uniformly distributed - see also List of pseudorandom number generators for other PRNGs with varying degrees of convergence and varying statistical quality):
    -   ACORN generator
    -   Blum Blum Shub
    -   Lagged Fibonacci generator
    -   Linear congruential generator
    -   Mersenne Twister

Graph algorithms

-   Coloring algorithm: Graph coloring algorithm.
-   Hopcroft–Karp algorithm: convert a bipartite graph to a maximum cardinality matching
-   Hungarian algorithm: algorithm for finding a perfect matching
-   Prüfer coding: conversion between a labeled tree and its Prüfer sequence
-   Tarjan's off-line lowest common ancestors algorithm: compute lowest common ancestors for pairs of nodes in a tree
-   Topological sort: finds linear order of nodes (e.g. jobs) based on their dependencies.

Graph drawing

-   Force-based algorithms (also known as force-directed algorithms or spring-based algorithm)
-   Spectral layout

Network theory

-   Network analysis
    -   Link analysis
        -   Girvan–Newman algorithm: detect communities in complex systems
        -   Web link analysis
            -   Hyperlink-Induced Topic Search (HITS) (also known as Hubs and authorities)
            -   PageRank
            -   TrustRank
-   Flow networks
    -   Dinic's algorithm: is a strongly polynomial algorithm for computing the maximum flow in a flow network.
    -   Edmonds–Karp algorithm: implementation of Ford–Fulkerson
    -   Ford–Fulkerson algorithm: computes the maximum flow in a graph
    -   Karger's algorithm: a Monte Carlo method to compute the minimum cut of a connected graph
    -   Push–relabel algorithm: computes a maximum flow in a graph

Routing for graphs

-   Edmonds' algorithm (also known as Chu–Liu/Edmonds' algorithm): find maximum or minimum branchings
-   Euclidean minimum spanning tree: algorithms for computing the minimum spanning tree of a set of points in the plane
-   Euclidean shortest path problem: find the shortest path between two points that does not intersect any obstacle
-   Longest path problem: find a simple path of maximum length in a given graph
-   Minimum spanning tree
    -   Borůvka's algorithm
    -   Kruskal's algorithm
    -   Prim's algorithm
    -   Reverse-delete algorithm
-   Nonblocking minimal spanning switch say, for a telephone exchange
-   Shortest path problem
    -   Bellman–Ford algorithm: computes shortest paths in a weighted graph (where some of the edge weights may be negative)
    -   Dijkstra's algorithm: computes shortest paths in a graph with non-negative edge weights
    -   Floyd–Warshall algorithm: solves the all pairs shortest path problem in a weighted, directed graph
    -   Johnson's algorithm: All pairs shortest path algorithm in sparse weighted directed graph

-   Transitive closure problem: find the transitive closure of a given binary relation
-   Traveling salesman problem
    -   Christofides algorithm
    -   Nearest neighbour algorithm
-   Warnsdorff's rule: A heuristic method for solving the Knight's tour problem.

Graph search

-   A*: special case of best-first search that uses heuristics to improve speed
-   B*: a best-first graph search algorithm that finds the least-cost path from a given initial node to any goal node (out of one or more possible goals)
-   Backtracking: abandons partial solutions when they are found not to satisfy a complete solution
-   Beam search: is a heuristic search algorithm that is an optimization of best-first search that reduces its memory requirement
-   Beam stack search: integrates backtracking with beam search
-   Best-first search: traverses a graph in the order of likely importance using a priority queue
-   Bidirectional search: find the shortest path from an initial vertex to a goal vertex in a directed graph
-   Breadth-first search: traverses a graph level by level
-   Brute-force search: An exhaustive and reliable search method, but computationally inefficient in many applications.
-   D*: an incremental heuristic search algorithm
-   Depth-first search: traverses a graph branch by branch
-   Dijkstra's algorithm: A special case of A* for which no heuristic function is used
-   General Problem Solver: a seminal theorem-proving algorithm intended to work as a universal problem solver machine.
-   Iterative deepening depth-first search (IDDFS): a state space search strategy
-   Jump point search: An optimization to A* which may reduce computation time by an order of magnitude using further heuristics.
-   Lexicographic breadth-first search (also known as Lex-BFS): a linear time algorithm for ordering the vertices of a graph
-   Uniform-cost search: a tree search that finds the lowest-cost route where costs vary
-   SSS*: state space search traversing a game tree in a best-first fashion similar to that of the A* search algorithm
-   F*: Special algorithm to merge the two arrays

Subgraphs

-   Cliques
    -   Bron–Kerbosch algorithm: a technique for finding maximal cliques in an undirected graph
    -   MaxCliqueDyn maximum clique algorithm: find a maximum clique in an undirected graph
-   Strongly connected components
    -   Path-based strong component algorithm
    -   Kosaraju's algorithm
    -   Tarjan's strongly connected components algorithm
-   Subgraph isomorphism problem

Sequence algorithms

Approximate sequence matching

-   Bitap algorithm: fuzzy algorithm that determines if strings are approximately equal.
-   Phonetic algorithms
    -   Daitch–Mokotoff Soundex: a Soundex refinement which allows matching of Slavic and Germanic surnames
    -   Double Metaphone: an improvement on Metaphone
    -   Match rating approach: a phonetic algorithm developed by Western Airlines
    -   Metaphone: an algorithm for indexing words by their sound, when pronounced in English
    -   NYSIIS: phonetic algorithm, improves on Soundex
    -   Soundex: a phonetic algorithm for indexing names by sound, as pronounced in English
-   String metrics: compute a similarity or dissimilarity (distance) score between two pairs of text strings
    -   Damerau–Levenshtein distance compute a distance measure between two strings, improves on Levenshtein distance
    -   Dice's coefficient (also known as the Dice coefficient): a similarity measure related to the Jaccard index
    -   Hamming distance: sum number of positions which are different
    -   Jaro–Winkler distance: is a measure of similarity between two strings
    -   Levenshtein edit distance: compute a metric for the amount of difference between two sequences
-   Trigram search: search for text when the exact syntax or spelling of the target object is not precisely known

Selection algorithms

-   Quickselect
-   Introselect

Sequence search

-   Linear search: finds an item in an unsorted sequence
-   Selection algorithm: finds the _k_th largest item in a sequence
-   Ternary search: a technique for finding the minimum or maximum of a function that is either strictly increasing and then strictly decreasing or vice versa
-   Sorted lists
    -   Binary search algorithm: locates an item in a sorted sequence
    -   Fibonacci search technique: search a sorted sequence using a divide and conquer algorithm that narrows down possible locations with the aid of Fibonacci numbers
    -   Jump search (or block search): linear search on a smaller subset of the sequence
    -   Predictive search: binary-like search which factors in magnitude of search term versus the high and low values in the search. Sometimes called dictionary search or interpolated search.
    -   Uniform binary search: an optimization of the classic binary search algorithm

Sequence merging

-   Simple merge algorithm
-   k-way merge algorithm
-   Union (merge, with elements on the output not repeated)

Sequence permutations

-   Fisher–Yates shuffle (also known as the Knuth shuffle): randomly shuffle a finite set
-   Schensted algorithm: constructs a pair of Young tableaux from a permutation
-   Steinhaus–Johnson–Trotter algorithm (also known as the Johnson–Trotter algorithm): generate permutations by transposing elements
-   Heap's permutation generation algorithm: interchange elements to generate next permutation

Sequence alignment

-   Dynamic time warping: measure similarity between two sequences which may vary in time or speed
-   Hirschberg's algorithm: finds the least cost sequence alignment between two sequences, as measured by their Levenshtein distance
-   Needleman–Wunsch algorithm: find global alignment between two sequences
-   Smith–Waterman algorithm: find local sequence alignment

Sequence sorting

-   Exchange sorts
    -   Bubble sort: for each pair of indices, swap the items if out of order
    -   Cocktail shaker sort or bidirectional bubble sort, a bubble sort traversing the list alternately from front to back and back to front
    -   Comb sort
    -   Gnome sort
    -   Odd–even sort
    -   Quicksort: divide list into two, with all items on the first list coming before all items on the second list.; then sort the two lists. Often the method of choice
-   Humorous or ineffective
    -   Bogosort
    -   Stooge sort
-   Hybrid
    -   Flashsort
    -   Introsort: begin with quicksort and switch to heapsort when the recursion depth exceeds a certain level
    -   Timsort: adaptative algorithm derived from merge sort and insertion sort. Used in Python 2.3 and up, and Java SE 7.
-   Insertion sorts
    -   Insertion sort: determine where the current item belongs in the list of sorted ones, and insert it there
    -   Library sort
    -   Patience sorting
    -   Shell sort: an attempt to improve insertion sort
    -   Tree sort (binary tree sort): build binary tree, then traverse it to create sorted list
    -   Cycle sort: in-place with theoretically optimal number of writes
-   Merge sorts
    -   Merge sort: sort the first and second half of the list separately, then merge the sorted lists
    -   Strand sort
-   Non-comparison sorts
    -   Bead sort
    -   Bucket sort
    -   Burstsort: build a compact, cache efficient burst trie and then traverse it to create sorted output
    -   Counting sort
    -   Pigeonhole sort
    -   Postman sort: variant of Bucket sort which takes advantage of hierarchical structure
    -   Radix sort: sorts strings letter by letter
-   Selection sorts
    -   Heapsort: convert the list into a heap, keep removing the largest element from the heap and adding it to the end of the list
    -   Selection sort: pick the smallest of the remaining elements, add it to the end of the sorted list
    -   Smoothsort
-   Other
    -   Bitonic sorter
    -   Pancake sorting
    -   Spaghetti sort
    -   Topological sort
-   Unknown class
    -   Samplesort

Subsequences

-   Kadane's algorithm: finds maximum sub-array of any size
-   Longest common subsequence problem: Find the longest subsequence common to all sequences in a set of sequences
-   Longest increasing subsequence problem: Find the longest increasing subsequence of a given sequence
-   Shortest common supersequence problem: Find the shortest supersequence that contains two or more sequences as subsequences

Substrings

-   Longest common substring problem: find the longest string (or strings) that is a substring (or are substrings) of two or more strings
-   Substring search
    -   Aho–Corasick string matching algorithm: trie based algorithm for finding all substring matches to any of a finite set of strings
    -   Boyer–Moore string-search algorithm: amortized linear (sublinear in most times) algorithm for substring search
    -   Boyer–Moore–Horspool algorithm: Simplification of Boyer–Moore
    -   Knuth–Morris–Pratt algorithm: substring search which bypasses reexamination of matched characters
    -   Rabin–Karp string search algorithm: searches multiple patterns efficiently
    -   Zhu–Takaoka string matching algorithm: a variant of Boyer–Moore
-   Ukkonen's algorithm: a linear-time, online algorithm for constructing suffix trees
-   Matching wildcards
    -   Rich Salz' wildmat: a widely used open-source recursive algorithm
    -   Krauss matching wildcards algorithm: an open-source non-recursive algorithm


Computational mathematics

Abstract algebra

-   Chien search: a recursive algorithm for determining roots of polynomials defined over a finite field
-   Schreier–Sims algorithm: computing a base and strong generating set (BSGS) of a permutation group
-   Todd–Coxeter algorithm: Procedure for generating cosets.

Computer algebra

-   Buchberger's algorithm: finds a Gröbner basis
-   Cantor–Zassenhaus algorithm: factor polynomials over finite fields
-   Faugère F4 algorithm: finds a Gröbner basis (also mentions the F5 algorithm)
-   Gosper's algorithm: find sums of hypergeometric terms that are themselves hypergeometric terms
-   Knuth–Bendix completion algorithm: for rewriting rule systems
-   Multivariate division algorithm: for polynomials in several indeterminates
-   Pollard's kangaroo algorithm (also known as Pollard's lambda algorithm ): an algorithm for solving the discrete logarithm problem
-   Polynomial long division: an algorithm for dividing a polynomial by another polynomial of the same or lower degree
-   Risch algorithm: an algorithm for the calculus operation of indefinite integration (i.e. finding antiderivatives)

Geometry

-   Closest pair problem: find the pair of points (from a set of points) with the smallest distance between them
-   Collision detection algorithms: check for the collision or intersection of two given solids
-   Cone algorithm: identify surface points
-   Convex hull algorithms: determining the convex hull of a set of points
    -   Graham scan
    -   Quickhull
    -   Gift wrapping algorithm or Jarvis march
    -   Chan's algorithm
    -   Kirkpatrick–Seidel algorithm
-   Euclidean Distance Transform - Computes the distance between every point in a grid and a discrete collection of points.
-   Geometric hashing: a method for efficiently finding two-dimensional objects represented by discrete points that have undergone an affine transformation
-   Gilbert–Johnson–Keerthi distance algorithm: determining the smallest distance between two convex shapes.
-   Jump-and-Walk algorithm: an algorithm for point location in triangulations
-   Laplacian smoothing: an algorithm to smooth a polygonal mesh
-   Line segment intersection: finding whether lines intersect, usually with a sweep line algorithm
    -   Bentley–Ottmann algorithm
    -   Shamos–Hoey algorithm
-   Minimum bounding box algorithms: find the oriented minimum bounding box enclosing a set of points
-   Nearest neighbor search: find the nearest point or points to a query point
-   Point in polygon algorithms: tests whether a given point lies within a given polygon
-   Point set registration algorithms: finds the transformation between two point sets to optimally align them.
-   Rotating calipers: determine all antipodal pairs of points and vertices on a convex polygon or convex hull.
-   Shoelace algorithm: determine the area of a polygon whose vertices are described by ordered pairs in the plane
-   Triangulation
    -   Delaunay triangulation
        -   Ruppert's algorithm (also known as Delaunay refinement): create quality Delaunay triangulations
        -   Chew's second algorithm: create quality constrained Delaunay triangulations
    -   Marching triangles: reconstruct two-dimensional surface geometry from an unstructured point cloud
    -   Polygon triangulation algorithms: decompose a polygon into a set of triangles
    -   Voronoi diagrams, geometric dual of Delaunay triangulation
        -   Bowyer–Watson algorithm: create voronoi diagram in any number of dimensions
        -   Fortune's Algorithm: create voronoi diagram
    -   Quasitriangulation

Number theoretic algorithms

-   Binary GCD algorithm: Efficient way of calculating GCD.
-   Booth's multiplication algorithm
-   Chakravala method: a cyclic algorithm to solve indeterminate quadratic equations, including Pell's equation
-   Discrete logarithm:
    -   Baby-step giant-step
    -   Index calculus algorithm
    -   Pollard's rho algorithm for logarithms
    -   Pohlig–Hellman algorithm
-   Euclidean algorithm: computes the greatest common divisor
-   Extended Euclidean algorithm: Also solves the equation _ax_ + _by_ = _c_.
-   Integer factorization: breaking an integer into its prime factors
    -   Congruence of squares
    -   Dixon's algorithm
    -   Fermat's factorization method
    -   General number field sieve
    -   Lenstra elliptic curve factorization
    -   Pollard's _p_ − 1 algorithm
    -   Pollard's rho algorithm
    -   prime factorization algorithm
    -   Quadratic sieve
    -   Shor's algorithm
    -   Special number field sieve
    -   Trial division
-   Multiplication algorithms: fast multiplication of two numbers
    -   Karatsuba algorithm
    -   Schönhage–Strassen algorithm
    -   Toom–Cook multiplication
-   Modular square root: computing square roots modulo a prime number
    -   Tonelli–Shanks algorithm
    -   Cipolla's algorithm
-   Odlyzko–Schönhage algorithm: calculates nontrivial zeroes of the Riemann zeta function
-   Lenstra–Lenstra–Lovász algorithm (also known as LLL algorithm): find a short, nearly orthogonal lattice basis in polynomial time
-   Primality tests: determining whether a given number is prime
    -   AKS primality test
    -   Baillie-PSW primality test
    -   Fermat primality test
    -   Lucas primality test
    -   Miller–Rabin primality test
    -   Sieve of Atkin
    -   Sieve of Eratosthenes
    -   Sieve of Sundaram

Numerical algorithms

Differential equation solving

-   Euler method
-   Backward Euler method
-   Trapezoidal rule (differential equations)
-   Linear multistep methods
-   Runge–Kutta methods
    -   Euler integration
-   Multigrid methods (MG methods), a group of algorithms for solving differential equations using a hierarchy of discretizations
-   Partial differential equation:
    -   Finite difference method
    -   Crank–Nicolson method for diffusion equations
    -   Lax-Wendroff for wave equations
-   Verlet integration (): integrate Newton's equations of motion

Elementary and special functions

-   Computation of π:
    -   Borwein's algorithm: an algorithm to calculate the value of 1/π
    -   Gauss–Legendre algorithm: computes the digits of pi
    -   Chudnovsky algorithm: A fast method for calculating the digits of π
    -   Bailey–Borwein–Plouffe formula: (BBP formula) a spigot algorithm for the computation of the nth binary digit of π
-   Division algorithms: for computing quotient and/or remainder of two numbers
    -   Long division
    -   Restoring division
    -   Non-restoring division
    -   SRT division
    -   Newton–Raphson division: uses Newton's method to find the reciprocal of D, and multiply that reciprocal by N to find the final quotient Q.
    -   Goldschmidt division
-   Hyperbolic and Trigonometric Functions:
    -   BKM algorithm: compute elementary functions using a table of logarithms
    -   CORDIC: compute hyperbolic and trigonometric functions using a table of arctangents
-   Exponentiation:
    -   Addition-chain exponentiation: exponentiation by positive integer powers that requires a minimal number of multiplications
    -   Exponentiating by squaring: an algorithm used for the fast computation of large integer powers of a number
-   Montgomery reduction: an algorithm that allows modular arithmetic to be performed efficiently when the modulus is large
-   Multiplication algorithms: fast multiplication of two numbers
    -   Booth's multiplication algorithm: a multiplication algorithm that multiplies two signed binary numbers in two's complement notation
    -   Fürer's algorithm: an integer multiplication algorithm for very large numbers possessing a very low asymptotic complexity
    -   Karatsuba algorithm: an efficient procedure for multiplying large numbers
    -   Schönhage–Strassen algorithm: an asymptotically fast multiplication algorithm for large integers
    -   Toom–Cook multiplication: (Toom3) a multiplication algorithm for large integers
-   Multiplicative inverse Algorithms: for computing a number's multiplicative inverse (reciprocal).
    -   Newton's method
-   Rounding functions: the classic ways to round numbers
-   Spigot algorithm: A way to compute the value of a mathematical constant without knowing preceding digits
-   Square and Nth root of a number:
    -   Alpha max plus beta min algorithm: an approximation of the square-root of the sum of two squares
    -   Methods of computing square roots
    -   _n_th root algorithm
    -   Shifting nth-root algorithm: digit by digit root extraction
-   Summation:
    -   Binary splitting: a divide and conquer technique which speeds up the numerical evaluation of many types of series with rational terms
    -   Kahan summation algorithm: a more accurate method of summing floating-point numbers
-   Unrestricted algorithm

Geometric

-   Filtered back-projection: efficiently compute the inverse 2-dimensional Radon transform.
-   Level set method (LSM): a numerical technique for tracking interfaces and shapes

Interpolation and extrapolation

-   Birkhoff interpolation: an extension of polynomial interpolation
-   Cubic interpolation
-   Hermite interpolation
-   Lagrange interpolation: interpolation using Lagrange polynomials
-   Linear interpolation: a method of curve fitting using linear polynomials
-   Monotone cubic interpolation: a variant of cubic interpolation that preserves monotonicity of the data set being interpolated.
-   Multivariate interpolation
    -   Bicubic interpolation, a generalization of cubic interpolation to two dimensions
    -   Bilinear interpolation: an extension of linear interpolation for interpolating functions of two variables on a regular grid
    -   Lanczos resampling ("Lanzosh"): a multivariate interpolation method used to compute new values for any digitally sampled data
    -   Nearest-neighbor interpolation
    -   Tricubic interpolation, a generalization of cubic interpolation to three dimensions
-   Pareto interpolation: a method of estimating the median and other properties of a population that follows a Pareto distribution.
-   Polynomial interpolation
    -   Neville's algorithm
-   Spline interpolation: Reduces error with Runge's phenomenon.
    -   De Boor algorithm: B-splines
    -   De Casteljau's algorithm: Bézier curves
-   Trigonometric interpolation

Linear algebra

-   Eigenvalue algorithms
    -   Arnoldi iteration
    -   Inverse iteration
    -   Jacobi method
    -   Lanczos iteration
    -   Power iteration
    -   QR algorithm
    -   Rayleigh quotient iteration
-   Gram–Schmidt process: orthogonalizes a set of vectors
-   Matrix multiplication algorithms
    -   Cannon's algorithm: a distributed algorithm for matrix multiplication especially suitable for computers laid out in an N × N mesh
    -   Coppersmith–Winograd algorithm: square matrix multiplication
    -   Freivalds' algorithm: a randomized algorithm used to verify matrix multiplication
    -   Strassen algorithm: faster matrix multiplication

-   Solving systems of linear equations
    -   Biconjugate gradient method: solves systems of linear equations
    -   Conjugate gradient: an algorithm for the numerical solution of particular systems of linear equations
    -   Gaussian elimination
    -   Gauss–Jordan elimination: solves systems of linear equations
    -   Gauss–Seidel method: solves systems of linear equations iteratively
    -   Levinson recursion: solves equation involving a Toeplitz matrix
    -   Stone's method: also known as the strongly implicit procedure or SIP, is an algorithm for solving a sparse linear system of equations
    -   Successive over-relaxation (SOR): method used to speed up convergence of the Gauss–Seidel method
    -   Tridiagonal matrix algorithm (Thomas algorithm): solves systems of tridiagonal equations
-   Sparse matrix algorithms
    -   Cuthill–McKee algorithm: reduce the bandwidth of a symmetric sparse matrix
    -   Minimum degree algorithm: permute the rows and columns of a symmetric sparse matrix before applying the Cholesky decomposition
    -   Symbolic Cholesky decomposition: Efficient way of storing sparse matrix

Monte Carlo

-   Gibbs sampling: generate a sequence of samples from the joint probability distribution of two or more random variables
-   Hybrid Monte Carlo: generate a sequence of samples using Hamiltonian weighted Markov chain Monte Carlo, from a probability distribution which is difficult to sample directly.
-   Metropolis–Hastings algorithm: used to generate a sequence of samples from the probability distribution of one or more variables
-   Wang and Landau algorithm: an extension of Metropolis–Hastings algorithm sampling

Numerical integration

-   MISER algorithm: Monte Carlo simulation, numerical integration

Root finding

-   Bisection method
-   False position method: approximates roots of a function
-   Newton's method: finds zeros of functions with calculus
-   Halley's method: uses first and second derivatives
-   Secant method: 2-point, 1-sided
-   False position method and Illinois method: 2-point, bracketing
-   Ridder's method: 3-point, exponential scaling
-   Muller's method: 3-point, quadratic interpolation

Optimization algorithms

-   Alpha-beta pruning: search to reduce number of nodes in minimax algorithm
-   Branch and bound
-   Bruss algorithm: see odds algorithm
-   Chain matrix multiplication
-   Combinatorial optimization: optimization problems where the set of feasible solutions is discrete
    -   Greedy randomized adaptive search procedure (GRASP): successive constructions of a greedy randomized solution and subsequent iterative improvements of it through a local search
    -   Hungarian method: a combinatorial optimization algorithm which solves the assignment problem in polynomial time
-   Constraint satisfaction
    -   General algorithms for the constraint satisfaction
        -   AC-3 algorithm
        -   Difference map algorithm
        -   Min conflicts algorithm
    -   Chaff algorithm: an algorithm for solving instances of the boolean satisfiability problem
    -   Davis–Putnam algorithm: check the validity of a first-order logic formula
    -   Davis–Putnam–Logemann–Loveland algorithm (DPLL): an algorithm for deciding the satisfiability of propositional logic formula in conjunctive normal form, i.e. for solving the CNF-SAT problem
    -   Exact cover problem
        -   Algorithm X: a nondeterministic algorithm
        -   Dancing Links: an efficient implementation of Algorithm X
-   Cross-entropy method: a general Monte Carlo approach to combinatorial and continuous multi-extremal optimization and importance sampling
-   Differential evolution
-   Dynamic Programming: problems exhibiting the properties of overlapping subproblems and optimal substructure
-   Ellipsoid method: is an algorithm for solving convex optimization problems
-   Evolutionary computation: optimization inspired by biological mechanisms of evolution
    -   Evolution strategy
    -   Gene expression programming
    -   Genetic algorithms
        -   Fitness proportionate selection - also known as roulette-wheel selection
        -   Stochastic universal sampling
        -   Truncation selection
        -   Tournament selection
    -   Memetic algorithm
    -   Swarm intelligence
        -   Ant colony optimization
        -   Bees algorithm: a search algorithm which mimics the food foraging behavior of swarms of honey bees
        -   Particle swarm
-   golden section search: an algorithm for finding the maximum of a real function
-   Gradient descent
-   Harmony search (HS): a metaheuristic algorithm mimicking the improvisation process of musicians
-   Interior point method
-   Linear programming

    -   Benson's algorithm: an algorithm for solving linear vector optimization problems
    -   Dantzig–Wolfe decomposition: an algorithm for solving linear programming problems with special structure
    -   Delayed column generation
    -   Integer linear programming: solve linear programming problems where some or all the unknowns are restricted to integer values
        -   Branch and cut
        -   Cutting-plane method
    -   Karmarkar's algorithm: The first reasonably efficient algorithm that solves the linear programming problem in polynomial time.
    -   Simplex algorithm: An algorithm for solving linear programming problems

-   Line search
-   Local search: a metaheuristic for solving computationally hard optimization problems
    -   Random-restart hill climbing
    -   Tabu search
-   Minimax used in game programming
-   Nearest neighbor search (NNS): find closest points in a metric space
    -   Best Bin First: find an approximate solution to the Nearest neighbor search problem in very-high-dimensional spaces
-   Newton's method in optimization
-   Nonlinear optimization
    -   BFGS method: A nonlinear optimization algorithm
    -   Gauss–Newton algorithm: An algorithm for solving nonlinear least squares problems.
    -   Levenberg–Marquardt algorithm: An algorithm for solving nonlinear least squares problems.
    -   Nelder–Mead method (downhill simplex method): A nonlinear optimization algorithm
-   Odds algorithm (Bruss algorithm) : Finds the optimal strategy to predict a last specific event in a random sequence event
-   Simulated annealing
-   Stochastic tunneling
-   Subset sum algorithm


Computational science

Astronomy

-   Doomsday algorithm: day of the week
-   Zeller's congruence is an algorithm to calculate the day of the week for any Julian or Gregorian calendar date
-   various Easter algorithms are used to calculate the day of Easter

Bioinformatics

-   Basic Local Alignment Search Tool also known as BLAST: an algorithm for comparing primary biological sequence information
-   Kabsch algorithm: calculate the optimal alignment of two sets of points in order to compute the root mean squared deviation between two protein structures.
-   Velvet: a set of algorithms manipulating de Bruijn graphs for genomic sequence assembly
-   Sorting by signed reversals: an algorithm for understanding genomic evolution.
-   Maximum parsimony (phylogenetics): an algorithm for finding the simplest phylogenetic tree to explain a given character matrix.
-   UPGMA: a distance-based phylogenetic tree construction algorithm.

Geoscience

-   Vincenty's formulae: a fast algorithm to calculate the distance between two latitude/longitude points on an ellipsoid
-   Geohash: a public domain algorithm that encodes a decimal latitude/longitude pair as a hash string

Linguistics

-   Lesk algorithm: word sense disambiguation
-   Stemming algorithm: a method of reducing words to their stem, base, or root form
-   Sukhotin's algorithm: a statistical classification algorithm for classifying characters in a text as vowels or consonants

Medicine

-   ESC algorithm for the diagnosis of heart failure
-   Manning Criteria for irritable bowel syndrome
-   Pulmonary embolism diagnostic algorithms
-   Texas Medication Algorithm Project

Physics

-   Constraint algorithm: a class of algorithms for satisfying constraints for bodies that obey Newton's equations of motion
-   Demon algorithm: a Monte Carlo method for efficiently sampling members of a microcanonical ensemble with a given energy
-   Featherstone's algorithm: compute the effects of forces applied to a structure of joints and links
-   Ground state approximation
    -   Variational method
        -   Ritz method
-   N-body problems
    -   Barnes–Hut simulation: Solves the n-body problem in an approximate way that has the order instead of as in a direct-sum simulation.
    -   Fast multipole method (FMM): speeds up the calculation of long-ranged forces
-   Rainflow-counting algorithm: Reduces a complex stress history to a count of elementary stress-reversals for use in fatigue analysis
-   Sweep and prune: a broad phase algorithm used during collision detection to limit the number of pairs of solids that need to be checked for collision
-   VEGAS algorithm: a method for reducing error in Monte Carlo simulations

Statistics

-   Algorithms for calculating variance: avoiding instability and numerical overflow
-   Approximate counting algorithm: Allows counting large number of events in a small register
-   Bayesian statistics
    -   Nested sampling algorithm: a computational approach to the problem of comparing models in Bayesian statistics
-   Clustering Algorithms
    -   Average-linkage clustering: a simple agglomerative clustering algorithm
    -   Canopy clustering algorithm: an unsupervised pre-clustering algorithm related to the K-means algorithm
    -   Complete-linkage clustering: a simple agglomerative clustering algorithm
    -   DBSCAN: a density based clustering algorithm
    -   Expectation-maximization algorithm
    -   Fuzzy clustering: a class of clustering algorithms where each point has a degree of belonging to clusters
        -   Fuzzy c-means
        -   FLAME clustering (Fuzzy clustering by Local Approximation of MEmberships): define clusters in the dense parts of a dataset and perform cluster assignment solely based on the neighborhood relationships among objects
    -   KHOPCA clustering algorithm: a local clustering algorithm, which produces hierarchical multi-hop clusters in static and mobile environments.
    -   k-means clustering: cluster objects based on attributes into partitions
    -   k-means++: a variation of this, using modified random seeds
    -   k-medoids: similar to k-means, but chooses datapoints or medoids as centers
    -   Linde–Buzo–Gray algorithm: a vector quantization algorithm to derive a good codebook
    -   Lloyd's algorithm (Voronoi iteration or relaxation): group data points into a given number of categories, a popular algorithm for k-means clustering
    -   OPTICS: a density based clustering algorithm with a visual evaluation method
    -   Single-linkage clustering: a simple agglomerative clustering algorithm
    -   SUBCLU: a subspace clustering algorithm
    -   Ward's method : an agglomerative clustering algorithm, extended to more general Lance–Williams algorithms
    -   WACA clustering algorithm: a local clustering algorithm with potentially multi-hop structures; for dynamic networks
-   Estimation Theory
    -   Expectation-maximization algorithm A class of related algorithms for finding maximum likelihood estimates of parameters in probabilistic models
        -   Ordered subset expectation maximization (OSEM): used in medical imaging for positron emission tomography, single photon emission computed tomography and X-ray computed tomography.
    -   Odds algorithm (Bruss algorithm) Optimal online search for distinguished value in sequential random input
    -   Kalman filter: estimate the state of a linear dynamic system from a series of noisy measurements
-   False nearest neighbor algorithm (FNN) estimates fractal dimension
-   Hidden Markov model
    -   Baum–Welch algorithm: compute maximum likelihood estimates and posterior mode estimates for the parameters of a hidden markov model
    -   Forward-backward algorithm a dynamic programming algorithm for computing the probability of a particular observation sequence
    -   Viterbi algorithm: find the most likely sequence of hidden states in a hidden markov model
-   Partial least squares regression: finds a linear model describing some predicted variables in terms of other observable variables
-   Queuing theory
    -   Buzen's algorithm: an algorithm for calculating the normalization constant G(K) in the Gordon–Newell theorem
-   RANSAC (an abbreviation for "RANdom SAmple Consensus"): an iterative method to estimate parameters of a mathematical model from a set of observed data which contains outliers
-   Scoring algorithm: is a form of Newton's method used to solve maximum likelihood equations numerically
-   Yamartino method: calculate an approximation to the standard deviation σθ of wind direction θ during a single pass through the incoming data
-   Ziggurat algorithm: generate random numbers from a non-uniform distribution


Computer science

Computer architecture

-   Tomasulo algorithm: allows sequential instructions that would normally be stalled due to certain dependencies to execute non-sequentially

Computer graphics

-   Clipping
    -   Line clipping
        -   Cohen–Sutherland
        -   Cyrus–Beck
        -   Fast-clipping
        -   Liang–Barsky
        -   Nicholl–Lee–Nicholl
    -   Polygon clipping
        -   Sutherland–Hodgman
        -   Vatti
        -   Weiler–Atherton
-   Contour lines and Isosurfaces
    -   Marching cubes: extract a polygonal mesh of an isosurface from a three-dimensional scalar field (sometimes called voxels)
    -   Marching squares: generate contour lines for a two-dimensional scalar field
    -   Marching tetrahedrons: an alternative to Marching cubes
-   Discrete Green's Theorem: is an algorithm for computing double integral over a generalized rectangular domain in constant time. It is a natural extension to the summed area table algorithm
-   Flood fill: fills a connected region of a multi-dimensional array with a specified symbol
-   Global illumination algorithms: Considers direct illumination and reflection from other objects.
    -   Ambient occlusion
    -   Beam tracing
    -   Cone tracing
    -   Image-based lighting
    -   Metropolis light transport
    -   Path tracing
    -   Photon mapping
    -   Radiosity
    -   Ray tracing
-   Hidden surface removal or Visual surface determination
    -   Newell's algorithm: eliminate polygon cycles in the depth sorting required in hidden surface removal
    -   Painter's algorithm: detects visible parts of a 3-dimensional scenery
    -   Scanline rendering: constructs an image by moving an imaginary line over the image
    -   Warnock algorithm
-   Line Drawing: graphical algorithm for approximating a line segment on discrete graphical media.
    -   Bresenham's line algorithm: plots points of a 2-dimensional array to form a straight line between 2 specified points (uses decision variables)
    -   DDA line algorithm: plots points of a 2-dimensional array to form a straight line between 2 specified points (uses floating-point math)
    -   Xiaolin Wu's line algorithm: algorithm for line antialiasing.
-   Midpoint circle algorithm: an algorithm used to determine the points needed for drawing a circle
-   Ramer–Douglas–Peucker algorithm: Given a 'curve' composed of line segments to find a curve not too dissimilar but that has fewer points
-   Shading
    -   Gouraud shading: an algorithm to simulate the differing effects of light and colour across the surface of an object in 3D computer graphics
    -   Phong shading: an algorithm to interpolate surface normal-vectors for surface shading in 3D computer graphics
-   Slerp (spherical linear interpolation): quaternion interpolation for the purpose of animating 3D rotation
-   Summed area table (also known as an integral image): an algorithm for computing the sum of values in a rectangular subset of a grid in constant time

Cryptography

-   Asymmetric (public key) encryption:
    -   ElGamal
    -   Elliptic curve cryptography
    -   MAE1
    -   NTRUEncrypt
    -   RSA
-   Digital signatures (asymmetric authentication):
    -   DSA, and its variants:
        -   ECDSA and Deterministic ECDSA
        -   EdDSA (Ed25519)
    -   RSA
-   Cryptographic hash functions (see also the section on message authentication codes):
    -   BLAKE
    -   MD5 – Note that there is now a method of generating collisions for MD5
    -   RIPEMD-160
    -   SHA-1 – Note that there is now a method of generating collisions for SHA-1
    -   SHA-2 (SHA-224, SHA-256, SHA-384, SHA-512)
    -   SHA-3 (SHA3-224, SHA3-256, SHA3-384, SHA3-512, SHAKE128, SHAKE256)
    -   Tiger (TTH), usually used in Tiger tree hashes
    -   WHIRLPOOL
-   Cryptographically secure pseudo-random number generators
    -   Blum Blum Shub - based on the hardness of factorization
    -   Fortuna, intended as an improvement on Yarrow algorithm
    -   Linear-feedback shift register (note: many LFSR-based algorithms are weak or have been broken)
    -   Yarrow algorithm
-   Key exchange
    -   Diffie–Hellman key exchange
    -   Elliptic-curve Diffie-Hellman (ECDH)
-   Key derivation functions, often used for password hashing and key stretching
    -   bcrypt
    -   PBKDF2
    -   scrypt
    -   Argon2
-   Message authentication codes (symmetric authentication algorithms, which take a key as a parameter):
    -   HMAC: keyed-hash message authentication
    -   Poly1305
    -   SipHash
-   Secret sharing, Secret Splitting, Key Splitting, M of N algorithms
    -   Blakey's Scheme
    -   Shamir's Scheme
-   Symmetric (secret key) encryption:
    -   Advanced Encryption Standard (AES), winner of NIST competition, also known as Rijndael
    -   Blowfish
    -   Twofish
    -   Threefish
    -   Data Encryption Standard (DES), sometimes DE Algorithm, winner of NBS selection competition, replaced by AES for most purposes
    -   IDEA
    -   RC4 (cipher)
    -   Tiny Encryption Algorithm (TEA)
    -   Salsa20, and its updated variant ChaCha20
-   Post-quantum cryptography
-   Proof-of-work algorithms

Digital logic

-   Boolean minimization
    -   Quine–McCluskey algorithm: Also called as Q-M algorithm, programmable method for simplifying the boolean equations.
    -   Petrick's method: Another algorithm for boolean simplification.
    -   Espresso heuristic logic minimizer: Fast algorithm for boolean function minimization.

Machine learning and statistical classification

-   ALOPEX: a correlation-based machine-learning algorithm
-   Association rule learning: discover interesting relations between variables, used in data mining
    -   Apriori algorithm
    -   Eclat algorithm
    -   FP-growth algorithm
    -   One-attribute rule
    -   Zero-attribute rule
-   Boosting (meta-algorithm): Use many weak learners to boost effectiveness
    -   AdaBoost: adaptive boosting
    -   BrownBoost:a boosting algorithm that may be robust to noisy datasets
    -   LogitBoost: logistic regression boosting
    -   LPBoost: linear programming boosting
-   Bootstrap aggregating (bagging): technique to improve stability and classification accuracy
-   Computer Vision
    -   Grabcut based on Graph cuts
-   Decision Trees
    -   C4.5 algorithm: an extension to ID3
    -   ID3 algorithm (Iterative Dichotomiser 3): Use heuristic to generate small decision trees
-   Clustering: Class of unsupervised learning algorithms for grouping and bucketing related input vector.
    -   k-nearest neighbors (k-NN): a method for classifying objects based on closest training examples in the feature space
-   Linde–Buzo–Gray algorithm: a vector quantization algorithm used to derive a good codebook
-   Locality-sensitive hashing (LSH): a method of performing probabilistic dimension reduction of high-dimensional data
-   Neural Network
    -   Backpropagation: A supervised learning method which requires a teacher that knows, or can calculate, the desired output for any given input
    -   Hopfield net: a Recurrent neural network in which all connections are symmetric
    -   Perceptron: the simplest kind of feedforward neural network: a linear classifier.
    -   Pulse-coupled neural networks (PCNN): Neural models proposed by modeling a cat's visual cortex and developed for high-performance biomimetic image processing.
    -   Radial basis function network: an artificial neural network that uses radial basis functions as activation functions
    -   Self-organizing map: an unsupervised network that produces a low-dimensional representation of the input space of the training samples
-   Random forest: classify using many decision trees
-   Reinforcement Learning:
    -   Q-learning: learn an action-value function that gives the expected utility of taking a given action in a given state and following a fixed policy thereafter
    -   State-Action-Reward-State-Action (SARSA): learn a Markov decision process policy
    -   Temporal difference learning
-   Relevance Vector Machine (RVM): similar to SVM, but provides probabilistic classification
-   Supervised Learning: Learning by examples (labelled data-set split into training-set and test-set)
-   Support Vector Machines (SVM): a set of methods which divide multidimensional data by finding a dividing hyperplane with the maximum margin between the two sets
    -   Structured SVM: allows training of a classifier for general structured output labels.
-   Winnow algorithm: related to the perceptron, but uses a multiplicative weight-update scheme

Programming language theory

-   C3 linearization: an algorithm used primarily to obtain a consistent linearization of a multiple inheritance hierarchy in object-oriented programming
-   Chaitin's algorithm: a bottom-up, graph coloring register allocation algorithm that uses cost/degree as its spill metric
-   Hindley–Milner type inference algorithm
-   Rete algorithm: an efficient pattern matching algorithm for implementing production rule systems
-   Sethi-Ullman algorithm: generate optimal code for arithmetic expressions

Parsing

-   CYK algorithm: An O(n³) algorithm for parsing context-free grammars in Chomsky normal form
-   Earley parser: Another O(n³) algorithm for parsing any context-free grammar
-   GLR parser:An algorithm for parsing any context-free grammar by Masaru Tomita. It is tuned for deterministic grammars, on which it performs almost linear time and O(n³) in worst case.
-   Inside-outside algorithm: An O(n³) algorithm for re-estimating production probabilities in probabilistic context-free grammars
-   LL parser: A relatively simple linear time parsing algorithm for a limited class of context-free grammars
-   LR parser: A more complex linear time parsing algorithm for a larger class of context-free grammars. Variants:
    -   Canonical LR parser
    -   LALR (Look-ahead LR) parser
    -   Operator-precedence parser
    -   SLR (Simple LR) parser
    -   Simple precedence parser
-   Packrat parser: A linear time parsing algorithm supporting some context-free grammars and parsing expression grammars
-   Recursive descent parser: A top-down parser suitable for LL(_k_) grammars
-   Shunting yard algorithm: convert an infix-notation math expression to postfix
-   Pratt parser
-   Lexical analysis

Quantum algorithms

-   Deutsch-Jozsa algorithm: criterion of balance for Boolean function
-   Grover's algorithm: provides quadratic speedup for many search problems
-   Shor's algorithm: provides exponential speedup (relative to currently known non-quantum algorithms) for factoring a number
-   Simon's algorithm: provides a provably exponential speedup (relative to any non-quantum algorithm) for a black-box problem

Theory of computation and automata

-   Hopcroft's algorithm, Moore's algorithm, and Brzozowski's algorithm: algorithms for minimizing the number of states in a deterministic finite automaton
-   Powerset construction: Algorithm to convert nondeterministic automaton to deterministic automaton.
-   Tarski–Kuratowski algorithm: a non-deterministic algorithm which provides an upper bound for the complexity of formulas in the arithmetical hierarchy and analytical hierarchy


Information theory and signal processing

Coding theory

Error detection and correction

-   BCH Codes
    -   Berlekamp–Massey algorithm
    -   Peterson–Gorenstein–Zierler algorithm
    -   Reed–Solomon error correction
-   BCJR algorithm: decoding of error correcting codes defined on trellises (principally convolutional codes)
-   Forward error correction
-   Gray code
-   Hamming codes
    -   Hamming(7,4): a Hamming code that encodes 4 bits of data into 7 bits by adding 3 parity bits
    -   Hamming distance: sum number of positions which are different
    -   Hamming weight (population count): find the number of 1 bits in a binary word
-   Redundancy checks
    -   Adler-32
    -   Cyclic redundancy check
    -   Damm algorithm
    -   Fletcher's checksum
    -   Longitudinal redundancy check (LRC)
    -   Luhn algorithm: a method of validating identification numbers
    -   Luhn mod N algorithm: extension of Luhn to non-numeric characters
    -   Parity: simple/fast error detection technique
    -   Verhoeff algorithm

Lossless compression algorithms

-   Burrows–Wheeler transform: preprocessing useful for improving lossless compression
-   Context tree weighting
-   Delta encoding: aid to compression of data in which sequential data occurs frequently
-   Dynamic Markov compression: Compression using predictive arithmetic coding
-   Dictionary coders
    -   Byte pair encoding (BPE)
    -   DEFLATE
    -   Lempel–Ziv
        -   LZ77 and LZ78
        -   Lempel–Ziv Jeff Bonwick (LZJB)
        -   Lempel–Ziv–Markov chain algorithm (LZMA)
        -   Lempel–Ziv–Oberhumer (LZO): speed oriented
        -   Lempel–Ziv–Stac (LZS)
        -   Lempel–Ziv–Storer–Szymanski (LZSS)
        -   Lempel–Ziv–Welch (LZW)
        -   LZWL: syllable-based variant
        -   LZX
        -   Lempel–Ziv Ross Williams (LZRW)
-   Entropy encoding: coding scheme that assigns codes to symbols so as to match code lengths with the probabilities of the symbols
    -   Arithmetic coding: advanced entropy coding
        -   Range encoding: same as arithmetic coding, but looked at in a slightly different way
    -   Huffman coding: simple lossless compression taking advantage of relative character frequencies
        -   Adaptive Huffman coding: adaptive coding technique based on Huffman coding
        -   Package-merge algorithm: Optimizes Huffman coding subject to a length restriction on code strings
    -   Shannon–Fano coding
    -   Shannon–Fano–Elias coding: precursor to arithmetic encoding[1]
-   Entropy coding with known entropy characteristics
    -   Golomb coding: form of entropy coding that is optimal for alphabets following geometric distributions
    -   Rice coding: form of entropy coding that is optimal for alphabets following geometric distributions
    -   Truncated binary encoding
    -   Unary coding: code that represents a number n with n ones followed by a zero
    -   Universal codes: encodes positive integers into binary code words
        -   Elias delta, gamma, and omega coding
        -   Exponential-Golomb coding
        -   Fibonacci coding
        -   Levenshtein coding
-   Fast Efficient & Lossless Image Compression System (FELICS): a lossless image compression algorithm
-   Incremental encoding: delta encoding applied to sequences of strings
-   Prediction by partial matching (PPM): an adaptive statistical data compression technique based on context modeling and prediction
-   Run-length encoding: lossless data compression taking advantage of strings of repeated characters
-   SEQUITUR algorithm: lossless compression by incremental grammar inference on a string

Lossy compression algorithms

-   3Dc: a lossy data compression algorithm for normal maps
-   Audio and Speech compression
    -   A-law algorithm: standard companding algorithm
    -   Code-excited linear prediction (CELP): low bit-rate speech compression
    -   Linear predictive coding (LPC): lossy compression by representing the spectral envelope of a digital signal of speech in compressed form
    -   Mu-law algorithm: standard analog signal compression or companding algorithm
    -   Warped Linear Predictive Coding (WLPC)
-   Image Compression
    -   Block Truncation Coding (BTC): a type of lossy image compression technique for greyscale images
    -   Embedded Zerotree Wavelet (EZW)
    -   Fast Cosine Transform algorithms (FCT algorithms): compute Discrete Cosine Transform (DCT) efficiently
    -   Fractal compression: method used to compress images using fractals
    -   Set Partitioning in Hierarchical Trees (SPIHT)
    -   Wavelet compression: form of data compression well suited for image compression (sometimes also video compression and audio compression)
-   Transform coding: type of data compression for "natural" data like audio signals or photographic images
-   Video compression
-   Vector quantization: technique often used in lossy data compression

Digital signal processing

-   Adaptive-additive algorithm (AA algorithm): find the spatial frequency phase of an observed wave source
-   Discrete Fourier transform: determines the frequencies contained in a (segment of a) signal
    -   Bluestein's FFT algorithm
    -   Bruun's FFT algorithm
    -   Cooley–Tukey FFT algorithm
    -   Fast Fourier transform
    -   Prime-factor FFT algorithm
    -   Rader's FFT algorithm
-   Fast folding algorithm: an efficient algorithm for the detection of approximately periodic events within time series data
-   Gerchberg–Saxton algorithm: Phase retrieval algorithm for optical planes
-   Goertzel algorithm: identify a particular frequency component in a signal. Can be used for DTMF digit decoding.
-   Karplus-Strong string synthesis: physical modelling synthesis to simulate the sound of a hammered or plucked string or some types of percussion

Image processing

-   Contrast Enhancement
    -   Histogram equalization: use histogram to improve image contrast
    -   Adaptive histogram equalization: histogram equalization which adapts to local changes in contrast
-   Connected-component labeling: find and label disjoint regions
-   Dithering and half-toning
    -   Error diffusion
    -   Floyd–Steinberg dithering
    -   Ordered dithering
    -   Riemersma dithering
-   Elser difference-map algorithm: a search algorithm for general constraint satisfaction problems. Originally used for X-Ray diffraction microscopy
-   Feature detection
    -   Canny edge detector: detect a wide range of edges in images
    -   Generalised Hough transform
    -   Hough transform
    -   Marr–Hildreth algorithm: an early edge detection algorithm
    -   SIFT (Scale-invariant feature transform): is an algorithm to detect and describe local features in images.
    -   SURF (Speeded Up Robust Features): is a robust local feature detector, first presented by Herbert Bay et al. in 2006, that can be used in computer vision tasks like object recognition or 3D reconstruction. It is partly inspired by the SIFT descriptor. The standard version of SURF is several times faster than SIFT and claimed by its authors to be more robust against different image transformations than SIFT.[2][3]
-   Richardson–Lucy deconvolution: image de-blurring algorithm
-   Blind deconvolution: image de-blurring algorithm when point spread function is unknown.
-   Median filtering
-   Seam carving: content-aware image resizing algorithm
-   Segmentation: partition a digital image into two or more regions
    -   GrowCut algorithm: an interactive segmentation algorithm
    -   Random walker algorithm
    -   Region growing
    -   Watershed transformation: a class of algorithms based on the watershed analogy


Software engineering

-   Cache algorithms
-   CHS conversion: converting between disk addressing systems
-   Double dabble: Convert binary numbers to BCD
-   Hash Function: convert a large, possibly variable-sized amount of data into a small datum, usually a single integer that may serve as an index into an array
    -   Fowler–Noll–Vo hash function: fast with low collision rate
    -   Pearson hashing: computes 8 bit value only, optimized for 8 bit computers
    -   Zobrist hashing: used in the implementation of transposition tables
-   Unicode Collation Algorithm
-   Xor swap algorithm: swaps the values of two variables without using a buffer


Database algorithms

-   Algorithms for Recovery and Isolation Exploiting Semantics (ARIES): transaction recovery
-   Join algorithms
    -   Block nested loop
    -   Hash join
    -   Nested loop join
    -   Sort-Merge Join


Distributed systems algorithms

-   Bully algorithm: a method for dynamically selecting a coordinator
-   Byzantine fault tolerance: good fault tolerance.
-   Clock synchronization
    -   Berkeley algorithm
    -   Cristian's algorithm
    -   Intersection algorithm
    -   Marzullo's algorithm
-   Detection of Process Termination
    -   Dijkstra-Scholten algorithm
    -   Huang's algorithm
-   Lamport ordering: a partial ordering of events based on the _happened-before_ relation
-   Mutual exclusion
    -   Lamport's Distributed Mutual Exclusion Algorithm
    -   Naimi-Trehel's log(n) Algorithm
    -   Maekawa's Algorithm
    -   Raymond's Algorithm
    -   Ricart-Agrawala Algorithm
-   Paxos algorithm: a family of protocols for solving consensus in a network of unreliable processors
-   Snapshot algorithm: record a consistent global state for an asynchronous system
    -   Chandy-Lamport algorithm
-   Vector clocks: generate a partial ordering of events in a distributed system and detect causality violations

Memory allocation and deallocation algorithms

-   Buddy memory allocation: Algorithm to allocate memory such that fragmentation is less.
-   Garbage collectors
    -   Cheney's algorithm: An improvement on the Semi-space collector
    -   Generational garbage collector: Fast garbage collectors that segregate memory by age
    -   Mark-compact algorithm: a combination of the mark-sweep algorithm and Cheney's copying algorithm
    -   Mark and sweep
    -   Semi-space collector: An early copying collector
-   Reference counting


Networking

-   Karn's algorithm: addresses the problem of getting accurate estimates of the round-trip time for messages when using TCP
-   Luleå algorithm: a technique for storing and searching internet routing tables efficiently
-   Network congestion
    -   Exponential backoff
    -   Nagle's algorithm: improve the efficiency of TCP/IP networks by coalescing packets
    -   Truncated binary exponential backoff


Operating systems algorithms

-   Banker's algorithm: Algorithm used for deadlock avoidance.
-   Page replacement algorithms: Selecting the victim page under low memory conditions.
    -   Adaptive replacement cache: better performance than LRU
    -   Clock with Adaptive Replacement (CAR): is a page replacement algorithm that has performance comparable to Adaptive replacement cache

Process synchronization

-   Dekker's algorithm
-   Lamport's Bakery algorithm
-   Peterson's algorithm

Scheduling

-   Earliest deadline first scheduling
-   Fair-share scheduling
-   Least slack time scheduling
-   List scheduling
-   Multi level feedback queue
-   Rate-monotonic scheduling
-   Round-robin scheduling
-   Shortest job next
-   Shortest remaining time
-   Top-nodes algorithm: resource calendar management

I/O scheduling

Disk scheduling

-   Elevator algorithm: Disk scheduling algorithm that works like an elevator.
-   Shortest seek first: Disk scheduling algorithm to reduce seek time.


See also

-   List of data structures
-   List of machine learning algorithms
-   List of pathfinding algorithms
-   List of algorithm general topics
-   List of terms relating to algorithms and data structures
-   Heuristic


References

* Algorithms Optimization_algorithms_and_methods

[1] 1

[2] 2

[3]