In mathematics, a COUNTABLE SET is a set with the same cardinality (number of elements) as some subset of the set of natural numbers. A countable set is either a finite set or a COUNTABLY INFINITE set. Whether finite or infinite, the elements of a countable set can always be counted one at a time and, although the counting may never finish, every element of the set is associated with a unique natural number.

Some authors use countable set to mean _countably infinite_ alone.[1] To avoid this ambiguity, the term _at most countable_ may be used when finite sets are included and _countably infinite_, _enumerable_,[2] or _denumerable_[3] otherwise.

Georg Cantor introduced the term _countable set_, contrasting sets that are countable with those that are _uncountable_ (i.e., _nonenumerable_ or _nondenumerable_[4]). Today, countable sets form the foundation of a branch of mathematics called _discrete mathematics_.


Definition

A set is _countable_ if there exists an injective function from to the natural numbers }.[5]

If such an can be found that is also surjective (and therefore bijective), then is called _countably infinite._

In other words, a set is _countably infinite_ if it has one-to-one correspondence with the natural number set, .

As noted above, this terminology is not universal. Some authors use countable to mean what is here called _countably infinite,_ and do not include finite sets.

Alternative (equivalent) formulations of the definition in terms of a bijective function or a surjective function can also be given. See below.


History

In 1874, in his first set theory article, Cantor proved that the set of real numbers is uncountable, thus showing that not all infinite sets are countable.[6] In 1878, he used one-to-one correspondences to define and compare cardinalities.[7] In 1883, he extended the natural numbers with his infinite ordinals, and used sets of ordinals to produce an infinity of sets having different infinite cardinalities.[8]


Introduction

A _set_ is a collection of _elements_, and may be described in many ways. One way is simply to list all of its elements; for example, the set consisting of the integers 3, 4, and 5 may be denoted {3, 4, 5}. This is only effective for small sets, however; for larger sets, this would be time-consuming and error-prone. Instead of listing every single element, sometimes an ellipsis ("...") is used, if the writer believes that the reader can easily guess what is missing; for example, {1, 2, 3, ..., 100} presumably denotes the set of integers from 1 to 100. Even in this case, however, it is still _possible_ to list all the elements, because the set is _finite_.

Some sets are _infinite_; these sets have more than _n_ elements for any integer _n_. For example, the set of natural numbers, denotable by {0, 1, 2, 3, 4, 5, ...}, has infinitely many elements, and we cannot use any normal number to give its size. Nonetheless, it turns out that infinite sets do have a well-defined notion of size (or more properly, of _cardinality_, which is the technical term for the number of elements in a set), and not all infinite sets have the same cardinality.

Aplicación_2_inyectiva_sobreyectiva02.svg To understand what this means, we first examine what it _does not_ mean. For example, there are infinitely many odd integers, infinitely many even integers, and (hence) infinitely many integers overall. However, it turns out that the number of even integers, which is the same as the number of odd integers, is also the same as the number of integers overall. This is because we arrange things such that for every integer, there is a distinct even integer: ... −2→−4, −1→−2, 0→0, 1→2, 2→4, ...; or, more generally, _n_→2_n_, see picture. What we have done here is arranged the integers and the even integers into a _one-to-one correspondence_ (or _bijection_), which is a function that maps between two sets such that each element of each set corresponds to a single element in the other set.

However, not all infinite sets have the same cardinality. For example, Georg Cantor (who introduced this concept) demonstrated that the real numbers cannot be put into one-to-one correspondence with the natural numbers (non-negative integers), and therefore that the set of real numbers has a greater cardinality than the set of natural numbers.

A set is _countable_ if: (1) it is finite, or (2) it has the same cardinality (size) as the set of natural numbers. Equivalently, a set is _countable_ if it has the same cardinality as some subset of the set of natural numbers. Otherwise, it is _uncountable_.


Formal overview without details

By definition a set _S_ is _countable_ if there exists an injective function _f_ : _S_ → N from _S_ to the natural numbers N = {0, 1, 2, 3, ...}.

It might seem natural to divide the sets into different classes: put all the sets containing one element together; all the sets containing two elements together; ...; finally, put together all infinite sets and consider them as having the same size. This view is not tenable, however, under the natural definition of size.

To elaborate this we need the concept of a bijection. Although a "bijection" seems a more advanced concept than a number, the usual development of mathematics in terms of set theory defines functions before numbers, as they are based on much simpler sets. This is where the concept of a bijection comes in: define the correspondence

    _a_ ↔ 1, _b_ ↔ 2, _c_ ↔ 3

Since every element of {_a_, _b_, _c_} is paired with _precisely one_ element of {1, 2, 3}, _and_ vice versa, this defines a bijection.

We now generalize this situation and _define_ two sets as of the same size if (and only if) there is a bijection between them. For all finite sets this gives us the usual definition of "the same size". What does it tell us about the size of infinite sets?

Consider the sets _A_ = {1, 2, 3, ... }, the set of positive integers and _B_ = {2, 4, 6, ... }, the set of even positive integers. We claim that, under our definition, these sets have the same size, and that therefore _B_ is countably infinite. Recall that to prove this we need to exhibit a bijection between them. But this is easy, using _n_ ↔ 2_n_, so that

    1 ↔ 2, 2 ↔ 4, 3 ↔ 6, 4 ↔ 8, ....

As in the earlier example, every element of A has been paired off with precisely one element of B, and vice versa. Hence they have the same size. This is an example of a set of the same size as one of its proper subsets, which is impossible for finite sets.

Likewise, the set of all ordered pairs of natural numbers is countably infinite, as can be seen by following a path like the one in the picture: Pairing_natural.svg assigns one natural number to each pair of natural numbers]] The resulting mapping is like this:

    0 ↔ (0,0), 1 ↔ (1,0), 2 ↔ (0,1), 3 ↔ (2,0), 4 ↔ (1,1), 5 ↔ (0,2), 6 ↔ (3,0) ....

This mapping covers all such ordered pairs.

If each pair is treated as the numerator and denominator of a vulgar fraction, then for every positive fraction, we can come up with a distinct number corresponding to it. This representation includes also the natural numbers, since every natural number is also a fraction _N_/1. So we can conclude that there are exactly as many positive rational numbers as there are positive integers. This is true also for all rational numbers, as can be seen below.

THEOREM: The Cartesian product of finitely many countable sets is countable.

This form of triangular mapping recursively generalizes to vectors of finitely many natural numbers by repeatedly mapping the first two elements to a natural number. For example, (0,2,3) maps to (5,3), which maps to 39.

Sometimes more than one mapping is useful: the set to be shown to be countably infinite is mapped onto another set, then this other set is mapped onto to the natural numbers. For example, the positive rational numbers can easily be mapped to (a subset of) the pairs of natural numbers because _p_/''q _maps to (_p'', _q_).

What about infinite subsets of countably infinite sets? Do these have fewer elements than N?

THEOREM: Every subset of a countable set is countable. In particular, every infinite subset of a countably infinite set is countably infinite.

For example, the set of prime numbers is countable, by mapping the _n_-th prime number to _n_:

-   2 maps to 1
-   3 maps to 2
-   5 maps to 3
-   7 maps to 4
-   11 maps to 5
-   13 maps to 6
-   17 maps to 7
-   19 maps to 8
-   23 maps to 9
-   ...

What about sets being naturally "larger than" N? For instance, Z the set of all integers or Q, the set of all rational numbers, which intuitively may seem much bigger than N. But looks can be deceiving, for we assert:

THEOREM: Z (the set of all integers) and Q (the set of all rational numbers) are countable.

In a similar manner, the set of algebraic numbers is countable.[9]

These facts follow easily from a result that many individuals find non-intuitive.

THEOREM: Any finite union of countable sets is countable.

With the foresight of knowing that there are uncountable sets, we can wonder whether or not this last result can be pushed any further. The answer is "yes" and "no", we can extend it, but we need to assume a new axiom to do so.

THEOREM: (Assuming the axiom of countable choice) The union of countably many countable sets is countable.

For example, given countable sets A, B, C, ...

Countablepath.svg Using a variant of the triangular enumeration we saw above:

-   _a_₀ maps to 0
-   _a_₁ maps to 1
-   _b_₀ maps to 2
-   _a_₂ maps to 3
-   _b_₁ maps to 4
-   _c_₀ maps to 5
-   _a_₃ maps to 6
-   _b_₂ maps to 7
-   _c_₁ maps to 8
-   _d_₀ maps to 9
-   _a_₄ maps to 10
-   ...

Note that this only works if the sets A, B, C, ... are disjoint. If not, then the union is even smaller and is therefore also countable by a previous theorem.

Also note that we need the axiom of countable choice to index _all_ the sets A, B, C, ... simultaneously.

THEOREM: The set of all finite-length sequences of natural numbers is countable.

This set is the union of the length-1 sequences, the length-2 sequences, the length-3 sequences, each of which is a countable set (finite Cartesian product). So we are talking about a countable union of countable sets, which is countable by the previous theorem.

THEOREM: The set of all finite subsets of the natural numbers is countable.

The elements of any finite subset can be ordered into a finite sequence. There are only countably many finite sequences, so also there are only countably many finite subsets.

The following theorem gives equivalent formulations in terms of a bijective function or a surjective function. A proof of this result can be found in Lang's text.[10]

(BASIC) THEOREM: Let _S_ be a set. The following statements are equivalent:

1.  _S_ is countable, i.e. there exists an injective function _f_ : _S_ → N.
2.  Either _S_ is empty or there exists a surjective function _g_ : N → _S_.
3.  Either _S_ is finite or there exists a bijection _h_ : N → _S_.

COROLLARY: Let _S_ and _T_ be sets.

1.  If the function _f_ : _S_ → _T_ is injective and _T_ is countable then _S_ is countable.
2.  If the function _g_ : _S_ → _T_ is surjective and _S_ is countable then _T_ is countable.

CANTOR'S THEOREM asserts that if _A_ is a set and _P_(_A_) is its power set, i.e. the set of all subsets of _A_, then there is no surjective function from _A_ to _P_(_A_). A proof is given in the article Cantor's theorem. As an immediate consequence of this and the Basic Theorem above we have:

PROPOSITION: The set _P_(N) is not countable; i.e. it is uncountable.

For an elaboration of this result see Cantor's diagonal argument.

The set of real numbers is uncountable (see Cantor's first uncountability proof), and so is the set of all infinite sequences of natural numbers.


Some technical details

The proofs of the statements in the above section rely upon the existence of functions with certain properties. This section presents functions commonly used in this role, but not the verifications that these functions have the required properties. The Basic Theorem and its Corollary are often used to simplify proofs. Observe that in that theorem can be replaced with any countably infinite set.

PROPOSITION: Any finite set is countable.

PROOF: Let be such a set. Two cases are to be considered: Either is empty or it isn't. 1.) The empty set is even itself a subset of the natural numbers, so it is countable. 2.) If is nonempty and finite, then by definition of finiteness there is a bijection between and the set {1, 2, ..., } for some positive natural number . This function is an injection from into .

PROPOSITION: Any subset of a countable set is countable.[11]

PROOF: The restriction of an injective function to a subset of its domain is still injective.

PROPOSITION: If is a countable set then } is countable.[12]

PROOF: If there is nothing to be shown. Otherwise let be an injection. Define by and for all in . This function is an injection.

PROPOSITION: If and are countable sets then is countable.[13]

PROOF: Let and be injections. Define a new injection by if is in and if is in but not in .

PROPOSITION: The Cartesian product of two countable sets and is countable.[14]

PROOF: Observe that is countable as a consequence of the definition because the function given by is injective.[15] It then follows from the Basic Theorem and the Corollary that the Cartesian product of any two countable sets is countable. This follows because if and are countable there are surjections and . So



is a surjection from the countable set to the set and the Corollary implies is countable. This result generalizes to the Cartesian product of any finite collection of countable sets and the proof follows by induction on the number of sets in the collection.

PROPOSITION: The integers are countable and the rational numbers are countable.

PROOF: The integers are countable because the function given by if is non-negative and if is negative, is an injective function. The rational numbers are countable because the function given by is a surjection from the countable set to the rationals .

PROPOSITION: The algebraic numbers are countable.

PROOF: Per definition, every algebraic number (including complex numbers) is a root of a polynomial with integer coefficients. Given an algebraic number α, let a₀x⁰ + a₁x¹ + a₂x² + ⋯ + a_(n)x^(n) be a polynomial with integer coefficients such that α is the _k_th root of the polynomial, where the roots are sorted by absolute value from small to big, then sorted by argument from small to big. We can define an injection (i. e. one-to-one) function given by f(α) = 2^(k − 1) ⋅ 3^(a₀) ⋅ 5^(a₁) ⋅ 7^(a₂)⋯p_(n + 2)^(a_(n)), while p_(n) is the _n_-th prime.

PROPOSITION: If is a countable set for each in then the union of all is also countable.[16]

PROOF: This is a consequence of the fact that for each there is a surjective function and hence the function

_G_ : N × N → ⋃_(_n_ ∈ N)_A__(_n_),

given by is a surjection. Since is countable, the Corollary implies that the union is countable. We use the axiom of countable choice in this proof to pick for each in a surjection from the non-empty collection of surjections from to .

A topological proof for the uncountability of the real numbers is described at finite intersection property.


Minimal model of set theory is countable

If there is a set that is a standard model (see inner model) of ZFC set theory, then there is a minimal standard model (_see_ Constructible universe). The Löwenheim–Skolem theorem can be used to show that this minimal model is countable. The fact that the notion of "uncountability" makes sense even in this model, and in particular that this model _M_ contains elements that are:

-   subsets of _M_, hence countable,
-   but uncountable from the point of view of _M_,

was seen as paradoxical in the early days of set theory, see Skolem's paradox.

The minimal standard model includes all the algebraic numbers and all effectively computable transcendental numbers, as well as many other kinds of numbers.


Total orders

Countable sets can be totally ordered in various ways, e.g.:

-   Well-orders (see also ordinal number):
    -   The usual order of natural numbers (0, 1, 2, 3, 4, 5, ...)
    -   The integers in the order (0, 1, 2, 3, ...; −1, −2, −3, ...)
-   Other (_not_ well orders):
    -   The usual order of integers (..., −3, −2, −1, 0, 1, 2, 3, ...)
    -   The usual order of rational numbers (Cannot be explicitly written as an ordered list!)

Note that in both examples of well orders here, any subset has a _least element_; and in both examples of non-well orders, _some_ subsets do not have a _least element_. This is the key definition that determines whether a total order is also a well order.


See also

-   Aleph number
-   Counting
-   Hilbert's paradox of the Grand Hotel
-   Uncountable set


Notes


References

-   -   -   -   -   -   Reprinted by Springer-Verlag, New York, 1974. (Springer-Verlag edition). Reprinted by Martino Fine Books, 2011. (Paperback edition).

-   -   -


External links

-

Category:Basic concepts in infinite set theory Category:Cardinal numbers Category:Infinity

[1]

[2]

[3]

[4]

[5] Since there is an obvious bijection between and }, it makes no difference whether one considers 0 a natural number or not. In any case, this article follows ISO 31-11 and the standard convention in mathematical logic, which takes 0 as a natural number.

[6]

[7] Cantor 1878, p. 242.

[8] Ferreirós 2007, pp. 268, 272–273.

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]