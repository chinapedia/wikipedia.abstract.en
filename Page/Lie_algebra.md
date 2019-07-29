In mathematics, a LIE ALGEBRA (pronounced "Lee") is a vector space 𝔤 together with a non-associative operation called the LIE BRACKET, an alternating bilinear map 𝔤 × 𝔤 → 𝔤, (x, y) ↦ [x, y], satisfying the Jacobi identity.

Lie algebras are closely related to Lie groups, which are groups that are also smooth manifolds: any Lie group gives rise to a Lie algebra, which is its tangent space at the identity. Conversely, to any finite-dimensional Lie algebra over real or complex numbers, there is a corresponding connected Lie group unique up to finite coverings (Lie's third theorem). This correspondence allows one to study the structure and classification of Lie groups in terms of Lie algebras.

In physics, Lie groups appear as symmetry groups of physical systems, and their Lie algebras (tangent vectors near the identity) may be thought of as infinitesimal symmetry motions, directions of symmetry. Thus Lie algebras and their representations are used extensively in physics, notably in quantum mechanics and particle physics.

An elementary example is the space of three dimensional vectors 𝔤 = ℝ³ with the bracket operation defined by the cross product [x, y] = x × y. This is skew-symmetric since x × y =  − y × x, and instead of associativity it satisfies the Jacobi identity:

  x × (y × z) = (x × y) × z + y × (x × z).

This is the Lie algebra of the Lie group of rotations of space, and each vector $v\in\R^3$ may be pictured as an infinitesimal rotation around the axis _v_, with velocity equal to the magnitude of _v_. The Lie bracket is a measure of the non-commutativity between two rotations: since a rotation commutes with itself, we have the alternating property [x, x] = x × x = 0.


History

Lie algebras were introduced to study the concept of infinitesimal transformations by Marius Sophus Lie in the 1870s,[1] and independently discovered by Wilhelm Killing[2] in the 1880s. The name _Lie algebra_ was given by Hermann Weyl in the 1930s; in older texts, the term _infinitesimal group_ is used.


Definitions

Definition of a Lie algebra

A Lie algebra is a vector space  𝔤 over some field 𝔽[3] together with a binary operation [ ⋅ , ⋅ ] : 𝔤 × 𝔤 → 𝔤 called the Lie bracket satisfying the following axioms:

-   Bilinearity,

[_a__x_ + _b__y_, _z_] = _a_[_x_, _z_] + _b_[_y_, _z_],

[_z_, _a__x_ + _b__y_] = _a_[_z_, _x_] + _b_[_z_, _y_]

    for all scalars _a_, _b_ in _F_ and all elements _x_, _y_, _z_ in 𝔤.

-   Alternativity,

$$[x,x]=0\$$

    for all _x_ in 𝔤.

-   The Jacobi identity,



        $[x,[y,z]] + [z,[x,y]] + [y,[z,x]] = 0 \$

    for all _x_, _y_, _z_ in 𝔤.

Using bilinearity to expand the Lie bracket [x + y, x + y] and using alternativity shows that $[x,y] + [y,x]=0\$ for all elements _x_, _y_ in 𝔤, showing that bilinearity and alternativity together imply

-   Anticommutativity,



        $[x,y] = -[y,x],\$

    for all elements _x_, _y_ in 𝔤. If the field's characteristic is not 2 then anticommutativity implies alternativity.[4]

It is customary to denote a Lie algebra by a lower-case fraktur letter such as 𝔤, 𝔥, 𝔟, 𝔫. If a Lie algebra is associated with a Lie group, then the algebra is denoted by the fraktur version of the group: for example the Lie algebra of SU(_n_) is 𝔰𝔲(n).

Generators and dimension

Elements of a Lie algebra 𝔤 are said to generate it if the smallest subalgebra containing these elements is 𝔤 itself. The _dimension_ of a Lie algebra is its dimension as a vector space over _F_. The cardinality of a minimal generating set of a Lie algebra is always less than or equal to its dimension.

See the classification of low-dimensional real Lie algebras for other small examples.

Subalgebras, ideals and homomorphisms

The Lie bracket is not associative, meaning that [[x, y], z]_need_not_equal_[x, [y, z|x, y], z] need not equal [x, [y, z]]. (However, it is _flexible_.) Nonetheless, much of the terminology of associative rings and algebras is commonly applied to Lie algebras. A _Lie subalgebra_ is a subspace 𝔥 ⊆ 𝔤 which is closed under the Lie bracket. An _ideal_ 𝔦 ⊆ 𝔤 is a subalgebra satisfying the stronger condition:[5]

[𝔤, 𝔦] ⊆ 𝔦.

A Lie algebra _homomorphism_ is a linear map compatible with the respective Lie brackets:

_ϕ_ : 𝔤 → 𝔤′, _ϕ_([_x_, _y_]) = [_ϕ_(_x_), _ϕ_(_y_)] for all _x_, _y_ ∈ 𝔤.

As for associative rings, ideals are precisely the kernels of homomorphisms; given a Lie algebra 𝔤 and an ideal 𝔦 in it, one constructs the _factor algebra_ or _quotient algebra_ 𝔤/𝔦, and the first isomorphism theorem holds for Lie algebras.

Since the Lie bracket is a kind of infinitesimal commutator of the corresponding Lie group, we say that two elements x, y ∈ 𝔤 _commute_ if their bracket vanishes: [x, y] = 0.

The centralizer subalgebra of a subset S ⊂ 𝔤 is the set of elements commuting with _S_: that is, 𝔷_(𝔤)(S) = {x ∈ 𝔤 ∣ [x, s] = 0  for all s ∈ S}. The centralizer of 𝔤 itself is the _center_ 𝔷(𝔤). Similarly, for a subspace _S_, the normalizer subalgebra of _S_ is 𝔫_(𝔤)(S) = {x ∈ 𝔤 ∣ [x, s] ∈ S  for all s ∈ S}.[6] Equivalently, if _S_ is a Lie subalgebra, 𝔫_(𝔤)(S) is the largest subalgebra such that S is an ideal of 𝔫_(𝔤)(S).

Direct sum and semidirect product

For two Lie algebras 𝔤 and 𝔤′, their direct sum Lie algebra is the vector space 𝔤 ⊕ 𝔤′consisting of all pairs (x, x′), x ∈ 𝔤, x′ ∈ 𝔤′, with the operation

[(_x_, _x_′), (_y_, _y_′)] = ([_x_, _y_], [_x_′, _y_′]),

so that the copies of 𝔤, 𝔤′ commute with each other: [(x, 0), (0, x′)] = 0. Let 𝔤 be a Lie algebra and 𝔦 an ideal of 𝔤. If the canonical map 𝔤 → 𝔤/𝔦 splits (i.e., admits a section), then 𝔤 is said to be a semidirect product of 𝔦 and 𝔤/𝔦, 𝔤 = 𝔤/𝔦 ⋉ 𝔦. See also semidirect sum of Lie algebras.

Levi's theorem says that a finite-dimensional Lie algebra is a semidirect product of its radical and the complementary subalgebra (Levi subalgebra).

Derivations

A _derivation_ on the Lie algebra 𝔤 (or on any non-associative algebra) is a linear map δ: 𝔤 → 𝔤 that obeys the Leibniz law, that is,

_δ_([_x_, _y_]) = [_δ_(_x_), _y_] + [_x_, _δ_(_y_)]

for all x, y ∈ 𝔤. The _inner derivation_ associated to any x ∈ 𝔤 is the adjoint mapping ad_(x) defined by ad_(x)(y) := [x, y]. (This is a derivation as a consequence of the Jacobi identity.) If 𝔤 is semisimple, every derivation is inner.

The derivations form a vector space Der(𝔤), which is a Lie algebra under the commutator bracket [δ₁, δ₂] = δ₁ ∘ δ₂ − δ₂ ∘ δ₁, where ∘denotes composition of mappings. The inner derivations form a Lie subalgebra of Der(𝔤).

Split Lie algebra

Let _V_ be a finite-dimensional vector space over a field _F_, 𝔤𝔩(V) the Lie algebra of linear transformations and 𝔤 ⊆ 𝔤𝔩(V) a Lie subalgebra. Then 𝔤 is said to be SPLIT if the roots of the characteristic polynomials of all linear transformations in 𝔤 are in the base field _F_.[7] More generally, a finite-dimensional Lie algebra 𝔤 is said to be split if it has a Cartan subalgebra 𝔥 such that, for the adjoint representation ad  : 𝔤 → 𝔤𝔩(𝔥), the image ad (𝔥) is split;[8] see split Lie algebra for further information.


Examples

Vector spaces

Any vector space V endowed with the identically zero Lie bracket becomes a Lie algebra. Such Lie algebras are called abelian, cf. below. Any one-dimensional Lie algebra over a field is abelian, by the alternating property of the Lie bracket.

Associative algebra with commutator bracket

-   On an associative algebra A over a field F with multiplication (x, y) ↦ xy, a Lie bracket may be defined by the commutator [x, y] = xy − yx. With this bracket, A is a Lie algebra.[9] The associative algebra _A_ is called an _enveloping algebra_ of the Lie algebra (A, [ ⋅ , ⋅ ]). Every Lie algebra can be embedded into one that arises from an associative algebra in this fashion; see universal enveloping algebra.
-   The associative algebra of endomorphisms of an _F_-vector space E with the above Lie bracket is denoted 𝔤𝔩(E).
-   For a finite dimensional vector space E = F^(n), the previous example becomes the Lie algebra of _n_ × _n_ matrices, denoted 𝔤𝔩(n, F) or 𝔤𝔩_(n)(F),[10] with the bracket [X, Y] = X ⋅ Y − Y ⋅ X, where ⋅ denotes matrix multiplication. This is the Lie algebra of the general linear group, consisting of invertible matrices.

Special matrices

Two important subalgebras of 𝔤𝔩_(n)(F) are:

-   The matrices of trace zero form the special linear Lie algebra 𝔰𝔩_(n)(F), the Lie algebra of the special linear group SL_(n)(F).[11]
-   The skew-hermitian matrices form the unitary Lie algebra 𝔲(n), the Lie algebra of the unitary group _U_(_n_).

Matrix Lie algebras

A complex matrix group is a Lie group consisting of matrices, G ⊂ M_(n)(ℂ), where the multiplication of _G_ is matrix multiplication. The corresponding Lie algebra 𝔤 is the space of matrices which are tangent vectors to _G_ inside the linear space M_(n)(ℂ): this consists of derivatives of smooth curves in _G_ at the identity:

  𝔤 = {X = c′(0) ∈ M_(n)(ℂ) ∣  smooth c : ℝ → G, c(0) = I}.

The Lie bracket of 𝔤 is given by the commutator of matrices, [X, Y] = XY − YX. Given the Lie algebra, one can recover the Lie group as the image of the matrix exponential mapping exp  : M_(n)(ℂ) → M_(n)(ℂ) defined by $\exp(X) = I + X + \tfrac{1}{2!}X^2+\cdots$, which converges for every matrix X: that is, G = exp (𝔤). The following are examples of Lie algebras of matrix Lie groups:[12]

-   The special linear group ${\rm SL}_n(\mathbb{C})$, consisting of all _n_ × _n_ matrices with determinant 1. Its Lie algebra 𝔰𝔩_(n)(ℂ)consists of all _n_ × _n_ matrices with real entries and trace 0. Similarly, one can define the corresponding real Lie group ${\rm SL}_n(\mathbb{R})$ and its Lie algebra 𝔰𝔩_(n)(ℝ).
-   The unitary group U(n) consists of _n_ × _n_ unitary matrices (satisfying U^(*) = U^( − 1)). Its Lie algebra 𝔲(n) consists of skew-self-adjoint matrices (X^(*) =  − X).
-   The special orthogonal group SO(n), consisting of real determinant-one orthogonal matrices (A^(T) = A^( − 1)). Its Lie algebra 𝔰𝔬(n) consists of real skew-symmetric matrices ($X^{\rm T}=-X$). The full orthogonal group O(n), without the determinant-one condition, consists of SO(n) and a separate connected component, so it has the _same_ Lie algebra as SO(n). Similarly, one can define a complex version of this group and algebra, simply by allowing complex matrix entries.

Two dimensions

-   On any field F there is, up to isomorphism, a single two-dimensional nonabelian Lie algebra with generators _x, y,_ and bracket defined as [x,y] = y. It generates the affine group in one dimension.

    This can be realized by the matrices:
    $$x= \left( \begin{array}{cc} 1 & 0\\ 0 & 0 \end{array}\right), \qquad y=   \left( \begin{array}{cc} 0 & 1\\ 0 & 0 \end{array}\right),$$

    and, for F = ℝ or ℂ, the resulting group elements are upper triangular 2×2 matrices with unit lower diagonal:
    $$\exp(ax+by)= \left( \begin{array}{cc} e^a & \tfrac{b}{a}(e^a-1)\\ 0 & 1 \end{array}\right) .$$

Three dimensions

-   The Heisenberg algebra ${\rm H}_3(\mathbb{R})$ is a three-dimensional Lie algebra generated by elements , and with Lie brackets



        [x, y] = z, [x, z] = 0, [y, z] = 0 .

    It is realized as the space of 3×3 strictly upper-triangular matrices, with the commutator Lie bracket:
    :

x = \left( \begin{array}{ccc} 0&1&0\\ 0&0&0\\ 0&0&0 \end{array}\right),\quad y = \left( \begin{array}{ccc} 0&0&0\\ 0&0&1\\ 0&0&0 \end{array}\right),\quad z = \left( \begin{array}{ccc} 0&0&1\\ 0&0&0\\ 0&0&0 \end{array}\right)~.\quad

    Any element of the Heisenberg group is thus representable as a product of group generators, i.e., matrix exponentials of these Lie algebra generators,
    :\left( \begin{array}{ccc}

1&a&c\\ 0&1&b\\ 0&0&1 \end{array}\right)= e^{by} e^{cz} e^{ax}~.

-   The Lie algebra 𝔰𝔬(3) of the group SO(3) is spanned by the three matrices[13]

$$F_1 = \left( \begin{array}{ccc}
0&0&0\\
0&0&-1\\
0&1&0
\end{array}\right),\quad
F_2 = \left( \begin{array}{ccc}
0&0&1\\
0&0&0\\
-1&0&0
\end{array}\right),\quad
F_3 = \left( \begin{array}{ccc}
0&-1&0\\
1&0&0\\
0&0&0
\end{array}\right)~.\quad$$

    The commutation relations among these generators are
    [_F_₁, _F_₂] = _F_₃,

        [F₂, F₃] = F₁,
        [F₃, F₁] = F₂.


    The three-dimensional Euclidean space ℝ³ with the Lie bracket given by the cross product of vectors has the same commutation relations as above: thus, it is isomorphic to 𝔰𝔬(3). This Lie algebra appears in quantum mechanics as the components of the angular momentum operator.

Infinite dimensions

-   An important class of infinite-dimensional real Lie algebras arises in differential topology. The space of smooth vector fields on a differentiable manifold _M_ forms a Lie algebra, where the Lie bracket is defined to be the commutator of vector fields. One way of expressing the Lie bracket is through the formalism of Lie derivatives, which identifies a vector field _X_ with a first order partial differential operator _L__(_X_) acting on smooth functions by letting _L__(_X_)(_f_) be the directional derivative of the function _f_ in the direction of _X_. The Lie bracket [_X_,_Y_] of two vector fields is the vector field defined through its action on functions by the formula:



        L_([X, Y])f = L_(X)(L_(Y)f) − L_(Y)(L_(X)f). 

-   Kac–Moody algebras are a large class of infinite-dimensional Lie algebras whose structure is very similar to the finite-dimensional cases above.
-   The Moyal algebra is an infinite-dimensional Lie algebra that contains all classical Lie algebras as subalgebras.
-   The Virasoro algebra is of paramount importance in string theory.


Representations

Definitions

Given a vector space _V_, let 𝔤𝔩(V) denote the Lie algebra consisting of all linear endomorphisms of _V_, with bracket given by [X, Y] = XY − YX. A _representation_ of a Lie algebra 𝔤 on _V_ is a Lie algebra homomorphism

_π_ : 𝔤 → 𝔤𝔩(_V_).

A representation is said to be _faithful_ if its kernel is zero. Ado's theorem[14] states that every finite-dimensional Lie algebra has a faithful representation on a finite-dimensional vector space.

Adjoint representation

For any Lie algebra 𝔤, we can define a representation

ad : 𝔤 → 𝔤𝔩(𝔤)
given by ad (x)(y) = [x, y]; it is a representation on the vector space 𝔤 called the adjoint representation.

Goals of representation theory

One important aspect of the study of Lie algebras (especially semisimple Lie algebras) is the study of their representations. (Indeed, most of the books listed in the references section devote a substantial fraction of their pages to representation theory.) Although Ado's theorem is an important result, the primary goal of representation theory is not to find a faithful representation of a given Lie algebra 𝔤. Indeed, in the semisimple case, the adjoint representation is already faithful. Rather the goal is to understand _all_ possible representation of 𝔤, up to the natural notion of equivalence. In the semisimple case, Weyl's theorem[15] says that every finite-dimensional representation is a direct sum of irreducible representations (those with no nontrivial invariant subspaces). The irreducible representations, in turn, are classified by a theorem of the highest weight.

Representation theory in physics

The representation theory of Lie algebras plays an important role in various parts of theoretical physics. There, one considers operators on the space of states that satisfy certain natural commutation relations. These commutation relations typically come from a symmetry of the problem—specifically, they are the relations of the Lie algebra of the relevant symmetry group. An example would be the angular momentum operators, whose commutation relations are those of the Lie algebra 𝔰𝔬(3) of the rotation group SO(3). Typically, the space of states is very far from being irreducible under the pertinent operators, but one can attempt to decompose it into irreducible pieces. In doing so, one needs to know the irreducible representations of the given Lie algebra. In the study of the quantum hydrogen atom, for example, quantum mechanics textbooks give (without calling it that) a classification of the irreducible representations of the Lie algebra 𝔰𝔬(3).


Structure theory and classification

Lie algebras can be classified to some extent. In particular, this has an application to the classification of Lie groups.

Abelian, nilpotent, and solvable

Analogously to abelian, nilpotent, and solvable groups, defined in terms of the derived subgroups, one can define abelian, nilpotent, and solvable Lie algebras.

A Lie algebra 𝔤 is _abelian_ if the Lie bracket vanishes, i.e. [_x_,_y_] = 0, for all _x_ and _y_ in 𝔤. Abelian Lie algebras correspond to commutative (or abelian) connected Lie groups such as vector spaces 𝕂^(n) or tori 𝕋^(n), and are all of the form 𝔨^(n), meaning an _n_-dimensional vector space with the trivial Lie bracket.

A more general class of Lie algebras is defined by the vanishing of all commutators of given length. A Lie algebra 𝔤 is _nilpotent_ if the lower central series

𝔤 > [𝔤, 𝔤] > [[𝔤, 𝔤], 𝔤] > [[[𝔤, 𝔤], 𝔤], 𝔤] > ⋯

becomes zero eventually. By Engel's theorem, a Lie algebra is nilpotent if and only if for every _u_ in 𝔤 the adjoint endomorphism

ad (_u_) : 𝔤 → 𝔤, ad (_u_)_v_ = [_u_, _v_]

is nilpotent.

More generally still, a Lie algebra 𝔤 is said to be _solvable_ if the derived series:

𝔤 > [𝔤, 𝔤] > [[/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_], [/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_|𝔤, 𝔤], [𝔤, 𝔤]] > [[[/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_], [/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_|[𝔤, 𝔤], [𝔤, 𝔤]], [[/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_], [/_m__a__t__h__f__r__a__k__g_, /_m__a__t__h__f__r__a__k__g_|𝔤, 𝔤], [𝔤, 𝔤]]] > ⋯

becomes zero eventually.

Every finite-dimensional Lie algebra has a unique maximal solvable ideal, called its radical. Under the Lie correspondence, nilpotent (respectively, solvable) connected Lie groups correspond to nilpotent (respectively, solvable) Lie algebras.

Simple and semisimple

A Lie algebra is "simple" if it has no non-trivial ideals and is not abelian. (That is to say, a one-dimensional—necessarily abelian—Lie algebra is by definition not simple, even though it has no nontrivial ideals.) A Lie algebra 𝔤 is called _semisimple_ if it is isomorphic to a direct sum of simple algebras. There are several equivalent characterizations of semisimple algebras, such as having no nonzero solvable ideals.

The concept of semisimplicity for Lie algebras is closely related with the complete reducibility (semisimplicity) of their representations. When the ground field _F_ has characteristic zero, any finite-dimensional representation of a semisimple Lie algebra is semisimple (i.e., direct sum of irreducible representations.) In general, a Lie algebra is called reductive if the adjoint representation is semisimple. Thus, a semisimple Lie algebra is reductive.

Cartan's criterion

Cartan's criterion gives conditions for a Lie algebra to be nilpotent, solvable, or semisimple. It is based on the notion of the Killing form, a symmetric bilinear form on 𝔤 defined by the formula

    K(u, v) = tr (ad (u)ad (v)),

where tr denotes the trace of a linear operator. A Lie algebra 𝔤 is semisimple if and only if the Killing form is nondegenerate. A Lie algebra 𝔤 is solvable if and only if K(𝔤, [𝔤, 𝔤]) = 0.

Classification

The Levi decomposition expresses an arbitrary Lie algebra as a semidirect sum of its solvable radical and a semisimple Lie algebra, almost in a canonical way. Furthermore, semisimple Lie algebras over an algebraically closed field have been completely classified through their root systems. However, the classification of solvable Lie algebras is a 'wild' problem, and cannot be accomplished in general.


Relation to Lie groups

Although Lie algebras are often studied in their own right, historically they arose as a means to study Lie groups.

We now briefly outline the relationship between Lie groups and Lie algebras. Any Lie group gives rise to a canonically determined Lie algebra (concretely, _the tangent space at the identity_). Conversely, for any finite-dimensional Lie algebra 𝔤, there exists a corresponding connected Lie group G with Lie algebra 𝔤. This is Lie's third theorem; see the Baker–Campbell–Hausdorff formula. This Lie group is not determined uniquely; however, any two Lie groups with the same Lie algebra are _locally isomorphic_, and in particular, have the same universal cover. For instance, the special orthogonal group SO(3) and the special unitary group SU(2) give rise to the same Lie algebra, which is isomorphic to ℝ³ with the cross-product, but SU(2) is a simply-connected twofold cover of SO(3).

If we consider _simply connected_ Lie groups, however, we have a one-to-one correspondence: For each (finite-dimensional real) Lie algebra 𝔤, there is a unique simply connected Lie group G with Lie algebra 𝔤.

The correspondence between Lie algebras and Lie groups is used in several ways, including in the classification of Lie groups and the related matter of the representation theory of Lie groups. Every representation of a Lie algebra lifts uniquely to a representation of the corresponding connected, simply connected Lie group, and conversely every representation of any Lie group induces a representation of the group's Lie algebra; the representations are in one-to-one correspondence. Therefore, knowing the representations of a Lie algebra settles the question of representations of the group.

As for classification, it can be shown that any connected Lie group with a given Lie algebra is isomorphic to the universal cover mod a discrete central subgroup. So classifying Lie groups becomes simply a matter of counting the discrete subgroups of the center, once the classification of Lie algebras is known (solved by Cartan et al. in the semisimple case).

If the Lie algebra is infinite-dimensional, the issue is more subtle. In many instances, the exponential map is not even locally a homeomorphism (for example, in Diff(S¹), one may find diffeomorphisms arbitrarily close to the identity that are not in the image of exp). Furthermore, some infinite-dimensional Lie algebras are not the Lie algebra of any group.


Lie algebra with additional structures

A Lie algebra can be equipped with some additional structures that are assumed to be compatible with the bracket. For example, a graded Lie algebra is a Lie algebra with a graded vector space structure. If it also comes with differential (so that the underlying graded vector space is a chain complex), then it is called a differential graded Lie algebra.

A simplicial Lie algebra is a simplicial object in the category of Lie algebras; in other words, it is obtained by replacing the underlying set with a simplicial set (so it might be better thought of as a family of Lie algebras).


Lie ring

A _Lie ring_ arises as a generalisation of Lie algebras, or through the study of the lower central series of groups. A Lie ring is defined as a nonassociative ring with multiplication that is anticommutative and satisfies the Jacobi identity. More specifically we can define a Lie ring L to be an abelian group with an operation [⋅, ⋅ ] that has the following properties:

-   Bilinearity:

[_x_ + _y_, _z_] = [_x_, _z_] + [_y_, _z_], [_z_, _x_ + _y_] = [_z_, _x_] + [_z_, _y_]

    for all _x_, _y_, _z_ ∈ _L_.

-   The _Jacobi identity_:



        [x, [y, z]] + [y, [z, x]] + [z, [x, y]] = 0 

    for all _x_, _y_, _z_ in _L_.

-   For all _x_ in _L_:

[_x_, _x_] = 0 

Lie rings need not be Lie groups under addition. Any Lie algebra is an example of a Lie ring. Any associative ring can be made into a Lie ring by defining a bracket operator [x, y] = xy − yx. Conversely to any Lie algebra there is a corresponding ring, called the universal enveloping algebra.

Lie rings are used in the study of finite p-groups through the _Lazard correspondence_'. The lower central factors of a _p_-group are finite abelian _p_-groups, so modules over Z/_p_Z. The direct sum of the lower central factors is given the structure of a Lie ring by defining the bracket to be the commutator of two coset representatives. The Lie ring structure is enriched with another module homomorphism, the _p_th power map, making the associated Lie ring a so-called restricted Lie ring.

Lie rings are also useful in the definition of a p-adic analytic groups and their endomorphisms by studying Lie algebras over rings of integers such as the p-adic integers. The definition of finite groups of Lie type due to Chevalley involves restricting from a Lie algebra over the complex numbers to a Lie algebra over the integers, and the reducing modulo _p_ to get a Lie algebra over a finite field.

Examples

-   Any Lie algebra over a general ring instead of a field is an example of a Lie ring. Lie rings are _not_ Lie groups under addition, despite the name.
-   Any associative ring can be made into a Lie ring by defining a bracket operator



        [x, y] = xy − yx.

-   For an example of a Lie ring arising from the study of groups, let G be a group with (x, y) = x^( − 1)y^( − 1)xy the commutator operation, and let G = G₀ ⊇ G₁ ⊇ G₂ ⊇ ⋯ ⊇ G_(n) ⊇ ⋯ be a central series in G — that is the commutator subgroup (G_(i), G_(j)) is contained in G_(i + j) for any i, j. Then



        L = ⨁G_(i)/G_(i + 1)

    is a Lie ring with addition supplied by the group operation (which will be × in each homogeneous part), and the bracket operation given by



        $[xG_i, yG_j] = (x,y)G_{i+j}\$

    extended linearly. Note that the centrality of the series ensures the commutator (x, y) gives the bracket operation the appropriate Lie theoretic properties.


See also

-   Adjoint representation of a Lie algebra
-   Anyonic Lie algebra
-   Chiral Lie algebra
-   Free Lie algebra
-   Index of a Lie algebra
-   Lie algebra cohomology
-   Lie algebra extension
-   Lie algebra representation
-   Lie bialgebra
-   Lie coalgebra
-   Lie operad
-   Particle physics and representation theory

-   Lie superalgebra
-   Poisson algebra
-   Pre-Lie algebra
-   Quantum groups
-   Moyal algebra
-   Quasi-Frobenius Lie algebra
-   Quasi-Lie algebra
-   Restricted Lie algebra
-   Serre relations
-   Symmetric Lie algebra


Remarks


Notes


References

-   -   Boza, Luis; Fedriani, Eugenio M. and Núñez, Juan. _A new method for classifying complex filiform Lie algebras_, Applied Mathematics and Computation, 121 (2-3): 169–175, 2001
-   -   Erdmann, Karin & Wildon, Mark. _Introduction to Lie Algebras_, 1st edition, Springer, 2006.
-   -   -   -   -   -   -   -   -   -   -   -


External links

-   -   McKenzie, Douglas, (2015), "An Elementary Introduction to Lie Algebras for Physicists"

Category:Lie groups Lie_algebras

[1]

[2]

[3]  allows more generally for a module over a commutative ring with unit element.

[4]

[5] Due to the anticommutativity of the commutator, the notions of a left and right ideal in a Lie algebra coincide.

[6]

[7]

[8]

[9]

[10]

[11] Humphreys p.2

[12]  Section 3.4

[13]  Example 3.27

[14]

[15]