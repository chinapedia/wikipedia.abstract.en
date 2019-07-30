In economics, GROSS SUBSTITUTES (GS) is a class of utility functions on indivisible goods. An agent is said to _have a GS valuation_ if, whenever the prices of some items increase and the prices of other items remain constant, the agent's demand for the items whose price remain constant weakly increases.

  Bundle        Alice's valuation (GS)   Bob's valuation (not GS)
  ------------- ------------------------ --------------------------
  ∅             $0                       $0
  apple         $5                       $5
  bread         $7                       $7
  apple+bread   $9                       $15

An example is shown on the right. The table shows the valuations (in dollars) of Alice and Bob to the four possible subsets of the set of two items: {apple,bread}. Alice's valuation is GS, but Bob's valuation is not GS. To see this, suppose that initially both apple and bread are priced at $6. Bob's optimal bundle is apple+bread, since it gives him a net value of $3. Now, the price of bread increases to $10. Now, Bob's optimal bundle is the empty bundle, since all other bundles give him negative net value. So Bob's demand to apple has decreased, although only the price of bread has increased.

The GS condition was introduced by Kelso and Crawford in 1982[1] and was greatly publicized by Gul and Stacchetti.[2] Since then it has found many applications, mainly in auction theory and competitive equilibrium theory.


Definitions

The GS condition has many equivalent definitions.

Gross Substitutes (GS)

The original GS definition[3] is based on a _price vector_ and a _demand set_.

-   A price vector p is a vector containing a price for each item.
-   Given a utility function u and a price vector p, a set X is called a _demand_ if it maximizes the net utility of the agent: u(X) − p ⋅ X.
-   The _demand set_ D(u, p) is the set of all demands.

The GS property means that when the price of some items increases, the demand for other items does not decrease. Formally, for any two price vectors q and p such that q ≥ p, and any X ∈ D(u, p), there is a Y ∈ D(u, q) such that Y ⊇ {x ∈ X|p_(x) = q_(x)} (Y contains all items in X whose price remained constant).

Single Improvement (SI)

The SI condition[4] says that a non-optimal set can be improved by adding, removing or substituting a single item. Formally, for any price vector p and bundle X ∉ D(u, p), there exists a bundle Y such that u(Y) − p ⋅ Y > u(X) − p ⋅ X, |X \ Y| ≤ 1 and |Y \ X| ≤ 1.

No Complementaries (NC)

The NC condition[5] says that every subset of a demanded bundle has a substitute. Formally: for any price vector p and demanded bundles X, Y ∈ D(u, p), and for every subset X′ ⊆ X, there is a subset Y′ ⊆ Y such that: X \ X′ ∪ Y′ ∈ D(u, p)

If the valuation function is monotone, then GS implies SI and SI implies NC and NC implies GS,[6] so these three conditions are equivalent.

M# Concave (MX)

The MX condition[7] comes from convex analysis. It says that for all sets X, Y and for every item x ∈ X, at least one of the following must be true:

-   u(X) + u(Y) ≤ u(X \ {x}) + u(Y ∪ {x}), or -
-   there exists an item y ∈ Y such that u(X) + u(Y) ≤ u(X \ {x} ∪ {y}) + u(Y \ {y} ∪ {x}).

The M#-concavity property is also called M#-EXCHANGE property.[8] It has the following interpretation. Suppose Alice and Bob both have utility function u, and are endowed with bundles X and Y respectively. For every item that Alice hands Bob, Bob can hand at most one item to Alice, such that their total utility after the exchange is preserved or increased.

SI implies MX and MX implies SI,[9] so they are equivalent.

Strong No Complementaries (SNC)

The SNC condition[10] says that, for all sets X and Y and for every subset X′ ⊆ X, there is a subset Y′ ⊆ Y such that:

_u_(_X_) + _u_(_Y_) ≤ _u_(_X_ \ _X_′ ∪ _Y_′) + _u_(_Y_ \ _Y_′ ∪ _X_′)

The SNC property is also called M#-MULTIPLE-EXCHANGE property.[11] It has the following interpretation.[12] Suppose Alice and Bob both have utility function u, and are endowed with bundles X and Y respectively. For every subset X′ that Alice hands Bob, there is an equivalent subset Y′ that Bob can handle Alice, such that their total utility after the exchange is preserved or increased. Note that it is very similar to the MC condition - the only difference is that in MC, Alice hands Bob exactly one item and Bob returns Alice at most one item.

Note: to check whether _u_ has SNC, it is sufficient to consider the cases in which X′ ⊆ X \ Y. And it is sufficient to check the non-trivial subsets, i.e., the cases in which X′ ≠ ∅ and X′ ≠ X \ Y. And for these cases, we only need to search among bundles Y′ ⊆ Y \ X.

Kazuo Murota proved[13] that MX implies SNC.

It is obvious that SNC implies NC.[14] _Proof:_ Fix an SNC utility function u and a price-vector p. Let A, B be two bundles in the demand-set D(u, p). This means that they have the same net-utility, E.g., U_(p) := u_(p)(A) = u_(p)(B), and all other bundles have a net-utility of at most U_(p). By the SNC condition, for every A′ ⊂ A, there exists B′ ⊆ B such that u_(p)(A \ A′ ∪ B) + u_(p)(B \ B′ ∪ A) ≥ u_(p)(A) + u_(p)(B) = 2 ⋅ U_(p). But u_(p)(A \ A′ ∪ B) and u_(p)(B \ B′ ∪ A) are both at most U_(p). Hence, both must be exactly U_(p). Hence, both are also in D(u, p).

We already said that NC implies GS which implies SI, and that[15] SI implies MX. This closes the loop and shows that all these properties are equivalent (there is also a direct proof[16] that SNC implies MX).

Downward Demand Flow (DDF)

The DDF condition[17] is related to changes in the price-vector. If we order the items by an ascending order of their price-increase, then the demand of a GS agents flows only downwards – from items whose price increase more to items whose price increased less, or from items whose price increased to items whose price decreased, or from items whose price decreased less to items whose price decreased more.

Formally, let p, q be two price-vectors and let Δ := q − p be the price-increase vector. If an item x is demanded under p and not demanded under q, then there is another item y with Δ_(y) < Δ_(x) that is not demanded under p and is demanded under q.

It is easy to see that DDF implies GS (GS is a special case of DDF in which Δ has only zero or positive values).[18] prove that MX implies DDF, so these conditions are all equivalent.


Preservation

The GS condition is preserved under price-changes. I.e, a utility function u has GS, if-and-only-if for every price-vector p, the net-utility function u − p also has GS. This is easiest to see through the MC or SNC conditions, since it is evident that these conditions are invariant to price.


Properties

Submodularity

  Bundle   Value ($)
  -------- -----------
  ∅        0
  x        40
  y        40
  z        66
  x,y      80
  x,z      75
  y,z      75
  x,y,z    80

  : Submodular which is not GS

Every GS valuation is a submodular set function.[19]

The converse is not necessarily true.[20] This is shown by the example on the right. The utility is submodular since it satisfies the decreasing-marginal-utility property: the marginal-utility of an item is 40–66 when added to an empty set, 9--40 when added to a single item and 0--5 when added to a pair of items. But it violates the equivalent conditions of the GS family:

-   MX is violated by the sets {x,y} and {z}. Suppose Alice holds {x,y} and Bob holds {z}, so their common utility is 146. Alice gives x to Bob. Then, whether Bob returns z or returns nothing, their common utility drops to 115.
-   NC is violated with prices p_(x) = p_(y) = 10 and p_(z) = 6, since there are two demanded bundles: {x,y} and {z} (both have net utility 60). But, if y is taken from the first set, there is nothing from the second set that can substitute it ({x} has net utility 30 and {x,z} has net utility 59 - none of them is a demand).
-   GS is violated with prices p_(x) = p_(y) = p_(z) = 10, since the demanded bundle is then {x,y}, but when p_(x) increases to e.g. 200 (such that x is no longer demanded), the new demanded bundle is {z}. The increase in p_(x) decreased the demand for item y.
-   SI is violated with prices p_(x) = p_(y) = p_(z) = 10, since the bundle {z} is not optimal but the only way to improve it is to change it to {x,y}, which requires to add two items.

Submodularity does imply GS in the special case in which there is a single item-type, so that the value of a bundle depends only on the number of items in the bundle. This is easiest to see using the SNC characterization, which in this case translates to:

    for all integers k_(x), k_(y) and for every k_(x)′ ≤ k_(x), there is an integer k_(y)′ ≤ k_(y) such that:
    u(k_(x)) + u(k_(y)) ≤ u(k_(x) − k_(x)′ + k_(y)′) + u(k_(y) − k_(y)′ + k_(x)′)

Indeed, if k_(x)′ ≤ k_(y) then we can take k_(y)′ = k_(x)′ which makes the two sides identical; if k_(x)′ > k_(y) we can take k_(y)′ = k_(y) which makes the inequality:

_u_(_k__(_x_)) + _u_(_k__(_y_)) ≤ _u_(_k__(_y_) + _k__(_x_) − _k__(_x_)′) + _u_(_k__(_x_)′)
which is equivalent to:

_u_(_k__(_x_)′ + [_k__(_x_) − _k__(_x_)′]) − _u_(_k__(_x_)′) ≤ _u_(_k__(_y_) + [_k__(_x_) − _k__(_x_)′]) − _u_(_k__(_y_))
This follows from submodularity because k_(x)′ > k_(y).


External links

-   GROSS SUBSTITUTES TUTORIAL in EC 2018 conference: Abstract, Part I (Renato Paes-Leme), Part II (Inbal Talgam-Cohen).


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

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]