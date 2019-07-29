In mathematical analysis, a NULL SET N ⊂ ℝ is a set that can be covered by a countable union of intervals of arbitrarily small total length. The notion of null set in set theory anticipates the development of Lebesgue measure since a null set necessarily has MEASURE ZERO. More generally, on a given measure space M = (X, Σ, μ) a null set is a set S ⊂ X such that μ(S) = 0.


Definition

Suppose A is a subset of the real line ℝ such that

$$\forall \varepsilon > 0, \exists \left\{U_n\right\}\left(A \subset \bigcup_{n = 1}^\infty U_n \ \land\ \sum_{n = 1}^\infty \left|U_n\right| < \varepsilon\right)$$

where the _U__(n) are intervals and |_U_| is the length of _U_, then _A_ is a null set.[1] Also known as a set of zero-content.

In terminology of mathematical analysis, this definition requires that there be a sequence of open covers of _A_ for which the limit of the lengths of the covers is zero.

Null sets include all finite sets, all countable sets, and even some uncountable sets such as the Cantor set.


Properties

The empty set is always a null set. More generally, any countable union of null sets is null. Any measurable subset of a null set is itself a null set. Together, these facts show that the _m_-null sets of _X_ form a sigma-ideal on _X_. Similarly, the measurable _m_-null sets form a sigma-ideal of the sigma-algebra of measurable sets. Thus, null sets may be interpreted as negligible sets, defining a notion of almost everywhere.


Lebesgue measure

The Lebesgue measure is the standard way of assigning a length, area or volume to subsets of Euclidean space.

A subset _N_ of ℝ has null Lebesgue measure and is considered to be a null set in ℝ if and only if:

    Given any positive number _ε_, there is a sequence {_I__(_n_)} of intervals in ℝ such that _N_ is contained in the union of the {_I__(_n_)} and the total length of the union is less than _ε_.

This condition can be generalised to ℝ^(n), using _n_-cubes instead of intervals. In fact, the idea can be made to make sense on any Riemannian manifold, even if there is no Lebesgue measure there.

For instance:

-   With respect to ℝ^(n), all 1-point sets are null, and therefore all countable sets are null. In particular, the set Q of rational numbers is a null set, despite being dense in ℝ.
-   The standard construction of the Cantor set is an example of a null uncountable set in ℝ; however other constructions are possible which assign the Cantor set any measure whatsoever.
-   All the subsets of ℝ^(n) whose dimension is smaller than _n_ have null Lebesgue measure in ℝ^(n). For instance straight lines or circles are null sets in ℝ².
-   Sard's lemma: the set of critical values of a smooth function has measure zero.

If λ is Lebesgue measure for ℝ and π is Lebesgue measure for ℝ², then the product measure λ × λ = π. In terms of null sets, the following equivalence has been styled a Fubini's theorem:[2]

-   For A ⊂ ℝ² and $A_x = \{y : (x , y) \isin A \} ,$

        (π(A) = 0) ≡ λ({x:λ(A_(x))>0}) = 0.


Uses

Null sets play a key role in the definition of the Lebesgue integral: if functions _f_ and _g_ are equal except on a null set, then _f_ is integrable if and only if _g_ is, and their integrals are equal.

A measure in which all subsets of null sets are measurable is _complete_. Any non-complete measure can be completed to form a complete measure by asserting that subsets of null sets have measure zero. Lebesgue measure is an example of a complete measure; in some constructions, it is defined as the completion of a non-complete Borel measure.

A subset of the Cantor set which is not Borel measurable

The Borel measure is not complete. One simple construction is to start with the standard Cantor set _K_, which is closed hence Borel measurable, and which has measure zero, and to find a subset _F_ of _K_ which is not Borel measurable. (Since the Lebesgue measure is complete, this _F_ is of course Lebesgue measurable.)

First, we have to know that every set of positive measure contains a nonmeasurable subset. Let _f_ be the Cantor function, a continuous function which is locally constant on _K^(c)_, and monotonically increasing on [0, 1], with _f_(0) = 0 and _f_(1) = 1. Obviously, _f_(_K^(c)_) is countable, since it contains one point per component of _K^(c)_. Hence _f_(_K^(c)_) has measure zero, so _f_(_K_) has measure one. We need a strictly monotonic function, so consider _g_(_x_) = _f_(_x_) + _x_. Since _g_(_x_) is strictly monotonic and continuous, it is a homeomorphism. Furthermore, _g_(_K_) has measure one. Let _E_ ⊂ _g_(_K_) be non-measurable, and let _F_ = _g_^(−1)(_E_). Because _g_ is injective, we have that _F_ ⊂ _K_, and so _F_ is a null set. However, if it were Borel measurable, then _g_(_F_) would also be Borel measurable (here we use the fact that the preimage of a Borel set by a continuous function is measurable; _g_(_F_) = (_g_^(−1))^(−1)(_F_) is the preimage of _F_ through the continuous function _h_ = _g_^(−1).) Therefore, _F_ is a null, but non-Borel measurable set.


Haar null

In a separable Banach space (_X_, +), the group operation moves any subset _A_ ⊂ _X_ to the translates _A_ + _x_ for any _x_ ∈ _X_. When there is a probability measure μ on the σ-algebra of Borel subsets of _X_, such that for all _x_, μ(_A_ + _x_) = 0, then _A_ is a HAAR NULL SET.[3]

The term refers to the null invariance of the measures of translates, associating it with the complete invariance found with Haar measure.

Some algebraic properties of topological groups have been related to the size of subsets and Haar null sets.[4] Haar null sets have been used in Polish groups to show that when _A_ is not a meagre set then _A_^(−1)_A_ contains an open neighborhood of the identity element.[5] This property is named for Hugo Steinhaus since it is the conclusion of the Steinhaus theorem.


See also

-   Cantor function
-   Measure (mathematics)
-   Empty set


References


Further reading

-   -   -

Category:Measure theory Category:Set theory

[1]

[2]

[3]

[4]

[5]