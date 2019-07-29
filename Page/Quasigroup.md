In mathematics, especially in abstract algebra, a QUASIGROUP is an algebraic structure resembling a group in the sense that "division" is always possible. Quasigroups differ from groups mainly in that they are not necessarily associative.

A quasigroup with an identity element is called a LOOP.


Definitions

There are at least two structurally equivalent formal definitions of quasigroup. One defines a quasigroup as a set with one binary operation, and the other, from universal algebra, defines a quasigroup as having three primitive operations. The homomorphic image of a quasigroup defined with a single binary operation, however, need not be a quasigroup.[1] We begin with the first definition.

Algebra

A QUASIGROUP is a set, _Q_, with a binary operation, ∗, (that is, a magma), obeying the Latin square property. This states that, for each _a_ and _b_ in _Q_, there exist unique elements _x_ and _y_ in _Q_ such that both

    _a_ ∗ _x_ = _b_,
    _y_ ∗ _a_ = _b_

hold. (In other words: Each element of the set occurs exactly once in each row and exactly once in each column of the quasigroup's multiplication table, or Cayley table. This property ensures that the Cayley table of a finite quasigroup is a Latin square.) The uniqueness requirement can be replaced by the requirement that the magma be cancellative.[2]

The unique solutions to these equations are written and . The operations '\' and '/' are called, respectively, LEFT and RIGHT DIVISION.

The empty set equipped with the empty binary operation satisfies this definition of a quasigroup. Some authors accept the empty quasigroup but others explicitly exclude it.[3][4]

Universal algebra

Given some algebraic structure, an identity is an equation in which all variables are tacitly universally quantified, and in which all operations are among the primitive operations proper to the structure. Algebraic structures axiomatized solely by identities are called varieties. Many standard results in universal algebra hold only for varieties. Quasigroups are varieties if left and right division are taken as primitive.

A QUASIGROUP is a type (2,2,2) algebra (i.e., equipped with three binary operations) satisfying the identities:

    _y_ = _x_ ∗ (_x_ \ _y_),
    _y_ = _x_ \ (_x_ ∗ _y_),
    _y_ = (_y_ / _x_) ∗ _x_,
    _y_ = (_y_ ∗ _x_) / _x_.

In other words: Multiplication and division in either order, one after the other, on the same side by the same element, have no net effect.

Hence if is a quasigroup according to the first definition, then is the same quasigroup in the sense of universal algebra.


Loops

Magma_to_group2.svg A LOOP is a quasigroup with an identity element; that is, an element, _e_, such that

    _x_ ∗ _e_ = _x_ and _e_ ∗ _x_ = _x_ for all _x_ in _Q_.

It follows that the identity element, _e_, is unique, and that every element of _Q_ has unique left and right inverses (which need not be the same). Since the presence of an identity element is essential, a loop cannot be empty.

A quasigroup with an idempotent element is called a PIQUE ("pointed idempotent quasigroup"); this is a weaker notion than a loop but common nonetheless because, for example, given an abelian group, , taking its subtraction operation as quasigroup multiplication yields a pique with the group identity (zero) turned into a "pointed idempotent". (That is, there is a principal isotopy .)

A loop that is associative is a group. A group can have a non-associative pique isotope, but it cannot have a nonassociative loop isotope.

There are weaker associativity properties that have been given special names.

For instance, a BOL LOOP is a loop that satisfies either:

    _x_ ∗ (_y_ ∗ (_x_ ∗ _z_)) = (_x_ ∗ (_y_ ∗ _x_)) ∗ _z_ for each _x_, _y_ and _z_ in _Q_ (a _left Bol loop_),

or else

    ((_z_ ∗ _x_) ∗ _y_) ∗ _x_ = _z_ ∗ ((_x_ ∗ _y_) ∗ _x_) for each _x_, _y_ and _z_ in _Q_ (a _right Bol loop_).

A loop that is both a left and right Bol loop is a MOUFANG LOOP. This is equivalent to any one of the following single Moufang identities holding for all _x_, _y_, _z_:

    _x_ ∗ (_y_ ∗ (_x_ ∗ _z_)) = ((_x_ ∗ _y_) ∗ _x_) ∗ _z_,
    _z_ ∗ (_x_ ∗ (_y_ ∗ _x_)) = ((_z_ ∗ _x_) ∗ _y_) ∗ _x_,
    (_x_ ∗ _y_) ∗ (_z_ ∗ _x_) = _x_ ∗ ((_y_ ∗ _z_) ∗ _x_), or
    (_x_ ∗ _y_) ∗ (_z_ ∗ _x_) = (_x_ ∗ (_y_ ∗ _z_)) ∗ _x_.


Symmetries

Smith (2007) names the following important properties and subclasses:

Semisymmetry

A quasigroup is SEMISYMMETRIC if the following equivalent identities hold:

    _xy_ = _y_ / _x_,
    _yx_ = _x_ \ _y_,
    _x_ = (_yx_)_y_,
    _x_ = _y_(_xy_).

Although this class may seem special, every quasigroup _Q_ induces a semisymmetric quasigroup _Q_Δ on the direct product cube _Q_³ via the following operation:

(_x_₁, _x_₂, _x_₃) ⋅ (_y_₁, _y_₂, _y_₃) = (_y_₃/_x_₂, _y_₁ ∖ _x_₃, _x_₁_y_₂) = (_x_₂//_y_₃, _x_₃ ∖  ∖ _y_₁, _x_₁_y_₂),

where "//" and "\\" are the conjugate division operations given by y//x = x/y and y ∖  ∖ x = x ∖ y.

Triality

Total symmetry

A narrower class that is a TOTALLY SYMMETRIC QUASIGROUP (sometimes abbreviated TS-QUASIGROUP) in which all conjugates coincide as one operation: . Another way to define (the same notion of) totally symmetric quasigroup is as a semisymmetric quasigroup which also is commutative, i.e. .

Idempotent total symmetric quasigroups are precisely (i.e. in a bijection with) Steiner triples, so such a quasigroup is also called a STEINER QUASIGROUP, and sometimes the latter is even abbreviated as SQUAG; the term SLOOP is defined similarly for a Steiner quasigroup that is also a loop. Without idempotency, total symmetric quasigroups correspond to the geometric notion of extended Steiner triple, also called Generalized Elliptic Cubic Curve (GECC).

Total antisymmetry

A quasigroup is called TOTALLY ANTI-SYMMETRIC if for all , both of the following implications hold:[5]

1.  (_c_ ∗ _x_) ∗ _y_ = (_c_ ∗ _y_) ∗ _x_ implies that _x_ = _y_
2.  _x_ ∗ _y_ = _y_ ∗ _x_ implies that _x_ = _y_.

It is called WEAKLY TOTALLY ANTI-SYMMETRIC if only the first implication holds.[6]

This property is required, for example, in the Damm algorithm.


Examples

-   Every group is a loop, because if and only if , and if and only if .
-   The integers Z with subtraction (−) form a quasigroup.
-   The nonzero rationals Q^(×) (or the nonzero reals R^(×)) with division (÷) form a quasigroup.
-   Any vector space over a field of characteristic not equal to 2 forms an idempotent, commutative quasigroup under the operation .
-   Every Steiner triple system defines an idempotent, commutative quasigroup: is the third element of the triple containing _a_ and _b_. These quasigroups also satisfy for all _x_ and _y_ in the quasigroup. These quasigroups are known as _Steiner quasigroups_.[7]
-   The set where and with all other products as in the quaternion group forms a nonassociative loop of order 8. See hyperbolic quaternions for its application. (The hyperbolic quaternions themselves do _not_ form a loop or quasigroup).
-   The nonzero octonions form a nonassociative loop under multiplication. The octonions are a special type of loop known as a Moufang loop.
-   An associative quasigroup is either empty or is a group, since if there is at least one element, the existence of inverses and associativity imply the existence of an identity.
-   The following construction is due to Hans Zassenhaus. On the underlying set of the four-dimensional vector space F⁴ over the 3-element Galois field define

    (_x_₁, _x_₂, _x_₃, _x_₄) ∗ (_y_₁, _y_₂, _y_₃, _y_₄) = (_x_₁, _x_₂, _x_₃, _x_₄) + (_y_₁, _y_₂, _y_₃, _y_₄) + (0, 0, 0, (_x_₃ − _y_₃)(_x_₁_y_₂ − _x_₂_y_₁)).
    Then, is a commutative Moufang loop that is not a group.[8]

-   More generally, the set of nonzero elements of any division algebra form a quasigroup.


Properties

    In the remainder of the article we shall denote quasigroup multiplication simply by juxtaposition.

Quasigroups have the cancellation property: if , then . This follows from the uniqueness of left division of _ab_ or _ac_ by _a_. Similarly, if , then .

Multiplication operators

The definition of a quasigroup can be treated as conditions on the left and right multiplication operators , defined by

$$\begin{align}
  L(x)y &= xy \\
  R(x)y &= yx \\
\end{align}$$

The definition says that both mappings are bijections from _Q_ to itself. A magma _Q_ is a quasigroup precisely when all these operators, for every _x_ in _Q_, are bijective. The inverse mappings are left and right division, that is,

$$\begin{align}
  L(x)^{-1}y &= x\backslash y \\
  R(x)^{-1}y &= y/x
\end{align}$$

In this notation the identities among the quasigroup's multiplication and division operations (stated in the section on universal algebra) are

$$\begin{align}
  L(x)L(x)^{-1} &= 1\qquad&\text{corresponding to}\qquad x(x\backslash y) &= y \\
  L(x)^{-1}L(x) &= 1\qquad&\text{corresponding to}\qquad x\backslash(xy) &= y \\
  R(x)R(x)^{-1} &= 1\qquad&\text{corresponding to}\qquad (y/x)x &= y \\
  R(x)^{-1}R(x) &= 1\qquad&\text{corresponding to}\qquad (yx)/x &= y
\end{align}$$

where 1 denotes the identity mapping on _Q_.

Latin squares

The multiplication table of a finite quasigroup is a Latin square: an table filled with _n_ different symbols in such a way that each symbol occurs exactly once in each row and exactly once in each column.

Conversely, every Latin square can be taken as the multiplication table of a quasigroup in many ways: the border row (containing the column headers) and the border column (containing the row headers) can each be any permutation of the elements. See small Latin squares and quasigroups.

Inverse properties

Every loop element has a unique left and right inverse given by

_x_^(_λ_) = _e_/_x_  _x_^(_λ_)_x_ = _e_

_x_^(_ρ_) = _x_ ∖ _e_  _x__x_^(_ρ_) = _e_

A loop is said to have (_two-sided_) _inverses_ if x^(λ) = x^(ρ) for all _x_. In this case the inverse element is usually denoted by x^( − 1).

There are some stronger notions of inverses in loops which are often useful:

-   A loop has the _left inverse property_ if x^(λ)(xy) = y for all x and y. Equivalently, L(x)^( − 1) = L(x^(λ)) or x ∖ y = x^(λ)y.
-   A loop has the _right inverse property_ if (yx)x^(ρ) = y for all x and y. Equivalently, R(x)^( − 1) = R(x^(ρ)) or y/x = yx^(ρ).
-   A loop has the _antiautomorphic inverse property_ if (xy)^(λ) = y^(λ)x^(λ) or, equivalently, if (xy)^(ρ) = y^(ρ)x^(ρ).
-   A loop has the _weak inverse property_ when (xy)z = e if and only if x(yz) = e. This may be stated in terms of inverses via (xy)^(λ)x = y^(λ) or equivalently x(yx)^(ρ) = y^(ρ).

A loop has the _inverse property_ if it has both the left and right inverse properties. Inverse property loops also have the antiautomorphic and weak inverse properties. In fact, any loop which satisfies any two of the above four identities has the inverse property and therefore satisfies all four.

Any loop which satisfies the left, right, or antiautomorphic inverse properties automatically has two-sided inverses.


Morphisms

A quasigroup or loop homomorphism is a map between two quasigroups such that . Quasigroup homomorphisms necessarily preserve left and right division, as well as identity elements (if they exist).

Homotopy and isotopy

Let _Q_ and _P_ be quasigroups. A QUASIGROUP HOMOTOPY from _Q_ to _P_ is a triple of maps from _Q_ to _P_ such that

_α_(_x_)_β_(_y_) = _γ_(_x__y_) 
for all _x_, _y_ in _Q_. A quasigroup homomorphism is just a homotopy for which the three maps are equal.

An ISOTOPY is a homotopy for which each of the three maps is a bijection. Two quasigroups are ISOTOPIC if there is an isotopy between them. In terms of Latin squares, an isotopy is given by a permutation of rows α, a permutation of columns β, and a permutation on the underlying element set γ.

An AUTOTOPY is an isotopy from a quasigroup to itself. The set of all autotopies of a quasigroup form a group with the automorphism group as a subgroup.

Every quasigroup is isotopic to a loop. If a loop is isotopic to a group, then it is isomorphic to that group and thus is itself a group. However, a quasigroup which is isotopic to a group need not be a group. For example, the quasigroup on R with multiplication given by is isotopic to the additive group , but is not itself a group. Every medial quasigroup is isotopic to an abelian group by the Bruck–Toyoda theorem.

Conjugation (parastrophe)

Left and right division are examples of forming a quasigroup by permuting the variables in the defining equation. From the original operation ∗ (i.e., ) we can form five new operations: (the OPPOSITE operation), / and \, and their opposites. That makes a total of six quasigroup operations, which are called the CONJUGATES or PARASTROPHES of ∗. Any two of these operations are said to be "conjugate" or "parastrophic" to each other (and to themselves).

Isostrophe (paratopy)

If the set _Q_ has two quasigroup operations, ∗ and ·, and one of them is isotopic to a conjugate of the other, the operations are said to be ISOSTROPHIC to each other. There are also many other names for this relation of "isostrophe", e.g., PARATOPY.


Generalizations

Polyadic or multiary quasigroups

An _n_-ARY QUASIGROUP is a set with an _n_-ary operation, with , such that the equation has a unique solution for any one variable if all the other _n_ variables are specified arbitrarily. POLYADIC or MULTIARY means _n_-ary for some nonnegative integer _n_.

A 0-ary, or NULLARY, quasigroup is just a constant element of _Q_. A 1-ary, or UNARY, quasigroup is a bijection of _Q_ to itself. A BINARY, or 2-ary, quasigroup is an ordinary quasigroup.

An example of a multiary quasigroup is an iterated group operation, ; it is not necessary to use parentheses to specify the order of operations because the group is associative. One can also form a multiary quasigroup by carrying out any sequence of the same or different group or quasigroup operations, if the order of operations is specified.

There exist multiary quasigroups that cannot be represented in any of these ways. An _n_-ary quasigroup is IRREDUCIBLE if its operation cannot be factored into the composition of two operations in the following way:

_f_(_x_₁, …, _x__(_n_)) = _g_(_x_₁, …, _x__(_i_ − 1), _h_(_x__(_i_), …, _x__(_j_)), _x__(_j_ + 1), …, _x__(_n_)),
where and . Finite irreducible _n_-ary quasigroups exist for all ; see Akivis and Goldberg (2001) for details.

An _n_-ary quasigroup with an _n_-ary version of associativity is called an n-ary group.

Right- and left-quasigroups

A RIGHT-QUASIGROUP is a type (2,2) algebra satisfying both identities: _y_ = (_y_ / _x_) ∗ _x_; _y_ = (_y_ ∗ _x_) / _x_.

Similarly, a LEFT-QUASIGROUP is a type (2,2) algebra satisfying both identities: _y_ = _x_ ∗ (_x_ \ _y_); _y_ = _x_ \ (_x_ ∗ _y_).


Number of small quasigroups and loops

The number of isomorphism classes of small quasigroups and loops is given here:[9]

  Order   Number of quasigroups                                    Number of loops
  ------- -------------------------------------------------------- ---------------------------------------
  0       1                                                        0
  1       1                                                        1
  2       1                                                        1
  3       5                                                        1
  4       35                                                       2
  5       1,411                                                    6
  6       1,130,531                                                109
  7       12,198,455,835                                           23,746
  8       2,697,818,331,680,661                                    106,228,849
  9       15,224,734,061,438,247,321,497                           9,365,022,303,540
  10      2,750,892,211,809,150,446,995,735,533,513                20,890,436,195,945,769,617
  11      19,464,657,391,668,924,966,791,023,043,937,578,299,025   1,478,157,455,158,044,452,849,321,016



See also

-   Bol loop
-   Division ring – a ring in which every non-zero element has a multiplicative inverse
-   Semigroup – an algebraic structure consisting of a set together with an associative binary operation
-   Monoid – a semigroup with an identity element
-   Planar ternary ring – has an additive and multiplicative loop structure
-   Small Latin squares and quasigroups
-   Problems in loop theory and quasigroup theory
-   Mathematics of Sudoku


Notes


References

-   -   -   -   -   -   -   -   -


External links

-   quasigroups
-

Category:Non-associative algebra Category:Group theory Category:Latin squares

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] .

[9]