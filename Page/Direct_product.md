In mathematics, one can often define a DIRECT PRODUCT of objects already known, giving a new one. This generalizes the Cartesian product of the underlying sets, together with a suitably defined structure on the product set. More abstractly, one talks about the product in category theory, which formalizes these notions.

Examples are the product of sets (see Cartesian product), groups (described below), the product of rings and of other algebraic structures. The product of topological spaces is another instance.

There is also the direct sum – in some areas this is used interchangeably, while in others it is a different concept.


Examples

-   If we think of ℝ as the set of real numbers, then the direct product ℝ × ℝ is just the Cartesian product {(x, y) ∣ x, y ∈ ℝ}.
-   If we think of ℝ as the group of real numbers under addition, then the direct product ℝ × ℝ still has {(x, y) ∣ x, y ∈ ℝ} as its underlying set. The difference between this and the preceding example is that ℝ × ℝ is now a group, and so we have to also say how to add their elements. This is done by defining (a, b) + (c, d) = (a + c, b + d).
-   If we think of ℝ as the ring of real numbers, then the direct product ℝ × ℝ again has {(x, y) ∣ x, y ∈ ℝ} as its underlying set. The ring structure ring consists of addition defined by (a, b) + (c, d) = (a + c, b + d) and multiplication defined by (a, b)(c, d) = (ac, bd).
-   However, if we think of ℝ as the field of real numbers, then the direct product ℝ × ℝ does not exist – naively defining addition and multiplication componentwise as in the above example would not result in a field since the element (1, 0) does not have a multiplicative inverse.

In a similar manner, we can talk about the direct product of finitely many algebraic structures, e.g. ℝ × ℝ × ℝ × ℝ. This relies on the fact that the direct product is associative up to isomorphism. That is, (A × B) × C ≅ A × (B × C) for any algebraic structures A, B, and C of the same kind. The direct sum is also commutative up to isomorphism, i.e. A × B ≅ B × A for any algebraic structures A and B of the same kind. We can even talk about the direct product of infinitely many algebraic structures; for example we can take the direct product of countably many copies of ℝ, which we write as $\mathbb{R} \times \mathbb{R} \times \mathbb{R} \times \dotsb$.


Group direct product

In group theory one can define the direct product of two groups (_G_, ∘) and (_H_, ∙), denoted by _G_ × _H_. For abelian groups which are written additively, it may also be called the direct sum of two groups, denoted by G ⊕ H.

It is defined as follows:

-   the set of the elements of the new group is the _Cartesian product_ of the sets of elements of _G_ and _H_, that is {(_g_, _h_): _g_ ∈ _G_, _h_ ∈ _H_};
-   on these elements put an operation, defined element-wise:

        (_g_, _h_) × (_g{{'}}_, ''h' _) = (_g'' ∘ _g{{'}}_, _h_ ∙ _h{{'}}_)

(Note that (_G_, ∘) may be the same as (_H_, ∙))

This construction gives a new group. It has a normal subgroup isomorphic to _G_ (given by the elements of the form (_g_, 1)), and one isomorphic to _H_ (comprising the elements (1, _h_)).

The reverse also holds, there is the following recognition theorem: If a group _K_ contains two normal subgroups _G_ and _H_, such that _K_= _GH_ and the intersection of _G_ and _H_ contains only the identity, then _K_ is isomorphic to _G_ × _H_. A relaxation of these conditions, requiring only one subgroup to be normal, gives the semidirect product.

As an example, take as _G_ and _H_ two copies of the unique (up to isomorphisms) group of order 2, _C_₂: say {1, _a_} and {1, _b_}. Then _C_₂×_C_₂ = {(1,1), (1,_b_), (_a_,1), (_a_,_b_)}, with the operation element by element. For instance, (1,_b_)*(_a_,1) = (1*_a_, _b_*1) = (_a_,_b_), and (1,_b_)*(1,_b_) = (1,_b_²) = (1,1).

With a direct product, we get some natural group homomorphisms for free: the projection maps define by

$$\begin{align}
  \pi_1: G \times H \to G, \ \ \pi_1(g, h) &= g \\
  \pi_2: G \times H \to H, \ \ \pi_2(g, h) &= h
\end{align}$$
called the COORDINATE FUNCTIONS.

Also, every homomorphism _f_ to the direct product is totally determined by its component functions f_(i) = π_(i) ∘ f.

For any group (_G_, ∘) and any integer _n_ ≥ 0, repeated application of the direct product gives the group of all _n_-tuples _G_^(_n_) (for _n_ = 0 we get the trivial group), for example Z^(_n_) and R^(_n_).


Direct product of modules

The direct product for modules (not to be confused with the tensor product) is very similar to the one defined for groups above, using the Cartesian product with the operation of addition being componentwise, and the scalar multiplication just distributing over all the components. Starting from R we get Euclidean space R^(_n_), the prototypical example of a real _n_-dimensional vector space. The direct product of R^(_m_) and R^(_n_) is R^(_m_+_n_).

Note that a direct product for a finite index $\prod_{i=1}^n X_i$ is identical to the direct sum $\bigoplus_{i=1}^n X_i$. The direct sum and direct product differ only for infinite indices, where the elements of a direct sum are zero for all but for a finite number of entries. They are dual in the sense of category theory: the direct sum is the coproduct, while the direct product is the product.

For example, consider $X=\prod_{i=1}^\infty \mathbb{R}$ and $Y=\bigoplus_{i=1}^\infty \mathbb{R}$, the infinite direct product and direct sum of the real numbers. Only sequences with a finite number of non-zero elements are in _Y_. For example, (1,0,0,0,...) is in _Y_ but (1,1,1,1,...) is not. Both of these sequences are in the direct product _X_; in fact, _Y_ is a proper subset of _X_ (that is, _Y_ ⊂ _X_).[1][2]


Topological space direct product

The direct product for a collection of topological spaces _X_(i)_ for _i_ in _I_, some index set, once again makes use of the Cartesian product

∏_(_i_ ∈ _I_)_X__(_i_).

Defining the topology is a little tricky. For finitely many factors, this is the obvious and natural thing to do: simply take as a basis of open sets to be the collection of all Cartesian products of open subsets from each factor:

ℬ = {_U_₁ × ⋯ × _U__(_n_) | _U__(_i_) _o__p__e__n_ _i__n_ _X__(_i_)}.

This topology is called the product topology. For example, directly defining the product topology on R² by the open sets of R (disjoint unions of open intervals), the basis for this topology would consist of all disjoint unions of open rectangles in the plane (as it turns out, it coincides with the usual metric topology).

The product topology for infinite products has a twist, and this has to do with being able to make all the projection maps continuous and to make all functions into the product continuous if and only if all its component functions are continuous (i.e. to satisfy the categorical definition of product: the morphisms here are continuous functions): we take as a basis of open sets to be the collection of all Cartesian products of open subsets from each factor, as before, with the proviso that all but finitely many of the open subsets are the entire factor:

ℬ = {∏_(_i_ ∈ _I_)_U__(_i_) | (∃_j_₁,…,_j__(_n_))(_U__(_j__(_i_)) _o__p__e__n_ _i__n_ _X__(_j__(_i_))) _a__n__d_ (∀_i_≠_j_₁,…,_j__(_n_))(_U__(_i_)=_X__(_i_))}.

The more natural-sounding topology would be, in this case, to take products of infinitely many open subsets as before, and this does yield a somewhat interesting topology, the box topology. However it is not too difficult to find an example of bunch of continuous component functions whose product function is not continuous (see the separate entry box topology for an example and more). The problem which makes the twist necessary is ultimately rooted in the fact that the intersection of open sets is only guaranteed to be open for finitely many sets in the definition of topology.

Products (with the product topology) are nice with respect to preserving properties of their factors; for example, the product of Hausdorff spaces is Hausdorff; the product of connected spaces is connected, and the product of compact spaces is compact. That last one, called Tychonoff's theorem, is yet another equivalence to the axiom of choice.

For more properties and equivalent formulations, see the separate entry product topology.


Direct product of binary relations

On the Cartesian product of two sets with binary relations R and S, define (_a_, _b_)T(_c_, _d_) as _a_R_c_ and _b_S_d_. If R and S are both reflexive, irreflexive, transitive, symmetric, or antisymmetric, then T will be also.[3] Combining properties it follows that this also applies for being a preorder and being an equivalence relation. However if R and S are total relations, T is in not general total.


Direct product in universal algebra

If Σ is a fixed signature, _I_ is an arbitrary (possibly infinite) index set, and (A_(_i_))_(_i_∈_I_) is an indexed family of Σ algebras, the DIRECT PRODUCT A = ∏_(_i_∈_I_) A_(_i_) is a Σ algebra defined as follows:

-   The universe set _A_ of A is the Cartesian product of the universe sets _A__(_i_) of A_(_i_), formally: _A_ = ∏_(_i_∈_I_) _A__(_i_);
-   For each _n_ and each _n_-ary operation symbol , its interpretation _f_^(A) in A is defined componentwise, formally: for all and each , the _i_th component of is defined as .

For each , the _i_th projection is defined by . It is a surjective homomorphism between the Σ algebras A and A_(_i_).[4]

As a special case, if the index set the direct product of two Σ algebras A₁ and A₂ is obtained, written as . If Σ just contains one binary operation _f_, the above definition of the direct product of groups is obtained, using the notation , , , , and . Similarly, the definition of the direct product of modules is subsumed here.


Categorical product

The direct product can be abstracted to an arbitrary category. In a general category, given a collection of objects _A_(i)_ _and_ a collection of morphisms _p_(i)_ from _A_ to _A_(i)_ with _i_ ranging in some index set _I_, an object _A_ is said to be a CATEGORICAL PRODUCT in the category if, for any object _B_ and any collection of morphisms _f_(i)_ from _B_ to _A_(i)_, there exists a unique morphism _f_ from _B_ to _A_ such that _f_(i) = p_(i) f_ and this object _A_ is unique. This not only works for two factors, but arbitrarily (even infinitely) many.

For groups we similarly define the direct product of a more general, arbitrary collection of groups _G_(i)_ for _i_ in _I_, _I_ an index set. Denoting the Cartesian product of the groups by _G_ we define multiplication on _G_ with the operation of componentwise multiplication; and corresponding to the _p_(i)_ in the definition above are the projection maps

_π__(_i_): _G_ → _G__(_i_) _b__y_ _π__(_i_)(_g_) = _g__(_i_)
,

the functions that take (g_(j))_(j ∈ I) to its _i_th component _g_(i)_.


Internal and external direct product

Some authors draw a distinction between an INTERNAL DIRECT PRODUCT and an EXTERNAL DIRECT PRODUCT. If A, B ⊂ X and A × B ≅ X, then we say that _X_ is an _internal_ direct product of _A_ and _B_, while if _A_ and _B_ are not subobjects then we say that this is an _external_ direct product.


Metric and norm

A metric on a Cartesian product of metric spaces, and a norm on a direct product of normed vector spaces, can be defined in various ways, see for example p-norm.


See also

-   Direct sum
-   Cartesian product
-   Coproduct
-   Free product
-   Semidirect product
-   Zappa–Szep product
-   Tensor product of graphs
-   Orders on the Cartesian product of totally ordered sets


Notes


References

-

ru:Прямое произведение#Прямое произведение групп

Category:Abstract algebra

[1]

[2]

[3] Equivalence and Order

[4] Stanley N. Burris and H.P. Sankappanavar, 1981. _A Course in Universal Algebra._ Springer-Verlag. . Here: Def.7.8, p.53 (=p. 67 in pdf file)