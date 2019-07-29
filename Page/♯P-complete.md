The ♯P-COMPLETE problems (pronounced "sharp P complete" or "number P complete") form a complexity class in computational complexity theory. The problems in this complexity class are defined by having the following two properties:

-   The problem is in ♯P, the class of problems that can be defined as counting the number of accepting paths of a polynomial-time non-deterministic Turing machine.
-   The problem is ♯P-hard, meaning that every other problem in ♯P has a Turing reduction or polynomial-time counting reduction to it. A counting reduction is a pair of polynomial-time transformations from inputs of the other problem to inputs of the given problem and from outputs of the given problem to outputs of the other problem, allowing the other problem to be solved using any subroutine for the given problem. A Turing reduction is an algorithm for the other problem that makes a polynomial number of calls to a subroutine for the given problem and, outside of those calls, uses polynomial time. In some cases parsimonious reductions, a more specific type of reduction that preserves the exact number of solutions, are used.

A polynomial-time algorithm for solving a ♯P-complete problem, if it existed, would solve the P versus NP problem by implying that P and NP are equal. No such algorithm is known, nor is a proof known that such an algorithm does not exist.


Examples

Examples of ♯P-complete problems include:

-   How many different variable assignments will satisfy a given general boolean formula? (♯SAT)
-   How many different variable assignments will satisfy a given DNF formula?
-   How many different variable assignments will satisfy a given 2-satisfiability problem?
-   How many perfect matchings are there for a given bipartite graph?
-   What is the value of the permanent of a given matrix whose entries are 0 or 1? (See Sharp-P-completeness of 01-permanent.)
-   How many graph colorings using _k_ colors are there for a particular graph _G_?
-   How many different linear extensions are there for a given partially ordered set, or, equivalently, how many different topological orderings are there for a given directed acyclic graph?[1]


Easy problems with hard counting versions

Some ♯P-complete problems correspond to easy (polynomial time) problems. Determining the satisfiability of a boolean formula in DNF is easy: such a formula is satisfiable if and only if it contains a satisfiable conjunction (one that does not contain a variable and its negation), whereas counting the number of satisfying assignments is ♯P-complete. Furthermore, deciding 2-satisfiability is easy compared to counting the number of satisfying assignments. Topologically sorting is easy in contrast to counting the number of topological sortings. A single perfect matching can be found in polynomial time, but counting all perfect matchings is ♯P-complete. The perfect matching counting problem was the first counting problem corresponding to an easy P problem shown to be ♯P-complete, in a 1979 paper by Leslie Valiant which also defined the class ♯P and the ♯P-complete problems for the first time.[2]


Approximation

There are probabilistic algorithms that return good approximations to some ♯P-complete problems with high probability. This is one of the demonstrations of the power of probabilistic algorithms.

Many ♯P-complete problems have a fully polynomial-time randomized approximation scheme, or "FPRAS," which, informally, will produce with high probability an approximation to an arbitrary degree of accuracy, in time that is polynomial with respect to both the size of the problem and the degree of accuracy required. Jerrum, Valiant, and Vazirani showed that every ♯P-complete problem either has an FPRAS, or is essentially impossible to approximate; if there is any polynomial-time algorithm which consistently produces an approximation of a ♯P-complete problem which is within a polynomial ratio in the size of the input of the exact answer, then that algorithm can be used to construct an FPRAS.[3]


References


Further reading

-

Category:Complexity classes

[1] .

[2]

[3]