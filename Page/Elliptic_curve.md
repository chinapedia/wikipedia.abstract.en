EllipticCurveCatalog.svg

In mathematics, an ELLIPTIC CURVE is a plane algebraic curve defined by an equation of the form

_y_² = _x_³ + _a__x_ + _b_

which is non-singular; that is, the curve has no cusps or self-intersections. (When the coefficient field has characteristic 2 or 3, the above equation is not quite general enough to comprise all non-singular cubic curves; see below.)

Formally, an elliptic curve is a smooth, projective, algebraic curve of genus one, on which there is a specified point _O_. An elliptic curve is an abelian variety – that is, it has a multiplication defined algebraically, with respect to which it is an abelian group – and _O_ serves as the identity element. Often the curve itself, without _O_ specified, is called an elliptic curve; the point _O_ is often taken to be the curve's "point at infinity" in the projective plane.

If _y_² = _P_(_x_), where _P_ is any polynomial of degree three in _x_ with no repeated roots, the solution set is a nonsingular plane curve of genus one, an elliptic curve. If _P_ has degree four and is square-free this equation again describes a plane curve of genus one; however, it has no natural choice of identity element. More generally, any algebraic curve of genus one, for example from the intersection of two quadric surfaces embedded in three-dimensional projective space, is called an elliptic curve, provided that it has at least one rational point to act as the identity.

Using the theory of elliptic functions, it can be shown that elliptic curves defined over the complex numbers correspond to embeddings of the torus into the complex projective plane. The torus is also an abelian group, and in fact this correspondence is also a group isomorphism.

Elliptic curves are especially important in number theory, and constitute a major area of current research; for example, they were used in the proof, by Andrew Wiles, of Fermat's Last Theorem. They also find applications in elliptic curve cryptography (ECC) and integer factorization.

An elliptic curve is _not_ an ellipse: see elliptic integral for the origin of the term. Topologically, a complex elliptic curve is a torus.


Elliptic curves over the real numbers

ECClines-3.svg Although the formal definition of an elliptic curve is fairly technical and requires some background in algebraic geometry, it is possible to describe some features of elliptic curves over the real numbers using only introductory algebra and geometry.

In this context, an elliptic curve is a plane curve defined by an equation of the form

_y_² = _x_³ + _a__x_ + _b_

where _a_ and _b_ are real numbers. This type of equation is called a Weierstrass equation.

The definition of elliptic curve also requires that the curve be non-singular. Geometrically, this means that the graph has no cusps, self-intersections, or isolated points. Algebraically, this holds if and only if the discriminant

    Δ =  − 16(4a³ + 27b²)

is not equal to zero. (Although the factor −16 is irrelevant to whether or not the curve is non-singular, this definition of the discriminant is useful in a more advanced study of elliptic curves.)

The (real) graph of a non-singular curve has _two_ components if its discriminant is positive, and _one_ component if it is negative. For example, in the graphs shown in figure to the right, the discriminant in the first case is 64, and in the second case is −368.


The group law

When working in the projective plane, we can define a group structure on any smooth cubic curve. In Weierstrass normal form, such a curve will have an additional point at infinity, _O_, at the homogeneous coordinates [0:1:0] which serves as the identity of the group.

Since the curve is symmetrical about the x-axis, given any point _P_, we can take −_P_ to be the point opposite it. We take −_O_ to be just _O_.

If _P_ and _Q_ are two points on the curve, then we can uniquely describe a third point, _P_ + _Q_, in the following way. First, draw the line that intersects _P_ and _Q_. This will generally intersect the cubic at a third point, _R_. We then take _P_ + _Q_ to be −_R_, the point opposite _R_.

This definition for addition works except in a few special cases related to the point at infinity and intersection multiplicity. The first is when one of the points is _O_. Here, we define _P_ + _O_ = _P_ = _O_ + _P_, making _O_ the identity of the group. Next, if _P_ and _Q_ are opposites of each other, we define _P_ + _Q_ = _O_. Lastly, if _P_ = _Q_ we only have one point, thus we can't define the line between them. In this case, we use the tangent line to the curve at this point as our line. In most cases, the tangent will intersect a second point _R_ and we can take its opposite. However, if _P_ happens to be an inflection point (a point where the concavity of the curve changes), we take _R_ to be _P_ itself and _P_ + _P_ is simply the point opposite itself.

For a cubic curve not in Weierstrass normal form, we can still define a group structure by designating one of its nine inflection points as the identity _O_. In the projective plane, each line will intersect a cubic at three points when accounting for multiplicity. For a point _P_, −_P_ is defined as the unique third point on the line passing through _O_ and _P_. Then, for any _P_ and _Q_, _P_ + _Q_ is defined as −_R_ where _R_ is the unique third point on the line containing _P_ and _Q_.

Let _K_ be a field over which the curve is defined (i.e., the coefficients of the defining equation or equations of the curve are in _K_) and denote the curve by _E_. Then the _K_-rational points of _E_ are the points on _E_ whose coordinates all lie in _K_, including the point at infinity. The set of _K_-rational points is denoted by _E_(_K_). It, too, forms a group, because properties of polynomial equations show that if _P_ is in _E_(_K_), then −_P_ is also in _E_(_K_), and if two of _P_, _Q_, and _R_ are in _E_(_K_), then so is the third. Additionally, if _K_ is a subfield of _L_, then _E_(_K_) is a subgroup of _E_(_L_).

The above group can be described algebraically as well as geometrically. Given the curve _y_² = _x_³ + _ax_ + _b_ over the field _K_ (whose characteristic we assume to be neither 2 nor 3), and points _P_ = (_x_(P)_, _y_(P)_) and _Q_ = (_x_(Q)_, _y_(Q)_) on the curve, assume first that _x_(P)_ ≠ _x_(Q)_ (first pane below). Let _y = sx + d_ be the line that intersects _P_ and _Q_, which has the following slope:

$$s = \frac{y_P - y_Q}{x_P - x_Q}$$

Since _K_ is a field, _s_ is well-defined. The line equation and the curve equation have an identical _y_ in the points _x_(P)_, _x_(Q)_, and _x_(R)_.

(_s__x_ + _d_)² = _x_³ + _a__x_ + _b_

which is equivalent to 0 = x³ − s²x² − 2sdx + ax + b − d². We know that this equation has its roots in exactly the same _x_-values as

(_x_ − _x__(_P_))(_x_ − _x__(_Q_))(_x_ − _x__(_R_)) = _x_³ + _x_²( − _x__(_P_) − _x__(_Q_) − _x__(_R_)) + _x_(_x__(_P_)_x__(_Q_) + _x__(_P_)_x__(_R_) + _x__(_Q_)_x__(_R_)) − _x__(_P_)_x__(_Q_)_x__(_R_)

We equate the coefficient for _x²_ and solve for _x_(R)_. _y_(R)_ follows from the line equation. This defines _R_ = (_x_(R)_, _y_(R)_) = −(_P_ + _Q_) with

$$\begin{align}
  x_R &= s^2 - x_P - x_Q \\
  y_R &= y_P + s(x_R - x_P)
\end{align}$$

If _x_(P)_ = _x_(Q)_, then there are two options: if _y_(P)_ = −_y_(Q)_ (third and fourth panes below), including the case where _y_(P)_ = _y_(Q)_ = 0 (fourth pane), then the sum is defined as 0; thus, the inverse of each point on the curve is found by reflecting it across the _x_-axis. If _y_(P)_ = _y_(Q)_ ≠ 0, then _Q_ = _P_ and _R_ = (_x__(_R_), _y__(_R_)) = −(_P_ + _P_) = −2_P_ = −2_Q_ (second pane below with _P_ shown for _R_) is given by

$$\begin{align}
    s &= \frac{3{x_P}^2 + a}{2y_P}\\
  x_R &= s^2 - 2x_P\\
  y_R &= y_P + s(x_R - x_P)
\end{align}$$

Image:ECClines.svg


Elliptic curves over the complex numbers

Lattice_torsion_points.svg The formulation of elliptic curves as the embedding of a torus in the complex projective plane follows naturally from a curious property of Weierstrass's elliptic functions. These functions and their first derivative are related by the formula

℘′(_z_)² = 4℘(_z_)³ − _g_₂℘(_z_) − _g_₃

Here, _g_₂ and _g_₃ are constants; ℘(z) is the Weierstrass elliptic function and ℘′(z) its derivative. It should be clear that this relation is in the form of an elliptic curve (over the complex numbers). The Weierstrass functions are doubly periodic; that is, they are periodic with respect to a lattice Λ; in essence, the Weierstrass functions are naturally defined on a torus _T_ = C/Λ. This torus may be embedded in the complex projective plane by means of the map

_z_ ↦ [1 : ℘(_z_) : ℘′(_z_)/2]

This map is a group isomorphism of the torus (considered with its natural group structure) with the chord-and-tangent group law on the cubic curve which is the image of this map. It is also an isomorphism of Riemann surfaces from the torus to the cubic curve, so topologically, an elliptic curve is a torus. If the lattice Λ is related by multiplication by a non-zero complex number _c_ to a lattice _c_Λ, then the corresponding curves are isomorphic. Isomorphism classes of elliptic curves are specified by the j-invariant.

The isomorphism classes can be understood in a simpler way as well. The constants _g_₂ and _g_₃, called the modular invariants, are uniquely determined by the lattice, that is, by the structure of the torus. However, the complex numbers form the splitting field for polynomials with real coefficients, and so the elliptic curve may be written as

_y_² = _x_(_x_ − 1)(_x_ − _λ_)

One finds that

$$g_2 = \frac{\sqrt[3]4}{3} (\lambda^2 - \lambda + 1)$$

and

$$g_3 = \frac{1}{27} (\lambda + 1)(2\lambda^2 - 5\lambda + 2)$$

so that the modular discriminant is

_Δ_ = _g_₂³ − 27_g_₃² = _λ_²(_λ_ − 1)²

Here, λ is sometimes called the modular lambda function.

Note that the uniformization theorem implies that every compact Riemann surface of genus one can be represented as a torus.

This also allows an easy understanding of the torsion points on an elliptic curve: if the lattice Λ is spanned by the fundamental periods ω₁ and ω₂, then the _n_-torsion points are the (equivalence classes of) points of the form

$$\frac{a}{n} \omega_1 + \frac{b}{n} \omega_2$$

for _a_ and _b_ integers in the range from 0 to _n_−1.

Over the complex numbers, every elliptic curve has nine inflection points. Every line through two of these points also passes through a third inflection point; the nine points and 12 lines formed in this way form a realization of the Hesse configuration.


Elliptic curves over the rational numbers

A curve _E_ defined over the field of rational numbers is also defined over the field of real numbers. Therefore, the law of addition (of points with real coordinates) by the tangent and secant method can be applied to _E_. The explicit formulae show that the sum of two points _P_ and _Q_ with rational coordinates has again rational coordinates, since the line joining _P_ and _Q_ has rational coefficients. This way, one shows that the set of rational points of _E_ forms a subgroup of the group of real points of _E_. As this group, it is an abelian group, that is, _P_ + _Q_ = _Q_ + _P_.

The structure of rational points

The most important result is that all points can be constructed by the method of tangents and secants starting with a _finite_ number of points. More precisely[1] the Mordell–Weil theorem states that the group _E_(Q) is a finitely generated (abelian) group. By the fundamental theorem of finitely generated abelian groups it is therefore a finite direct sum of copies of Z and finite cyclic groups.

The proof of that theorem[2] rests on two ingredients: first, one shows that for any integer _m_ > 1, the quotient group _E_(Q)/_mE_(Q) is finite (weak Mordell–Weil theorem). Second, introducing a height function _h_ on the rational points _E_(Q) defined by _h_(_P_₀) = 0 and log max(|_p_|, |_q_|)}} if _P_ (unequal to the point at infinity _P_₀) has as abscissa the rational number _x_ = _p_/_q_ (with coprime _p_ and _q_). This height function _h_ has the property that _h_(_mP_) grows roughly like the square of _m_. Moreover, only finitely many rational points with height smaller than any constant exist on _E_.

The proof of the theorem is thus a variant of the method of infinite descent[3] and relies on the repeated application of Euclidean divisions on _E_: let _P_ ∈ _E_(Q) be a rational point on the curve, writing _P_ as the sum 2_P_₁ + _Q_₁ where _Q_₁ is a fixed representant of _P_ in _E_(Q)/2_E_(Q), the height of _P_₁ is about of the one of _P_ (more generally, replacing 2 by any _m_ > 1, and by ). Redoing the same with _P_₁, that is to say _P_₁ = 2_P_₂ + _Q_₂, then _P_₂ = 2_P_₃ + _Q_₃, etc. finally expresses _P_ as an integral linear combination of points _Q_(i)_ and of points whose height is bounded by a fixed constant chosen in advance: by the weak Mordell–Weil theorem and the second property of the height function _P_ is thus expressed as an integral linear combination of a finite number of fixed points.

So far, the theorem is not effective since there is no known general procedure for determining the representants of _E_(Q)/_mE_(Q).

The rank of _E_(Q), that is the number of copies of Z in _E_(Q) or, equivalently, the number of independent points of infinite order, is called the _rank_ of _E_. The Birch and Swinnerton-Dyer conjecture is concerned with determining the rank. One conjectures that it can be arbitrarily large, even if only examples with relatively small rank are known. The elliptic curve with biggest exactly known rank is

    _y_² + _xy_ + _y_ = _x_³ − _x_² + _x_ +

It has rank 19, found by Noam Elkies in 2009.[4] Curves of rank at least 28 are known, but their rank is not exactly known.

As for the groups constituting the torsion subgroup of _E_(Q), the following is known:[5] the torsion subgroup of _E_(Q) is one of the 15 following groups (a theorem due to Barry Mazur): Z/_N_Z for _N_ = 1, 2, ..., 10, or 12, or Z/2Z × Z/2_N_Z with _N_ = 1, 2, 3, 4. Examples for every case are known. Moreover, elliptic curves whose Mordell–Weil groups over Q have the same torsion groups belong to a parametrized family.[6]

The Birch and Swinnerton-Dyer conjecture

The _Birch and Swinnerton-Dyer conjecture_ (BSD) is one of the Millennium problems of the Clay Mathematics Institute. The conjecture relies on analytic and arithmetic objects defined by the elliptic curve in question.

At the analytic side, an important ingredient is a function of a complex variable, _L_, the Hasse–Weil zeta function of _E_ over Q. This function is a variant of the Riemann zeta function and Dirichlet L-functions. It is defined as an Euler product, with one factor for every prime number _p_.

For a curve _E_ over Q given by a minimal equation

_y_² + _a_₁_x__y_ + _a_₃_y_ = _x_³ + _a_₂_x_² + _a_₄_x_ + _a_₆

with integral coefficients a_(i), reducing the coefficients modulo _p_ defines an elliptic curve over the finite field F_(_p_) (except for a finite number of primes _p_, where the reduced curve has a singularity and thus fails to be elliptic, in which case _E_ is said to be of bad reduction at _p_).

The zeta function of an elliptic curve over a finite field F_(_p_) is, in some sense, a generating function assembling the information of the number of points of _E_ with values in the finite field extensions F_(_p^(n)_) of F_(_p_). It is given by[7]

$$Z(E(\mathbf{F}_p)) = \exp\left(\sum \# \left[E({\mathbf F}_{p^n})\right]\frac{T^n}{n}\right)$$

The interior sum of the exponential resembles the development of the logarithm and, in fact, the so-defined zeta function is a rational function:

$$Z(E(\mathbf{F}_p)) = \frac{1 - a_pT + pT^2}{(1 - T)(1 - pT)},$$
where the 'trace of Frobenius' term[8] a_(p) is defined to be the (negative of) the difference between the number of points on the elliptic curve E over 𝔽_(p) and the 'expected' number p + 1, viz.:

_a__(_p_) = _p_ + 1 − #_E_(𝔽_(_p_)).
Two points to note about this quantity: (i) DO NOT confuse these a_(p) with the a_(i) in the definition of the curve E above: this is just an unfortunate clash of notation; (ii) we may define the same quantities and functions over an arbitrary finite field of characteristic p, with q = p^(n) replacing p everywhere.

The Hasse–Weil zeta function of _E_ over Q is then defined by collecting this information together, for all primes _p_. It is defined by

_L_(_E_(Q), _s_) = ∏_(_p_)(1−_a__(_p_)_p_^( − _s_)+_ε_(_p_)_p_^(1 − 2_s_))^( − 1)

where ε(_p_) = 1 if _E_ has good reduction at _p_ and 0 otherwise (in which case _a_(p)_ is defined differently from the method above: see Silverman (1986) below).

This product converges for Re(_s_) > 3/2 only. Hasse's conjecture affirms that the _L_-function admits an analytic continuation to the whole complex plane and satisfies a functional equation relating, for any _s_, _L_(_E_, _s_) to _L_(_E_, 2 − _s_). In 1999 this was shown to be a consequence of the proof of the Shimura–Taniyama–Weil conjecture, which asserts that every elliptic curve over _Q_ is a modular curve, which implies that its _L_-function is the _L_-function of a modular form whose analytic continuation is known.

One can therefore speak about the values of _L_(_E_, _s_) at any complex number _s_. The Birch–Swinnerton-Dyer conjecture relates the arithmetic of the curve to the behavior of its _L_-function at _s_ = 1. More precisely, it affirms that the order of the _L_-function at _s_ = 1 equals the rank of _E_ and predicts the leading term of the Laurent series of _L_(_E_, _s_) at that point in terms of several quantities attached to the elliptic curve.

Much like the Riemann hypothesis, this conjecture has multiple consequences, including the following two:

-   Let _n_ be an odd square-free integer. Assuming the Birch and Swinnerton-Dyer conjecture, _n_ is the area of a right triangle with rational side lengths (a congruent number) if and only if the number of triplets of integers (_x_, _y_, _z_) satisfying 2x² + y² + 8z² = n is twice the number of triples satisfying 2x² + y² + 32z² = n. This statement, due to Tunnell, is related to the fact that _n_ is a congruent number if and only if the elliptic curve y² = x³ − n²x has a rational point of infinite order (thus, under the Birch and Swinnerton-Dyer conjecture, its _L_-function has a zero at 1). The interest in this statement is that the condition is easily verified.[9]
-   In a different direction, certain analytic methods allow for an estimation of the order of zero in the center of the critical strip of families of _L_-functions. Admitting the BSD conjecture, these estimations correspond to information about the rank of families of elliptic curves in question. For example: assuming the generalized Riemann hypothesis and the BSD conjecture, the average rank of curves given by y² = x³ + ax + b is smaller than 2.[10]

The modularity theorem and its application to Fermat's Last Theorem

The modularity theorem, once known as the Taniyama–Shimura–Weil conjecture, states that every elliptic curve _E_ over Q is a modular curve, that is to say, its Hasse–Weil zeta function is the _L_-function of a modular form of weight 2 and level _N_, where _N_ is the conductor of _E_ (an integer divisible by the same prime numbers as the discriminant of _E_, Δ(_E_).) In other words, if, for Re(_s_) > 3/2, one writes the _L_-function in the form

_L_(_E_(Q), _s_) = ∑_(_n_ > 0)_a_(_n_)_n_^( − _s_)

the expression

∑_a_(_n_)_q_^(_n_),  _q_ = _e_^(2_π__i__z_)

defines a parabolic modular newform of weight 2 and level _N_. For prime numbers ℓ not dividing _N_, the coefficient _a_(ℓ) of the form equals ℓ minus the number of solutions of the minimal equation of the curve modulo ℓ.

For example,[11] to the elliptic curve y² − y = x³ − x with discriminant (and conductor) 37, is associated the form

_f_(_z_) = _q_ − 2_q_² − 3_q_³ + 2_q_⁴ − 2_q_⁵ + 6_q_⁶ + ⋯,  _q_ = _e_^(2_π__i__z_)

For prime numbers ℓ not equal to 37, one can verify the property about the coefficients. Thus, for ℓ = 3, there are 6 solutions of the equation modulo 3: (0, 0), (0, 1), (2, 0), (1, 0), (1, 1), (2, 1); thus _a_(3) = 3 − 6 = −3.

The conjecture, going back to the 1950s, was completely proven by 1999 using ideas of Andrew Wiles, who proved it in 1994 for a large family of elliptic curves.[12]

There are several formulations of the conjecture. Showing that they are equivalent is difficult and was a main topic of number theory in the second half of the 20th century. The modularity of an elliptic curve _E_ of conductor _N_ can be expressed also by saying that there is a non-constant rational map defined over Q, from the modular curve _X_₀(_N_) to _E_. In particular, the points of _E_ can be parametrized by modular functions.

For example, a modular parametrization of the curve y² − y = x³ − x is given by[13]

$$\begin{align}
  x(z) &= q^{-2} + 2q^{-1} + 5 + 9q + 18q^2 + 29q^3 + 51q^4 +\ldots\\
  y(z) &= q^{-3} + 3q^{-2} + 9q^{-1} + 21 + 46q + 92q^2 + 180q^3 +\ldots
\end{align}$$

where, as above, _q_ = exp(2π_iz_). The functions _x(z)_ and _y(z)_ are modular of weight 0 and level 37; in other words they are meromorphic, defined on the upper half-plane Im(_z_) > 0 and satisfy

$$x\!\left(\frac{az + b}{cz + d}\right) = x(z)$$

and likewise for _y(z)_ for all integers _a, b, c, d_ with _ad_ − _bc_ = 1 and 37|_c_.

Another formulation depends on the comparison of Galois representations attached on the one hand to elliptic curves, and on the other hand to modular forms. The latter formulation has been used in the proof the conjecture. Dealing with the level of the forms (and the connection to the conductor of the curve) is particularly delicate.

The most spectacular application of the conjecture is the proof of Fermat's Last Theorem (FLT). Suppose that for a prime _p_ ≥ 5, the Fermat equation

_a_^(_p_) + _b_^(_p_) = _c_^(_p_)

has a solution with non-zero integers, hence a counter-example to FLT. Then as Yves Hellegouarch was the first to notice,[14] the elliptic curve

_y_² = _x_(_x_ − _a_^(_p_))(_x_ + _b_^(_p_))

of discriminant

$$\Delta = \frac{1}{256}(abc)^{2p}$$

cannot be modular.[15] Thus, the proof of the Taniyama–Shimura–Weil conjecture for this family of elliptic curves (called Hellegouarch–Frey curves) implies FLT. The proof of the link between these two statements, based on an idea of Gerhard Frey (1985), is difficult and technical. It was established by Kenneth Ribet in 1987.[16]

Integral points

This section is concerned with points _P_ = (_x_, _y_) of _E_ such that _x_ is an integer.[17] The following theorem is due to C. L. Siegel: the set of points _P_ = (_x_, _y_) of _E_(Q) such that _x_ is an integer is finite. This theorem can be generalized to points whose _x_ coordinate has a denominator divisible only by a fixed finite set of prime numbers.

The theorem can be formulated effectively. For example,[18] if the Weierstrass equation of _E_ has integer coefficients bounded by a constant _H_, the coordinates (_x_, _y_) of a point of _E_ with both _x_ and _y_ integer satisfy:

max (|_x_|,|_y_|) < exp ([10⁶_H_]^(10⁶))

For example, the equation _y_² = _x_³ + 17 has eight integral solutions with _y_ > 0 :[19]

    (_x_, _y_) = (−1, 4), (−2, 3), (2, 5), (4, 9), (8, 23), (43, 282), (52, 375), (, ).

As another example, Ljunggren's equation, a curve whose Weierstrass form is _y_² = _x_³ − 2_x_, has only four solutions with _y_ ≥ 0 :[20]

    (_x_, _y_) = (0, 0), (−1, 1), (2, 2), (338, ).

Generalization to number fields

Many of the preceding results remain valid when the field of definition of _E_ is a number field _K_, that is to say, a finite field extension of Q. In particular, the group _E(K)_ of _K_-rational points of an elliptic curve _E_ defined over _K_ is finitely generated, which generalizes the Mordell–Weil theorem above. A theorem due to Loïc Merel shows that for a given integer _d_, there are (up to isomorphism) only finitely many groups that can occur as the torsion groups of _E_(_K_) for an elliptic curve defined over a number field _K_ of degree _d_. More precisely,[21] there is a number _B_(_d_) such that for any elliptic curve _E_ defined over a number field _K_ of degree _d_, any torsion point of _E_(_K_) is of order less than _B_(_d_). The theorem is effective: for _d_ > 1, if a torsion point is of order _p_, with _p_ prime, then

_p_ < _d_^(3_d_²)

As for the integral points, Siegel's theorem generalizes to the following: Let _E_ be an elliptic curve defined over a number field _K_, _x_ and _y_ the Weierstrass coordinates. Then there are only finitely many points of _E(K)_ whose _x_-coordinate is in the ring of integers _O__(_K_).

The properties of the Hasse–Weil zeta function and the Birch and Swinnerton-Dyer conjecture can also be extended to this more general situation.


Elliptic curves over a general field

Elliptic curves can be defined over any field _K_; the formal definition of an elliptic curve is a non-singular projective algebraic curve over _K_ with genus 1 and endowed with a distinguished point defined over _K_.

If the characteristic of _K_ is neither 2 nor 3, then every elliptic curve over _K_ can be written in the form

_y_² = _x_³ − _p__x_ − _q_

where _p_ and _q_ are elements of _K_ such that the right hand side polynomial _x_³ − _px_ − _q_ does not have any double roots. If the characteristic is 2 or 3, then more terms need to be kept: in characteristic 3, the most general equation is of the form

_y_² = 4_x_³ + _b_₂_x_² + 2_b_₄_x_ + _b_₆

for arbitrary constants _b_₂, _b_₄, _b_₆ such that the polynomial on the right-hand side has distinct roots (the notation is chosen for historical reasons). In characteristic 2, even this much is not possible, and the most general equation is

_y_² + _a_₁_x__y_ + _a_₃_y_ = _x_³ + _a_₂_x_² + _a_₄_x_ + _a_₆

provided that the variety it defines is non-singular. If characteristic were not an obstruction, each equation would reduce to the previous ones by a suitable change of variables.

One typically takes the curve to be the set of all points (_x_,_y_) which satisfy the above equation and such that both _x_ and _y_ are elements of the algebraic closure of _K_. Points of the curve whose coordinates both belong to _K_ are called _K_-RATIONAL POINTS.


Isogeny

Let _E_ and _D_ be elliptic curves over a field _k_. An _isogeny_ between _E_ and _D_ is a finite morphism _f_ : _E_ → _D_ of varieties that preserves basepoints (in other words, maps the given point on _E_ to that on _D_).

The two curves are called _isogenous_ if there is an isogeny between them. This is an equivalence relation, symmetry being due to the existence of the dual isogeny. Every isogeny is an algebraic homomorphism and thus induces homomorphisms of the groups of the elliptic curves for _k_-valued points.


Elliptic curves over finite fields

Elliptic_curve_on_Z61.svg

Let _K_ = F_(_q_) be the finite field with _q_ elements and _E_ an elliptic curve defined over _K_. While the precise number of rational points of an elliptic curve _E_ over _K_ is in general rather difficult to compute, Hasse's theorem on elliptic curves gives us, including the point at infinity, the following estimate:

$$|\# E(K) - (q + 1) | \le 2\sqrt{q}$$

In other words, the number of points of the curve grows roughly as the number of elements in the field. This fact can be understood and proven with the help of some general theory; see local zeta function, Étale cohomology.

Elliptic_curve_on_Z89.svg

The set of points _E_(F_(_q_)) is a finite abelian group. It is always cyclic or the product of two cyclic groups. For example,[22] the curve defined by

_y_² = _x_³ − _x_

over F₇₁ has 72 points (71 affine points including (0,0) and one point at infinity) over this field, whose group structure is given by Z/2Z × Z/36Z. The number of points on a specific curve can be computed with Schoof's algorithm.

Studying the curve over the field extensions of F_(_q_) is facilitated by the introduction of the local zeta function of _E_ over F_(_q_), defined by a generating series (also see above)

$$Z(E(K), T) \equiv \exp \left(\sum_{n=1}^{\infty} \# \left[E(K_n)\right] {T^n\over n} \right)$$

where the field _K_(n)_ is the (unique up to isomorphism) extension of _K_ = F_(_q_) of degree _n_ (that is, F_(_q^(n)_)). The zeta function is a rational function in _T_. There is an integer _a_ such that

$$Z(E(K), T) = \frac{1 - aT + qT^2}{(1 - qT)(1 - T)}$$

Moreover,

$$\begin{align}
  Z \left(E(K), \frac{1}{qT} \right) &= Z(E(K), T)\\
         \left(1 - aT + qT^2 \right) &= (1 - \alpha T)(1 - \beta T)
\end{align}$$

with complex numbers α, β of absolute value $\sqrt{q}$. This result is a special case of the Weil conjectures. For example,[23] the zeta function of _E_ : _y_² + _y_ = _x_³ over the field F₂ is given by

$$\frac{1 + 2T^2}{(1 - T)(1 - 2T)}$$

this follows from:

$$\left| E(\mathbf{F}_{2^r}) \right| = \begin{cases} 2^r + 1 & r \text{ odd} \\ 2^r + 1 - 2(-2)^{\frac{r}{2}} & r \text{ even} \end{cases}$$

Elliptic_curve_on_Z71.svg

The Sato–Tate conjecture is a statement about how the error term $2\sqrt{q}$ in Hasse's theorem varies with the different primes _q_, if an elliptic curve E over Q is reduced modulo q. It was proven (for almost all such curves) in 2006 due to the results of Taylor, Harris and Shepherd-Barron,[24] and says that the error terms are equidistributed.

Elliptic curves over finite fields are notably applied in cryptography and for the factorization of large integers. These algorithms often make use of the group structure on the points of _E_. Algorithms that are applicable to general groups, for example the group of invertible elements in finite fields, F*_(_q_), can thus be applied to the group of points on an elliptic curve. For example, the discrete logarithm is such an algorithm. The interest in this is that choosing an elliptic curve allows for more flexibility than choosing _q_ (and thus the group of units in F_(_q_)). Also, the group structure of elliptic curves is generally more complicated.


Applications

-   Elliptic curve cryptography


Algorithms that use elliptic curves

Elliptic curves over finite fields are used in some cryptographic applications as well as for integer factorization. Typically, the general idea in these applications is that a known algorithm which makes use of certain finite groups is rewritten to use the groups of rational points of elliptic curves. For more see also:

-   Elliptic curve cryptography
-   Elliptic-curve Diffie–Hellman
-   Elliptic Curve Digital Signature Algorithm
-   EdDSA
-   Dual_EC_DRBG
-   Lenstra elliptic-curve factorization
-   Elliptic curve primality proving
-   Supersingular isogeny key exchange


Alternative representations of elliptic curves

-   Hessian curve
-   Edwards curve
-   Twisted curve
-   Twisted Hessian curve
-   Twisted Edwards curve
-   Doubling-oriented Doche–Icart–Kohel curve
-   Tripling-oriented Doche–Icart–Kohel curve
-   Jacobian curve
-   Montgomery curve


See also

-   Riemann–Hurwitz formula
-   Nagell–Lutz theorem
-   Arithmetic dynamics
-   Elliptic surface
-   Comparison of computer algebra systems
-   j-line
-   Elliptic algebra
-   Complex multiplication


Notes


References

Serge Lang, in the introduction to the book cited below, stated that "It is possible to write endlessly on elliptic curves. (This is not a threat.)" The following short list is thus at best a guide to the vast expository literature available on the theoretical, algorithmic, and cryptographic aspects of elliptic curves.

-   -   -   -   -   Chapter XXV

-   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   -   The Mathematical Atlas: 14H52 Elliptic Curves
-   -   The Arithmetic of elliptic curves from PlanetMath
-   , winner of the MAA writing prize the George Pólya Award

-   Matlab code for implicit function plotting – can be used to plot elliptic curves.
-   Interactive introduction to elliptic curves and elliptic curve cryptography with Sage by Maike Massierer and the CrypTool team
-   Geometric Elliptic Curve Model (Java applet drawing curves)
-   Interactive elliptic curve over R and over Zp – web application that requires HTML5 capable browser.
-   Comprehensive database of Elliptic Curves over Q

Elliptic_curves Category:Analytic number theory Category:Group theory

[1]

[2]

[3] See also J. W. S. Cassels, Mordell's Finite Basis Theorem Revisited, _Mathematical Proceedings of the Cambridge Philosophical Society_ 100, 3–41 and the comment of A. Weil on the genesis of his work: A. Weil, _Collected Papers_, vol. 1, 520–521.

[4]

[5]

[6]

[7] The definition is formal, the exponential of this power series without constant term denotes the usual development.

[8] see for example

[9]

[10]

[11] For the calculations, see for example

[12] A synthetic presentation (in French) of the main ideas can be found in this Bourbaki article of Jean-Pierre Serre. For more details see

[13]

[14]

[15]

[16] See the survey of

[17]

[18] , due to Baker.

[19] T. Nagell, _L'analyse indéterminée de degré supérieur_, Mémorial des sciences mathématiques 39, Paris, Gauthier-Villars, 1929, pp. 56–59.

[20]

[21]

[22] See

[23]

[24]