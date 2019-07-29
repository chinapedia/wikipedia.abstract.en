In mathematics, a DIRECTED SET (or a DIRECTED PREORDER or a FILTERED SET) is a nonempty set _A_ together with a reflexive and transitive binary relation ≤ (that is, a preorder), with the additional property that every pair of elements has an upper bound.[1] In other words, for any _a_ and _b_ in _A_ there must exist _c_ in _A_ with _a_ ≤ _c_ and _b_ ≤ _c_.

The notion defined above is sometimes called an UPWARD DIRECTED SET. A DOWNWARD DIRECTED SET is defined analogously,[2] meaning when every pair of elements is bounded below.[3] Some authors (and this article) assume that a directed set is directed upward, unless otherwise stated. Beware that other authors call a set directed if and only if it is directed both upward and downward.[4]

Directed sets are a generalization of nonempty totally ordered sets. That is, all totally ordered sets are directed sets (contrast _partially_ ordered sets, which need not be directed). Join semilattices (which are partially ordered sets) are directed sets as well, but not conversely. Likewise, lattices are directed sets both upward and downward.

In topology, directed sets are used to define nets, which generalize sequences and unite the various notions of limit used in analysis. Directed sets also give rise to direct limits in abstract algebra and (more generally) category theory.


Equivalent definition

In addition to the definition above, there is an equivalent definition. A DIRECTED SET is a set _A_ with a preorder such that every finite subset of _A_ has an upper bound. In this definition, the existence of an upper bound of the empty subset implies that _A_ is nonempty.


Examples

Examples of directed sets include:

-   The set of natural numbers N with the ordinary order ≤ is a directed set (and so is every totally ordered set).
-   Let D₁ and D₂ be directed sets. Then the Cartesian product set D₁ × D₂ can be made into a directed set by defining (_n_₁, _n_₂) ≤ (_m_₁, _m_₂) if and only if _n_₁ ≤ _m_₁ and _n_₂ ≤ _m_₂. In analogy to the product order this is the product direction on the Cartesian product.
-   It follows from previous example that the set N × N of pairs of natural numbers can be made into a directed set by defining (_n_₀, _n_₁) ≤ (_m_₀, _m_₁) if and only if _n_₀ ≤ _m_₀ and _n_₁ ≤ _m_₁.
-   If _x_₀ is a real number, we can turn the set R − {_x_₀} into a directed set by writing _a_ ≤ _b_ if and only if
    |_a_ − _x_₀| ≥ |_b_ − _x_₀|. We then say that the reals have been _directed towards x₀_. This is an example of a directed set that is not ordered (neither totally nor partially).
-   A (trivial) example of a partially ordered set that is _NOT_ directed is the set {_a_, _b_}, in which the only order relations are _a_ ≤ _a_ and _b_ ≤ _b_. A less trivial example is like the previous example of the "reals directed towards x₀" but in which the ordering rule only applies to pairs of elements on the same side of x₀.
-   If _T_ is a topological space and _x_₀ is a point in _T_, we turn the set of all neighbourhoods of _x_₀ into a directed set by writing _U_ ≤ _V_ if and only if _U_ contains _V_.
    -   For every _U_: _U_ ≤ _U_; since _U_ contains itself.
    -   For every _U_, _V,_ and _W_: if _U_ ≤ _V_ and _V_ ≤ _W_, then we have _U_ ⊇ _V_ and _V_ ⊇ _W_, which implies _U_ ⊇ _W_. Thus _U ≤ W._
    -   For every _U_ and _V_: since _x₀_ ∈ _U_ ∩ _V_, and since both _U_ ⊇ _U ∩ V_ and _V_ ⊇ _U ∩ V_, we have _U ≤ U ∩ V_ and V _≤ U ∩ V._
-   In a poset _P_, every lower closure of an element, i.e. every subset of the form {_a_ | _a_ in _P_, _a_ ≤ _x_} where _x_ is a fixed element from _P_, is directed.


Contrast with semilattices

Directed_set,_but_no_join_semi-lattice.png

Directed sets are a more general concept than (join) semilattices: every join semilattice is a directed set, as the join or least upper bound of two elements is the desired _c_. The converse does not hold however, witness the directed set {1000,0001,1101,1011,1111} ordered bitwise (e.g. 1000 ≤ 1011 holds, but 0001 ≤ 1000 does not, since in the last bit 1 > 0), where {1000,0001} has three upper bounds but no _least_ upper bound, cf. picture. (Also note that without 1111, the set is not directed.)


Directed subsets

The order relation in a directed set is not required to be antisymmetric, and therefore directed sets are not always partial orders. However, the term _directed set_ is also used frequently in the context of posets. In this setting, a subset _A_ of a partially ordered set (_P_,≤) is called a DIRECTED SUBSET if it is a directed set according to the same partial order: in other words, it is not the empty set, and every pair of elements has an upper bound. Here the order relation on the elements of _A_ is inherited from _P_; for this reason, reflexivity and transitivity need not be required explicitly.

A directed subset of a poset is not required to be downward closed; a subset of a poset is directed if and only if its downward closure is an ideal. While the definition of a directed set is for an "upward-directed" set (every pair of elements has an upper bound), it is also possible to define a downward-directed set in which every pair of elements has a common lower bound. A subset of a poset is downward-directed if and only if its upper closure is a filter.

Directed subsets are used in domain theory, which studies directed complete partial orders.[5] These are posets in which every upward-directed set is required to have a least upper bound. In this context, directed subsets again provide a generalization of convergent sequences.


See also

-   Filtered category
-   Centered set
-   Linked set


Notes


References

-   J. L. Kelley (1955), _General Topology_.
-   Gierz, Hofmann, Keimel, _et al._ (2003), _Continuous Lattices and Domains_, Cambridge University Press. .

Category:Binary relations Category:Order theory Category:General topology

[1] Kelley, p. 65.

[2]

[3]

[4]

[5] Gierz, p. 2.