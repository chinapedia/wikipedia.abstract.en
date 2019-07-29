In complexity theory, the class NC (for "Nick's Class") is the set of decision problems decidable in polylogarithmic time on a parallel computer with a polynomial number of processors. In other words, a problem is in NC if there exist constants _c_ and _k_ such that it can be solved in time using parallel processors. Stephen Cook coined the name "Nick's class" after Nick Pippenger, who had done extensive research on circuits with polylogarithmic depth and polynomial size.[1]

Just as the class P can be thought of as the tractable problems (Cobham's thesis), so NC can be thought of as the problems that can be efficiently solved on a parallel computer.[2] NC is a subset of P because polylogarithmic parallel computations can be simulated by polynomial-time sequential ones. It is unknown whether NC = P, but most researchers suspect this to be false, meaning that there are probably some tractable problems that are "inherently sequential" and cannot significantly be sped up by using parallelism. Just as the class NP-COMPLETE can be thought of as "probably intractable", so the class P-COMPLETE, when using NC reductions, can be thought of as "probably not parallelizable" or "probably inherently sequential".

The parallel computer in the definition can be assumed to be a _parallel, random-access machine_ (PRAM). That is a parallel computer with a central pool of memory, and any processor can access any bit of memory in constant time. The definition of NC is not affected by the choice of how the PRAM handles simultaneous access to a single bit by more than one processor. It can be CRCW, CREW, or EREW. See PRAM for descriptions of those models.

Equivalently, NC can be defined as those decision problems decidable by a uniform Boolean circuit (which can be calculated from the length of the input, for NC, we suppose we can compute the Boolean circuit of size n in logarithmic space in n) with polylogarithmic depth and a polynomial number of gates.

RNC is a class extending NC with access to randomness.


Problems in NC

As with P, by a slight abuse of language, one might classify function problems and search problems as being in NC. NC is known to include many problems, including

-   Integer addition, multiplication and division;
-   Matrix multiplication, determinant, inverse, rank;
-   Polynomial GCD, by a reduction to linear algebra using Sylvester matrix
-   Finding a maximal matching.

Often algorithms for those problems had to be separately invented and could not be naïvely adapted from well-known algorithms – Gaussian elimination and Euclidean algorithm rely on operations performed in sequence. One might contrast ripple carry adder with a carry-lookahead adder.


The NC hierarchy

NC^(_i_) is the class of decision problems decidable by uniform boolean circuits with a polynomial number of gates of at most two inputs and depth , or the class of decision problems solvable in time _O_(log^(_i_) _n_) on a parallel computer with a polynomial number of processors. Clearly, we have

NC¹ ⊆ NC² ⊆ ⋯ ⊆ NC^(_i_) ⊆ ⋯NC

which forms the NC-hierarchy.

We can relate the NC classes to the space classes L and NL[3] and AC.[4]

NC¹ ⊆ L ⊆ NL ⊆ AC¹ ⊆ NC² ⊆ P.

The NC classes are related to the AC classes, which are defined similarly, but with gates having unbounded fan-in. For each _i_, we have[5][6]

NC^(_i_) ⊆ AC^(_i_) ⊆ NC^(_i_ + 1).

As an immediate consequence of this, we have that NC = AC.[7] It is known that both inclusions are strict for _i_ = 0.[8]

Similarly, we have that NC is equivalent to the problems solvable on an alternating Turing machine restricted to at most two options at each step with _O_(log _n_) space and (log n)^(O(1)) alternations.[9]

Open problem: Is NC proper?

One major open question in complexity theory is whether or not every containment in the NC hierarchy is proper. It was observed by Papadimitriou that, if NC^(_i_) = NC^(_i_+1) for some _i_, then NC^(_i_) = NC^(_j_) for all _j_ ≥ _i_, and as a result, NC^(_i_) = NC. This observation is known as NC-hierarchy collapse because even a single equality in the chain of containments

NC¹ ⊆ NC² ⊆ ⋯
implies that the entire NC hierarchy "collapses" down to some level _i_. Thus, there are 2 possibilities:

1.  NC¹ ⊂ ⋯ ⊂ NC^(i) ⊂ ⋯ ⊂ NC^(i + j) ⊂ ⋯NC
2.  NC¹ ⊂ ⋯ ⊂ NC^(i) = ⋯ = NC^(i + j) = ⋯NC

It is widely believed that (1) is the case, although no proof as to the truth of either statement has yet been discovered.


Barrington's theorem

A BRANCHING PROGRAM with _n_ variables of width _k_ and length _m_ consists of a sequence of _m_ instructions. Each of the instructions is a tuple (_i_, _p_, _q_) where _i_ is the index of variable to check (1 ≤ _i_ ≤ _n_), and _p_ and _q_ are functions from {1, 2, ..., _k_} to {1, 2, ..., _k_}. Numbers 1, 2, ..., _k_ are called states of the branching program. The program initially starts in state 1, and each instruction (_i_, _p_, _q_) changes the state from _x_ to _p_(_x_) or _q_(_x_), depending on whether the _i_th variable is 0 or 1.

A family of branching programs consists of a branching program with _n_ variables for each _n_.

It is easy to show that every language _L_ on {0,1} can be recognized by a family of branching programs of width 5 and exponential length, or by a family of exponential width and linear length.

Every regular language on {0,1} can be recognized by a family of branching programs of constant width and linear number of instructions (since a DFA can be converted to a branching program). BWBP denotes the class of languages recognizable by a family of branching programs of bounded width and polynomial length.[10]

BARRINGTON'S THEOREM[11] says that BWBP is exactly nonuniform NC¹. The proof uses the nonsolvability of the symmetric group S₅.[12]

The theorem is rather surprising. For instance, it implies that the majority function can be computed by a family of branching programs of constant width and polynomial size, while intuition might suggest that to achieve polynomial size, one needs a linear number of states.

Proof of Barrington's theorem

A branching program of constant width and polynomial size can be easily converted (via divide-and-conquer) to a circuit in NC¹.

Conversely, suppose a circuit in NC¹ is given. Without loss of generality, assume it uses only AND and NOT gates.

Lemma 1: If there exists a branching program that sometimes works as a permutation _P_ and sometimes as a permutation _Q_, by right-multiplying permutations in the first instruction by α, and in the last instruction left-multiplying by β, we can make a circuit of the same length that behaves as β_P_α or β_Q_α, respectively.

Call a branching program α-computing a circuit _C_ if it works as identity when C's output is 0, and as α when C's output is 1.

As a consequence of Lemma 1 and the fact that all cycles of length 5 are conjugate, for any two 5-cycles α, β, if there exists a branching program α-computing a circuit _C_, then there exists a branching program β-computing the circuit _C_, of the same length.

Lemma 2: There exist 5-cycles γ, δ such that their commutator ε=γδγ^(−1)δ^(−1) is a 5-cycle. For example, γ = (1 2 3 4 5), δ = (1 3 5 4 2) giving ε = (1 3 2 5 4).

We will now prove Barrington's theorem by induction:

Suppose we have a circuit _C_ which takes inputs _x_₁,...,_x__(n) and assume that for all subcircuits _D_ of _C_ and 5-cycles α, there exists a branching program α-computing _D_. We will show that for all 5-cycles α, there exists a branching program α-computing _C_.

-   If the circuit _C_ simply outputs some input bit _x_(i)_, the branching program we need has just one instruction: checking _x_(i)_'s value (0 or 1), and outputting the identity or α (respectively).
-   If the circuit _C_ outputs ¬_A_ for some different circuit _A_, create a branching program α^(−1)-computing _A_ and then multiply the output of the program by α. By Lemma 1, we get a branching program for _A_ outputting the identity or α, i.e. α-computing ¬_A_=_C_.
-   If the circuit _C_ outputs _A_∧_B_ for circuits _A_ and _B_, join the branching programs that γ-compute _A_, δ-compute B, γ^(−1)-compute _A_, and δ^(−1)-compute B for a choice of 5-cycles γ and δ such that their commutator ε=γδγ^(−1)δ^(−1) is also a 5-cycle. (The existence of such elements was established in Lemma 2.) If one or both of the circuits outputs 0, the resulting program will be the identity due to cancellation; if both circuits output 1, the resulting program will output the commutator ε. In other words, we get a program ε-computing _A_∧_B_. Because ε and α are two 5-cycles, they are conjugate, and hence there exists a program α-computing _A_∧_B_ by Lemma 1.

By assuming the subcircuits have branching programs so that they are α-computing for all 5-cycles α∈_S_₅, we have shown _C_ also has this property, as required.

The size of the branching program is at most 4^(d), where _d_ is the depth of the circuit. If the circuit has logarithmic depth, the branching program has polynomial length.


Notes


References

-   -   -   Greenlaw, Raymond, James Hoover, and Walter Ruzzo. _Limits To Parallel computation; P-Completeness Theory_.
-   Lectures 28 - 34 and 36

-   Lecture 12: Relation of _NC_ to Time-Space Classes

-   -   -

Category:Complexity classes Category:Circuit complexity

[1] Arora & Barak (2009) p.120

[2] Arora & Barak (2009) p.118

[3] Papadimitriou (1994) Theorem 16.1

[4] Clote & Kranakis (2002) p.437

[5]

[6]

[7] Clote & Kranakis (2002) p.12

[8]

[9]

[10] Clote & Kranakis (2002) p.50

[11]

[12]