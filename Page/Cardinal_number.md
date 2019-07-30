, the smallest infinite cardinal]] In mathematics, CARDINAL NUMBERS, or CARDINALS for short, are a generalization of the natural numbers used to measure the cardinality (size) of sets. The cardinality of a finite set is a natural number: the number of elements in the set. The _transfinite_ cardinal numbers describe the sizes of infinite sets.

Cardinality is defined in terms of bijective functions. Two sets have the same cardinality if, and only if, there is a one-to-one correspondence (bijection) between the elements of the two sets. In the case of finite sets, this agrees with the intuitive notion of size. In the case of infinite sets, the behavior is more complex. A fundamental theorem due to Georg Cantor shows that it is possible for infinite sets to have different cardinalities, and in particular the cardinality of the set of real numbers is greater than the cardinality of the set of natural numbers. It is also possible for a proper subset of an infinite set to have the same cardinality as the original set, something that cannot happen with proper subsets of finite sets.

There is a transfinite sequence of cardinal numbers:

$$0, 1, 2, 3, \ldots, n, \ldots ; \aleph_0, \aleph_1, \aleph_2, \ldots, \aleph_{\alpha}, \ldots.\$$
This sequence starts with the natural numbers including zero (finite cardinals), which are followed by the aleph numbers (infinite cardinals of well-ordered sets). The aleph numbers are indexed by ordinal numbers. Under the assumption of the axiom of choice, this transfinite sequence includes every cardinal number. If one rejects that axiom, the situation is more complicated, with additional infinite cardinals that are not alephs.

Cardinality is studied for its own sake as part of set theory. It is also a tool used in branches of mathematics including model theory, combinatorics, abstract algebra, and mathematical analysis. In category theory, the cardinal numbers form a skeleton of the category of sets.


History

The notion of cardinality, as now understood, was formulated by Georg Cantor, the originator of set theory, in 1874–1884. Cardinality can be used to compare an aspect of finite sets; e.g. the sets {1,2,3} and {4,5,6} are not _equal_, but have the _same cardinality_, namely three (this is established by the existence of a bijection, i.e. a one-to-one correspondence, between the two sets; e.g. {1→4, 2→5, 3→6}).

Cantor applied his concept of bijection to infinite sets;[1] e.g. the set of natural numbers N = {0, 1, 2, 3, ...}. Thus, all sets having a bijection with N he called denumerable (countably infinite) sets and they all have the same cardinal number. This cardinal number is called ℵ₀, aleph-null. He called the cardinal numbers of these infinite sets transfinite cardinal numbers.

Cantor proved that any unbounded subset of N has the same cardinality as N, even though this might appear to run contrary to intuition. He also proved that the set of all ordered pairs of natural numbers is denumerable; this implies that the set of all rational numbers is also denumerable, since every rational can be represented by a pair of integers. He later proved that the set of all real algebraic numbers is also denumerable. Each real algebraic number _z_ may be encoded as a finite sequence of integers which are the coefficients in the polynomial equation of which it is a solution, i.e. the ordered n-tuple (_a_₀, _a_₁, ..., _a_(n)_), _a_(i)_ ∈ Z together with a pair of rationals (_b_₀, _b_₁) such that _z_ is the unique root of the polynomial with coefficients (_a_₀, _a_₁, ..., _a_(n)_) that lies in the interval (_b_₀, _b_₁).

In his 1874 paper "On a Property of the Collection of All Real Algebraic Numbers", Cantor proved that there exist higher-order cardinal numbers by showing that the set of real numbers has cardinality greater than that of N. His proof used an argument with nested intervals, but in an 1891 paper he proved the same result using his ingenious but simpler diagonal argument. The new cardinal number of the set of real numbers is called the cardinality of the continuum and Cantor used the symbol 𝔠 for it.

Cantor also developed a large portion of the general theory of cardinal numbers; he proved that there is a smallest transfinite cardinal number (ℵ₀, aleph-null), and that for every cardinal number there is a next-larger cardinal

(ℵ₁, ℵ₂, ℵ₃, …).

His continuum hypothesis is the proposition that 𝔠 is the same as ℵ₁. This hypothesis has been found to be independent of the standard axioms of mathematical set theory; it can neither be proved nor disproved from the standard assumptions.


Motivation

In informal use, a CARDINAL NUMBER is what is normally referred to as a _counting number_, provided that 0 is included: 0, 1, 2, .... They may be identified with the natural numbers beginning with 0. The counting numbers are exactly what can be defined formally as the finite cardinal numbers. Infinite cardinals only occur in higher-level mathematics and logic.

More formally, a non-zero number can be used for two purposes: to describe the size of a set, or to describe the position of an element in a sequence. For finite sets and sequences it is easy to see that these two notions coincide, since for every number describing a position in a sequence we can construct a set which has exactly the right size, e.g. 3 describes the position of 'c' in the sequence <'a','b','c','d',...>, and we can construct the set {a,b,c} which has 3 elements. However, when dealing with infinite sets it is essential to distinguish between the two — the two notions are in fact different for infinite sets. Considering the position aspect leads to ordinal numbers, while the size aspect is generalized by the CARDINAL NUMBERS described here.

The intuition behind the formal definition of cardinal is the construction of a notion of the relative size or "bigness" of a set without reference to the kind of members which it has. For finite sets this is easy; one simply counts the number of elements a set has. In order to compare the sizes of larger sets, it is necessary to appeal to more subtle notions.

A set _Y_ is at least as big as a set _X_ if there is an injective mapping from the elements of _X_ to the elements of _Y_. An injective mapping identifies each element of the set _X_ with a unique element of the set _Y_. This is most easily understood by an example; suppose we have the sets _X_ = {1,2,3} and _Y_ = {a,b,c,d}, then using this notion of size we would observe that there is a mapping:

    1 → a
    2 → b
    3 → c

which is injective, and hence conclude that _Y_ has cardinality greater than or equal to _X_. Note the element d has no element mapping to it, but this is permitted as we only require an injective mapping, and not necessarily an injective and onto mapping. The advantage of this notion is that it can be extended to infinite sets.

We can then extend this to an equality-style relation. Two sets _X_ and _Y_ are said to have the same CARDINALITY if there exists a bijection between _X_ and _Y_. By the Schroeder–Bernstein theorem, this is equivalent to there being _both_ an injective mapping from _X_ to _Y_ _and_ an injective mapping from _Y_ to _X_. We then write |_X_| = |_Y_|. The cardinal number of _X_ itself is often defined as the least ordinal _a_ with |_a_| = |_X_|. This is called the von Neumann cardinal assignment; for this definition to make sense, it must be proved that every set has the same cardinality as _some_ ordinal; this statement is the well-ordering principle. It is however possible to discuss the relative cardinality of sets without explicitly assigning names to objects.

The classic example used is that of the infinite hotel paradox, also called Hilbert's paradox of the Grand Hotel. Suppose you are an innkeeper at a hotel with an infinite number of rooms. The hotel is full, and then a new guest arrives. It is possible to fit the extra guest in by asking the guest who was in room 1 to move to room 2, the guest in room 2 to move to room 3, and so on, leaving room 1 vacant. We can explicitly write a segment of this mapping:

    1 → 2
    2 → 3
    3 → 4
    ...
    _n_ → _n_ + 1
    ...

In this way we can see that the set {1,2,3,...} has the same cardinality as the set {2,3,4,...} since a bijection between the first and the second has been shown. This motivates the definition of an infinite set being any set which has a proper subset of the same cardinality; in this case {2,3,4,...} is a proper subset of {1,2,3,...}.

When considering these large objects, we might also want to see if the notion of counting order coincides with that of cardinal defined above for these infinite sets. It happens that it doesn't; by considering the above example we can see that if some object "one greater than infinity" exists, then it must have the same cardinality as the infinite set we started out with. It is possible to use a different formal notion for number, called ordinals, based on the ideas of counting and considering each number in turn, and we discover that the notions of cardinality and ordinality are divergent once we move out of the finite numbers.

It can be proved that the cardinality of the real numbers is greater than that of the natural numbers just described. This can be visualized using Cantor's diagonal argument; classic questions of cardinality (for instance the continuum hypothesis) are concerned with discovering whether there is some cardinal between some pair of other infinite cardinals. In more recent times mathematicians have been describing the properties of larger and larger cardinals.

Since cardinality is such a common concept in mathematics, a variety of names are in use. Sameness of cardinality is sometimes referred to as EQUIPOTENCE, EQUIPOLLENCE, or EQUINUMEROSITY. It is thus said that two sets with the same cardinality are, respectively, EQUIPOTENT, EQUIPOLLENT, or EQUINUMEROUS.


Formal definition

Formally, assuming the axiom of choice, the cardinality of a set _X_ is the least ordinal number α such that there is a bijection between _X_ and α. This definition is known as the von Neumann cardinal assignment. If the axiom of choice is not assumed we need to do something different. The oldest definition of the cardinality of a set _X_ (implicit in Cantor and explicit in Frege and Principia Mathematica) is as the class _[X]_ of all sets that are equinumerous with _X_. This does not work in ZFC or other related systems of axiomatic set theory because if _X_ is non-empty, this collection is too large to be a set. In fact, for _X ≠ ∅_ there is an injection from the universe into _[X]_ by mapping a set _m_ to _{m} × X_ and so by the axiom of limitation of size, _[X]_ is a proper class. The definition does work however in type theory and in New Foundations and related systems. However, if we restrict from this class to those equinumerous with _X_ that have the least rank, then it will work (this is a trick due to Dana Scott:[2] it works because the collection of objects with any given rank is a set).

Formally, the order among cardinal numbers is defined as follows: |_X_| ≤ |_Y_| means that there exists an injective function from _X_ to _Y_. The Cantor–Bernstein–Schroeder theorem states that if |_X_| ≤ |_Y_| and |_Y_| ≤ |_X_| then |_X_| = |_Y_|. The axiom of choice is equivalent to the statement that given two sets _X_ and _Y_, either |_X_| ≤ |_Y_| or |_Y_| ≤ |_X_|.[3][4]

A set _X_ is Dedekind-infinite if there exists a proper subset _Y_ of _X_ with |_X_| = |_Y_|, and Dedekind-finite if such a subset doesn't exist. The finite cardinals are just the natural numbers, i.e., a set _X_ is finite if and only if |_X_| = |_n_| = _n_ for some natural number _n_. Any other set is infinite. Assuming the axiom of choice, it can be proved that the Dedekind notions correspond to the standard ones. It can also be proved that the cardinal ℵ₀ (aleph null or aleph-0, where aleph is the first letter in the Hebrew alphabet, represented ℵ) of the set of natural numbers is the smallest infinite cardinal, i.e. that any infinite set has a subset of cardinality ℵ₀. The next larger cardinal is denoted by ℵ₁ and so on. For every ordinal α there is a cardinal number ℵ_(α), and this list exhausts all infinite cardinal numbers.


Cardinal arithmetic

We can define arithmetic operations on cardinal numbers that generalize the ordinary operations for natural numbers. It can be shown that for finite cardinals these operations coincide with the usual operations for natural numbers. Furthermore, these operations share many properties with ordinary arithmetic.

Successor cardinal

If the axiom of choice holds, then every cardinal κ has a successor κ⁺ > κ, and there are no cardinals between κ and its successor. (Without the axiom of choice, using Hartogs' theorem, it can be shown that, for any cardinal number κ, there is a minimal cardinal κ⁺, such that κ⁺ ≰ κ.) For finite cardinals, the successor is simply κ + 1. For infinite cardinals, the successor cardinal differs from the successor ordinal.

Cardinal addition

If _X_ and _Y_ are disjoint, addition is given by the union of _X_ and _Y_. If the two sets are not already disjoint, then they can be replaced by disjoint sets of the same cardinality, e.g., replace _X_ by _X_×{0} and _Y_ by _Y_×{1}.

|_X_| + |_Y_| = |_X_ ∪ _Y_|.

Zero is an additive identity _κ_ + 0 = 0 + _κ_ = _κ_.

Addition is associative (_κ_ + _μ_) + _ν_ = _κ_ + (_μ_ + _ν_).

Addition is commutative _κ_ + _μ_ = _μ_ + _κ_.

Addition is non-decreasing in both arguments:

(_κ_ ≤ _μ_) → ((_κ_ + _ν_ ≤ _μ_ + _ν_) and (_ν_ + _κ_ ≤ _ν_ + _μ_)).

Assuming the axiom of choice, addition of infinite cardinal numbers is easy. If either κ or μ is infinite, then

_κ_ + _μ_ = max {_κ_, _μ_} .

Subtraction

Assuming the axiom of choice and, given an infinite cardinal σ and a cardinal μ, there exists a cardinal κ such that μ + κ = σ if and only if μ ≤ σ. It will be unique (and equal to σ) if and only if μ < σ.

Cardinal multiplication

The product of cardinals comes from the cartesian product.

|_X_| ⋅ |_Y_| = |_X_ × _Y_|

_κ_·0 = 0·_κ_ = 0.

_κ_·_μ_ = 0 → (_κ_ = 0 or _μ_ = 0).

One is a multiplicative identity _κ_·1 = 1·_κ_ = _κ_.

Multiplication is associative (_κ_·_μ_)·_ν_ = _κ_·(_μ_·_ν_).

Multiplication is commutative _κ_·_μ_ = _μ_·_κ_.

Multiplication is non-decreasing in both arguments: _κ_ ≤ _μ_ → (_κ_·_ν_ ≤ _μ_·_ν_ and _ν_·_κ_ ≤ _ν_·_μ_).

Multiplication distributes over addition: _κ_·(_μ_ + _ν_) = _κ_·_μ_ + _κ_·_ν_ and (_μ_ + _ν_)·_κ_ = _μ_·_κ_ + _ν_·_κ_.

Assuming the axiom of choice, multiplication of infinite cardinal numbers is also easy. If either _κ_ or _μ_ is infinite and both are non-zero, then

_κ_ ⋅ _μ_ = max {_κ_, _μ_}.

Division

Assuming the axiom of choice and, given an infinite cardinal _π_ and a non-zero cardinal μ, there exists a cardinal κ such that μ · κ = _π_ if and only if μ ≤ _π_. It will be unique (and equal to _π_) if and only if μ < _π_.

Cardinal exponentiation

Exponentiation is given by

|_X_|^(|_Y_|) = |_X_^(_Y_)|,
where _X^(Y)_ is the set of all functions from _Y_ to _X_.

    κ⁰ = 1 (in particular 0⁰ = 1), see empty function.
    If 1 ≤ μ, then 0^(μ) = 0.
    1^(μ) = 1.
    κ¹ = κ.
    κ^(μ +\ ν) = _κ_^(_μ_)·_κ_^(_ν_).
    κ^(μ\ ·\ ν) = (_κ_^(_μ_))^(_ν_).
    (_κ_·_μ_)^(_ν_) = _κ_^(_ν_)·_μ_^(_ν_).

Exponentiation is non-decreasing in both arguments:

    (1 ≤ _ν_ and _κ_ ≤ _μ_) → (_ν_^(_κ_) ≤ _ν_^(_μ_)) and
    (_κ_ ≤ _μ_) → (_κ_^(_ν_) ≤ _μ_^(_ν_)).

Note that 2^(|_X_|) is the cardinality of the power set of the set _X_ and Cantor's diagonal argument shows that 2^(|_X_|) > |_X_| for any set _X_. This proves that no largest cardinal exists (because for any cardinal _κ_, we can always find a larger cardinal 2^(κ)). In fact, the class of cardinals is a proper class. (This proof fails in some set theories, notably New Foundations.)

All the remaining propositions in this section assume the axiom of choice:

    If _κ_ and _μ_ are both finite and greater than 1, and _ν_ is infinite, then _κ_^(_ν_) = _μ_^(_ν_).
    If _κ_ is infinite and _μ_ is finite and non-zero, then _κ_^(_μ_) = _κ_.

If 2 ≤ κ and 1 ≤ μ and at least one of them is infinite, then:

    Max (κ, 2^(μ)) ≤ κ^(μ) ≤ Max (2^(κ), 2^(μ)).

Using König's theorem, one can prove κ < κ^(cf(κ)) and κ < cf(2^(κ)) for any infinite cardinal κ, where cf(κ) is the cofinality of κ.

Roots

Assuming the axiom of choice and, given an infinite cardinal κ and a finite cardinal μ greater than 0, the cardinal ν satisfying ν^(μ) = κ will be κ.

Logarithms

Assuming the axiom of choice and, given an infinite cardinal κ and a finite cardinal μ greater than 1, there may or may not be a cardinal λ satisfying μ^(λ) = κ. However, if such a cardinal exists, it is infinite and less than κ, and any finite cardinality ν greater than 1 will also satisfy ν^(λ) = κ.

The logarithm of an infinite cardinal number κ is defined as the least cardinal number μ such that κ ≤ 2^(μ). Logarithms of infinite cardinals are useful in some fields of mathematics, for example in the study of cardinal invariants of topological spaces, though they lack some of the properties that logarithms of positive real numbers possess.[5][6][7]


The continuum hypothesis

The continuum hypothesis (CH) states that there are no cardinals strictly between ℵ₀ and 2^(ℵ₀). The latter cardinal number is also often denoted by 𝔠; it is the cardinality of the continuum (the set of real numbers). In this case 2^(ℵ₀) = ℵ₁. The generalized continuum hypothesis (GCH) states that for every infinite set _X_, there are no cardinals strictly between | _X_ | and 2^(| _X_ |). The continuum hypothesis is independent of the usual axioms of set theory, the Zermelo-Fraenkel axioms together with the axiom of choice (ZFC).


See also

-   Aleph number
-   Beth number
-   The paradox of the greatest cardinal
-   Cardinal number (linguistics)
-   Counting
-   Inclusion–exclusion principle
-   Large cardinal
-   Names of numbers in English
-   Nominal number
-   Ordinal number
-   Regular cardinal


Notes


References

NOTES

BIBLIOGRAPHY

-   -   Hahn, Hans, _Infinity_, Part IX, Chapter 2, Volume 3 of _The World of Mathematics_. New York: Simon and Schuster, 1956.
-   Halmos, Paul, _Naive set theory_. Princeton, NJ: D. Van Nostrand Company, 1960. Reprinted by Springer-Verlag, New York, 1974. (Springer-Verlag edition).


External links

-   -

Cardinal_numbers

[1]

[2]

[3] Enderton, Herbert. "Elements of Set Theory", Academic Press Inc., 1977.

[4]

[5] Robert A. McCoy and Ibula Ntantu, Topological Properties of Spaces of Continuous Functions, Lecture Notes in Mathematics 1315, Springer-Verlag.

[6] Eduard Čech, Topological Spaces, revised by Zdenek Frolík and Miroslav Katetov, John Wiley & Sons, 1966.

[7] D. A. Vladimirov, Boolean Algebras in Analysis, Mathematics and Its Applications, Kluwer Academic Publishers.