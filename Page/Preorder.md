In mathematics, especially in order theory, a PREORDER or QUASIORDER is a binary relation that is reflexive and transitive. Preorders are more general than equivalence relations and (non-strict) partial orders, both of which are special cases of a preorder. An antisymmetric preorder is a partial order, and a symmetric preorder is an equivalence relation.

The name _preorder_ comes from the idea that preorders (that are not partial orders) are 'almost' (partial) orders, but not quite; they are neither necessarily antisymmetric nor asymmetric. Because a preorder is a binary relation, the symbol ≤ can be used as the notational device for the relation. However, because they are not necessarily antisymmetric, some of the ordinary intuition associated to the symbol ≤ may not apply. On the other hand, a preorder can be used, in a straightforward fashion, to define a partial order and an equivalence relation. Doing so, however, is not always useful or worthwhile, depending on the problem domain being studied.

In words, when , one may say that _b_ _covers_ _a_ or that _a_ _precedes_ _b_, or that _b_ _reduces_ to _a_. Occasionally, the notation ← or ≲ is used instead of ≤.

To every preorder, there corresponds a directed graph, with elements of the set corresponding to vertices, and the order relation between pairs of elements corresponding to the directed edges between vertices. The converse is not true: most directed graphs are neither reflexive nor transitive. In general, the corresponding graphs may contain cycles. A preorder that is antisymmetric no longer has cycles; it is a partial order, and corresponds to a directed acyclic graph. A preorder that is symmetric is an equivalence relation; it can be thought of as having lost the direction markers on the edges of the graph. In general, a preorder's corresponding directed graph may have many disconnected components.


Formal definition

Consider some set _P_ and a binary relation ≤ on _P_. Then ≤ is a PREORDER, or QUASIORDER, if it is reflexive and transitive; i.e., for all _a_, _b_ and _c_ in _P_, we have that:

    _a_ ≤ _a_ (reflexivity)
    if _a_ ≤ _b_ and _b_ ≤ _c_ then _a_ ≤ _c_ (transitivity)

A set that is equipped with a preorder is called a PREORDERED SET (or PROSET).[1]

If a preorder is also antisymmetric, that is, and implies _b_}}, then it is a partial order.

On the other hand, if it is symmetric, that is, if implies , then it is an equivalence relation.

A preorder is total if either or for all _a_, _b_.

Equivalently, the notion of a preordered set _P_ can be formulated in a categorical framework as a thin category; i.e., as a category with at most one morphism from an object to another. Here the objects correspond to the elements of _P_, and there is one morphism for objects which are related, zero otherwise. Alternately, a preordered set can be understood as an enriched category, enriched over the category (0 → 1)}}.

A preordered class is a class equipped with a preorder. Every set is a class and so every preordered set is a preordered class.


Examples

-   The reachability relationship in any directed graph (possibly containing cycles) gives rise to a preorder, where in the preorder if and only if there is a path from _x_ to _y_ in the directed graph. Conversely, every preorder is the reachability relationship of a directed graph (for instance, the graph that has an edge from _x_ to _y_ for every pair with ). However, many different graphs may have the same reachability preorder as each other. In the same way, reachability of directed acyclic graphs, directed graphs with no cycles, gives rise to partially ordered sets (preorders satisfying an additional antisymmetry property).
-   Every finite topological space gives rise to a preorder on its points by defining if and only if _x_ belongs to every neighborhood of _y_. Every finite preorder can be formed as the specialization preorder of a topological space in this way. That is, there is a one-to-one correspondence between finite topologies and finite preorders. However, the relation between infinite topological spaces and their specialization preorders is not one-to-one.
-   A net is a directed preorder, that is, each pair of elements has an upper bound. The definition of convergence via nets is important in topology, where preorders cannot be replaced by partially ordered sets without losing important features.
-   The relation defined by if , where _f_ is a function into some preorder.
-   The relation defined by if there exists some injection from _x_ to _y_. Injection may be replaced by surjection, or any type of structure-preserving function, such as ring homomorphism, or permutation.
-   The embedding relation for countable total orderings.
-   The graph-minor relation in graph theory.
-   A category with at most one morphism from any object _x_ to any other object _y_ is a preorder. Such categories are called thin. In this sense, categories "generalize" preorders by allowing more than one relation between objects: each morphism is a distinct (named) preorder relation.

In computer science, one can find examples of the following preorders.

-   Many-one and Turing reductions are preorders on complexity classes.
-   The subtyping relations are usually preorders.
-   Simulation preorders are preorders (hence the name).
-   Reduction relations in abstract rewriting systems.
-   The encompassment preorder on the set of terms, defined by if a subterm of _t_ is a substitution instance of _s_.

Example of a total preorder:

-   Preference, according to common models.


Uses

Preorders play a pivotal role in several situations:

-   Every preorder can be given a topology, the Alexandrov topology; and indeed, every preorder on a set is in one-to-one correspondence with an Alexandrov topology on that set.
-   Preorders may be used to define interior algebras.
-   Preorders provide the Kripke semantics for certain types of modal logic.


Constructions

Every binary relation R on a set S can be extended to a preorder on S by taking the transitive closure and reflexive closure, R⁺⁼. The transitive closure indicates path connection in if and only if there is an R-path from _x_ to y.

Given a preorder ≲ on S one may define an equivalence relation ~ on S such that if and only if and . (The resulting relation is reflexive since a preorder is reflexive, transitive by applying transitivity of the preorder twice, and symmetric by definition.)

Using this relation, it is possible to construct a partial order on the quotient set of the equivalence, S / ~, the set of all equivalence classes of ~. Note that if the preorder is R⁺⁼, is the set of R-cycle equivalence classes: if and only if _y_}} or _x_ is in an R-cycle with _y_. In any case, on we can define if and only if . By the construction of ~, this definition is independent of the chosen representatives and the corresponding relation is indeed well-defined. It is readily verified that this yields a partially ordered set.

Conversely, from a partial order on a partition of a set S one can construct a preorder on S. There is a 1-to-1 correspondence between preorders and pairs (partition, partial order).

For a preorder "≲", a relation "<" can be defined as if and only if ( and not ), or equivalently, using the equivalence relation introduced above, (_a_ ≲ _b_ and not _a_ ~ _b_). It is a strict partial order; every strict partial order can be the result of such a construction. If the preorder is antisymmetric, hence a partial order "≤", the equivalence is equality, so the relation "<" can also be defined as if and only if ( and ).

(We do _not_ define the relation "<" as if and only if ( and ). Doing so would cause problems if the preorder was not antisymmetric, as the resulting relation "<" would not be transitive (think of how equivalent non-equal elements relate).)

Conversely we have if and only if or . This is the reason for using the notation "≲"; "≤" can be confusing for a preorder that is not antisymmetric, it may suggest that implies that or _b_}}.

Note that with this construction multiple preorders "≲" can give the same relation "<", so without more information, such as the equivalence relation, "≲" cannot be reconstructed from "<". Possible preorders include the following:

-   Define as or _b_}} (i.e., take the reflexive closure of the relation). This gives the partial order associated with the strict partial order "<" through reflexive closure; in this case the equivalence is equality, so we don't need the notations ≲ and ~.
-   Define as "not " (i.e., take the inverse complement of the relation), which corresponds to defining as "neither nor "; these relations ≲ and ~ are in general not transitive; however, if they are, ~ is an equivalence; in that case "<" is a strict weak order. The resulting preorder is total, that is, a total preorder.

Given a binary relation R, the complemented composition $R \backslash R = \overline{R^\textsf{T} \circ \overline{R}}$ forms a preorder called the left residual, where R^(T) denotes the converse relation of R, and $\overline{R}$ denotes the complement relation of R, while ∘ denotes relation composition.


Number of preorders

As explained above, there is a 1-to-1 correspondence between preorders and pairs (partition, partial order). Thus the number of preorders is the sum of the number of partial orders on every partition. For example: :

-   1 partition of 3, giving 1 preorder
-   3 partitions of , giving 9}} preorders
-   1 partition of , giving 19 preorders

I.e., together, 29 preorders. | for 4}}:

-   1 partition of 4, giving 1 preorder
-   7 partitions with two classes (4 of and 3 of ), giving 21}} preorders
-   6 partitions of , giving 114}} preorders
-   1 partition of , giving 219 preorders

I.e., together, 355 preorders. }}


Interval

For , the interval is the set of points _x_ satisfying and , also written . It contains at least the points _a_ and _b_. One may choose to extend the definition to all pairs . The extra intervals are all empty.

Using the corresponding strict relation "<", one can also define the interval as the set of points _x_ satisfying and , also written . An open interval may be empty even if .

Also and can be defined similarly.


See also

-   Partial order – preorder that is antisymmetric
-   Equivalence relation – preorder that is symmetric
-   Total preorder – preorder that is total
-   Total order – preorder that is antisymmetric and total
-   Directed set
-   Category of preordered sets
-   Prewellordering
-   Well-quasi-ordering


Notes


References

-   Schmidt, Gunther, "Relational Mathematics", Encyclopedia of Mathematics and its Applications, vol. 132, Cambridge University Press, 2011,
-

Category:Order theory Category:Binary relations

[1] For "proset", see e.g. .