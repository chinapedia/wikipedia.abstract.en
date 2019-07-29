In computational complexity theory, the complexity class ♯P (pronounced "number P" or, sometimes "sharp P" or "hash P") is the set of the counting problems associated with the decision problems in the set NP. More formally, ♯P is the class of function problems of the form "compute _f_(_x_)", where _f_ is the number of accepting paths of a nondeterministic Turing machine running in polynomial time. Unlike most well-known complexity classes, it is not a class of decision problems but a class of function problems.


Relation to decision problems

An NP decision problem is often of the form "Are there any solutions that satisfy certain constraints?" For example:

-   Are there any subsets of a list of integers that add up to zero? (subset sum problem)
-   Are there any Hamiltonian cycles in a given graph with cost less than 100? (traveling salesman problem)
-   Are there any variable assignments that satisfy a given CNF (conjunctive normal form) formula? (Boolean satisfiability problem or SAT)

The corresponding ♯P function problems ask "how many" rather than "are there any". For example:

-   How many subsets of a list of integers add up to zero?
-   How many Hamiltonian cycles in a given graph have cost less than 100?
-   How many variable assignments satisfy a given CNF formula?


How hard is that?

Clearly, a ♯P problem must be at least as hard as the corresponding NP problem. If it's easy to count answers, then it must be easy to tell whether there are any answers—just count them and see whether the count is greater than zero.

One consequence of Toda's theorem is that a polynomial-time machine with a ♯P oracle (P^(♯P)) can solve all problems in PH, the entire polynomial hierarchy. In fact, the polynomial-time machine only needs to make one ♯P query to solve any problem in PH. This is an indication of the extreme difficulty of solving ♯P-complete problems exactly.

Surprisingly, some ♯P problems that are believed to be difficult correspond to easy (for example linear-time) P problems. For more information on this, see ♯P-complete.

The closest decision problem class to ♯P is PP, which asks whether a majority (more than half) of the computation paths accept. This finds the most significant bit in the ♯P problem answer. The decision problem class ⊕P (pronounced "Parity-P") instead asks for the least significant bit of the ♯P answer.


History

The complexity class ♯P was first defined by Leslie Valiant in a 1979 article on the computation of the permanent, in which he proved that permanent is ♯P-complete.[1]

Larry Stockmeyer has proved that for every ♯P problem _P_ there exists a randomized algorithm using an oracle for SAT, which given an instance _a_ of _P_ and _ε_ > 0 returns with high probability a number _x_ such that (1 − ϵ)P(a) ≤ x ≤ (1 + ϵ)P(a).[2] The runtime of the algorithm is polynomial in _a_ and 1/_ε_. The algorithm is based on the leftover hash lemma.


See also

-   Quantum computing


References


External links

-

Category:Complexity classes

[1]

[2]