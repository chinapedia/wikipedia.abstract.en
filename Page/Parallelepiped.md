  Parallelepiped
  -------------------------------
  Parallelepiped_2013-11-29.svg
  Type
  Faces
  Edges
  Vertices
  Symmetry group
  Properties

In geometry, a PARALLELEPIPED is a three-dimensional figure formed by six parallelograms (the term rhomboid is also sometimes used with this meaning). By analogy, it relates to a parallelogram just as a cube relates to a square or as a cuboid to a rectangle. In Euclidean geometry, its definition encompasses all four concepts (i.e., _parallelepiped_, _parallelogram_, _cube_, and _square_). In this context of affine geometry, in which angles are not differentiated, its definition admits only _parallelograms_ and _parallelepipeds_. Three equivalent definitions of _parallelepiped_ are

-   a polyhedron with six faces (hexahedron), each of which is a parallelogram,
-   a hexahedron with three pairs of parallel faces, and
-   a prism of which the base is a parallelogram.

The rectangular cuboid (six rectangular faces), cube (six square faces), and the rhombohedron (six rhombus faces) are all specific cases of parallelepiped.

"Parallelepiped" is now usually pronounced , , or ; traditionally it was [1] in accordance with its etymology in Greek παραλληλ-επίπεδον, a body "having parallel planes".

Parallelepipeds are a subclass of the prismatoids.


Properties

Any of the three pairs of parallel faces can be viewed as the base planes of the prism. A parallelepiped has three sets of four parallel edges; the edges within each set are of equal length.

Parallelepipeds result from linear transformations of a cube (for the non-degenerate cases: the bijective linear transformations).

Since each face has point symmetry, a parallelepiped is a zonohedron. Also the whole parallelepiped has point symmetry _C_(i)_ (see also triclinic). Each face is, seen from the outside, the mirror image of the opposite face. The faces are in general chiral, but the parallelepiped is not.

A space-filling tessellation is possible with congruent copies of any parallelepiped.


Volume

Parallelepiped-v.svg A parallelepiped can be considered as an oblique prism with a parallelogram as base. Hence the volume V of a parallelepiped is the product of the base area B and the height h (see diagram). With

_B_ = |_a⃗_| ⋅ |_b⃗_| ⋅ sin _γ_ = |_a⃗_ × _b⃗_|
(where γ is the angle between the vectors a⃗ and b⃗) and the height h = |c⃗| ⋅ |cos θ| (θ is the angle between vector c⃗ and the normal of the base) one gets

_V_ = _B_ ⋅ _h_ = (|_a⃗_||_b⃗_|sin _γ_) ⋅ |_c⃗_||cos _θ_| = |_a⃗_ × _b⃗_| |_c⃗_| |cos _θ_|

 = |(_a⃗_ × _b⃗_) ⋅ _c⃗_| .
The mixed product of three vectors is called triple product. It can be described by a determinant. Hence for a⃗ = (a₁, a₂, a₃)^(T), b⃗ = (b₁, b₂, b₃)^(T), c⃗ = (c₁, c₂, c₃)^(T) the volume is:

    (V1) \quad V = \left| \det \begin{bmatrix}

       a_1 & b_1 & c_1 \\
       a_2 & b_2 & c_2 \\
       a_3 & b_3 & c_3
\end{bmatrix}\;  \right| 
 .

An alternative representation of the volume uses geometric properties (angles and length of edges) only:

    (V2)\quad

V = abc\sqrt{1+2\cos(\alpha)\cos(\beta)\cos(\gamma)-\cos^2(\alpha)-\cos^2(\beta)-\cos^2(\gamma)}, with $\ \alpha=\angle(\vec b, \vec c) , \; \beta=\angle(\vec a,\vec c) ,\; \gamma=\angle(\vec a,\vec b)\$ and a, b, c the edge lengths.

Proof of (V2):

The proof of (V2) uses properties of a determinant and the geometric interpretation of the dot product:

Let be M the 3x3-matrix, whose columns are the vectors a⃗, b⃗, c⃗ (see above). Then the following is true:

_V_² = (det _M_)² = det _M_det _M_ = det _M_^(_T_)det _M_ = det (_M_^(_T_)_M_)

$$=\det \begin{bmatrix}
        \vec a\cdot \vec a & \vec a\cdot \vec b & \vec a\cdot \vec c \\
        \vec b\cdot \vec a & \vec b\cdot \vec b & \vec b\cdot \vec c \\
        \vec c\cdot \vec a & \vec c\cdot \vec b & \vec c\cdot \vec c
 \end{bmatrix} =\  a^2b^2c^2\;\left(1+2\cos(\alpha)\cos(\beta)\cos(\gamma)-\cos^2(\alpha)-\cos^2(\beta)-\cos^2(\gamma)\right).$$
(The last step uses $\ \vec a\cdot \vec a=a^2, ...,\; \vec a\cdot \vec b=ab\cos\gamma,\;  \vec a\cdot \vec c=ac\cos\beta,\; \vec b\cdot \vec c=bc\cos\alpha \$.)

Corresponding tetrahedron:

The volume of any tetrahedron that shares three converging edges of a parallelepiped has a volume equal to one sixth of the volume of that parallelepiped (see proof).


Surface area

The surface area of a parallelepiped is the sum the areas of the bounding parallelograms:

_A_ = 2 ⋅ (|_a⃗_×_b⃗_|+|_a⃗_×_c⃗_|+|_b⃗_×_c⃗_|)

$$= 2(ab\sin\gamma+ bc\sin\alpha+ca\sin\beta)\$$
. (For labeling: see previous section.)


Special cases by symmetry

+---------------------------------------------------------------+-------------------------------------+
| Full_octahedral_group;_subgroups_Hasse_diagram;_inversion.svg | Special_cases_of_parallelepiped.svg |
| Octahedral symmetry subgroup relations with inversion center  | Special cases of the parallelepiped |
+---------------------------------------------------------------+-------------------------------------+

+-------------+--------------------+--------------------+------------------------+--------------------+---------------------+------------------------------+------------------------+
| Form        | Cube               | Square cuboid      | Trigonal trapezohedron | Rectangular cuboid | Right rhombic prism | Right parallelogrammic prism | Oblique rhombic prism  |
+=============+====================+====================+========================+====================+=====================+==============================+========================+
| Constraints | a = b = c          | a = b              | a = b = c              |                    | a = b               |                              | a = b                  |
|             | α = β = γ = 90^(∘) | α = β = γ = 90^(∘) | α = β = γ              | α = β = γ = 90^(∘) | α = β = 90^(∘)      | α = β = 90^(∘)               | α = β                  |
+-------------+--------------------+--------------------+------------------------+--------------------+---------------------+------------------------------+------------------------+
| Symmetry    | O_(h)              | D_(4h)             | D_(3d)                 | D_(2h)             | C_(2h)              |                              |                        |
|             | order 48           | order 16           | order 12               | order 8            | order 4             |                              |                        |
+-------------+--------------------+--------------------+------------------------+--------------------+---------------------+------------------------------+------------------------+
| Image       | Cubic.svg          | Tetragonal.svg     | Rhombohedral.svg       | Orthorhombic.svg   | Rhombic_prism.svg   | Monoclinic2.svg              | Clinorhombic_prism.svg |
+-------------+--------------------+--------------------+------------------------+--------------------+---------------------+------------------------------+------------------------+
| Faces       | 6 square           | 2 square           | 6 rhom.                | 6 rect.            | 4 rect.             | 4 rect.                      | 2 rhom.                |
|             |                    | 4 rect.            |                        |                    | 2 rhom.             | 2 para.                      | 4 para.                |
+-------------+--------------------+--------------------+------------------------+--------------------+---------------------+------------------------------+------------------------+

-   The parallelepiped with O_(h) symmetry is known as a CUBE, which has six congruent square faces.
-   The parallelepiped with D_(4h) symmetry is known as a SQUARE CUBOID, which has two square faces and four congruent rectangular faces.
-   The parallelepiped with D_(3d) symmetry is known as a TRIGONAL TRAPEZOHEDRON, which has six congruent rhombic faces (also called an _isohedral rhombohedron_).
-   For parallelepipeds with D_(2h) symmetry there are two cases:
    -   RECTANGULAR CUBOID: it has six rectangular faces (also called a _rectangular parallelepiped_ or sometimes simply a _cuboid_).
    -   RIGHT RHOMBIC PRISM: it has two rhombic faces and four congruent rectangular faces.
-   For parallelepipeds with C_(2h) symmetry there are two cases:
    -   RIGHT PARALLELOGRAMMIC PRISM: it has four rectangular faces and two parallelogrammic faces.
    -   OBLIQUE RHOMBIC PRISM: it has two rhombic faces, while of the other faces, two adjacent ones are equal and the other two also (the two pairs are each other's mirror image).


Perfect parallelepiped

A _perfect parallelepiped_ is a parallelepiped with integer-length edges, face diagonals, and space diagonals. In 2009, dozens of perfect parallelepipeds were shown to exist,[2] answering an open question of Richard Guy. One example has edges 271, 106, and 103, minor face diagonals 101, 266, and 255, major face diagonals 183, 312, and 323, and space diagonals 374, 300, 278, and 272.

Some perfect parallelopipeds having two rectangular faces are known. But it is not known whether there exist any with all faces rectangular; such a case would be called a perfect cuboid.


Parallelotope

Coxeter called the generalization of a parallelepiped in higher dimensions a PARALLELOTOPE .

Specifically in _n_-dimensional space it is called _n_-dimensional parallelotope, or simply _n_-parallelotope. Thus a parallelogram is a 2-parallelotope and a parallelepiped is a 3-parallelotope.

More generally a parallelotope,[3] or _voronoi parallelotope_, has parallel and congruent opposite facets. So a 2-parallelotope is a parallelogon which can also include certain hexagons, and a 3-parallelotope is a parallelohedron, including 5 types of polyhedra.

The diagonals of an _n_-parallelotope intersect at one point and are bisected by this point. Inversion in this point leaves the _n_-parallelotope unchanged. See also fixed points of isometry groups in Euclidean space.

The edges radiating from one vertex of a _k_-parallelotope form a _k_-frame (v₁, …, v_(n)) of the vector space, and the parallelotope can be recovered from these vectors, by taking linear combinations of the vectors, with weights between 0 and 1.

The _n_-volume of an _n_-parallelotope embedded in ℝ^(m) where m ≥ n can be computed by means of the Gram determinant. Alternatively, the volume is the norm of the exterior product of the vectors:

_V_ = ∥_v_₁∧⋯∧_v__(_n_)∥.

If _m_ = _n_, this amounts to the absolute value of the determinant of the _n_ vectors.

Another formula to compute the volume of an _n_-parallelotope _P_ in ℝ^(n), whose vertices are V₀, V₁, …, V_(n), is

$${\rm Vol}(P) = |{\rm det}\ ([V_0\ 1]^{\rm T}, [V_1\ 1]^{\rm T}, \ldots, [V_n\ 1]^{\rm T})|,$$

where [V_(i) 1] is the row vector formed by the concatenation of V_(i) and 1. Indeed, the determinant is unchanged if [V₀ 1] is subtracted from [V_(i) 1] (), and placing [V₀ 1] in the last position only changes its sign.

Similarly, the volume of any _n_-simplex that shares _n_ converging edges of a parallelotope has a volume equal to one 1/_n_! of the volume of that parallelotope.


Lexicography

The word appears as _parallelipipedon_ in Sir Henry Billingsley's translation of Euclid's Elements, dated 1570. In the 1644 edition of his _Cursus mathematicus_, Pierre Hérigone used the spelling _parallelepipedum_. The _Oxford English Dictionary_ cites the present-day _parallelepiped_ as first appearing in Walter Charleton's _Chorea gigantum_ (1663).

Charles Hutton's Dictionary (1795) shows _parallelopiped_ and _parallelopipedon_, showing the influence of the combining form _parallelo-_, as if the second element were _pipedon_ rather than _epipedon_. Noah Webster (1806) includes the spelling _parallelopiped_. The 1989 edition of the _Oxford English Dictionary_ describes _parallelopiped_ (and _parallelipiped_) explicitly as incorrect forms, but these are listed without comment in the 2004 edition, and only pronunciations with the emphasis on the fifth syllable _pi_ () are given.

A change away from the traditional pronunciation has hidden the different partition suggested by the Greek roots, with _epi-_ ("on") and _pedon_ ("ground") combining to give _epiped_, a flat "plane". Thus the faces of a parallelepiped are planar, with opposite faces being parallel.


Notes


References

-   Coxeter, H. S. M. _Regular Polytopes_, 3rd ed. New York: Dover, p. 122, 1973. (He defines _parallelotope_ as a generalization of a parallelogram and parallelepiped in n-dimensions.)


External links

-   -   -   Paper model parallelepiped (net)

Category:Prismatoid polyhedra Category:Space-filling polyhedra Category:Zonohedra Category:Articles containing proofs

[1] _Oxford English Dictionary_ 1904; _Webster's Second International_ 1947

[2] .

[3] Properties of parallelotopes equivalent to Voronoi's conjecture