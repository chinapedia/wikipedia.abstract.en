In mathematical analysis, a metric space _M_ is called COMPLETE (or a CAUCHY SPACE) if every Cauchy sequence of points in _M_ has a limit that is also in _M_ or, alternatively, if every Cauchy sequence in _M_ converges in _M_.

Intuitively, a space is complete if there are no "points missing" from it (inside or at the boundary). For instance, the set of rational numbers is not complete, because e.g. $\sqrt{2}$ is "missing" from it, even though one can construct a Cauchy sequence of rational numbers that converges to it. (See the examples below.) It is always possible to "fill all the holes", leading to the _completion_ of a given space, as explained below.


Examples

The space Q of rational numbers, with the standard metric given by the absolute value of the difference, is not complete. Consider for instance the sequence defined by x₁ = 1 and $x_{n+1} \;=\; \frac{x_n}{2} \,+\, \frac{1}{x_n}$. This is a Cauchy sequence of rational numbers, but it does not converge towards any rational limit: If the sequence did have a limit _x_, then by solving $x \;=\; \frac{x}{2} \,+\, \frac{1}{x}$ necessarily _x_² = 2, yet no rational number has this property. However, considered as a sequence of real numbers, it does converge to the irrational number $\sqrt{2}$.

The open interval , again with the absolute value metric, is not complete either. The sequence defined by _x__(_n_) = is Cauchy, but does not have a limit in the given space. However the closed interval {{closed-closed is complete; for example the given sequence does have a limit in this interval and the limit is zero.

The space R of real numbers and the space C of complex numbers (with the metric given by the absolute value) are complete, and so is Euclidean space R^(_n_), with the usual distance metric. In contrast, infinite-dimensional normed vector spaces may or may not be complete; those that are complete are Banach spaces. The space C of continuous real-valued functions on a closed and bounded interval is a Banach space, and so a complete metric space, with respect to the supremum norm. However, the supremum norm does not give a norm on the space C of continuous functions on , for it may contain unbounded functions. Instead, with the topology of compact convergence, C can be given the structure of a Fréchet space: a locally convex topological vector space whose topology can be induced by a complete translation-invariant metric.

The space Q_(_p_) of _p_-adic numbers is complete for any prime number _p_. This space completes Q with the _p_-adic metric in the same way that R completes Q with the usual metric.

If _S_ is an arbitrary set, then the set _S_^(N) of all sequences in _S_ becomes a complete metric space if we define the distance between the sequences (_x__(_n_)) and (_y__(_n_)) to be , where _N_ is the smallest index for which _x__(_N_) is distinct from _y__(_N_), or 0 if there is no such index. This space is homeomorphic to the product of a countable number of copies of the discrete space _S_.


Some theorems

A metric space _X_ is complete if and only if every decreasing sequence of non-empty closed subsets of _X_, with diameters tending to 0, has a non-empty intersection: if _F__(_n_) is closed and non-empty, for every _n_, and , then there is a point common to all sets _F__(_n_).

Every compact metric space is complete, though complete spaces need not be compact. In fact, a metric space is compact if and only if it is complete and totally bounded. This is a generalization of the Heine–Borel theorem, which states that any closed and bounded subspace _S_ of R^(_n_) is compact and therefore complete.[1]

Let be a complete metric space. If is a closed set, then _A_ is also complete.[2] Let be a metric space. If is a complete set, then _A_ is also closed.[3]

If _X_ is a set and _M_ is a complete metric space, then the set of all bounded functions _f_ from _X_ to _M_ is a complete metric space. Here we define the distance in in terms of the distance in _M_ with the supremum norm

_d_(_f_, _g_) ≡ sup {_d_[_f_(_x_),_g_(_x_)]:_x_∈_X_}

If _X_ is a topological space and _M_ is a complete metric space, then the set _C__(b)(_X_, _M_) consisting of all continuous bounded functions _f_ from _X_ to _M_ is a closed subspace of and hence also complete.

The Baire category theorem says that every complete metric space is a Baire space. That is, the union of countably many nowhere dense subsets of the space has empty interior.

The Banach fixed point theorem states that a contraction mapping on a complete metric space admits a fixed point. The fixed point theorem is often used to prove the inverse function theorem on complete metric spaces such as Banach spaces.

The expansion constant of a metric space is the infimum of all constants $\textstyle \mu$ such that whenever the family $\textstyle \left\{ \overline{B}(x_\alpha,\, r_\alpha) \right\}$ intersects pairwise, the intersection

$$\bigcap_\alpha \overline{B}(x_\alpha, \mu r_\alpha)$$

is nonempty. A metric space is complete if and only if its expansion constant is ≤ 2.[4]


Completion

For any metric space _M_, one can construct a complete metric space _M′_ (which is also denoted as ), which contains _M_ as a dense subspace. It has the following universal property: if _N_ is any complete metric space and _f_ is any uniformly continuous function from _M_ to _N_, then there exists a unique uniformly continuous function _f′_ from _M′_ to _N_ which extends _f_. The space _M_' is determined up to isometry by this property (among all complete metric spaces isometrically containing _M_), and is called the _completion_ of _M_.

The completion of _M_ can be constructed as a set of equivalence classes of Cauchy sequences in _M_. For any two Cauchy sequences x=(_x__(_n_)) and y=(_y__(_n_)) in _M_, we may define their distance as

    d(x, y) = lim_(n)d(x_(n),y_(n))

(This limit exists because the real numbers are complete.) This is only a pseudometric, not yet a metric, since two different Cauchy sequences may have the distance 0. But "having distance 0" is an equivalence relation on the set of all Cauchy sequences, and the set of equivalence classes is a metric space, the completion of _M_. The original space is embedded in this space via the identification of an element _x_ of _M_' with the equivalence class of sequences in _M_ converging to _x_ (i.e., the equivalence class containing the sequence with constant value _x_). This defines an isometry onto a dense subspace, as required. Notice, however, that this construction makes explicit use of the completeness of the real numbers, so completion of the rational numbers needs a slightly different treatment.

Cantor's construction of the real numbers is similar to the above construction; the real numbers are the completion of the rational numbers using the ordinary absolute value to measure distances. The additional subtlety to contend with is that it is not logically permissible to use the completeness of the real numbers in their own construction. Nevertheless, equivalence classes of Cauchy sequences are defined as above, and the set of equivalence classes is easily shown to be a field that has the rational numbers as a subfield. This field is complete, admits a natural total ordering, and is the unique totally ordered complete field (up to isomorphism). It is _defined_ as the field of real numbers (see also Construction of the real numbers for more details). One way to visualize this identification with the real numbers as usually viewed is that the equivalence class consisting of those Cauchy sequences of rational numbers that "ought" to have a given real limit is identified with that real number. The truncations of the decimal expansion give just one choice of Cauchy sequence in the relevant equivalence class.

For a prime _p_, the _p_-adic numbers arise by completing the rational numbers with respect to a different metric.

If the earlier completion procedure is applied to a normed vector space, the result is a Banach space containing the original space as a dense subspace, and if it is applied to an inner product space, the result is a Hilbert space containing the original space as a dense subspace.


Topologically complete spaces

Note that completeness is a property of the _metric_ and not of the _topology_, meaning that a complete metric space can be homeomorphic to a non-complete one. An example is given by the real numbers, which are complete but homeomorphic to the open interval , which is not complete.

In topology one considers _completely metrizable spaces_, spaces for which there exists at least one complete metric inducing the given topology. Completely metrizable spaces can be characterized as those spaces that can be written as an intersection of countably many open subsets of some complete metric space. Since the conclusion of the Baire category theorem is purely topological, it applies to these spaces as well.

Completely metrizable spaces are often called _topologically complete_. However, the latter term is somewhat arbitrary since metric is not the most general structure on a topological space for which one can talk about completeness (see the section Alternatives and generalizations). Indeed, some authors use the term _topologically complete_ for a wider class of topological spaces, the completely uniformizable spaces.[5]

A topological space homeomorphic to a separable complete metric space is called a Polish space.


Alternatives and generalizations

Since Cauchy sequences can also be defined in general topological groups, an alternative to relying on a metric structure for defining completeness and constructing the completion of a space is to use a group structure. This is most often seen in the context of topological vector spaces, but requires only the existence of a continuous "subtraction" operation. In this setting, the distance between two points _x_ and _y_ is gauged not by a real number _ε_ via the metric _d_ in the comparison _d_(_x_, _y_) < _ε_, but by an open neighbourhood _N_ of 0 via subtraction in the comparison _x_ − _y_ ∈ _N_.

A common generalisation of these definitions can be found in the context of a uniform space, where an entourage is a set of all pairs of points that are at no more than a particular "distance" from each other.

It is also possible to replace Cauchy _sequences_ in the definition of completeness by Cauchy _nets_ or Cauchy filters. If every Cauchy net (or equivalently every Cauchy filter) has a limit in _X_, then _X_ is called complete. One can furthermore construct a completion for an arbitrary uniform space similar to the completion of metric spaces. The most general situation in which Cauchy nets apply is Cauchy spaces; these too have a notion of completeness and completion just like uniform spaces.


See also

-   Knaster–Tarski theorem
-   Completion (algebra)


Notes


References

-   -   Kreyszig, Erwin, _Introductory functional analysis with applications_ (Wiley, New York, 1978).
-   Lang, Serge, "Real and Functional Analysis"
-

Category:Metric geometry

[1]

[2]

[3]

[4]

[5] Kelley, Problem 6.L, p. 208