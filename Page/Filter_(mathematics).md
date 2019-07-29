Filter_vs_ultrafilter.svg ↑{1,4} colored yellow. It is a _filter_, and even a _principal filter_. It is not an _ultrafilter_, as it can be extended to the larger nontrivial filter ↑{1}, by including also the light green elements. Since ↑{1} cannot be extended any further, it is an ultrafilter.]] In mathematics, a FILTER is a special subset of a partially ordered set. Filters appear in order and lattice theory, but can also be found in topology from where they originate. The dual notion of a filter is an ideal.

Filters were introduced by Henri Cartan in 1937[1][2] and subsequently used by Bourbaki in their book _Topologie Générale_ as an alternative to the similar notion of a net developed in 1922 by E. H. Moore and H. L. Smith.


Motivation

Intuitively, a filter in a partially ordered set (_poset_), _X_, is a subset of _X_ that includes as members those elements that are large enough to satisfy some criterion. For example, if _x_ is an element of the poset, then the set of elements that are above _x_ is a filter, called the PRINCIPAL FILTER at _x_. (Notice that if _x_ and _y_ are incomparable elements of the poset, then neither of the principal filters at _x_ and _y_ is contained in the other one, and conversely.)

Similarly, a filter on a set contains those subsets that are sufficiently large to contain _something_. For example, if the set is the real line and _x_ is one of its points, then the family of sets that include _x_ in their interior is a filter, called the FILTER OF NEIGHBOURHOODS of _x_. (Notice that the _thing_ in this case is slightly larger than _x_, but it still doesn't contain any other specific point of the line.)

The above interpretations do not really, without elaboration, explain the condition 2. of the general definition of filter (see below). For, why should two "large enough" things contain a _common_ "large enough" thing? (Note, however, that they do explain conditions 1 and 3: Clearly the empty set is not "large enough", and clearly the collection of "large enough" things should be "upward-closed".)

Alternatively, a filter can be viewed as a "locating scheme": Suppose we try to locate something (a point or a subset) in the space _X_. Call a filter the _collection of subsets of_ _X_ _that might contain "what we are looking for"._ Then this "filter" should possess the following natural structure:

    1. The empty set cannot contain anything so it will not belong to our filter.

    2. If two subsets, _E_ and _F_, both might contain "what we are looking for", then so might their intersection. Thus our filter should be closed with respect to finite intersection.

    3. If a set _E_ might contain "what we are looking for", so does every superset of it. Thus our filter is upward-closed.

An ULTRAFILTER can be viewed as a "perfect locating scheme" where _each_ subset E of the space _X_ can be used in deciding whether "what we are looking for" might lie in _E_.

From this interpretation, COMPACTNESS (see the mathematical characterization below) can be viewed as the property that _no location scheme can end up with nothing_, or, to put it another way, _we will always find something_.

The mathematical notion of FILTER provides a precise language to treat these situations in a rigorous and general way, which is useful in analysis, general topology and logic.


General definition

A subset _F_ of a partially ordered set (_P_,≤) is a FILTER if the following conditions hold:

1.  _F_ is nonempty.
2.  For every _x_, _y_ in _F_, there is some element _z_ in _F_ such that _z_ ≤ _x_ and _z_ ≤ _y_. (_F_ is a FILTER BASE (see below), or downward directed)
3.  For every _x_ in _F_ and _y_ in _P_, _x_ ≤ _y_ implies that _y_ is in _F_. (_F_ is an _upper set_, or upward-closed)

A filter is PROPER if it is not equal to the whole set _P_. This condition is sometimes added to the definition of a filter.

While the above definition is the most general way to define a filter for arbitrary posets, it was originally defined for lattices only. In this case, the above definition can be characterized by the following equivalent statement: A subset _F_ of a lattice (_P_,≤) is a filter, if and only if it is a nonempty upper set that is closed under finite intersection (infima or meet), i.e., for all _x_, _y_ in _F_, then _x_ ∧ _y_ is also in _F_.[3]

The smallest filter that contains a given element _p_ is a PRINCIPAL FILTER and _p_ is a PRINCIPAL ELEMENT in this situation. The principal filter for _p_ is just given by the set {x ∈ P | p ≤ x} and is denoted by prefixing _p_ with an upward arrow:

The dual notion of a filter, i.e. the concept obtained by reversing all ≤ and exchanging ∧ with ∨, is IDEAL. Because of this duality, the discussion of filters usually boils down to the discussion of ideals. Hence, most additional information on this topic (including the definition of MAXIMAL FILTERS and PRIME FILTERS) is to be found in the article on ideals. There is a separate article on ultrafilters.


Filter on a set

A special case of a filter is a filter defined on a set. Given a set _S_, a partial ordering ⊆ can be defined on the powerset P(_S_) by subset inclusion, turning (P(_S_),⊆) into a lattice. Define a FILTER _F_ on _S_ as a nonempty subset of P(_S_) with the following properties:

1.  _S_ is in _F_, and if _A_ and _B_ are in _F_, then so is their intersection. (_F is closed under finite intersection_)
2.  If _A_ is in _F_ and _A_ is a subset of _B_, then _B_ is in _F_, for all subsets _B_ of _S_. (_F is upward-closed_)

If the empty set is not in _F_, we say _F_ is a proper filter. [4]

The first two properties imply that a FILTER ON A SET has the finite intersection property. With this definition, a filter on a set is indeed a filter. The only nonproper filter on _S_ is P(_S_).

A FILTER BASE (or FILTER BASIS) is a subset _B_ of P(_S_) with the following properties:

1.  _B_ is non-empty and the intersection of any two members of _B_ contains a member of _B_ (_B is downward directed_).
2.  The empty set is not a member of _B_ (_B is a proper filter base_).

Given a filter base _B_, the filter generated or spanned by _B_ is defined as the minimum filter containing _B_. It is the family of all the subsets of _S_ which contain a member of _B_. Every filter is also a filter base, so the process of passing from filter base to filter may be viewed as a sort of completion.

If _B_ and _C_ are two filter bases on _S_, one says _C_ is FINER than _B_ (or that _C_ is a REFINEMENT of _B_) if for each _B_₀ ∈ _B_, there is a _C_₀ ∈ _C_ such that _C_₀ ⊆ _B_₀. If also _B_ is finer than _C_, one says that they are EQUIVALENT FILTER BASES.

-   If _B_ and _C_ are filter bases, then _C_ is finer than _B_ if and only if the filter spanned by _C_ contains the filter spanned by _B_. Therefore, _B_ and _C_ are equivalent filter bases if and only if they generate the same filter.
-   For filter bases _A_, _B_, and _C_, if _A_ is finer than _B_ and _B_ is finer than _C_ then _A_ is finer than _C_. Thus the refinement relation is a preorder on the set of filter bases, and the passage from filter base to filter is an instance of passing from a preordering to the associated partial ordering.

For every subset _T_ of P(_S_) there is a smallest (possibly nonproper) filter _F_ containing _T_, called the filter generated or spanned by _T_. It is constructed by taking all finite intersections of _T_, which then form a filter base for _F_. This filter is proper if and only if every finite intersection of elements of _T_ is non-empty, and in that case we say that _T_ is a FILTER SUBBASE.

Examples

-   Let _S_ be a nonempty set and _C_ be a nonempty subset of _S_. Then {C} is a filter base. The filter it generates (i.e., the collection of all subsets containing _C_) is called the PRINCIPAL FILTER generated by _C_.
-   A filter is said to be a FREE FILTER if the intersection of all of its members is empty. A principal filter is not free. Since the intersection of any finite number of members of a filter is also a member, no filter on a finite set is free, and indeed is the principal filter generated by the common intersection of all of its members. A nonprincipal filter on an infinite set is not necessarily free.
-   The Fréchet filter on an infinite set _S_ is the set of all subsets of _S_ that have finite complement. A filter on _S_ is free if and only if it contains the Fréchet filter.
-   Every uniform structure on a set _X_ is a filter on _X_×_X_.
-   A filter in a poset can be created using the Rasiowa-Sikorski lemma, often used in forcing.
-   The set {{N, N + 1, N + 2, …} : N ∈ {1, 2, 3, …}} is called a _filter base of tails_ of the sequence of natural numbers (1, 2, 3, …). A filter base of tails can be made of any net (x_(α))_(α ∈ A) using the construction {{x_(α) : α ∈ A, α₀ ≤ α} : α₀ ∈ A} where the filter that this filter base generates is called the net's _eventuality filter._ Therefore, all nets generate a filter base (and therefore a filter). Since all sequences are nets, this holds for sequences as well.

Filters in model theory

For every filter _F_ on a set _S_, the set function defined by

$$m(A)=
\begin{cases}
1 & \text{if }A\in F \\
0 & \text{if }S\smallsetminus A\in F \\
\text{undefined} & \text{otherwise}
\end{cases}$$
is finitely additive — a "measure" if that term is construed rather loosely. Therefore the statement

{ _x_∈_S_:_φ_(_x_) } ∈ _F_

can be considered somewhat analogous to the statement that φ holds "almost everywhere". That interpretation of membership in a filter is used (for motivation, although it is not needed for actual _proofs_) in the theory of ultraproducts in model theory, a branch of mathematical logic.

Filters in topology

In topology and analysis, filters are used to define convergence in a manner similar to the role of sequences in a metric space.

In topology and related areas of mathematics, a filter is a generalization of a net. Both nets and filters provide very general contexts to unify the various notions of limit to arbitrary topological spaces.

A sequence is usually indexed by the natural numbers, which are a totally ordered set. Thus, limits in first-countable spaces can be described by sequences. However, if the space is not first-countable, nets or filters must be used. Nets generalize the notion of a sequence by requiring the index set simply be a directed set. Filters can be thought of as sets built from multiple nets. Therefore, both the limit of a filter and the limit of a net are conceptually the same as the limit of a sequence.

Neighbourhood bases

Let _X_ be a topological space and _x_ a point of _X_.

-   Take _N__(_x_) to be the NEIGHBOURHOOD FILTER at point _x_ for _X_. This means that _N__(_x_) is the set of all topological neighbourhoods of the point _x_. It can be verified that _N__(_x_) is a filter. A NEIGHBOURHOOD SYSTEM is another name for a NEIGHBOURHOOD FILTER.
-   To say that _N_ is a NEIGHBOURHOOD BASE at _x_ for _X_ means that each subset _V_₀ of X is a neighbourhood of _x_ if and only if there exists _N_₀ ∈ _N_ such that _N_₀ ⊆ _V_₀. Every neighbourhood base at _x_ is a filter base that generates the neighbourhood filter at _x_.

Convergent filter bases

Let _X_ be a topological space and _x_ a point of _X_.

-   To say that a filter base _B_ CONVERGES to _x_, denoted _B_ → _x_, means that for every neighbourhood _U_ of _x_, there is a _B_₀ ∈ _B_ such that _B_₀ ⊆ _U_. In this case, _x_ is called a limit of _B_ and _B_ is called a CONVERGENT FILTER BASE.
-   Every neighbourhood base _N_ of _x_ converges to _x_.
    -   If _N_ is a neighbourhood base at _x_ and _C_ is a filter base on _X_, then _C_ → _x_ if and only if _C_ is finer than _N_.
    -   If _Y_ ⊆ _X_, a point _p ∈ X_ is called a LIMIT POINT of _Y_ in _X_ if and only if each neighborhood _U_ of _p_ in _X_ intersects _Y_. This happens if and only if there is a filter base of subsets of _Y_ that converges to _p_ in _X_.
-   For _Y_ ⊆ _X_, the following are equivalent:
    -   (i) There exists a filter base _F_ whose elements are all contained in _Y_ such that _F_ → _x_.
    -   (ii) There exists a filter _F_ such that _Y_ is an element of _F_ and _F_ → _x_.
    -   (iii) The point _x_ lies in the closure of _Y_.

Indeed:

(i) implies (ii): if _F_ is a filter base satisfying the properties of (i), then the filter associated to _F_ satisfies the properties of (ii).

(ii) implies (iii): if _U_ is any open neighborhood of _x_ then by the definition of convergence _U_ contains an element of _F_; since also _Y_ is an element of _F_, _U_ and _Y_ have nonempty intersection.

(iii) implies (i): Define F = {U ∩ Y | U ∈ N_(x)}. Then _F_ is a filter base satisfying the properties of (i).

Clustering

Let _X_ be a topological space and _x_ a point of _X_.

-   A filter base _B_ on _X_ is said to CLUSTER at _x_ (or have _x_ as a cluster point) if and only if each element of _B_ has nonempty intersection with each neighbourhood of _x_.
    -   If a filter base _B_ clusters at _x_ and is finer than a filter base _C_, then _C_ clusters at _x_ too.
    -   Every limit of a filter base is also a cluster point of the base.
    -   A filter base _B_ that has _x_ as a cluster point may not converge to _x_. But there is a finer filter base that does. For example the filter base of finite intersections of sets of the subbase B ∪ N_(x).
    -   For a filter base _B_, the set ∩{cl(_B_₀) : _B_₀∈_B_} is the set of all cluster points of _B_ (note: cl(_B_₀) is the closure of _B_₀). Assume that _X_ is a complete lattice.
        -   The limit inferior of _B_ is the infimum of the set of all cluster points of _B_.
        -   The limit superior of _B_ is the supremum of the set of all cluster points of _B_.
        -   _B_ is a convergent filter base if and only if its limit inferior and limit superior agree; in this case, the value on which they agree is the limit of the filter base.

Properties of a topological space

Let _X_ be a topological space.

-   _X_ is a Hausdorff space if and only if every filter base on _X_ has at most one limit.
-   _X_ is compact if and only if every filter base on _X_ clusters or has a cluster point.
-   _X_ is compact if and only if every filter base on _X_ is a subset of a convergent filter base.
-   _X_ is compact if and only if every ultrafilter on _X_ converges.

Functions on topological spaces

Let X, Y be topological spaces. Let A be a filter base on X and f: X → Y be a function. The image of A under f is defined as the set {f(a) : a ∈ A}. The image is denoted f[A] and forms a filter base on Y.

-   f is continuous at x if and only if A → x implies f[A] → f(x).

Cauchy filters

Let (X, d) be a metric space.

-   To say that a filter base _B_ on _X_ is CAUCHY means that for each real number ε>0, there is a _B_₀ ∈ _B_ such that the metric diameter of _B_₀ is less than ε.
-   Take (_x_(n)_) to be a sequence in metric space _X_. (_x_(n)_) is a Cauchy sequence if and only if the filter base {{_x__(_N_), _x__(_N_\ +1), ...} : _N_ ∈ {1,2,3,...} } is Cauchy.

More generally, given a uniform space _X_, a filter _F_ on _X_ is called CAUCHY FILTER if for every entourage _U_ there is an _A_ ∈ _F_ with (_x_, _y_) ∈ _U_ for all _x_, _y_ ∈ _A_. In a metric space this agrees with the previous definition. _X_ is said to be complete if every Cauchy filter converges. Conversely, on a uniform space every convergent filter is a Cauchy filter. Moreover, every cluster point of a Cauchy filter is a limit point.

A compact uniform space is complete: on a compact space each filter has a cluster point, and if the filter is Cauchy, such a cluster point is a limit point. Further, a uniformity is compact if and only if it is complete and totally bounded.

Most generally, a Cauchy space is a set equipped with a class of filters declared to be Cauchy. These are required to have the following properties:

1.  for each _x_ in _X_, the ultrafilter at _x_, _U_(_x_), is Cauchy.
2.  if _F_ is a Cauchy filter, and _F_ is a subset of a filter _G_, then _G_ is Cauchy.
3.  if _F_ and _G_ are Cauchy filters and each member of _F_ intersects each member of _G_, then _F_ ∩ _G_ is Cauchy.

The Cauchy filters on a uniform space have these properties, so every uniform space (hence every metric space) defines a Cauchy space.


See also

-   Ultrafilter
-   Filtration (mathematics)
-   Filtration (probability theory)
-   Filtration (abstract algebra)
-   Net (mathematics)
-   Generic filter
-   Ideal (set theory)


Notes


References

-   Nicolas Bourbaki, General Topology (Topologie Générale), (Ch. 1-4): Provides a good reference for filters in general topology (Chapter I) and for Cauchy filters in uniform spaces (Chapter II)
-   Stephen Willard, _General Topology_, (1970) Addison-Wesley Publishing Company, Reading Massachusetts. _(Provides an introductory review of filters in topology.)_
-   David MacIver, _Filters in Analysis and Topology_ (2004) _(Provides an introductory review of filters in topology and in metric spaces.)_
-   Burris, Stanley N., and H.P. Sankappanavar, H. P., 1981. _A Course in Universal Algebra._ Springer-Verlag. .

Category:Order theory Category:General topology

[1] H. Cartan, "Théorie des filtres", _CR Acad. Paris_, 205, (1937) 595–598.

[2] H. Cartan, "Filtres et ultrafiltres", _CR Acad. Paris_, 205, (1937) 777–779.

[3]

[4]