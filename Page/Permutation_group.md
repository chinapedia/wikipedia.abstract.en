In mathematics, a PERMUTATION GROUP is a group _G_ whose elements are permutations of a given set _M_ and whose group operation is the composition of permutations in _G_ (which are thought of as bijective functions from the set _M_ to itself). The group of _all_ permutations of a set _M_ is the symmetric group of _M_, often written as Sym(_M_).[1] The term _permutation group_ thus means a subgroup of the symmetric group. If then, Sym(_M_), the _symmetric group on n letters_ is usually denoted by S_(_n_).

By Cayley's theorem, every group is isomorphic to some permutation group.

The way in which the elements of a permutation group permute the elements of the set is called its group action. Group actions have applications in the study of symmetries, combinatorics and many other branches of mathematics, physics and chemistry.

Rubik's_cube.svg invented in 1974 by Ernő Rubik has been used as an illustration of permutation groups. Each rotation of a layer of the cube results in a permutation of the surface colors and is a member of the group. The permutation group of the cube is called the Rubik's cube group.]]


Basic properties and terminology

Being a subgroup of a symmetric group, all that is necessary for a set of permutations to satisfy the group axioms and be a permutation group is that it contain the identity permutation, the inverse permutation of each permutation it contains, and be closed under composition of its permutations.[2] A general property of finite groups implies that a finite nonempty subset of a symmetric group is again a group if and only if it is closed under the group operation.[3]

The DEGREE of a group of permutations of a finite set is the number of elements in the set. The ORDER of a group (of any type) is the number of elements (cardinality) in the group. By Lagrange's theorem, the order of any finite permutation group of degree _n_ must divide _n_! (_n_-factorial, the order of the symmetric group _S__(_n_)).


Notation

Since permutations are bijections of a set, they can be represented by Cauchy's _two-line notation_.[4] This notation lists each of the elements of _M_ in the first row, and for each element, its image under the permutation below it in the second row. If σ is a permutation of the set M = {x₁, x₂, …, x_(n)} then,

    \sigma = \begin{pmatrix}

x_1 & x_2 & x_3 & \cdots & x_n \\ \sigma(x_1) &\sigma(x_2) & \sigma(x_3) & \cdots& \sigma(x_n)\end{pmatrix}. For instance, a particular permutation of the set {1,2,3,4,5} can be written as:

    \sigma=\begin{pmatrix}

1 & 2 & 3 & 4 & 5 \\ 2 & 5 & 4 & 3 & 1\end{pmatrix}; this means that _σ_ satisfies _σ_(1)=2, _σ_(2)=5, _σ_(3)=4, _σ_(4)=3, and _σ_(5)=1. The elements of _M_ need not appear in any special order in the first row. This permutation could also be written as:

    \sigma=\begin{pmatrix}

3 & 2 & 5 & 1 & 4 \\ 4 & 5 & 1 & 2 & 3\end{pmatrix}.

Permutations are also often written in cyclic notation (_cyclic form_)[5] so that given the set _M_ = {1,2,3,4}, a permutation _g_ of _M_ with _g_(1) = 2, _g_(2) = 4, _g_(4) = 1 and _g_(3) = 3 will be written as (1,2,4)(3), or more commonly, (1,2,4) since 3 is left unchanged; if the objects are denoted by single letters or digits, commas and spaces can also be dispensed with, and we have a notation such as (124). The permutation written above in 2-line notation would be written in cyclic notation as σ = (125)(34).


Composition of permutations–the group product

The product of two permutations is defined as their composition as functions, so σ ⋅ π is the function that maps any element _x_ of the set to σ(π(x)). Note that the rightmost permutation is applied to the argument first,[6][7] because of the way function application is written. Some authors prefer the leftmost factor acting first, [8] [9] [10] but to that end permutations must be written to the _right_ of their argument, often as a superscript, so the permutation σ acting on the element x results in the image x^(σ). With this convention, the product is given by x^(σ ⋅ π) = (x^(σ))^(π). However, this gives a _different_ rule for multiplying permutations. This convention is commonly used in the permutation group literature, but this article uses the convention where the rightmost permutation is applied first.

Since the composition of two bijections always gives another bijection, the product of two permutations is again a permutation. In two-line notation, the product of two permutations is obtained by rearranging the columns of the second (leftmost) permutation so that its first row is identical with the second row of the first (rightmost) permutation. The product can then be written as the first row of the first permutation over the second row of the modified second permutation. For example, given the permutations,

$$P = \begin{pmatrix}1 & 2 & 3 & 4 & 5 \\2 & 4 & 1 & 3 & 5 \end{pmatrix}\quad \text{  and  } \quad Q = \begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 5 & 4 & 3 & 2 & 1 \end{pmatrix},$$
the product _QP_ is:

$$QP =\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 5 & 4 & 3 & 2 & 1 \end{pmatrix}\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\2 & 4 & 1 & 3 & 5 \end{pmatrix} = \begin{pmatrix} 2 & 4 & 1 & 3 & 5 \\ 4 & 2 & 5 & 3 & 1 \end{pmatrix} \begin{pmatrix}1 & 2 & 3 & 4 & 5 \\2 & 4 & 1 & 3 & 5 \end{pmatrix} =  \begin{pmatrix}1 & 2 & 3 & 4 & 5 \\4 & 2 & 5 & 3 & 1 \end{pmatrix}.$$

The composition of permutations, when they are written in cyclic form, is obtained by juxtaposing the two permutations (with the second one written on the left) and then simplifying to a disjoint cycle form if desired. Thus, in cyclic notation the above product would be given by:

_Q_ ⋅ _P_ = (15)(24) ⋅ (1243) = (1435).

Since function composition is associative, so is the product operation on permutations: (σ ⋅ π) ⋅ ρ = σ ⋅ (π ⋅ ρ). Therefore, products of two or more permutations are usually written without adding parentheses to express grouping; they are also usually written without a dot or other sign to indicate multiplication (the dots of the previous example were added for emphasis, so would simply be written as σπρ).


Neutral element and inverses

The identity permutation, which maps every element of the set to itself, is the neutral element for this product. In two-line notation, the identity is

$$\begin{pmatrix}1 & 2 & 3 & \cdots & n \\ 1 & 2 & 3 & \cdots & n\end{pmatrix}.$$
In cyclic notation, _e_ = (1)(2)(3)...(_n_) which by convention is also denoted by just (1) or even ().[11]

Since bijections have inverses, so do permutations, and the inverse _σ_^(−1) of _σ_ is again a permutation. Explicitly, whenever _σ_(_x_)=_y_ one also has _σ_^(−1)(_y_)=_x_. In two-line notation the inverse can be obtained by interchanging the two lines (and sorting the columns if one wishes the first line to be in a given order). For instance

$$\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 2 & 5 & 4 & 3 & 1\end{pmatrix}^{-1}
      =\begin{pmatrix}2 & 5 & 4 & 3 & 1\\ 1 & 2 & 3 & 4 & 5 \end{pmatrix}
      =\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 5 & 1 & 4 & 3 & 2\end{pmatrix}.$$

To obtain the inverse of a single cycle, we reverse the order of its elements. Thus,

(125)^( − 1) = (521) = (152).

To obtain the inverse of a product of cycles, we first reverse the order of the cycles, and then we take the inverse of each as above. Thus,

[(125)(34)]^( − 1) = (34)^( − 1)(125)^( − 1) = (43)(521) = (34)(152).

Having an associative product, an identity element, and inverses for all its elements, makes the set of all permutations of _M_ into a group, Sym(_M_); a permutation group.


Examples

Consider the following set _G_₁ of permutations of the set _M_ = {1,2,3,4}:

-   _e_ = (1)(2)(3)(4)= (1)
    -   This is the identity, the trivial permutation which fixes each element.
-   _a_ = (1 2)(3)(4) = (1 2)
    -   This permutation interchanges 1 and 2, and fixes 3 and 4.
-   _b_ = (1)(2)(3 4) = (3 4)
    -   Like the previous one, but exchanging 3 and 4, and fixing the others.
-   _ab_ = (1 2)(3 4)
    -   This permutation, which is the composition of the previous two, exchanges simultaneously 1 with 2, and 3 with 4.

_G_₁ forms a group, since _aa_ = _bb_ = _e_, _ba_ = _ab_, and _abab_ = _e_. This permutation group is isomorphic, as an abstract group, to the Klein group _V_₄.

As another example consider the group of symmetries of a square. Let the vertices of a square be labeled 1, 2, 3 and 4 (counterclockwise around the square starting with 1 in the top left corner). The symmetries are determined by the images of the vertices, that can, in turn, be described by permutations. The rotation by 90° (counterclockwise) about the center of the square is described by the permutation (1234). The 180° and 270° rotations are given by (13)(24) and (1432), respectively. The reflection about the horizontal line through the center is given by (12)(34) and the corresponding vertical line reflection is (14)(23). The reflection about the 1,3−diagonal line is (24) and reflection about the 2,4−diagonal is (13). The only remaining symmetry is the identity (1)(2)(3)(4). This permutation group is abstractly known as the dihedral group of order 8.


Group actions

In the above example of the symmetry group of a square, the permutations "describe" the movement of the vertices of the square induced by the group of symmetries. It is common to say that these group elements are "acting" on the set of vertices of the square. This idea can be made precise by formally defining a GROUP ACTION.[12]

Let _G_ be a group and _M_ a nonempty set. An ACTION of _G_ on _M_ is a function _f_: _G_ × _M_ → _M_ such that

-   _f_(1, _x_) = _x_, for all _x_ in _M_ (1 is the identity (neutral) element of the group _G_), and
-   _f_(_g_, _f_(_h_, _x_)) = _f_(_gh_, _x_), for all _g_,_h_ in _G_ and all _x_ in _M_.

This last condition can also be expressed as saying that the action induces a group homomorphism from _G_ into _Sym_(_M_).[13] Any such homomorphism is called a _(permutation) representation_ of _G_ on _M_.

For any permutation group, the action that sends (_g_, _x_) → _g_(_x_) is called the NATURAL ACTION of _G_ on _M_. This is the action that is assumed unless otherwise indicated.[14] In the example of the symmetry group of the square, the group's action on the set of vertices is the natural action. However, this group also induces an action on the set of four triangles in the square, which are: _t_₁ = 234, _t_₂ = 134, _t_₃ = 124 and _t_₄ = 123. It also acts on the two diagonals: _d_₁ = 13 and _d_₂ = 24.

  Group element   Action on triangles      Action on diagonals
  --------------- ------------------------ ---------------------
  (1)             (1)                      (1)
  (1234)          (_t_₁ _t_₂ _t_₃ _t_₄)    (_d_₁ _d_₂)
  (13)(24)        (_t_₁ _t_₃)(_t_₂ _t_₄)   (1)
  (1432)          (_t_₁ _t_₄ _t_₃ _t_₂)    (_d_₁ _d_₂)
  (12)(34)        (_t_₁ _t_₂)(_t_₃ _t_₄)   (_d_₁ _d_₂)
  (14)(23)        (_t_₁ _t_₄)(_t_₂ _t_₃)   (_d_₁ _d_₂)
  (13)            (_t_₁ _t_₃)              (1)
  (24)            (_t_₂ _t_₄)              (1)


Cayley's theorem

Any group _G_ can act on itself (the elements of the group being thought of as the set _M_) in many ways. In particular, there is a regular action given by (left) multiplication in the group. That is, _f_(_g_, _x_) = _gx_ for all _g_ and _x_ in _G_. For each fixed _g_, the function _f__(_g_)(_x_) = _gx_ is a bijection on _G_ and therefore a permutation of the "set" _G_. Each element of _G_ can be thought of as a permutation in this way and so, _G_ is isomorphic to a permutation group; this is the content of Cayley's theorem.

Consider the group _G_₁ acting on the set {1,2,3,4} given above. Let the elements of this group be denoted by _e_, _a_, _b_ and _c_ = _ab_ = _ba_. The action of _G_₁ on itself described in Cayley's theorem gives the following permutation representation:

    _f__(_e_) ↦ (_e_)(_a_)(_b_)(_c_)
    _f__(_a_) ↦ (_ea_)(_bc_)
    _f__(_b_) ↦ (_eb_)(_ac_)
    _f__(_c_) ↦ (_ec_)(_ab_).


Permutation isomorphic groups

If _G_ and _H_ are two permutation groups on sets _X_ and _Y_ with actions _f_₁ and _f_₂ respectively, then we say that _G_ and _H_ are _permutation isomorphic_ (_isomorphic as permutation groups_) if there exists a bijective map and a group isomorphism such that:[15]

    _λ_(_f_₁(_g_, _x_)) = _f_₂(_ψ_(_g_), _λ_(_x_)) for all _g_ in _G_ and _x_ in _X_.

If this is equivalent to _G_ and _H_ being conjugate as subgroups of Sym(_X_).[16] The special case where and _ψ_ is the identity map gives rise to the concept of _equivalent actions_ of a group.[17]

In the example of the symmetries of a square given above, the natural action on the set {1,2,3,4} is equivalent to the action on the triangles. The bijection _λ_ between the sets is given by . The natural action of group _G_₁ above and its action on itself (via left multiplication) are not equivalent as the natural action has fixed points and the second action does not.


History

The study of groups originally grew out of an understanding of permutation groups.[18] Permutations had themselves been intensively studied by Lagrange in 1770 in his work on the algebraic solutions of polynomial equations. This subject flourished and by the mid 19th century a well-developed theory of permutation groups existed, codified by Camille Jordan in his book _Traité des Substitutions et des Équations Algébriques_ of 1870. Jordan's book was, in turn, based on the papers that were left by Évariste Galois in 1832.

When Cayley introduced the concept of an abstract group, it was not immediately clear whether or not this was a larger collection of objects than the known permutation groups (which had a definition different from the modern one). Cayley went on to prove that the two concepts were equivalent in Cayley's theorem.[19]

Another classical text containing several chapters on permutation groups is Burnside's _Theory of Groups of Finite Order_ of 1911.[20] The first half of the twentieth century was a fallow period in the study of group theory in general, but interest in permutation groups was revived in the 1950s by H. Wielandt whose German lecture notes were reprinted as _Finite Permutation Groups_ in 1964.[21]


See also

-   Rank 3 permutation group
-   Primitive group
-   Oligomorphic group


Notes


References

-   -   -


Further reading

-   Akos Seress. _Permutation group algorithms_. Cambridge Tracts in Mathematics, 152. Cambridge University Press, Cambridge, 2003.
-   Meenaxi Bhattacharjee, Dugald Macpherson, Rögnvaldur G. Möller and Peter M. Neumann. _Notes on Infinite Permutation Groups_. Number 1698 in Lecture Notes in Mathematics. Springer-Verlag, 1998.
-   Peter J. Cameron. _Permutation Groups_. LMS Student Text 45. Cambridge University Press, Cambridge, 1999.
-   Peter J. Cameron. _Oligomorphic Permutation Groups_. Cambridge University Press, Cambridge, 1990.


External links

-   -   Alexander Hulpke. GAP Data Library "Transitive Permutation Groups".

Permutation_groups Category:Finite groups

[1] The notations S_(_M_) and S^(_M_) are also used.

[2]

[3]

[4]

[5] especially when the algebraic properties of the permutation are of interest.

[6]

[7]  – note especially the footnote on this page.

[8]  – see the comment following Example 1.2.2

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]