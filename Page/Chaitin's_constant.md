In the computer science subfield of algorithmic information theory, a CHAITIN CONSTANT (CHAITIN OMEGA NUMBER)[1] or HALTING PROBABILITY is a real number that, informally speaking, represents the probability that a randomly constructed program will halt. These numbers are formed from a construction due to Gregory Chaitin.

Although there are infinitely many halting probabilities, one for each method of encoding programs, it is common to use the letter Ω to refer to them as if there were only one. Because Ω depends on the program encoding used, it is sometimes called CHAITIN'S CONSTRUCTION instead of CHAITIN'S CONSTANT when not referring to any specific encoding.

Each halting probability is a normal and transcendental real number that is not computable, which means that there is no algorithm to compute its digits. Indeed, each halting probability is Martin-Löf random, meaning there is not even any algorithm which can reliably guess its digits.


Background

The definition of a halting probability relies on the existence of a PREFIX-FREE UNIVERSAL COMPUTABLE FUNCTION. Such a function, intuitively, represents a programming language with the property that no valid program can be obtained as a proper extension of another valid program.

Suppose that _F_ is a partial function that takes one argument, a finite binary string, and possibly returns a single binary string as output. The function _F_ is called COMPUTABLE if there is a Turing machine that computes it (in the sense that for any finite binary strings _x_ and _y,_ _F(x) = y_ if and only if the Turing machine halts with _y_ on its tape when given the input _x_).

The function _F_ is called UNIVERSAL if the following property holds: for every computable function _f_ of a single variable there is a string _w_ such that for all _x_, _F_(_w_ _x_) = _f_(_x_); here _w_ _x_ represents the concatenation of the two strings _w_ and _x_. This means that _F_ can be used to simulate any computable function of one variable. Informally, _w_ represents a "script" for the computable function _f_, and _F_ represents an "interpreter" that parses the script as a prefix of its input and then executes it on the remainder of input.

The DOMAIN of _F_ is the set of all inputs _p_ on which it is defined. For _F_ that are universal, such a _p_ can generally be seen both as the concatenation of a program part and a data part, and as a single program for the function _F_.

The function _F_ is called PREFIX-FREE if there are no two elements _p_, _p′_ in its domain such that _p′_ is a proper extension of _p_. This can be rephrased as: the domain of _F_ is a prefix-free code (instantaneous code) on the set of finite binary strings. A simple way to enforce prefix-free-ness is to use machines whose means of input is a binary stream from which bits can be read one at a time. There is no end-of-stream marker; the end of input is determined by when the universal machine decides to stop reading more bits. Here, the difference between the two notions of program mentioned in the last paragraph becomes clear; one is easily recognized by some grammar, while the other requires arbitrary computation to recognize.

The domain of any universal computable function is a computably enumerable set but never a computable set. The domain is always Turing equivalent to the halting problem.


Definition

Let _P__(F) be the domain of a prefix-free universal computable function _F_. The constant Ω_(F) is then defined as

_Ω__(_F_) = ∑_(_p_ ∈ _P__(_F_))2^( − |_p_|)
, where |p| denotes the length of a string _p_. This is an infinite sum which has one summand for every _p_ in the domain of _F_. The requirement that the domain be prefix-free, together with Kraft's inequality, ensures that this sum converges to a real number between 0 and 1. If _F_ is clear from context then Ω_(F) may be denoted simply Ω, although different prefix-free universal computable functions lead to different values of Ω.


Relationship to the halting problem

Knowing the first _N_ bits of Ω, one could calculate the halting problem for all programs of a size up to _N_. Let the program _p_ for which the halting problem is to be solved be _N_ bits long. In dovetailing fashion, all programs of all lengths are run, until enough have halted to jointly contribute enough probability to match these first _N_ bits. If the program _p_ hasn't halted yet, then it never will, since its contribution to the halting probability would affect the first _N_ bits. Thus, the halting problem would be solved for _p_.

Because many outstanding problems in number theory, such as Goldbach's conjecture, are equivalent to solving the halting problem for special programs (which would basically search for counter-examples and halt if one is found), knowing enough bits of Chaitin's constant would also imply knowing the answer to these problems. But as the halting problem is not generally solvable, and therefore calculating any but the first few bits of Chaitin's constant is not possible, this just reduces hard problems to impossible ones, much like trying to build an oracle machine for the halting problem would be.


Interpretation as a probability

The Cantor space is the collection of all infinite sequences of 0s and 1s. A halting probability can be interpreted as the measure of a certain subset of Cantor space under the usual probability measure on Cantor space. It is from this interpretation that halting probabilities take their name.

The probability measure on Cantor space, sometimes called the fair-coin measure, is defined so that for any binary string _x_ the set of sequences that begin with _x_ has measure 2^(−|_x_|). This implies that for each natural number _n_, the set of sequences _f_ in Cantor space such that _f_(_n_) = 1 has measure 1/2, and the set of sequences whose _n_th element is 0 also has measure 1/2.

Let _F_ be a prefix-free universal computable function. The domain _P_ of _F_ consists of an infinite set of binary strings

_P_ = {_p_₁, _p_₂, …}
. Each of these strings _p__(_i_) determines a subset _S__(_i_) of Cantor space; the set _S__(_i_) contains all sequences in cantor space that begin with _p__(_i_). These sets are disjoint because _P_ is a prefix-free set. The sum

∑_(_p_ ∈ _P_)2^( − |_p_|)
represents the measure of the set

⋃_(_i_ ∈ ℕ)_S__(_i_)
.

In this way, Ω_(_F_) represents the probability that a randomly selected infinite sequence of 0s and 1s begins with a bit string (of some finite length) that is in the domain of _F_. It is for this reason that Ω_(_F_) is called a halting probability.


Properties

Each Chaitin constant Ω has the following properties:

-   It is algorithmically random (also known as Martin-Löf random or 1-random).[2] This means that the shortest program to output the first _n_ bits of Ω must be of size at least _n_-O(1). This is because, as in the Goldbach example, those _n_ bits enable us to find out exactly which programs halt among all those of length at most _n_.
-   As a consequence, it is a normal number, which means that its digits are equidistributed as if they were generated by tossing a fair coin.
-   It is not a computable number; there is no computable function that enumerates its binary expansion, as discussed below.
-   The set of rational numbers _q_ such that _q_ < Ω is computably enumerable;[3] a real number with such a property is called a LEFT-C.E. REAL NUMBER in recursion theory.
-   The set of rational numbers _q_ such that _q_ > Ω is not computably enumerable. (Reason: every left-c.e. real with this property is computable, which Ω isn't.)
-   Ω is an arithmetical number.
-   It is Turing equivalent to the halting problem and thus at level Δ₂⁰ of the arithmetical hierarchy.

Not every set that is Turing equivalent to the halting problem is a halting probability. A finer equivalence relation, SOLOVAY EQUIVALENCE, can be used to characterize the halting probabilities among the left-c.e. reals.[4] One can show that a real number in [0,1] is a Chaitin constant (i.e. the halting probability of some prefix-free universal computable function) if and only if it is left-c.e. and algorithmically random.[5] Ω is among the few definable algorithmically random numbers and is the best-known algorithmically random number, but it is not at all typical of all algorithmically random numbers.[6]


Uncomputability

A real number is called computable if there is an algorithm which, given _n_, returns the first _n_ digits of the number. This is equivalent to the existence of a program that enumerates the digits of the real number.

No halting probability is computable. The proof of this fact relies on an algorithm which, given the first _n_ digits of Ω, solves Turing's halting problem for programs of length up to _n_. Since the halting problem is undecidable, Ω cannot be computed.

The algorithm proceeds as follows. Given the first _n_ digits of Ω and a _k_ ≤ _n_, the algorithm enumerates the domain of _F_ until enough elements of the domain have been found so that the probability they represent is within 2^(−(_k_+1)) of Ω. After this point, no additional program of length _k_ can be in the domain, because each of these would add 2^(−_k_) to the measure, which is impossible. Thus the set of strings of length _k_ in the domain is exactly the set of such strings already enumerated.


Algorithmic randomness

A real number is random if the binary sequence representing the real number is an algorithmically random sequence. Calude, Hertling, Khoussainov, and Wang showed[7] that a recursively enumerable real number is an algorithmically random sequence if and only if it is a Chaitin's Ω number.


Incompleteness theorem for halting probabilities

For each specific consistent effectively represented axiomatic system for the natural numbers, such as Peano arithmetic, there exists a constant _N_ such that no bit of Ω after the _N_th can be proven to be 1 or 0 within that system. The constant _N_ depends on how the formal system is effectively represented, and thus does not directly reflect the complexity of the axiomatic system. This incompleteness result is similar to Gödel's incompleteness theorem in that it shows that no consistent formal theory for arithmetic can be complete.


Super Omega

As mentioned above, the first n bits of Gregory Chaitin's constant Ω are random or incompressible in the sense that we cannot compute them by a halting algorithm with fewer than n-O(1) bits. However, consider the short but never halting algorithm which systematically lists and runs all possible programs; whenever one of them halts its probability gets added to the output (initialized by zero). After finite time the first n bits of the output will never change any more (it does not matter that this time itself is not computable by a halting program). So there is a short non-halting algorithm whose output converges (after finite time) onto the first n bits of Ω. In other words, the enumerable first n bits of Ω are highly compressible in the sense that they are limit-computable by a very short algorithm; they are not random with respect to the set of enumerating algorithms. Jürgen Schmidhuber (2000) constructed a limit-computable "Super Ω" which in a sense is much more random than the original limit-computable Ω, as one cannot significantly compress the Super Ω by any enumerating non-halting algorithm.

For an alternative "Super Ω", the universality probability of a prefix-free Universal Turing Machine (UTM) namely, the probability that it remains universal even when every input of it (as a binary string) is prefixed by a random binary string can be seen as the non-halting probability of a machine with oracle the third iteration of the halting problem (i.e., O⁽³⁾using Turing Jump notation).[8]


See also

-   Incompleteness theorem
-   Kolmogorov complexity


References

-   Cristian S. Calude (2002). _Information and Randomness: An Algorithmic Perspective_, second edition. Springer.
-   Cristian S. Calude, Michael J. Dinneen, and Chi-Kou Shu. _Computing a Glimpse of Randomness._
-   R. Downey, and D. Hirschfeldt (2010), _Algorithmic Randomness and Complexity_, Springer-Verlag.
-   Ming Li and Paul Vitányi (1997). _An Introduction to Kolmogorov Complexity and Its Applications_. Springer. Introduction chapter full-text.
-   Jürgen Schmidhuber (2000). Algorithmic Theories of Everything (arXiv: quant-ph/ 0011122). Journal reference: J. Schmidhuber (2002). Hierarchies of generalized Kolmogorov complexities and nonenumerable universal measures computable in the limit. International Journal of Foundations of Computer Science 13(4):587-612.


External links

-   Aspects of Chaitin's Omega Survey article discussing recent advances in the study of Chaitin's Omega.
-   Omega and why maths has no TOEs article based on one written by Gregory Chaitin which appeared in the August 2004 edition of Mathematics Today, on the occasion of the 50th anniversary of Alan Turing's death.
-   _The Limits of Reason_, Gregory Chaitin, originally appeared in Scientific American, March 2006.
-   Limit-computable Super Omega more random than Omega and generalizations of algorithmic information, by Jürgen Schmidhuber

Category:Algorithmic information theory Category:Theory of computation Category:Real transcendental numbers

[1] mathworld.wolfram.com, Chaitin's Constant. Retrieved 28 May 2012

[2] Downey/Hirschfeld, Theorem 6.1.3

[3] Downey/Hirschfeld, Theorem 5.1.11

[4] Downey/Hirschfeldt, p.405

[5]

[6] Downey/Hirschfeld, p.228-229

[7] Calude, Hertling, Khoussainov, and Wang: Recursively enumerable reals and Chaitin's Ω numbers. Theoretical Computer Science 255:125–149, (2001) http://webpages.uncc.edu/yonwang/papers/TCS01.pdf

[8]