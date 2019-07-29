In category theory, a branch of mathematics, a GROTHENDIECK TOPOLOGY is a structure on a category _C_ which makes the objects of _C_ act like the open sets of a topological space. A category together with a choice of Grothendieck topology is called a SITE.

Grothendieck topologies axiomatize the notion of an open cover. Using the notion of covering provided by a Grothendieck topology, it becomes possible to define sheaves on a category and their cohomology. This was first done in algebraic geometry and algebraic number theory by Alexander Grothendieck to define the étale cohomology of a scheme. It has been used to define other cohomology theories since then, such as l-adic cohomology, flat cohomology, and crystalline cohomology. While Grothendieck topologies are most often used to define cohomology theories, they have found other applications as well, such as to John Tate's theory of rigid analytic geometry.

There is a natural way to associate a site to an ordinary topological space, and Grothendieck's theory is loosely regarded as a generalization of classical topology. Under meager point-set hypotheses, namely sobriety, this is completely accurate—it is possible to recover a sober space from its associated site. However simple examples such as the indiscrete topological space show that not all topological spaces can be expressed using Grothendieck topologies. Conversely, there are Grothendieck topologies which do not come from topological spaces.

The term "Grothendieck topology" has changed in meaning. In it meant what is now called a Grothendieck pretopology, and some authors still use this old meaning. modified the definition to use sieves rather than covers. Much of the time this does not make much difference, as each Grothendieck pretopology determines a unique Grothendieck topology, though quite different pretopologies can give the same topology.


Overview

André Weil's famous Weil conjectures proposed that certain properties of equations with integral coefficients should be understood as geometric properties of the algebraic variety that they define. His conjectures postulated that there should be a cohomology theory of algebraic varieties which gave number-theoretic information about their defining equations. This cohomology theory was known as the "Weil cohomology", but using the tools he had available, Weil was unable to construct it.

In the early 1960s, Alexander Grothendieck introduced étale maps into algebraic geometry as algebraic analogues of local analytic isomorphisms in analytic geometry. He used étale coverings to define an algebraic analogue of the fundamental group of a topological space. Soon Jean-Pierre Serre noticed that some properties of étale coverings mimicked those of open immersions, and that consequently it was possible to make constructions which imitated the cohomology functor _H_¹. Grothendieck saw that it would be possible to use Serre's idea to define a cohomology theory which he suspected would be the Weil cohomology. To define this cohomology theory, Grothendieck needed to replace the usual, topological notion of an open covering with one that would use étale coverings instead. Grothendieck also saw how to phrase the definition of covering abstractly; this is where the definition of a Grothendieck topology comes from.


Definition

Motivation

The classical definition of a sheaf begins with a topological space _X_. A sheaf associates information to the open sets of _X_. This information can be phrased abstractly by letting _O_(_X_) be the category whose objects are the open subsets _U_ of _X_ and whose morphisms are the inclusion maps _V_ → _U_ of open sets _U_ and _V_ of _X_. We will call such maps _open immersions_, just as in the context of schemes. Then a presheaf on _X_ is a contravariant functor from _O_(_X_) to the category of sets, and a sheaf is a presheaf which satisfies the gluing axiom. The gluing axiom is phrased in terms of pointwise covering, i.e., {U_(i)} covers _U_ if and only if ⋃_(i)U_(i) = U. In this definition, U_(i) is an open subset of _X_. Grothendieck topologies replace each U_(i) with an entire family of open subsets; in this example, U_(i) is replaced by the family of all open immersions V_(ij) → U_(i). Such a collection is called a _sieve_. Pointwise covering is replaced by the notion of a _covering family_; in the above example, the set of all {V_(ij) → U_(i)}_(j) as _i_ varies is a covering family of _U_. Sieves and covering families can be axiomatized, and once this is done open sets and pointwise covering can be replaced by other notions which describe other properties of the space _X_.

Sieves

In a Grothendieck topology, the notion of a collection of open subsets of _U_ stable under inclusion is replaced by the notion of a sieve. If _c_ is any given object in _C_, a SIEVE on _c_ is a subfunctor of the functor Hom(−, _c_); (this is the Yoneda embedding applied to _c_). In the case of _O_(_X_), a sieve _S_ on an open set _U_ selects a collection of open subsets of _U_ which is stable under inclusion. More precisely, consider that for any open subset _V_ of _U_, _S_(_V_) will be a subset of Hom(_V_, _U_), which has only one element, the open immersion _V_ → _U_. Then _V_ will be considered "selected" by _S_ if and only if _S_(_V_) is nonempty. If _W_ is a subset of _V_, then there is a morphism _S_(_V_) → _S_(_W_) given by composition with the inclusion _W_ → _V_. If _S_(_V_) is non-empty, it follows that _S_(_W_) is also non-empty.

If _S_ is a sieve on _X_, and _f_: _Y_ → _X_ is a morphism, then left composition by _f_ gives a sieve on _Y_ called the PULLBACK OF _S_ ALONG _f_, denoted by _f_^(^(*))_S_. It is defined as the fibered product _S_ ×_(Hom(−,\ _X_)) Hom(−, _Y_) together with its natural embedding in Hom(−, _Y_). More concretely, for each object _Z_ of _C_, _f_^(^(*))_S_(_Z_) = { _g_: _Z_ → _Y_ | _fg_ ∈_S_(_Z_) }, and _f_^(^(*))_S_ inherits its action on morphisms by being a subfunctor of Hom(−, _Y_). In the classical example, the pullback of a collection {_V__(i)} of subsets of _U_ along an inclusion _W_ → _U_ is the collection {_V__(i)∩W}.

Grothendieck topology

A GROTHENDIECK TOPOLOGY _J_ on a category _C_ is a collection, _for each object c of C_, of distinguished sieves on _c_, denoted by _J_(_c_) and called COVERING SIEVES of _c_. This selection will be subject to certain axioms, stated below. Continuing the previous example, a sieve _S_ on an open set _U_ in _O_(_X_) will be a covering sieve if and only if the union of all the open sets _V_ for which _S_(_V_) is nonempty equals _U_; in other words, if and only if _S_ gives us a collection of open sets which cover _U_ in the classical sense.

Axioms

The conditions we impose on a Grothendieck topology are:

-   (T 1) (Base change) If _S_ is a covering sieve on _X_, and _f_: _Y_ → _X_ is a morphism, then the pullback _f_^(^(*))_S_ is a covering sieve on _Y_.
-   (T 2) (Local character) Let _S_ be a covering sieve on _X_, and let _T_ be any sieve on _X_. Suppose that for each object _Y_ of _C_ and each arrow _f_: _Y_ → _X_ in _S_(_X_), the pullback sieve _f_^(^(*))_T_ is a covering sieve on _Y_. Then _T_ is a covering sieve on _X_.
-   (T 3) (Identity) Hom(−, _X_) is a covering sieve on _X_ for any object _X_ in _C_.

The base change axiom corresponds to the idea that if {_U_(i)_} covers _U_, then {_U_(i)_ ∩ _V_} should cover _U_ ∩ _V_. The local character axiom corresponds to the idea that if {_U_(i)_} covers _U_ and {_V_(ij)_}_(_j\ ∈J_(i)_) covers _U_(i)_ for each _i_, then the collection {_V_(ij)_} for all _i_ and _j_ should cover _U_. Lastly, the identity axiom corresponds to the idea that any set is covered by all its possible subsets.

Grothendieck pretopologies

In fact, it is possible to put these axioms in another form where their geometric character is more apparent, assuming that the underlying category _C_ contains certain fibered products. In this case, instead of specifying sieves, we can specify that certain collections of maps with a common codomain should cover their codomain. These collections are called COVERING FAMILIES. If the collection of all covering families satisfies certain axioms, then we say that they form a GROTHENDIECK PRETOPOLOGY. These axioms are:

-   (PT 0) (Existence of fibered products) For all objects _X_ of _C_, and for all morphisms _X_₀ → _X_ which appear in some covering family of _X_, and for all morphisms _Y_ → _X_, the fibered product _X_₀ ×_(_X_) _Y_ exists.
-   (PT 1) (Stability under base change) For all objects _X_ of _C_, all morphisms _Y_ → _X_, and all covering families {_X__(_α_) → _X_}, the family {_X__(_α_) ×_(_X_) _Y_ → _Y_} is a covering family.
-   (PT 2) (Local character) If {_X__(_α_) → _X_} is a covering family, and if for all α, {_X__(_βα_) → _X__(_α_)} is a covering family, then the family of composites {_X__(_βα_) → _X__(_α_) → _X_} is a covering family.
-   (PT 3) (Isomorphisms) If _f_: _Y_ → _X_ is an isomorphism, then {_f_} is a covering family.

For any pretopology, the collection of all sieves that contain a covering family from the pretopology is always a Grothendieck topology.

For categories with fibered products, there is a converse. Given a collection of arrows {_X__(_α_) → _X_}, we construct a sieve _S_ by letting _S_(_Y_) be the set of all morphisms _Y_ → _X_ that factor through some arrow _X__(_α_) → _X_. This is called the sieve GENERATED BY {_X__(_α_) → _X_}. Now choose a topology. Say that {_X__(_α_) → _X_} is a covering family if and only if the sieve that it generates is a covering sieve for the given topology. It is easy to check that this defines a pretopology.

(PT 3) is sometimes replaced by a weaker axiom:

-   (PT 3') (Identity) If 1_(_X_) : _X_ → _X_ is the identity arrow, then {1_(_X_)} is a covering family.

(PT 3) implies (PT 3'), but not conversely. However, suppose that we have a collection of covering families that satisfies (PT 0) through (PT 2) and (PT 3'), but not (PT 3). These families generate a pretopology. The topology generated by the original collection of covering families is then the same as the topology generated by the pretopology, because the sieve generated by an isomorphism _Y_ → _X_ is Hom(−, _X_). Consequently, if we restrict our attention to topologies, (PT 3) and (PT 3') are equivalent.


Sites and sheaves

Let _C_ be a category and let _J_ be a Grothendieck topology on _C_. The pair (_C_, _J_) is called a SITE.

A PRESHEAF on a category is a contravariant functor from _C_ to the category of all sets. Note that for this definition _C_ is not required to have a topology. A sheaf on a site, however, should allow gluing, just like sheaves in classical topology. Consequently, we define a SHEAF on a site to be a presheaf _F_ such that for all objects _X_ and all covering sieves _S_ on _X_, the natural map Hom(Hom(−, _X_), _F_) → Hom(_S_, _F_), induced by the inclusion of _S_ into Hom(−, _X_), is a bijection. Halfway in between a presheaf and a sheaf is the notion of a SEPARATED PRESHEAF, where the natural map above is required to be only an injection, not a bijection, for all sieves _S_. A MORPHISM of presheaves or of sheaves is a natural transformation of functors. The category of all sheaves on _C_ is the TOPOS defined by the site (_C_, _J_).

Using the Yoneda lemma, it is possible to show that a presheaf on the category _O_(_X_) is a sheaf on the topology defined above if and only if it is a sheaf in the classical sense.

Sheaves on a pretopology have a particularly simple description: For each covering family {_X__(_α_) → _X_}, the diagram

$$F(X) \rightarrow \prod_{\alpha\in A} F(X_\alpha) {{{} \atop \longrightarrow}\atop{\longrightarrow \atop {}}} \prod_{\alpha,\beta \in A} F(X_\alpha\times_X X_\beta)$$

must be an equalizer. For a separated presheaf, the first arrow need only be injective.

Similarly, one can define presheaves and sheaves of abelian groups, rings, modules, and so on. One can require either that a presheaf _F_ is a contravariant functor to the category of abelian groups (or rings, or modules, etc.), or that _F_ be an abelian group (ring, module, etc.) object in the category of all contravariant functors from _C_ to the category of sets. These two definitions are equivalent.


Examples of sites

The discrete and indiscrete topologies

Let C be any category. To define the DISCRETE TOPOLOGY, also known as the BIGGEST or CHAOTIC topology, we declare all sieves to be covering sieves. If C has all fibered products, this is equivalent to declaring all families to be covering families. To define the INDISCRETE TOPOLOGY, we declare only the sieves of the form Hom(−, _X_) to be covering sieves. The indiscrete topology is generated by the pretopology which has only isomorphisms for covering families. A sheaf on the indiscrete site is the same thing as a presheaf.

The canonical topology

Let C be any category. The Yoneda embedding gives a functor Hom(−, _X_) for each object _X_ of C. The CANONICAL TOPOLOGY is the biggest (finest) topology such that every representable presheaf, i.e. presheaf of the form Hom(−, _X_), is a sheaf. A covering sieve or covering family for this site is said to be _strictly universally epimorphic_ because it consists of the legs of a colimit cone (under the full diagram on the domains of its constituent morphisms) and these colimits are stable under pullbacks along morphisms in C. A topology which is less fine than the canonical topology, that is, for which every covering sieve is strictly universally epimorphic, is called SUBCANONICAL. Subcanonical sites are exactly the sites for which every presheaf of the form Hom(−, _X_) is a sheaf. Most sites encountered in practice are subcanonical.

Small site associated to a topological space

We repeat the example which we began with above. Let _X_ be a topological space. We defined _O_(_X_) to be the category whose objects are the open sets of _X_ and whose morphisms are inclusions of open sets. Note that for an open set _U_ and a sieve _S_ on _U_, the set _S_(_V_) contains either zero or one element for every open set _V_. The covering sieves on an object _U_ of _O_(_X_) are those sieves _S_ satisfying the following condition:

-   If _W_ is the union of all the sets _V_ such that _S_(_V_) is non-empty, then _W_ = _U_.

This notion of cover matches the usual notion in point-set topology.

This topology can also naturally be expressed as a pretopology. We say that a family of inclusions {_V__(_α_) $\sube$ _U_} is a covering family if and only if the union ∪_V__(_α_) equals _U_. This site is called the '''small site associated to a topological space _X_.

Big site associated to a topological space

Let _Spc_ be the category of all topological spaces. Given any family of functions {_u__(_α_) : _V__(_α_) → _X_}, we say that it is a SURJECTIVE FAMILY or that the morphisms _u__(_α_) are JOINTLY SURJECTIVE if ∪ _u__(_α_)(_V__(_α_)) equals _X_. We define a pretopology on _Spc_ by taking the covering families to be surjective families all of whose members are open immersions. Let _S_ be a sieve on _Spc_. _S_ is a covering sieve for this topology if and only if:

-   For all _Y_ and every morphism _f_ : _Y_ → _X_ in _S_(_Y_), there exists a _V_ and a _g_ : _V_ → _X_ such that _g_ is an open immersion, _g_ is in _S_(_V_), and _f_ factors through _g_.
-   If _W_ is the union of all the sets _f_(_Y_), where _f_ : _Y_ → _X_ is in _S_(_Y_), then _W_ = _X_.

Fix a topological space _X_. Consider the comma category _Spc/X_ of topological spaces with a fixed continuous map to _X_. The topology on _Spc_ induces a topology on _Spc/X_. The covering sieves and covering families are almost exactly the same; the only difference is that now all the maps involved commute with the fixed maps to _X_. This is the '''big site associated to a topological space _X_ '''. Notice that _Spc_ is the big site associated to the one point space. This site was first considered by Jean Giraud.

The big and small sites of a manifold

Let _M_ be a manifold. _M_ has a category of open sets _O_(_M_) because it is a topological space, and it gets a topology as in the above example. For two open sets _U_ and _V_ of _M_, the fiber product _U_ ×_(_M_) _V_ is the open set _U_ ∩ _V_, which is still in _O_(_M_). This means that the topology on _O_(_M_) is defined by a pretopology, the same pretopology as before.

Let _Mfd_ be the category of all manifolds and continuous maps. (Or smooth manifolds and smooth maps, or real analytic manifolds and analytic maps, etc.) _Mfd_ is a subcategory of _Spc_, and open immersions are continuous (or smooth, or analytic, etc.), so _Mfd_ inherits a topology from _Spc_. This lets us construct the big site of the manifold _M_ as the site _Mfd/M_. We can also define this topology using the same pretopology we used above. Notice that to satisfy (PT 0), we need to check that for any continuous map of manifolds _X_ → _Y_ and any open subset _U_ of _Y_, the fibered product _U_ ×_(_Y_) _X_ is in _Mfd/M_. This is just the statement that the preimage of an open set is open. Notice, however, that not all fibered products exist in _Mfd_ because the preimage of a smooth map at a critical value need not be a manifold.

Topologies on the category of schemes

The category of schemes, denoted _Sch_, has a tremendous number of useful topologies. A complete understanding of some questions may require examining a scheme using several different topologies. All of these topologies have associated small and big sites. The big site is formed by taking the entire category of schemes and their morphisms, together with the covering sieves specified by the topology. The small site over a given scheme is formed by only taking the objects and morphisms which are part of a cover of the given scheme.

The most elementary of these is the Zariski topology. Let _X_ be a scheme. _X_ has an underlying topological space, and this topological space determines a Grothendieck topology. The Zariski topology on _Sch_ is generated by the pretopology whose covering families are jointly surjective families of scheme-theoretic open immersions. The covering sieves _S_ for _Zar_ are characterized by the following two properties:

-   For all _Y_ and every morphism _f_ : _Y_ → _X_ in _S_(_Y_), there exists a _V_ and a _g_ : _V_ → _X_ such that _g_ is an open immersion, _g_ is in _S_(_V_), and _f_ factors through _g_.
-   If _W_ is the union of all the sets _f_(_Y_), where _f_ : _Y_ → _X_ is in _S_(_Y_), then _W_ = _X_.

Despite their outward similarities, the topology on _Zar_ is _not_ the restriction of the topology on _Spc_! This is because there are morphisms of schemes which are topologically open immersions but which are not scheme-theoretic open immersions. For example, let _A_ be a non-reduced ring and let _N_ be its ideal of nilpotents. The quotient map _A_ → _A/N_ induces a map Spec _A/N_ → Spec _A_ which is the identity on underlying topological spaces. To be a scheme-theoretic open immersion it must also induce an isomorphism on structure sheaves, which this map does not do. In fact, this map is a closed immersion.

The étale topology is finer than the Zariski topology. It was the first Grothendieck topology to be closely studied. Its covering families are jointly surjective families of étale morphisms. It is finer than the Nisnevich topology, but neither finer nor coarser than the _cdh_ and l′ topologies.

There are two flat topologies, the _fppf_ topology and the _fpqc_ topology. _fppf_ stands for __, and in this topology, a morphism of affine schemes is a covering morphism if it is faithfully flat, of finite presentation, and is quasi-finite. _fpqc_ stands for __, and in this topology, a morphism of affine schemes is a covering morphism if it is faithfully flat. In both categories, a covering family is defined to be a family that is a cover on Zariski open subsets.[1] In the fpqc topology, any faithfully flat and quasi-compact morphism is a cover.[2] These topologies are closely related to descent. The _fpqc_ topology is finer than all the topologies mentioned above, and it is very close to the canonical topology.

Grothendieck introduced crystalline cohomology to study the _p_-torsion part of the cohomology of characteristic _p_ varieties. In the _crystalline topology_ which is the basis of this theory, the underlying category has objects given by infinitesimal thickenings together with divided power structures. Crystalline sites are examples of sites with no final object.


Continuous and cocontinuous functors

There are two natural types of functors between sites. They are given by functors which are compatible with the topology in a certain sense.

Continuous functors

If (_C_, _J_) and (_D_, _K_) are sites and _u_ : _C_ → _D_ is a functor, then _u_ is CONTINUOUS if for every sheaf _F_ on _D_ with respect to the topology _K_, the presheaf _Fu_ is a sheaf with respect to the topology _J_. Continuous functors induce functors between the corresponding topoi by sending a sheaf _F_ to _Fu_. These functors are called PUSHFORWARDS. If C̃ and D̃ denote the topoi associated to _C_ and _D_, then the pushforward functor is u_(s) : D̃ → C̃.

_u__(_s_) admits a left adjoint _u_^(_s_) called the PULLBACK. _u_^(_s_) need not preserve limits, even finite limits.

In the same way, _u_ sends a sieve on an object _X_ of _C_ to a sieve on the object _uX_ of _D_. A continuous functor sends covering sieves to covering sieves. If _J_ is the topology defined by a pretopology, and if _u_ commutes with fibered products, then _u_ is continuous if and only if it sends covering sieves to covering sieves and if and only if it sends covering families to covering families. In general, it is _not_ sufficient for _u_ to send covering sieves to covering sieves (see SGA IV 3, 1.9.3).

Cocontinuous functors

Again, let (_C_, _J_) and (_D_, _K_) be sites and _v_ : _C_ → _D_ be a functor. If _X_ is an object of _C_ and _R_ is a sieve on _vX_, then _R_ can be pulled back to a sieve _S_ as follows: A morphism _f_ : _Z_ → _X_ is in _S_ if and only if _v_(_f_) : _vZ_ → _vX_ is in _R_. This defines a sieve. _v_ is COCONTINUOUS if and only if for every object _X_ of _C_ and every covering sieve _R_ of _vX_, the pullback _S_ of _R_ is a covering sieve on _X_.

Composition with _v_ sends a presheaf _F_ on _D_ to a presheaf _Fv_ on _C_, but if _v_ is cocontinuous, this need not send sheaves to sheaves. However, this functor on presheaf categories, usually denoted v̂^(*), admits a right adjoint v̂_(*). Then _v_ is cocontinuous if and only if v̂_(*) sends sheaves to sheaves, that is, if and only if it restricts to a functor v_(*) : C̃ → D̃. In this case, the composite of v̂^(*) with the associated sheaf functor is a left adjoint of _v__(*) denoted _v_^(*). Furthermore, _v_^(*) preserves finite limits, so the adjoint functors _v__(*) and _v_^(*) determine a geometric morphism of topoi C̃ → D̃.

Morphisms of sites

A continuous functor _u_ : _C_ → _D_ is a MORPHISM OF SITES _D_ → _C_ (_not_ _C_ → _D_) if _u_^(_s_) preserves finite limits. In this case, _u_^(_s_) and _u__(_s_) determine a geometric morphism of topoi C̃ → D̃. The reasoning behind the convention that a continuous functor _C_ → _D_ is said to determine a morphism of sites in the opposite direction is that this agrees with the intuition coming from the case of topological spaces. A continuous map of topological spaces _X_ → _Y_ determines a continuous functor _O_(_Y_) → _O_(_X_). Since the original map on topological spaces is said to send _X_ to _Y_, the morphism of sites is said to as well.

A particular case of this happens when a continuous functor admits a left adjoint. Suppose that _u_ : _C_ → _D_ and _v_ : _D_ → _C_ are functors with _u_ right adjoint to _v_. Then _u_ is continuous if and only if _v_ is cocontinuous, and when this happens, _u_^(_s_) is naturally isomorphic to _v_^(*) and _u__(_s_) is naturally isomorphic to _v__(*). In particular, _u_ is a morphism of sites.


Notes


See also

-   Fibered category
-   Lawvere–Tierney topology


References

-   -   -   -   -   -


External links

-   The birthday of Grothendieck topologies

Category:Topos theory Category:Sheaf theory

[1] SGA III₁, IV 6.3.

[2] SGA III₁, IV 6.3, Proposition 6.3.1(v).