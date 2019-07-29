Railroad-Tracks-Perspective.jpg "at infinity". In a projective plane this is actually true.]] In mathematics, a PROJECTIVE PLANE is a geometric structure that extends the concept of a plane. In the ordinary Euclidean plane, two lines typically intersect in a single point, but there are some pairs of lines (namely, parallel lines) that do not intersect. A projective plane can be thought of as an ordinary plane equipped with additional "points at infinity" where parallel lines intersect. Thus _any_ two distinct lines in a projective plane intersect in one and only one point.

Renaissance artists, in developing the techniques of drawing in perspective, laid the groundwork for this mathematical topic. The archetypical example is the real projective plane, also known as the EXTENDED EUCLIDEAN PLANE.[1] This example, in slightly different guises, is important in algebraic geometry, topology and projective geometry where it may be denoted variously by , RP², or P₂(R), among other notations. There are many other projective planes, both infinite, such as the complex projective plane, and finite, such as the Fano plane.

A projective plane is a 2-dimensional projective space, but not all projective planes can be embedded in 3-dimensional projective spaces. Such embeddability is a consequence of a property known as Desargues' theorem, not shared by all projective planes.


Definition

A PROJECTIVE PLANE consists of a set of LINES, a set of POINTS, and a relation between points and lines called INCIDENCE, having the following properties:[2]

1.  Given any two distinct points, there is exactly one line incident with both of them.
2.  Given any two distinct lines, there is exactly one point incident with both of them.
3.  There are four points such that no line is incident with more than two of them.

The second condition means that there are no parallel lines. The last condition excludes the so-called _DEGENERATE_ cases (see below). The term "incidence" is used to emphasize the symmetric nature of the relationship between points and lines. Thus the expression "point _P_ is incident with line _ℓ_ " is used instead of either "_P_ is on _ℓ_ " or "_ℓ_ passes through _P_ ".


Some examples

The extended Euclidean plane

To turn the ordinary Euclidean plane into a projective plane proceed as follows:

1.  To each set of mutually parallel lines add a single new point. That point is considered incident with each line of this set. The point added is distinct for each such set. These new points are called _points at infinity_.
2.  Add a new line, which is considered incident with all the points at infinity (and no other points). This line is called _the_ line at infinity.

The extended structure is a projective plane and is called the EXTENDED EUCLIDEAN PLANE or the real projective plane. The process outlined above, used to obtain it, is called "projective completion" or _projectivization_. This plane can also be constructed by starting from R³ viewed as a vector space, see below.

Projective Moulton plane

Moulton_plane2.svg The points of the Moulton plane are the points of the Euclidean plane, with coordinates in the usual way. To create the Moulton plane from the Euclidean plane some of the lines are redefined. That is, some of their point sets will be changed, but other lines will remain unchanged. Redefine all the lines with negative slopes so that they look like "bent" lines, meaning that these lines keep their points with negative _x_-coordinates, but the rest of their points are replaced with the points of the line with the same _y_-intercept but twice the slope wherever their _x_-coordinate is positive.

The Moulton plane has parallel classes of lines and is an affine plane. It can be projectivized, as in the previous example, to obtain the PROJECTIVE MOULTON PLANE. Desargues' theorem is not a valid theorem in either the Moulton plane or the projective Moulton plane.

A finite example

This example has just thirteen points and thirteen lines. We label the points P₁,...,P₁₃ and the lines m₁,...,m₁₃. The incidence relation (which points are on which lines) can be given by the following incidence matrix. The rows are labelled by the points and the columns are labelled by the lines. A 1 in row _i_ and column _j_ means that the point P_(_i_) is on the line m_(_j_), while a 0 (which we represent here by a blank cell for ease of reading) means that they are not incident. The matrix is in Paige-Wexler normal form.



        {| class="wikitable"

|- !  !! m₁!! m₂ !! m₃!! m₄!! m₅!! m₆!! m₇!! m₈!! m₉!! m₁₀!! m₁₁!! m₁₂!! m₁₃ |- | P₁ || 1 || 1 || 1 || 1 ||   ||   ||   ||   ||   ||   ||   ||   ||   |- | P₂ || 1 ||   ||   ||   || 1 || 1 || 1 ||   ||   ||   ||   ||   ||   |- | P₃ || 1 ||   || ||   ||   ||   ||   || 1|| 1 || 1 ||   ||   ||   |- | P₄ || 1 ||   ||   ||   ||   || ||  || ||  ||   || 1 || 1 || 1 |- | P₅ ||   || 1 ||   ||   || 1 || ||  ||1||   ||   || 1 ||   ||   |- | P₆ ||   || 1 ||   ||   ||   ||1||  || || 1 ||   ||   || 1 ||   |- | P₇ || || 1 || || || || || 1|| || || 1 || || || 1 |- | P₈ || || || 1 || || 1 || || || || 1 || || || || 1 |- | P₉ || || || 1 || || ||1|| || || || 1 || 1 || || |- | P₁₀ || || || 1 || || || || 1||1|| || || || 1 || |- | P₁₁ || || || || 1 || 1 || || || || || 1 || || 1 || |- | P₁₂ || || || || 1 || ||1|| ||1|| || || || || 1 |- | P₁₃ || || || || 1 || || || 1|| || 1 || || 1 || || |}

To verify the conditions that make this a projective plane, observe that every two rows have exactly one common column in which 1's appear (every pair of distinct points are on exactly one common line) and that every two columns have exactly one common row in which 1's appear (every pair of distinct lines meet at exactly one point). Among many possibilities, the points P₁,P₄,P₅,and P₈, for example, will satisfy the third condition. This example is known as the PROJECTIVE PLANE OF ORDER THREE.


Vector space construction

Though the line at infinity of the extended real plane may appear to have a different nature than the other lines of that projective plane, this is not the case. Another construction of the same projective plane shows that no line can be distinguished (on geometrical grounds) from any other. In this construction, each "point" of the real projective plane is the one-dimensional subspace (a _geometric_ line) through the origin in a 3-dimensional vector space, and a "line" in the projective plane arises from a (_geometric_) plane through the origin in the 3-space. This idea can be generalized and made more precise as follows.[3]

Let _K_ be any division ring (skewfield). Let _K_³ denote the set of all triples _x_ = (_x_₀, _x_₁, _x_₂) of elements of _K_ (a Cartesian product viewed as a vector space). For any nonzero _x_ in _K_³, the minimal subspace of _K_³ containing _x_ (which may be visualized as all the vectors in a line through the origin) is the subset

{_k__x_ : _k_ ∈ _K_}
of _K_³. Similarly, let _x_ and _y_ be linearly independent elements of _K_³, meaning that implies that . The minimal subspace of _K_³ containing _x_ and _y_ (which may be visualized as all the vectors in a plane through the origin) is the subset

{_k__x_ + _m__y_ : _k_, _m_ ∈ _K_}
of _K_³. This 2-dimensional subspace contains various 1-dimensional subspaces through the origin that may be obtained by fixing _k_ and _m_ and taking the multiples of the resulting vector. Different choices of _k_ and _m_ that are in the same ratio will give the same line.

The PROJECTIVE PLANE over _K_, denoted PG(2,_K_) or _K_P², has a set of _points_ consisting of all the 1-dimensional subspaces in _K_³. A subset _L_ of the points of PG(2,_K_) is a _line_ in PG(2,_K_) if there exists a 2-dimensional subspace of _K_³ whose set of 1-dimensional subspaces is exactly _L_.

Verifying that this construction produces a projective plane is usually left as a linear algebra exercise.

An alternate (algebraic) view of this construction is as follows. The points of this projective plane are the equivalence classes of the set modulo the equivalence relation

    _x_ ~ _kx_, for all _k_ in _K_^(×).

Lines in the projective plane are defined exactly as above.

The coordinates (_x_₀, _x_₁, _x_₂) of a point in PG(2,_K_) are called HOMOGENEOUS COORDINATES. Each triple (_x_₀, _x_₁, _x_₂) represents a well-defined point in PG(2,_K_), except for the triple (0, 0, 0), which represents no point. Each point in PG(2,_K_), however, is represented by many triples.

If _K_ is a topological space, then _K_P², inherits a topology via the product, subspace, and quotient topologies.

Classical examples

The real projective plane RP², arises when _K_ is taken to be the real numbers, R. As a closed, non-orientable real 2-manifold, it serves as a fundamental example in topology.[4]

In this construction consider the unit sphere centered at the origin in R³. Each of the R³ lines in this construction intersects the sphere at two antipodal points. Since the R³ line represents a point of RP², we will obtain the same model of RP² by identifying the antipodal points of the sphere. The lines of RP² will be the great circles of the sphere after this identification of antipodal points. This description gives the standard model of elliptic geometry.

The complex projective plane CP², arises when _K_ is taken to be the complex numbers, C. It is a closed complex 2-manifold, and hence a closed, orientable real 4-manifold. It and projective planes over other fields (known as PAPPIAN PLANES) serve as fundamental examples in algebraic geometry.[5]

The quaternionic projective plane HP² is also of independent interest.

Finite field planes

By Wedderburn's Theorem, a finite division ring must be commutative and so a field. Thus, the finite examples of this construction are known as "field planes". Taking _K_ to be the finite field of _q_ = _p_^(_n_) elements with prime _p_ produces a projective plane of _q_² + _q_ + 1 points. The field planes are usually denoted by PG(2,_q_) where PG stands for projective geometry, the "2" is the dimension and _q_ is called the ORDER of the plane (it is one less than the number of points on any line). The Fano plane, discussed below, is denoted by PG(2,2). The third example above is the projective plane PG(2,3).

fano_plane.svg

The Fano plane is the projective plane arising from the field of two elements. It is the smallest projective plane, with only seven points and seven lines. In the figure at right, the seven points are shown as small black balls, and the seven lines are shown as six line segments and a circle. However, one could equivalently consider the balls to be the "lines" and the line segments and circle to be the "points" – this is an example of duality in the projective plane: if the lines and points are interchanged, the result is still a projective plane (see below). A permutation of the seven points that carries collinear points (points on the same line) to collinear points is called a _collineation_ or _symmetry_ of the plane. The collineations of a geometry form a group under composition, and for the Fano plane this group (PΓL(3,2) = PGL(3,2)) has 168 elements.

 Desargues' theorem and Desarguesian planes

The theorem of Desargues is universally valid in a projective plane if and only if the plane can be constructed from a three-dimensional vector space over a skewfield as above.[6] These planes are called DESARGUESIAN PLANES, named after Girard Desargues. The real (or complex) projective plane and the projective plane of order 3 given above are examples of Desarguesian projective planes. The projective planes that can not be constructed in this manner are called non-Desarguesian planes, and the Moulton plane given above is an example of one. The PG(2,_K_) notation is reserved for the Desarguesian planes. When _K_ is a field, a very common case, they are also known as _field planes_ and if the field is a finite field they can be called _Galois planes_.


Subplanes

A SUBPLANE of a projective plane is a subset of the points of the plane which themselves form a projective plane with the same incidence relations.

proves the following theorem. Let Π be a finite projective plane of order _N_ with a proper subplane Π₀ of order _M_. Then either _N_ = _M_² or _N_ ≥ _M_² + _M_.

When _N_ is a square, subplanes of order are called _Baer subplanes_. Every point of the plane lies on a line of a Baer subplane and every line of the plane contains a point of the Baer subplane.

In the finite Desarguesian planes PG(2,_p^(n)_), the subplanes have orders which are the orders of the subfields of the finite field GF(_p^(n)_), that is, _p^(i)_ where _i_ is a divisor of _n_. In non-Desarguesian planes however, Bruck's theorem gives the only information about subplane orders. The case of equality in the inequality of this theorem is not known to occur. Whether or not there exists a subplane of order _M_ in a plane of order _N_ with _M_² + _M_ = _N_ is an open question. If such subplanes existed there would be projective planes of composite (non-prime power) order.

Fano subplanes

A FANO SUBPLANE is a subplane isomorphic to PG(2,2), the unique projective plane of order 2.

If you consider a _quadrangle_ (a set of 4 points no three collinear) in this plane, the points determine six of the lines of the plane. The remaining three points (called the _diagonal points_ of the quadrangle) are the points where the lines that do not intersect at a point of the quadrangle meet. The seventh line consists of all the diagonal points (usually drawn as a circle or semicircle).

The name _Fano_ for this subplane is really a misnomer. Gino Fano (1871–1952), in developing a new set of axioms for Euclidean geometry, took as an axiom that the diagonal points of any quadrangle are never collinear. This is called _Fano's Axiom_. A Fano subplane however violates Fano's Axiom. They really should be called _Anti-Fano subplanes_, but this name change has not had many supporters.

In finite desarguesian planes, PG(2,_q_), Fano subplanes exist if and only if _q_ is even (that is, a power of 2). The situation in non-desarguesian planes is unsettled. They could exist in any non-desarguesian plane of order greater than 6, and indeed, they have been found in all non-desarguesian planes in which they have been looked for (in both odd and even orders).

An open question is: Does every non-desarguesian plane contain a Fano subplane?

A theorem concerning Fano subplanes due to is:

    If every quadrangle in a finite projective plane has collinear diagonal points, then the plane is desarguesian (of even order).


Affine planes

Projectivization of the Euclidean plane produced the real projective plane. The inverse operation — starting with a projective plane, remove one line and all the points incident with that line — produces an AFFINE PLANE.

Definition

More formally an AFFINE PLANE consists of a set of LINES and a set of POINTS, and a relation between points and lines called INCIDENCE, having the following properties:

1.  Given any two distinct points, there is exactly one line incident with both of them.
2.  Given any line l and any point P not incident with l, there is exactly one line incident with P that does not meet l.
3.  There are four points such that no line is incident with more than two of them.

The second condition means that there are parallel lines and is known as Playfair's axiom. The expression "does not meet" in this condition is shorthand for "there does not exist a point incident with both lines."

The Euclidean plane and the Moulton plane are examples of infinite affine planes. A finite projective plane will produce a finite affine plane when one of its lines and the points on it are removed. The ORDER of a finite affine plane is the number of points on any of its lines (this will be the same number as the order of the projective plane from which it comes). The affine planes which arise from the projective planes PG(2,_q_) are denoted by AG(2,_q_).

There is a projective plane of order _N_ if and only if there is an affine plane of order _N_. When there is only one affine plane of order _N_ there is only one projective plane of order _N_, but the converse is not true. The affine planes formed by the removal of different lines of the projective plane will be isomorphic if and only if the removed lines are in the same orbit of the collineation group of the projective plane. These statements hold for infinite projective planes as well.

Construction of projective planes from affine planes

The affine plane _K_² over _K_ embeds into _K_P² via the map which sends affine (non-homogeneous) coordinates to homogeneous coordinates,

    (x₁, x₂) ↦ (1, x₁, x₂).

The complement of the image is the set of points of the form (0, _x_₁, _x_₂). From the point of view of the embedding just given, these points are the points at infinity. They constitute a line in _K_P² — namely, the line arising from the plane

{_k_(0, 0, 1) + _m_(0, 1, 0) : _k_, _m_ ∈ _K_}

in _K_³ — called the line at infinity. The points at infinity are the "extra" points where parallel lines intersect in the construction of the extended real plane; the point (0, _x_₁, _x_₂) is where all lines of slope _x_₂ / _x_₁ intersect. Consider for example the two lines

    u = {(x, 0) : x ∈ K}
    y = {(x, 1) : x ∈ K}

in the affine plane _K_². These lines have slope 0 and do not intersect. They can be regarded as subsets of ''K''P² via the embedding above, but these subsets are not lines in _K_P². Add the point (0, 1, 0) to each subset; that is, let

    ū = {(1, x, 0) : x ∈ K} ∪ {(0, 1, 0)}
    ȳ = {(1, x, 1) : x ∈ K} ∪ {(0, 1, 0)}

These are lines in _K_P²; ū arises from the plane

    {k(1, 0, 0) + m(0, 1, 0) : k, m ∈ K}

in _K_³, while ȳ arises from the plane

    k(1, 0, 1) + m(0, 1, 0) : k, m ∈ K.

The projective lines ū and ȳ intersect at (0, 1, 0). In fact, all lines in _K_² of slope 0, when projectivized in this manner, intersect at (0, 1, 0) in _K_P².

The embedding of _K_² into _K_P² given above is not unique. Each embedding produces its own notion of points at infinity. For example, the embedding

    (x₁, x₂) → (x₂, 1, x₁),

has as its complement those points of the form (_x_₀, 0, _x_₂), which are then regarded as points at infinity.

When an affine plane does not have the form of _K_² with _K_ a division ring, it can still be embedded in a projective plane, but the construction used above does not work. A commonly used method for carrying out the embedding in this case involves expanding the set of affine coordinates and working in a more general "algebra".

Generalized coordinates

One can construct a coordinate "ring"—a so-called planar ternary ring (not a genuine ring)—corresponding to any projective plane. A planar ternary ring need not be a field or division ring, and there are many projective planes that are not constructed from a division ring. They are called non-Desarguesian projective planes and are an active area of research. The Cayley plane (OP²), a projective plane over the octonions, is one of these because the octonions do not form a division ring.[7]

Conversely, given a planar ternary ring (R,T), a projective plane can be constructed (see below). The relationship is not one to one. A projective plane may be associated with several non-isomorphic planar ternary rings. The ternary operator T can be used to produce two binary operators on the set R, by:

    a + b = T(a,1,b), and
    a • b = T(a,b,0).

The ternary operator is _LINEAR_ if T(x,m,k) = x•m + k. When the set of coordinates of a projective plane actually form a ring, a linear ternary operator may be defined in this way, using the ring operations on the right, to produce a planar ternary ring.

Algebraic properties of this planar ternary coordinate ring turn out to correspond to geometric incidence properties of the plane. For example, Desargues' theorem corresponds to the coordinate ring being obtained from a division ring, while Pappus's theorem corresponds to this ring being obtained from a commutative field. A projective plane satisfying Pappus's theorem universally is called a _Pappian plane_. Alternative, not necessarily associative, division algebras like the octonions correspond to Moufang planes.

There is no known purely geometric proof of the purely geometric statement that Desargues' theorem implies Pappus' theorem in a finite projective plane (finite Desarguesian planes are Pappian). (The converse is true in any projective plane and is provable geometrically, but finiteness is essential in this statement as there are infinite Desarguesian planes which are not Pappian.) The most common proof uses coordinates in a division ring and Wedderburn's theorem that finite division rings must be commutative; give a proof that uses only more "elementary" algebraic facts about division rings.

To describe a finite projective plane of order _N_(≥ 2) using non-homogeneous coordinates and a planar ternary ring:

    Let one point be labelled (_∞_).
    Label _N_ points, (_r_) where _r_ = 0, ..., (_N_ − 1).
    Label _N_² points, (_r_, _c_) where _r_, _c_ = 0, ..., (_N_ − 1).

On these points, construct the following lines:

    One line [_∞_] = { (_∞_), (0), ..., (_N_ − 1)}
    _N_ lines [_c_] = {(_∞_), (_c_,0), ..., (_c_, _N_ − 1)}, where _c_ = 0, ..., (_N_ − 1)
    _N_² lines [_r_, _c_] = {(_r_) and the points (_x_, T(_x_,_r_,_c_)) }, where _x_, _r_, _c_ = 0, ..., (_N_ − 1) and T is the ternary operator of the planar ternary ring.

For example, for _N_=2 we can use the symbols {0,1} associated with the finite field of order 2. The ternary operation defined by T(x,m,k) = xm + k with the operations on the right being the multiplication and addition in the field yields the following:

    One line [_∞_] = { (_∞_), (0), (1)},
    2 lines [_c_] = {(_∞_), (_c_,0), (_c_,1) : _c_ = 0, 1},

        [0] = {(_∞_), (0,0), (0,1) }
        [1] = {(_∞_), (1,0), (1,1) }

    4 lines [_r_, _c_]: (_r_) and the points (_i_,_ir_ + _c_), where i = 0, 1 : _r_, _c_ = 0, 1.

        [0,0]: {(0), (0,0), (1,0) }
        [0,1]: {(0), (0,1), (1,1) }
        [1,0]: {(1), (0,0), (1,1) }
        [1,1]: {(1), (0,1), (1,0) }


Degenerate planes

Degenerate_planes_wec.svg

Degenerate planes do not fulfill the third condition in the definition of a projective plane. They are not structurally complex enough to be interesting in their own right, but from time to time they arise as special cases in general arguments. There are seven degenerate planes according to . They are:

1.  the empty set;
2.  a single point, no lines;
3.  a single line, no points;
4.  a single point, a collection of lines, the point is incident with all of the lines;
5.  a single line, a collection of points, the points are all incident with the line;
6.  a point P incident with a line m, an arbitrary collection of lines all incident with P and an arbitrary collection of points all incident with m;
7.  a point P not incident with a line m, an arbitrary (can be empty) collection of lines all incident with P and all the points of intersection of these lines with m.

These seven cases are not independent, the fourth and fifth can be considered as special cases of the sixth, while the second and third are special cases of the fourth and fifth respectively. The special case of the seventh plane with no additional lines can be seen as an eighth plane. All the cases can therefore be organized into two families of degenerate planes as follows (this representation is for finite degenerate planes, but may be extended to infinite ones in a natural way):

1) For any number of points _P_₁, ..., _P__(_n_), and lines _L_₁, ..., _L__(_m_),

    _L_₁ = { _P_₁, _P_₂, ..., _P__(_n_)}
    _L_₂ = { _P_₁ }
    _L_₃ = { _P_₁ }
    ...
    _L__(_m_) = { _P_₁ }

2) For any number of points _P_₁, ..., _P__(_n_), and lines _L_₁, ..., _L__(_n_), (same number of points as lines)

    _L_₁ = { _P_₂, _P_₃, ..., _P__(_n_) }
    _L_₂ = { _P_₁, _P_₂ }
    _L_₃ = { _P_₁, _P_₃ }
    ...
    _L__(_n_) = { _P_₁, _P__(_n_) }


Collineations

A collineation of a projective plane is a bijective map of the plane to itself which maps points to points and lines to lines that preserves incidence, meaning that if _σ_ is a bijection and point P is on line m, then P^(_σ_) is on m^(_σ_).[8]

If _σ_ is a collineation of a projective plane, a point P with P = P^(_σ_) is called a _FIXED POINT_ of _σ_, and a line m with m = m^(_σ_) is called a _FIXED LINE_ of _σ_. The points on a fixed line need not be fixed points, their images under _σ_ are just constrained to lie on this line. The collection of fixed points and fixed lines of a collineation form a _CLOSED CONFIGURATION_, which is a system of points and lines that satisfy the first two but not necessarily the third condition in the definition of a projective plane. Thus, the fixed point and fixed line structure for any collineation either form a projective plane by themselves, or a degenerate plane. Collineations whose fixed structure forms a plane are called _PLANAR COLLINEATIONS_.

Homography

A HOMOGRAPHY (or _projective transformation_) of PG(2,_K_) is a collineation of this type of projective plane which is a linear transformation of the underlying vector space. Using homogeneous coordinates they can be represented by invertible 3 × 3 matrices over _K_ which act on the points of PG(2,_K_) by _y_ = _M_ _x_^(T), where _x_ and _y_ are points in _K_³ (vectors) and _M_ is an invertible 3 × 3 matrix over _K_.[9] Two matrices represent the same projective transformation if one is a constant multiple of the other. Thus the group of projective transformations is the quotient of the general linear group by the scalar matrices called the projective linear group.

Another type of collineation of PG(2,_K_) is induced by any automorphism of _K_, these are called AUTOMORPHIC COLLINEATIONS. If α is an automorphism of _K_, then the collineation given by (x₀,x₁,x₂) → (x₀^(α),x₁^(α),x₂^(α)) is an automorphic collineation. The fundamental theorem of projective geometry says that all the collineations of PG(2,_K_) are compositions of homographies and automorphic collineations. Automorphic collineations are planar collineations.


Plane duality

A projective plane is defined axiomatically as an incidence structure, in terms of a set _P_ of points, a set _L_ of lines, and an incidence relation _I_ that determines which points lie on which lines. As P and L are only sets one can interchange their roles and define a PLANE DUAL STRUCTURE.

By interchanging the role of "points" and "lines" in

    _C_ = (_P_,_L_,_I_)

we obtain the dual structure

    _C_* = (_L_,_P_,_I_*),

where _I_* is the inverse relation of _I_.

In a projective plane a statement involving points, lines and incidence between them that is obtained from another such statement by interchanging the words "point" and "line" and making whatever grammatical adjustments that are necessary, is called the PLANE DUAL STATEMENT of the first. The plane dual statement of "Two points are on a unique line." is "Two lines meet at a unique point." Forming the plane dual of a statement is known as _dualizing_ the statement.

If a statement is true in a projective plane C, then the plane dual of that statement must be true in the dual plane C*. This follows since dualizing each statement in the proof "in C" gives a statement of the proof "in C*."

In the projective plane C, it can be shown that there exist four lines, no three of which are concurrent. Dualizing this theorem and the first two axioms in the definition of a projective plane shows that the plane dual structure C* is also a projective plane, called the DUAL PLANE of C.

If C and C* are isomorphic, then C is called _SELF-DUAL_. The projective planes PG(2,_K_) for any division ring _K_ are self-dual. However, there are non-Desarguesian planes which are not self-dual, such as the Hall planes and some that are, such as the Hughes planes.

The _PRINCIPLE OF PLANE DUALITY_ says that dualizing any theorem in a self-dual projective plane C produces another theorem valid in C.


Correlations

A DUALITY is a map from a projective plane _C_ = (_P_, _L_, I) to its dual plane _C_* = (_L_, _P_, I*) (see above) which preserves incidence. That is, a duality σ will map points to lines and lines to points (_P_^(σ) = _L_ and _L_^(_σ_) = _P_) in such a way that if a point _Q_ is on a line _m_ (denoted by _Q_ I _m_) then _Q_^(_σ_) I* _m_^(_σ_) ⇔ _m_^(_σ_) I _Q_^(_σ_). A duality which is an isomorphism is called a CORRELATION.[10] If a correlation exists then the projective plane _C_ is self-dual.

In the special case that the projective plane is of the PG(2,_K_) type, with _K_ a division ring, a duality is called a RECIPROCITY.[11] These planes are always self-dual. By the fundamental theorem of projective geometry a reciprocity is the composition of an automorphic function of _K_ and a homography. If the automorphism involved is the identity, then the reciprocity is called a PROJECTIVE CORRELATION.

A correlation of order two (an involution) is called a POLARITY. If a correlation φ is not a polarity then φ² is a nontrivial collineation.


Finite projective planes

It can be shown that a projective plane has the same number of lines as it has points (infinite or finite). Thus, for every finite projective plane there is an integer _N_ ≥ 2 such that the plane has

    _N_² + _N_ + 1 points,
    _N_² + _N_ + 1 lines,
    _N_ + 1 points on each line, and
    _N_ + 1 lines through each point.

The number _N_ is called the ORDER of the projective plane.

The projective plane of order 2 is called the Fano plane. See also the article on finite geometry.

Using the vector space construction with finite fields there exists a projective plane of order _N_ = _p_^(_n_), for each prime power _p_^(_n_). In fact, for all known finite projective planes, the order _N_ is a prime power.

The existence of finite projective planes of other orders is an open question. The only general restriction known on the order is the Bruck-Ryser-Chowla theorem that if the order _N_ is congruent to 1 or 2 mod 4, it must be the sum of two squares. This rules out _N_ = 6. The next case _N_ = 10 has been ruled out by massive computer calculations. Nothing more is known; in particular, the question of whether there exists a finite projective plane of order _N_ = 12 is still open.

Another longstanding open problem is whether there exist finite projective planes of _prime_ order which are not finite field planes (equivalently, whether there exists a non-Desarguesian projective plane of prime order).

A projective plane of order _N_ is a Steiner S(2, _N_ + 1, _N_² + _N_ + 1) system (see Steiner system). Conversely, one can prove that all Steiner systems of this form (λ = 2) are projective planes.

The number of mutually orthogonal Latin squares of order _N_ is at most _N_ − 1. _N_ − 1 exist if and only if there is a projective plane of order _N_.

While the classification of all projective planes is far from complete, results are known for small orders:

-   2 : all isomorphic to PG(2,2)
-   3 : all isomorphic to PG(2,3)
-   4 : all isomorphic to PG(2,4)
-   5 : all isomorphic to PG(2,5)
-   6 : impossible as the order of a projective plane, proved by Tarry who showed that Euler's thirty-six officers problem has no solution. However, the connection between these problems was not known until Bose proved it in 1938.[12]
-   7 : all isomorphic to PG(2,7)
-   8 : all isomorphic to PG(2,8)
-   9 : PG(2,9), and three more different (non-isomorphic) non-Desarguesian planes. (All described in ).
-   10 : impossible as an order of a projective plane, proved by heavy computer calculation.[13]
-   11 : at least PG(2,11), others are not known but possible.
-   12 : it is conjectured to be impossible as an order of a projective plane.


Projective planes in higher-dimensional projective spaces

Projective planes may be thought of as projective geometries of "geometric" dimension two.[14] Higher-dimensional projective geometries can be defined in terms of incidence relations in a manner analogous to the definition of a projective plane. These turn out to be "tamer" than the projective planes since the extra degrees of freedom permit Desargues' theorem to be proved geometrically in the higher-dimensional geometry. This means that the coordinate "ring" associated to the geometry must be a division ring (skewfield) _K_, and the projective geometry is isomorphic to the one constructed from the vector space _K_^(_d_+1), i.e. PG(_d_,_K_). As in the construction given earlier, the points of the _d_-dimensional projective space PG(_d_,_K_) are the lines through the origin in _K_^(_d_\ +\ 1) and a line in PG(_d_,_K_) corresponds to a plane through the origin in _K_^(_d_\ +\ 1). In fact, each _i-dimensional_ object in PG(_d_,_K_), with _i_ < _d_, is an (_i_ + 1)-dimensional (algebraic) vector subspace of _K_^(_d_\ +\ 1) ("goes through the origin"). The projective spaces in turn generalize to the Grassmannian spaces.

It can be shown that if Desargues' theorem holds in a projective space of dimension greater than two, then it must also hold in all planes that are contained in that space. Since there are projective planes in which Desargues' theorem fails (non-Desarguesian planes), these planes can not be embedded in a higher-dimensional projective space. Only the planes from the vector space construction PG(2,_K_) can appear in projective spaces of higher dimension. Some disciplines in mathematics restrict the meaning of projective plane to only this type of projective plane since otherwise general statements about projective spaces would always have to mention the exceptions when the geometric dimension is two.[15]


See also

-   Block design - a generalization of a finite projective plane.
-   Combinatorial design
-   Incidence structure
-   Projective geometry
-   Non-Desarguesian plane
-   Smooth projective plane
-   VC dimension of a finite projective plane


Notes


References

-   -   -   -   -   -   -   -   -   -   -   -   -   -   Lindner, Charles C. and Christopher A. Rodger (eds.) _Design Theory_, CRC-Press; 1 edition (October 31, 1997). .
-   -   -   -   -


External links

-   G. Eric Moorhouse, _Projective Planes of Small Order_, (2003)
-   Ch. Weibel: Survey of Nondesarguesian planes
-   -

Category:Projective geometry Category:Incidence geometry Category:Euclidean plane geometry Category:Algebraic geometry

[1] The phrases "projective plane", "extended affine plane" and "extended Euclidean plane" may be distinguished according to whether the line at infinity is regarded as special (in the so-called "projective" plane it isn't, in the "extended" planes it is) and to whether Euclidean metric is regarded as meaningful (in the projective and affine planes it isn't). Similarly for projective or extended spaces of other dimensions.

[2] In a more formal version of the definition it is pointed out that the terms _point, line_ and _incidence_ are primitive notions (undefined terms). This formal viewpoint is needed to understand the concept of duality when applied to projective planes.

[3] Baez (2002).

[4] The real projective plane appears 37 times in the index of Bredon (1993), for example.

[5] The projective planes over fields are used throughout Shafarevich (1994), for example.

[6] David Hilbert proved the more difficult "only if" part of this result.

[7]

[8] Geometers tend to like writing mappings in an exponential notation, so P^(_σ_) means _σ_(P) in a more conventional notation.

[9] The points are viewed as row vectors, so to make the matrix multiplication work in this expression, the point _x_ must be written as a column vector.

[10]  pg.151.

[11]  pg.94.

[12]

[13]

[14] There are competing notions of _dimension_ in geometry and algebra (vector spaces). In geometry, lines are 1 dimensional, planes are 2 dimensional, solids are 3 dimensional, etc. In a vector space however, the dimension is the number of vectors in a basis. When geometries are constructed from vector spaces, these two notions of dimension can lead to confusion, so it is often the case that the geometric concept is called _geometric_ or _projective_ dimension and the other is _algebraic_ or _vector space_ dimension. The two concepts are numerically related by: algebraic dimension = geometric dimension + 1.

[15] "One might say, with some justice, that projective geometry, in so far as present day research is concerned, has split into two quite separate fields. On the one hand, the researcher into the foundations of geometry tends to regard Desarguesian spaces as completely known. Since the only possible non-Desarguesian spaces are planes, his attention is restricted to the theory of projective planes, especially the non- Desarguesian planes. On the other hand stand all those researchers - and especially, the algebraic geometers - who are unwilling to be bound to two-dimensional space and uninterested in permitting non-Desarguesian planes to assume an exceptional role in their theorems. For the latter group of researchers, there are no projective spaces except the Desarguesian spaces."