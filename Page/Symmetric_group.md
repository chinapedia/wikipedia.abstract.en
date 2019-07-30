of the symmetric group S₄]] of the symmetric group S₃
(multiplication table of permutation matrices)
These are the positions of the six matrices:
Some matrices are not arranged symmetrically to the main diagonal - thus the symmetric group is not abelian.]]

In abstract algebra, the SYMMETRIC GROUP defined over any set is the group whose elements are all the bijections from the set to itself, and whose group operation is the composition of functions. In particular, the finite symmetric group S_(_N_) defined over a finite set of _n_ symbols consists of the permutation operations that can be performed on the _n_ symbols.[1] Since there are _n_! (_n_ factorial) possible permutation operations that can be performed on a tuple composed of _n_ symbols, it follows that the number of elements (the order) of the symmetric group S_(_n_) is _n_!.

Although symmetric groups can be defined on infinite sets, this article focuses on the finite symmetric groups: their applications, their elements, their conjugacy classes, a finite presentation, their subgroups, their automorphism groups, and their representation theory. For the remainder of this article, "symmetric group" will mean a symmetric group on a finite set.

The symmetric group is important to diverse areas of mathematics such as Galois theory, invariant theory, the representation theory of Lie groups, and combinatorics. Cayley's theorem states that every group _G_ is isomorphic to a subgroup of the symmetric group on _G_.


Definition and first properties

The symmetric group on a finite set _X_ is the group whose elements are all bijective functions from _X_ to _X_ and whose group operation is that of function composition.[2] For finite sets, "permutations" and "bijective functions" refer to the same operation, namely rearrangement. The symmetric group of DEGREE _n_ is the symmetric group on the set

The symmetric group on a set _X_ is denoted in various ways including S_(_X_), 𝔖_(_X_), Σ_(_X_), _X_! and Sym(_X_).[3] If _X_ is the set then the symmetric group on _X_ is also denoted S_(_n_),[4] 𝔖_(_n_), Σ_(_n_), and Sym(_n_).

Symmetric groups on infinite sets behave quite differently from symmetric groups on finite sets, and are discussed in , , and .

The symmetric group on a set of _n_ elements has order _n_! (the factorial of _n_).[5] It is abelian if and only if _n_ is less than or equal to 2.[6] For and (the empty set and the singleton set), the symmetric group is trivial (it has order ). The group S_(_n_) is solvable if and only if . This is an essential part of the proof of the Abel–Ruffini theorem that shows that for every there are polynomials of degree _n_ which are not solvable by radicals, that is, the solutions cannot be expressed by performing a finite number of operations of addition, subtraction, multiplication, division and root extraction on the polynomial's coefficients.


Applications

The symmetric group on a set of size _n_ is the Galois group of the general polynomial of degree _n_ and plays an important role in Galois theory. In invariant theory, the symmetric group acts on the variables of a multi-variate function, and the functions left invariant are the so-called symmetric functions. In the representation theory of Lie groups, the representation theory of the symmetric group plays a fundamental role through the ideas of Schur functors. In the theory of Coxeter groups, the symmetric group is the Coxeter group of type A_(_n_) and occurs as the Weyl group of the general linear group. In combinatorics, the symmetric groups, their elements (permutations), and their representations provide a rich source of problems involving Young tableaux, plactic monoids, and the Bruhat order. Subgroups of symmetric groups are called permutation groups and are widely studied because of their importance in understanding group actions, homogeneous spaces, and automorphism groups of graphs, such as the Higman–Sims group and the Higman–Sims graph.


Elements

The elements of the symmetric group on a set _X_ are the permutations of _X_.

Multiplication

The group operation in a symmetric group is function composition, denoted by the symbol ∘ or simply by juxtaposition of the permutations. The composition of permutations _f_ and _g_, pronounced "_f_ of _g_", maps any element _x_ of _X_ to _f_(_g_(_x_)). Concretely, let (see permutation for an explanation of notation):

    $f = (1\ 3)(4\ 5)=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 3 & 2 & 1 & 5 & 4\end{pmatrix}$
    $g = (1\ 2\ 5)(3\ 4)=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 5 & 4 & 3 & 1\end{pmatrix}.$

Applying _f_ after _g_ maps 1 first to 2 and then 2 to itself; 2 to 5 and then to 4; 3 to 4 and then to 5, and so on. So composing _f_ and _g_ gives

    $fg = f\circ g = (1\ 2\ 4)(3\ 5)=\begin{pmatrix} 1 & 2 &3 & 4 & 5 \\ 2 & 4 & 5 & 1 & 3\end{pmatrix}.$

A cycle of length , taken to the _k_-th power, will decompose into _k_ cycles of length _m_: For example, (, ),

    (1 2 3 4 5 6)² = (1 3 5)(2 4 6).

Verification of group axioms

To check that the symmetric group on a set _X_ is indeed a group, it is necessary to verify the group axioms of closure, associativity, identity, and inverses.[7]

1.  The operation of function composition is closed in the set of permutations of the given set _X_.
2.  Function composition is always associative.
3.  The trivial bijection that assigns each element of _X_ to itself serves as an identity for the group.
4.  Every bijection has an inverse function that undoes its action, and thus each element of a symmetric group does have an inverse which is a permutation too.

Transpositions

A TRANSPOSITION is a permutation which exchanges two elements and keeps all others fixed; for example (1 3) is a transposition. Every permutation can be written as a product of transpositions; for instance, the permutation _g_ from above can be written as _g_ = (1 2)(2 5)(3 4). Since _g_ can be written as a product of an odd number of transpositions, it is then called an odd permutation, whereas _f_ is an even permutation.

The representation of a permutation as a product of transpositions is not unique; however, the number of transpositions needed to represent a given permutation is either always even or always odd. There are several short proofs of the invariance of this parity of a permutation.

The product of two even permutations is even, the product of two odd permutations is even, and all other products are odd. Thus we can define the SIGN of a permutation:

$$\operatorname{sgn}f = \begin{cases} +1, & \text{if }f\mbox { is even} \\ -1, & \text{if }f \text{ is odd}. \end{cases}$$

With this definition,

$$\operatorname{sgn}\colon \mathrm{S}_n \rightarrow \{+1, -1\}\$$
is a group homomorphism ({+1, –1} is a group under multiplication, where +1 is e, the neutral element). The kernel of this homomorphism, that is, the set of all even permutations, is called the ALTERNATING GROUP A_(_n_). It is a normal subgroup of S_(_n_), and for it has elements. The group S_(_n_) is the semidirect product of A_(_n_) and any subgroup generated by a single transposition.

Furthermore, every permutation can be written as a product of _adjacent transpositions_, that is, transpositions of the form . For instance, the permutation _g_ from above can also be written as . The sorting algorithm bubble sort is an application of this fact. The representation of a permutation as a product of adjacent transpositions is also not unique.

Cycles

A cycle of _length_ _k_ is a permutation _f_ for which there exists an element _x_ in {1,...,_n_} such that _x_, _f_(_x_), _f_²(_x_), ..., _f_^(_k_)(_x_) = _x_ are the only elements moved by _f_; it is required that since with the element _x_ itself would not be moved either. The permutation _h_ defined by

$$h = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 4 & 2 & 1 & 3 & 5\end{pmatrix}$$

is a cycle of length three, since , and , leaving 2 and 5 untouched. We denote such a cycle by , but it could equally well be written or by starting at a different point. The order of a cycle is equal to its length. Cycles of length two are transpositions. Two cycles are _disjoint_ if they move disjoint subsets of elements. Disjoint cycles commute: for example, in S₆ there is the equality . Every element of S_(_n_) can be written as a product of disjoint cycles; this representation is unique up to the order of the factors, and the freedom present in representing each individual cycle by choosing its starting point.

Cycles admit the following conjugation property with any permutation σ, this property is often used to obtain its generators and relations.

$$\sigma\begin{pmatrix} a & b & c & \ldots \end{pmatrix}\sigma^{-1}=\begin{pmatrix}\sigma(a) & \sigma(b) & \sigma(c) & \ldots\end{pmatrix}$$

Special elements

Certain elements of the symmetric group of {1, 2, ..., _n_} are of particular interest (these can be generalized to the symmetric group of any finite totally ordered set, but not to that of an unordered set).

The is the one given by:

$$\begin{pmatrix} 1 & 2 & \cdots & n\\
n & n-1 & \cdots & 1\end{pmatrix}.$$
This is the unique maximal element with respect to the Bruhat order and the longest element in the symmetric group with respect to generating set consisting of the adjacent transpositions , .

This is an involution, and consists of ⌊n/2⌋ (non-adjacent) transpositions

$$(1\,n)(2\,n-1)\cdots,\text{ or }\sum_{k=1}^{n-1} k = \frac{n(n-1)}{2}\text{ adjacent transpositions: }$$



        (n n − 1)(n − 1 n − 2)⋯(2 1)(n − 1 n − 2)(n − 2 n − 3)⋯,

so it thus has sign:

$$\mathrm{sgn}(\rho_n) = (-1)^{\lfloor n/2 \rfloor} =(-1)^{n(n-1)/2} = \begin{cases}
+1 & n \equiv 0,1 \pmod{4}\\
-1 & n \equiv 2,3 \pmod{4}
\end{cases}$$
which is 4-periodic in _n_.

In S_(2_n_), the _perfect shuffle_ is the permutation that splits the set into 2 piles and interleaves them. Its sign is also ( − 1)^(⌊n/2⌋).

Note that the reverse on _n_ elements and perfect shuffle on 2_n_ elements have the same sign; these are important to the classification of Clifford algebras, which are 8-periodic.


Conjugacy classes

The conjugacy classes of S_(_n_) correspond to the cycle structures of permutations; that is, two elements of S_(_n_) are conjugate in S_(_n_) if and only if they consist of the same number of disjoint cycles of the same lengths. For instance, in S₅, (1 2 3)(4 5) and (1 4 3)(2 5) are conjugate; (1 2 3)(4 5) and (1 2)(4 5) are not. A conjugating element of S_(_n_) can be constructed in "two line notation" by placing the "cycle notations" of the two conjugate permutations on top of one another. Continuing the previous example:

$$k = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 1 & 4 & 3 & 2 & 5\end{pmatrix}$$

which can be written as the product of cycles, namely: (2 4).

This permutation then relates (1 2 3)(4 5) and (1 4 3)(2 5) via conjugation, that is,

(2 4) ∘ (1 2 3)(4 5) ∘ (2 4) = (1 4 3)(2 5).

It is clear that such a permutation is not unique.


Low degree groups

The low-degree symmetric groups have simpler and exceptional structure, and often must be treated separately.

S₀ and S₁: The symmetric groups on the empty set and the singleton set are trivial, which corresponds to . In this case the alternating group agrees with the symmetric group, rather than being an index 2 subgroup, and the sign map is trivial. In the case of S₀, its only member is the empty function.

S₂: This group consists of exactly two elements: the identity and the permutation swapping the two points. It is a cyclic group and is thus abelian. In Galois theory, this corresponds to the fact that the quadratic formula gives a direct solution to the general quadratic polynomial after extracting only a single root. In invariant theory, the representation theory of the symmetric group on two points is quite simple and is seen as writing a function of two variables as a sum of its symmetric and anti-symmetric parts: Setting , and , one gets that . This process is known as symmetrization.

S₃: S₃ is the first nonabelian symmetric group. This group is isomorphic to the dihedral group of order 6, the group of reflection and rotation symmetries of an equilateral triangle, since these symmetries permute the three vertices of the triangle. Cycles of length two correspond to reflections, and cycles of length three are rotations. In Galois theory, the sign map from S₃ to S₂ corresponds to the resolving quadratic for a cubic polynomial, as discovered by Gerolamo Cardano, while the A₃ kernel corresponds to the use of the discrete Fourier transform of order 3 in the solution, in the form of Lagrange resolvents.

S₄: The group S₄ is isomorphic to the group of proper rotations about opposite faces, opposite diagonals and opposite edges, 9, 8 and 6 permutations, of the cube.[8] Beyond the group A₄, S₄ has a Klein four-group V as a proper normal subgroup, namely the even transpositions  with quotient S₃. In Galois theory, this map corresponds to the resolving cubic to a quartic polynomial, which allows the quartic to be solved by radicals, as established by Lodovico Ferrari. The Klein group can be understood in terms of the Lagrange resolvents of the quartic. The map from S₄ to S₃ also yields a 2-dimensional irreducible representation, which is an irreducible representation of a symmetric group of degree _n_ of dimension below , which only occurs for .

S₅: S₅ is the first non-solvable symmetric group. Along with the special linear group  and the icosahedral group , S₅ is one of the three non-solvable groups of order 120, up to isomorphism. S₅ is the Galois group of the general quintic equation, and the fact that S₅ is not a solvable group translates into the non-existence of a general formula to solve quintic polynomials by radicals. There is an exotic inclusion map  as a transitive subgroup; the obvious inclusion map  fixes a point and thus is not transitive. This yields the outer automorphism of S₆, discussed below, and corresponds to the resolvent sextic of a quintic.

S₆: Unlike all other symmetric groups, S₆, has an outer automorphism. Using the language of Galois theory, this can also be understood in terms of Lagrange resolvents. The resolvent of a quintic is of degree 6—this corresponds to an exotic inclusion map  as a transitive subgroup (the obvious inclusion map  fixes a point and thus is not transitive) and, while this map does not make the general quintic solvable, it yields the exotic outer automorphism of S₆—see automorphisms of the symmetric and alternating groups for details.

    Note that while A₆ and A₇ have an exceptional Schur multiplier (a triple cover) and that these extend to triple covers of S₆ and S₇, these do not correspond to exceptional Schur multipliers of the symmetric group.

Maps between symmetric groups

Other than the trivial map and the sign map , the most notable homomorphisms between symmetric groups, in order of relative dimension, are:

-   corresponding to the exceptional normal subgroup ;

-   (or rather, a class of such maps up to inner automorphism) corresponding to the outer automorphism of S₆.

-   as a transitive subgroup, yielding the outer automorphism of S₆ as discussed above.

There are also a host of other homomorphisms where .


Properties

Symmetric groups are Coxeter groups and reflection groups. They can be realized as a group of reflections with respect to hyperplanes . Braid groups B_(_n_) admit symmetric groups S_(_n_) as quotient groups.

Cayley's theorem states that every group _G_ is isomorphic to a subgroup of the symmetric group on the elements of _G_, as a group acts on itself faithfully by (left or right) multiplication.


Relation with alternating group

For , the alternating group A_(_n_) is simple, and the induced quotient is the sign map: which is split by taking a transposition of two elements. Thus S_(_n_) is the semidirect product , and has no other proper normal subgroups, as they would intersect A_(_n_) in either the identity (and thus themselves be the identity or a 2-element group, which is not normal), or in A_(_n_) (and thus themselves be A_(_n_) or S_(_n_)).

S_(_n_) acts on its subgroup A_(_n_) by conjugation, and for , S_(_n_) is the full automorphism group of A_(_n_): Aut(A_(_n_)) ≅ S_(_n_). Conjugation by even elements are inner automorphisms of A_(_n_) while the outer automorphism of A_(_n_) of order 2 corresponds to conjugation by an odd element. For , there is an exceptional outer automorphism of A_(_n_) so S_(_n_) is not the full automorphism group of A_(_n_).

Conversely, for , S_(_n_) has no outer automorphisms, and for it has no center, so for it is a complete group, as discussed in automorphism group, below.

For , S_(_n_) is an almost simple group, as it lies between the simple group A_(_n_) and its group of automorphisms.

S_(_n_) can be embedded into A_(_n_+2) by appending the transposition to all odd permutations, while embedding into A_(_n_+1) is impossible for .


Generators and relations

The symmetric group on _n_-letters, S_(_n_), may be described as follows. It has generators: σ₁, …, σ_(n − 1) and relations:

-   σ_(i)² = 1,
-   σ_(i)σ_(j) = σ_(j)σ_(i) if j ≠ i ± 1,
-   $(\sigma_i\sigma_{i+1})^3 =1.\$

One thinks of σ_(i) as swapping the _i_th and position.

Other popular generating sets include the set of transpositions that swap 1 and _i_ for and a set containing any _n_-cycle and a 2-cycle of adjacent elements in the _n_-cycle.


Subgroup structure

A subgroup of a symmetric group is called a permutation group.

Normal subgroups

The normal subgroups of the finite symmetric groups are well understood. If , S_(_n_) has at most 2 elements, and so has no nontrivial proper subgroups. The alternating group of degree _n_ is always a normal subgroup, a proper one for and nontrivial for ; for it is in fact the only non-identity proper normal subgroup of S_(_n_), except when where there is one additional such normal subgroup, which is isomorphic to the Klein four group.

The symmetric group on an infinite set does not have an associated alternating group: not all elements can be written as a (finite) product of transpositions. However it does contain a normal subgroup _S_ of permutations that fix all but finitely many elements, and such permutations can be classified as either even or odd. The even elements of _S_ form the alternating subgroup _A_ of _S_, and since _A_ is even a characteristic subgroup of _S_, it is also a normal subgroup of the full symmetric group of the infinite set. The groups _A_ and _S_ are the only non-identity proper normal subgroups of the symmetric group on a countably infinite set. For more details see or .

Maximal subgroups

The maximal subgroups of the finite symmetric groups fall into three classes: the intransitive, the imprimitive, and the primitive. The intransitive maximal subgroups are exactly those of the form for . The imprimitive maximal subgroups are exactly those of the form Sym(_k_) wr Sym(_n_/_k_) where is a proper divisor of _n_ and "wr" denotes the wreath product acting imprimitively. The primitive maximal subgroups are more difficult to identify, but with the assistance of the O'Nan–Scott theorem and the classification of finite simple groups, gave a fairly satisfactory description of the maximal subgroups of this type according to .

Sylow subgroups

The Sylow subgroups of the symmetric groups are important examples of _p_-groups. They are more easily described in special cases first:

The Sylow _p_-subgroups of the symmetric group of degree _p_ are just the cyclic subgroups generated by _p_-cycles. There are such subgroups simply by counting generators. The normalizer therefore has order and is known as a Frobenius group (especially for ), and is the affine general linear group, .

The Sylow _p_-subgroups of the symmetric group of degree _p_² are the wreath product of two cyclic groups of order _p_. For instance, when , a Sylow 3-subgroup of Sym(9) is generated by and the elements _x_ = (1 2 3), _y_ = (4 5 6), _z_ = (7 8 9) , and every element of the Sylow 3-subgroup has the form _a_^(_i_)_x_^(_j_)_y_^(_k_)_z_^(_l_) for 0 ≤ _i_,_j_,_k_,_l_ ≤ 2.

The Sylow _p_-subgroups of the symmetric group of degree _p_^(_n_) are sometimes denoted W_(_p_)(_n_), and using this notation one has that is the wreath product of W_(_p_)(_n_) and W_(_p_)(1).

In general, the Sylow _p_-subgroups of the symmetric group of degree _n_ are a direct product of _a__(_i_) copies of W_(_p_)(_i_), where 0 ≤ _a_(i)_ ≤ _p_ − 1 and _n_ = _a_₀ + _p_·_a_₁ + ... + _p_^(k)·_a__(_k_) (the base _p_ expansion of _n_).

For instance, W₂(1) = C₂ and W₂(2) = D₈, the dihedral group of order 8, and so a Sylow 2-subgroup of the symmetric group of degree 7 is generated by and is isomorphic to .

These calculations are attributed to and described in more detail in . Note however that attributes the result to an 1844 work of Cauchy, and mentions that it is even covered in textbook form in .

 Transitive subgroups

A TRANSITIVE SUBGROUP of S_(_n_) is a subgroup whose action on {1, 2, ,..., _n_} is transitive. For example, the Galois group of a (finite) Galois extension is a transitive subgroup of S_(_n_), for some _n_.


Automorphism group

  ------------ -------------- -------------- ------------
  _n_          Aut(S_(_n_))   Out(S_(_n_))   Z(S_(_n_))
  _n_ ≠ 2, 6   S_(_n_)        C₁             C₁
  _n_ = 2      C₁             C₁             S₂
  _n_ = 6      S₆ ⋊ C₂        C₂             C₁
  ------------ -------------- -------------- ------------

For , S_(_n_) is a complete group: its center and outer automorphism group are both trivial.

For , the automorphism group is trivial, but S₂ is not trivial: it is isomorphic to C₂, which is abelian, and hence the center is the whole group.

For , it has an outer automorphism of order 2: , and the automorphism group is a semidirect product .

In fact, for any set _X_ of cardinality other than 6, every automorphism of the symmetric group on _X_ is inner, a result first due to according to .


Homology

The group homology of S_(_n_) is quite regular and stabilizes: the first homology (concretely, the abelianization) is:

$$H_1(\mathrm{S}_n,\mathbf{Z}) = \begin{cases} 0 & n < 2\\
\mathbf{Z}/2 & n \geq 2.\end{cases}$$

The first homology group is the abelianization, and corresponds to the sign map S_(_n_) → S₂ which is the abelianization for _n_ ≥ 2; for _n_ < 2 the symmetric group is trivial. This homology is easily computed as follows: S_(_n_) is generated by involutions (2-cycles, which have order 2), so the only non-trivial maps are to S₂ and all involutions are conjugate, hence map to the same element in the abelianization (since conjugation is trivial in abelian groups). Thus the only possible maps send an involution to 1 (the trivial map) or to −1 (the sign map). One must also show that the sign map is well-defined, but assuming that, this gives the first homology of S_(_n_).

The second homology (concretely, the Schur multiplier) is:

$$H_2(\mathrm{S}_n,\mathbf{Z}) = \begin{cases} 0 & n < 4\\
\mathbf{Z}/2 & n \geq 4.\end{cases}$$
This was computed in , and corresponds to the double cover of the symmetric group, 2 · S_(_n_).

Note that the exceptional low-dimensional homology of the alternating group (H₁(A₃) ≅ H₁(A₄) ≅ C₃, corresponding to non-trivial abelianization, and H₂(A₆) ≅ H₂(A₇) ≅ C₆, due to the exceptional 3-fold cover) does not change the homology of the symmetric group; the alternating group phenomena do yield symmetric group phenomena – the map A₄ ↠ C₃ extends to S₄ ↠ S₃, and the triple covers of A₆ and A₇ extend to triple covers of S₆ and S₇ – but these are not _homological_ – the map S₄ ↠ S₃ does not change the abelianization of S₄, and the triple covers do not correspond to homology either.

The homology "stabilizes" in the sense of stable homotopy theory: there is an inclusion map , and for fixed _k_, the induced map on homology is an isomorphism for sufficiently high _n_. This is analogous to the homology of families Lie groups stabilizing.

The homology of the infinite symmetric group is computed in , with the cohomology algebra forming a Hopf algebra.


Representation theory

The representation theory of the symmetric group is a particular case of the representation theory of finite groups, for which a concrete and detailed theory can be obtained. This has a large area of potential applications, from symmetric function theory to problems of quantum mechanics for a number of identical particles.

The symmetric group S_(_n_) has order _n_!. Its conjugacy classes are labeled by partitions of _n_. Therefore, according to the representation theory of a finite group, the number of inequivalent irreducible representations, over the complex numbers, is equal to the number of partitions of _n_. Unlike the general situation for finite groups, there is in fact a natural way to parametrize irreducible representation by the same set that parametrizes conjugacy classes, namely by partitions of _n_ or equivalently Young diagrams of size _n_.

Each such irreducible representation can be realized over the integers (every permutation acting by a matrix with integer coefficients); it can be explicitly constructed by computing the Young symmetrizers acting on a space generated by the Young tableaux of shape given by the Young diagram.

Over other fields the situation can become much more complicated. If the field _K_ has characteristic equal to zero or greater than _n_ then by Maschke's theorem the group algebra _K_S_(_n_) is semisimple. In these cases the irreducible representations defined over the integers give the complete set of irreducible representations (after reduction modulo the characteristic if necessary).

However, the irreducible representations of the symmetric group are not known in arbitrary characteristic. In this context it is more usual to use the language of modules rather than representations. The representation obtained from an irreducible representation defined over the integers by reducing modulo the characteristic will not in general be irreducible. The modules so constructed are called _Specht modules_, and every irreducible does arise inside some such module. There are now fewer irreducibles, and although they can be classified they are very poorly understood. For example, even their dimensions are not known in general.

The determination of the irreducible modules for the symmetric group over an arbitrary field is widely regarded as one of the most important open problems in representation theory.


See also

-   History of group theory
-   Symmetric inverse semigroup
-   Signed symmetric group
-   Generalized symmetric group
-   Symmetric power


References

-   -   -   .

-   -   -   -   -   -   -   -


External links

-   -   -   -   Marcus du Sautoy: Symmetry, reality's riddle (video of a talk)
-   OEIS Entries dealing with the Symmetric Group

Category:Permutation groups Category:Symmetry Category:Finite reflection groups

[1] Jacobson (2009), p. 31.

[2]

[3]

[4]

[5] Jacobson (2009), p. 32. Theorem 1.1.

[6]

[7]

[8] Die Untergruppenverbände der Gruppen der ordnung weniger als 100, Habilitationsschrift, J. Neubuser, Universität Kiel, Germany, 1967.