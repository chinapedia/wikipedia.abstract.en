In mathematics, a CAUCHY SEQUENCE (; ), named after Augustin-Louis Cauchy, is a sequence whose elements become arbitrarily close to each other as the sequence progresses.[1] More precisely, given any small positive distance, all but a finite number of elements of the sequence are less than that given distance from each other.

It is not sufficient for each term to become arbitrarily close to the term. For instance, in the sequence of square roots of natural numbers:

$$a_n=\sqrt n,$$
the consecutive terms become arbitrarily close to each other:

$$a_{n+1}-a_n = \sqrt{n+1}-\sqrt{n} = \frac{1}{\sqrt{n+1}+\sqrt{n}} < \frac{1}{2\sqrt n}.$$
However, with growing values of the index , the terms become arbitrarily large, so for any index and distance , there exists an index big enough such that . (Actually, any suffices.) As a result, despite how far one goes, the remaining terms of the sequence never get close to , hence the sequence is not Cauchy.

The utility of Cauchy sequences lies in the fact that in a complete metric space (one where all such sequences are known to converge to a limit), the criterion for convergence depends only on the terms of the sequence itself, as opposed to the definition of convergence, which uses the limit value as well as the terms. This is often exploited in algorithms, both theoretical and applied, where an iterative process can be shown relatively easily to produce a Cauchy sequence, consisting of the iterates, thus fulfilling a logical condition, such as termination.

The notions above are not as unfamiliar as they might at first appear. The customary acceptance of the fact that any real number _x_ has a decimal expansion is an implicit acknowledgment that a particular Cauchy sequence of rational numbers (whose terms are the successive truncations of the decimal expansion of _x_) has the real limit _x_. In some cases it may be difficult to describe _x_ independently of such a limiting process involving rational numbers.

Generalizations of Cauchy sequences in more abstract uniform spaces exist in the form of Cauchy filters and Cauchy nets.


In real numbers

A sequence

_x_₁, _x_₂, _x_₃, …

of real numbers is called a Cauchy sequence if for every positive real number _ε_, there is a positive integer _N_ such that for all natural numbers _m_, _n_ > _N_

|_x__(_m_) − _x__(_n_)| < _ε_,

where the vertical bars denote the absolute value. In a similar way one can define Cauchy sequences of rational or complex numbers. Cauchy formulated such a condition by requiring x_(m) − x_(n) to be infinitesimal for every pair of infinite _m_, _n_.


In a metric space

Since the definition of a Cauchy sequence only involves metric concepts, it is straightforward to generalize it to any metric space _X_. To do so, the absolute value |_x__(_m_) - _x__(_n_)| is replaced by the distance _d_(_x__(_m_), _x__(_n_)) (where _d_ denotes a metric) between _x__(_m_) and _x__(_n_).

Formally, given a metric space (_X_, _d_), a sequence

    _x_₁, _x_₂, _x_₃, ...

is Cauchy, if for every positive real number _ε_ > 0 there is a positive integer _N_ such that for all positive integers _m_, _n_ > _N_, the distance

    _d_(_x__(_m_), _x__(_n_)) < _ε_.

Roughly speaking, the terms of the sequence are getting closer and closer together in a way that suggests that the sequence ought to have a limit in _X_. Nonetheless, such a limit does not always exist within _X_: the property of a space that every Cauchy sequence converges in the space is called _completeness_, and is detailed below.


Completeness

A metric space (_X_, _d_) in which every Cauchy sequence converges to an element of _X_ is called complete.

Examples

The real numbers are complete under the metric induced by the usual absolute value, and one of the standard constructions of the real numbers involves Cauchy sequences of rational numbers. In this construction, each equivalence class of Cauchy sequences of rational numbers with a certain tail behavior—that is, each class of sequences that get arbitrarily close to one another— is a real number.

A rather different type of example is afforded by a metric space _X_ which has the discrete metric (where any two distinct points are at distance 1 from each other). Any Cauchy sequence of elements of _X_ must be constant beyond some fixed point, and converges to the eventually repeating term.

Counter-example: rational numbers

The rational numbers Q are not complete (for the usual distance):
There are sequences of rationals that converge (in R) to irrational numbers; these are Cauchy sequences having no limit in Q. In fact, if a real number _x_ is irrational, then the sequence (_x__(_n_)), whose _n_-th term is the truncation to _n_ decimal places of the decimal expansion of _x_, gives a Cauchy sequence of rational numbers with irrational limit _x_. Irrational numbers certainly exist in R, for example:

-   The sequence defined by $x_0=1, x_{n+1}=\frac{x_n+\frac{2}{x_n}}{2}$ consists of rational numbers (1, 3/2, 17/12,...), which is clear from the definition; however it converges to the irrational square root of two, see Babylonian method of computing square root.
-   The sequence x_(n) = F_(n)/F_(n − 1) of ratios of consecutive Fibonacci numbers which, if it converges at all, converges to a limit ϕ satisfying ϕ² = ϕ + 1, and no rational number has this property. If one considers this as a sequence of real numbers, however, it converges to the real number $\varphi = (1+\sqrt5)/2$, the Golden ratio, which is irrational.
-   The values of the exponential, sine and cosine functions, exp(_x_), sin(_x_), cos(_x_), are known to be irrational for any rational value of _x_≠0, but each can be defined as the limit of a rational Cauchy sequence, using, for instance, the Maclaurin series.

Counter-example: open interval

The open interval X = (0, 2) in the set of real numbers with an ordinary distance in R is not a complete space: there is a sequence x_(n) = 1/n in it, which is Cauchy (for arbitrarily small distance bound d > 0 all terms x_(n) of n > 1/d fit in the (0, d) interval), however does not converge in X — its 'limit', number 0, does not belong to the space X.

Other properties

-   Every convergent sequence (with limit _s_, say) is a Cauchy sequence, since, given any real number _ε_ > 0, beyond some fixed point, every term of the sequence is within distance _ε_/2 of _s_, so any two terms of the sequence are within distance _ε_ of each other.
-   In any metric space, a Cauchy sequence is bounded (since for some _N_, all terms of the sequence from the _N_-th onwards are within distance 1 of each other, and if _M_ is the largest distance between and any terms up to the _N_-th, then no term of the sequence has distance greater than from ).
-   In any metric space, a Cauchy sequence which has a convergent subsequence with limit _s_ is itself convergent (with the same limit), since, given any real number _r_ > 0, beyond some fixed point in the original sequence, every term of the subsequence is within distance _r_/2 of _s_, and any two terms of the original sequence are within distance _r_/2 of each other, so every term of the original sequence is within distance _r_ of _s_.

These last two properties, together with the Bolzano–Weierstrass theorem, yield one standard proof of the completeness of the real numbers, closely related to both the Bolzano–Weierstrass theorem and the Heine–Borel theorem. Every Cauchy sequence of real numbers is bounded, hence by Bolzano-Weierstrass has a convergent subsequence, hence is itself convergent. This proof of the completeness of the real numbers implicitly makes use of the least upper bound axiom. The alternative approach, mentioned above, of the real numbers as the completion of the rational numbers, makes the completeness of the real numbers tautological.

One of the standard illustrations of the advantage of being able to work with Cauchy sequences and make use of completeness is provided by consideration of the summation of an infinite series of real numbers (or, more generally, of elements of any complete normed linear space, or Banach space). Such a series $\sum_{n=1}^{\infty} x_{n}$ is considered to be convergent if and only if the sequence of partial sums (s_(m)) is convergent, where $s_{m} = \sum_{n=1}^{m} x_{n}$. It is a routine matter to determine whether the sequence of partial sums is Cauchy or not, since for positive integers _p_ > _q_,

$$s_{p} - s_{q} = \sum_{n=q+1}^{p} x_{n}.$$

If f: M → N is a uniformly continuous map between the metric spaces _M_ and _N_ and (_x__(_n_)) is a Cauchy sequence in _M_, then (f(x_(n))) is a Cauchy sequence in _N_. If (x_(n)) and (y_(n)) are two Cauchy sequences in the rational, real or complex numbers, then the sum (x_(n) + y_(n)) and the product (x_(n)y_(n)) are also Cauchy sequences.


Generalizations

In topological vector spaces

There is also a concept of Cauchy sequence for a topological vector space X: Pick a local base B for X about 0; then (x_(k)) is a Cauchy sequence if for each member V ∈ B, there is some number N such that whenever n, m > N, x_(n) − x_(m) is an element of V. If the topology of X is compatible with a translation-invariant metric d, the two definitions agree.

In topological groups

Since the topological vector space definition of Cauchy sequence requires only that there be a continuous "subtraction" operation, it can just as well be stated in the context of a topological group: A sequence (x_(k)) in a topological group G is a Cauchy sequence if for every open neighbourhood U of the identity in G there exists some number N such that whenever m, n > N it follows that x_(n)x_(m)^( − 1) ∈ U. As above, it is sufficient to check this for the neighbourhoods in any local base of the identity in G.

As in the construction of the completion of a metric space, one can furthermore define the binary relation on Cauchy sequences in G that (x_(k)) and (y_(k)) are equivalent if for every open neighbourhood U of the identity in G there exists some number N such that whenever m, n > N it follows that x_(n)y_(m)^( − 1) ∈ U. This relation is an equivalence relation: It is reflexive since the sequences are Cauchy sequences. It is symmetric since y_(n)x_(m)^( − 1) = (x_(m)y_(n)^( − 1))^( − 1) ∈ U^( − 1) which by continuity of the inverse is another open neighbourhood of the identity. It is transitive since x_(n)z_(l)^( − 1) = x_(n)y_(m)^( − 1)y_(m)z_(l)^( − 1) ∈ U′U″ where U′ and U″ are open neighbourhoods of the identity such that U′U″ ⊆ U; such pairs exist by the continuity of the group operation.

In groups

There is also a concept of Cauchy sequence in a group G: Let H = (H_(r)) be a decreasing sequence of normal subgroups of G of finite index. Then a sequence (x_(n)) in G is said to be Cauchy (w.r.t. H) if and only if for any r there is N such that ∀m, n > N, x_(n)x_(m)^( − 1) ∈ H_(r).

Technically, this is the same thing as a topological group Cauchy sequence for a particular choice of topology on G, namely that for which H is a local base.

The set C of such Cauchy sequences forms a group (for the componentwise product), and the set C₀ of null sequences (s.th. ∀r, ∃N, ∀n > N, x_(n) ∈ H_(r)) is a normal subgroup of C. The factor group C/C₀ is called the completion of G with respect to H.

One can then show that this completion is isomorphic to the inverse limit of the sequence (G/H_(r)).

An example of this construction, familiar in number theory and algebraic geometry is the construction of the _p_-adic completion of the integers with respect to a prime _p_. In this case, _G_ is the integers under addition, and _H__(_r_) is the additive subgroup consisting of integer multiples of _p_^(_r_).

If H is a cofinal sequence (i.e., any normal subgroup of finite index contains some H_(r)), then this completion is canonical in the sense that it is isomorphic to the inverse limit of (G/H)_(H), where H varies over normal subgroups of finite index. For further details, see ch. I.10 in Lang's "Algebra".

In constructive mathematics

In constructive mathematics, Cauchy sequences often must be given with a _modulus of Cauchy convergence_ to be useful. If (x₁, x₂, x₃, ...) is a Cauchy sequence in the set X, then a modulus of Cauchy convergence for the sequence is a function α from the set of natural numbers to itself, such that ∀k∀m, n > α(k), |x_(m) − x_(n)| < 1/k.

Clearly, any sequence with a modulus of Cauchy convergence is a Cauchy sequence. The converse (that every Cauchy sequence has a modulus) follows from the well-ordering property of the natural numbers (let α(k) be the smallest possible N in the definition of Cauchy sequence, taking r to be 1/k). However, this well-ordering property does not hold in constructive mathematics (it is equivalent to the principle of excluded middle). On the other hand, this converse also follows (directly) from the principle of dependent choice (in fact, it will follow from the weaker AC₀₀), which is generally accepted by constructive mathematicians. Thus, moduli of Cauchy convergence are needed directly only by constructive mathematicians who (like Fred Richman) do not wish to use any form of choice.

That said, using a modulus of Cauchy convergence can simplify both definitions and theorems in constructive analysis. Perhaps even more useful are _regular Cauchy sequences_, sequences with a given modulus of Cauchy convergence (usually α(k) = k or α(k) = 2^(k)). Any Cauchy sequence with a modulus of Cauchy convergence is equivalent (in the sense used to form the completion of a metric space) to a regular Cauchy sequence; this can be proved without using any form of the axiom of choice. Regular Cauchy sequences were used by Errett Bishop in his Foundations of Constructive Analysis, but they have also been used by Douglas Bridges in a non-constructive textbook (). However, Bridges also works on mathematical constructivism; the concept has not spread far outside of that milieu.

In a hyperreal continuum

A real sequence ⟨u_(n) : n ∈ ℕ⟩ has a natural hyperreal extension, defined for hypernatural values _H_ of the index _n_ in addition to the usual natural _n_. The sequence is Cauchy if and only if for every infinite _H_ and _K_, the values u_(H) and u_(K) are infinitely close, or adequal, i.e.

 _s__t_(_u__(_H_) − _u__(_K_)) = 0
where "st" is the standard part function.

Cauchy completion of categories

introduced a notion of Cauchy completion of a category. Applied to Q (the category whose objects are rational numbers, and there is a morphism from _x_ to _y_ if and only if _x_ ≤ _y_), this Cauchy completion yields R (again interpreted as a category using its natural ordering).


See also

-   Modes of convergence (annotated index)
-   Dedekind cut


References


Further reading

-   -   -   -   -   (for uses in constructive mathematics)


External links

-

Category:Metric geometry Category:Topology Category:Abstract algebra Category:Sequences and series Category:Convergence (mathematics)

[1] Lang, Serge (1993), Algebra (Third ed.), Reading, Mass.: Addison-Wesley Pub. Co., ,