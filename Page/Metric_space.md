In mathematics, a METRIC SPACE is a set together with a metric on the set. The metric is a function that defines a concept of _distance_ between any two members of the set, which are usually called points. The metric satisfies a few simple properties. Informally:

-   the distance from a point to itself is zero,
-   the distance between two distinct points is positive,
-   the distance from _A_ to _B_ is the same as the distance from _B_ to _A_, and
-   the distance from _A_ to _B_ (directly) is less than or equal to the distance from _A_ to _B_ via any third point _C_.

A metric on a space induces topological properties like open and closed sets, which lead to the study of more abstract topological spaces.

The most familiar metric space is 3-dimensional Euclidean space. In fact, a "metric" is the generalization of the Euclidean metric arising from the four long-known properties of the Euclidean distance. The Euclidean metric defines the distance between two points as the length of the straight line segment connecting them. Other metric spaces occur for example in elliptic geometry and hyperbolic geometry, where distance on a sphere measured by angle is a metric, and the hyperboloid model of hyperbolic geometry is used by special relativity as a metric space of velocities.


History

In 1906 Maurice Fréchet introduced metric spaces in his work _Sur quelques points du calcul fonctionnel_.[1] However the name is due to Felix Hausdorff.


Definition

A METRIC SPACE is an ordered pair (M, d) where M is a set and d is a metric on M, i.e., a function

_d_: _M_ × _M_ → ℝ

such that for any x, y, z ∈ M, the following holds:[2]

    {|

|- | 1. || d(x, y) = 0 ⇔ x = y || identity of indiscernibles |- | 2. || d(x, y) = d(y, x) || symmetry |- | 3. || d(x, z) ≤ d(x, y) + d(y, z) || subadditivity or triangle inequality |}

Given the above three axioms, we also have that d(x, y) ≥ 0 for any x, y ∈ M. This is deduced as follows:

    {|

|- |style="width:250px"| d(x, y) + d(y, x) ≥ d(x, x) || by triangle inequality |- | d(x, y) + d(x, y) ≥ d(x, x) | by symmetry |- | 2d(x, y) ≥ 0 | by identity of indiscernibles |- | d(x, y) ≥ 0 | we have non-negativity |- |}

The function d is also called _distance function_ or simply _distance_. Often, d is omitted and one just writes M for a metric space if it is clear from the context what metric is used.

Ignoring mathematical details, for any system of roads and terrains the distance between two locations can be defined as the length of the shortest route connecting those locations. To be a metric there shouldn't be any one-way roads. The triangle inequality expresses the fact that detours aren't shortcuts. If the distance between two points is zero, the two points are indistinguishable from one-another. Many of the examples below can be seen as concrete versions of this general idea.


Examples of metric spaces

-   The real numbers with the distance function d(x, y) = |y − x| given by the absolute difference, and, more generally, Euclidean {{math with the Euclidean distance, are complete metric spaces. The rational numbers with the same distance function also form a metric space, but not a complete one.
-   The positive real numbers with distance function d(x, y) = |log (y/x)| is a complete metric space.
-   Any normed vector space is a metric space by defining d(x, y) = ∥y − x∥, see also metrics on vector spaces. (If such a space is complete, we call it a Banach space.) Examples:
    -   The Manhattan norm gives rise to the Manhattan distance, where the distance between any two points, or vectors, is the sum of the differences between corresponding coordinates.
    -   The maximum norm gives rise to the Chebyshev distance or chessboard distance, the minimal number of moves a chess king would take to travel from x to y.
-   The British Rail metric (also called the “post office metric” or the “SNCF metric”) on a normed vector space is given by d(x, y) = ∥x∥ + ∥y∥ for distinct points x and y, and d(x, x) = 0. More generally ∥.∥ can be replaced with a function f taking an arbitrary set S to non-negative reals and taking the value 0 at most once: then the metric is defined on S by d(x, y) = f(x) + f(y) for distinct points x and y, and d(x, x) = 0. The name alludes to the tendency of railway journeys to proceed via London (or Paris) irrespective of their final destination.
-   If (M, d) is a metric space and X is a subset of M, then (X, d) becomes a metric space by restricting the domain of d to X × X.
-   The discrete metric, where d(x, y) = 0 if x = y and d(x, y) = 1 otherwise, is a simple but important example, and can be applied to all sets. This, in particular, shows that for any set, there is always a metric space associated to it. Using this metric, any point is an open ball, and therefore every subset is open and the space has the discrete topology.
-   A finite metric space is a metric space having a finite number of points. Not every finite metric space can be isometrically embedded in a Euclidean space.[3][4]
-   The hyperbolic plane is a metric space. More generally:
    -   If M is any connected Riemannian manifold, then we can turn M into a metric space by defining the distance of two points as the infimum of the lengths of the paths (continuously differentiable curves) connecting them.
    -   If X is some set and M is a metric space, then, the set of all bounded functions f: X → M (i.e. those functions whose image is a bounded subset of M) can be turned into a metric space by defining d(f, g) = sup_(x ∈ X)d(f(x), g(x)) for any two bounded functions f and g (where sup  is supremum).[5] This metric is called the uniform metric or supremum metric, and If M is complete, then this function space is complete as well. If _X_ is also a topological space, then the set of all bounded continuous functions from X to M (endowed with the uniform metric), will also be a complete metric if _M_ is.
    -   If G is an undirected connected graph, then the set V of vertices of G can be turned into a metric space by defining d(x, y) to be the length of the shortest path connecting the vertices x and y. In geometric group theory this is applied to the Cayley graph of a group, yielding the word metric.
-   Graph edit distance is a measure of dissimilarity between two graphs, defined as the minimal number of graph edit operations required to transform one graph into another.
-   The Levenshtein distance is a measure of the dissimilarity between two strings u and v, defined as the minimal number of character deletions, insertions, or substitutions required to transform u into v. This can be thought of as a special case of the shortest path metric in a graph and is one example of an edit distance.
-   Given a metric space (X, d) and an increasing concave function f: [0, ∞) → [0, ∞) such that f(x) = 0 if and only if x = 0, then f ∘ d is also a metric on X.
-   Given an injective function f from any set A to a metric space (X, d), d(f(x), f(y)) defines a metric on A.
-   Using T-theory, the tight span of a metric space is also a metric space. The tight span is useful in several types of analysis.
-   The set of all m by n matrices over some field is a metric space with respect to the rank distance d(X, Y) = rank(Y − X).
-   The Helly metric is used in game theory.


Open and closed sets, topology and convergence

Every metric space is a topological space in a natural manner, and therefore all definitions and theorems about general topological spaces also apply to all metric spaces.

About any point x in a metric space M we define the '''open ball of radius r > 0 (where r is a real number) about x ''' as the set

_B_(_x_; _r_) = {_y_ ∈ _M_ : _d_(_x_, _y_) < _r_}.
These open balls form the base for a topology on _M_, making it a topological space.

Explicitly, a subset U of M is called OPEN if for every x in U there exists an r > 0 such that B(x; r) is contained in U. The complement of an open set is called CLOSED. A neighborhood of the point x is any subset of M that contains an open ball about x as a subset.

A topological space which can arise in this way from a metric space is called a METRIZABLE space; see the article on metrization theorems for further details.

A sequence (x_(n)) in a metric space M is said to converge to the limit x ∈ M iff for every ϵ > 0, there exists a natural number _N_ such that d(x_(n), x) < ϵ for all n > N. Equivalently, one can use the general definition of convergence available in all topological spaces.

A subset A of the metric space M is closed iff every sequence in A that converges to a limit in M has its limit in A.


Types of metric spaces

Complete spaces

A metric space M is said to be COMPLETE if every Cauchy sequence converges in M. That is to say: if d(x_(n), x_(m)) → 0 as both n and m independently go to infinity, then there is some y ∈ M with d(x_(n), y) → 0.

Every Euclidean space is complete, as is every closed subset of a complete space. The rational numbers, using the absolute value metric d(x, y) = |x − y|, are not complete.

Every metric space has a unique (up to isometry) completion, which is a complete space that contains the given space as a dense subset. For example, the real numbers are the completion of the rationals.

If X is a complete subset of the metric space M, then X is closed in M. Indeed, a space is complete iff it is closed in any containing metric space.

Every complete metric space is a Baire space.

Bounded and totally bounded spaces

A metric space _M_ is called BOUNDED if there exists some number _r_, such that _d_(_x_,_y_) ≤ _r_ for all _x_ and _y_ in _M_. The smallest possible such _r_ is called the DIAMETER of _M_. The space _M_ is called PRECOMPACT or TOTALLY BOUNDED if for every _r_ > 0 there exist finitely many open balls of radius _r_ whose union covers _M_. Since the set of the centres of these balls is finite, it has finite diameter, from which it follows (using the triangle inequality) that every totally bounded space is bounded. The converse does not hold, since any infinite set can be given the discrete metric (one of the examples above) under which it is bounded and yet not totally bounded.

Note that in the context of intervals in the space of real numbers and occasionally regions in a Euclidean space ℝ^(n) a bounded set is referred to as "a finite interval" or "finite region". However boundedness should not in general be confused with "finite", which refers to the number of elements, not to how far the set extends; finiteness implies boundedness, but not conversely. Also note that an unbounded subset of ℝ^(n) may have a finite volume.

Compact spaces

A metric space _M_ is compact if every sequence in _M_ has a subsequence that converges to a point in _M_. This is known as sequential compactness and, in metric spaces (but not in general topological spaces), is equivalent to the topological notions of countable compactness and compactness defined via open covers.

Examples of compact metric spaces include the closed interval [0,1] with the absolute value metric, all metric spaces with finitely many points, and the Cantor set. Every closed subset of a compact space is itself compact.

A metric space is compact iff it is complete and totally bounded. This is known as the Heine–Borel theorem. Note that compactness depends only on the topology, while boundedness depends on the metric.

Lebesgue's number lemma states that for every open cover of a compact metric space _M_, there exists a "Lebesgue number" δ such that every subset of _M_ of diameter < δ is contained in some member of the cover.

Every compact metric space is second countable,[6] and is a continuous image of the Cantor set. (The latter result is due to Pavel Alexandrov and Urysohn.)

Locally compact and proper spaces

A metric space is said to be locally compact if every point has a compact neighborhood. Euclidean spaces are locally compact, but infinite-dimensional Banach spaces are not.

A space is proper if every closed ball {_y_ : _d_(_x_,_y_) ≤ _r_} is compact. Proper spaces are locally compact, but the converse is not true in general.

Connectedness

A metric space M is connected if the only subsets that are both open and closed are the empty set and M itself.

A metric space M is path connected if for any two points x, y ∈ M there exists a continuous map f: [0, 1] → M with f(0) = x and f(1) = y. Every path connected space is connected, but the converse is not true in general.

There are also local versions of these definitions: locally connected spaces and locally path connected spaces.

Simply connected spaces are those that, in a certain sense, do not have "holes".

Separable spaces

A metric space is separable space if it has a countable dense subset. Typical examples are the real numbers or any Euclidean space. For metric spaces (but not for general topological spaces) separability is equivalent to second-countability and also to the Lindelöf property.

Pointed metric spaces

If X is a nonempty metric space and x₀ ∈ X then (X, x₀) is called a _pointed metric space_, and x₀ is called a _distinguished point_. Note that a pointed metric space is just a nonempty metric space with attention drawn to its distinguished point, and that any nonempty metric space can be viewed as a pointed metric space. The distinguished point is sometimes denoted 0 due to its similar behavior to zero in certain contexts.


Types of maps between metric spaces

Suppose (_M_₁,_d_₁) and (_M_₂,_d_₂) are two metric spaces.

Continuous maps

The map _f_:_M_₁→_M_₂ is continuous if it has one (and therefore all) of the following equivalent properties:

General topological continuity: for every open set _U_ in _M_₂, the preimage _f_ ⁻¹(_U_) is open in _M_₁
    This is the general definition of continuity in topology.

Sequential continuity: if (_x__(_n_)) is a sequence in _M_₁ that converges to _x_ in _M_₁, then the sequence (_f_(_x__(_n_))) converges to _f_(_x_) in _M_₂.
    This is sequential continuity, due to Eduard Heine.

ε-δ definition: for every _x_ in _M_₁ and every ε>0 there exists δ>0 such that for all _y_ in _M_₁ we have



        d₁(x, y) < δ ⇒ d₂(f(x), f(y)) < ε.

    This uses the (ε, δ)-definition of limit, and is due to Augustin Louis Cauchy.

Moreover, _f_ is continuous if and only if it is continuous on every compact subset of _M_₁.

The image of every compact set under a continuous function is compact, and the image of every connected set under a continuous function is connected.

Uniformly continuous maps

The map _ƒ_ : _M_₁ → _M_₂ is uniformly continuous if for every _ε_ > 0 there exists _δ_ > 0 such that

_d_₁(_x_, _y_) < _δ_ ⇒ _d_₂(_f_(_x_), _f_(_y_)) < _ε_ for all _x_, _y_ ∈ _M_₁.

Every uniformly continuous map _ƒ_ : _M_₁ → _M_₂ is continuous. The converse is true if _M_₁ is compact (Heine–Cantor theorem).

Uniformly continuous maps turn Cauchy sequences in _M_₁ into Cauchy sequences in _M_₂. For continuous maps this is generally wrong; for example, a continuous map from the open interval (0,1) _onto_ the real line turns some Cauchy sequences into unbounded sequences.

Lipschitz-continuous maps and contractions

Given a real number _K_ > 0, the map _ƒ_ : _M_₁ → _M_₂ is _K_-Lipschitz continuous if

_d_₂(_f_(_x_), _f_(_y_)) ≤ _K__d_₁(_x_, _y_) for all _x_, _y_ ∈ _M_₁.

Every Lipschitz-continuous map is uniformly continuous, but the converse is not true in general.

If _K_ < 1, then _ƒ_ is called a contraction. Suppose _M_₂ = _M_₁ and _M_₁ is complete. If _ƒ_ is a contraction, then _ƒ_ admits a unique fixed point (Banach fixed point theorem). If _M_₁ is compact, the condition can be weakened a bit: _ƒ_ admits a unique fixed point if

_d_(_f_(_x_), _f_(_y_)) < _d_(_x_, _y_) for all _x_ ≠ _y_ ∈ _M_₁
.

Isometries

The map _f_:_M_₁→_M_₂ is an isometry if

_d_₂(_f_(_x_), _f_(_y_)) = _d_₁(_x_, _y_) for all _x_, _y_ ∈ _M_₁
Isometries are always injective; the image of a compact or complete set under an isometry is compact or complete, respectively. However, if the isometry is not surjective, then the image of a closed (or open) set need not be closed (or open).

Quasi-isometries

The map _f_ : _M_₁ → _M_₂ is a quasi-isometry if there exist constants _A_ ≥ 1 and _B_ ≥ 0 such that

$$\frac{1}{A} d_2(f(x),f(y))-B\leq d_1(x,y)\leq A d_2(f(x),f(y))+B \text{ for all } x,y\in M_1$$

and a constant _C_ ≥ 0 such that every point in _M_₂ has a distance at most _C_ from some point in the image _f_(_M_₁).

Note that a quasi-isometry is not required to be continuous. Quasi-isometries compare the "large-scale structure" of metric spaces; they find use in geometric group theory in relation to the word metric.


Notions of metric space equivalence

Given two metric spaces (_M_₁, _d_₁) and (_M_₂, _d_₂):

-   They are called HOMEOMORPHIC (topologically isomorphic) if there exists a homeomorphism between them (i.e., a bijection continuous in both directions).
-   They are called UNIFORMIC (uniformly isomorphic) if there exists a uniform isomorphism between them (i.e., a bijection uniformly continuous in both directions).
-   They are called ISOMETRIC if there exists a bijective isometry between them. In this case, the two metric spaces are essentially identical.
-   They are called QUASI-ISOMETRIC if there exists a quasi-isometry between them.


Topological properties

Metric spaces are paracompact[7] Hausdorff spaces[8] and hence normal (indeed they are perfectly normal). An important consequence is that every metric space admits partitions of unity and that every continuous real-valued function defined on a closed subset of a metric space can be extended to a continuous map on the whole space (Tietze extension theorem). It is also true that every real-valued Lipschitz-continuous map defined on a subset of a metric space can be extended to a Lipschitz-continuous map on the whole space.

Metric spaces are first countable since one can use balls with rational radius as a neighborhood base.

The metric topology on a metric space _M_ is the coarsest topology on _M_ relative to which the metric _d_ is a continuous map from the product of _M_ with itself to the non-negative real numbers.


Distance between points and sets; Hausdorff distance and Gromov metric

A simple way to construct a function separating a point from a closed set (as required for a completely regular space) is to consider the distance between the point and the set. If (_M_,_d_) is a metric space, _S_ is a subset of _M_ and _x_ is a point of _M_, we define the distance from _x_ to _S_ as

_d_(_x_, _S_) = inf {_d_(_x_, _s_) : _s_ ∈ _S_}
where inf  represents the infimum.

Then _d_(_x_, _S_) = 0 if and only if _x_ belongs to the closure of _S_. Furthermore, we have the following generalization of the triangle inequality:

_d_(_x_, _S_) ≤ _d_(_x_, _y_) + _d_(_y_, _S_),
which in particular shows that the map x ↦ d(x, S) is continuous.

Given two subsets _S_ and _T_ of _M_, we define their Hausdorff distance to be

_d__(_H_)(_S_, _T_) = max {sup {_d_(_s_, _T_) : _s_ ∈ _S_}, sup {_d_(_t_, _S_) : _t_ ∈ _T_}}
where sup  represents the supremum.

In general, the Hausdorff distance _d__(H)(_S_,_T_) can be infinite. Two sets are close to each other in the Hausdorff distance if every element of either set is close to some element of the other set.

The Hausdorff distance _d__(H) turns the set _K_(_M_) of all non-empty compact subsets of _M_ into a metric space. One can show that _K_(_M_) is complete if _M_ is complete. (A different notion of convergence of compact subsets is given by the Kuratowski convergence.)

One can then define the Gromov–Hausdorff distance between any two metric spaces by considering the minimal Hausdorff distance of isometrically embedded versions of the two spaces. Using this distance, the class of all (isometry classes of) compact metric spaces becomes a metric space in its own right.


Product metric spaces

If (M₁, d₁), …, (M_(n), d_(n)) are metric spaces, and _N_ is the Euclidean norm on _R^(n)_, then (M₁ × … × M_(n), N(d₁, …, d_(n))) is a metric space, where the product metric is defined by

_N_(_d_₁, ..., _d__(_n_))((_x_₁, …, _x__(_n_)), (_y_₁, …, _y__(_n_))) = _N_(_d_₁(_x_₁, _y_₁), …, _d__(_n_)(_x__(_n_), _y__(_n_))),

and the induced topology agrees with the product topology. By the equivalence of norms in finite dimensions, an equivalent metric is obtained if _N_ is the taxicab norm, a p-norm, the max norm, or any other norm which is non-decreasing as the coordinates of a positive _n_-tuple increase (yielding the triangle inequality).

Similarly, a countable product of metric spaces can be obtained using the following metric

$$d(x,y)=\sum_{i=1}^\infty \frac1{2^i}\frac{d_i(x_i,y_i)}{1+d_i(x_i,y_i)}.$$

An uncountable product of metric spaces need not be metrizable. For example, R^(R) is not first-countable and thus isn't metrizable.

Continuity of distance

In the case of a single space (M, d), the distance map d: M × M → R⁺ (from the definition) is uniformly continuous with respect to any of the above product metrics N(d, d), and in particular is continuous with respect to the product topology of M × M.


Quotient metric spaces

If _M_ is a metric space with metric _d_, and _~_ is an equivalence relation on _M_, then we can endow the quotient set _M/~_ with the following (pseudo)metric. Given two equivalence classes [_x_] and [_y_], we define

$$d'([x],[y]) = \inf\{d(p_1,q_1)+d(p_2,q_2)+\dotsb+d(p_{n},q_{n})\}$$

where the infimum is taken over all finite sequences (p₁, p₂, …, p_(n)) and (q₁, q₂, …, q_(n)) with [p₁] = [x], [q_(n)] = [y], [q_(i)] = [p_(i + 1)], i = 1, 2, …, n − 1. In general this will only define a pseudometric, i.e. d′([x], [y]) = 0 does not necessarily imply that [x] = [y]. However, for nice equivalence relations (e.g., those given by gluing together polyhedra along faces), it is a metric.

The quotient metric _d_ is characterized by the following universal property. If f : (M, d) → (X, δ) is a metric map between metric spaces (that is, δ(f(x), f(y)) ≤ d(x, y) for all _x_, _y_) satisfying _f_(_x_)=_f_(_y_) whenever x ∼ y, then the induced function $\overline{f}\colon M/\sim\longrightarrow X$, given by $\overline{f}([x])=f(x)$, is a metric map $\overline{f}\colon (M/\sim,d')\longrightarrow (X,\delta).$

A topological space is sequential if and only if it is a quotient of a metric space.[9]


Generalizations of metric spaces

-   Every metric space is a uniform space in a natural manner, and every uniform space is naturally a topological space. Uniform and topological spaces can therefore be regarded as generalizations of metric spaces.
-   If we consider the first definition of a metric space given above and relax the second requirement, we arrive at the concepts of a pseudometric space or a dislocated metric space.[10] If we remove the third or fourth, we arrive at a quasimetric space, or a semimetric space.
-   If the distance function takes values in the extended real number line R∪{+∞}, but otherwise satisfies all four conditions, then it is called an _extended metric_ and the corresponding space is called an _∞-metric space_. If the distance function takes values in some (suitable) ordered set (and the triangle inequality is adjusted accordingly), then we arrive at the notion of _generalized ultrametric_.[11]
-   Approach spaces are a generalization of metric spaces, based on point-to-set distances, instead of point-to-point distances.
-   A continuity space is a generalization of metric spaces and posets, that can be used to unify the notions of metric spaces and domains.
-   A partial metric space is intended to be the least generalisation of the notion of a metric space, such that the distance of each point from itself is no longer necessarily zero.[12]

Metric spaces as enriched categories

The ordered set (ℝ,  ≥ ) can be seen as a category by requesting exactly one morphism a → b if a ≥ b and none otherwise. By using + as the tensor product and 0 as the identity, it becomes a monoidal category R^(*). Every metric space (M, d) can now be viewed as a category M^(*) enriched over R^(*):

-   Set Ob (M^(*)) := M
-   For each X, Y ∈ M set Hom (X, Y) := d(X, Y) ∈ Ob (R^(*))
-   The composition morphism Hom (Y, Z) ⊗ Hom (X, Y) → Hom (X, Z) will be the unique morphism in R^(*) given from the triangle inequality d(y, z) + d(x, y) ≥ d(x, z)
-   The identity morphism 0 → Hom (X, X) will be the unique morphism given from the fact that 0 ≥ d(X, X).
-   Since R^(*) is a poset, all diagrams that are required for an enriched category commute automatically.

See the paper by F.W. Lawvere listed below.


See also

-   Space (mathematics)
-   Metric (mathematics)
-   Metric signature
-   Metric tensor
-   Metric tree
-   Norm (mathematics)
-   Normed vector space
-   Measure (mathematics)
-   Hilbert space
-   Hilbert's fourth problem
-   Product metric
-   Aleksandrov–Rassias problem
-   Category of metric spaces
-   Classical Wiener space
-   Glossary of Riemannian and metric geometry
-   Isometry, contraction mapping and metric map
-   Lipschitz continuity
-   Triangle inequality
-   Ultrametric space


Notes


References

-   Victor Bryant, _Metric Spaces: Iteration and Application_, Cambridge University Press, 1985, .
-   Dmitri Burago, Yu D Burago, Sergei Ivanov, _A Course in Metric Geometry_, American Mathematical Society, 2001, .
-   Athanase Papadopoulos, _Metric Spaces, Convexity and Nonpositive Curvature_, European Mathematical Society, First edition 2004, . Second edition 2014, .
-   Mícheál Ó Searcóid, _Metric Spaces_, Springer Undergraduate Mathematics Series, 2006, .
-   Lawvere, F. William, "Metric spaces, generalized logic, and closed categories", [Rend. Sem. Mat. Fis. Milano 43 (1973), 135—166 (1974); (Italian summary)

This is reprinted (with author commentary) at Reprints in Theory and Applications of Categories Also (with an author commentary) in Enriched categories in the logic of geometry and analysis. Repr. Theory Appl. Categ. No. 1 (2002), 1–37.

-


External links

-   -   Far and near — several examples of distance functions at cut-the-knot.

Category:Mathematical analysis Category:Mathematical structures Category:Metric geometry Category:Topology Category:Topological spaces

[1] Rendic. Circ. Mat. Palermo 22 (1906) 1–74

[2]

[3] Nathan Linial. _Finite Metric Spaces—Combinatorics, Geometry and Algorithms_, Proceedings of the ICM, Beijing 2002, vol. 3, pp573–586

[4] [http://kam.mff.cuni.cz/~matousek/metrop.ps_Open problems on embeddings of finite metric spaces_, edited by Jirīı Matoušek, 2007]

[5] Searcóid, p. 107.

[6]

[7] Rudin, Mary Ellen. A new proof that metric spaces are paracompact . Proceedings of the American Mathematical Society, Vol. 20, No. 2. (Feb., 1969), p. 603.

[8]

[9] Goreham, Anthony. Sequential convergence in Topological Spaces . Honours' Dissertation, Queen's College, Oxford (April, 2001), p. 14

[10] Pascal Hitzler and Anthony Seda, Mathematical Aspects of Logic Programming Semantics. Chapman and Hall/CRC, 2010.

[11]

[12]