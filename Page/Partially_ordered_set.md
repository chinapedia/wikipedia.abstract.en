of the set of all subsets of a three-element set {x, y, z}, ordered by inclusion. Distinct sets on the same horizontal level are incomparable with each other. Some other pairs, such as {x} and {y,z}, are also incomparable.]] In mathematics, especially order theory, a PARTIALLY ORDERED SET (also POSET) formalizes and generalizes the intuitive concept of an ordering, sequencing, or arrangement of the elements of a set. A poset consists of a set together with a binary relation indicating that, for certain pairs of elements in the set, one of the elements precedes the other in the ordering. The word "partial" in the names "partial order" or "partially ordered set" is used as an indication that not every pair of elements needs to be comparable. That is, there may be pairs of elements for which neither element precedes the other in the poset. Partial orders thus generalize total orders, in which every pair is comparable.

To be a partial order, a binary relation must be reflexive (each element is comparable to itself), antisymmetric (no two different elements precede each other), and transitive (the start of a chain of precedence relations must precede the end of the chain).

One familiar example of a partially ordered set is a collection of people ordered by genealogical descendancy. Some pairs of people bear the descendant-ancestor relationship, but other pairs of people are incomparable, with neither being a descendant of the other.

A poset can be visualized through its Hasse diagram, which depicts the ordering relation.[1]


Formal definition

A (non-strict) PARTIAL ORDER[2] is a binary relation ≤ over a set _P_ satisfying particular axioms which are discussed below. When _a_ ≤ _b_, we say that _a_ is RELATED TO _b_. (This does not imply that _b_ is also related to _a_, because the relation need not be symmetric.)

The axioms for a non-strict partial order state that the relation ≤ is reflexive, antisymmetric, and transitive. That is, for all _a_, _b_, and _c_ in _P_, it must satisfy:

1.  _a_ ≤ _a_ (reflexivity: every element is related to itself).
2.  if _a_ ≤ _b_ and _b_ ≤ _a_, then _a_ = _b_ (antisymmetry: two distinct elements cannot be related in both directions).
3.  if _a_ ≤ _b_ and _b_ ≤ _c_, then _a_ ≤ _c_ (transitivity: if a first element is related to a second element, and, in turn, that element is related to a third element, then the first element is related to the third element).

In other words, a partial order is an antisymmetric preorder.

A set with a partial order is called a PARTIALLY ORDERED SET (also called a POSET). The term _ordered set_ is sometimes also used, as long as it is clear from the context that no other kind of order is meant. In particular, totally ordered sets can also be referred to as "ordered sets", especially in areas where these structures are more common than posets.

For _a, b_, elements of a partially ordered set _P_, if _a_ ≤ _b_ or _b_ ≤ _a_, then _a_ and _b_ are COMPARABLE. Otherwise they are INCOMPARABLE. In the figure on top-right, e.g. {x} and {x,y,z} are comparable, while {x} and {y} are not. A partial order under which every pair of elements is comparable is called a TOTAL ORDER or LINEAR ORDER; a totally ordered set is also called a CHAIN (e.g., the natural numbers with their standard order). A subset of a poset in which no two distinct elements are comparable is called an ANTICHAIN (e.g. the set of singletons in the top-right figure). An element _a_ is said to be COVERED by another element _b_, written _a_<:_b_, if _a_ is strictly less than _b_ and no third element _c_ fits between them; formally: if both _a_≤_b_ and _a_≠_b_ are true, and _a_≤_c_≤_b_ is false for each _c_ with _a_≠_c_≠_b_. A more concise definition will be given below using the strict order corresponding to "≤". For example, {x} is covered by {x,z} in the top-right figure, but not by {x,y,z}.


Examples

Standard examples of posets arising in mathematics include:

-   The real numbers ordered by the standard _less-than-or-equal_ relation ≤ (a totally ordered set as well).
-   The set of subsets of a given set (its power set) ordered by inclusion (see the figure on top-right). Similarly, the set of sequences ordered by subsequence, and the set of strings ordered by substring.
-   The set of natural numbers equipped with the relation of divisibility.
-   The vertex set of a directed acyclic graph ordered by reachability.
-   The set of subspaces of a vector space ordered by inclusion.
-   For a partially ordered set _P_, the sequence space containing all sequences of elements from _P_, where sequence _a_ precedes sequence _b_ if every item in _a_ precedes the corresponding item in _b_. Formally, if and only if for all _n_ in ℕ, i.e. a componentwise order.
-   For a set _X_ and a partially ordered set _P_, the function space containing all functions from _X_ to _P_, where _f_ ≤ _g_ if and only if _f_(_x_) ≤ _g_(_x_) for all _x_ in _X_.
-   A fence, a partially ordered set defined by an alternating sequence of order relations _a_ < _b_ > _c_ < _d_ ...
-   The set of events in special relativity and, in most cases,[3] general relativity, where for two events X and Y, X ≤ Y if and only if Y is in the future light cone of X. An event Y can only be causally affected by X if X ≤ Y.


Extrema

  --
  --

  --
  --

There are several notions of "greatest" and "least" element in a poset _P_, notably:

-   Greatest element and least element: An element _g_ in _P_ is a greatest element if for every element _a_ in _P_, _a_ ≤ _g_. An element _m_ in _P_ is a least element if for every element _a_ in _P_, _a_ ≥ _m_. A poset can only have one greatest or least element.
-   Maximal elements and minimal elements: An element _g_ in P is a maximal element if there is no element _a_ in _P_ such that _a_ > _g_. Similarly, an element _m_ in _P_ is a minimal element if there is no element _a_ in P such that _a_ < _m_. If a poset has a greatest element, it must be the unique maximal element, but otherwise there can be more than one maximal element, and similarly for least elements and minimal elements.
-   Upper and lower bounds: For a subset _A_ of _P_, an element _x_ in _P_ is an upper bound of _A_ if _a_ ≤ _x_, for each element _a_ in _A_. In particular, _x_ need not be in _A_ to be an upper bound of _A_. Similarly, an element _x_ in _P_ is a lower bound of _A_ if _a_ ≥ _x_, for each element _a_ in _A_. A greatest element of _P_ is an upper bound of _P_ itself, and a least element is a lower bound of _P_.

For example, consider the positive integers, ordered by divisibility: 1 is a least element, as it divides all other elements; on the other hand this poset does not have a greatest element (although if one would include 0 in the poset, which is a multiple of any integer, that would be a greatest element; see figure). This partially ordered set does not even have any maximal elements, since any _g_ divides for instance 2_g_, which is distinct from it, so _g_ is not maximal. If the number 1 is excluded, while keeping divisibility as ordering on the elements greater than 1, then the resulting poset does not have a least element, but any prime number is a minimal element for it. In this poset, 60 is an upper bound (though not a least upper bound) of the subset {2,3,5,10}, which does not have any lower bound (since 1 is not in the poset); on the other hand 2 is a lower bound of the subset of powers of 2, which does not have any upper bound.


Orders on the Cartesian product of partially ordered sets

  -------------------------------------------------------------------------------
  by (3,3) and covering (3,3) are highlighted in green and red, respectively.]]
  -------------------------------------------------------------------------------

  --
  --

  --
  --

In order of increasing strength, i.e., decreasing sets of pairs, three of the possible partial orders on the Cartesian product of two partially ordered sets are (see figures):

-   the lexicographical order:   (_a_,_b_) ≤ (_c_,_d_) if _a_ < _c_ or (_a_ = _c_ and _b_ ≤ _d_);
-   the product order:   (_a_,_b_) ≤ (_c_,_d_) if _a_ ≤ _c_ and _b_ ≤ _d_;
-   the reflexive closure of the direct product of the corresponding strict orders:   (_a_,_b_) ≤ (_c_,_d_) if (_a_ < _c_ and _b_ < _d_) or (_a_ = _c_ and _b_ = _d_).

All three can similarly be defined for the Cartesian product of more than two sets.

Applied to ordered vector spaces over the same field, the result is in each case also an ordered vector space.

See also orders on the Cartesian product of totally ordered sets.


Sums of partially ordered sets

of a series-parallel partial order, formed as the ordinal sum of three smaller partial orders.]] Another way to combine two posets is the ORDINAL SUM[4] (or LINEAR SUM[5]), _Z_ = _X_ ⊕ _Y_, defined on the union of the underlying sets _X_ and _Y_ by the order _a_ ≤_(_Z_) _b_ if and only if:

-   _a_, _b_ ∈ _X_ with _a_ ≤_(_X_) _b_, or
-   _a_, _b_ ∈ _Y_ with _a_ ≤_(_Y_) _b_, or
-   _a_ ∈ _X_ and _b_ ∈ _Y_.

If two posets are well-ordered, then so is their ordinal sum.[6] The ordinal sum operation is one of two operations used to form series-parallel partial orders, and in this context is called series composition. The other operation used to form these orders, the disjoint union of two partially ordered sets (with no order relation between elements of one set and elements of the other set) is called in this context parallel composition.


Strict and non-strict partial orders

In some contexts, the partial order defined above is called a NON-STRICT (or REFLEXIVE) PARTIAL ORDER. In these contexts, a STRICT (or IRREFLEXIVE) PARTIAL ORDER "<" is a binary relation that is irreflexive, transitive and asymmetric, i.e. which satisfies for all _a_, _b_, and _c_ in _P_:

-   not _a < a_ (irreflexivity),
-   if _a < b_ and _b < c_ then _a < c_ (transitivity), and
-   if _a < b_ then not _b < a_ (asymmetry; implied by irreflexivity and transitivity[7]).

Strict and non-strict partial orders are closely related. A non-strict partial order may be converted to a strict partial order by removing all relationships of the form _a_ ≤ _a_. Conversely, a strict partial order may be converted to a non-strict partial order by adjoining all relationships of that form. Thus, if "≤" is a non-strict partial order, then the corresponding strict partial order "<" is the irreflexive kernel given by:

    _a_ < _b_ if _a_ ≤ _b_ and _a_ ≠ _b_

Conversely, if "<" is a strict partial order, then the corresponding non-strict partial order "≤" is the reflexive closure given by:

    _a_ ≤ _b_ if _a_ < _b_ or _a_ = _b_.

This is the reason for using the notation "≤".

Using the strict order "<", the relation "_a_ is covered by _b_" can be equivalently rephrased as "_a_<_b_, but not _a_<_c_<_b_ for any _c_". Strict partial orders are useful because they correspond more directly to directed acyclic graphs (dags): every strict partial order is a dag, and the transitive closure of a dag is both a strict partial order and also a dag itself.


Inverse and order dual

The inverse (or converse) of a partial order relation ≤ is the converse of ≤. Typically denoted ≥, it is the relation that satisfies _x_ ≥ _y_ if and only if _y_ ≤ _x_. The inverse of a partial order relation is reflexive, transitive, and antisymmetric, and hence itself a partial order relation. The order dual of a partially ordered set is the same set with the partial order relation replaced by its inverse. The irreflexive relation > is to ≥ as < is to ≤.

Any one of the four relations ≤, <, ≥, and > on a given set uniquely determines the other three.

In general two elements _x_ and _y_ of a partial order may stand in any of four mutually exclusive relationships to each other: either _x_ < _y_, or _x_ = _y_, or _x_ > _y_, or _x_ and _y_ are _incomparable_ (none of the other three). A totally ordered set is one that rules out this fourth possibility: all pairs of elements are comparable and we then say that trichotomy holds. The natural numbers, the integers, the rationals, and the reals are all totally ordered by their algebraic (signed) magnitude whereas the complex numbers are not. This is not to say that the complex numbers cannot be totally ordered; we could for example order them lexicographically via _x_+I_y_ < _u_+I_v_ if and only if _x_ < _u_ or (_x_ = _u_ and _y_ < _v_), but this is not ordering by magnitude in any reasonable sense as it makes 1 greater than 100I. Ordering them by absolute magnitude yields a preorder in which all pairs are comparable, but this is not a partial order since 1 and I have the same absolute magnitude but are not equal, violating antisymmetry.


Mappings between partially ordered sets

  --
  --

  --
  --

Given two partially ordered sets (_S_,≤) and (_T_,≤), a function _f_: _S_ → _T_ is called ORDER-PRESERVING, or MONOTONE, or ISOTONE, if for all _x_ and _y_ in _S_, _x_≤_y_ implies _f_(_x_) ≤ _f_(_y_). If (_U_,≤) is also a partially ordered set, and both _f_: _S_ → _T_ and _g_: _T_ → _U_ are order-preserving, their composition (_g_∘_f_): _S_ → _U_ is order-preserving, too. A function _f_: _S_ → _T_ is called ORDER-REFLECTING if for all _x_ and _y_ in _S_, _f_(_x_) ≤ _f_(_y_) implies _x_≤_y_. If _f_ is both order-preserving and order-reflecting, then it is called an ORDER-EMBEDDING of (_S_,≤) into (_T_,≤). In the latter case, _f_ is necessarily injective, since _f_(_x_) = _f_(_y_) implies _x_ ≤ _y_ and _y_ ≤ _x_. If an order-embedding between two posets _S_ and _T_ exists, one says that _S_ can be EMBEDDED into _T_. If an order-embedding _f_: _S_ → _T_ is bijective, it is called an ORDER ISOMORPHISM, and the partial orders (_S_,≤) and (_T_,≤) are said to be ISOMORPHIC. Isomorphic orders have structurally similar Hasse diagrams (cf. right picture). It can be shown that if order-preserving maps _f_: _S_ → _T_ and _g_: _T_ → _S_ exist such that _g_∘_f_ and _f_∘_g_ yields the identity function on _S_ and _T_, respectively, then _S_ and _T_ are order-isomorphic. [8]

For example, a mapping _f_: ℕ → ℙ(ℕ) from the set of natural numbers (ordered by divisibility) to the power set of natural numbers (ordered by set inclusion) can be defined by taking each number to the set of its prime divisors. It is order-preserving: if _x_ divides _y_, then each prime divisor of _x_ is also a prime divisor of _y_. However, it is neither injective (since it maps both 12 and 6 to {2,3}) nor order-reflecting (since besides 12 doesn't divide 6). Taking instead each number to the set of its prime power divisors defines a map _g_: ℕ → ℙ(ℕ) that is order-preserving, order-reflecting, and hence an order-embedding. It is not an order-isomorphism (since it e.g. doesn't map any number to the set {4}), but it can be made one by restricting its codomain to _g_(ℕ). The right picture shows a subset of ℕ and its isomorphic image under _g_. The construction of such an order-isomorphism into a power set can be generalized to a wide class of partial orders, called distributive lattices, see "Birkhoff's representation theorem".


Number of partial orders

Sequence [ A001035] in OEIS gives the number of partial orders on a set of _n_ labeled elements:

The number of strict partial orders is the same as that of partial orders.

If the count is made only up to isomorphism, the sequence 1, 1, 2, 5, 16, 63, 318, … is obtained.


Linear extension

A partial order ≤^(*) on a set _X_ is an EXTENSION of another partial order ≤ on _X_ provided that for all elements _x_ and _y_ of _X_, whenever _x_ ≤ _y_, it is also the case that _x_ ≤^(*) _y_. A linear extension is an extension that is also a linear (i.e., total) order. Every partial order can be extended to a total order (order-extension principle).[9]

In computer science, algorithms for finding linear extensions of partial orders (represented as the reachability orders of directed acyclic graphs) are called topological sorting.


In category theory

Every poset (and every preorder) may be considered as a category where, for objects _x_ and _y_, there is at most one morphism from _x_ to _y_. More explicitly, let hom(_x_, _y_) = {(_x_, _y_)} if _x_ ≤ _y_ (and otherwise the empty set) and (_y_, _z_)∘(_x_, _y_) = (_x_, _z_). Such categories are sometimes called _posetal_.

Posets are equivalent to one another if and only if they are isomorphic. In a poset, the smallest element, if it exists, is an initial object, and the largest element, if it exists, is a terminal object. Also, every preordered set is equivalent to a poset. Finally, every subcategory of a poset is isomorphism-closed.


Partial orders in topological spaces

If _P_ is a partially ordered set that has also been given the structure of a topological space, then it is customary to assume that is a closed subset of the topological product space P × P. Under this assumption partial order relations are well behaved at limits in the sense that if a_(i) → a, b_(i) → b and _a__(_i_) ≤ _b__(_i_) for all _i_, then _a_ ≤ _b_.[10]


Intervals

An _interval_ in a poset _P_ is a subset of _P_ with the property that, for any _x_ and _y_ in and any _z_ in _P_, if _x_ ≤ _z_ ≤ _y_, then _z_ is also in . (This definition generalizes the _interval_ definition for real numbers.)

For _a_ ≤ _b_, the closed interval is the set of elements _x_ satisfying _a_ ≤ _x_ ≤ _b_ (i.e. _a_ ≤ _x_ and _x_ ≤ _b_). It contains at least the elements _a_ and _b_.

Using the corresponding strict relation "<", the open interval is the set of elements _x_ satisfying _a_ < _x_ < _b_ (i.e. _a_ < _x_ and _x_ < _b_). An open interval may be empty even if _a_ < _b_. For example, the open interval on the integers is empty since there are no integers such that .

The _half-open intervals_ and are defined similarly.

Sometimes the definitions are extended to allow _a_ > _b_, in which case the interval is empty.

An interval is bounded if there exist elements _a_ and _b_ of _P_ such that . Every interval that can be represented in interval notation is obviously bounded, but the converse is not true. For example, let as a subposet of the real numbers. The subset is a bounded interval, but it has no infimum or supremum in _P_, so it cannot be written in interval notation using elements of _P_.

A poset is called locally finite if every bounded interval is finite. For example, the integers are locally finite under their natural ordering. The lexicographical order on the cartesian product ℕ×ℕ is not locally finite, since . Using the interval notation, the property "_a_ is covered by _b_" can be rephrased equivalently as [_a_, _b_] = {_a_, _b_}.

This concept of an interval in a partial order should not be confused with the particular class of partial orders known as the interval orders.


See also

-   antimatroid, a formalization of orderings on a set that allows more general families of orderings than posets
-   causal set
-   comparability graph
-   complete partial order
-   directed set
-   graded poset
-   incidence algebra
-   lattice
-   locally finite poset
-   Möbius function on posets
-   ordered group
-   poset topology, a kind of topological space that can be defined from any poset
-   Scott continuity – continuity of a function between two partial orders.
-   semilattice
-   semiorder
-   stochastic dominance
-   strict weak ordering – strict partial order "<" in which the relation is transitive.
-   Zorn's lemma


Notes


References

-   -   -   -


External links

-   -

de:Ordnungsrelation#Halbordnung

Category:Order theory Category:Binary relations

[1]

[2]

[3] See General_relativity#Time_travel

[4]

[5]

[6]

[7]  Lemma 1.1 (iv). Note that this source refers to asymmetric relations as "strictly antisymmetric".

[8] .

[9]

[10]