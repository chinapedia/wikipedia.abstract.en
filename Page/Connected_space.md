In topology and related branches of mathematics, a CONNECTED SPACE is a topological space that cannot be represented as the union of two or more disjoint non-empty open subsets. Connectedness is one of the principal topological properties that are used to distinguish topological spaces.

A subset of a topological space _X_ is a CONNECTED SET if it is a connected space when viewed as a subspace of _X_.

Some related but stronger conditions are path connected, simply connected, and n-connected. Another related notion is locally connected, which neither implies nor follows from connectedness.


Formal definition

A topological space _X_ is said to be DISCONNECTED if it is the union of two disjoint non-empty open sets. Otherwise, _X_ is said to be CONNECTED. A subset of a topological space is said to be connected if it is connected under its subspace topology. Some authors exclude the empty set (with its unique topology) as a connected space, but this article does not follow that practice.

For a topological space _X_ the following conditions are equivalent:

1.  _X_ is connected, that is, it cannot be divided into two disjoint non-empty open sets.
2.  _X_ cannot be divided into two disjoint non-empty closed sets.
3.  The only subsets of _X_ which are both open and closed (clopen sets) are _X_ and the empty set.
4.  The only subsets of _X_ with empty boundary are _X_ and the empty set.
5.  _X_ cannot be written as the union of two non-empty separated sets (sets for which each is disjoint from the other's closure).
6.  All continuous functions from _X_ to {0,1} are constant, where {0,1} is the two-point space endowed with the discrete topology.

Connected components

The maximal connected subsets (ordered by inclusion) of a non-empty topological space are called the CONNECTED COMPONENTS of the space. The components of any topological space _X_ form a partition of _X_: they are disjoint, non-empty, and their union is the whole space. Every component is a closed subset of the original space. It follows that, in the case where their number is finite, each component is also an open subset. However, if their number is infinite, this might not be the case; for instance, the connected components of the set of the rational numbers are the one-point sets (singletons), which are not open.

Let Γ_(x) be the connected component of _x_ in a topological space _X_, and Γ_(x)′ be the intersection of all clopen sets containing _x_ (called quasi-component of _x_.) Then Γ_(x) ⊂ Γ′_(x) where the equality holds if _X_ is compact Hausdorff or locally connected.

Disconnected spaces

A space in which all components are one-point sets is called totally disconnected. Related to this property, a space _X_ is called TOTALLY SEPARATED if, for any two distinct elements _x_ and _y_ of _X_, there exist disjoint open sets _U_ containing _x_ and _V_ containing _y_ such that _X_ is the union of _U_ and _V_. Clearly, any totally separated space is totally disconnected, but the converse does not hold. For example take two copies of the rational numbers Q, and identify them at every point except zero. The resulting space, with the quotient topology, is totally disconnected. However, by considering the two copies of zero, one sees that the space is not totally separated. In fact, it is not even Hausdorff, and the condition of being totally separated is strictly stronger than the condition of being Hausdorff.


Examples

-   The closed interval in the standard subspace topology is connected; although it can, for example, be written as the union of and , the second set is not open in the chosen topology of .
-   The union of and is disconnected; both of these intervals are open in the standard topological space .
-   is disconnected.

-   A convex subset of R^(n) is connected; it is actually simply connected.
-   A Euclidean plane excluding the origin, (0, 0), is connected, but is not simply connected. The three-dimensional Euclidean space without the origin is connected, and even simply connected. In contrast, the one-dimensional Euclidean space without the origin is not connected.
-   A Euclidean plane with a straight line removed is not connected since it consists of two half-planes.
-   ℝ, The space of real numbers with the usual topology, is connected.
-   If even a single point is removed from ℝ, the remainder is disconnected. However, if even a countable infinity of points are removed from $\R^n$, where , the remainder is connected. If , then $\R^n$ remains simply connected after removal of countable many points.
-   Any topological vector space, e.g. any Hilbert space or Banach space, over a connected field (such as $\R$ or $\C$), is simply connected.
-   Every discrete topological space with at least two elements is disconnected, in fact such a space is totally disconnected. The simplest example is the discrete two-point space.[1]
-   On the other hand, a finite set might be connected. For example, the spectrum of a discrete valuation ring consists of two points and is connected. It is an example of a Sierpiński space.
-   The Cantor set is totally disconnected; since the set contains uncountably many points, it has uncountably many components.
-   If a space _X_ is homotopy equivalent to a connected space, then _X_ is itself connected.
-   The topologist's sine curve is an example of a set that is connected but is neither path connected nor locally connected.
-   The general linear group GL (n, R) (that is, the group of _n_-by-_n_ real, invertible matrices) consists of two connected components: the one with matrices of positive determinant and the other of negative determinant. In particular, it is not connected. In contrast, GL (n, C) is connected. More generally, the set of invertible bounded operators on a complex Hilbert space is connected.
-   The spectra of commutative local ring and integral domains are connected. More generally, the following are equivalent[2]
    1.  The spectrum of a commutative ring _R_ is connected
    2.  Every finitely generated projective module over _R_ has constant rank.
    3.  _R_ has no idempotent  ≠ 0, 1 (i.e., _R_ is not a product of two rings in a nontrivial way).

An example of a space that is not connected is a plane with an infinite line deleted from it. Other examples of disconnected spaces (that is, spaces which are not connected) include the plane with an annulus removed, as well as the union of two disjoint closed disks, where all examples of this paragraph bear the subspace topology induced by two-dimensional Euclidean space.


Path connectedness

Path-connected_space.svg

A PATH-CONNECTED SPACE is a stronger notion of connectedness, requiring the structure of a path. A PATH from a point _x_ to a point _y_ in a topological space _X_ is a continuous function _ƒ_ from the unit interval [0,1] to _X_ with _ƒ_(0) = _x_ and _ƒ_(1) = _y_. A PATH-COMPONENT of _X_ is an equivalence class of _X_ under the equivalence relation which makes _x_ equivalent to _y_ if there is a path from _x_ to _y_. The space _X_ is said to be PATH-CONNECTED (or PATHWISE CONNECTED or 0-CONNECTED) if there is exactly one path-component, i.e. if there is a path joining any two points in _X_. Again, many authors exclude the empty space.

Every path-connected space is connected. The converse is not always true: examples of connected spaces that are not path-connected include the extended long line _L_* and the _topologist's sine curve_.

Subsets of the real line R are connected if and only if they are path-connected; these subsets are the intervals of R. Also, open subsets of R^(_n_) or C^(_n_) are connected if and only if they are path-connected. Additionally, connectedness and path-connectedness are the same for finite topological spaces.


Arc connectedness

A space _X_ is said to be ARC-CONNECTED or ARCWISE CONNECTED if any two distinct points can be joined by an _arc_, that is a path _ƒ_ which is a homeomorphism between the unit interval [0, 1] and its image _ƒ_([0, 1]). It can be shown any Hausdorff space which is path-connected is also arc-connected. An example of a space which is path-connected but not arc-connected is provided by adding a second copy 0' of 0 to the nonnegative real numbers [0, ∞). One endows this set with a partial order by specifying that 0'<_a_ for any positive number _a_, but leaving 0 and 0' incomparable. One then endows this set with the _order topology_, that is, one takes the open intervals (_a_, _b_) = {_x_ | _a_ < _x_ < _b_} and the half-open intervals [0, _a_) = {_x_ | 0 ≤ x < _a_}, [0', _a_) = {_x_ | 0' ≤ _x_ < _a_} as a base for the topology. The resulting space is a T₁ space but not a Hausdorff space. Clearly 0 and 0' can be connected by a path but not by an arc in this space.


Local connectedness

A topological space is said to be LOCALLY CONNECTED AT A POINT _x_ if every neighbourhood of _x_ contains a connected open neighbourhood. It is LOCALLY CONNECTED if it has a base of connected sets. It can be shown that a space _X_ is locally connected if and only if every component of every open set of _X_ is open.

Similarly, a topological space is said to be if it has a base of path-connected sets. An open subset of a locally path-connected space is connected if and only if it is path-connected. This generalizes the earlier statement about R^(_n_) and C^(_n_), each of which is locally path-connected. More generally, any topological manifold is locally path-connected. Topologists_(warsaw)_sine_curve.png Locally connected does not imply connected, nor does locally path-connected imply path connected. A simple example of a locally connected (and locally path-connected) space that is not connected (or path-connected) is the union of two separated intervals in $\R$, such as (0, 1) ∪ (2, 3).

A classical example of a connected space that is not locally connected is the so called topologist's sine curve, defined as $T = \{(0,0)\} \cup \{(x,\sin\left(\tfrac{1}{x}\right):x \in (0,1] \}$, with the Euclidean topology induced by inclusion in $\R^2$.


Set operations

Union_et_intersection_d'ensembles.svgThe INTERSECTION of connected sets is not necessarily connected.

The UNION of connected sets is not necessarily connected. Consider a collection {X_(i)} of connected sets whose union is X = ⋃_(i)X_(i). If is disconnected and U ∪ V is a separation of (with U, V disjoint and open in ), then each X_(i) must be entirely contained in either or , since otherwise, X_(i) ∩ U and X_(i) ∩ V (which are disjoint and open in X_(i)) would be a separation of X_(i), contradicting the assumption that it is connected.

Each ellipse is a connected set, but the union is not connected, since it can be partitioned to two disjoint open sets U and V.

This means that, if the union is disconnected, then the collection {X_(i)} can be partitioned to two sub-collections, such that the unions of the sub-collections are disjoint and open in (see picture). This implies that in several cases, a union of connected sets _is_ necessarily connected. In particular:

1.  If the common intersection of all sets is not empty (⋂X_(i) ≠ ∅), then obviously they cannot be partitioned to collections with disjoint unions. Hence _the union of connected sets with non-empty intersection is connected_.
2.  If the intersection of each pair of sets is not empty (∀i, j : X_(i) ∩ X_(j) ≠ ∅) then again they cannot be partitioned to collections with disjoint unions, so their union must be connected.
3.  If the sets can be ordered as a "linked chain", i.e. indexed by integer indices and ∀i : X_(i) ∩ X_(i + 1) ≠ ∅, then again their union must be connected.
4.  If the sets are pairwise-disjoint and the quotient space X/{X_(i)} is connected, then must be connected. Otherwise, if U ∪ V is a separation of then q(U) ∪ q(V) is a separation of the quotient space (since q(U), q(V) are disjoint and open in the quotient space).[3]

Connectedness-of-set-difference.png

The set difference of connected sets is not necessarily connected. However, if X ⊇ Y and their difference is disconnected (and thus can be written as a union of two open sets _X_ and _X_), then the union of _Y_ with each such component is connected (i.e. Y ∪ X_(i) is connected for all _i_).

PROOF:[4] By contradiction, suppose Y ∪ X₁ is not connected. So it can be written as the union of two disjoint open sets, e.g. Y ∪ X₁ = Z₁ ∪ Z₂. Because _Y_ is connected, it must be entirely contained in one of these components, say _Z_, and thus _Z_ is contained in _X_. Now we know that:

_X_ = (_Y_∪_X_₁) ∪ _X_₂ = (_Z_₁∪_Z_₂) ∪ _X_₂ = (_Z_₁∪_X_₂) ∪ (_Z_₂∩_X_₁)
The two sets in the last union are disjoint and open in _X_, so there is a separation of _X_, contradicting the fact that _X_ is connected.


Theorems

-   MAIN THEOREM OF CONNECTEDNESS : Let _X_ and _Y_ be topological spaces and let _ƒ_ : _X_ → _Y_ be a continuous function. If _X_ is (path-)connected then the image _ƒ_(_X_) is (path-)connected. This result can be considered a generalization of the intermediate value theorem.
-   Every path-connected space is connected.
-   Every locally path-connected space is locally connected.
-   A locally path-connected space is path-connected if and only if it is connected.
-   The closure of a connected subset is connected. Furthermore, any subset between a connected subset and its closure is connected.
-   The connected components are always closed (but in general not open)
-   The connected components of a locally connected space are also open.
-   The connected components of a space are disjoint unions of the path-connected components (which in general are neither open nor closed).
-   Every quotient of a connected (resp. locally connected, path-connected, locally path-connected) space is connected (resp. locally connected, path-connected, locally path-connected).
-   Every product of a family of connected (resp. path-connected) spaces is connected (resp. path-connected).
-   Every open subset of a locally connected (resp. locally path-connected) space is locally connected (resp. locally path-connected).
-   Every manifold is locally path-connected.


Graphs

Graphs have path connected subsets, namely those subsets for which every pair of points has a path of edges joining them. But it is not always possible to find a topology on the set of points which induces the same connected sets. The 5-cycle graph (and any _n_-cycle with _n_ > 3 odd) is one such example.

As a consequence, a notion of connectedness can be formulated independently of the topology on a space. To wit, there is a category of connective spaces consisting of sets with collections of connected subsets satisfying connectivity axioms; their morphisms are those functions which map connected sets to connected sets . Topological spaces and graphs are special cases of connective spaces; indeed, the finite connective spaces are precisely the finite graphs.

However, every graph can be canonically made into a topological space, by treating vertices as points and edges as copies of the unit interval (see topological graph theory#Graphs as topological spaces). Then one can show that the graph is connected (in the graph theoretical sense) if and only if it is connected as a topological space.


Stronger forms of connectedness

There are stronger forms of connectedness for topological spaces, for instance:

-   If there exist no two disjoint non-empty open sets in a topological space, _X_, _X_ must be connected, and thus hyperconnected spaces are also connected.
-   Since a simply connected space is, by definition, also required to be path connected, any simply connected space is also connected. Note however, that if the "path connectedness" requirement is dropped from the definition of simple connectivity, a simply connected space does not need to be connected.
-   Yet stronger versions of connectivity include the notion of a contractible space. Every contractible space is path connected and thus also connected.

In general, note that any path connected space must be connected but there exist connected spaces that are not path connected. The deleted comb space furnishes such an example, as does the above-mentioned topologist's sine curve.


See also

-   Connected component (graph theory)
-   Connectedness locus
-   Extremally disconnected space
-   Locally connected space
-   _n_-connected
-   Uniformly connected space
-   Pixel connectivity


References


Further reading

-   -   -   -   .

Category:General topology Category:Properties of topological spaces

[1]

[2] Charles Weibel, The K-book: An introduction to algebraic K-theory

[3]

[4]