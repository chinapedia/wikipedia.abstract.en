In mathematics, a LIE GROUP (pronounced "Lee") is a group that is also a differentiable manifold, with the property that the group operations are smooth. Lie groups are named after Norwegian mathematician Sophus Lie, who laid the foundations of the theory of continuous transformation groups.

In rough terms, a Lie group is a continuous group, that is, one whose elements are described by several real parameters. As such, Lie groups provide a natural model for the concept of continuous symmetry, such as rotational symmetry in three dimensions. Lie groups are widely used in many parts of modern mathematics and physics. Lie's original motivation for introducing Lie groups was to model the continuous symmetries of differential equations, in much the same way that finite groups are used in Galois theory to model the discrete symmetries of algebraic equations.


Overview

Circle_as_Lie_group.svgs with absolute value 1 (corresponding to points on the circle of center 0 and radius 1 in the complex plane) is a Lie group under complex multiplication: the circle group.]] Lie groups are smooth differentiable manifolds and as such can be studied using differential calculus, in contrast with the case of more general topological groups. One of the key ideas in the theory of Lie groups is to replace the _global_ object, the group, with its _local_ or linearized version, which Lie himself called its "infinitesimal group" and which has since become known as its Lie algebra.

Lie groups play an enormous role in modern geometry, on several different levels. Felix Klein argued in his Erlangen program that one can consider various "geometries" by specifying an appropriate transformation group that leaves certain geometric properties invariant. Thus Euclidean geometry corresponds to the choice of the group E(3) of distance-preserving transformations of the Euclidean space R³, conformal geometry corresponds to enlarging the group to the conformal group, whereas in projective geometry one is interested in the properties invariant under the projective group. This idea later led to the notion of a G-structure, where _G_ is a Lie group of "local" symmetries of a manifold.

Lie groups (and their associated Lie algebras) play a major role in modern physics, with the Lie group typically playing the role of a symmetry of a physical system. Here, the representations of the Lie group (or of its Lie algebra) are especially important. Representation theory is used extensively in particle physics. Groups whose representations are of particular importance include the rotation group SO(3) (or its double cover SU(2)), the special unitary group SU(3) and the Poincaré group.

On a "global" level, whenever a Lie group acts on a geometric object, such as a Riemannian or a symplectic manifold, this action provides a measure of rigidity and yields a rich algebraic structure. The presence of continuous symmetries expressed via a Lie group action on a manifold places strong constraints on its geometry and facilitates analysis on the manifold. Linear actions of Lie groups are especially important, and are studied in representation theory.

In the 1940s–1950s, Ellis Kolchin, Armand Borel, and Claude Chevalley realised that many foundational results concerning Lie groups can be developed completely algebraically, giving rise to the theory of algebraic groups defined over an arbitrary field. This insight opened new possibilities in pure algebra, by providing a uniform construction for most finite simple groups, as well as in algebraic geometry. The theory of automorphic forms, an important branch of modern number theory, deals extensively with analogues of Lie groups over adele rings; _p_-adic Lie groups play an important role, via their connections with Galois representations in number theory.


Definitions and examples

A REAL LIE GROUP is a group that is also a finite-dimensional real smooth manifold, in which the group operations of multiplication and inversion are smooth maps. Smoothness of the group multiplication

_μ_ : _G_ × _G_ → _G_ _μ_(_x_, _y_) = _x__y_

means that _μ_ is a smooth mapping of the product manifold into _G_. These two requirements can be combined to the single requirement that the mapping

(_x_, _y_) ↦ _x_^( − 1)_y_
be a smooth mapping of the product manifold into _G_.

First examples

-   The 2×2 real invertible matrices form a group under multiplication, denoted by or by GL₂(R):



        $\operatorname{GL}(2, \mathbf{R}) = \left\{A=\begin{pmatrix}a&b\\c&d\end{pmatrix}: \det A=ad-bc \ne 0\right\}.$

    This is a four-dimensional noncompact real Lie group; it is an open subset of ℝ⁴. This group is disconnected; it has two connected components corresponding to the positive and negative values of the determinant.

-   The rotation matrices form a subgroup of , denoted by . It is a Lie group in its own right: specifically, a one-dimensional compact connected Lie group which is diffeomorphic to the circle. Using the rotation angle φ as a parameter, this group can be parametrized as follows:



        $\operatorname{SO}(2, \mathbf{R}) =\left\{\begin{pmatrix} \cos\varphi & -\sin \varphi \\ \sin \varphi & \cos \varphi \end{pmatrix}:  \varphi\in\mathbf{R}/2\pi\mathbf{Z}\right\}.$

    Addition of the angles corresponds to multiplication of the elements of , and taking the opposite angle corresponds to inversion. Thus both multiplication and inversion are differentiable maps.

-   The affine group of one dimension is a two-dimensional matrix Lie group, consisting of 2 × 2 real, upper-triangular matrices, with the first diagonal entry being positive and the second diagonal entry being 1. Thus, the group consists of matrices of the form

$$A= \left( \begin{array}{cc} a & b\\ 0 & 1 \end{array}\right),\quad a>0,\, b\in\mathbb{R}.$$

Non-example

We now present an example of a group with an uncountable number of elements that is not a Lie group under a certain topology. The group given by

$$H = \left\{\left .\left(\begin{matrix}e^{2\pi i\theta} & 0\\0 & e^{2\pi ia\theta}\end{matrix}\right) \right| \theta \in \mathbb{R}\right\} \subset \mathbb{T}^2 = \left\{\left .\left(\begin{matrix}e^{2\pi i\theta} & 0\\0 & e^{2\pi i\phi}\end{matrix}\right)\right| \theta, \phi \in \mathbb{R}\right\},$$

with a ∈ ℝ \ ℚ a _fixed_ irrational number, is a subgroup of the torus 𝕋² that is not a Lie group when given the subspace topology.[1] If we take any small neighborhood U of a point h in H, for example, the portion of H in U is disconnected. The group H winds repeatedly around the torus and forms a dense subgroup of 𝕋².

Irrational_line_on_a_torus.png

The group H can, however, be given a different topology, in which the distance between two points h₁, h₂ ∈ H is defined as the length of the shortest path ''in the group '' H joining h₁ to h₂. In this topology, H is identified homeomorphically with the real line by identifying each element with the number θ in the definition of H. With this topology, H is just the group of real numbers under addition and is therefore a Lie group.

The group H is an example of a "Lie subgroup" of a Lie group that is not closed. See the discussion below of Lie subgroups in the section on basic concepts.

Matrix Lie groups

Let denote the group of invertible matrices with entries in C. Any closed subgroup of is a Lie group;[2] Lie groups of this sort are called MATRIX LIE GROUPS. Since most of the interesting examples of Lie groups can be realized as matrix Lie groups, some textbooks restrict attention to this class, including those of Hall[3] and Rossmann.[4] Restricting attention to matrix Lie groups simplifies the definition of the Lie algebra and the exponential map. The following are standard examples of matrix Lie groups.

-   The special linear groups over R and C, and , consisting of matrices with determinant one and entries in R or C
-   The unitary groups and special unitary groups, U(_n_) and SU(_n_), consisting of complex matrices satisfying U^(*) = U^( − 1) (and also det (U) = 1 in the case of SU(_n_))
-   The orthogonal groups and special orthogonal groups, O(_n_) and SO(_n_), consisting of real matrices satisfying R^(T) = R^( − 1) (and also det (R) = 1 in the case of SO(_n_))

All of the preceding examples fall under the heading of the classical groups.

Related concepts

A COMPLEX LIE GROUP is defined in the same way using complex manifolds rather than real ones (example: ), and similarly, using an alternate metric completion of Q, one can define a _P_-ADIC LIE GROUP over the _p_-adic numbers, a topological group in which each point has a _p_-adic neighborhood. Hilbert's fifth problem asked whether replacing differentiable manifolds with topological or analytic ones can yield new examples. The answer to this question turned out to be negative: in 1952, Gleason, Montgomery and Zippin showed that if _G_ is a topological manifold with continuous group operations, then there exists exactly one analytic structure on _G_ which turns it into a Lie group (see also Hilbert–Smith conjecture). If the underlying manifold is allowed to be infinite-dimensional (for example, a Hilbert manifold), then one arrives at the notion of an infinite-dimensional Lie group. It is possible to define analogues of many Lie groups over finite fields, and these give most of the examples of finite simple groups.

The language of category theory provides a concise definition for Lie groups: a Lie group is a group object in the category of smooth manifolds. This is important, because it allows generalization of the notion of a Lie group to Lie supergroups.

Topological definition

A Lie group can be defined as a (Hausdorff) topological group that, near the identity element, looks like a transformation group, with no reference to differentiable manifolds.[5] First, we define an IMMERSELY LINEAR LIE GROUP to be a subgroup _G_ of the general linear group GL (n, ℂ) such that

1.  for some neighborhood _V_ of the identity element _e_ in _G_, the topology on _V_ is the subspace topology of GL (n, ℂ) and _V_ is closed in GL (n, ℂ).
2.  _G_ has at most countably many connected components.

(For example, a closed subgroup of GL (n, ℂ); that is, a matrix Lie group satisfies the above conditions.)

Then a _Lie group_ is defined as a topological group that (1) is locally isomorphic near the identities to an immersely linear Lie group and (2) has at most countably many connected components. Showing the topological definition is equivalent to the usual one is technical (and the beginning readers should skip the following) but is done roughly as follows:

1.  Given a Lie group _G_ in the usual manifold sense, the Lie group–Lie algebra correspondence (or a version of Lie's third theorem) constructs an immersed Lie subgroup G′ ⊂ GL (n, ℂ) such that G, G′ share the same Lie algebra; thus, they are locally isomorphic. Hence, _G_ satisfies the above topological definition.
2.  Conversely, let _G_ be a topological group that is a Lie group in the above topological sense and choose an immersely linear Lie group G′ that is locally isomorphic to _G_. Then, by a version of the closed subgroup theorem, G′ is a real-analytic manifold and then, through the local isomorphism, _G_ acquires a structure of a manifold near the identity element. One then shows that the group law on _G_ can be given by formal power series; [6] so the group operations are real-analytic and _G_ itself is a real-analytic manifold.

The topological definition implies the statement that if two Lie groups are isomorphic as topological groups, then they are isomorphic as Lie groups. In fact, it states the general principle that, to a large extent, _the topology of a Lie group_ together with the group law determines the geometry of the group.


More examples of Lie groups

Lie groups occur in abundance throughout mathematics and physics. Matrix groups or algebraic groups are (roughly) groups of matrices (for example, orthogonal and symplectic groups), and these give most of the more common examples of Lie groups.

Dimensions one and two

The only connected Lie groups with dimension one are the real line ℝ (with the group operation being addition) and the circle group S¹ of complex numbers with absolute value one (with the group operation being multiplication). The S¹ group is often denoted as U(1), the group of 1 × 1 unitary matrices.

In two dimensions, if we restrict attention to simply connected groups, then they are classified by their Lie algebras. There are (up to isomorphism) only two Lie algebras of dimension two. The associated simply connected Lie groups are ℝ² (with the group operation being vector addition) and the affine group in dimension one, described in the previous subsection under "first examples."

Additional examples

-   The group SU(2) is the group of 2 × 2 unitary matrices with determinant 1. Topologically, SU(2) is the 3-sphere S³; as a group, it may be identified with the group of unit quaternions.
-   The Heisenberg group is a connected nilpotent Lie group of dimension 3, playing a key role in quantum mechanics.
-   The Lorentz group is a 6-dimensional Lie group of linear isometries of the Minkowski space.
-   The Poincaré group is a 10-dimensional Lie group of affine isometries of the Minkowski space.
-   The exceptional Lie groups of types _G_₂, _F_₄, _E_₆, _E_₇, _E_₈ have dimensions 14, 52, 78, 133, and 248. Along with the A-B-C-D series of simple Lie groups, the exceptional groups complete the list of simple Lie groups.
-   The symplectic group Sp(2_n_, R) consists of all 2_n_ × 2_n_ matrices preserving a _symplectic form_ on R^(2_n_). It is a connected Lie group of dimension 2_n_² + _n_.

Constructions

There are several standard ways to form new Lie groups from old ones:

-   The product of two Lie groups is a Lie group.
-   Any topologically closed subgroup of a Lie group is a Lie group. This is known as the Closed subgroup theorem or CARTAN'S THEOREM.
-   The quotient of a Lie group by a closed normal subgroup is a Lie group.
-   The universal cover of a connected Lie group is a Lie group. For example, the group R is the universal cover of the circle group S¹. In fact any covering of a differentiable manifold is also a differentiable manifold, but by specifying _universal_ cover, one guarantees a group structure (compatible with its other structures).

Related notions

Some examples of groups that are _not_ Lie groups (except in the trivial sense that any group having at most countably many elements can be viewed as a 0-dimensional Lie group, with the discrete topology), are:

-   Infinite-dimensional groups, such as the additive group of an infinite-dimensional real vector space. These are not Lie groups as they are not _finite-dimensional_ manifolds.
-   Some totally disconnected groups, such as the Galois group of an infinite extension of fields, or the additive group of the _p_-adic numbers. These are not Lie groups because their underlying spaces are not real manifolds. (Some of these groups are "_p_-adic Lie groups".) In general, only topological groups having similar local properties to R^(_n_) for some positive integer _n_ can be Lie groups (of course they must also have a differentiable structure).


Basic concepts

The Lie algebra associated with a Lie group

To every Lie group we can associate a Lie algebra whose underlying vector space is the tangent space of the Lie group at the identity element and which completely captures the local structure of the group. Informally we can think of elements of the Lie algebra as elements of the group that are "infinitesimally close" to the identity, and the Lie bracket of the Lie algebra is related to the commutator of two such infinitesimal elements. Before giving the abstract definition we give a few examples:

-   The Lie algebra of the vector space R^(_n_) is just R^(_n_) with the Lie bracket given by
        [_A_, _B_] = 0.
    (In general the Lie bracket of a connected Lie group is always 0 if and only if the Lie group is abelian.)
-   The Lie algebra of the general linear group GL(_n_, C) of invertible matrices is the vector space M(_n_, C) of square matrices with the Lie bracket given by
        [_A_, _B_] = _AB_ − _BA_.
-   If _G_ is a closed subgroup of GL(_n_, C) then the Lie algebra of _G_ can be thought of informally as the matrices _m_ of M(_n_, R) such that 1 + ε_m_ is in _G_, where ε is an infinitesimal positive number with ε² = 0 (of course, no such real number ε exists). For example, the orthogonal group O(_n_, R) consists of matrices _A_ with _AA_^(T) = 1, so the Lie algebra consists of the matrices _m_ with (1 + ε_m_)(1 + ε_m_)^(T) = 1, which is equivalent to _m_ + _m_^(T) = 0 because ε² = 0.
-   The preceding description can be made more rigorous as follows. The Lie algebra of a closed subgroup _G_ of GL(_n_, C), may be computed as

Lie (_G_) = {_X_ ∈ _M_(_n_; ℂ)|exp (_t__X_) ∈ _G_ for all _t_ in ℝ},
[7][8] where exp(_tX_) is defined using the matrix exponential. It can then be shown that the Lie algebra of _G_ is a real vector space that is closed under the bracket operation, [X, Y] = XY − YX.[9]

The concrete definition given above for matrix groups is easy to work with, but has some minor problems: to use it we first need to represent a Lie group as a group of matrices, but not all Lie groups can be represented in this way, and even it is not obvious that the Lie algebra is independent of the representation we use.[10] To get around these problems we give the general definition of the Lie algebra of a Lie group (in 4 steps):

1.  Vector fields on any smooth manifold _M_ can be thought of as derivations _X_ of the ring of smooth functions on the manifold, and therefore form a Lie algebra under the Lie bracket [_X_, _Y_] = _XY_ − _YX_, because the Lie bracket of any two derivations is a derivation.
2.  If _G_ is any group acting smoothly on the manifold _M_, then it acts on the vector fields, and the vector space of vector fields fixed by the group is closed under the Lie bracket and therefore also forms a Lie algebra.
3.  We apply this construction to the case when the manifold _M_ is the underlying space of a Lie group _G_, with _G_ acting on _G_ = _M_ by left translations _L_(g)_(_h_) = _gh_. This shows that the space of left invariant vector fields (vector fields satisfying _L_(g)__(*)_X_(h)_ = _X_(gh)_ for every _h_ in _G_, where _L_(g)__(*) denotes the differential of _L_(g)_) on a Lie group is a Lie algebra under the Lie bracket of vector fields.
4.  Any tangent vector at the identity of a Lie group can be extended to a left invariant vector field by left translating the tangent vector to other points of the manifold. Specifically, the left invariant extension of an element _v_ of the tangent space at the identity is the vector field defined by _v_^_(_g_) = _L_(g)__(*)_v_. This identifies the tangent space _T_(e)G_ at the identity with the space of left invariant vector fields, and therefore makes the tangent space at the identity into a Lie algebra, called the Lie algebra of _G_, usually denoted by a Fraktur 𝔤. Thus the Lie bracket on 𝔤 is given explicitly by [_v_, _w_] = [_v_^, _w_^]_(_e_).

This Lie algebra 𝔤 is finite-dimensional and it has the same dimension as the manifold _G_. The Lie algebra of _G_ determines _G_ up to "local isomorphism", where two Lie groups are called LOCALLY ISOMORPHIC if they look the same near the identity element. Problems about Lie groups are often solved by first solving the corresponding problem for the Lie algebras, and the result for groups then usually follows easily. For example, simple Lie groups are usually classified by first classifying the corresponding Lie algebras.

We could also define a Lie algebra structure on _T_(e)_ using right invariant vector fields instead of left invariant vector fields. This leads to the same Lie algebra, because the inverse map on _G_ can be used to identify left invariant vector fields with right invariant vector fields, and acts as −1 on the tangent space _T_(e)_.

The Lie algebra structure on _T_(e)_ can also be described as follows: the commutator operation

    (_x_, _y_) → _xyx_^(−1)_y_^(−1)

on _G_ × _G_ sends (_e_, _e_) to _e_, so its derivative yields a bilinear operation on _T_(e)G_. This bilinear operation is actually the zero map, but the second derivative, under the proper identification of tangent spaces, yields an operation that satisfies the axioms of a Lie bracket, and it is equal to twice the one defined through left-invariant vector fields.

Homomorphisms and isomorphisms

If _G_ and _H_ are Lie groups, then a Lie group homomorphism _f_ : _G_ → _H_ is a smooth group homomorphism. In the case of complex Lie groups, such a homomorphism is required to be a holomorphic map. However, these requirements are a bit stringent; every continuous homomorphism between real Lie groups turns out to be (real) analytic.[11]

The composition of two Lie homomorphisms is again a homomorphism, and the class of all Lie groups, together with these morphisms, forms a category. Moreover, every Lie group homomorphism induces a homomorphism between the corresponding Lie algebras. Let ϕ: G → H be a Lie group homomorphism and let ϕ_(*) be its derivative at the identity. If we identify the Lie algebras of _G_ and _H_ with their tangent spaces at the identity elements then ϕ_(*) is a map between the corresponding Lie algebras:

_ϕ__(*): 𝔤 → 𝔥
One can show that ϕ_(*) is actually a Lie algebra homomorphism (meaning that it is a linear map which preserves the Lie bracket). In the language of category theory, we then have a covariant functor from the category of Lie groups to the category of Lie algebras which sends a Lie group to its Lie algebra and a Lie group homomorphism to its derivative at the identity.

Two Lie groups are called _isomorphic_ if there exists a bijective homomorphism between them whose inverse is also a Lie group homomorphism. Equivalently, it is a diffeomorphism which is also a group homomorphism.

Lie group versus Lie algebra isomorphisms

Isomorphic Lie groups necessarily have isomorphic Lie algebras; it is then reasonable to ask how isomorphism classes of Lie groups relate to isomorphism classes of Lie algebras.

The first result in this direction is Lie's third theorem, which states that every finite-dimensional, real Lie algebra is the Lie algebra of some (linear) Lie group. One way to prove Lie's third theorem is to use Ado's theorem, which says every finite-dimensional real Lie algebra is isomorphic to a matrix Lie algebra. Meanwhile, for every finite-dimensional matrix Lie algebra, there is a linear group (matrix Lie group) with this algebra as its Lie algebra.[12]

On the other hand, Lie groups with isomorphic Lie algebras need not be isomorphic. Furthermore, this result remains true even if we assume the groups are connected. To put it differently, the _global_ structure of a Lie group is not determined by its Lie algebra; for example, if _Z_ is any discrete subgroup of the center of _G_ then _G_ and _G_/_Z_ have the same Lie algebra (see the table of Lie groups for examples). An example of importance in physics are the groups SU(2) and SO(3). These two groups have isomorphic Lie algebras[13], but the groups themselves are not isomorphic, because SU(2) is simply connected but SO(3) is not.[14]

On the other hand, if we require that the Lie group be simply connected, then the global structure is determined by its Lie algebra: two simply connected Lie groups with isomorphic Lie algebras are isomorphic.[15] (See the next subsection for more information about simply connected Lie groups.) In light of Lie's third theorem, we may therefore say that there is a one-to-one correspondence between isomorphism classes of finite-dimensional real Lie algebras and isomorphism classes of simply connected Lie groups.

Simply connected Lie groups

A Lie group G is said to be SIMPLY CONNECTED if every loop in G can be shrunk continuously to a point in G. This notion is important because of the following result that has simple connectedness as a hypothesis:

    THEOREM[16]: Suppose G and H are Lie groups with Lie algebras 𝔤 and 𝔥 and that f : 𝔤 → 𝔥 is a Lie algebra homomorphism. If G is simply connected, then there is a unique Lie group homomorphism ϕ : G → H such that ϕ_(*) = f, where ϕ_(*) is the differential of ϕ at the identity.

Lie's third theorem says that every finite-dimensional real Lie algebra is the Lie algebra of a Lie group. It follows from Lie's third theorem and the preceding result that every finite-dimensional real Lie algebra is the Lie algebra of a _unique_ simply connected Lie group.

An example of a simply connected group is the special unitary group SU(2), which as a manifold is the 3-sphere. The rotation group SO(3), on the other hand, is not simply connected. (See Topology of SO(3).) The failure of SO(3) to be simply connected is intimately connected to the distinction between integer spin and half-integer spin in quantum mechanics. Other examples of simply connected Lie groups include the special unitary group SU(n), the spin group (double cover of rotation group) Spin(n) for n ≥ 3, and the compact symplectic group Sp(n).[17]

Methods for determining whether a Lie group is simply connected or not are discussed in the article on fundamental groups of Lie groups.

The exponential map

The exponential map from the Lie algebra M(n; ℂ) of the general linear group GL(n; ℂ) to GL(n; ℂ) is defined by the matrix exponential, given by the usual power series:

$$\exp(X) = 1 + X + \frac{X^2}{2!} + \frac{X^3}{3!} + \cdots$$

for matrices X. If G is a closed subgroup of GL(n; ℂ), then the exponential map takes the Lie algebra of G into G; thus, we have an exponential map for all matrix groups. Every element of G that is sufficiently close to the identity is the exponential of a matrix in the Lie algebra.[18]

The definition above is easy to use, but it is not defined for Lie groups that are not matrix groups, and it is not clear that the exponential map of a Lie group does not depend on its representation as a matrix group. We can solve both problems using a more abstract definition of the exponential map that works for all Lie groups, as follows.

For each vector X in the Lie algebra 𝔤 of G (i.e., the tangent space to G at the identity), one proves that there is a unique one-parameter subgroup c : ℝ → G such that c′(0) = X. Saying that c is a one-parameter subgroup means simply that c is a smooth map into G and that

$$c(s + t) = c(s) c(t)\$$

for all s and t. The operation on the right hand side is the group multiplication in G. The formal similarity of this formula with the one valid for the exponential function justifies the definition

$$\exp(X) = c(1).\$$

This is called the EXPONENTIAL MAP, and it maps the Lie algebra 𝔤 into the Lie group G It provides a diffeomorphism between a neighborhood of 0 in 𝔤 and a neighborhood of e in G. This exponential map is a generalization of the exponential function for real numbers (because ℝ is the Lie algebra of the Lie group of positive real numbers with multiplication), for complex numbers (because ℂ is the Lie algebra of the Lie group of non-zero complex numbers with multiplication) and for matrices (because M(n, ℝ) with the regular commutator is the Lie algebra of the Lie group GL(n, ℝ) of all invertible matrices).

Because the exponential map is surjective on some neighbourhood N of e, it is common to call elements of the Lie algebra INFINITESIMAL GENERATORS of the group G. The subgroup of G generated by N is the identity component of G.

The exponential map and the Lie algebra determine the _local group structure_ of every connected Lie group, because of the Baker–Campbell–Hausdorff formula: there exists a neighborhood U of the zero element of 𝔤, such that for X, Y ∈ U we have

$$\exp(X)\,\exp(Y) = \exp\left(X + Y + \tfrac{1}{2}[X,Y] + \tfrac{1}{12}[\,[X,Y],Y] - \tfrac{1}{12}[\,[X,Y],X] - \cdots \right),$$

where the omitted terms are known and involve Lie brackets of four or more elements. In case X and Y commute, this formula reduces to the familiar exponential law exp (X)exp (Y) = exp (X + Y)

The exponential map relates Lie group homomorphisms. That is, if ϕ : G → H is a Lie group homomorphism and ϕ_(*) : 𝔤 → 𝔥 the induced map on the corresponding Lie algebras, then for all x ∈ 𝔤 we have

_ϕ_(exp (_x_)) = exp (_ϕ__(*)(_x_)). 
In other words, the following diagram commutes,[19] ExponentialMap-01.png

(In short, exp is a natural transformation from the functor Lie to the identity functor on the category of Lie groups.)

The exponential map from the Lie algebra to the Lie group is not always onto, even if the group is connected (though it does map onto the Lie group for connected groups that are either compact or nilpotent). For example, the exponential map of SL(2, R) is not surjective. Also, the exponential map is neither surjective nor injective for infinite-dimensional (see below) Lie groups modelled on _C_^(∞) Fréchet space, even from arbitrary small neighborhood of 0 to corresponding neighborhood of 1.

Lie subgroup

A LIE SUBGROUP H of a Lie group G is a Lie group that is a subset of G and such that the inclusion map from H to G is an injective immersion and group homomorphism. According to Cartan's theorem, a closed subgroup of G admits a unique smooth structure which makes it an embedded Lie subgroup of G—i.e. a Lie subgroup such that the inclusion map is a smooth embedding.

Examples of non-closed subgroups are plentiful; for example take G to be a torus of dimension 2 or greater, and let H be a one-parameter subgroup of _irrational slope_, i.e. one that winds around in _G_. Then there is a Lie group homomorphism φ : ℝ → G with im(φ) = H. The closure of H will be a sub-torus in G.

The exponential map gives a one-to-one correspondence between the connected Lie subgroups of a connected Lie group G and the subalgebras of the Lie algebra of G.[20] Typically, the subgroup corresponding to a subalgebra is not a closed subgroup. There is no criterion solely based on the structure of G which determines which subalgebras correspond to closed subgroups.


Representations

One important aspect of the study of Lie groups is their representations, that is, the way they can act (linearly) on vector spaces. In physics, Lie groups often encode the symmetries of a physical system. The way one makes use of this symmetry to help analyze the system is often through representation theory. Consider, for example, the time-independent Schrödinger equation in quantum mechanics, Ĥψ = Eψ. Assume the system in question has the rotation group SO(3) as a symmetry, meaning that the Hamiltonian operator Ĥ commutes with the action of SO(3) on the wave function ψ. (One important example of such a system is the Hydrogen atom.) This assumption does not necessarily mean that the solutions ψ are rotationally invariant functions. Rather, it means that the _space_ of solutions to Ĥψ = Eψ is invariant under rotations (for each fixed value of E). This space, therefore, constitutes a representation of SO(3). These representations have been classified and the classification leads to a substantial simplification of the problem, essentially converting a three-dimensional partial differential equation to a one-dimensional ordinary differential equation.

The case of a connected compact Lie group _K_ (including the just-mentioned case of SO(3)) is particularly tractable.[21] In that case, every finite-dimensional representation of _K_ decomposes as a direct sum of irreducible representations. The irreducible representations, in turn, were classified by Hermann Weyl. The classification is in terms of the "highest weight" of the representation. The classification is closely related to the classification of representations of a semisimple Lie algebra.

One can also study (in general infinite-dimensional) unitary representations of an arbitrary Lie group (not necessarily compact). For example, it is possible to give a relatively simple explicit description of the representations of the group SL(2,R) and the representations of the Poincaré group.


Early history

According to the most authoritative source on the early history of Lie groups (Hawkins, p. 1), Sophus Lie himself considered the winter of 1873–1874 as the birth date of his theory of continuous groups. Hawkins, however, suggests that it was "Lie's prodigious research activity during the four-year period from the fall of 1869 to the fall of 1873" that led to the theory's creation (_ibid_). Some of Lie's early ideas were developed in close collaboration with Felix Klein. Lie met with Klein every day from October 1869 through 1872: in Berlin from the end of October 1869 to the end of February 1870, and in Paris, Göttingen and Erlangen in the subsequent two years (_ibid_, p. 2). Lie stated that all of the principal results were obtained by 1884. But during the 1870s all his papers (except the very first note) were published in Norwegian journals, which impeded recognition of the work throughout the rest of Europe (_ibid_, p. 76). In 1884 a young German mathematician, Friedrich Engel, came to work with Lie on a systematic treatise to expose his theory of continuous groups. From this effort resulted the three-volume _Theorie der Transformationsgruppen_, published in 1888, 1890, and 1893. The term _groupes de Lie_ first appeared in French in 1893 in the thesis of Lie's student Arthur Tresse.[22]

Lie's ideas did not stand in isolation from the rest of mathematics. In fact, his interest in the geometry of differential equations was first motivated by the work of Carl Gustav Jacobi, on the theory of partial differential equations of first order and on the equations of classical mechanics. Much of Jacobi's work was published posthumously in the 1860s, generating enormous interest in France and Germany (Hawkins, p. 43). Lie's _idée fixe_ was to develop a theory of symmetries of differential equations that would accomplish for them what Évariste Galois had done for algebraic equations: namely, to classify them in terms of group theory. Lie and other mathematicians showed that the most important equations for special functions and orthogonal polynomials tend to arise from group theoretical symmetries. In Lie's early work, the idea was to construct a theory of _continuous groups_, to complement the theory of discrete groups that had developed in the theory of modular forms, in the hands of Felix Klein and Henri Poincaré. The initial application that Lie had in mind was to the theory of differential equations. On the model of Galois theory and polynomial equations, the driving conception was of a theory capable of unifying, by the study of symmetry, the whole area of ordinary differential equations. However, the hope that Lie Theory would unify the entire field of ordinary differential equations was not fulfilled. Symmetry methods for ODEs continue to be studied, but do not dominate the subject. There is a differential Galois theory, but it was developed by others, such as Picard and Vessiot, and it provides a theory of quadratures, the indefinite integrals required to express solutions.

Additional impetus to consider continuous groups came from ideas of Bernhard Riemann, on the foundations of geometry, and their further development in the hands of Klein. Thus three major themes in 19th century mathematics were combined by Lie in creating his new theory: the idea of symmetry, as exemplified by Galois through the algebraic notion of a group; geometric theory and the explicit solutions of differential equations of mechanics, worked out by Poisson and Jacobi; and the new understanding of geometry that emerged in the works of Plücker, Möbius, Grassmann and others, and culminated in Riemann's revolutionary vision of the subject.

Although today Sophus Lie is rightfully recognized as the creator of the theory of continuous groups, a major stride in the development of their structure theory, which was to have a profound influence on subsequent development of mathematics, was made by Wilhelm Killing, who in 1888 published the first paper in a series entitled _Die Zusammensetzung der stetigen endlichen Transformationsgruppen_ (_The composition of continuous finite transformation groups_) (Hawkins, p. 100). The work of Killing, later refined and generalized by Élie Cartan, led to classification of semisimple Lie algebras, Cartan's theory of symmetric spaces, and Hermann Weyl's description of representations of compact and semisimple Lie groups using highest weights.

In 1900 David Hilbert challenged Lie theorists with his Fifth Problem presented at the International Congress of Mathematicians in Paris.

Weyl brought the early period of the development of the theory of Lie groups to fruition, for not only did he classify irreducible representations of semisimple Lie groups and connect the theory of groups with quantum mechanics, but he also put Lie's theory itself on firmer footing by clearly enunciating the distinction between Lie's _infinitesimal groups_ (i.e., Lie algebras) and the Lie groups proper, and began investigations of topology of Lie groups. The theory of Lie groups was systematically reworked in modern mathematical language in a monograph by Claude Chevalley.


The concept of a Lie group, and possibilities of classification

Lie groups may be thought of as smoothly varying families of symmetries. Examples of symmetries include rotation about an axis. What must be understood is the nature of 'small' transformations, for example, rotations through tiny angles, that link nearby transformations. The mathematical object capturing this structure is called a Lie algebra (Lie himself called them "infinitesimal groups"). It can be defined because Lie groups are smooth manifolds, so have tangent spaces at each point.

The Lie algebra of any compact Lie group (very roughly: one for which the symmetries form a bounded set) can be decomposed as a direct sum of an abelian Lie algebra and some number of simple ones. The structure of an abelian Lie algebra is mathematically uninteresting (since the Lie bracket is identically zero); the interest is in the simple summands. Hence the question arises: what are the simple Lie algebras of compact groups? It turns out that they mostly fall into four infinite families, the "classical Lie algebras" A_(_n_), B_(_n_), C_(_n_) and D_(_n_), which have simple descriptions in terms of symmetries of Euclidean space. But there are also just five "exceptional Lie algebras" that do not fall into any of these families. E₈ is the largest of these.

Lie groups are classified according to their algebraic properties (simple, semisimple, solvable, nilpotent, abelian), their connectedness (connected or simply connected) and their compactness.

A first key result is the Levi decomposition, which says that every simply connected Lie group is the semidirect product of a solvable normal subgroup and a semisimple subgroup.

-   Connected compact Lie groups are all known: they are finite central quotients of a product of copies of the circle group S¹ and simple compact Lie groups (which correspond to connected Dynkin diagrams).
-   Any simply connected solvable Lie group is isomorphic to a closed subgroup of the group of invertible upper triangular matrices of some rank, and any finite-dimensional irreducible representation of such a group is 1-dimensional. Solvable groups are too messy to classify except in a few small dimensions.
-   Any simply connected nilpotent Lie group is isomorphic to a closed subgroup of the group of invertible upper triangular matrices with 1's on the diagonal of some rank, and any finite-dimensional irreducible representation of such a group is 1-dimensional. Like solvable groups, nilpotent groups are too messy to classify except in a few small dimensions.
-   Simple Lie groups are sometimes defined to be those that are simple as abstract groups, and sometimes defined to be connected Lie groups with a simple Lie algebra. For example, SL(2, R) is simple according to the second definition but not according to the first. They have all been classified (for either definition).
-   Semisimple Lie groups are Lie groups whose Lie algebra is a product of simple Lie algebras.[23] They are central extensions of products of simple Lie groups.

The identity component of any Lie group is an open normal subgroup, and the quotient group is a discrete group. The universal cover of any connected Lie group is a simply connected Lie group, and conversely any connected Lie group is a quotient of a simply connected Lie group by a discrete normal subgroup of the center. Any Lie group _G_ can be decomposed into discrete, simple, and abelian groups in a canonical way as follows. Write

    _G__(con) for the connected component of the identity
    _G__(sol) for the largest connected normal solvable subgroup
    _G__(nil) for the largest connected normal nilpotent subgroup

so that we have a sequence of normal subgroups

    1 ⊆ _G__(nil) ⊆ _G__(sol) ⊆ _G__(con) ⊆ _G_.

Then

    _G_/_G__(con) is discrete
    _G__(con)/_G__(sol) is a central extension of a product of simple connected Lie groups.
    _G__(sol)/_G__(nil) is abelian. A connected abelian Lie group is isomorphic to a product of copies of R and the circle group _S_¹.
    _G__(nil)/1 is nilpotent, and therefore its ascending central series has all quotients abelian.

This can be used to reduce some problems about Lie groups (such as finding their unitary representations) to the same problems for connected simple groups and nilpotent and solvable subgroups of smaller dimension.

-   The diffeomorphism group of a Lie group acts transitively on the Lie group
-   Every Lie group is parallelizable, and hence an orientable manifold (there is a bundle isomorphism between its tangent bundle and the product of itself with the tangent space at the identity)


Infinite-dimensional Lie groups

Lie groups are often defined to be finite-dimensional, but there are many groups that resemble Lie groups, except for being infinite-dimensional. The simplest way to define infinite-dimensional Lie groups is to model them locally on Banach spaces (as opposed to Euclidean space in the finite-dimensional case), and in this case much of the basic theory is similar to that of finite-dimensional Lie groups. However this is inadequate for many applications, because many natural examples of infinite-dimensional Lie groups are not Banach manifolds. Instead one needs to define Lie groups modeled on more general locally convex topological vector spaces. In this case the relation between the Lie algebra and the Lie group becomes rather subtle, and several results about finite-dimensional Lie groups no longer hold.

The literature is not entirely uniform in its terminology as to exactly which properties of infinite-dimensional groups qualify the group for the prefix _Lie_ in _Lie group_. On the Lie algebra side of affairs, things are simpler since the qualifying criteria for the prefix _Lie_ in _Lie algebra_ are purely algebraic. For example, an infinite-dimensional Lie algebra may or may not have a corresponding Lie group. That is, there may be a group corresponding to the Lie algebra, but it might not be nice enough to be called a Lie group, or the connection between the group and the Lie algebra might not be nice enough (for example, failure of the exponential map to be onto a neighborhood of the identity). It is the "nice enough" that is not universally defined.

Some of the examples that have been studied include:

-   The group of diffeomorphisms of a manifold. Quite a lot is known about the group of diffeomorphisms of the circle. Its Lie algebra is (more or less) the Witt algebra, whose central extension the Virasoro algebra (see Virasoro algebra from Witt algebra for a derivation of this fact) is the symmetry algebra of two-dimensional conformal field theory. Diffeomorphism groups of compact manifolds of larger dimension are regular Fréchet Lie groups; very little about their structure is known.

The diffeomorphism group of spacetime sometimes appears in attempts to quantize gravity.

-   The group of smooth maps from a manifold to a finite-dimensional Lie group is an example of a gauge group (with operation of pointwise multiplication), and is used in quantum field theory and Donaldson theory. If the manifold is a circle these are called loop groups, and have central extensions whose Lie algebras are (more or less) Kac–Moody algebras.
-   There are infinite-dimensional analogues of general linear groups, orthogonal groups, and so on.[24] One important aspect is that these may have _simpler_ topological properties: see for example Kuiper's theorem. In M-theory, for example, a 10 dimensional SU(N) gauge theory becomes an 11 dimensional theory when N becomes infinite.


See also

-   Adjoint representation of a Lie group
-   Compact group
-   Haar measure
-   Homogeneous space
-   Lie algebra
-   List of Lie group topics
-   Representations of Lie groups
-   Symmetry in quantum mechanics


Notes

Explanatory notes

Citations


References

-   .

-   -   . Chapters 1–3 , Chapters 4–6 , Chapters 7–9

-   -   .

-   P. M. Cohn (1957) _Lie Groups_, Cambridge Tracts in Mathematical Physics.
-   J. L. Coolidge (1940) _A History of Geometrical Methods_, pp 304–17, Oxford University Press (Dover Publications 2003).
-   -   Robert Gilmore (2008) _Lie groups, physics, and geometry: an introduction for physicists, engineers and chemists_, Cambridge University Press .
-   .

-   F. Reese Harvey (1990) _Spinors and calibrations_, Academic Press, .
-   Borel's review

-   -   .

-   T. Kobayashi and T. Oshima, Lie groups and Lie algebras I, Iwanami, 1999 (in Japanese)
-   -   . The 2003 reprint corrects several typographical mistakes.

-   -   .

-   -   Heldermann Verlag Journal of Lie Theory
-   -   .

-   Lie Groups. Representation Theory and Symmetric Spaces Wolfgang Ziller, Vorlesung 2010

Category:Lie groups Category:Manifolds Category:Symmetry

[1]

[2]  Corollary 3.45

[3]

[4]

[5]

[6] This is the statement that a Lie group is a formal Lie group. For the latter concept, for now, see F. Bruhat, Lectures on Lie Groups and Representations of Locally Compact Groups.

[7]

[8]

[9]  Theorem 3.20

[10] But see , Proposition 3.30 and Exercise 8 in Chapter 3

[11]  Corollary 3.50. Hall only claims smoothness, but the same argument shows analyticity.

[12]  Theorem 5.20

[13]  Example 3.27

[14]  Section 1.3.4

[15]  Corollary 5.7

[16]  Theorem 5.6

[17]  Section 13.2

[18]  Theorem 3.42

[19]

[20]  Theorem 5.20

[21]  Part III

[22]

[23]

[24]