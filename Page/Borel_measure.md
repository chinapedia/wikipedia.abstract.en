In mathematics, specifically in measure theory, a BOREL MEASURE on a topological space is a measure that is defined on all open sets (and thus on all Borel sets).[1] Some authors require additional restrictions on the measure, as described below.


Formal definition

Let X be a locally compact Hausdorff space, and let 𝔅(X) be the smallest σ-algebra that contains the open sets of X; this is known as the σ-algebra of Borel sets. A BOREL MEASURE is any measure μ defined on the σ-algebra of Borel sets.[2] Some authors require in addition that μ is locally compact, meaning that μ(C) < ∞ for every compact set C. If a Borel measure μ is both inner regular and outer regular, it is called a REGULAR BOREL MEASURE (some authors also require it to be tight). If μ is both inner regular and locally finite, it is called a Radon measure.


On the real line

The real line ℝ with its usual topology is a locally compact Hausdorff space, hence we can define a Borel measure on it. In this case, 𝔅(ℝ) is the smallest σ-algebra that contains the open intervals of ℝ. While there are many Borel measures μ, the choice of Borel measure which assigns μ((a, b]) = b − a for every half-open interval (a, b] is sometimes called "the" Borel measure on ℝ. This measure turns out to be the restriction on the Borel σ-algebra of the Lebesgue measure λ, which is a complete measure and is defined on the Lebesgue σ-algebra. The Lebesgue σ-algebra is actually the _completion_ of the Borel σ-algebra, which means that it is the smallest σ-algebra which contains all the Borel sets and has a complete measure on it. Also, the Borel measure and the Lebesgue measure coincide on the Borel sets (i.e., λ(E) = μ(E) for every Borel measurable set, where μ is the Borel measure described above).


Product spaces

If _X_ and _Y_ are second-countable, Hausdorff topological spaces, then the set of Borel subsets B(X × Y) of their product coincides with the product of the sets B(X) × B(Y) of Borel subsets of _X_ and _Y_.[3] That is, the Borel functor

    BOR: TOP_(2CHaus) → MEAS

from the category of second-countable Hausdorff spaces to the category of measurable spaces preserves finite products.


Applications

Lebesgue–Stieltjes integral

The Lebesgue–Stieltjes integral is the ordinary Lebesgue integral with respect to a measure known as the Lebesgue–Stieltjes measure, which may be associated to any function of bounded variation on the real line. The Lebesgue–Stieltjes measure is a regular Borel measure, and conversely every regular Borel measure on the real line is of this kind.[4]

Laplace transform

One can define the Laplace transform of a finite Borel measure μ on the real line by the Lebesgue integral[5]

    (ℒμ)(s) = ∫_([0, ∞))e^( − st) dμ(t).

An important special case is where μ is a probability measure or, even more specifically, the Dirac delta function. In operational calculus, the Laplace transform of a measure is often treated as though the measure came from a distribution function _f_. In that case, to avoid potential confusion, one often writes

    (ℒf)(s) = ∫_(0^(−))^(∞)e^( − st)f(t) dt

where the lower limit of 0^(−) is shorthand notation for

    lim_(ε ↓ 0)∫_( − ε)^(∞).

This limit emphasizes that any point mass located at 0 is entirely captured by the Laplace transform. Although with the Lebesgue integral, it is not necessary to take such a limit, it does appear more naturally in connection with the Laplace–Stieltjes transform.

Hausdorff dimension and Frostman's lemma

Given a Borel measure μ on a metric space _X_ such that μ(_X_) > 0 and μ(_B_(_x_, _r_)) ≤ _r^(s)_ holds for some constant _s_ > 0 and for every ball _B_(_x_, _r_) in _X_, then the Hausdorff dimension dim_(Haus)(_X_) ≥ _s_. A partial converse is provided by Frostman's lemma:[6]

LEMMA: Let _A_ be a Borel subset of R^(_n_), and let _s_ > 0. Then the following are equivalent:

-   _H_^(_s_)(_A_) > 0, where _H_^(_s_) denotes the _s_-dimensional Hausdorff measure.
-   There is an (unsigned) Borel measure _μ_ satisfying _μ_(_A_) > 0, and such that

_μ_(_B_(_x_, _r_)) ≤ _r_^(_s_)

    holds for all _x_ ∈ R^(_n_) and _r_ > 0.

Cramér–Wold theorem

The Cramér–Wold theorem in measure theory states that a Borel probability measure on R^(k) is uniquely determined by the totality of its one-dimensional projections.[7] It is used as a method for proving joint convergence results. The theorem is named after Harald Cramér and Herman Ole Andreas Wold.


References


Further reading

-   Gaussian measure, a finite-dimensional Borel measure
-   .

-   -   -   -   Wiener's lemma related


External links

-   Borel measure at Encyclopedia of Mathematics

Category:Measures (measure theory)

[1] D. H. Fremlin, 2000. _Measure Theory _. Torres Fremlin.

[2]

[3] Vladimir I. Bogachev. Measure Theory, Volume 1. Springer Science & Business Media, Jan 15, 2007

[4]

[5]

[6]

[7] K. Stromberg, 1994. _Probability Theory for Analysts_. Chapman and Hall.