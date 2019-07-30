s of the Koch curve, where after each iteration, all original line segments are replaced with four, each a self-similar copy that is 1/3 the length of the original. One formalism of the Hausdorff dimension uses this scale factor (3) and the number of self-similar objects (4) to calculate the dimension, D, after the first iteration to be D = (log N)/(log S) = (log 4)/(log 3) ≈ 1.26.[1] That is, while the Hausdorff dimension of a single point is zero, of a line segment is 1, of a square is 2, and of a cube is 3, for fractals such as this, the object can have a non-integer dimension.]]

In mathematics, HAUSDORFF DIMENSION (a.k.a. FRACTAL DIMENSION) is a measure of _roughness_ and/or chaos that was first introduced in 1918 by mathematician Felix Hausdorff[2]. Applying the mathematical formula, the Hausdorff dimension of a single point is zero, of a line segment is 1, of a square is 2, and of a cube is 3. That is, for sets of points that define a smooth shape or a shape that has a small number of corners—the shapes of traditional geometry and science—the Hausdorff dimension is an integer agreeing with the usual sense of dimension, also known as the topological dimension. However, formulas have also been developed that allow calculation of the dimension of other less simple objects, where, based solely on their properties of scaling and self-similarity, one is led to the conclusion that particular objects—including fractals—have non-integer Hausdorff dimensions. Because of the significant technical advances made by Abram Samoilovitch Besicovitch allowing computation of dimensions for highly irregular or "rough" sets, this dimension is also commonly referred to as the _Hausdorff–Besicovitch dimension._

The Hausdorff dimension, more specifically, is a further dimensional number associated with a given set, where the distances between all members of that set are defined. Such a set is termed a metric space. The dimension is drawn from the extended real numbers, , as opposed to the more intuitive notion of dimension, which is not associated to general metric spaces, and only takes values in the non-negative integers.

In mathematical terms, the Hausdorff dimension generalizes the notion of the dimension of a real vector space. That is, the Hausdorff dimension of an _n_-dimensional inner product space equals _n_. This underlies the earlier statement that the Hausdorff dimension of a point is zero, of a line is one, etc., and that irregular sets can have noninteger Hausdorff dimensions. For instance, the Koch snowflake shown at right is constructed from an equilateral triangle; in each iteration, its component line segments are divided into 3 segments of unit length, the newly created middle segment is used as the base of a new equilateral triangle that points outward, and this base segment is then deleted to leave a final object from the iteration of unit length of 4.[3] That is, after the first iteration, each original line segment has been replaced with N=4, where each self-similar copy is 1/S = 1/3 as long as the original.[4] Stated another way, we have taken an object with Euclidean dimension, D, and reduced its linear scale by 1/3 in each direction, so that its length increases to N=S^(D).[5] This equation is easily solved for D, yielding the ratio of logarithms (or natural logarithms) appearing in the figures, and giving—in the Koch and other fractal cases—non-integer dimensions for these objects.

The Hausdorff dimension is a successor to the simpler, but usually equivalent, box-counting or Minkowski–Bouligand dimension.


Intuition

The intuitive concept of dimension of a geometric object _X_ is the number of independent parameters one needs to pick out a unique point inside. However, any point specified by two parameters can be instead specified by one, because the cardinality of the real plane is equal to the cardinality of the real line (this can be seen by an argument involving interweaving the digits of two numbers to yield a single number encoding the same information). The example of a space-filling curve shows that one can even take one real number into two both surjectively (so all pairs of numbers are covered) and _continuously_, so that a one-dimensional object completely fills up a higher-dimensional object.

Every space filling curve hits some points multiple times, and does not have a continuous inverse. It is impossible to map two dimensions onto one in a way that is continuous and continuously invertible. The topological dimension, also called Lebesgue covering dimension, explains why. This dimension is _n_ if, in every covering of _X_ by small open balls, there is at least one point where _n_ + 1 balls overlap. For example, when one covers a line with short open intervals, some points must be covered twice, giving dimension _n_ = 1.

But topological dimension is a very crude measure of the local size of a space (size near a point). A curve that is almost space-filling can still have topological dimension one, even if it fills up most of the area of a region. A fractal has an integer topological dimension, but in terms of the amount of space it takes up, it behaves like a higher-dimensional space.

The Hausdorff dimension measures the local size of a space taking into account the distance between points, the metric. Consider the number _N_(_r_) of balls of radius at most _r_ required to cover _X_ completely. When _r_ is very small, _N_(_r_) grows polynomially with 1/_r_. For a sufficiently well-behaved _X_, the Hausdorff dimension is the unique number _d_ such that N(_r_) grows as 1/_r^(d)_ as _r_ approaches zero. More precisely, this defines the box-counting dimension, which equals the Hausdorff dimension when the value _d_ is a critical boundary between growth rates that are insufficient to cover the space, and growth rates that are overabundant.

For shapes that are smooth, or shapes with a small number of corners, the shapes of traditional geometry and science, the Hausdorff dimension is an integer agreeing with the topological dimension. But Benoit Mandelbrot observed that fractals, sets with noninteger Hausdorff dimensions, are found everywhere in nature. He observed that the proper idealization of most rough shapes you see around you is not in terms of smooth idealized shapes, but in terms of fractal idealized shapes:

  Clouds are not spheres, mountains are not cones, coastlines are not circles, and bark is not smooth, nor does lightning travel in a straight line.[6]

For fractals that occur in nature, the Hausdorff and box-counting dimension coincide. The packing dimension is yet another similar notion which gives the same value for many shapes, but there are well documented exceptions where all these dimensions differ.


Formal definitions

Hausdorff content

Let _X_ be a metric space. If _S_ ⊂ _X_ and _d_ ∈ [0, ∞), the _d_-dimensional HAUSDORFF CONTENT of _S_ is defined by

$$C_H^d(S):=\inf\Bigl\{\sum_i r_i^d:\text{ there is a cover of } S\text{ by balls with radii }r_i>0\Bigr\}.$$
In other words, C_(H)^(d)(S) is the infimum of the set of numbers δ ≥ 0 such that there is some (indexed) collection of balls {B(x_(i), r_(i)) : i ∈ I} covering _S_ with _r_(i)_ > 0 for each _i_ ∈ _I_ that satisfies ∑_(i ∈ I)r_(i)^(d) < δ. (Here, we use the standard convention that inf Ø = ∞.)

Hausdorff dimension

The HAUSDORFF DIMENSION of _X_ is defined by

dim_(H)(_X_) := inf {_d_ ≥ 0 : _C__(_H_)^(_d_)(_X_) = 0}.

Equivalently, dim_(H)(_X_) may be defined as the infimum of the set of _d_ ∈ [0, ∞) such that the _d_-dimensional Hausdorff measure of _X_ is zero. This is the same as the supremum of the set of _d_ ∈ [0, ∞) such that the _d_-dimensional Hausdorff measure of _X_ is infinite (except that when this latter set of numbers _d_ is empty the Hausdorff dimension is zero).


Examples

example. The Sierpinski triangle, an object with Hausdorff dimension of log(3)/log(2)≈1.58.[7]]]

-   Countable sets have Hausdorff dimension 0.[8]
-   The Euclidean space ℝ^(_n_) has Hausdorff dimension _n_, and the circle S¹ has Hausdorff dimension 1.[9]
-   Fractals often are spaces whose Hausdorff dimension strictly exceeds the topological dimension.[10] For example, the Cantor set, a zero-dimensional topological space, is a union of two copies of itself, each copy shrunk by a factor 1/3; hence, it can be shown that its Hausdorff dimension is ln(2)/ln(3) ≈ 0.63.[11] The Sierpinski triangle is a union of three copies of itself, each copy shrunk by a factor of 1/2; this yields a Hausdorff dimension of ln(3)/ln(2) ≈ 1.58.[12] These Hausdorff dimensions are related to the "critical exponent" of the Master theorem for solving recurrence relations in the analysis of algorithms.
-   Space-filling curves like the Peano curve have the same Hausdorff dimension as the space they fill.
-   The trajectory of Brownian motion in dimension 2 and above is conjectured to be Hausdorff dimension 2.[13]

thumb]]

-   Lewis Fry Richardson has performed detailed experiments to measure the approximate Hausdorff dimension for various coastlines. His results have varied from 1.02 for the coastline of South Africa to 1.25 for the west coast of Great Britain.[14]


Properties of Hausdorff dimension

Hausdorff dimension and inductive dimension

Let _X_ be an arbitrary separable metric space. There is a topological notion of inductive dimension for _X_ which is defined recursively. It is always an integer (or +∞) and is denoted dim_(ind)(_X_).

THEOREM. Suppose _X_ is non-empty. Then

dim_(_H__a__u__s_)(_X_) ≥ dim_(ind)(_X_).
Moreover,

inf_(_Y_)dim_(Haus)(_Y_) = dim_(ind)(_X_),
where _Y_ ranges over metric spaces homeomorphic to _X_. In other words, _X_ and _Y_ have the same underlying set of points and the metric _d__(_Y_) of _Y_ is topologically equivalent to _d__(_X_).

These results were originally established by Edward Szpilrajn (1907–1976), e.g., see Hurewicz and Wallman, Chapter VII.

Hausdorff dimension and Minkowski dimension

The Minkowski dimension is similar to, and at least as large as, the Hausdorff dimension, and they are equal in many situations. However, the set of rational points in [0, 1] has Hausdorff dimension zero and Minkowski dimension one. There are also compact sets for which the Minkowski dimension is strictly larger than the Hausdorff dimension.

Hausdorff dimensions and Frostman measures

If there is a measure μ defined on Borel subsets of a metric space _X_ such that _μ_(_X_) > 0 and _μ_(_B_(_x_, _r_)) ≤ _r^(s)_ holds for some constant _s_ > 0 and for every ball _B_(_x_, _r_) in _X_, then dim_(Haus)(_X_) ≥ _s_. A partial converse is provided by Frostman's lemma.[15]

Behaviour under unions and products

If X = ⋃_(i ∈ I)X_(i) is a finite or countable union, then

dim_(Haus)(_X_) = sup_(_i_ ∈ _I_)dim_(Haus)(_X__(_i_)).

This can be verified directly from the definition.

If _X_ and _Y_ are non-empty metric spaces, then the Hausdorff dimension of their product satisfies[16]

dim_(Haus)(_X_ × _Y_) ≥ dim_(Haus)(_X_) + dim_(Haus)(_Y_).

This inequality can be strict. It is possible to find two sets of dimension 0 whose product has dimension 1.[17] In the opposite direction, it is known that when _X_ and _Y_ are Borel subsets of R^(_n_), the Hausdorff dimension of _X_ × _Y_ is bounded from above by the Hausdorff dimension of _X_ plus the upper packing dimension of _Y_. These facts are discussed in Mattila (1995).


Self-similar sets

Many sets defined by a self-similarity condition have dimensions which can be determined explicitly. Roughly, a set _E_ is self-similar if it is the fixed point of a set-valued transformation ψ, that is ψ(_E_) = _E_, although the exact definition is given below.

  THEOREM. Suppose

  _ψ__(_i_) : R^(_n_) → R^(_n_), _i_ = 1, …, _m_

  are contractive mappings on R^(_n_) with contraction constant _r_(j)_ < 1. Then there is a unique _non-empty_ compact set _A_ such that

  $$A = \bigcup_{i=1}^m \psi_i (A).$$

The theorem follows from Stefan Banach's contractive mapping fixed point theorem applied to the complete metric space of non-empty compact subsets of R^(_n_) with the Hausdorff distance.[18]

The open set condition

To determine the dimension of the self-similar set _A_ (in certain cases), we need a technical condition called the _open set condition_ (OSC) on the sequence of contractions ψ_(_i_).

There is a relatively compact open set _V_ such that

$$\bigcup_{i=1}^m\psi_i (V) \subseteq V,$$

where the sets in union on the left are pairwise disjoint.

The open set condition is a separation condition that ensures the images ψ_(_i_)(_V_) do not overlap "too much".

THEOREM. Suppose the open set condition holds and each ψ_(_i_) is a similitude, that is a composition of an isometry and a dilation around some point. Then the unique fixed point of ψ is a set whose Hausdorff dimension is _s_ where _s_ is the unique solution of[19]

$$\sum_{i=1}^m r_i^s = 1.$$

The contraction coefficient of a similitude is the magnitude of the dilation.

We can use this theorem to compute the Hausdorff dimension of the Sierpinski triangle (or sometimes called Sierpinski gasket). Consider three non-collinear points _a_₁, _a_₂, _a_₃ in the plane R² and let ψ_(_i_) be the dilation of ratio 1/2 around _a_(i)_. The unique non-empty fixed point of the corresponding mapping ψ is a Sierpinski gasket and the dimension _s_ is the unique solution of

$$\left(\frac{1}{2}\right)^s+\left(\frac{1}{2}\right)^s+\left(\frac{1}{2}\right)^s = 3 \left(\frac{1}{2}\right)^s =1.$$

Taking natural logarithms of both sides of the above equation, we can solve for _s_, that is: _s_ = ln(3)/ln(2). The Sierpinski gasket is self-similar and satisfies the OSC. In general a set _E_ which is a fixed point of a mapping

    $A \mapsto \psi(A) = \bigcup_{i=1}^m \psi_i(A)$

is self-similar if and only if the intersections

_H_^(_s_)(_ψ__(_i_)(_E_)∩_ψ__(_j_)(_E_)) = 0,

where _s_ is the Hausdorff dimension of _E_ and _H^(s)_ denotes Hausdorff measure. This is clear in the case of the Sierpinski gasket (the intersections are just points), but is also true more generally:

THEOREM. Under the same conditions as the previous theorem, the unique fixed point of ψ is self-similar.


See also

-   List of fractals by Hausdorff dimension Examples of deterministic fractals, random and natural fractals.
-   Assouad dimension, another variation of fractal dimension that, like Hausdorff dimension, is defined using coverings by balls
-   Intrinsic dimension
-   Packing dimension
-   Fractal dimension


References


Further reading

-   -   -   -   -   -   -
    Several selections from this volume are reprinted in See chapters 9,10,11

-   -   -


External links

-   Hausdorff dimension at Encyclopedia of Mathematics
-   Hausdorff measure at Encyclopedia of Mathematics

Category:Fractals Category:Metric geometry Category:Dimension theory

[1] MacGregor Campbell, 2013, "5.6 Scaling and the Hausdorff Dimension," at _Annenberg Learner:MATHematics illuminated_, see 1, accessed 5 March 2015.

[2]

[3] Larry Riddle, 2014, "Classic Iterated Function Systems: Koch Snowflake", Agnes Scott College e-Academy (online), see 2, accessed 5 March 2015.

[4]

[5] Keith Clayton, 1996, "Fractals and the Fractal Dimension," _Basic Concepts in Nonlinear Dynamics and Chaos_ (workshop), Society for Chaos Theory in Psychology and the Life Sciences annual meeting, June 28, 1996, Berkeley, California, see 3, accessed 5 March 2015.

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15] This Wikipedia article also discusses further useful characterizations of the Hausdorff dimension.

[16]

[17]

[18]

[19]