In mathematical analysis and in probability theory, a Σ-ALGEBRA (also Σ-FIELD) on a set _X_ is a collection Σ of subsets of _X_ that includes _X_ itself, is closed under complement, and is closed under countable unions.

The definition implies that it also includes the empty subset and that it is closed under countable intersections.

The pair (_X_, Σ) is called a measurable space or Borel space.

A σ-algebra is a type of algebra of sets. An algebra of sets needs only to be closed under the union or intersection of _finitely_ many subsets, which is a weaker condition.[1]

The main use of σ-algebras is in the definition of measures; specifically, the collection of those subsets for which a given measure is defined is necessarily a σ-algebra. This concept is important in mathematical analysis as the foundation for Lebesgue integration, and in probability theory, where it is interpreted as the collection of events which can be assigned probabilities. Also, in probability, σ-algebras are pivotal in the definition of conditional expectation.

In statistics, (sub) σ-algebras are needed for the formal mathematical definition of a sufficient statistic,[2] particularly when the statistic is a function or a random process and the notion of conditional density is not applicable.

If {_a_, _b_, _c_, _d_},}} one possible σ-algebra on _X_ is { ∅, {_a_, _b_}, {_c_, _d_}, {_a_, _b_, _c_, _d_} },}} where ∅ is the empty set. In general, a finite algebra is always a σ-algebra.

If {_A_₁, _A_₂, _A_₃, …} is a countable partition of _X_ then the collection of all unions of sets in the partition (including the empty set) is a σ-algebra.

A more useful example is the set of subsets of the real line formed by starting with all open intervals and adding in all countable unions, countable intersections, and relative complements and continuing this process (by transfinite iteration through all countable ordinals) until the relevant closure properties are achieved - the σ-algebra produced by this process is known as the Borel algebra on the real line, and can also be conceived as the smallest (i.e. "coarsest") σ-algebra containing all the open sets, or equivalently containing all the closed sets. It is foundational to measure theory, and therefore modern probability theory, and a related construction known as the Borel hierarchy is of relevance to descriptive set theory.


Motivation

There are at least three key motivators for σ-algebras: defining measures, manipulating limits of sets, and managing partial information characterized by sets.

Measure

A measure on _X_ is a function that assigns a non-negative real number to subsets of _X_; this can be thought of as making precise a notion of "size" or "volume" for sets. We want the size of the union of disjoint sets to be the sum of their individual sizes, even for an infinite sequence of disjoint sets.

One would like to assign a size to _every_ subset of _X_, but in many natural settings, this is not possible. For example, the axiom of choice implies that, when the size under consideration is the ordinary notion of length for subsets of the real line, then there exist sets for which no size exists, for example, the Vitali sets. For this reason, one considers instead a smaller collection of privileged subsets of _X_. These subsets will be called the measurable sets. They are closed under operations that one would expect for measurable sets; that is, the complement of a measurable set is a measurable set and the countable union of measurable sets is a measurable set. Non-empty collections of sets with these properties are called σ-algebras.

Limits of sets

Many uses of measure, such as the probability concept of almost sure convergence, involve limits of sequences of sets. For this, closure under countable unions and intersections is paramount. Set limits are defined as follows on σ-algebras.

-   The limit supremum of a sequence _A_₁, _A_₂, _A_₃, ..., each of which is a subset of _X_, is

$$\limsup_{n\to\infty}A_n = \bigcap_{n=1}^\infty\bigcup_{m=n}^\infty A_m.$$

-   The limit infimum of a sequence _A_₁, _A_₂, _A_₃, ..., each of which is a subset of _X_, is

$$\liminf_{n\to\infty}A_n = \bigcup_{n=1}^\infty\bigcap_{m=n}^\infty A_m.$$

-   If, in fact,

liminf_(_n_ → ∞)_A__(_n_) = limsup_(_n_ → ∞)_A__(_n_),

    then the lim_(n → ∞)A_(n) exists as that common set.

Sub σ-algebras

In much of probability, especially when conditional expectation is involved, one is concerned with sets that represent only part of all the possible information that can be observed. This partial information can be characterized with a smaller σ-algebra which is a subset of the principal σ-algebra; it consists of the collection of subsets relevant only to and determined only by the partial information. A simple example suffices to illustrate this idea.

Imagine you and another person are betting on a game that involves flipping a coin repeatedly and observing whether it comes up Heads (_H_) or Tails (_T_). Since you and your opponent are each infinitely wealthy, there is no limit to how long the game can last. This means the sample space Ω must consist of all possible infinite sequences of _H_ or _T_:

_Ω_ = {_H_, _T_}^(∞) = {(_x_₁, _x_₂, _x_₃, …) : _x__(_i_) ∈ {_H_, _T_}, _i_ ≥ 1}.

However, after _n_ flips of the coin, you may want to determine or revise your betting strategy in advance of the next flip. The observed information at that point can be described in terms of the 2^(n) possibilities for the first _n_ flips. Formally, since you need to use subsets of Ω, this is codified as the σ-algebra

𝒢_(_n_) = {_A_ × {_H_, _T_}^(∞) : _A_ ⊂ {_H_, _T_}^(_n_)}.

Observe that then

𝒢₁ ⊂ 𝒢₂ ⊂ 𝒢₃ ⊂ ⋯ ⊂ 𝒢_(∞),

where 𝒢_(∞) is the smallest σ-algebra containing all the others.


Definition and properties

Definition

Let _X_ be some set, and let 𝒫(X) represent its power set. Then a subset Σ ⊆ 𝒫(X) is called a _Σ_-ALGEBRA if it satisfies the following three properties:[3]

1.  _X_ is in Σ, and _X_ is considered to be the universal set in the following context.
2.  Σ is _closed under complementation_: If _A_ is in Σ, then so is its complement, .
3.  Σ is _closed under countable unions_: If _A_₁, _A_₂, _A_₃, ... are in Σ, then so is _A_ = _A_₁ ∪ _A_₂ ∪ _A_₃ ∪ … .

From these properties, it follows that the σ-algebra is also closed under countable intersections (by applying De Morgan's laws).

It also follows that the empty set ∅ is in Σ, since by (1) _X_ is in Σ and (2) asserts that its complement, the empty set, is also in Σ. Moreover, since } satisfies condition (3) as well, it follows that } is the smallest possible σ-algebra on _X_. The largest possible σ-algebra on _X_ is 2^(_X_):=𝒫(X).

Elements of the _σ_-algebra are called measurable sets. An ordered pair , where _X_ is a set and Σ is a _σ_-algebra over _X_, is called a MEASURABLE SPACE. A function between two measurable spaces is called a measurable function if the preimage of every measurable set is measurable. The collection of measurable spaces forms a category, with the measurable functions as morphisms. Measures are defined as certain types of functions from a _σ_-algebra to [0, ∞].

A σ-algebra is both a π-system and a Dynkin system (λ-system). The converse is true as well, by Dynkin's theorem (below).

Dynkin's π-λ theorem

This theorem (or the related monotone class theorem) is an essential tool for proving many results about properties of specific σ-algebras. It capitalizes on the nature of two simpler classes of sets, namely the following.

    A π-system _P_ is a collection of subsets of X that is closed under finitely many intersections, and
    a Dynkin system (or λ-system) _D_ is a collection of subsets of X that contains X and is closed under complement and under countable unions of _disjoint_ subsets.

Dynkin's π-λ theorem says, if _P_ is a π-system and _D_ is a Dynkin system that contains _P_ then the σ-algebra σ(_P_) generated by _P_ is contained in _D_. Since certain π-systems are relatively simple classes, it may not be hard to verify that all sets in _P_ enjoy the property under consideration while, on the other hand, showing that the collection _D_ of all subsets with the property is a Dynkin system can also be straightforward. Dynkin's π-λ Theorem then implies that all sets in σ(_P_) enjoy the property, avoiding the task of checking it for an arbitrary set in σ(_P_).

One of the most fundamental uses of the π-λ theorem is to show equivalence of separately defined measures or integrals. For example, it is used to equate a probability for a random variable _X_ with the Lebesgue-Stieltjes integral typically associated with computing the probability:

ℙ(_X_ ∈ _A_) = ∫_(_A_) _F_(_d__x_)
for all _A_ in the Borel σ-algebra on R,

where _F_(_x_) is the cumulative distribution function for _X_, defined on R, while ℙ is a probability measure, defined on a σ-algebra Σ of subsets of some sample space Ω.

Combining σ-algebras

Suppose $\textstyle\{\Sigma_\alpha:\alpha\in\mathcal{A}\}$ is a collection of σ-algebras on a space _X_.

-   The intersection of a collection of σ-algebras is a σ-algebra. To emphasize its character as a σ-algebra, it often is denoted by:

⋀_(_α_ ∈ 𝒜)_Σ__(_α_).

    SKETCH OF PROOF: Let denote the intersection. Since _X_ is in every is not empty. Closure under complement and countable unions for every implies the same must be true for . Therefore, is a σ-algebra.

-   The union of a collection of σ-algebras is not generally a σ-algebra, or even an algebra, but it generates a σ-algebra known as the join which typically is denoted

⋁_(_α_ ∈ 𝒜)_Σ__(_α_) = _σ_(⋃_(_α_ ∈ 𝒜)_Σ__(_α_)).

    A π-system that generates the join is
    $$\mathcal{P}=\left \{\bigcap_{i=1}^nA_i:A_i\in\Sigma_{\alpha_i},\alpha_i\in\mathcal{A},\ n\ge1 \right\}.$$

    SKETCH OF PROOF: By the case _n_ = 1, it is seen that each Σ_(α) ⊂ 𝒫, so
    ⋃_(_α_ ∈ 𝒜)_Σ__(_α_) ⊂ 𝒫.

    This implies
    _σ_(⋃_(_α_ ∈ 𝒜)_Σ__(_α_)) ⊂ _σ_(𝒫)

    by the definition of a σ-algebra generated by a collection of subsets. On the other hand,
    𝒫 ⊂ _σ_(⋃_(_α_ ∈ 𝒜)_Σ__(_α_))

    which, by Dynkin's π-λ theorem, implies
    _σ_(𝒫) ⊂ _σ_(⋃_(_α_ ∈ 𝒜)_Σ__(_α_)).

σ-algebras for subspaces

Suppose _Y_ is a subset of _X_ and let (_X_, Σ) be a measurable space.

-   The collection {_Y_ ∩ _B_: _B_ ∈ Σ} is a σ-algebra of subsets of _Y_.
-   Suppose (_Y_, Λ) is a measurable space. The collection {_A_ ⊂ _X_ : _A_ ∩ _Y_ ∈ Λ} is a σ-algebra of subsets of _X_.

Relation to σ-ring

A _σ_-algebra Σ is just a _σ_-ring that contains the universal set _X_.[4] A _σ_-ring need not be a _σ_-algebra, as for example measurable subsets of zero Lebesgue measure in the real line are a _σ_-ring, but not a _σ_-algebra since the real line has infinite measure and thus cannot be obtained by their countable union. If, instead of zero measure, one takes measurable subsets of finite Lebesgue measure, those are a ring but not a _σ_-ring, since the real line can be obtained by their countable union yet its measure is not finite.

Typographic note

_σ_-algebras are sometimes denoted using calligraphic capital letters, or the Fraktur typeface. Thus may be denoted as $\scriptstyle(X,\,\mathcal{F})$ or $\scriptstyle(X,\,\mathfrak{F})$.


Particular cases and examples

Separable σ-algebras

A SEPARABLE Σ-ALGEBRA (or SEPARABLE Σ-FIELD) is a σ-algebra ℱ that is a separable space when considered as a metric space with metric ρ(A, B) = μ(A △ B) for A, B ∈ ℱ and a given measure μ (and with △ being the symmetric difference operator).[5] Note that any σ-algebra generated by a countable collection of sets is separable, but the converse need not hold. For example, the Lebesgue σ-algebra is separable (since every Lebesgue measurable set is equivalent to some Borel set) but not countably generated (since its cardinality is higher than continuum).

A separable measure space has a natural pseudometric that renders it separable as a pseudometric space. The distance between two sets is defined as the measure of the symmetric difference of the two sets. Note that the symmetric difference of two distinct sets can have measure zero; hence the pseudometric as defined above need not to be a true metric. However, if sets whose symmetric difference has measure zero are identified into a single equivalence class, the resulting quotient set can be properly metrized by the induced metric. If the measure space is separable, it can be shown that the corresponding metric space is, too.

Simple set-based examples

Let _X_ be any set.

-   The family consisting only of the empty set and the set _X_, called the minimal or TRIVIAL Σ-ALGEBRA over _X_.
-   The power set of _X_, called the DISCRETE Σ-ALGEBRA.
-   The collection {∅, _A_, _A_^(c), _X_} is a simple σ-algebra generated by the subset _A_.
-   The collection of subsets of _X_ which are countable or whose complements are countable is a σ-algebra (which is distinct from the power set of _X_ if and only if _X_ is uncountable). This is the σ-algebra generated by the singletons of _X_. Note: "countable" includes finite or empty.
-   The collection of all unions of sets in a countable partition of _X_ is a σ-algebra.

Stopping time sigma-algebras

A stopping time τ can define a σ-algebra ℱ_(τ), the so-called σ-Algebra of τ-past, which in a filtered probability space describes the information up to the random time τ in the sense that, if the filtered probability space is interpreted as a random experiment, the maximum information that can be found out about the experiment from arbitrarily often repeating it until the time τ is ℱ_(τ).[6]


σ-algebras generated by families of sets

σ-algebra generated by an arbitrary family

Let _F_ be an arbitrary family of subsets of _X_. Then there exists a unique smallest σ-algebra which contains every set in _F_ (even though _F_ may or may not itself be a σ-algebra). It is, in fact, the intersection of all σ-algebras containing _F_. (See intersections of σ-algebras above.) This σ-algebra is denoted σ(_F_) and is called THE Σ-ALGEBRA GENERATED BY _F_.

If _F_ is empty, then σ(_F_)=}. Otherwise σ(_F_) consists of all the subsets of _X_ that can be made from elements of _F_ by a countable number of complement, union and intersection operations.

For a simple example, consider the set _X_ = {1, 2, 3}. Then the σ-algebra generated by the single subset {1} is {∅, {1}, {2, 3}, {1, 2, 3}}}}. By an abuse of notation, when a collection of subsets contains only one element, _A_, one may write σ(_A_) instead of σ({_A_}); in the prior example σ({1}) instead of σ({{1}}). Indeed, using to mean is also quite common.

There are many families of subsets that generate useful σ-algebras. Some of these are presented here.

σ-algebra generated by a function

If f is a function from a set X to a set Y and B is a σ-algebra of subsets of Y, then the σ-ALGEBRA GENERATED BY THE FUNCTION f, denoted by σ(f), is the collection of all inverse images f^( − 1)(S) of the sets S in B. i.e.

_σ_(_f_) = {_f_^( − 1)(_S_) | _S_ ∈ _B_}.

A function _f_ from a set _X_ to a set _Y_ is measurable with respect to a σ-algebra Σ of subsets of _X_ if and only if σ(_f_) is a subset of Σ.

One common situation, and understood by default if _B_ is not specified explicitly, is when _Y_ is a metric or topological space and _B_ is the collection of Borel sets on _Y_.

If _f_ is a function from _X_ to R^(_n_) then σ(_f_) is generated by the family of subsets which are inverse images of intervals/rectangles in R^(_n_):

_σ_(_f_) = _σ_({_f_^( − 1)((_a_₁,_b_₁]×⋯×(_a__(_n_),_b__(_n_)]):_a__(_i_),_b__(_i_)∈ℝ}).

A useful property is the following. Assume _f_ is a measurable map from (_X_, Σ_(_X_)) to (_S_, Σ_(_S_)) and _g_ is a measurable map from (_X_, Σ_(_X_)) to (_T_, Σ_(_T_)). If there exists a measurable map _h_ from (_T_, Σ_(_T_)) to (_S_, Σ_(_S_)) such that _f_(_x_) = _h_(_g_(_x_)) for all _x_, then σ(_f_) ⊂ σ(_g_). If _S_ is finite or countably infinite or, more generally, (_S_, Σ_(_S_)) is a standard Borel space (e.g., a separable complete metric space with its associated Borel sets), then the converse is also true.[7] Examples of standard Borel spaces include R^(_n_) with its Borel sets and R^(∞) with the cylinder σ-algebra described below.

Borel and Lebesgue σ-algebras

An important example is the Borel algebra over any topological space: the σ-algebra generated by the open sets (or, equivalently, by the closed sets). Note that this σ-algebra is not, in general, the whole power set. For a non-trivial example that is not a Borel set, see the Vitali set or Non-Borel sets.

On the Euclidean space R^(_n_), another σ-algebra is of importance: that of all Lebesgue measurable sets. This σ-algebra contains more sets than the Borel σ-algebra on R^(_n_) and is preferred in integration theory, as it gives a complete measure space.

Product σ-algebra

Let (X₁, Σ₁) and (X₂, Σ₂) be two measurable spaces. The σ-algebra for the corresponding product space X₁ × X₂ is called the PRODUCT Σ-ALGEBRA and is defined by

_Σ_₁ × _Σ_₂ = _σ_({_B_₁ × _B_₂ : _B_₁ ∈ _Σ_₁, _B_₂ ∈ _Σ_₂}).

Observe that {B₁ × B₂ : B₁ ∈ Σ₁, B₂ ∈ Σ₂} is a π-system.

The Borel σ-algebra for R^(_n_) is generated by half-infinite rectangles and by finite rectangles. For example,

ℬ(ℝ^(_n_)) = _σ_({(−∞,_b_₁]×⋯×(−∞,_b__(_n_)]:_b__(_i_)∈ℝ}) = _σ_({(_a_₁,_b_₁]×⋯×(_a__(_n_),_b__(_n_)]:_a__(_i_),_b__(_i_)∈ℝ}).

For each of these two examples, the generating family is a π-system.

σ-algebra generated by cylinder sets

Suppose

_X_ ⊂ ℝ^(𝕋) = {_f_ : _f_ is a function from 𝕋 to ℝ}

is a set of real-valued functions on 𝕋. Let ℬ(ℝ) denote the Borel subsets of R. A cylinder subset of is a finitely restricted set defined as

_C__(_t_₁, …, _t__(_n_))(_B_₁, …, _B__(_n_)) = {_f_ ∈ _X_ : _f_(_t__(_i_)) ∈ _B__(_i_), 1 ≤ _i_ ≤ _n_}.

Each

{_C__(_t_₁, …, _t__(_n_))(_B_₁, …, _B__(_n_)) : _B__(_i_) ∈ ℬ(ℝ), 1 ≤ _i_ ≤ _n_}

is a π-system that generates a σ-algebra $\textstyle\Sigma_{t_1,\dots,t_n}$. Then the family of subsets

$$\mathcal{F}_X=\bigcup_{n=1}^\infty\bigcup_{t_i\in\mathbb{T},i\le n}\Sigma_{t_1,\dots,t_n}$$

is an algebra that generates the CYLINDER Σ-ALGEBRA for . This σ-algebra is a subalgebra of the Borel σ-algebra determined by the product topology of ℝ^(𝕋) restricted to .

An important special case is when 𝕋 is the set of natural numbers and is a set of real-valued sequences. In this case, it suffices to consider the cylinder sets

_C__(_n_)(_B_₁, …, _B__(_n_)) = (_B_₁ × ⋯ × _B__(_n_) × ℝ^(∞)) ∩ _X_ = {(_x_₁, _x_₂, …, _x__(_n_), _x__(_n_ + 1), …) ∈ _X_ : _x__(_i_) ∈ _B__(_i_), 1 ≤ _i_ ≤ _n_},

for which

_Σ__(_n_) = _σ_({_C__(_n_)(_B_₁, …, _B__(_n_)) : _B__(_i_) ∈ ℬ(ℝ), 1 ≤ _i_ ≤ _n_})

is a non-decreasing sequence of σ-algebras.

σ-algebra generated by random variable or vector

Suppose (Ω, Σ, ℙ) is a probability space. If $\textstyle Y:\Omega\to\mathbb{R}^n$ is measurable with respect to the Borel σ-algebra on R^(_n_) then is called a RANDOM VARIABLE (_n = 1_) or RANDOM VECTOR (_n_ > 1). The σ-algebra generated by is

_σ_(_Y_) = {_Y_^( − 1)(_A_) : _A_ ∈ ℬ(ℝ^(_n_))}.

σ-algebra generated by a stochastic process

Suppose (Ω, Σ, ℙ) is a probability space and ℝ^(𝕋) is the set of real-valued functions on 𝕋. If $\textstyle Y:\Omega\to X\subset\mathbb{R}^\mathbb{T}$ is measurable with respect to the cylinder σ-algebra σ(ℱ_(X)) (see above) for , then is called a STOCHASTIC PROCESS or RANDOM PROCESS. The σ-algebra generated by is

_σ_(_Y_) = {_Y_^( − 1)(_A_):_A_∈_σ_(ℱ_(_X_))} = _σ_({_Y_^( − 1)(_A_) : _A_ ∈ ℱ_(_X_)}),

the σ-algebra generated by the inverse images of cylinder sets.


See also

-   Join (sigma algebra)
-   Measurable function
-   Sample space
-   Sigma ring
-   Sigma additivity


References


External links

-   -   Sigma Algebra from PlanetMath.

Category:Measure theory Category:Experiment (probability theory) Category:Set families Category:Boolean algebra

[1]

[2]

[3]

[4]

[5]

[6]

[7]