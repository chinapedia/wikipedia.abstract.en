In mathematics, the CARDINALITY of a set is a measure of the "number of elements of the set". For example, the set A = {2, 4, 6} contains 3 elements, and therefore A has a cardinality of 3. There are two approaches to cardinality – one which compares sets directly using bijections and injections, and another which uses cardinal numbers.[1] The cardinality of a set is also called its SIZE, when no confusion with other notions of size[2] is possible.

The cardinality of a set A is usually denoted |A|, with a vertical bar on each side; this is the same notation as absolute value and the meaning depends on context. Alternatively, the cardinality of a set A may be denoted by n(A), A, card (A), or #A.


Comparing sets

While the cardinality of a finite set is just the number of its elements, extending the notion to infinite sets usually starts with defining the notion of comparison of arbitrary (possibly infinite) sets.

===Definition 1: = ===

    Two sets _A_ and _B_ have the same cardinality if there exists a bijection from _A_ to _B_, that is, a function from _A_ to _B_ that is both injective and surjective. Such sets are said to be _equipotent_, _equipollent_, or _equinumerous_. This relationship can also be denoted _A_ ≈ _B_ or _A_ ~ _B_.

    For example, the set _E_ = {0, 2, 4, 6, ...} of non-negative even numbers has the same cardinality as the set N = {0, 1, 2, 3, ...} of natural numbers, since the function _f_(_n_) = 2_n_ is a bijection from N to _E_.

Definition 2:  ≤

    _A_ has cardinality less than or equal to the cardinality of _B_ if there exists an injective function from _A_ into _B_.

Definition 3:  <

    _A_ has cardinality strictly less than the cardinality of _B_ if there is an injective function, but no bijective function, from _A_ to _B_.

    For example, the set N of all natural numbers has cardinality strictly less than the cardinality of the set R of all real numbers , because the inclusion map _i_ : N → R is injective, but it can be shown that there does not exist a bijective function from N to R (see Cantor's diagonal argument or Cantor's first uncountability proof).

If ≤ and ≤ then = (Schröder–Bernstein theorem). The axiom of choice is equivalent to the statement that ≤ or ≤ for every _A_, _B_.[3][4]


Cardinal numbers

Above, "cardinality" was defined functionally. That is, the "cardinality" of a set was not defined as a specific object itself. However, such an object can be defined as follows.

The relation of having the same cardinality is called equinumerosity, and this is an equivalence relation on the class of all sets. The equivalence class of a set _A_ under this relation then consists of all those sets which have the same cardinality as _A_. There are two ways to define the "cardinality of a set":

1.  The cardinality of a set _A_ is defined as its equivalence class under equinumerosity.
2.  A representative set is designated for each equivalence class. The most common choice is the initial ordinal in that class. This is usually taken as the definition of cardinal number in axiomatic set theory.

Assuming AC, the cardinalities of the infinite sets are denoted

ℵ₀ < ℵ₁ < ℵ₂ < ….
For each ordinal α, ℵ_(α + 1) is the least cardinal number greater than ℵ_(α).

The cardinality of the natural numbers is denoted aleph-null (ℵ₀), while the cardinality of the real numbers is denoted by "𝔠" (a lowercase fraktur script "c"), and is also referred to as the cardinality of the continuum. Cantor showed, using the diagonal argument, that 𝔠 > ℵ₀. We can show that 𝔠 = 2^(ℵ₀), this also being the cardinality of the set of all subsets of the natural numbers. The continuum hypothesis says that ℵ₁ = 2^(ℵ₀), i.e. 2^(ℵ₀) is the smallest cardinal number bigger than ℵ₀, i.e. there is no set whose cardinality is strictly between that of the integers and that of the real numbers. The continuum hypothesis is independent of ZFC, a standard axiomatization of set theory; that is, it is impossible to prove the continuum hypothesis or its negation from ZFC (provided ZFC is consistent). See below for more details on the cardinality of the continuum.[5][6][7]


Finite, countable and uncountable sets

If the axiom of choice holds, the law of trichotomy holds for cardinality. Thus we can make the following definitions:

-   Any set _X_ with cardinality less than that of the natural numbers, or | _X_ | < | N |, is said to be a finite set.
-   Any set _X_ that has the same cardinality as the set of the natural numbers, or | _X_ | = | N | = ℵ₀, is said to be a countably infinite set.
-   Any set _X_ with cardinality greater than that of the natural numbers, or | _X_ | > | N |, for example | R | = 𝔠 > | N |, is said to be uncountable.


Infinite sets

Our intuition gained from finite sets breaks down when dealing with infinite sets. In the late nineteenth century Georg Cantor, Gottlob Frege, Richard Dedekind and others rejected the view that the whole cannot be the same size as the part. One example of this is Hilbert's paradox of the Grand Hotel. Indeed, Dedekind defined an infinite set as one that can be placed into a one-to-one correspondence with a strict subset (that is, having the same size in Cantor's sense); this notion of infinity is called Dedekind infinite. Cantor introduced the cardinal numbers, and showed that (according to his bijection-based definition of size) some infinite sets are greater than others. The smallest infinite cardinality is that of the natural numbers (ℵ₀).

Cardinality of the continuum

One of Cantor's most important results was that the cardinality of the continuum (𝔠) is greater than that of the natural numbers (ℵ₀); that is, there are more real numbers R than natural numbers N. Namely, Cantor showed that 𝔠 = 2^(ℵ₀) = ℶ₁ (see Beth one) satisfies:

2^(ℵ₀) > ℵ₀

    (see Cantor's diagonal argument or Cantor's first uncountability proof).

The continuum hypothesis states that there is no cardinal number between the cardinality of the reals and the cardinality of the natural numbers, that is,

2^(ℵ₀) = ℵ₁

However, this hypothesis can neither be proved nor disproved within the widely accepted ZFC axiomatic set theory, if ZFC is consistent.

Cardinal arithmetic can be used to show not only that the number of points in a real number line is equal to the number of points in any segment of that line, but that this is equal to the number of points on a plane and, indeed, in any finite-dimensional space. These results are highly counterintuitive, because they imply that there exist proper subsets and proper supersets of an infinite set _S_ that have the same size as _S_, although _S_ contains elements that do not belong to its subsets, and the supersets of _S_ contain elements that are not included in it.

The first of these results is apparent by considering, for instance, the tangent function, which provides a one-to-one correspondence between the interval (−½π, ½π) and R (see also Hilbert's paradox of the Grand Hotel).

The second result was first demonstrated by Cantor in 1878, but it became more apparent in 1890, when Giuseppe Peano introduced the space-filling curves, curved lines that twist and turn enough to fill the whole of any square, or cube, or hypercube, or finite-dimensional space. These curves are not a direct proof that a line has the same number of points as a finite-dimensional space, but they can be used to obtain such a proof.

Cantor also showed that sets with cardinality strictly greater than 𝔠 exist (see his generalized diagonal argument and theorem). They include, for instance:

:* the set of all subsets of R, i.e., the power set of R, written _P_(R) or 2^(R)

:* the set R^(R) of all functions from R to R

Both have cardinality

2^(𝔠) = ℶ₂ > 𝔠

    (see Beth two).

The cardinal equalities 𝔠² = 𝔠, 𝔠^(ℵ₀) = 𝔠, and 𝔠^(𝔠) = 2^(𝔠) can be demonstrated using cardinal arithmetic:

𝔠² = (2^(ℵ₀))² = 2^(2 × ℵ₀) = 2^(ℵ₀) = 𝔠,

𝔠^(ℵ₀) = (2^(ℵ₀))^(ℵ₀) = 2^(ℵ₀ × ℵ₀) = 2^(ℵ₀) = 𝔠,

𝔠^(𝔠) = (2^(ℵ₀))^(𝔠) = 2^(𝔠 × ℵ₀) = 2^(𝔠).


Examples and properties

-   If _X_ = {_a_, _b_, _c_} and _Y_ = {apples, oranges, peaches}, then | _X_ | = | _Y_ | because { (_a_, apples), (_b_, oranges), (_c_, peaches)} is a bijection between the sets _X_ and _Y_. The cardinality of each of _X_ and _Y_ is 3.
-   If | _X_ | < | _Y_ |, then there exists _Z_ such that | _X_ | = | _Z_ | and _Z_ ⊆ _Y_.
-   If | _X_ | ≤ | _Y_ | and | _Y_ | ≤ | _X_ |, then | _X_ | = | _Y_ |. This holds even for infinite cardinals, and is known as Cantor–Bernstein–Schroeder theorem.
-   Sets with cardinality of the continuum


Union and intersection

If _A_ and _B_ are _disjoint_ sets, then

|_A_∪_B_| = |_A_| + |_B_|.

From this, one can show that in general the cardinalities of unions and intersections are related by[8]

|_C_∪_D_| + |_C_∩_D_| = |_C_| + |_D_| .


See also

-   Aleph number
-   Beth number
-   Countable set
-   Counting
-   Ordinality


References

Cardinal_numbers Category:Basic concepts in infinite set theory

[1]

[2] Such as length and area in geometry. – A line of finite length is a set of points that has infinite cardinality.

[3]

[4]  - Original edition (1914)

[5]

[6]

[7]

[8] Applied Abstract Algebra, K.H. Kim, F.W. Roush, Ellis Horwood Series, 1983, (student edition), (library edition)