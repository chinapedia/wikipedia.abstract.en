In computational complexity theory, BOUNDED-ERROR PROBABILISTIC POLYNOMIAL TIME (BPP) is the class of decision problems solvable by a probabilistic Turing machine in polynomial time with an error probability bounded away from 1/3 for all instances. BPP is one of the largest _practical_ classes of problems, meaning most problems of interest in BPP have efficient probabilistic algorithms that can be run quickly on real modern machines. BPP also contains P, the class of problems solvable in polynomial time with a deterministic machine, since a deterministic machine is a special case of a probabilistic machine.

+------------------------------+
| BPP algorithm (1 run)        |
+==============================+
| "padding-left:4em;">produced |
|                              |
| }}                           |
+------------------------------+
|                              |
+------------------------------+
|                              |
+------------------------------+
| BPP algorithm (_k_ runs)     |
+------------------------------+
| "padding-left:4em;">Answer   |
|                              |
| produced}}                   |
+------------------------------+
|                              |
+------------------------------+
|                              |
+------------------------------+
| for some constant _c_ > 0    |
+------------------------------+

Informally, a problem is in BPP if there is an algorithm for it that has the following properties:

-   It is allowed to flip coins and make random decisions
-   It is guaranteed to run in polynomial time
-   On any given run of the algorithm, it has a probability of at most 1/3 of giving the wrong answer, whether the answer is YES or NO.


Definition

A language _L_ is in BPP if and only if there exists a probabilistic Turing machine _M_, such that

-   _M_ runs for polynomial time on all inputs
-   For all _x_ in _L_, _M_ outputs 1 with probability greater than or equal to
-   For all _x_ not in _L_, _M_ outputs 1 with probability less than or equal to

Unlike the complexity class ZPP, the machine _M_ is required to run for polynomial time on all inputs, regardless of the outcome of the random coin flips.

Alternatively, BPP can be defined using only deterministic Turing machines. A language _L_ is in BPP if and only if there exists a polynomial _p_ and deterministic Turing machine _M_, such that

-   _M_ runs for polynomial time on all inputs
-   For all _x_ in _L_, the fraction of strings _y_ of length _p_(|_x_|) which satisfy is greater than or equal to
-   For all _x_ not in _L_, the fraction of strings _y_ of length _p_(|_x_|) which satisfy is less than or equal to

In this definition, the string _y_ corresponds to the output of the random coin flips that the probabilistic Turing machine would have made. For some applications this definition is preferable since it does not mention probabilistic Turing machines.

In practice, an error probability of might not be acceptable, however, the choice of in the definition is arbitrary. It can be any constant between 0 and (exclusive) and the set BPP will be unchanged. It does not even have to be constant: the same class of problems is defined by allowing error as high as − _n_^(−_c_) on the one hand, or requiring error as small as 2^(−_n^(c)_) on the other hand, where _c_ is any positive constant, and _n_ is the length of input. The idea is that there is a probability of error, but if the algorithm is run many times, the chance that the majority of the runs are wrong drops off exponentially as a consequence of the Chernoff bound.[1] This makes it possible to create a highly accurate algorithm by merely running the algorithm several times and taking a "majority vote" of the answers. For example, if one defined the class with the restriction that the algorithm can be wrong with probability at most , this would result in the same class of problems.


Problems

All of the problems in P, are obviously in BPP. However, many problems were known to be in BPP but not yet known to be in P. The number of such problems is decreasing, and it is conjectured that P = BPP.

For a long time, one of the most famous problems that was known to be in BPP but not known to be in P was the problem of determining whether a given number is prime. However, in the 2002 paper _PRIMES is in P_, Manindra Agrawal and his students Neeraj Kayal and Nitin Saxena found a deterministic polynomial-time algorithm for this problem, thus showing that it is in P.

An important example of a problem in BPP (in fact in CO-RP) still not known to be in P is polynomial identity testing, the problem of determining whether a polynomial is identically equal to the zero polynomial, when you have access to the value of the polynomial for any given input, but not to the coefficients. In other words, is there an assignment of values to the variables such that when a nonzero polynomial is evaluated on these values, the result is nonzero? It suffices to choose each variable's value uniformly at random from a finite subset of at least _d_ values to achieve bounded error probability, where _d_ is the total degree of the polynomial.[2]


Related classes

If the access to randomness is removed from the definition of BPP, we get the complexity class P. In the definition of the class, if we replace the ordinary Turing machine with a quantum computer, we get the class BQP.

Adding postselection to BPP, or allowing computation paths to have different lengths, gives the class BPP_(path).[3] BPP_(path) is known to contain NP, and it is contained in its quantum counterpart POSTBQP.

A Monte Carlo algorithm is a randomized algorithm which is likely to be correct. Problems in the class BPP have Monte Carlo algorithms with polynomial bounded running time. This is compared to a Las Vegas algorithm which is a randomized algorithm which either outputs the correct answer, or outputs "fail" with low probability. Las Vegas algorithms with polynomial bound running times are used to define the class ZPP. Alternatively, ZPP contains probabilistic algorithms that are always correct and have expected polynomial running time. This is weaker than saying it is a polynomial time algorithm, since it may run for super-polynomial time, but with very low probability.


Complexity-theoretic properties

Randomized_Complexity_Classes.svg

It is known that BPP is closed under complement; that is, BPP = CO-BPP. BPP is low for itself, meaning that a BPP machine with the power to solve BPP problems instantly (a BPP oracle machine) is not any more powerful than the machine without this extra power. In symbols, BPP^(BPP) = BPP.

The relationship between BPP and NP is unknown: it is not known whether BPP is a subset of NP, NP is a subset of BPP or neither. If NP is contained in BPP, which is considered unlikely since it would imply practical solutions for NP-complete problems, then NP = RP and PH ⊆ BPP.[4]

It is known that RP is a subset of BPP, and BPP is a subset of PP. It is not known whether those two are strict subsets, since we don't even know if P is a strict subset of PSPACE. BPP is contained in the second level of the polynomial hierarchy and therefore it is contained in PH. More precisely, the Sipser–Lautemann theorem states that BPP ⊆ Σ₂ ∩ Π₂. As a result, P = NP leads to P = BPP since PH collapses to P in this case. Thus either P = BPP or P ≠ NP or both.

Adleman's theorem states that membership in any language in BPP can be determined by a family of polynomial-size Boolean circuits, which means BPP is contained in P/POLY.[5] Indeed, as a consequence of the proof of this fact, every BPP algorithm operating on inputs of bounded length can be derandomized into a deterministic algorithm using a fixed string of random bits. Finding this string may be expensive, however. Some weak separation results for Monte Carlo time classes were proven by , see also .[6]

Closure properties

The class BPP is closed under complementation, union and intersection.

Relativization

Relative to oracles, we know that there exist oracles A and B, such that P^(A) = BPP^(A) and P^(B) ≠ BPP^(B). Moreover, relative to a random oracle with probability 1, P = BPP and BPP is strictly contained in NP and CO-NP.[7]

There is even an oracle in which BPP=EXP^(NP) (and hence P<NP<BPP=EXP=NEXP),[8] which can be iteratively constructed as follows. For a fixed E^(NP) (relativized) complete problem, the oracle will give correct answers with high probability if queried with the problem instance followed by a random string of length _kn_ (_n_ is instance length; _k_ is an appropriate small constant). Start with _n_=1. For every instance of the problem of length _n_ fix oracle answers (see lemma below) to fix the instance output. Next, provide the instance outputs for queries consisting of the instance followed by _kn_-length string, and then treat output for queries of length ≤(_k_+1)_n_ as fixed, and proceed with instances of length _n_+1.

LEMMA: Given a problem (specifically, an oracle machine code and time constraint) in relativized E^(NP), for every partially constructed oracle and input of length _n_, the output can be fixed by specifying 2^(_O_(_n_)) oracle answers.
PROOF: The machine is simulated, and the oracle answers (that are not already fixed) are fixed step-by-step. There is at most one oracle query per deterministic computation step. For the relativized NP oracle, if possible fix the output to be yes by choosing a computation path and fixing the answers of the base oracle; otherwise no fixing is necessary, and either way there is at most 1 answer of the base oracle per step. Since there are 2^(_O_(_n_)) steps, the lemma follows.

The lemma ensures that (for a large enough _k_), it is possible to do the construction while leaving enough strings for the relativized E^(NP) answers. Also, we can ensure that for the relativized E^(NP), linear time suffices, even for function problems (if given a function oracle and linear output size) and with exponentially small (with linear exponent) error probability. Also, this construction is effective in that given an arbitrary oracle A we can arrange the oracle B to have P^(A)≤P^(B) and EXP^(NP^(A))=EXP^(NP^(B))=BPP^(B). Also, for a ZPP=EXP oracle (and hence ZPP=BPP=EXP<NEXP), one would fix the answers in the relativized E computation to a special nonanswer, thus ensuring that no fake answers are given.


Derandomization

The existence of certain strong pseudorandom number generators is conjectured by most experts of the field. This conjecture implies that randomness does not give additional computational power to polynomial time computation, that is, P = RP = BPP. Note that ordinary generators are not sufficient to show this result; any probabilistic algorithm implemented using a typical random number generator will always produce incorrect results on certain inputs irrespective of the seed (though these inputs might be rare).

László Babai, Lance Fortnow, Noam Nisan, and Avi Wigderson showed that unless EXPTIME collapses to MA, BPP is contained in[9]

i.o.-SUBEXP = ⋂_(_ε_ > 0)i.o.-DTIME(2^(_n_^(_ε_))).
The class I.O.-SUBEXP, which stands for infinitely often SUBEXP, contains problems which have sub-exponential time algorithms for infinitely many input sizes. They also showed that P = BPP if the exponential-time hierarchy, which is defined in terms of the polynomial hierarchy and E as E^(PH), collapses to E; however, note that the exponential-time hierarchy is usually conjectured _not_ to collapse.

Russell Impagliazzo and Avi Wigderson showed that if any problem in E, where

E = DTIME(2^(_O_(_n_))),
has circuit complexity 2^(Ω(_n_)) then P = BPP.[10]


See also

-   RP
-   ZPP
-   BQP


References

-   Valentine Kabanets (2003). "CMPT 710 – Complexity Theory: Lecture 16". Simon Fraser University.
-   Pages 257–259 of section 11.3: Random Sources. Pages 269–271 of section 11.4: Circuit complexity.

-   Section 10.2.1: The class BPP, pp. 336–339.

-   -   Arora, Sanjeev; Boaz Barak (2009). "Computational Complexity: A Modern Approach".


External links

-   Princeton CS 597E: Derandomization paper list
-   Harvard CS 225: Pseudorandomness

Category:Probabilistic complexity classes

[1] Valentine Kabanets, CMPT 710 - Complexity Theory: Lecture 16, October 28, 2003

[2] Madhu Sudan and Shien Jin Ong. Massachusetts Institute of Technology: 6.841/18.405J Advanced Complexity Theory: Lecture 6: Randomized Algorithms, Properties of BPP. February 26, 2003.

[3] BPPpath in Complexity Zoo

[4] Lance Fortnow and Bill Gasarch, Pulling Out The Quantumness, December 20, 2005

[5]

[6]

[7]

[8]

[9]

[10] Russell Impagliazzo and Avi Wigderson (1997). "P = BPP if E requires exponential circuits: Derandomizing the XOR Lemma". _Proceedings of the Twenty-Ninth Annual ACM Symposium on Theory of Computing_, pp. 220–229.