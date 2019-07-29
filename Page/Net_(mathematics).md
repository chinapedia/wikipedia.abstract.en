In mathematics, more specifically in general topology and related branches, a NET or MOORE–SMITH SEQUENCE is a generalization of the notion of a sequence. In essence, a sequence is a function with domain the natural numbers, and in the context of topology, the codomain of this function is usually any topological space. However, in the context of topology, sequences do not fully encode all information about a function between topological spaces. In particular, the following two conditions are NOT EQUIVALENT in general for a map _f_ between topological spaces _X_ and _Y_:

1.  The map _f_ is continuous (in the topological sense)
2.  Given any point _x_ in _X_, and any sequence in _X_ converging to _x_, the composition of _f_ with this sequence converges to _f_(_x_) (continuous in the sequential sense)

It is true, however, that condition 1 implies condition 2. The difficulty encountered when attempting to prove that condition 2 implies condition 1 lies in the fact that topological spaces are, in general, not first-countable. If the first-countability axiom were imposed on the topological spaces in question, the two above conditions would be equivalent. In particular, the two conditions are equivalent for metric spaces.

The purpose of the concept of a NET, first introduced by E. H. Moore and H. L. Smith in 1922,[1] is to generalize the notion of a sequence so as to confirm the equivalence of the conditions (with "sequence" being replaced by "net" in condition 2). In particular, rather than being defined on a countable linearly ordered set, a net is defined on an arbitrary directed set. In particular, this allows theorems similar to that asserting the equivalence of condition 1 and condition 2, to hold in the context of topological spaces that do not necessarily have a countable or linearly ordered neighbourhood basis around a point. Therefore, while sequences do not encode sufficient information about functions between topological spaces, nets do because collections of open sets in topological spaces are much like directed sets in behaviour. The term "net" was coined by Kelley.[2][3]

NETS are one of the many tools used in topology to generalize certain concepts that may only be general enough in the context of metric spaces. A related notion, that of the filter, was developed in 1937 by Henri Cartan.


Definition

Let A be a directed set with order relation _≥_ and _X_ be a topological space with topology _T_. A function _f: A → X_ is said to be a _net_.

If _A_ is a directed set, we often write a net from _A_ to _X_ in the form (_x__(α)), which expresses the fact that the element α in _A_ is mapped to the element _x__(α) in _X_.


Examples of nets

Every non-empty totally ordered set is directed. Therefore, every function on such a set is a net. In particular, the natural numbers with the usual order form such a set, and a sequence is a function on the natural numbers, so every sequence is a net.

Another important example is as follows. Given a point _x_ in a topological space, let _N__(_x_) denote the set of all neighbourhoods containing _x_. Then _N__(_x_) is a directed set, where the direction is given by reverse inclusion, so that _S_ ≥ _T_ if and only if _S_ is contained in _T_. For _S_ in _N__(_x_), let _x__(_S_) be a point in _S_. Then (_x__(_S_)) is a net. As _S_ increases with respect to ≥, the points _x__(_S_) in the net are constrained to lie in decreasing neighbourhoods of _x_, so intuitively speaking, we are led to the idea that _x__(_S_) must tend towards _x_ in some sense. We can make this limiting concept precise.


Limits of nets

If (_x__(α)) is a net from a directed set _A_ into _X_, and if _Y_ is a subset of _X_, then we say that (_x__(α)) is EVENTUALLY IN _Y_ (or RESIDUALLY IN _Y_) if there exists an α in _A_ so that for every β in _A_ with β ≥ α, the point _x__(β) lies in _Y_.

If (_x__(α)) is a net in the topological space _X_, and _x_ is an element of _X_, we say that the net CONVERGES TOWARDS _X_ or HAS LIMIT _X_ and write

    lim _x__(α) = _x_

if and only if

    for every neighborhood _U_ of _x_, (_x__(α)) is eventually in _U_.

Intuitively, this means that the values _x__(α) come and stay as close as we want to _x_ for large enough α.

The example net given above on the neighborhood system of a point _x_ does indeed converge to _x_ according to this definition.

Given a base for the topology, in order to prove convergence of a net it is necessary and sufficient to prove that there exists some point _x_, such that (_x__(α)) is eventually in all members of the base containing this putative limit.


Examples of limits of nets

-   Limit of a sequence and limit of a function: see below.
-   Limits of nets of Riemann sums, in the definition of the Riemann integral. In this example, the directed set is the set of partitions of the interval of integration, partially ordered by inclusion.


Supplementary definitions

Let φ be a net on _X_ based on the directed set _D_ and let _A_ be a subset of _X_, then φ is said to be FREQUENTLY IN (or COFINALLY IN) _A_ if for every α in _D_ there exists some β ≥ α, β in _D_, so that φ(β) is in _A_.

A point _x_ in _X_ is said to be an ACCUMULATION POINT or CLUSTER POINT of a net if (and only if) for every neighborhood _U_ of _x_, the net is frequently in _U_.

A net φ on set _X_ is called UNIVERSAL, or an ULTRANET if for every subset _A_ of _X_, either φ is eventually in _A_ or φ is eventually in _X_ − _A_.


Examples

SEQUENCE IN A TOPOLOGICAL SPACE:

A sequence (_a_₁, _a_₂, ...) in a topological space _V_ can be considered a net in _V_ defined on N.

The net is eventually in a subset _Y_ of _V_ if there exists an N in N such that for every _n_ ≥ _N_, the point _a__(_n_) is in _Y_.

We have lim_(_n_) _a__(_n_) = _L_ if and only if for every neighborhood _Y_ of _L_, the net is eventually in _Y_.

The net is frequently in a subset _Y_ of _V_ if and only if for every _N_ in N there exists some _n_ ≥ _N_ such that _a__(_n_) is in _Y_, that is, if and only if infinitely many elements of the sequence are in _Y_. Thus a point _y_ in _V_ is a cluster point of the net if and only if every neighborhood _Y_ of _y_ contains infinitely many elements of the sequence.

FUNCTION FROM A METRIC SPACE TO A TOPOLOGICAL SPACE:

Consider a function from a metric space _M_ to a topological space _V_, and a point _c_ of _M_. We direct the set _M_\{_c_} reversely according to distance from _c_, that is, the relation is "has at least the same distance to _c_ as", so that "large enough" with respect to the relation means "close enough to _c_". The function ƒ is a net in _V_ defined on _M_\{_c_}.

The net ƒ is eventually in a subset _Y_ of _V_ if there exists an _a_ in _M_ \ {_c_} such that for every _x_ in _M_ \ {_c_} with d(_x_,_c_) ≤ d(_a_,_c_), the point f(_x_) is in _Y_.

We have lim_(_x_\ →\ _c_) ƒ(_x_) = _L_ if and only if for every neighborhood _Y_ of _L_, ƒ is eventually in _Y_.

The net ƒ is frequently in a subset _Y_ of _V_ if and only if for every _a_ in _M_ \ {_c_} there exists some _x_ in _M_ \ {_c_} with _d_(_x_,_c_) ≤ d(_a_,_c_) such that _f(x)_ is in _Y_.

A point _y_ in _V_ is a cluster point of the net ƒ if and only if for every neighborhood _Y_ of _y_, the net is frequently in _Y_.

FUNCTION FROM A WELL-ORDERED SET TO A TOPOLOGICAL SPACE:

Consider a well-ordered set [0, _c_] with limit point _c_, and a function ƒ from [0, _c_) to a topological space _V_. This function is a net on [0, _c_).

It is eventually in a subset _Y_ of _V_ if there exists an _a_ in [0, _c_) such that for every _x_ ≥ _a_, the point _f_(_x_) is in _Y_.

We have lim_(_x_\ →\ _c_) ƒ(_x_) = _L_ if and only if for every neighborhood _Y_ of _L_, ƒ is eventually in _Y_.

The net ƒ is frequently in a subset _Y_ of _V_ if and only if for every _a_ in [0, _c_) there exists some _x_ in [_a_, _c_) such that _f_(_x_) is in _Y_.

A point _y_ in _V_ is a cluster point of the net ƒ if and only if for every neighborhood _Y_ of _y_, the net is frequently in _Y_.

The first example is a special case of this with _c_ = ω.

See also ordinal-indexed sequence.


Properties

Virtually all concepts of topology can be rephrased in the language of nets and limits. This may be useful to guide the intuition since the notion of limit of a net is very similar to that of limit of a sequence. The following set of theorems and lemmas help cement that similarity:

-   A function ƒ:_X_→ _Y_ between topological spaces is continuous at the point _x_ if and only if for every net (_x__(α)) with



        lim _x__(α) = _x_

    we have

        lim ƒ(_x__(α)) = ƒ(_x_).

    This theorem is in general not true if we replace "net" by "sequence". We have to allow for more directed sets than just the natural numbers if _X_ is not first-countable (or not sequential).

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof |- | One direction:

    Let f be continuous at point x, and let (x_(α)) be a net such that lim (x_(α)) = x.
    Then for every open neighborhood U of f(x), its preimage by f, V, is a neighborhood of x (by the continuity of f at x).
    Thus the interior of V, int(V), is an open neighborhood of x, and thus (x_(α)) is eventually in int(V) . Therefore f(x_(α)) is eventually in f(int(V)) and thus also eventually in f(V) = U. Thus lim f(x_(α)) = f(x), and this direction is proven.

The other direction:

    Let x be a point such that for every net (x_(α)) such that lim (x_(α)) = x, lim f(x_(α)) = f(x). Now suppose that f is not continuous at x.
    Then there is a neighborhood U of f(x) whose preimage under f, V, is not a neighborhood of x. Note however that since f(x) is in U, x is in V. Now the set of open neighborhoods of x with the containment preorder is a directed set (since the intersection of every two such neighborhoods is an open neighborhood of x as well).

    We construct a net (x_(α)) such that for every open neighborhood of x whose index is α, x_(α) is a point in this neighborhood that is not in V; that there is always such a point follows from the fact that no open neighborhood of x is included in V (since by our assumption V is not a neighborhood of x).
    It follows that f(x_(α)) is not in U.

    Now, for every open neighborhood W of x, this neighborhood is a member of the directed set whose index we denote α₀. For every β ≥ α₀, the member of the directed set whose index is β is contained within W; therefore x_(β) is in W. Thus lim (x_(α)) = x and by our assumption lim f(x_(α)) = f(x).
    But int(U) is an open neighborhood of f(x) and thus f(x_(α)) is eventually in int(U) and therefore also in U, in contradiction to f(x_(α)) not being in U for every α.
    Thus we have arrived at a contradiction, and we are forced to conclude that f is continuous in x. So the other direction is proven as well.

|}

-   In general, a net in a space _X_ can have more than one limit, but if _X_ is a Hausdorff space, the limit of a net, if it exists, is unique. Conversely, if _X_ is not Hausdorff, then there exists a net on _X_ with two distinct limits. Thus the uniqueness of the limit is _equivalent_ to the Hausdorff condition on the space, and indeed this may be taken as the definition. This result depends on the directedness condition; a set indexed by a general preorder or partial order may have distinct limit points even in a Hausdorff space.
-   If _U_ is a subset of _X_, then _x_ is in the closure of _U_ if and only if there exists a net (_x__(α)) with limit _x_ and such that _x__(α) is in _U_ for all α.
-   A subset _A_ of _X_ is closed if and only if, whenever (_x__(α)) is a net with elements in _A_ and limit _x_, then _x_ is in _A_.
-   The set of cluster points of a net is equal to the set of limits of its convergent subnets.

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof |- |Let _X_ be a topological space, _A_ a directed set, ⟨x_(α)⟩_(α ∈ A) be a net in _X_, and y ∈ X. It is easily seen that if _y_ is a limit of a subnet of ⟨x_(α)⟩_(α ∈ A), then _y_ is a cluster point of ⟨x_(α)⟩_(α ∈ A).

Conversely, assume that _y_ is a cluster point of ⟨x_(α)⟩_(α ∈ A). Let _B_ be the set of pairs (U, α) where _U_ is an open neighborhood of _y_ in _X_ and α ∈ A is such that x_(α) ∈ U. The map h : B → A mapping (U, α) to α is then cofinal. Moreover, giving _B_ the product order (the neighborhoods of _y_ are ordered by inclusion) makes it a directed set, and the net ⟨y_(β)⟩_(β ∈ B) defined by y_(β) = x_(h(β)) converges to _y_. |}

-   A net has a limit if and only if all of its subnets have limits. In that case, every limit of the net is also a limit of every subnet.
-   A space _X_ is compact if and only if every net (_x__(α)) in _X_ has a subnet with a limit in _X_. This can be seen as a generalization of the Bolzano–Weierstrass theorem and Heine–Borel theorem.

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof |- |First, suppose that _X_ is compact. We will need the following observation (see Finite intersection property). Let _I_ be any set and {C_(i)}_(i ∈ I) be a collection of closed subsets of _X_ such that ⋂_(i ∈ J)C_(i) ≠ ∅ for each finite J ⊆ I. Then ⋂_(i ∈ I)C_(i) ≠ ∅ as well. Otherwise, {C_(i)^(c)}_(i ∈ I) would be an open cover for _X_ with no finite subcover contrary to the compactness of X.



Let _A_ be a directed set and ⟨x_(α)⟩_(α ∈ A) be a net in _X._ For every α ∈ A define

_E__(_α_) ≜ {_x__(_β_) : _β_ ≥ _α_}.
The collection {cl (E_(α)) : α ∈ A} has the property that every finite subcollection has non-empty intersection. Thus, by the remark above, we have that

⋂_(_α_ ∈ _A_)cl (_E__(_α_)) ≠ ∅
and this is precisely the set of cluster points of ⟨x_(α)⟩_(α ∈ A). By the above property, it is equal to the set of limits of convergent subnets of ⟨x_(α)⟩_(α ∈ A). Thus ⟨x_(α)⟩_(α ∈ A) has a convergent subnet.



Conversely, suppose that every net in _X_ has a convergent subnet. For the sake of contradiction, let {U_(i) : i ∈ I} be an open cover of _X_ with no finite subcover. Consider D ≜ {J ⊂ I : |J| < ∞}. Observe that _D_ is a directed set under inclusion and for each C ∈ D, there exists an x_(C) ∈ X such that x_(C) ∉ U_(a) for all a ∈ C. Consider the net ⟨x_(C)⟩_(C ∈ D). This net cannot have a convergent subnet, because for each x ∈ X there exists c ∈ I such that U_(c) is a neighbourhood of _x_; however, for all B ⊇ {c}, we have that x_(B) ∉ U_(c). This is a contradiction and completes the proof. |}

-   A net in the product space has a limit if and only if each projection has a limit. Symbolically, if (_x__(α)) is a net in the product _X_ = π__(i)X_(i)_, then it converges to _x_ if and only if π_(i)(x_(α)) → π_(i)(x) for each _i_. Armed with this observation and the above characterization of compactness in terms on nets, one can give a slick proof of Tychonoff's theorem.
-   If ƒ:_X_→ _Y_ and (_x__(α)) is an ultranet on _X_, then (ƒ(_x__(α))) is an ultranet on _Y_.


Cauchy nets

In mathematics, a CAUCHY NET generalizes the notion of Cauchy sequence to nets defined on uniform spaces.[4]

A net (_x__(α)) is a Cauchy net if for every entourage _V_ there exists γ such that for all α, β ≥ γ, (_x__(α), _x__(β)) is a member of _V_.[5][6] More generally, in a Cauchy space, a net (_x__(α)) is Cauchy if the filter generated by the net is a Cauchy filter.


Relation to filters

A filter is another idea in topology that allows for a general definition for convergence in general topological spaces. The two ideas are equivalent in the sense that they give the same concept of convergence.[7] More specifically, for every filter base an _associated net_ can be constructed, and convergence of the filter base implies convergence of the associated net—and the other way around (for every net there is a filter base, and convergence of the net implies convergence of the filter base).[8] For instance, any net (x_(α))_(α ∈ A) in X induces a filter base of tails {{x_(α) : α ∈ A, α₀ ≤ α} : α₀ ∈ A} where the filter in X generated by this filter base is called the net's _eventuality filter._ This correspondence allows for any theorem that can be proven with one concept to be proven with the other.[9] For instance, continuity of a function from one topological space to the other can be characterized either by the convergence of a net in the domain implying the convergence of the corresponding net in the codomain, or by the same statement with filter bases.

Robert G. Bartle argues that despite their equivalence, it is useful to have both concepts.[10] He argues that nets are enough like sequences to make natural proofs and definitions in analogy to sequences, especially ones using sequential elements, such as is common in analysis, while filters are most useful in algebraic topology. In any case, he shows how the two can be used in combination to prove various theorems in general topology.


Limit superior

Limit superior and limit inferior of a net of real numbers can be defined in a similar manner as for sequences.[11][12][13] Some authors work even with more general structures than the real line, like complete lattices.[14]

For a net (x_(α))_(α ∈ I) we put

limsup _x__(_α_) = lim_(_α_ ∈ _I_)sup_(_β_ ≽ _α_)_x__(_β_) = inf_(_α_ ∈ _I_)sup_(_β_ ≽ _α_)_x__(_β_).

Limit superior of a net of real numbers has many properties analogous to the case of sequences, e.g.

limsup (_x__(_α_) + _y__(_α_)) ≤ limsup _x__(_α_) + limsup _y__(_α_),
where equality holds whenever one of the nets is convergent.


References

-   -   -   -   -   -   -   -

Category:General topology Category:Articles containing proofs

[1]

[2]

[3] Megginson, p. 143

[4] .

[5]

[6] .

[7] http://www.math.wichita.edu/~pparker/classes/handout/netfilt.pdf

[8] R. G. Bartle, Nets and Filters In Topology, American Mathematical Monthly, Vol. 62, No. 8 (1955), pp. 551–557.

[9]

[10]

[11] Aliprantis-Border, p. 32

[12] Megginson, p. 217, p. 221, Exercises 2.53–2.55

[13] Beer, p. 2

[14] Schechter, Sections 7.43–7.47