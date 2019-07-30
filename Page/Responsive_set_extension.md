In utility theory, the RESPONSIVE SET (RS) EXTENSION is an extension of a preference-relation on individual items, to a partial preference-relation of item-bundles.


Example

Suppose there are four items: w, x, y, z. A person states that he ranks the items according to the following total order:

_w_ ≺ _x_ ≺ _y_ ≺ _z_
(i.e., z is his best item, then y, then x, then w). Assuming the items are independent goods, one can deduce that:

{_w_, _x_} ≺ {_y_, _z_}
– the person prefers his two best items to his two worst items;

{_w_, _y_} ≺ {_x_, _z_}
– the person prefers his best and third-best items to his second-best and fourth-best items. But, one cannot deduce anything about the bundles {w, z}, {x, y}; we do not know which of them the person prefers.

The RS extension of the ranking w ≺ x ≺ y ≺ z is a partial order on the bundles of items, that includes all relations that can be deduced from the item-ranking and the independence assumption.


Definitions

Let O be a set of objects and ≼ a total order on O.

The RS extension of ≼ is a partial order on 2^(O). It can be defined in several equivalent ways.[1]

Responsive set (RS)

The original RS extension[2] is constructed as follows. For every bundle X ⊆ O, every item x ∈ X and every item y ∉ X, take the following relations:

-   X \ {x}≺^(RS)X (- adding an item improves the bundle)
-   If x ≼ y then X≼^(RS)(X \ {x}) ∪ {y} (- replacing an item with a better item improves the bundle).

The RS extension is the transitive closure of these relations.

Pairwise dominance (PD)

The PD extension is based on a _pairing_ of the items in one bundle with the items in the other bundle.

Formally, X≼^(PD)Y if-and-only-if there exists an Injective function f from X to Y such that, for each x ∈ X, x ≼ f(x).

Stochastic dominance (SD)

The SD extension (named after stochastic dominance) is defined not only on discrete bundles but also on fractional bundles (bundles that contains fractions of items). Informally, a bundle Y is SD-preferred to a bundle X if, for each item z, the bundle Y contains at least as many objects, that are at least as good as z, as the bundle X.

Formally, X≼^(SD)Y iff, for every item z:

∑_(_x_ ≽ _z_)_X_[_x_] ≤ ∑_(_y_ ≽ _z_)_Y_[_y_]
where X[x] is the fraction of item x in the bundle X.

If the bundles are discrete, the definition has a simpler form. X≼^(SD)Y iff, for every item z:

|{_x_ ∈ _X_|_x_ ≽ _z_}| ≤ |{_y_ ∈ _Y_|_y_ ≽ _z_}|

Additive utility (AU)

The AU extension is based on the notion of an additive utility function.

Many different utility functions are compatible with a given ordering. For example, the order w ≺ x ≺ y ≺ z is compatible with the following utility functions:

_u_₁(_w_) = 0, _u_₁(_x_) = 2, _u_₁(_y_) = 4, _u_₁(_z_) = 7

_u_₂(_w_) = 0, _u_₂(_x_) = 2, _u_₂(_y_) = 4, _u_₂(_z_) = 5

Assuming the items are independent, the utility function on bundles is additive, so the utility of a bundle is the sum of the utilities of its items, for example:

_u_₁({_w_, _x_}) = 2, _u_₁({_w_, _z_}) = 7, _u_₁({_x_, _y_}) = 6

_u_₂({_w_, _x_}) = 2, _u_₂({_w_, _z_}) = 5, _u_₂({_x_, _y_}) = 6

The bundle {w, x} has less utility than {w.z} according to both utility functions. Moreover, for _every_ utility function u compatible with the above ranking:

_u_({_w_, _x_}) < _u_({_w_, _z_})
.

In contrast, the utility of the bundle {w, z} can be either less or more than the utility of {x, y}.

This motivates the following definition:

X≼^(AU)Y iff, for every additive utility function u compatible with ≼:

_u_(_X_) ≤ _u_(_Y_)

Equivalence

-   X≼^(SD)Y implies X≼^(RS)Y.[3]
-   X≼^(RS)Y and X≼^(PD)Y are equivalent.[4]
-   X≼^(PD)Y implies X≼^(AU)Y. _Proof_: If X≼^(PD)Y, then there is an injection f : X → Y such that, for all x ∈ X, x ≼ f(x). Therefore, for every utility function u compatible with ≼, u(x) ≤ u(f(x)). Therefore, if u is additive, then u(X) ≤ u(Y).[5]
-   It is known that ≼^(AU) and ≼^(SD) are equivalent, see e.g.[6]

Therefore, the four extensions ≼^(RS) and ≼^(PD) and ≼^(SD) and ≼^(AU) are all equivalent.


Responsiveness

A total order on bundles is called RESPONSIVE[7] if it is contains the responsive-set-extension of some total order on items. I.e., it contains all the relations that are implied by the underlying ordering of the items, and adds some more relations that are not implied nor contradicted.

Responsiveness is implied by additivity, but not vice versa:

-   If a total order is additive (represented by an additive function) then by definition it contains the AU extension ≼^(AU), which is equivalent to ≼^(RS), so it is responsive.
-   On the other hand, a total order may responsive but not additive: it may contain the AU extension which is consistent with all additive functions, but may also contain other relations that are inconsistent with a single additive function.

For example,[8] suppose there are four items with w ≺ x ≺ y ≺ z. Responsiveness constrains only the relation between bundles of the same size with one item replaced, or bundles of different sizes where the small is contained in the large. It nothing about bundles of different sizes that are not subsets of each other. So, for example, a responsive order can have both {x} ≺ {y, z}and {w, x} ≻ {w, y, z}. But this is incompatible with additivity: there is no additive function for which u({x}) < u({y, z}) while u({w, x}) > u({w, y, z}).


See also

-   Weakly additive


References

Category:Utility function types

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]