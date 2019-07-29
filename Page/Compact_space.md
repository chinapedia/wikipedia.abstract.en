Compact.svg In mathematics, and more specifically in general topology, COMPACTNESS is a property that generalizes the notion of a subset of Euclidean space being closed (that is, containing all its limit points) and bounded (that is, having all its points lie within some fixed distance of each other). Examples include a closed interval, a rectangle, or a finite set of points. This notion is defined for more general topological spaces than Euclidean space in various ways.

One such generalization is that a topological space is _sequentially_ compact if every infinite sequence of points sampled from the space has an infinite subsequence that converges to some point of the space. The Bolzano–Weierstrass theorem states that a subset of Euclidean space is compact in this sequential sense if and only if it is closed and bounded. Thus, if one chooses an infinite number of points in the _closed_ unit interval some of those points will get arbitrarily close to some real number in that space. For instance, some of the numbers accumulate to 0 (others accumulate to 1). The same set of points would not accumulate to any point of the _open_ unit interval ; so the open unit interval is not compact. Euclidean space itself is not compact since it is not bounded. In particular, the sequence of points has no subsequence that converges to any real number.

Apart from closed and bounded subsets of Euclidean space, typical examples of compact spaces include spaces consisting not of geometrical points but of functions. The term _compact_ was introduced into mathematics by Maurice Fréchet in 1904 as a distillation of this concept. Compactness in this more general situation plays an extremely important role in mathematical analysis, because many classical and important theorems of 19th-century analysis, such as the extreme value theorem, are easily generalized to this situation. A typical application is furnished by the Arzelà–Ascoli theorem or the Peano existence theorem, in which one is able to conclude the existence of a function with some required properties as a limiting case of some more elementary construction.

Various equivalent notions of compactness, including sequential compactness and limit point compactness, can be developed in general metric spaces. In general topological spaces, however, different notions of compactness are not necessarily equivalent. The most useful notion, which is the standard definition of the unqualified term _compactness_, is phrased in terms of the existence of finite families of open sets that "cover" the space in the sense that each point of the space lies in some set contained in the family. This more subtle notion, introduced by Pavel Alexandrov and Pavel Urysohn in 1929, exhibits compact spaces as generalizations of finite sets. In spaces that are compact in this sense, it is often possible to patch together information that holds locally—that is, in a neighborhood of each point—into corresponding statements that hold throughout the space, and many theorems are of this character.

The term COMPACT SET is sometimes a synonym for compact space, but usually refers to a compact subspace of a topological space.


Historical development

In the 19th century, several disparate mathematical properties were understood that would later be seen as consequences of compactness. On the one hand, Bernard Bolzano (1817) had been aware that any bounded sequence of points (in the line or plane, for instance) has a subsequence that must eventually get arbitrarily close to some other point, called a limit point. Bolzano's proof relied on the method of bisection: the sequence was placed into an interval that was then divided into two equal parts, and a part containing infinitely many terms of the sequence was selected. The process could then be repeated by dividing the resulting smaller interval into smaller and smaller parts until it closes down on the desired limit point. The full significance of Bolzano's theorem, and its method of proof, would not emerge until almost 50 years later when it was rediscovered by Karl Weierstrass.[1]

In the 1880s, it became clear that results similar to the Bolzano–Weierstrass theorem could be formulated for spaces of functions rather than just numbers or geometrical points. The idea of regarding functions as themselves points of a generalized space dates back to the investigations of Giulio Ascoli and Cesare Arzelà.[2] The culmination of their investigations, the Arzelà–Ascoli theorem, was a generalization of the Bolzano–Weierstrass theorem to families of continuous functions, the precise conclusion of which was that it was possible to extract a uniformly convergent sequence of functions from a suitable family of functions. The uniform limit of this sequence then played precisely the same role as Bolzano's "limit point". Towards the beginning of the twentieth century, results similar to that of Arzelà and Ascoli began to accumulate in the area of integral equations, as investigated by David Hilbert and Erhard Schmidt. For a certain class of Green's functions coming from solutions of integral equations, Schmidt had shown that a property analogous to the Arzelà–Ascoli theorem held in the sense of mean convergence—or convergence in what would later be dubbed a Hilbert space. This ultimately led to the notion of a compact operator as an offshoot of the general notion of a compact space. It was Maurice Fréchet who, in 1906, had distilled the essence of the Bolzano–Weierstrass property and coined the term _compactness_ to refer to this general phenomenon (he used the term already in his 1904 paper[3] which led to the famous 1906 thesis).

However, a different notion of compactness altogether had also slowly emerged at the end of the 19th century from the study of the continuum, which was seen as fundamental for the rigorous formulation of analysis. In 1870, Eduard Heine showed that a continuous function defined on a closed and bounded interval was in fact uniformly continuous. In the course of the proof, he made use of a lemma that from any countable cover of the interval by smaller open intervals, it was possible to select a finite number of these that also covered it. The significance of this lemma was recognized by Émile Borel (1895), and it was generalized to arbitrary collections of intervals by Pierre Cousin (1895) and Henri Lebesgue (1904). The Heine–Borel theorem, as the result is now known, is another special property possessed by closed and bounded sets of real numbers.

This property was significant because it allowed for the passage from local information about a set (such as the continuity of a function) to global information about the set (such as the uniform continuity of a function). This sentiment was expressed by , who also exploited it in the development of the integral now bearing his name. Ultimately the Russian school of point-set topology, under the direction of Pavel Alexandrov and Pavel Urysohn, formulated Heine–Borel compactness in a way that could be applied to the modern notion of a topological space. showed that the earlier version of compactness due to Fréchet, now called (relative) sequential compactness, under appropriate conditions followed from the version of compactness that was formulated in terms of the existence of finite subcovers. It was this notion of compactness that became the dominant one, because it was not only a stronger property, but it could be formulated in a more general setting with a minimum of additional technical machinery, as it relied only on the structure of the open sets in a space.


Basic examples

Any finite space is trivially compact. A non-trivial example of a compact space is the (closed) unit interval of real numbers. If one chooses an infinite number of distinct points in the unit interval, then there must be some accumulation point in that interval. For instance, the odd-numbered terms of the sequence get arbitrarily close to 0, while the even-numbered ones get arbitrarily close to 1. The given example sequence shows the importance of including the boundary points of the interval, since the limit points must be in the space itself — an open (or half-open) interval of the real numbers is not compact. It is also crucial that the interval be bounded, since in the interval one could choose the sequence of points , of which no sub-sequence ultimately gets arbitrarily close to any given real number.

In two dimensions, closed disks are compact since for any infinite number of points sampled from a disk, some subset of those points must get arbitrarily close either to a point within the disc, or to a point on the boundary. However, an open disk is not compact, because a sequence of points can tend to the boundary without getting arbitrarily close to any point in the interior. Likewise, spheres are compact, but a sphere missing a point is not since a sequence of points can tend to the missing point, thereby not getting arbitrarily close to any point _within_ the space. Lines and planes are not compact, since one can take a set of equally-spaced points in any given direction without approaching any point.


Definitions

Various definitions of compactness may apply, depending on the level of generality. A subset of Euclidean space in particular is called compact if it is closed and bounded. This implies, by the Bolzano–Weierstrass theorem, that any infinite sequence from the set has a subsequence that converges to a point in the set. Various equivalent notions of compactness, such as sequential compactness and limit point compactness, can be developed in general metric spaces.

In general topological spaces, however, the different notions of compactness are not equivalent, and the most useful notion of compactness—originally called _bicompactness_—is defined using covers consisting of open sets (see _Open cover definition_ below). That this form of compactness holds for closed and bounded subsets of Euclidean space is known as the Heine–Borel theorem. Compactness, when defined in this manner, often allows one to take information that is known locally—in a neighbourhood of each point of the space—and to extend it to information that holds globally throughout the space. An example of this phenomenon is Dirichlet's theorem, to which it was originally applied by Heine, that a continuous function on a compact interval is uniformly continuous; here, continuity is a local property of the function, and uniform continuity the corresponding global property.

Open cover definition

Formally, a topological space is called _compact_ if each of its open covers has a finite subcover. That is, is compact if for every collection of open subsets of such that

_X_ = ⋃_(_x_ ∈ _C_)_x_
,

there is a FINITE subset of such that

_X_ = ⋃_(_x_ ∈ _F_)_x_.

Some branches of mathematics such as algebraic geometry, typically influenced by the French school of Bourbaki, use the term _quasi-compact_ for the general notion, and reserve the term _compact_ for topological spaces that are both Hausdorff and _quasi-compact_. A compact set is sometimes referred to as a _compactum_, plural _compacta_.

Compactness of subsets

A subset of a topological space is said to be compact if it is compact as a subspace (in the subspace topology). That is, is compact if for every arbitrary collection of open subsets of such that

_K_ ⊆ ⋃_(_c_ ∈ _C_)_c_
,

there is a FINITE subset of such that

_K_ ⊆ ⋃_(_c_ ∈ _F_)_c_
.

Compactness is a "topological" property. That is, if K ⊂ Z ⊂ Y, with subset equipped with the subspace topology, then is compact in if and only if is compact in .

Equivalent definitions

Assuming the axiom of choice, the following are equivalent:

1.  A topological space _X_ is compact.
2.  Every open cover of _X_ has a finite subcover.
3.  _X_ has a sub-base such that every cover of the space by members of the sub-base has a finite subcover (Alexander's sub-base theorem)
4.  Any collection of closed subsets of _X_ with the finite intersection property has nonempty intersection.
5.  Every net on _X_ has a convergent subnet (see the article on nets for a proof).
6.  Every filter on _X_ has a convergent refinement.
7.  Every net on _X_ has a cluster point.
8.  Every filter on _X_ has a cluster point.
9.  Every ultrafilter on _X_ converges to at least one point.
10. Every infinite subset of _X_ has a complete accumulation point.[4]

Euclidean space

For any subset _A_ of Euclidean space R^(_n_), _A_ is compact if and only if it is closed and bounded; this is the Heine–Borel theorem.

As a Euclidean space is a metric space, the conditions in the next subsection also apply to all of its subsets. Of all of the equivalent conditions, it is in practice easiest to verify that a subset is closed and bounded, for example, for a closed interval or closed _n_-ball.

Metric spaces

For any metric space (_X_, _d_), the following are equivalent:

1.  (_X_, _d_) is compact.
2.  (_X_, _d_) is complete and totally bounded (this is also equivalent to compactness for uniform spaces).[5]
3.  (_X_, _d_) is sequentially compact; that is, every sequence in _X_ has a convergent subsequence whose limit is in _X_ (this is also equivalent to compactness for first-countable uniform spaces).
4.  (_X_, _d_) is limit point compact; that is, every infinite subset of _X_ has at least one limit point in _X_.
5.  (_X_, _d_) is an image of a continuous function from the Cantor set.[6]

A compact metric space (_X_, _d_) also satisfies the following properties:

1.  Lebesgue's number lemma: For every open cover of _X_, there exists a number such that every subset of _X_ of diameter < _δ_ is contained in some member of the cover.
2.  (_X_, _d_) is second-countable, separable and Lindelöf – these three conditions are equivalent for metric spaces. The converse is not true; e.g., a countable discrete space satisfies these three conditions, but is not compact.
3.  _X_ is closed and bounded (as a subset of any metric space whose restricted metric is _d_). The converse may fail for a non-Euclidean space; e.g. the real line equipped with the discrete metric is closed and bounded but not compact, as the collection of all singletons of the space is an open cover which admits no finite subcover. It is complete but not totally bounded.

Characterization by continuous functions

Let _X_ be a topological space and C(_X_) the ring of real continuous functions on _X_. For each _p_∈_X_, the evaluation map ev_(p): C(X) → R given by ev_(_p_)(_f_)=_f_(_p_) is a ring homomorphism. The kernel of ev_(_p_) is a maximal ideal, since the residue field is the field of real numbers, by the first isomorphism theorem. A topological space _X_ is pseudocompact if and only if every maximal ideal in C(_X_) has residue field the real numbers. For completely regular spaces, this is equivalent to every maximal ideal being the kernel of an evaluation homomorphism.[7] There are pseudocompact spaces that are not compact, though.

In general, for non-pseudocompact spaces there are always maximal ideals _m_ in C(_X_) such that the residue field C(_X_)/_m_ is a (non-archimedean) hyperreal field. The framework of non-standard analysis allows for the following alternative characterization of compactness:[8] a topological space _X_ is compact if and only if every point _x_ of the natural extension _*X_ is infinitely close to a point _x_₀ of _X_ (more precisely, _x_ is contained in the monad of _x_₀).

Hyperreal definition

A space _X_ is compact if its hyperreal extension _*X_ (constructed, for example, by the ultrapower construction) has the property that every point of _*X_ is infinitely close to some point of _X_⊂_*X_. For example, an open real interval (0, 1)}} is not compact because its hyperreal extension *(0,1) contains infinitesimals, which are infinitely close to 0, which is not a point of _X_.


Properties of compact spaces

Functions and compact spaces

A continuous image of a compact space is compact.[9] This implies the extreme value theorem: a continuous real-valued function on a nonempty compact space is bounded above and attains its supremum.[10] (Slightly more generally, this is true for an upper semicontinuous function.) As a sort of converse to the above statements, the pre-image of a compact space under a proper map is compact.

Compact spaces and set operations

A closed subset of a compact space is compact,[11] and a finite union of compact sets is compact.

The product of any collection of compact spaces is compact. (This is Tychonoff's theorem, which is equivalent to the axiom of choice.)

Every topological space _X_ is an open dense subspace of a compact space having at most one point more than _X_, by the Alexandroff one-point compactification. By the same construction, every locally compact Hausdorff space _X_ is an open dense subspace of a compact Hausdorff space having at most one point more than _X_.

Ordered compact spaces

A nonempty compact subset of the real numbers has a greatest element and a least element.

Let _X_ be a simply ordered set endowed with the order topology. Then _X_ is compact if and only if _X_ is a complete lattice (i.e. all subsets have suprema and infima).[12]


Examples

-   Any finite topological space, including the empty set, is compact. More generally, any space with a finite topology (only finitely many open sets) is compact; this includes in particular the trivial topology.
-   Any space carrying the cofinite topology is compact.
-   Any locally compact Hausdorff space can be turned into a compact space by adding a single point to it, by means of Alexandroff one-point compactification. The one-point compactification of R is homeomorphic to the circle S¹; the one-point compactification of R² is homeomorphic to the sphere S². Using the one-point compactification, one can also easily construct compact spaces which are not Hausdorff, by starting with a non-Hausdorff space.
-   The right order topology or left order topology on any bounded totally ordered set is compact. In particular, Sierpiński space is compact.
-   No discrete space with an infinite number of points is compact. The collection of all singletons of the space is an open cover which admits no finite subcover. Finite discrete spaces are compact.
-   In R carrying the lower limit topology, no uncountable set is compact.
-   In the cocountable topology on an uncountable set, no infinite set is compact. Like the previous example, the space as a whole is not locally compact but is still Lindelöf.
-   The closed unit interval is compact. This follows from the Heine–Borel theorem. The open interval is not compact: the open cover $\left ( \frac{1}{n}, 1 - \frac{1}{n} \right )$ for does not have a finite subcover. Similarly, the set of _rational numbers_ in the closed interval is not compact: the sets of rational numbers in the intervals $\left[0,\frac{1}{\pi}-\frac{1}{n}\right] \ \text{and} \ \left[\frac{1}{\pi}+\frac{1}{n},1\right]$ cover all the rationals in [0, 1] for but this cover does not have a finite subcover. Here, the sets are open in the subspace topology even though they are not open as subsets of R.
-   The set R of all real numbers is not compact as there is a cover of open intervals that does not have a finite subcover. For example, intervals  , where takes all integer values in Z, cover R but there is no finite subcover.
-   On the other hand, the extended real number line carrying the analogous topology _is_ compact; note that the cover described above would never reach the points at infinity. In fact, the set has the homeomorphism to [-1,1] of mapping each infinity to its corresponding unit and every real number to its sign multiplied by the unique number in the positive part of interval that results in its absolute value when divided by one minus itself, and since homeomorphisms preserve covers, the Heine-Borel property can be inferred.
-   For every natural number , the {{mvar is compact. Again from the Heine–Borel theorem, the closed unit ball of any finite-dimensional normed vector space is compact. This is not true for infinite dimensions; in fact, a normed vector space is finite-dimensional if and only if its closed unit ball is compact.
-   On the other hand, the closed unit ball of the dual of a normed space is compact for the weak-* topology. (Alaoglu's theorem)
-   The Cantor set is compact. In fact, every compact metric space is a continuous image of the Cantor set.
-   Consider the set _K_ of all functions _f_ : R → [0,1] from the real number line to the closed unit interval, and define a topology on _K_ so that a sequence {f_(n)} in _K_ converges towards f ∈ K if and only if {f_(n)(x)} converges towards _f_(_x_) for all real numbers _x_. There is only one such topology; it is called the topology of pointwise convergence or the product topology. Then _K_ is a compact topological space; this follows from the Tychonoff theorem.
-   Consider the set _K_ of all functions _f_ :  → satisfying the Lipschitz condition |_f_(_x_) − _f_(_y_)| ≤ |_x_ − _y_| for all _x_, _y_ ∈ . Consider on _K_  the metric induced by the uniform distance d(f, g) = sup_(x ∈ [0, 1])|f(x) − g(x)|. Then by Arzelà–Ascoli theorem the space _K_ is compact.
-   The spectrum of any bounded linear operator on a Banach space is a nonempty compact subset of the complex numbers C. Conversely, any compact subset of C arises in this manner, as the spectrum of some bounded linear operator. For instance, a diagonal operator on the Hilbert space ℓ² may have any compact nonempty subset of C as spectrum.

Algebraic examples

-   Compact groups such as an orthogonal group are compact, while groups such as a general linear group are not.
-   Since the _p_-adic integers are homeomorphic to the Cantor set, they form a compact set.
-   The spectrum of any commutative ring with the Zariski topology (that is, the set of all prime ideals) is compact, but never Hausdorff (except in trivial cases). In algebraic geometry, such topological spaces are examples of quasi-compact schemes, "quasi" referring to the non-Hausdorff nature of the topology.
-   The spectrum of a Boolean algebra is compact, a fact which is part of the Stone representation theorem. Stone spaces, compact totally disconnected Hausdorff spaces, form the abstract framework in which these spectra are studied. Such spaces are also useful in the study of profinite groups.
-   The structure space of a commutative unital Banach algebra is a compact Hausdorff space.
-   The Hilbert cube is compact, again a consequence of Tychonoff's theorem.
-   A profinite group (e.g., Galois group) is compact.


See also

-   Compactly generated space
-   Eberlein compactum
-   Exhaustion by compact sets
-   Lindelöf space
-   Metacompact space
-   Noetherian topological space
-   Orthocompact space
-   Paracompact space


Notes


References

-   .

-   .

-   .

-   (_Purely analytic proof of the theorem that between any two values which give results of opposite sign, there lies at least one real root of the equation_).

-   -   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   .

-   -


External links

-   -

------------------------------------------------------------------------

Category:Compactness (mathematics) Category:General topology Category:Properties of topological spaces Category:Topology

[1] ;

[2]

[3] Frechet, M. 1904. Generalisation d'un theorem de Weierstrass. Analyse Mathematique.

[4]

[5]

[6]  Theorem 30.7.

[7]

[8]

[9] ; See also

[10]

[11] ; ;

[12]