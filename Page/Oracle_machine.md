In complexity theory and computability theory, an ORACLE MACHINE is an abstract machine used to study decision problems. It can be visualized as a Turing machine with a black box, called an ORACLE, which is able to solve certain decision problems in a single operation. The problem can be of any complexity class. Even undecidable problems, such as the halting problem, can be used.


Oracles

An oracle machine can be conceived as a Turing machine connected to an ORACLE. The oracle, in this context, is an entity capable of solving some problem, which for example may be a decision problem or a function problem. The problem does not have to be computable; the oracle is not assumed to be a Turing machine or computer program. The oracle is simply a "black box" that is able to produce a solution for any instance of a given computational problem:

-   A decision problem is represented as a set _A_ of natural numbers (or strings). An instance of the problem is an arbitrary natural number (or string). The solution to the instance is "YES" if the number (string) is in the set, and "NO" otherwise.
-   A function problem is represented by a function _f_ from natural numbers (or strings) to natural numbers (or strings). An instance of the problem is an input _x_ for _f_. The solution is the value _f_(_x_).

An oracle machine can perform all of the usual operations of a Turing machine, and can also query the oracle to obtain a solution to any instance of the computational problem for that oracle. For example, if the problem is a decision problem for a set _A_ of natural numbers, the oracle machine supplies the oracle with a natural number, and the oracle responds with "yes" or "no" stating whether that number is an element of _A_.


Definitions

There are many equivalent definitions of oracle Turing machines, as discussed below. The one presented here is from van Melkebeek (2000:43).

An oracle machine, like a Turing machine, includes:

-   a WORK TAPE: a sequence of cells without beginning or end, each of which may contain a B (for blank) or a symbol from the tape alphabet;
-   a READ/WRITE HEAD, which rests on a single cell of the work tape and can read the data there, write new data, and increment or decrement its position along the tape;
-   a CONTROL MECHANISM, which can be in one of a finite number of STATES, and which will perform different actions (reading data, writing data, moving the control mechanism, and changing states) depending on the current state and the data being read.

In addition to these components, an oracle machine also includes:

-   an ORACLE TAPE, which is a semi-infinite tape separate from the work tape. The alphabet for the oracle tape may be different from the alphabet for the work tape.
-   an ORACLE HEAD which, like the read/write head, can move left or right along the oracle tape reading and writing symbols;
-   two special states: the ASK state and the RESPONSE state.

From time to time, the oracle machine may enter the ASK state. When this happens, the following actions are performed in a single computational step:

-   the contents of the oracle tape are viewed as an instance of the oracle's computational problem;
-   the oracle is consulted, and the contents of the oracle tape are replaced with the solution to that instance of the problem;
-   the oracle head is moved to the first square on the oracle tape;
-   the state of the oracle machine is changed to RESPONSE.

The effect of changing to the ASK state is thus to receive, in a single step, a solution to the problem instance that is written on the oracle tape.

Alternative definitions

There are many alternative definitions to the one presented above. Many of these are specialized for the case where the oracle solves a decision problem. In this case:

-   Some definitions, instead of writing the answer to the oracle tape, have two special states YES and NO in addition to the ASK state. When the oracle is consulted, the next state is chosen to be YES if the contents of the oracle tape are in the oracle set, and chosen to the NO if the contents are not in the oracle set (Adachi 1990:111).
-   Some definitions eschew the separate oracle tape. When the oracle state is entered, a tape symbol is specified. The oracle is queried with the number of times that this tape symbol appears on the work tape. If that number is in the oracle set, the next state is the YES state; if it is not, the next state is the NO state (Rogers 1967:129).
-   Another alternative definition makes the oracle tape read-only, and eliminates the ASK and RESPONSE states entirely. Before the machine is started, the indicator function of the oracle set is written on the oracle tape using symbols 0 and 1. The machine is then able to query the oracle by scanning to the correct square on the oracle tape and reading the value located there (Soare 1987:47, Rogers 1967:130).

These definitions are equivalent from the point of view of Turing computability: a function is oracle-computable from a given oracle under all of these definitions if it is oracle-computable under any of them. The definitions are not equivalent, however, from the point of view of computational complexity. A definition such as the one by van Melkebeek, using an oracle tape which may have its own alphabet, is required in general.


Complexity classes of oracle machines

The complexity class of decision problems solvable by an algorithm in class A with an oracle for a language L is called A^(L). For example, P^(SAT) is the class of problems solvable in polynomial time by a deterministic Turing machine with an oracle for the Boolean satisfiability problem. The notation A^(B) can be extended to a set of languages B (or a complexity class B), by using the following definition:

_A_^(_B_) = ⋃_(_L_ ∈ _B_)_A_^(_L_)

When a language L is complete for some class B, then A^(L)=A^(B) provided that machines in A can execute reductions used in the completeness definition of class B. In particular, since SAT is NP-complete with respect to polynomial time reductions, P^(SAT)=P^(NP). However, if A = DLOGTIME, then A^(SAT) may not equal A^(NP). (Note that the definition of A^(B) given above is not completely standard. In some contexts, such as the proof of the time and space hierarchy theorems, it is more useful to assume that the abstract machine defining class A only has access to a single oracle for one language. In this context, A^(B) is not defined if the complexity class B does not have any complete problems with respect to the reductions available to A.)

It is understood that NP ⊆ P^(NP), but the question of whether NP^(NP), P^(NP), NP, and P are equal remains tentative at best. It is believed they are different, and this leads to the definition of the polynomial hierarchy.

Oracle machines are useful for investigating the relationship between complexity classes P and NP, by considering the relationship between P^(A) and NP^(A) for an oracle A. In particular, it has been shown there exist languages A and B such that P^(A)=NP^(A) and P^(B)≠NP^(B) (Baker, Gill, and Solovay 1975). The fact the P = NP question relativizes both ways is taken as evidence that answering this question is difficult, because a proof technique that _relativizes_ (i.e., unaffected by the addition of an oracle) will not answer the P = NP question. Most proof techniques relativize.

One may consider the case where an oracle is chosen randomly from among all possible oracles (an infinite set). It has been shown in this case, that with probability 1, P^(A)≠NP^(A) (Bennett and Gill 1981). When a question is true for almost all oracles, it is said to be true _for a random oracle_. This choice of terminology is justified by the fact random oracles support a statement with probability 0 or 1 only. (This follows from Kolmogorov's zero one law.) This is only weak evidence that P≠NP, since a statement may be true for a random oracle but false for ordinary Turing machines; for example, IP^(A)≠PSPACE^(A) for a random oracle A but IP = PSPACE (Chang et al., 1994).


Oracles and halting problems

A machine with an oracle for the halting problem can determine whether particular Turing machines will halt on particular inputs, but they cannot determine, in general, whether machines equivalent to themselves will halt. This creates a hierarchy of machines, each with a more powerful halting oracle and an even harder halting problem. This hierarchy of machines can be used to define the _arithmetical hierarchy_ (Börger 1989).


Applications to cryptography

In cryptography, oracles are used to make arguments for the security of cryptographic protocols where a hash function is used. A security reduction for the protocol is given in the case where, instead of a hash function, a random oracle answers each query randomly but consistently; the oracle is assumed to be available to all parties including the attacker, as the hash function is. Such a proof shows that unless the attacker solves the hard problem at the heart of the security reduction, they must make use of some interesting property of the hash function to break the protocol; they cannot treat the hash function as a black box (i.e., as a random oracle).


See also

-   Black box group
-   Turing reduction
-   Interactive proof system
-   Matroid oracle


References

-   Akeo Adachi, _Foundations of computation theory_, Ohmsha, 1990.
-   T. P. Baker, J. Gill, R. Solovay. _Relativizations of the P =? NP Question_. SIAM Journal on Computing, 4(4): 431-442 (1975)
-   C. H. Bennett, J. Gill. _Relative to a Random Oracle A, P^(A) != NP^(A) != co-NP^(A) with Probability 1_. SIAM Journal on Computing, 10(1): 96-113 (1981)
-   Egon Börger. "Computability, Complexity, Logic". North-Holland, 1989.
-   Richard Chang, Benny Chor, Oded Goldreich, Juris Hartmanis, Johan Hastad, Desh Ranjan, Pankaj Rohatgi. The Random Oracle Hypothesis is False. _Journal of Computer and System Sciences_, volume 49, issue 1, pp. 24–39. August 1994. . http://citeseer.ist.psu.edu/282397.html
-   Martin Davis, editor: _The Undecidable, Basic Papers on Undecidable Propositions, Unsolvable Problems And Computable Functions_, Raven Press, New York, 1965. Turing's paper is in this volume. Papers include those by Gödel, Church, Rosser, Kleene, and Post.
-   C. Papadimitriou. _Computational Complexity_. Addison-Wesley, 1994. Section 14.3: Oracles, pp. 339–343.
-   Hartley Rogers, Jr., _Theory of Recursive Functions and Effective Computability_, McGraw-Hill, 1967.
-   Michael Sipser. _Introduction to the Theory of Computation_. PWS Publishing, 1997. . Section 9.2: Relativization, pp. 318–321.
-   Robert I. Soare, _Recursively Enumerable Sets and Degrees_, Perspectives in Mathematical Logic, Springer, 1987.
-   Alan Turing, _Systems of logic based on ordinals_, Proc. London math. soc., 45, 1939
-   Dieter van Melkebeek, _Randomness and Completeness in Computational Complexity_, Lecture Notes in Computer Science 1950, Springer, 2000.

Category:Computability theory Category:Models of computation Category:Turing machine