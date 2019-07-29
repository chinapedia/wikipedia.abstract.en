The KOLMOGOROV AXIOMS are a fundamental part of Andrey Kolmogorov's probability theory. In it, the probability _P_ of some event _E_, denoted P(E), is usually defined as to satisfy these axioms. The axioms are described below.

These assumptions can be summarised as follows: Let (Ω, _F_, _P_) be a measure space with _P_(Ω) = 1. Then (Ω, _F_, _P_) is a probability space, with sample space Ω, event space _F_ and probability measure _P_.

An alternative approach to formalising probability, favoured by some Bayesians, is given by Cox's theorem.


Axioms

First axiom

The probability of an event is a non-negative real number:

_P_(_E_) ∈ ℝ, _P_(_E_) ≥ 0  ∀_E_ ∈ _F_

where F is the event space. It follows that P(E) is always finite, in contrast with more general measure theory. Theories which assign negative probability relax the first axiom.

Second axiom

This is the assumption of unit measure: that the probability that at least one of the elementary events in the entire sample space will occur is 1.

    P(Ω) = 1.

Third axiom

This is the assumption of σ-additivity:

    Any countable sequence of disjoint sets (synonymous with _mutually exclusive_ events) E₁, E₂, … satisfies
    $$P\left(\bigcup_{i = 1}^\infty E_i\right) = \sum_{i=1}^\infty P(E_i).$$

Some authors consider merely finitely additive probability spaces, in which case one just needs an algebra of sets, rather than a σ-algebra. Quasiprobability distributions in general relax the third axiom.


Consequences

From the Kolmogorov axioms, one can deduce other useful rules for calculating probabilities.

The probability of the empty set

    P(⌀) = 0.

In some cases, ⌀ is not the only event with probability 0.

Monotonicity

     if A ⊆ B then P(A) ≤ P(B).

If A is a subset of, or equal to B, then the probability of A is less than, or equal to the probability of B.

The numeric bound

It immediately follows from the monotonicity property that

    0 ≤ P(E) ≤ 1  ∀E ∈ F.


Proofs

The proofs of these properties are both interesting and insightful. They illustrate the power of the third axiom, and its interaction with the remaining two axioms. When studying axiomatic probability theory, many deep consequences follow from merely these three axioms. In order to verify the monotonicity property, we set E₁ = A and E₂ = B \ A, where  A ⊆ B and E_(i) = ⌀ for i ≥ 3. It is easy to see that the sets E_(i) are pairwise disjoint and E₁ ∪ E₂ ∪ ⋯ = B. Hence, we obtain from the third axiom that

    $P(A)+P(B\setminus A)+\sum_{i=3}^\infty P(E_i)=P(B).$

Since the left-hand side of this equation is a series of non-negative numbers, and since it converges to P(B) which is finite, we obtain both P(A) ≤ P(B) and P(⌀) = 0. The second part of the statement is seen by contradiction: if P(⌀) = a then the left hand side is not less than infinity

    $\sum_{i=3}^\infty P(E_i)=\sum_{i=3}^\infty P(\varnothing)=\sum_{i=3}^\infty a = \begin{cases} 0 & \text{if } a=0, \\ \infty & \text{if } a>0. \end{cases}$

If a > 0 then we obtain a contradiction, because the sum does not exceed P(B) which is finite. Thus, a = 0. We have shown as a byproduct of the proof of monotonicity that P(⌀) = 0.


Further consequences

Another important property is:

    P(A ∪ B) = P(A) + P(B) − P(A ∩ B).

This is called the addition law of probability, or the sum rule. That is, the probability that _A_ _or_ _B_ will happen is the sum of the probabilities that _A_ will happen and that _B_ will happen, minus the probability that both _A_ _and_ _B_ will happen. The proof of this is as follows:

Firstly,

_P_(_A_ ∪ _B_) = _P_(_A_) + _P_(_B_ \ _A_)
(by Axiom 3)

So,

_P_(_A_ ∪ _B_) = _P_(_A_) + _P_(_B_ \ (_A_ ∩ _B_))
(by B \ A = B \ (A ∩ B)).

Also,

_P_(_B_) = _P_(_B_ \ (_A_ ∩ _B_)) + _P_(_A_ ∩ _B_)

and eliminating P(B \ (A ∩ B)) from both equations gives us the desired result.

An extension of the addition law to any number of sets is the inclusion–exclusion principle.

Setting _B_ to the complement _A^(c)_ of _A_ in the addition law gives

    P(A^(c)) = P(Ω \ A) = 1 − P(A)

That is, the probability that any event will _not_ happen (or the event's complement) is 1 minus the probability that it will.


Simple example: coin toss

Consider a single coin-toss, and assume that the coin will either land heads (H) or tails (T) (but not both). No assumption is made as to whether the coin is fair.

We may define:

    Ω = {H, T}
    F = {⌀, {H}, {T}, {H, T}}

Kolmogorov's axioms imply that:

    P(⌀) = 0

The probability of _neither_ heads _nor_ tails, is 0.

    P({H, T}^(c)) = 0

The probability of _either_ heads _or_ tails, is 1.

    P({H}) + P({T}) = 1

The sum of the probability of heads and the probability of tails, is 1.


See also

-   Borel algebra
-   σ-algebra
-   Set theory
-   Conditional probability
-   Quasiprobability
-   Fully probabilistic design


Further reading

-   -


External links

-   Kolmogorov`s probability calculus, Stanford Encyclopedia of Philosophy.
-   Formal definition of probability in the Mizar system, and the list of theorems formally proved about it.

Category:Probability theory Category:Mathematical axioms