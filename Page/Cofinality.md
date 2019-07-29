In mathematics, especially in order theory, the COFINALITY cf(_A_) of a partially ordered set _A_ is the least of the cardinalities of the cofinal subsets of _A_.

This definition of cofinality relies on the axiom of choice, as it uses the fact that every non-empty set of cardinal numbers has a least member. The cofinality of a partially ordered set _A_ can alternatively be defined as the least ordinal _x_ such that there is a function from _x_ to _A_ with cofinal image. This second definition makes sense without the axiom of choice. If the axiom of choice is assumed, as will be the case in the rest of this article, then the two definitions are equivalent.

Cofinality can be similarly defined for a directed set and is used to generalize the notion of a subsequence in a net.


Examples

-   The cofinality of a partially ordered set with greatest element is 1 as the set consisting only of the greatest element is cofinal (and must be contained in every other cofinal subset).
    -   In particular, the cofinality of any nonzero finite ordinal, or indeed any finite directed set, is 1, since such sets have a greatest element.
-   Every cofinal subset of a partially ordered set must contain all maximal elements of that set. Thus the cofinality of a finite partially ordered set is equal to the number of its maximal elements.
    -   In particular, let _A_ be a set of size _n_, and consider the set of subsets of _A_ containing no more than _m_ elements. This is partially ordered under inclusion and the subsets with _m_ elements are maximal. Thus the cofinality of this poset is _n_ choose _m_.
-   A subset of the natural numbers N is cofinal in N if and only if it is infinite, and therefore the cofinality of ℵ₀ is ℵ₀. Thus ℵ₀ is a regular cardinal.
-   The cofinality of the real numbers with their usual ordering is ℵ₀, since N is cofinal in R. The usual ordering of R is not order isomorphic to _c_, the cardinality of the real numbers, which has cofinality strictly greater than ℵ₀. This demonstrates that the cofinality depends on the order; different orders on the same set may have different cofinality.


Properties

If _A_ admits a totally ordered cofinal subset, then we can find a subset _B_ which is well-ordered and cofinal in _A_. Any subset of _B_ is also well-ordered. If two cofinal subsets of _B_ have minimal cardinality (i.e. their cardinality is the cofinality of _B_), then they are order isomorphic to each other.


Cofinality of ordinals and other well-ordered sets

The COFINALITY OF AN ORDINAL α is the smallest ordinal δ which is the order type of a cofinal subset of α. The cofinality of a set of ordinals or any other well-ordered set is the cofinality of the order type of that set.

Thus for a limit ordinal α, there exists a δ-indexed strictly increasing sequence with limit α. For example, the cofinality of ω² is ω, because the sequence ω·_m_ (where _m_ ranges over the natural numbers) tends to ω²; but, more generally, any countable limit ordinal has cofinality ω. An uncountable limit ordinal may have either cofinality ω as does ω_(ω) or an uncountable cofinality.

The cofinality of 0 is 0. The cofinality of any successor ordinal is 1. The cofinality of any nonzero limit ordinal is an infinite regular cardinal.


Regular and singular ordinals

A REGULAR ORDINAL is an ordinal which is equal to its cofinality. A SINGULAR ORDINAL is any ordinal which is not regular.

Every regular ordinal is the initial ordinal of a cardinal. Any limit of regular ordinals is a limit of initial ordinals and thus is also initial but need not be regular. Assuming the axiom of choice, ω_(α + 1) is regular for each α. In this case, the ordinals 0, 1, ω, ω₁, and ω₂ are regular, whereas 2, 3, ω_(ω), and ω_(ω·2) are initial ordinals which are not regular.

The cofinality of any ordinal _α_ is a regular ordinal, i.e. the cofinality of the cofinality of _α_ is the same as the cofinality of _α_. So the cofinality operation is idempotent.


Cofinality of cardinals

If κ is an infinite cardinal number, then cf(κ) is the least cardinal such that there is an unbounded function from cf(κ) to κ; cf(κ) is also the cardinality of the smallest set of strictly smaller cardinals whose sum is κ; more precisely

_c__f_(_κ_) = min {_c__a__r__d_(_I_) | _κ_=∑_(_i_ ∈ _I_)_λ__(_i_) _a__n__d_ (∀_i_)(_λ__(_i_)<_κ_)}

That the set above is nonempty comes from the fact that

_κ_ = ⋃_(_i_ ∈ _κ_){_i_}

i.e. the disjoint union of κ singleton sets. This implies immediately that cf(κ) ≤ κ. The cofinality of any totally ordered set is regular, so one has cf(κ) = cf(cf(κ)).

Using König's theorem, one can prove κ < κ^(cf(κ)) and κ < cf(2^(κ)) for any infinite cardinal κ.

The last inequality implies that the cofinality of the cardinality of the continuum must be uncountable. On the other hand,

ℵ_(_ω_) = ⋃_(_n_ < _ω_)ℵ_(_n_)
.

the ordinal number ω being the first infinite ordinal, so that the cofinality of ℵ_(ω) is card(ω) = ℵ₀. (In particular, ℵ_(ω) is singular.) Therefore,

2^(ℵ₀) ≠ ℵ_(_ω_).

(Compare to the continuum hypothesis, which states 2^(ℵ₀) = ℵ₁.)

Generalizing this argument, one can prove that for a limit ordinal δ

_c__f_(ℵ_(_δ_)) = _c__f_(_δ_)
.

On the other hand, if the axiom of choice holds, then for a successor or zero ordinal δ

_c__f_(ℵ_(_δ_)) = ℵ_(_δ_)
.


See also

-   Initial ordinal


References

-   Jech, Thomas, 2003. _Set Theory: The Third Millennium Edition, Revised and Expanded_. Springer. .
-   Kunen, Kenneth, 1980. _Set Theory: An Introduction to Independence Proofs_. Elsevier. .

Category:Order theory Category:Set theory Category:Ordinal numbers Category:Cardinal numbers