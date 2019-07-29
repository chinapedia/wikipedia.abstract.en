In computational complexity theory, CO-NP is a complexity class. A decision problem is a member of co-NP if and only if its complement is in the complexity class NP. In simple terms, co-NP is the class of problems for which there is a polynomial-time algorithm that can verify "_no_" instances (sometimes called counterexamples) given the appropriate certificate. Equivalently, co-NP is the set of decision problems where the "no" instances can be accepted in polynomial time by a non-deterministic Turing machine.

An example of an NP-complete problem is the circuit satisfiability problem: given a Boolean circuit, is there a possible input for which the circuit outputs true? To give a proof of a "yes" instance, one must specify a valid input to the circuit such that the output will be true. The complementary problem asks: "given a Boolean circuit, do all possible inputs to the circuit output false?". Even if someone claims to know the answer to the complementary question for a given set, we do not know how to verify their solution efficiently. To give a proof of the "yes" instance, we may give all possible inputs to the circuit and saying it outputs true. However, verifying their claim is just as inefficient as checking all possible inputs in the first place. Because of this dilemma, we do not know if the subset sum problem is in co-NP. Note however that the complementary question itself is in co-NP, since the original question is in NP.


Relationship to other classes

P, the class of polynomial time solvable problems, is a subset of both NP and co-NP. P is thought to be a strict subset in both cases (and demonstrably cannot be strict in one case and not strict in the other). NP and co-NP are also thought to be unequal.[1] If so, then no NP-complete problem can be in co-NP and no co-NP-complete problem can be in NP.[2]

This can be shown as follows. Suppose there exists an NP-complete problem that is in co-NP. Since all problems in NP can be reduced to , it follows that for every problem in NP we can construct a non-deterministic Turing machine that decides its complement in polynomial time, i.e., NP ⊆ co-NP. From this it follows that the set of complements of the problems in NP is a subset of the set of complements of the problems in co-NP, i.e., co-NP ⊆ NP. Thus co-NP = NP. The proof that no co-NP-complete problem can be in NP if NP ≠ co-NP is symmetrical.

If a problem can be shown to be in both NP and co-NP, that is generally accepted as strong evidence that the problem is probably not NP-complete (since otherwise NP = co-NP).

An example of a problem that is known to belong to both NP and co-NP (but not known to be in P) is integer factorization: given positive integers _m_ and _n_ determine if _m_ has a factor less than _n_ and greater than one. Membership in NP is clear; if _m_ does have such a factor then the factor itself is a certificate. Membership in co-NP is also straightforward: one can just list the prime factors of _m_, all greater or equal to n, which the verifier can confirm to be valid by multiplication and the AKS primality test. It is presently not known whether there is a polynomial-time algorithm for factorization, equivalently that integer factorization is in P, and hence this example is interesting as one of the most natural problems known to be in NP and co-NP but not known to be in P.


References


External links

-

Category:Complexity classes

[1]  Chap. 11.

[2]