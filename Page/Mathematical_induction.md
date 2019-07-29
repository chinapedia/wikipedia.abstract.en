Dominoeffect.png.[1][2]]]

MATHEMATICAL INDUCTION is a mathematical proof technique. It is essentially used to prove that a property _P_(_n_) holds for every natural number _n_, i.e. for _n_ = 0, 1, 2, 3, and so on. Metaphors can be informally used to understand the concept of mathematical induction, such as the metaphor of falling dominoes or climbing a ladder:

The method of induction requires two cases to be proved. The first case, called the BASE CASE (or, sometimes, the BASIS), proves that the property holds for the number 0. The second case, called the INDUCTION STEP, proves that, if the property holds for one natural number _n_, then it holds for the next natural number _n_ + 1. These two steps establish the property _P_(_n_) for every natural number _n_ = 0, 1, 2, 3, ... The base step need not begin with zero. Often it begins with the number one, and it can begin with any natural number, establishing the truth of the property for all natural numbers greater than or equal to the starting number.

The method can be extended to prove statements about more general well-founded structures, such as trees; this generalization, known as structural induction, is used in mathematical logic and computer science. Mathematical induction in this extended sense is closely related to recursion. Mathematical induction, in some form, is the foundation of all correctness proofs for computer programs.[3]

Although its name may suggest otherwise, mathematical induction should not be misconstrued as a form of inductive reasoning as used in philosophy (also see Problem of induction). Mathematical induction is an inference rule used in formal proofs. Proofs by mathematical induction are, in fact, examples of deductive reasoning.[4]


History

In 370 BC, Plato's Parmenides may have contained an early example of an implicit inductive proof.[5] The earliest implicit traces of mathematical induction may be found in Euclid's[6] proof that the number of primes is infinite and in Bhaskara's "cyclic method".[7] An opposite iterated technique, counting _down_ rather than up, is found in the Sorites paradox, where it was argued that if 1,000,000 grains of sand formed a heap, and removing one grain from a heap left it a heap, then a single grain of sand (or even no grains) forms a heap.

An implicit proof by mathematical induction for arithmetic sequences was introduced in the AL-FAKHRI written by al-Karaji around 1000 AD, who used it to prove the binomial theorem and properties of Pascal's triangle.[8][9]

None of these ancient mathematicians, however, explicitly stated the induction hypothesis. Another similar case (contrary to what Vacca has written, as Freudenthal carefully showed) was that of Francesco Maurolico in his _Arithmeticorum libri duo_ (1575), who used the technique to prove that the sum of the first _n_ odd integers is _n_². The first explicit formulation of the principle of induction was given by Pascal in his _Traité du triangle arithmétique_ (1665). Another Frenchman, Fermat, made ample use of a related principle, indirect proof by infinite descent. The induction hypothesis was also employed by the Swiss Jakob Bernoulli, and from then on it became more or less well known. The modern rigorous and systematic treatment of the principle came only in the 19th century, with George Boole,[10] Augustus de Morgan, Charles Sanders Peirce, [11][12] Giuseppe Peano, and Richard Dedekind.[13]


Description

The simplest and most common form of mathematical induction infers that a statement involving a natural number _n_ holds for all values of _n_. The proof consists of two steps:

1.  The BASE CASE: prove that the statement holds for the first natural number _n₀_. Usually, _n_₀ = 0 or _n_₀ = 1; rarely, but sometimes conveniently, the base value of _n_₀ may be taken as a larger number, or even as a negative number (the statement only holds at and above that threshold), because these extensions do not disturb the property of being a well-ordered set.

2.  The STEP CASE or INDUCTIVE STEP: prove that for every _n_  ≥  _n_₀, if the statement holds for _n_, then it holds for _n_ + 1. In other words, assume the statement holds for some arbitrary natural number _n_  ≥  _n_₀, and prove that then the statement holds for _n_ + 1.

The hypothesis in the inductive step, that the statement holds for some _n_, is called the INDUCTION HYPOTHESIS or INDUCTIVE HYPOTHESIS. To prove the inductive step, one assumes the induction hypothesis and then uses this assumption, involving _n_, to prove the statement for _n_ + 1.

Whether _n_ = 0 or _n_ = 1 is taken as the standard base case depends on the preferred definition of the natural numbers. In the fields of combinatorics and mathematical logic it is common to consider 0 as a natural number.


Example

Mathematical induction can be used to prove that the following statement, _P_(_n_), holds for all natural numbers _n_.

$$0 + 1 + 2 + \cdots + n = \frac{n(n + 1)}{2}.$$

_P_(_n_) gives a formula for the sum of the natural numbers less than or equal to number _n_. The proof that _P_(_n_) is true for each natural number _n_ proceeds as follows.

BASE CASE: Show that the statement holds for _n_ = 0 (taking 0 as a natural).

_P_(0) is easily seen to be true:

$$0 = \frac{0\cdot(0 + 1)}{2}\,.$$
INDUCTIVE STEP: Show that _if_ _P_(_k_) holds, then also holds. This can be done as follows.

Assume _P_(_k_) holds (for some unspecified value of _k_). It must then be shown that holds, that is:

$$(0 + 1 + 2 + \cdots + k )+ (k+1) = \frac{(k+1)((k+1) + 1)}{2}.$$
Using the induction hypothesis that _P_(_k_) holds, the left-hand side can be rewritten to:

$$\frac{k(k + 1)}{2} + (k+1)\,.$$

Algebraically:



\begin{align} \frac{k(k + 1)}{2} + (k+1) & = \frac {k(k+1)+2(k+1)} 2 \\ & = \frac{(k+1)(k+2)}{2} \\ & = \frac{(k+1)((k+1) + 1)}{2} \end{align}

thereby showing that indeed holds.

Since both the base case and the inductive step have been performed, by mathematical induction the statement _P_(_n_) holds for all natural numbers _n_. Q.E.D.


Variants

In practice, proofs by induction are often structured differently, depending on the exact nature of the property to be proven.

Induction basis other than 0 or 1

If one wishes to prove a statement not for all natural numbers but only for all numbers _n_ greater than or equal to a certain number _b_, then the proof by induction consists of:

1.  Showing that the statement holds when _n_ = _b_.
2.  Showing that if the statement holds for some _n_ ≥ _b_ then the same statement also holds for _n_ + 1.

This can be used, for example, to show that for _n_ ≥ 3.

In this way, one can prove that some statement _P_(_n_) holds for all _n_ ≥ 1, or even _n_ ≥ −5. This form of mathematical induction is actually a special case of the previous form, because if the statement to be proved is _P_(_n_) then proving it with these two rules is equivalent with proving _P_(_n_ + _b_) for all natural numbers _n_ with an induction base case 0.[14]

Example: forming dollar amounts by coins

Assume an infinite supply of 4- and 5-dollar coins. Induction can be used to prove that any whole amount of dollars greater than or equal to 12 can be formed by a combination of such coins. The amount n is chosen to begin on 12 as the statement does not hold true for every lower number; in particular, it is violated for n = 11.

In more precise terms, we wish to show that for any amount n ≥ 12 there exist natural numbers a, b such that n = 4a + 5b, where 0 is included as a natural number. The statement to be shown is thus:

_S_(_n_):  _n_ ≥ 12 → ∃ _a_, _b_ ∈ ℕ.  _n_ = 4_a_ + 5_b_

BASE CASE: Showing that S(k) holds for k = 12 is trivial: let a = 3 and b = 0. Then, 4 ⋅ 3 + 5 ⋅ 0 = 12.

STEP CASE: Given that S(k) holds for some value of k ≥ 12 (_induction hypothesis_), prove that S(k + 1) holds, too. That is, given that k = 4a + 5b for some natural numbers a, b, prove that there exist natural numbers a₁, b₁ such that k + 1 = 4a₁ + 5b₁.

Here we need to consider two cases.

For the first case, assume that a ≥ 1. By some algebraic manipulation and by assumption, we see that in that case

    \begin{align}

k&=4a+5b\\ k+1&=4a+5b+1\\ &=4a+5b-4+5\\ &=4(a-1)+5(b+1)\\ &=4a_1+5b_1 \end{align}

where a₁ = a − 1 and b₁ = b + 1 are natural numbers.

This shows that to add 1 to the total amount—any amount whatsoever, so long as it is greater than 12—it is sufficient to remove a single 4-dollar coin while adding a 5-dollar coin. However, this construction fails in the case that a = 0, or in words, when there is no 4-dollar coin.

So it remains to prove the case a = 0. Then k = 5b ≥ 12, which implies that b ≥ 3.

    \begin{align}

k&=5b\\ k+1&=5b+1\\ &=5b-15+16\\ &=5(b-3)+4\cdot4\\ &=4\cdot4+5(b-3)\\ &=4a_1+5b_1 \end{align}

where a₁ = 4 and b₁ = b − 3 are again natural numbers.

The above calculation shows that in the case there are no 4-dollar coins, we can add 1 to the amount by removing three 5-dollar coins while adding four 4-dollar coins.

Thus, with the inductive step, we have shown that S(k) implies S(k + 1) for all natural numbers k ≥ 12, and the proof is complete. Q.E.D.

This proof cannot be modified to replace the minimum amount of 12 dollar to any lower value m: for m = 11, the base case is not provable, since there is no way to get 11 dollar by 4- and 5-dollar coins only; for m = 10, the second case in the induction step will not work any longer, since k = 5b ≥ 10 will not imply b ≥ 3; let alone for even lower m.

Induction on more than one counter

It is sometimes desirable to prove a statement involving two natural numbers, _n_ and _m_, by iterating the induction process. That is, one proves a base case and an inductive step for _n_, and in each of those proves a base case and an inductive step for _m_. See, for example, the proof of commutativity accompanying _addition of natural numbers_. More complicated arguments involving three or more counters are also possible.

Infinite descent

The method of infinite descent is a variation of mathematical induction which was used by Pierre de Fermat. It is used to show that some statement _Q_(_n_) is false for all natural numbers _n_. Its traditional form consists of showing that if _Q_(_n_) is true for some natural number _n_, it also holds for some strictly smaller natural number _m_. Because there are no infinite decreasing sequences of natural numbers, this situation would be impossible, showing by contradiction that _Q_(_n_) cannot be true for any _n_.

The validity of this method can be verified from the usual principle of mathematical induction. Using mathematical induction on the statement _P_(_n_) defined as "_Q_(_m_) is false for all natural numbers _m_ less than or equal to _n_", it follows that _P_(_n_) holds for all _n_, which means that _Q_(_n_) is false for every natural number _n_.

Prefix induction

The most common form of proof by mathematical induction requires proving in the inductive step that

∀_k_(_P_(_k_) → _P_(_k_ + 1))

whereupon the induction principle "automates" _n_ applications of this step in getting from _P_(0) to _P_(_n_). This could be called "predecessor induction" because each step proves something about a number from something about that number's predecessor.

A variant of interest in computational complexity is "prefix induction", in which one needs to prove

∀_k_(_P_(_k_) → _P_(2_k_) ∧ _P_(2_k_ + 1))

or equivalently

$$\forall k \left( P \left(\left\lfloor \frac{k}{2} \right\rfloor \right) \to P(k) \right)$$

The induction principle then "automates" log _n_ applications of this inference in getting from _P_(0) to _P_(_n_). (It is called "prefix induction" because each step proves something about a number from something about the "prefix" of that number formed by truncating the low bit of its binary representation. It can be viewed as an application of traditional induction on the length of that binary representation.)

If traditional predecessor induction is interpreted computationally as an _n_-step loop, prefix induction corresponds to a log _n_-step loop, and thus proofs using prefix induction are "more feasibly constructive" than proofs using predecessor induction.

Predecessor induction can trivially simulate prefix induction on the same statement. Prefix induction can simulate predecessor induction, but only at the cost of making the statement more syntactically complex (adding a bounded universal quantifier), so the interesting results relating prefix induction to polynomial-time computation depend on excluding unbounded quantifiers entirely, and limiting the alternation of bounded universal and existential quantifiers allowed in the statement.[15]

One can take the idea a step further: one must prove

$$\forall k \left( P \left( \left\lfloor \sqrt{k} \right\rfloor \right) \to P(k) \right)$$

whereupon the induction principle "automates" log log _n_ applications of this inference in getting from _P_(0) to _P_(_n_). This form of induction has been used, analogously, to study log-time parallel computation.

Complete (strong) induction

Another variant, called COMPLETE INDUCTION, COURSE OF VALUES INDUCTION or STRONG INDUCTION (in contrast to which the basic form of induction is sometimes known as WEAK INDUCTION) makes the inductive step easier to prove by using a stronger hypothesis: one proves the statement under the assumption that _P_(_n_) holds for ALL natural _n_ less than ; by contrast, the basic form only assumes _P_(_m_). The name "strong induction" does not mean that this method can prove more than "weak induction", but merely refers to the stronger hypothesis used in the inductive step; in fact the two methods are equivalent, as explained below. In this form of complete induction one still has to prove the base case, _P_(0), and it may even be necessary to prove extra base cases such as _P_(1) before the general argument applies, as in the example below of the Fibonacci number _F_(n)_.

Although the form just described requires one to prove the base case, this is unnecessary if one can prove _P_(_m_) (assuming _P_(_n_) for all lower _n_) for all . This is a special case of transfinite induction as described below. In this form the base case is subsumed by the case , where _P_(0) is proved with no other _P_(_n_) assumed; this case may need to be handled separately, but sometimes the same argument applies for _m_ = 0 and , making the proof simpler and more elegant. In this method it is, however, vital to ensure that the proof of _P_(_m_) does not implicitly assume that , e.g. by saying "choose an arbitrary " or assuming that a set of _m_ elements has an element.

Complete induction is equivalent to ordinary mathematical induction as described above, in the sense that a proof by one method can be transformed into a proof by the other. Suppose there is a proof of _P_(_n_) by complete induction. Let Q(_n_) mean "_P_(_m_) holds for all _m_ such that ". Then Q(_n_) holds for all _n_ if and only if P(_n_) holds for all _n_, and our proof of _P_(_n_) is easily transformed into a proof of Q(_n_) by (ordinary) induction. If, on the other hand, _P_(_n_) had been proven by ordinary induction, the proof would already effectively be one by complete induction: _P_(0) is proved in the base case, using no assumptions, and is proved in the inductive step, in which one may assume all earlier cases but need only use the case _P_(_n_).

Example: Fibonacci numbers

Complete induction is most useful when several instances of the inductive hypothesis are required for each inductive step. For example, complete induction can be used to show that

$$F_n = \frac{\varphi^n - \psi^n}{\varphi - \psi}$$
where _F_(n)_ is the _n_th Fibonacci number, (the golden ratio) and are the roots of the polynomial . By using the fact that for each , the identity above can be verified by direct calculation for if one assumes that it already holds for both _F__(_n_+1) and _F__(_n_). To complete the proof, the identity must be verified in the two base cases and .

Example: prime factorization

Another proof by complete induction uses the hypothesis that the statement holds for _all_ smaller _n_ more thoroughly. Consider the statement that "every natural number greater than 1 is a product of (one or more) prime numbers", which is the "existence" part of the fundamental theorem of arithmetic. For proving the inductive step, the induction hypothesis is that for a given the statement holds for all smaller . If _m_ is prime then it is certainly a product of primes, and if not, then by definition it is a product: , where neither of the factors is equal to 1; hence neither is equal to _m_, and so both are smaller than _m_. The induction hypothesis now applies to _n_₁ and _n_₂, so each one is a product of primes. Thus _m_ is a product of products of primes; therefore itself a product of primes.

Example: dollar amounts revisited

We shall look to prove the same example as above, this time with a variant called _strong induction_. The statement remains the same:

S(n):  n ≥ 12→ ∃ a, b ∈ ℕ.  n = 4a + 5b

However, there will be slight differences with the structure and assumptions of the proof. Let us begin with the base case.

BASE CASE: Show that S(k) holds for k = 12, 13, 14, 15.

    \begin{align}

4 \cdot 3+5 \cdot 0=12\\ 4 \cdot 2+5 \cdot 1=13\\ 4 \cdot 1+5 \cdot 2=14\\ 4 \cdot 0+5 \cdot 3=15 \end{align}

The base case holds.

INDUCTION HYPOTHESIS: Given some j > 15 such that S(m) holds for all m with 12 ≤ m < j.

INDUCTIVE STEP: Prove that S(j) holds.

Choosing m = j − 4, and observing that 15 < j → 12 ≤ j − 4 < j shows that S(j − 4) holds, by inductive hypothesis. That is, the sum j − 4 can be formed by some combination of 4 and 5 dollar coins. Then, simply adding a 4 dollar coin to that combination yields the sum j. That is, S(j) holds. Q.E.D.

Forward-backward induction

Sometimes it is more convenient to deduct backwards, proving the statement for n − 1, given its validity for n. However, proving the validity of the statement for no single number suffices to establish the base case; instead, one needs to prove the statement for an infinite subset of the natural numbers. For example, Augustin Louis Cauchy first used forward (regular) induction to prove the inequality of arithmetic and geometric means for all powers of 2, and then used backward induction to show it for all natural numbers.[16]


Example of error in the inductive step

The inductive step must be proved for all values of _n_. To illustrate this, Joel E. Cohen proposed the following argument, which purports to prove by mathematical induction that all horses are of the same color:[17]

-   Base case: In a set of only _one_ horse, there is only one color.
-   Inductive step: Assume as induction hypothesis that within any set of _n_ horses, there is only one color. Now look at any set of _n_ + 1 horses. Number them: 1, 2, 3, ..., _n_, _n_ + 1. Consider the sets {1, 2, 3, ..., _n_} and {2, 3, 4, ..., _n_ + 1}. Each is a set of only _n_ horses, therefore within each there is only one color. But the two sets overlap, so there must be only one color among all _n_ + 1 horses.

The base case _n_ = 1 is trivial (as any horse is the same color as itself), and the inductive step is correct in all cases _n_ > 1. However, the logic of the inductive step is incorrect for _n_ = 1, because the statement that "the two sets overlap" is false (there are only _n_ + 1 = 2 horses prior to either removal, and after removal the sets of one horse each do not overlap).


Formalization

In SECOND-ORDER LOGIC, we can write down the "axiom of induction" as follows:

    $\displaystyle\forall P\Bigl( P(0) \land \forall k \bigl( P(k) \to P(k+1)\bigr ) \to \forall n \bigl(P(n)\bigr)\Bigr)$,

where _P_(.) is a variable for predicates involving one natural number and _k_ and _n_ are variables for natural numbers.

In words, the base case _P_(0) and the inductive step (namely, that the induction hypothesis _P_(_k_) implies _P_(_k_ + 1)) together imply that _P_(_n_) for any natural number _n_. The axiom of induction asserts the validity of inferring that _P_(_n_) holds for any natural number _n_ from the base case and the inductive step.

Note that the first quantifier in the axiom ranges over _predicates_ rather than over individual numbers. This is a second-order quantifier, which means that this axiom is stated in second-order logic. Axiomatizing arithmetic induction in first-order logic requires an axiom schema containing a separate axiom for each possible predicate. The article Peano axioms contains further discussion of this issue.

The axiom of structural induction for the natural numbers was first formulated by Peano, who used it to specify the natural numbers together with four other axioms saying that (1) 0 is a natural number, (2) the successor function s of every natural number yields a natural number (s(x)=x+1), (3) the successor function is injective, and (4) 0 is not in the range of s.

In FIRST-ORDER ZFC SET THEORY, quantification over predicates is not allowed, but we can still phrase induction by quantification over sets:

    $\forall A \Bigl( 0 \in A \land \forall k \in \mathbb{N} \bigl( k \in A \to (k+1) \in A \bigr) \to \mathbb{N}\subseteq A\Bigr)$

A may be read as a set representing a proposition, and containing natural numbers, for which the proposition holds. This is not an axiom, but a theorem, given that natural numbers are defined in the language of ZFC set theory by axioms, analogous to Peano's.


Transfinite induction

The principle of complete induction is not only valid for statements about natural numbers, but for statements about elements of any well-founded set, that is, a set with an irreflexive relation < that contains no infinite descending chains. Any set of cardinal numbers is well-founded, which includes the set of natural numbers.

Applied to a well-founded set, it can be formulated as a single step:

1.  Show that if some statement holds for all , then the same statement also holds for _n_.

This form of induction, when applied to a set of ordinals (which form a well-ordered and hence well-founded class), is called _transfinite induction_. It is an important proof technique in set theory, topology and other fields.

Proofs by transfinite induction typically distinguish three cases:

1.  when _n_ is a minimal element, i.e. there is no element smaller than _n_;
2.  when _n_ has a direct predecessor, i.e. the set of elements which are smaller than _n_ has a largest element;
3.  when _n_ has no direct predecessor, i.e. _n_ is a so-called limit ordinal.

Strictly speaking, it is not necessary in transfinite induction to prove a base case, because it is a vacuous special case of the proposition that if _P_ is true of all , then _P_ is true of _m_. It is vacuously true precisely because there are no values of that could serve as counterexamples. So the special cases are special cases of the general case.


Equivalence with the well-ordering principle

The principle of mathematical induction is usually stated as an axiom of the natural numbers; see Peano axioms. However, it can be proved from the well-ordering principle. Indeed, suppose the following:

-   The set of natural numbers is well-ordered.
-   Every natural number is either 0, or for some natural .
-   For any natural number _n_, is greater .

To derive simple induction from these axioms, one must show that if _P_(_n_) is some proposition predicated of _n_ for which:

-   _P_(0) holds and
-   whenever _P_(_m_) is true then ) is also true,

then _P_(_n_) holds for all _n_.

_Proof._ Let _S_ be the set of all natural numbers for which _P_(_m_) is false. Let us see what happens if one asserts that _S_ is nonempty. Well-ordering tells us that _S_ has a least element, say _n_. Moreover, since _P_(0) is true, _n_ is not 0. Since every natural number is either 0 or some , there is some natural number _m_ such that . Now _m_ is less than _n_, and _n_ is the least element of _S_. It follows that _m_ is not in _S_, and so _P_(_m_) is true. This means that ) is true; in other words, _P_(_n_) is true. This is a contradiction, since _n_ was in _S_. Therefore, _S_ is empty.

It can also be proved that induction, given the other axioms, implies the well-ordering principle.

_Proof._ Suppose there exists a non-empty set, _S_, of naturals that has no least element. Let _P_(_n_) be the assertion that _n_ is not in _S_. Then _P_(0) is true, for if it were false then 0 is the least element of _S_. Furthermore, suppose _P_(1), _P_(2),..., _P_(_n_) are all true. Then if _P_(_n_+1) is false _n_+1 is in _S_, thus being a minimal element in _S_, a contradiction. Thus _P_(_n_+1) is true. Therefore, by the induction axiom, _P_(_n_) holds for all _n_, so _S_ is empty, a contradiction.


See also

-   Combinatorial proof
-   Recursion
-   Recursion (computer science)
-   Structural induction
-   Proof by exhaustion


Notes


References

Introduction

-   (Ch. 8.)

-   -   -   (Section 1.2.1: Mathematical Induction, pp. 11–21.)

-   (Section 3.8: Transfinite induction, pp. 28–29.)

History

-   -   -   -   -   -   Katz, Victor J. (1998). _History of Mathematics: An Introduction_. Addison-Wesley. .

-   Reprinted (CP 3.252-88), (W 4:299-309).

-   -   -   -   -   -   -

Mathematical_induction Category:Articles containing proofs

[1] Matt DeVos, _Mathematical Induction_, Simon Fraser University

[2] Gerardo con Diaz, _Mathematical Induction_, Harvard University

[3]

[4]

[5]

[6]

[7]

[8]

[9] Mathematical Knowledge and the Interplay of Practices "The earliest implicit proof by mathematical induction was given around 1000 in a work by the Persian mathematician Al-Karaji"

[10] "It is sometimes required to prove a theorem which shall be true whenever a certain quantity _n_ which it involves shall be an integer or whole number and the method of proof is usually of the following kind. _1st_. The theorem is proved to be true when _n_ = 1. _2ndly_. It is proved that if the theorem is true when _n_ is a given whole number, it will be true if _n_ is the next greater integer. Hence the theorem is true universally. . .. This species of argument may be termed a continued _sorites_" (Boole circa 1849 _Elementary Treatise on Logic not mathematical_ pages 40–41 reprinted in Grattan-Guinness, Ivor and Bornet, Gérard (1997), _George Boole: Selected Manuscripts on Logic and its Philosophy_, Birkhäuser Verlag, Berlin, )

[11]  Reprinted (CP 3.252-88), (W 4:299-309).

[12]

[13]

[14] Ted Sundstrom, _Mathematical Reasoning_, p. 190, Pearson, 2006,

[15]

[16] Cauchy, Augustin-Louis (1821). _Cours d'analyse de l'École Royale Polytechnique, première partie, Analyse algébrique,_ Paris. The proof of the inequality of arithmetic and geometric means can be found on pages 457ff.

[17] . Reprinted in _A Random Walk in Science_ (R. L. Weber, ed.), Crane, Russak & Co., 1973.