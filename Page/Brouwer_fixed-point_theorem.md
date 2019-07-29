BROUWER'S FIXED-POINT THEOREM is a fixed-point theorem in topology, named after L. E. J. (Bertus) Brouwer. It states that for any continuous function f mapping a compact convex set to itself there is a point x₀ such that f(x₀) = x₀. The simplest forms of Brouwer's theorem are for continuous functions f from a closed interval I in the real numbers to itself or from a closed disk D to itself. A more general form than the latter is for continuous functions from a convex compact subset K of Euclidean space to itself.

Among hundreds of fixed-point theorems,[1] Brouwer's is particularly well known, due in part to its use across numerous fields of mathematics. In its original field, this result is one of the key theorems characterizing the topology of Euclidean spaces, along with the Jordan curve theorem, the hairy ball theorem and the Borsuk–Ulam theorem.[2] This gives it a place among the fundamental theorems of topology.[3] The theorem is also used for proving deep results about differential equations and is covered in most introductory courses on differential geometry. It appears in unlikely fields such as game theory. In economics, Brouwer's fixed-point theorem and its extension, the Kakutani fixed-point theorem, play a central role in the proof of existence of general equilibrium in market economies as developed in the 1950s by economics Nobel prize winners Kenneth Arrow and Gérard Debreu.

The theorem was first studied in view of work on differential equations by the French mathematicians around Henri Poincaré and Charles Émile Picard. Proving results such as the Poincaré–Bendixson theorem requires the use of topological methods. This work at the end of the 19th century opened into several successive versions of the theorem. The general case was first proved in 1910 by Jacques Hadamard[4] and by Luitzen Egbertus Jan Brouwer.[5]


Statement

The theorem has several formulations, depending on the context in which it is used and its degree of generalization. The simplest is sometimes given as follows:

:;In the plane: Every continuous function from a closed disk to itself has at least one fixed point.[6]

This can be generalized to an arbitrary finite dimension:

:;In Euclidean space:Every continuous function from a closed ball of a Euclidean space into itself has a fixed point.[7]

A slightly more general version is as follows:[8]

:;Convex compact set:Every continuous function from a convex compact subset _K_ of a Euclidean space to _K_ itself has a fixed point.[9]

An even more general form is better known under a different name:

:;Schauder fixed point theorem:Every continuous function from a convex compact subset _K_ of a Banach space to _K_ itself has a fixed point.[10]


Importance of the pre-conditions

The theorem holds only for sets that are _compact_ (thus, in particular, bounded and closed) and _convex_ (or homeomorphic to convex). The following examples show why the pre-conditions are important.

Boundedness

Consider the function

_f_(_x_) = _x_ + 1,
which is a continuous function from ℝ to itself. As it shifts every point to the right, it cannot have a fixed point. The space ℝ is convex and closed, but not bounded.

Closedness

Consider the function

$$f(x) = \frac{x+1}{2},$$
which is a continuous function from the open interval (−1,1) to itself. In this interval, it shifts every point to the right, so it cannot have a fixed point. The space (−1,1) is convex and bounded, but not closed. The function _f_ have a fixed point for the closed interval [−1,1], namely _f_(1) = 1.

Convexity

Convexity is not strictly necessary for BFPT. Because the properties involved (continuity, being a fixed point) are invariant under homeomorphisms, BFPT is equivalent to forms in which the domain is required to be a closed unit ball D^(n). For the same reason it holds for every set that is homeomorphic to a closed ball (and therefore also closed, bounded, connected, without holes, etc.).

The following example shows that BFPT doesn't work for domains with holes. Consider the following function, defined in polar coordinates:

_f_(_r_, _θ_) = (_r_, _θ_ + _π_/4)
which is a continuous function from the unit circle to itself. It rotates every point on the unit circle 45 degrees counterclockwise, so it cannot have a fixed point. The unit circle is closed and bounded, but it has a hole (and so it is not convex). The function _f_ have a fixed point for the unit disc, since it takes the origin to itself.

A formal generalization of BFPT for "hole-free" domains can be derived from the Lefschetz fixed-point theorem.[11]

Notes

The continuous function in this theorem is not required to be bijective or even surjective.


Illustrations

The theorem has several "real world" illustrations. Here are some examples.

1. Take two sheets of graph paper of equal size with coordinate systems on them, lay one flat on the table and crumple up (without ripping or tearing) the other one and place it, in any fashion, on top of the first so that the crumpled paper does not reach outside the flat one. There will then be at least one point of the crumpled sheet that lies directly above its corresponding point (i.e. the point with the same coordinates) of the flat sheet. This is a consequence of the _n_ = 2 case of Brouwer's theorem applied to the continuous map that assigns to the coordinates of every point of the crumpled sheet the coordinates of the point of the flat sheet immediately beneath it.

2. Take an ordinary map of a country, and suppose that that map is laid out on a table inside that country. There will always be a "You are Here" point on the map which represents that same point in the country.

3. In three dimensions a consequence of the Brouwer fixed-point theorem is that, no matter how much you stir a cocktail in a glass (or think about milk shake), when the liquid has come to rest, some point in the liquid will end up in exactly the same place in the glass as before you took any action, assuming that the final position of each point is a continuous function of its original position, that the liquid after stirring is contained within the space originally taken up by it, and that the glass (and stirred surface shape) maintain a convex volume. Ordering a cocktail shaken, not stirred defeats the convexity condition ("shaking" being defined as a dynamic series of non-convex inertial containment states in the vacant headspace under a lid). In that case, the theorem would not apply, and thus all points of the liquid disposition are potentially displaced from the original state.


Intuitive approach

Explanations attributed to Brouwer

The theorem is supposed to have originated from Brouwer's observation of a cup of coffee.[12] If one stirs to dissolve a lump of sugar, it appears there is always a point without motion. He drew the conclusion that at any moment, there is a point on the surface that is not moving.[13] The fixed point is not necessarily the point that seems to be motionless, since the centre of the turbulence moves a little bit. The result is not intuitive, since the original fixed point may become mobile when another fixed point appears.

Brouwer is said to have added: "I can formulate this splendid result different, I take a horizontal sheet, and another identical one which I crumple, flatten and place on the other. Then a point of the crumpled sheet is in the same place as on the other sheet."[14] Brouwer "flattens" his sheet as with a flat iron, without removing the folds and wrinkles. This example is better than the coffee cup one as it shows that uniqueness of the fixed point may fail. This distinguishes Brouwer's result from other fixed-point theorems, such as Stefan Banach's, that guarantee uniqueness.

One-dimensional case

Théorème-de-Brouwer-dim-1.svg In one dimension, the result is intuitive and easy to prove. The continuous function _f_ is defined on a closed interval [_a_, _b_] and takes values in the same interval. Saying that this function has a fixed point amounts to saying that its graph (dark green in the figure on the right) intersects that of the function defined on the same interval [_a_, _b_] which maps _x_ to _x_ (light green).

Intuitively, any continuous line from the left edge of the square to the right edge must necessarily intersect the green diagonal. To prove this, consider the function _g_ which maps _x_ to _f_(_x_) - _x_. It is ≥ 0 on _a_ and ≤ 0 on _b_. By the intermediate value theorem, _g_ has a zero in [_a_, _b_]; this zero is a fixed point.

Brouwer is said to have expressed this as follows: "Instead of examining a surface, we will prove the theorem about a piece of string. Let us begin with the string in an unfolded state, then refold it. Let us flatten the refolded string. Again a point of the string has not changed its position with respect to its original position on the unfolded string."[15]


History

The Brouwer fixed point theorem was one of the early achievements of algebraic topology, and is the basis of more general fixed point theorems which are important in functional analysis. The case _n_ = 3 first was proved by Piers Bohl in 1904 (published in _Journal für die reine und angewandte Mathematik_).[16] It was later proved by L. E. J. Brouwer in 1909. Jacques Hadamard proved the general case in 1910,[17] and Brouwer found a different proof in the same year.[18] Since these early proofs were all non-constructive indirect proofs, they ran contrary to Brouwer's intuitionist ideals. Although the existence of a fixed point is not constructive in the sense of constructivism in mathematics, methods to approximate fixed points guaranteed by Brouwer's theorem are now known.[19][20]

Prehistory

Théorème-de-Brouwer-(cond-1).jpg Théorème-de-Brouwer-(cond-2).jpg To understand the prehistory of Brouwer's fixed point theorem one needs to pass through differential equations. At the end of the 19th century, the old problem[21] of the stability of the solar system returned into the focus of the mathematical community.[22] Its solution required new methods. As noted by Henri Poincaré, who worked on the three-body problem, there is no hope to find an exact solution: "Nothing is more proper to give us an idea of the hardness of the three-body problem, and generally of all problems of Dynamics where there is no uniform integral and the Bohlin series diverge."[23] He also noted that the search for an approximate solution is no more efficient: "the more we seek to obtain precise approximations, the more the result will diverge towards an increasing imprecision".[24]

He studied a question analogous to that of the surface movement in a cup of coffee. What can we say, in general, about the trajectories on a surface animated by a constant flow?[25] Poincaré discovered that the answer can be found in what we now call the topological properties in the area containing the trajectory. If this area is compact, i.e. both closed and bounded, then the trajectory either becomes stationary, or it approaches a limit cycle.[26] Poincaré went further; if the area is of the same kind as a disk, as is the case for the cup of coffee, there must necessarily be a fixed point. This fixed point is invariant under all functions which associate to each point of the original surface its position after a short time interval _t_. If the area is a circular band, or if it is not closed,[27] then this is not necessarily the case.

To understand differential equations better, a new branch of mathematics was born. Poincaré called it _analysis situs_. The French Encyclopædia Universalis defines it as the branch which "treats the properties of an object that are invariant if it is deformed in any continuous way, without tearing".[28] In 1886, Poincaré proved a result that is equivalent to Brouwer's fixed-point theorem,[29] although the connection with the subject of this article was not yet apparent.[30] A little later, he developed one of the fundamental tools for better understanding the analysis situs, now known as the fundamental group or sometimes the Poincaré group.[31] This method can be used for a very compact proof of the theorem under discussion.

Poincaré's method was analogous to that of Émile Picard, a contemporary mathematician who generalized the Cauchy–Lipschitz theorem.[32] Picard's approach is based on a result that would later be formalised by another fixed-point theorem, named after Banach. Instead of the topological properties of the domain, this theorem uses the fact that the function in question is a contraction.

First proofs

Hadamard2.jpg helped Brouwer to formalize his ideas.]] At the dawn of the 20th century, the interest in analysis situs did not stay unnoticed. However, the necessity of a theorem equivalent to the one discussed in this article was not yet evident. Piers Bohl, a Latvian mathematician, applied topological methods to the study of differential equations.[33] In 1904 he proved the three-dimensional case of our theorem,[34] but his publication was not noticed.[35]

It was Brouwer, finally, who gave the theorem its first patent of nobility. His goals were different from those of Poincaré. This mathematician was inspired by the foundations of mathematics, especially mathematical logic and topology. His initial interest lay in an attempt to solve Hilbert's fifth problem.[36] In 1909, during a voyage to Paris, he met Henri Poincaré, Jacques Hadamard, and Émile Borel. The ensuing discussions convinced Brouwer of the importance of a better understanding of Euclidean spaces, and were the origin of a fruitful exchange of letters with Hadamard. For the next four years, he concentrated on the proof of certain great theorems on this question. In 1912 he proved the hairy ball theorem for the two-dimensional sphere, as well as the fact that every continuous map from the two-dimensional ball to itself has a fixed point.[37] These two results in themselves were not really new. As Hadamard observed, Poincaré had shown a theorem equivalent to the hairy ball theorem.[38] The revolutionary aspect of Brouwer's approach was his systematic use of recently developed tools such as homotopy, the underlying concept of the Poincaré group. In the following year, Hadamard generalised the theorem under discussion to an arbitrary finite dimension, but he employed different methods. Hans Freudenthal comments on the respective roles as follows: "Compared to Brouwer's revolutionary methods, those of Hadamard were very traditional, but Hadamard's participation in the birth of Brouwer's ideas resembles that of a midwife more than that of a mere spectator."[39]

Brouwer's approach yielded its fruits, and in 1910 he also found a proof that was valid for any finite dimension,[40] as well as other key theorems such as the invariance of dimension.[41] In the context of this work, Brouwer also generalized the Jordan curve theorem to arbitrary dimension and established the properties connected with the degree of a continuous mapping.[42] This branch of mathematics, originally envisioned by Poincaré and developed by Brouwer, changed its name. In the 1930s, analysis situs became algebraic topology.[43]

Reception

John_f_nash_20061102_2.jpg used the theorem in game theory to prove the existence of an equilibrium strategy profile.]] The theorem proved its worth in more than one way. During the 20th century numerous fixed-point theorems were developed, and even a branch of mathematics called fixed-point theory.[44] Brouwer's theorem is probably the most important.[45] It is also among the foundational theorems on the topology of topological manifolds and is often used to prove other important results such as the Jordan curve theorem.[46]

Besides the fixed-point theorems for more or less contracting functions, there are many that have emerged directly or indirectly from the result under discussion. A continuous map from a closed ball of Euclidean space to its boundary cannot be the identity on the boundary. Similarly, the Borsuk–Ulam theorem says that a continuous map from the _n_-dimensional sphere to R^(n) has a pair of antipodal points that are mapped to the same point. In the finite-dimensional case, the Lefschetz fixed-point theorem provided from 1926 a method for counting fixed points. In 1930, Brouwer's fixed-point theorem was generalized to Banach spaces.[47] This generalization is known as Schauder's fixed-point theorem, a result generalized further by S. Kakutani to multivalued functions.[48] One also meets the theorem and its variants outside topology. It can be used to prove the Hartman-Grobman theorem, which describes the qualitative behaviour of certain differential equations near certain equilibria. Similarly, Brouwer's theorem is used for the proof of the Central Limit Theorem. The theorem can also be found in existence proofs for the solutions of certain partial differential equations.[49]

Other areas are also touched. In game theory, John Nash used the theorem to prove that in the game of Hex there is a winning strategy for white.[50] In economics, P. Bich explains that certain generalizations of the theorem show that its use is helpful for certain classical problems in game theory and generally for equilibria (Hotelling's law), financial equilibria and incomplete markets.[51]

Brouwer's celebrity is not exclusively due to his topological work. The proofs of his great topological theorems are not constructive,[52] and Brouwer's dissatisfaction with this is partly what led him to articulate the idea of constructivity. He became the originator and zealous defender of a way of formalising mathematics that is known as intuitionism, which at the time made a stand against set theory.[53] Brouwer disavowed his original proof of the fixed-point theorem. The first algorithm to approximate a fixed point was proposed by Herbert Scarf.[54] A subtle aspect of Scarf's algorithm is that it finds a point that is by a function _f_, but in general cannot find a point that is close to an actual fixed point. In mathematical language, if is chosen to be very small, Scarf's algorithm can be used to find a point _x_ such that _f_(_x_) is very close to _x_, i.e., d(f(x), x) < ε/ But Scarf's algorithm cannot be used to find a point _x_ such that _x_ is very close to a fixed point: we cannot guarantee d(x, y) < ε, where f(y) = y. Often this latter condition is what is meant by the informal phrase "approximating a fixed point".


Proof outlines

A proof using degree

Brouwer's original 1911 proof relied on the notion of the degree of a continuous mapping. Modern accounts of the proof can also be found in the literature.[55]

Let $K=\overline{B(0)}$ denote the closed unit ball in ℝ^(n) centered at the origin. Suppose for simplicitly that f : K → K is continuously differentiable. A regular value of f is a point p ∈ B(0) such that the Jacobian of f is non-singular at every point of the preimage of p. In particular, by the inverse function theorem, every point of the preimage of f lies in B(0) (the interior of K). The degree of f at a regular value p ∈ B(0) is defined as the sum of the signs of the Jacobian determinant of f over the preimages of p under f:

deg_(_p_)(_f_) = ∑_(_x_ ∈ _f_^( − 1)(_p_))sign (det(_D__f_(_x_))).

The degree is, roughly speaking, the number of "sheets" of the preimage _f_ lying over a small open set around _p_, with sheets counted oppositely if they are oppositely oriented. This is thus a generalization of winding number to higher dimensions.

The degree satisfies the property of _homotopy invariance_: let f and g be two continuously differentiable functions, and H_(t)(x) = tf + (1 − t)g for 0 ≤ t ≤ 1. Suppose that the point p is a regular value of H_(t) for all _t_. Then deg_(p)f = deg_(p)g.

If there is no fixed point of the boundary of K, then the function

$$g(x)=\frac{x-f(x)}{\sup_{x\in K}\left|x-f(x)\right|}$$

is well-defined, and

$H(t,x) = \frac{x-tf(x)}{\sup_{x\in K}\left|x-tf(x)\right|}$

defines a homotopy from the identity function to it. The identity function has degree one at every point. In particular, the identity function has degree one at the origin, so g also has degree one at the origin. As a consequence, the preimage g^( − 1)(0) is not empty. The elements of g^( − 1)(0) are precisely the fixed points of the original function _f_.

This requires some work to make fully general. The definition of degree must be extended to singular values of _f_, and then to continuous functions. The more modern advent of homology theory simplifies the construction of the degree, and so has become a standard proof in the literature.

A proof using homology

The proof uses the observation that the boundary of the _n_-disk _D_^(_n_) is _S_^(_n_−1), the (_n_ − 1)-sphere.

Brouwer_fixed_point_theorem_retraction.svg Suppose, for contradiction, that a continuous function _f_ : _D_^(_n_) → _D_^(_n_) has _no_ fixed point. This means that, for every point x in _D_^(_n_), the points _x_ and _f_(_x_) are distinct. Because they're distinct, for every point x in _D_^(_n_), we can construct a unique ray from _f_(_x_) to _x_ and follow the ray until it intersects the boundary _S_^(_n_−1) (see illustration). By calling this intersection point _F_(_x_), we define a function _F_ : _D_^(_n_) → _S_^(_n_−1) sending each point in the disk to its corresponding intersection point on the boundary. As a special case, whenever x itself is on the boundary, then the intersection point _F_(_x_) must be _x_.

Consequently, F is a special type of continuous function known as a retraction: every point of the codomain (in this case _S_^(_n_−1)) is a fixed point of _F_.

Intuitively it seems unlikely that there could be a retraction of _D_^(_n_) onto _S_^(_n_−1), and in the case _n_ = 1, the impossibility is more basic, because _S_⁰ (i.e., the endpoints of the closed interval _D_¹) is not even connected. The case _n_ = 2 is less obvious, but can be proven by using basic arguments involving the fundamental groups of the respective spaces: the retraction would induce an injective group homomorphism from the fundamental group of _S_¹ to that of _D_², but the first group is isomorphic to Z while the latter group is trivial, so this is impossible. The case _n_ = 2 can also be proven by contradiction based on a theorem about non-vanishing vector fields.

For _n_ > 2, however, proving the impossibility of the retraction is more difficult. One way is to make use of homology groups: the homology _H__(_n_ − 1)(_D_^(_n_)) is trivial, while _H__(_n_ − 1)(_S_^(_n_−1)) is infinite cyclic. This shows that the retraction is impossible, because again the retraction would induce an injective group homomorphism from the latter to the former group.

A proof using Stokes's theorem

To prove that a map has fixed points, one can assume that it is smooth, because if a map has no fixed points then convolving it with a smooth function of sufficiently small support and integral equal to one produces a smooth function with no fixed points. As in the proof using homology, one is reduced to proving that there is no smooth retraction _F_ from the ball _B_ onto its boundary _∂B_. If ω is a volume form on the boundary then by Stokes Theorem,

0 < ∫_(∂_B_)_ω_ = ∫_(∂_B_)_F_^(*)(_ω_) = ∫_(_B_)_d__F_^(*)(_ω_) = ∫_(_B_)_F_^(*)(_d__ω_) = ∫_(_B_)_F_^(*)(0) = 0
giving a contradiction.

More generally, this shows that there is no smooth retraction from any non-empty smooth orientable compact manifold onto its boundary. The proof using Stokes's theorem is closely related to the proof using homology (or rather cohomology), because the form ω generates the de Rham cohomology group _H_^(_n_−1)(_∂B_) used in the cohomology proof.

A combinatorial proof

The BFPT can be proved using Sperner's lemma. We now give an outline of the proof for the special case in which _f_ is a function from the standard _n_-simplex, Δ^(n), to itself, where

$$\Delta^n = \left\{P\in\mathbb{R}^{n+1}\mid\sum_{i = 0}^{n}{P_i} = 1 \text{ and } P_i \ge 0 \text{ for all } i\right\}.$$

For every point P ∈ Δ^(n), also f(P) ∈ Δ^(n). Hence the sum of their coordinates is equal:

$$\sum_{i = 0}^{n}{P_i} = 1 = \sum_{i = 0}^{n}{f(P)_i}$$

Hence, by the pigeonhole principle, for every P ∈ Δ^(n), there must be an index j ∈ {0, …, n} such that the jth coordinate of P is greater than or equal to the jth coordinate of its image under _f_:

_P__(_j_) ≥ _f_(_P_)_(_j_).

Moreover, if P lies on a _k_-dimensional sub-face of Δ^(n), then by the same argument, the index j can be selected from among the coordinates which are not zero on this sub-face.

We now use this fact to construct a Sperner coloring. For every triangulation of Δ^(n), the color of every vertex P is an index j such that f(P)_(j) ≤ P_(j).

By construction, this is a Sperner coloring. Hence, by Sperner's lemma, there is an _n_-dimensional simplex whose vertices are colored with the entire set of available colors.

Because _f_ is continuous, this simplex can be made arbitrarily small by choosing an arbitrarily fine triangulation. Hence, there must be a point P which satisfies the labeling condition in all coordinates: f(P)_(j) ≤ P_(j) for all j.

Because the sum of the coordinates of P and f(P) must be equal, all these inequalities must actually be equalities. But this means that:

_f_(_P_) = _P_.

That is, P is a fixed point of f.

A proof by Hirsch

There is also a quick proof, by Morris Hirsch, based on the impossibility of a differentiable retraction. The indirect proof starts by noting that the map _f_ can be approximated by a smooth map retaining the property of not fixing a point; this can be done by using the Weierstrass approximation theorem, for example. One then defines a retraction as above which must now be differentiable. Such a retraction must have a non-singular value, by Sard's theorem, which is also non-singular for the restriction to the boundary (which is just the identity). Thus the inverse image would be a 1-manifold with boundary. The boundary would have to contain at least two end points, both of which would have to lie on the boundary of the original ball—which is impossible in a retraction.

R. Bruce Kellogg, Tien-Yien Li, and James A. Yorke turned Hirsch's proof into a computable proof by observing that the retract is in fact defined everywhere except at the fixed points. For almost any point, _q_, on the boundary, (assuming it is not a fixed point) the one manifold with boundary mentioned above does exist and the only possibility is that it leads from _q_ to a fixed point. It is an easy numerical task to follow such a path from _q_ to the fixed point so the method is essentially computable. gave a conceptually similar path-following version of the homotopy proof which extends to a wide variety of related problems.

A proof using the _oriented area_

A variation of the preceding proof does not employ the Sard's theorem, and goes as follows. If r: B → ∂B is a smooth retraction, one considers the smooth deformation g^(t)(x) := t r(x) + (1 − t)x, and the smooth function

_φ_(_t_) := ∫_(_B_)det _D__g_^(_t_)(_x_)_d__x_.
Differentiating under the sign of integral it is not difficult to check that __(_t_) = 0 for all _t_, so _φ_ is a constant function, which is a contradiction because _φ_(0) is the _n_-dimensional volume of the ball, while _φ_(1) is zero. The geometric idea is that _φ_(_t_) is the oriented area of _g_^(_t_)(_B_) (that is, the Lebesgue measure of the image of the ball via _g_^(_t_), taking into account multiplicity and orientation), and should remain constant (as it is very clear in the one-dimensional case). On the other hand, as the parameter _t_ passes form 0 to 1 the map _g_^(_t_) transforms continuously from the identity map of the ball, to the retraction _r_, which is a contradiction since the oriented area of the identity coincides with the volume of the ball, while the oriented area of _r_ is necessarily 0, as its image is the boundary of the ball, a set of null measure.

A proof using the game hex

A quite different proof given by David Gale is based on the game of Hex. The basic theorem about Hex is that no game can end in a draw. This is equivalent to the Brouwer fixed-point theorem for dimension 2. By considering _n_-dimensional versions of Hex, one can prove in general that Brouwer's theorem is equivalent to the determinacy theorem for Hex.[56]

A proof using the Lefschetz fixed-point theorem

The Lefschetz fixed-point theorem says that if a continuous map _f_ from a finite simplicial complex _B_ to itself has only isolated fixed points, then the number of fixed points counted with multiplicities (which may be negative) is equal to the Lefschetz number

∑_(_n_)( − 1)^(_n_)Tr (_f_|_H__(_n_)(_B_))
and in particular if the Lefschetz number is nonzero then _f_ must have a fixed point. If _B_ is a ball (or more generally is contractible) then the Lefschetz number is one because the only non-zero homology group is
_H_₀(_B_)
and _f_ acts as the identity on this group, so _f_ has a fixed point.

A proof in a weak logical system

In reverse mathematics, Brouwer's theorem can be proved in the system WKL₀, and conversely over the base system RCA₀ Brouwer's theorem for a square implies the weak König's lemma, so this gives a precise description of the strength of Brouwer's theorem.


Generalizations

The Brouwer fixed-point theorem forms the starting point of a number of more general fixed-point theorems.

The straightforward generalization to infinite dimensions, i.e. using the unit ball of an arbitrary Hilbert space instead of Euclidean space, is not true. The main problem here is that the unit balls of infinite-dimensional Hilbert spaces are not compact. For example, in the Hilbert space ℓ² of square-summable real (or complex) sequences, consider the map _f_ : ℓ² → ℓ² which sends a sequence (_x__(_n_)) from the closed unit ball of ℓ² to the sequence (_y__(_n_)) defined by

$$y_0=\sqrt{1-\|x\|_2^2}\qquad\text{ and }\qquad y_n=x_{n-1}\quad\text{ for }\quad n\geq 1.$$
It is not difficult to check that this map is continuous, has its image in the unit sphere of ℓ², but does not have a fixed point.

The generalizations of the Brouwer fixed-point theorem to infinite dimensional spaces therefore all include a compactness assumption of some sort, and also often an assumption of convexity. See fixed-point theorems in infinite-dimensional spaces for a discussion of these theorems.

There is also finite-dimensional generalization to a larger class of spaces: If X is a product of finitely many chainable continua, then every continuous function f : X → X has a fixed point,[57] where a chainable continuum is a (usually but in this case not necessarily metric) compact Hausdorff space of which every open cover has a finite open refinement {U₁, …, U_(m)}, such that U_(i) ∩ U_(j) ≠ ∅ if and only if |i − j| ≤ 1. Examples of chainable continua include compact connected linearly ordered spaces and in particular closed intervals of real numbers.

The Kakutani fixed point theorem generalizes the Brouwer fixed-point theorem in a different direction: it stays in R^(_n_), but considers upper hemi-continuous set-valued functions (functions that assign to each point of the set a subset of the set). It also requires compactness and convexity of the set.

The Lefschetz fixed-point theorem applies to (almost) arbitrary compact topological spaces, and gives a condition in terms of singular homology that guarantees the existence of fixed points; this condition is trivially satisfied for any map in the case of _D_^(_n_).


Equivalent results


See also

-   Banach fixed-point theorem
-   Infinite compositions of analytic functions
-   Nash equilibrium
-   Poincaré–Miranda theorem – equivalent to the Brouwer fixed-point theorem
-   Topological combinatorics


Notes


References

-   -   -   (see p. 72–73 for Hirsch's proof utilizing non-existence of a differentiable retraction)

-   -   -   -   Leoni, Giovanni (2017). _A First Course in Sobolev Spaces: Second Edition_. Graduate Studies in Mathematics. 181. American Mathematical Society. pp. 734.
-


External links

-   Brouwer's Fixed Point Theorem for Triangles at cut-the-knot
-   Brouwer theorem, from PlanetMath with attached proof.
-   Reconstructing Brouwer at MathPages
-   Brouwer Fixed Point Theorem at Math Images.

Category:Fixed-point theorems Category:Continuous mappings Category:Theorems in topology Category:Theorems in convex geometry

[1] E.g. F & V Bayart _Théorèmes du point fixe_ on Bibm@th.net

[2] See page 15 of: D. Leborgne _Calcul différentiel et géométrie_ Puf (1982)

[3] More exactly, according to Encyclopédie Universalis: _Il en a démontré l'un des plus beaux théorèmes, le théorème du point fixe, dont les applications et généralisations, de la théorie des jeux aux équations différentielles, se sont révélées fondamentales._ Luizen Brouwer by G. Sabbagh

[4] Jacques Hadamard: _Note sur quelques applications de l’indice de Kronecker_ in Jules Tannery: _Introduction à la théorie des fonctions d’une variable_ (Volume 2), 2nd edition, A. Hermann & Fils, Paris 1910, pp. 437–477 (French)

[5] L. E. J. Brouwer _Über Abbildungen von Mannigfaltigkeiten_ Mathematische Annalen 71, pp. 97–115, (German; published 25 July 1911, written July 1910)

[6] D. Violette _Applications du lemme de Sperner pour les triangles_ Bulletin AMQ, V. XLVI N° 4, (2006) p 17.

[7] Page 15 of: D. Leborgne _Calcul différentiel et géométrie_ Puf (1982) .

[8] This version follows directly from the previous one because every convex compact subset of a Euclidean space is homeomorphic to a closed ball of the same dimension as the subset; see

[9] V. & F. Bayart _Point fixe, et théorèmes du point fixe_ on Bibmath.net.

[10] C. Minazzo K. Rider _Théorèmes du Point Fixe et Applications aux Equations Différentielles_ Université de Nice-Sophia Antipolis.

[11]

[12] The interest of this anecdote rests in its intuitive and didactic character, but its accuracy is dubious. As the history section shows, the origin of the theorem is not Brouwer's work. More than 20 years earlier Henri Poincaré had proved an equivalent result, and 5 years before Brouwer P. Bohl had proved the three-dimensional case.

[13] This citation comes originally from a television broadcast: _Archimède_, Arte, 21 septembre 1999

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21] See F. Brechenmacher _L'identité algébrique d'une pratique portée par la discussion sur l'équation à l'aide de laquelle on détermine les inégalités séculaires des planètes_ CNRS Fédération de Recherche Mathématique du Nord-Pas-de-Calais

[22] Henri Poincaré won the King of Sweden's mathematical competition in 1889 for his work on the related three-body problem: Jacques Tits _Célébrations nationales 2004_ Site du Ministère Culture et Communication

[23] Henri Poincaré _Les méthodes nouvelles de la mécanique céleste_ T Gauthier-Villars, Vol 3 p 389 (1892) new edition Paris: Blanchard, 1987.

[24] Quotation from Henri Poincaré taken from: P. A. Miquel _La catégorie de désordre _, on the website of l'Association roumaine des chercheurs francophones en sciences humaines

[25] This question was studied in:

[26] This follows from the Poincaré–Bendixson theorem.

[27] Multiplication by on ]0, 1[² has no fixed point.

[28] "concerne les propriétés invariantes d'une figure lorsqu’on la déforme de manière continue quelconque, sans déchirure (par exemple, dans le cas de la déformation de la sphère, les propriétés corrélatives des objets tracés sur sa surface". From C. Houzel M. Paty _Poincaré, Henri (1854–1912) _ Encyclopædia Universalis Albin Michel, Paris, 1999, p. 696–706

[29] Poincaré's theorem is stated in: V. I. Istratescu _Fixed Point Theory an Introduction_ Kluwer Academic Publishers (réédition de 2001) p 113

[30] M.I. Voitsekhovskii _Brouwer theorem_ Encyclopaedia of Mathematics

[31]

[32] See for example: Émile Picard _Sur l'application des méthodes d'approximations successives à l'étude de certaines équations différentielles ordinaires _ Journal de Mathématiques p 217 (1893)

[33] J. J. O'Connor E. F. Robertson _Piers Bohl_

[34]

[35]

[36] J. J. O'Connor E. F. Robertson _Luitzen Egbertus Jan Brouwer_

[37]

[38]

[39]

[40]

[41] If an open subset of a manifold is homeomorphic to an open subset of a Euclidean space of dimension _n_, and if _p_ is a positive integer other than _n_, then the open set is never homeomorphic to an open subset of a Euclidean space of dimension _p_.

[42] J. J. O'Connor E. F. Robertson _Luitzen Egbertus Jan Brouwer_.

[43] The term _algebraic topology_ first appeared 1931 under the pen of David van Dantzig: J. Miller _Topological algebra_ on the site Earliest Known Uses of Some of the Words of Mathematics (2007)

[44] V. I. Istratescu _Fixed Point Theory. An Introduction_ Kluwer Academic Publishers (new edition 2001) .

[45] "... Brouwer's fixed point theorem, perhaps the most important fixed point theorem." p xiii V. I. Istratescu _Fixed Point Theory an Introduction_ Kluwer Academic Publishers (new edition 2001) .

[46] E.g.: S. Greenwood J. Cao'' Brouwer’s Fixed Point Theorem and the Jordan Curve Theorem'' University of Auckland, New Zealand.

[47]

[48]

[49] These examples are taken from: F. Boyer _Théorèmes de point fixe et applications_ CMI Université Paul Cézanne (2008–2009) Archived copy at WebCite (August 1, 2010).

[50] For context and references see the article Hex (board game).

[51] P. Bich _Une extension discontinue du théorème du point fixe de Schauder, et quelques applications en économie _ Institut Henri Poincaré, Paris (2007)

[52] For a long explanation, see:

[53] Later it would be shown that the formalism that was combatted by Brouwer can also serve to formalise intuitionism, with some modifications. For further details see constructive set theory.

[54] H. Scarf found the first algorithmic proof: M.I. Voitsekhovskii _Brouwer theorem_ Encyclopaedia of Mathematics .

[55]

[56]

[57]