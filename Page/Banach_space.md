In mathematics, more specifically in functional analysis, a BANACH SPACE (pronounced ) is a complete normed vector space. Thus, a Banach space is a vector space with a metric that allows the computation of vector length and distance between vectors and is complete in the sense that a Cauchy sequence of vectors always converges to a well defined limit that is within the space.

Banach spaces are named after the Polish mathematician Stefan Banach, who introduced this concept and studied it systematically in 1920–1922 along with Hans Hahn and Eduard Helly.[1] Banach spaces originally grew out of the study of function spaces by Hilbert, Fréchet, and Riesz earlier in the century. Banach spaces play a central role in functional analysis. In other areas of analysis, the spaces under study are often Banach spaces.


Definition

A Banach space is a vector space over the field of real numbers, or over the field of complex numbers, which is equipped with a norm ∥ ⋅ ∥_(X) and which is complete with respect to the distance function induced by the norm, that is to say, for every Cauchy sequence in , there exists an element in such that

lim_(_n_ → ∞)_x__(_n_) = _x_,

or equivalently:

lim_(_n_ → ∞)∥_x__(_n_)−_x_∥_(_X_) = 0.

The vector space structure allows one to relate the behavior of Cauchy sequences to that of converging series of vectors. A normed space is a Banach space if and only if each absolutely convergent series in converges in ,[2]

$$\sum_{n=1}^{\infty} \|v_n\|_X < \infty \quad \text{implies that} \quad \sum_{n=1}^{\infty} v_n\ \ \text{converges in} \ \ X.$$

Completeness of a normed space is preserved if the given norm is replaced by an equivalent one.

All norms on a finite-dimensional vector space are equivalent. Every finite-dimensional normed space over or is a Banach space.[3]


General theory

Linear operators, isomorphisms

If and are normed spaces over the same ground field , the set of all continuous [[linear_transformation| forms a unital Banach algebra; the multiplication operation is given by the composition of linear maps.

If and are normed spaces, they are ISOMORPHIC NORMED SPACES if there exists a linear bijection such that and its inverse are continuous. If one of the two spaces or is complete (or reflexive, separable, etc.) then so is the other space. Two normed spaces and are ISOMETRICALLY ISOMORPHIC if in addition, is an isometry, i.e., _T_(_x_){{!!}} {{=}} {{!!}}_x_{{!!}}}} for every in . The Banach–Mazur distance between two isomorphic but not isometric spaces and gives a measure of how much the two spaces and differ.

Basic notions

Every normed space can be isometrically embedded in a Banach space. More precisely, for every normed space , there exist a Banach space and a mapping such that T is an isometric mapping and is dense in . If is another Banach space such that there is an isometric isomorphism from onto a dense subset of , then is isometrically isomorphic to .

This Banach space is the COMPLETION of the normed space . The underlying metric space for is the same as the metric completion of , with the vector space operations extended from to . The completion of is often denoted by X̂.

The cartesian product of two normed spaces is not canonically equipped with a norm. However, several equivalent norms are commonly used,[4] such as

∥(_x_, _y_)∥₁ = ∥_x_∥ + ∥_y_∥,  ∥(_x_, _y_)∥_(∞) = max (∥_x_∥, ∥_y_∥)

and give rise to isomorphic normed spaces. In this sense, the product (or the direct sum ) is complete if and only if the two factors are complete.

If is a closed linear subspace of a normed space , there is a natural norm on the QUOTIENT SPACE ,

$$\| x + M\| = \inf\limits_{m \in M} \|x+m\|.$$

The quotient is a Banach space when is complete.[5] The QUOTIENT MAP from onto , sending in to its class , is linear, onto and has norm , except when _X_}}, in which case the quotient is the null space.

The closed linear subspace of is said to be a COMPLEMENTED SUBSPACE of if is the range of a bounded linear projection from onto . In this case, the space is isomorphic to the direct sum of and , the kernel of the projection .

Suppose that and are Banach spaces and that . There exists a CANONICAL FACTORIZATION of as[6]

$$T = T_1 \circ \pi, \ \ \ T : X \ \overset{\pi}{\longrightarrow}\ X / \operatorname{Ker}(T) \ \overset{T_1}{\longrightarrow} \ Y$$

where the first map is the quotient map, and the second map sends every class in the quotient to the image in . This is well defined because all elements in the same class have the same image. The mapping is a linear bijection from onto the range , whose inverse need not be bounded.

Classical spaces

Basic examples[7] of Banach spaces include: the [[Lp_space| or , together with a structure of [[Algebra_over_a_field|algebra over ≤ {{!!}}_a_{{!!}} {{!!}}_b_{{!!}}}} for all .

Examples

-   The Banach space , with the pointwise product, is a Banach algebra.
-   The disk algebra consists of functions holomorphic in the open unit disk and continuous on its closure: . Equipped with the max norm on , the disk algebra is a closed subalgebra of .
-   The Wiener algebra is the algebra of functions on the unit circle with absolutely convergent Fourier series. Via the map associating a function on to the sequence of its Fourier coefficients, this algebra is isomorphic to the Banach algebra , where the product is the convolution of sequences.
-   For every Banach space , the space of bounded linear operators on , with the composition of maps as product, is a Banach algebra.
-   A C*-algebra is a complex Banach algebra with an antilinear involution such that _a_^(∗)_a_{{!!}} {{=}} {{!!}}_a_{{!!}}²}}. The space of bounded linear operators on a Hilbert space is a fundamental example of C*-algebra. The Gelfand–Naimark theorem states that every C*-algebra is isometrically isomorphic to a C*-subalgebra of some . The space of complex continuous functions on a compact Hausdorff space is an example of commutative C*-algebra, where the involution associates to every function its complex conjugate .

Dual space

If is a normed space and the underlying field (either the real or the complex numbers), the CONTINUOUS DUAL SPACE is the space of continuous linear maps from into , or CONTINUOUS LINEAR FUNCTIONALS. The notation for the continuous dual is _B_(_X_, K)}} in this article.[8] Since is a Banach space (using the absolute value as norm), the dual is a Banach space, for every normed space .

The main tool for proving the existence of continuous linear functionals is the Hahn–Banach theorem.

    HAHN–BANACH THEOREM. Let be a vector space over the field R, C}}. Let further
    -   be a linear subspace,

    -   be a sublinear function and

    -   be a linear functional so that for all in .

    Then, there exists a linear functional so that
    _F_|_(_Y_) = _f_, and ∀_x_ ∈ _X_,  Re (_F_(_x_)) ≤ _p_(_x_).

In particular, every continuous linear functional on a subspace of a normed space can be continuously extended to the whole space, without increasing the norm of the functional.[9] An important special case is the following: for every vector in a normed space , there exists a continuous linear functional on such that

_f_(_x_) = ∥_x_∥_(_X_), ∥_f_∥_(_X_′) ≤ 1.

When is not equal to the vector, the functional must have norm one, and is called a NORMING FUNCTIONAL for .

The Hahn–Banach separation theorem states that two disjoint non-empty convex sets in a real Banach space, one of them open, can be separated by a closed affine hyperplane. The open convex set lies strictly on one side of the hyperplane, the second convex set lies on the other side but may touch the hyperplane.[10]

A subset in a Banach space is TOTAL if the linear span of is dense in . The subset is total in if and only if the only continuous linear functional that vanishes on is the functional: this equivalence follows from the Hahn–Banach theorem.

If is the direct sum of two closed linear subspaces and , then the dual of is isomorphic to the direct sum of the duals of and .[11] If is a closed linear subspace in , one can associate the _orthogonal of_ in the dual,

_M_^(⊥) = {_x_′∈_X_′:_x_′(_m_)=0, ∀_m_∈_M_}.

The orthogonal is a closed linear subspace of the dual. The dual of is isometrically isomorphic to . The dual of is isometrically isomorphic to .[12]

The dual of a separable Banach space need not be separable, but:

    THEOREM.[13] Let be a normed space. If is separable, then is separable.

When is separable, the above criterion for totality can be used for proving the existence of a countable total subset in .

Weak topologies

The WEAK TOPOLOGY on a Banach space is the coarsest topology on for which all elements in the continuous dual space are continuous. The norm topology is therefore finer than the weak topology. It follows from the Hahn–Banach separation theorem that the weak topology is Hausdorff, and that a norm-closed convex subset of a Banach space is also weakly closed.[14] A norm-continuous linear map between two Banach spaces and is also WEAKLY CONTINUOUS, i.e., continuous from the weak topology of to that of .[15]

If is infinite-dimensional, there exist linear maps which are not continuous. The space of all linear maps from to the underlying field (this space is called the algebraic dual space, to distinguish it from ) also induces a topology on which is finer than the weak topology, and much less used in functional analysis.

On a dual space , there is a topology weaker than the weak topology of , called WEAK* TOPOLOGY. It is the coarsest topology on for which all evaluation maps , are continuous. Its importance comes from the Banach–Alaoglu theorem.

    BANACH–ALAOGLU THEOREM. Let be a normed vector space. Then the closed unit ball {_x_′ ∈ _X_ ′ : {{!!}}_x_′{{!!}} ≤ 1} }} of the dual space is compact in the weak* topology.

The Banach–Alaoglu theorem depends on Tychonoff's theorem about infinite products of compact spaces. When is separable, the unit ball of the dual is a metrizable compact in the weak* topology.[16]

Examples of dual spaces

The dual of is isometrically isomorphic to : for every bounded linear functional on , there is a unique element {_y_(n)_} ∈ ℓ¹}} such that

_f_(_x_) = ∑_(_n_ ∈ N)_x__(_n_)_y__(_n_),  _x_ = {_x__(_n_)} ∈ _c_₀,  and  ∥_f_∥_((_c_₀)′) = ∥_y_∥_(ℓ₁).

The dual of is isometrically isomorphic to . The dual of [[Lp_space#Properties_of_Lp_spaces|.

For every vector in a Hilbert space , the mapping

_x_ ∈ _H_ → _f__(_y_)(_x_) = ⟨_x_, _y_⟩

defines a continuous linear functional on . The Riesz representation theorem states that every continuous linear functional on is of the form for a uniquely defined vector in . The mapping is an antilinear isometric bijection from onto its dual . When the scalars are real, this map is an isometric isomorphism.

When is a compact Hausdorff topological space, the dual of is the space of Radon measures in the sense of Bourbaki.[17] The subset of consisting of non-negative measures of mass 1 (probability measures) is a convex w*-closed subset of the unit ball of . The extreme points of are the Dirac measures on . The set of Dirac measures on , equipped with the w*-topology, is homeomorphic to .

    BANACH–STONE THEOREM. If and are compact Hausdorff spaces and if and are isometrically isomorphic, then the topological spaces and are homeomorphic.[18][19]

The result has been extended by Amir[20] and Cambern[21] to the case when the multiplicative Banach–Mazur distance between and is . The theorem is no longer true when the distance is 2}}.[22]

In the commutative Banach algebra , the maximal ideals are precisely kernels of Dirac mesures on ,

_I__(_x_) = ker _δ__(_x_) = {_f_ ∈ _C_(_K_) : _f_(_x_) = 0}, _x_ ∈ _K_.

More generally, by the Gelfand–Mazur theorem, the maximal ideals of a unital commutative Banach algebra can be identified with its characters—not merely as sets but as topological spaces: the former with the hull-kernel topology and the latter with the w*-topology. In this identification, the maximal ideal space can be viewed as a w*-compact subset of the unit ball in the dual .

    THEOREM. If is a compact Hausdorff space, then the maximal ideal space of the Banach algebra is homeomorphic to .[23]

Not every unital commutative Banach algebra is of the form for some compact Hausdorff space . However, this statement holds if one places in the smaller category of commutative C*-algebras. Gelfand's representation theorem for commutative C*-algebras states that every commutative unital _C_*-algebra is isometrically isomorphic to a space.[24] The Hausdorff compact space here is again the maximal ideal space, also called the spectrum of in the C*-algebra context.

Bidual

If is a normed space, the (continuous) dual of the dual is called BIDUAL, or SECOND DUAL of . For every normed space , there is a natural map,

$$\begin{cases} F_X : X \to X'' \\ F_X(x) (f) = f(x) & \forall x \in X, \forall f \in X'\end{cases}$$

This defines as a continuous linear functional on , i.e., an element of . The map is a linear map from to . As a consequence of the existence of a norming functional for every in , this map is isometric, thus injective.

For example, the dual of _c_₀}} is identified with , and the dual of is identified with , the space of bounded scalar sequences. Under these identifications, is the inclusion map from to . It is indeed isometric, but not onto.

If is surjective, then the normed space is called REFLEXIVE (see below). Being the dual of a normed space, the bidual is complete, therefore, every reflexive normed space is a Banach space.

Using the isometric embedding , it is customary to consider a normed space as a subset of its bidual. When is a Banach space, it is viewed as a closed linear subspace of . If is not reflexive, the unit ball of is a proper subset of the unit ball of . The Goldstine theorem states that the unit ball of a normed space is weakly*-dense in the unit ball of the bidual. In other words, for every in the bidual, there exists a net in so that

sup_(_j_)∥_x__(_j_)∥ ≤ ∥_x_″∥,  _x_″(_f_) = lim_(_j_)_f_(_x__(_j_)), _f_ ∈ _X_′.

The net may be replaced by a weakly*-convergent sequence when the dual is separable. On the other hand, elements of the bidual of that are not in cannot be weak*-limit of _sequences_ in , since is weakly sequentially complete.

Banach's theorems

Here are the main general results about Banach spaces that go back to the time of Banach's book () and are related to the Baire category theorem. According to this theorem, a complete metric space (such as a Banach space, a Fréchet space or an F-space) cannot be equal to a union of countably many closed subsets with empty interiors. Therefore, a Banach space cannot be the union of countably many closed subspaces, unless it is already equal to one of them; a Banach space with a countable Hamel basis is finite-dimensional.

    BANACH–STEINHAUS THEOREM. Let be a Banach space and be a normed vector space. Suppose that is a collection of continuous linear operators from to . The uniform boundedness principle states that if for all in we have _T_(_x_){{!!}}_(_Y_) < ∞}}, then _T_{{!!}}_(_Y_) < ∞}}.

The Banach–Steinhaus theorem is not limited to Banach spaces. It can be extended for example to the case where is a Fréchet space, provided the conclusion is modified as follows: under the same hypothesis, there exists a neighborhood of in such that all in are uniformly bounded on ,

sup_(_T_ ∈ _F_)sup_(_x_ ∈ _U_) ∥_T_(_x_)∥_(_Y_) < ∞.

    THE OPEN MAPPING THEOREM. Let and be Banach spaces and be a surjective continuous linear operator, then is an open map.

    COROLLARY. Every one-to-one bounded linear operator from a Banach space onto a Banach space is an isomorphism.

    THE FIRST ISOMORPHISM THEOREM FOR BANACH SPACES. Suppose that and are Banach spaces and that . Suppose further that the range of is closed in . Then is isomorphic to .

This result is a direct consequence of the preceding _Banach isomorphism theorem_ and of the canonical factorization of bounded linear maps.

    COROLLARY. If a Banach space is the internal direct sum of closed subspaces , then is isomorphic to .

This is another consequence of Banach's isomorphism theorem, applied to the continuous bijection from onto sending to the sum .

    THE CLOSED GRAPH THEOREM. Let be a linear mapping between Banach spaces. The graph of is closed in if and only if is continuous.

Reflexivity

The normed space is called REFLEXIVE when the natural map

$$\begin{cases} F_X : X \to X'' \\ F_X(x) (f) = f(x) & \forall x \in X, \forall f \in X'\end{cases}$$

is surjective. Reflexive normed spaces are Banach spaces.

    THEOREM. If is a reflexive Banach space, every closed subspace of and every quotient space of are reflexive.

This is a consequence of the Hahn–Banach theorem. Further, by the open mapping theorem, if there is a bounded linear operator from the Banach space onto the Banach space , then is reflexive.

    THEOREM. If is a Banach space, then is reflexive if and only if is reflexive.

    COROLLARY. Let be a reflexive Banach space. Then is separable if and only if is separable.

Indeed, if the dual of a Banach space is separable, then is separable. If is reflexive and separable, then the dual of is separable, so is separable.

    THEOREM. Suppose that are normed spaces and that _X_₁ ⊕ ... ⊕ _X_(n)_}}. Then is reflexive if and only if each is reflexive.

Hilbert spaces are reflexive. The spaces are reflexive when . More generally, uniformly convex spaces are reflexive, by the Milman–Pettis theorem. The spaces are not reflexive. In these examples of non-reflexive spaces , the bidual is "much larger" than . Namely, under the natural isometric embedding of into given by the Hahn–Banach theorem, the quotient is infinite-dimensional, and even nonseparable. However, Robert C. James has constructed an example[25] of a non-reflexive space, usually called "_the James space_" and denoted by _J_,[26] such that the quotient is one-dimensional. Furthermore, this space is isometrically isomorphic to its bidual.

    THEOREM. A Banach space is reflexive if and only if its unit ball is compact in the weak topology.

When is reflexive, it follows that all closed and bounded convex subsets of are weakly compact. In a Hilbert space , the weak compactness of the unit ball is very often used in the following way: every bounded sequence in has weakly convergent subsequences.

Weak compactness of the unit ball provides a tool for finding solutions in reflexive spaces to certain optimization problems. For example, every convex continuous function on the unit ball of a reflexive space attains its minimum at some point in .

As a special case of the preceding result, when is a reflexive space over , every continuous linear functional in attains its maximum  _f_ {{!!}}}} on the unit ball of . The following theorem of Robert C. James provides a converse statement.

    JAMES' THEOREM. For a Banach space the following two properties are equivalent:
    -   is reflexive.

    -   for all in there exists in with _x_{{!!}} ≤ 1}}, so that {{!!}} _f_ {{!!}}.}}

The theorem can be extended to give a characterization of weakly compact convex sets.

On every non-reflexive Banach space , there exist continuous linear functionals that are not _norm-attaining_. However, the Bishop–Phelps theorem[27] states that norm-attaining functionals are norm dense in the dual of .

Weak convergences of sequences

A sequence in a Banach space is WEAKLY CONVERGENT to a vector if converges to for every continuous linear functional in the dual . The sequence is a WEAKLY CAUCHY SEQUENCE if converges to a scalar limit , for every in . A sequence in the dual is WEAKLY* CONVERGENT to a functional if converges to for every in . Weakly Cauchy sequences, weakly convergent and weakly* convergent sequences are norm bounded, as a consequence of the Banach–Steinhaus theorem.

When the sequence in is a weakly Cauchy sequence, the limit above defines a bounded linear functional on the dual , i.e., an element of the bidual of , and is the limit of in the weak*-topology of the bidual. The Banach space is WEAKLY SEQUENTIALLY COMPLETE if every weakly Cauchy sequence is weakly convergent in . It follows from the preceding discussion that reflexive spaces are weakly sequentially complete.

    THEOREM. [28] For every measure , the space is weakly sequentially complete.

An orthonormal sequence in a Hilbert space is a simple example of a weakly convergent sequence, with limit equal to the vector. The unit vector basis of , or of , is another example of a WEAKLY NULL SEQUENCE, i.e., a sequence that converges weakly to . For every weakly null sequence in a Banach space, there exists a sequence of convex combinations of vectors from the given sequence that is norm-converging to .[29]

The unit vector basis of is not weakly Cauchy. Weakly Cauchy sequences in are weakly convergent, since -spaces are weakly sequentially complete. Actually, weakly convergent sequences in are norm convergent.[30] This means that satisfies Schur's property.

Results involving the  basis

Weakly Cauchy sequences and the basis are the opposite cases of the dichotomy established in the following deep result of H. P. Rosenthal.[31]

    THEOREM.[32] Let be a bounded sequence in a Banach space. Either has a weakly Cauchy subsequence, or it admits a subsequence equivalent to the standard unit vector basis of .

A complement to this result is due to Odell and Rosenthal (1975).

    THEOREM.[33] Let be a separable Banach space. The following are equivalent:
    -   The space does not contain a closed subspace isomorphic to .
    -   Every element of the bidual is the weak*-limit of a sequence in .

By the Goldstine theorem, every element of the unit ball of is weak*-limit of a net in the unit ball of . When does not contain , every element of is weak*-limit of a _sequence_ in the unit ball of .[34]

When the Banach space is separable, the unit ball of the dual , equipped with the weak*-topology, is a metrizable compact space ,[35] and every element in the bidual defines a bounded function on :

_x_′ ∈ _K_ ↦ _x_″(_x_′), |_x_″(_x_′)| ≤ ∥_x_″∥.

This function is continuous for the compact topology of if and only if is actually in , considered as subset of . Assume in addition for the rest of the paragraph that does not contain . By the preceding result of Odell and Rosenthal, the function is the pointwise limit on of a sequence of continuous functions on , it is therefore a first Baire class function on . The unit ball of the bidual is a pointwise compact subset of the first Baire class on .[36]

Sequences, weak and weak* compactness

When is separable, the unit ball of the dual is weak*-compact by Banach–Alaoglu and metrizable for the weak* topology,[37] hence every bounded sequence in the dual has weakly* convergent subsequences. This applies to separable reflexive spaces, but more is true in this case, as stated below.

The weak topology of a Banach space is metrizable if and only if is finite-dimensional.[38] If the dual is separable, the weak topology of the unit ball of is metrizable. This applies in particular to separable reflexive Banach spaces. Although the weak topology of the unit ball is not metrizable in general, one can characterize weak compactness using sequences.

    EBERLEIN–ŠMULIAN THEOREM.[39] A set in a Banach space is relatively weakly compact if and only if every sequence in has a weakly convergent subsequence.

A Banach space is reflexive if and only if each bounded sequence in has a weakly convergent subsequence.[40]

A weakly compact subset in is norm-compact. Indeed, every sequence in has weakly convergent subsequences by Eberlein–Šmulian, that are norm convergent by the Schur property of .


Schauder bases

A SCHAUDER BASIS in a Banach space is a sequence of vectors in _X_ with the property that for every vector in , there exist _uniquely_ defined scalars depending on , such that

$$x = \sum_{n=0}^{\infty} x_n e_n, \quad \textit{i.e.,} \quad x = \lim_n P_n(x), \ P_n(x) := \sum_{k=0}^n x_k e_k.$$

Banach spaces with a Schauder basis are necessarily separable, because the countable set of finite linear combinations with rational coefficients (say) is dense.

It follows from the Banach–Steinhaus theorem that the linear mappings are uniformly bounded by some constant . Let denote the coordinate functionals which assign to every in the coordinate of in the above expansion. They are called BIORTHOGONAL FUNCTIONALS. When the basis vectors have norm , the coordinate functionals have norm in the dual of .

Most classical separable spaces have explicit bases. The Haar system is a basis for . The trigonometric system is a basis in when . The Schauder system is a basis in the space .[41] The question of whether the disk algebra has a basis[42] remained open for more than forty years, until Bočkarev showed in 1974 that admits a basis constructed from the Franklin system.[43]

Since every vector in a Banach space with a basis is the limit of , with of finite rank and uniformly bounded, the space satisfies the bounded approximation property. The first example by Enflo of a space failing the approximation property was at the same time the first example of a separable Banach space without a Schauder basis.[44]

Robert C. James characterized reflexivity in Banach spaces with a basis: the space with a Schauder basis is reflexive if and only if the basis is both shrinking and boundedly complete.[45] In this case, the biorthogonal functionals form a basis of the dual of .


Tensor product

Let and be two -vector spaces. The tensor product of and is a -vector space with a bilinear mapping which has the following universal property:

    If is any bilinear mapping into a -vector space , then there exists a unique linear mapping such that _f_ ∘ _T_}}.

The image under of a couple in is denoted by , and called a SIMPLE TENSOR. Every element in is a finite sum of such simple tensors.

There are various norms that can be placed on the tensor product of the underlying vector spaces, amongst others the projective cross norm and injective cross norm introduced by A. Grothendieck in 1955.[46]

In general, the tensor product of complete spaces is not complete again. When working with Banach spaces, it is customary to say that the PROJECTIVE TENSOR PRODUCT[47] of two Banach spaces and is the _completion_ $X \widehat{\otimes}_\pi Y$ of the algebraic tensor product equipped with the projective tensor norm, and similarly for the INJECTIVE TENSOR PRODUCT[48] $X \widehat{\otimes}_\varepsilon Y$. Grothendieck proved in particular that[49]

$$\begin{align}
C(K) \widehat{\otimes}_\varepsilon Y &\simeq C(K, Y), \\
L^1([0, 1]) \widehat{\otimes}_\pi Y &\simeq L^1([0, 1], Y),
\end{align}$$

where is a compact Hausdorff space, the Banach space of continuous functions from to and the space of Bochner-measurable and integrable functions from to , and where the isomorphisms are isometric. The two isomorphisms above are the respective extensions of the map sending the tensor to the vector-valued function .

Tensor products and the approximation property

Let be a Banach space. The tensor product $X' \widehat \otimes_\varepsilon X$ is identified isometrically with the closure in of the set of finite rank operators. When has the approximation property, this closure coincides with the space of compact operators on .

For every Banach space , there is a natural norm linear map

$$Y \widehat\otimes_\pi X \to Y \widehat\otimes_\varepsilon X$$

obtained by extending the identity map of the algebraic tensor product. Grothendieck related the approximation problem to the question of whether this map is one-to-one when is the dual of . Precisely, for every Banach space , the map

$$X' \widehat \otimes_\pi X \ \longrightarrow X' \widehat \otimes_\varepsilon X$$

is one-to-one if and only if has the approximation property.[50]

Grothendieck conjectured that $X \widehat{\otimes}_\pi Y$ and $X \widehat{\otimes}_\varepsilon Y$ must be different whenever and are infinite-dimensional Banach spaces. This was disproved by Gilles Pisier in 1983.[51] Pisier constructed an infinite-dimensional Banach space such that $X \widehat{\otimes}_\pi X$ and $X \widehat{\otimes}_\varepsilon X$ are equal. Furthermore, just as Enflo's example, this space is a "hand-made" space that fails to have the approximation property. On the other hand, Szankowski proved that the classical space does not have the approximation property.[52]


Some classification results

Characterizations of Hilbert space among Banach spaces

A necessary and sufficient condition for the norm of a Banach space to be associated to an inner product is the parallelogram identity:

∀_x_, _y_ ∈ _X_:  ∥_x_ + _y_∥² + ∥_x_ − _y_∥² = 2(∥_x_∥²+∥_y_∥²).

It follows, for example, that the Lebesgue space is a Hilbert space only when 2}}. If this identity is satisfied, the associated inner product is given by the polarization identity. In the case of real scalars, this gives:

$$\langle x, y\rangle = \tfrac{1}{4} \left (\|x+y\|^2 - \|x-y\|^2 \right ).$$

For complex scalars, defining the inner product so as to be -linear in , antilinear in , the polarization identity gives:

$$\langle x,y\rangle = \tfrac{1}{4} \left( \|x+y\|^2 - \|x-y\|^2 + i \left (\|x+iy\|^2 - \|x-iy\|^2 \right )\right).$$

To see that the parallelogram law is sufficient, one observes in the real case that is symmetric, and in the complex case, that it satisfies the Hermitian symmetry property and _i_ < _x_, _y_ >}}. The parallelogram law implies that is additive in . It follows that it is linear over the rationals, thus linear by continuity.

Several characterizations of spaces isomorphic (rather than isometric) to Hilbert spaces are available. The parallelogram law can be extended to more than two vectors, and weakened by the introduction of a two-sided inequality with a constant : Kwapień proved that if

$$c^{-2} \sum_{k=1}^n \left \|x_k \right \|^2 \le \operatorname{Ave}_{\pm} \left \| \sum_{k=1}^n \pm x_k \right \|^2 \le c^2 \sum_{k=1}^n \left \|x_k \right \|^2$$

for every integer and all families of vectors , then the Banach space is isomorphic to a Hilbert space.[53] Here, denotes the average over the possible choices of signs . In the same article, Kwapień proved that the validity of a Banach-valued Parseval's theorem for the Fourier transform characterizes Banach spaces isomorphic to Hilbert spaces.

Lindenstrauss and Tzafriri proved that a Banach space in which every closed linear subspace is complemented (that is, is the range of a bounded linear projection) is isomorphic to a Hilbert space.[54] The proof rests upon Dvoretzky's theorem about Euclidean sections of high-dimensional centrally symmetric convex bodies. In other words, Dvoretzky's theorem states that for every integer , any finite-dimensional normed space, with dimension sufficiently large compared to , contains subspaces nearly isometric to the -dimensional Euclidean space.

The next result gives the solution of the so-called _homogeneous space problem_. An infinite-dimensional Banach space is said to be HOMOGENEOUS if it is isomorphic to all its infinite-dimensional closed subspaces. A Banach space isomorphic to is homogeneous, and Banach asked for the converse.[55]

    THEOREM.[56] A Banach space isomorphic to all its infinite-dimensional closed subspaces is isomorphic to a separable Hilbert space.

An infinite-dimensional Banach space is HEREDITARILY INDECOMPOSABLE when no subspace of it can be isomorphic to the direct sum of two infinite-dimensional Banach spaces. The Gowers dichotomy theorem[57] asserts that every infinite-dimensional Banach space contains, either a subspace with unconditional basis, or a hereditarily indecomposable subspace , and in particular, is not isomorphic to its closed hyperplanes.[58] If is homogeneous, it must therefore have an unconditional basis. It follows then from the partial solution obtained by Komorowski and Tomczak–Jaegermann, for spaces with an unconditional basis,[59] that is isomorphic to .

Metric classification

If T : X → Y is an isometry from the Banach space X onto the Banach space Y, then the Mazur-Ulam theorem states that T must be an affine transformation. In particular, if T(0_(X)) = 0_(Y), this is T maps the zero of X to the zero of Y, then T must be linear. This result implies that the metric in Banach spaces, and more generally in normed spaces, completely captures their linear structure.

Topological classification

Finite dimensional Banach spaces are homeomorphic as topological spaces, if and only if they have the same dimension as real vector spaces.

Anderson–Kadec theorem (1965–66) proves[60] that any two infinite-dimensional separable Banach spaces are homeomorphic as topological spaces. Kadec's theorem was extended by Torunczyk, who proved[61] that any two Banach spaces are homeomorphic if and only if they have the same density character, the minimum cardinality of a dense subset.

Spaces of continuous functions

When two compact Hausdorff spaces and are homeomorphic, the Banach spaces and are isometric. Conversely, when is not homeomorphic to , the (multiplicative) Banach–Mazur distance between and must be greater than or equal to , see above the results by Amir and Cambern. Although uncountable compact metric spaces can have different homeomorphy types, one has the following result due to Milutin:[62]

    THEOREM.[63] Let be an uncountable compact metric space. Then is isomorphic to .

The situation is different for countably infinite compact Hausdorff spaces. Every countably infinite compact is homeomorphic to some closed interval of ordinal numbers

⟨1, _α_⟩ = {_γ_ : 1 ≤ _γ_ ≤ _α_}

equipped with the order topology, where is a countably infinite ordinal.[64] The Banach space is then isometric to . When are two countably infinite ordinals, and assuming , the spaces and are isomorphic if and only if .[65] For example, the Banach spaces

_C_(⟨1, _ω_⟩), _C_(⟨1, _ω_^(_ω_)⟩), _C_(⟨1, _ω_^(_ω_²)⟩), _C_(⟨1, _ω_^(_ω_³)⟩), ⋯, _C_(⟨1, _ω_^(_ω_^(_ω_))⟩), ⋯

are mutually non-isomorphic.


Examples

A glossary of symbols:

-   R, C}};

-   is a compact Hausdorff space;

-   is a closed and bounded interval ;

-   are real numbers with so that 1.}}

-   is a _σ_-algebra of sets;

-   is an algebra of sets (for spaces only requiring finite additivity, such as the ba space);

-   is a measure with variation _μ_{{!}}}}.

  -------------------------
  CLASSICAL BANACH SPACES
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{mvar
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  {{math
  -------------------------


Derivatives

Several concepts of a derivative may be defined on a Banach space. See the articles on the Fréchet derivative and the Gateaux derivative for details. The Fréchet derivative allows for an extension of the concept of a directional derivative to Banach spaces. The Gateaux derivative allows for an extension of a directional derivative to locally convex topological vector spaces. Fréchet differentiability is a stronger condition than Gateaux differentiability. The quasi-derivative is another generalization of directional derivative that implies a stronger condition than Gateaux differentiability, but a weaker condition than Fréchet differentiability.


Generalizations

Several important spaces in functional analysis, for instance the space of all infinitely often differentiable functions R → R, or the space of all distributions on R, are complete but are not normed vector spaces and hence not Banach spaces. In Fréchet spaces one still has a complete metric, while LF-spaces are complete uniform vector spaces arising as limits of Fréchet spaces.


See also

-   Space (mathematics)
    -   Hilbert space
    -   L^(_p_) space
    -   Semi-inner-product
    -   Sobolev space
    -   Hardy space
-   Interpolation space
-   Distortion problem
-   Smith space


Notes


References

-   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   .

-   .


External links

-   -

* Category:Science and technology in Poland

[1]

[2] see Theorem 1.3.9, p. 20 in .

[3] see Corollary 1.4.18, p. 32 in .

[4] see , p. 182.

[5] see pp. 17–19 in .

[6]

[7] see , pp. 11-12.

[8] Several books about functional analysis use the notation for the continuous dual, for example , , , , .

[9] Theorem 1.9.6, p. 75 in

[10] see also Theorem 2.2.26, p. 179 in

[11] see p. 19 in .

[12] Theorems 1.10.16, 1.10.17 pp.94–95 in

[13] Theorem 1.12.11, p. 112 in

[14] Theorem 2.5.16, p. 216 in .

[15] see II.A.8, p. 29 in

[16] see Theorem 2.6.23, p. 231 in .

[17] see N. Bourbaki, (2004), "Integration I", Springer Verlag, .

[18]

[19] see also , p. 170 for metrizable and .

[20] See

[21]  And

[22]

[23]

[24] See for example

[25]

[26] see , p. 25.

[27]

[28] see III.C.14, p. 140 in .

[29] see Corollary 2, p. 11 in .

[30] see p. 85 in .

[31]  Rosenthal's proof is for real scalars. The complex version of the result is due to L. Dor, in

[32] see p. 201 in .

[33] .

[34] Odell and Rosenthal, Sublemma p. 378 and Remark p. 379.

[35]

[36] for more on pointwise compact subsets of the Baire class, see .

[37]

[38] see Proposition 2.5.14, p. 215 in .

[39] see for example p. 49, II.C.3 in .

[40] see Corollary 2.8.9, p. 251 in .

[41] see p. 3.

[42] the question appears p. 238, §3 in Banach's book, .

[43] see S. V. Bočkarev, "Existence of a basis in the space of functions analytic in the disc, and some properties of Franklin's system". (Russian) Mat. Sb. (N.S.) 95(137) (1974), 3–18, 159.

[44] see

[45] see R.C. James, "Bases and reflexivity of Banach spaces". Ann. of Math. (2) 52, (1950). 518–527. See also p. 9.

[46] see A. Grothendieck, "Produits tensoriels topologiques et espaces nucléaires". Mem. Amer. Math. Soc. 1955 (1955), no. 16, 140 pp., and A. Grothendieck, "Résumé de la théorie métrique des produits tensoriels topologiques". Bol. Soc. Mat. São Paulo 8 1953 1–79.

[47] see chap. 2, p. 15 in .

[48] see chap. 3, p. 45 in .

[49] see Example. 2.19, p. 29, and pp. 49–50 in .

[50] see Proposition 4.6, p. 74 in .

[51] see Pisier, Gilles (1983), "Counterexamples to a conjecture of Grothendieck", Acta Math. 151:181–208.

[52] see Szankowski, Andrzej (1981), " does not have the approximation property", Acta Math. 147: 89–108. Ryan claims that this result is due to Per Enflo, p. 74 in .

[53] see Kwapień, S. (1970), "A linear topological characterization of inner-product spaces", Studia Math. 38:277–278.

[54] see Lindenstrauss, J. and Tzafriri, L. (1971), "On the complemented subspaces problem", Israel J. Math. 9:263–269.

[55] see p. 245 in . The homogeneity property is called "propriété (15)" there. Banach writes: "on ne connaît aucun exemple d'espace à une infinité de dimensions qui, sans être isomorphe avec (_L_²), possède la propriété (15)".

[56] Gowers, W. T. (1996), "A new dichotomy for Banach spaces", Geom. Funct. Anal. 6:1083–1093.

[57]

[58] see

[59] see and also

[60]

[61]

[62] Milyutin, Alekseĭ A. (1966), "Isomorphism of the spaces of continuous functions over compact sets of the cardinality of the continuum". (Russian) Teor. Funkciĭ Funkcional. Anal. i Priložen. Vyp. 2:150–156.

[63] Milutin. See also Rosenthal, Haskell P., "The Banach spaces C(K)" in Handbook of the geometry of Banach spaces, Vol. 2, 1547–1602, North-Holland, Amsterdam, 2003.

[64] One can take _ω^( βn)_}}, where is the Cantor–Bendixson rank of , and is the finite number of points in the _β_-th derived set of . See Mazurkiewicz, Stefan; Sierpiński, Wacław (1920), "Contribution à la topologie des ensembles dénombrables", Fundamenta Mathematicae 1: 17–27.

[65] Bessaga, Czesław; Pełczyński, Aleksander (1960), "Spaces of continuous functions. IV. On isomorphical classification of spaces of continuous functions", Studia Math. 19:53–62.