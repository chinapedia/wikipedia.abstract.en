Illustration_for_the_intermediate_value_theorem.svg In mathematical analysis, the INTERMEDIATE VALUE THEOREM states that if a continuous function, _f_, with an interval, [_a_, _b_], as its domain, takes values _f_(_a_) and _f_(_b_) at each end of the interval, then it also takes any value between _f_(_a_) and _f_(_b_) at some point within the interval.

This has two important corollaries:

1.  If a continuous function has values of opposite sign inside an interval, then it has a root in that interval (BOLZANO'S THEOREM).[1]
2.  The image of a continuous function over an interval is itself an interval.


Motivation

Intermediatevaluetheorem.svg

This captures an intuitive property of continuous functions: given _f_ continuous on [1, 2] with the known values _f_(1) = 3 and _f_(2) = 5. Then the graph of _y_ = _f_(_x_) must pass through the horizontal line _y_ = 4 while _x_ moves from 1 to 2. It represents the idea that the graph of a continuous function on a closed interval can be drawn without lifting a pencil from the paper.


Theorem

The intermediate value theorem states the following.

Consider an interval I = [a, b] in the real numbers $\R$ and a continuous function $f\colon I\to\R$. Then,

-   _Version I._ if u is a number between f(a) and f(b),



        that is, min (f(a), f(b)) < u < max (f(a), f(b)),

    then there is a c ∈ (a, b) such that f(c) = u.

-   _Version II._ the image set f(I) is also an interval, and it contains [min (f(a), f(b)), max (f(a), f(b))],

REMARK: _Version II_ states that the set of function values has no gap. For any two function values c < d, even if they are outside the interval between f(a) and f(b), all points in the interval [c, d] are also function values,

[_c_, _d_] ⊆ _f_(_I_)
. A subset of the real numbers with no internal gap is an interval. _Version I_ is naturally contained in _Version II_.


Relation to completeness

The theorem depends on, and is equivalent to, the completeness of the real numbers. The intermediate value theorem does not apply to the rational numbers ℚ because gaps exist between rational numbers; irrational numbers fill those gaps. For example, the function f(x) = x² − 2 for $x\in\Q$ satisfies f(0) =  − 2 and f(2) = 2. However, there is no rational number x such that f(x) = 0, because $\sqrt2$ is an irrational number.


Proof

The theorem may be proven as a consequence of the completeness property of the real numbers as follows:[2]

We shall prove the first case, f(a) < u < f(b). The second case is similar.

Let S be the set of all x ∈ [a, b] such that f(x) ≤ u. Then S is non-empty since a is an element of S, and S is bounded above by b. Hence, by completeness, the supremum c = sup S exists. That is, c is the lowest number that is greater than or equal to every member of S. We claim that f(c) = u.

Fix some ε > 0. Since f is continuous, there is a δ > 0 such that |f(x) − f(c)| < ε whenever |x − c| < δ. This means that

_f_(_x_) − _ε_ < _f_(_c_) < _f_(_x_) + _ε_
for all x ∈ (c − δ, c + δ). By the properties of the supremum, there exist a^(*) ∈ (c − δ, c] that is contained in S, so that for that a^(*)

_f_(_c_) < _f_(_a_^(*)) + _ε_ ≤ _u_ + _ε_
. Choose a^( * *) ∈ (c, c + δ) that will obviously not be contained in S, so we have

_f_(_c_) > _f_(_a_^( * *)) − _ε_  > _u_ − _ε_
. Both inequalities

_u_ − _ε_ < _f_(_c_) < _u_ + _ε_
are valid for all ε > 0, from which we deduce f(c) = u as the only possible value, as stated.

The intermediate value theorem is an easy consequence of the basic properties of connected sets: the preservation of connectedness under continuous functions and the characterization of connected subsets of ℝ as intervals (_see below for details_ _and alternate proof_)_._ The latter characterization is ultimately a consequence of the least-upper-bound property of the real numbers.

The intermediate value theorem can also be proved using the methods of non-standard analysis, which places "intuitive" arguments involving infinitesimals on a rigorous footing. (_See the article:_ non-standard calculus.)


History

For _u_ = 0 above, the statement is also known as _Bolzano's theorem._ This theorem was first proved by Bernard Bolzano in 1817. Augustin-Louis Cauchy provided a proof in 1821.[3] Both were inspired by the goal of formalizing the analysis of functions and the work of Joseph-Louis Lagrange. The idea that continuous functions possess the intermediate value property has an earlier origin. Simon Stevin proved the intermediate value theorem for polynomials (using a cubic as an example) by providing an algorithm for constructing the decimal expansion of the solution. The algorithm iteratively subdivides the interval into 10 parts, producing an additional decimal digit at each step of the iteration.[4] Before the formal definition of continuity was given, the intermediate value property was given as part of the definition of a continuous function. Proponents include Louis Arbogast, who assumed the functions to have no jumps, satisfy the intermediate value property and have increments whose sizes corresponded to the sizes of the increments of the variable.[5] Earlier authors held the result to be intuitively obvious and requiring no proof. The insight of Bolzano and Cauchy was to define a general notion of continuity (in terms of infinitesimals in Cauchy's case and using real inequalities in Bolzano's case), and to provide a proof based on such definitions.


Generalizations

The intermediate value theorem is closely linked to the topological notion of connectedness and follows from the basic properties of connected sets in metric spaces and connected subsets of ℝ in particular:

-   If X and Y are metric spaces, f: X → Y is a continuous map, and E ⊂ X is a connected subset, then f(E) is connected. (*)
-   A subset E ⊂ ℝ is connected if and only if it satisfies the following property: x, y ∈ E, x < r < y ⟹ r ∈ E. (**)

In fact, connectedness is a topological property and (*) generalizes to topological spaces: _If X and Y are topological spaces, f: X → Y is a continuous map, and X is a connected space, then f(X) is connected._ The preservation of connectedness under continuous maps can be thought of as a generalization of the intermediate value theorem, a property of real valued functions of a real variable, to continuous functions in general spaces.

Recall the first version of the intermediate value theorem, stated previously:

INTERMEDIATE VALUE THEOREM. _(Version I). Consider a closed interval I = [a, b] in the real numbers $\R$ and a continuous function $f\colon I\to\R$. Then, if u is a real number such that min (f(a), f(b)) < u < max (f(a), f(b)), there exists c ∈ (a, b) such that f(c) = u._

The intermediate value theorem is an immediate consequence of these two properties of connectedness:[6]

_PROOF:_ By (**), I = [a, b] is a connected set. It follows from (*) that the image, f(I), is also connected. For convenience, assume that f(a) < f(b). Then once more invoking (**), f(a) < u < f(b) implies that u ∈ f(I), or f(c) = u for some c ∈ I. Since u ≠ f(a), f(b), c ∈ (a, b) must actually hold, and the desired conclusion follows. The same argument applies if f(b) < f(a), so we are done.  ◼

The intermediate value theorem generalizes in a natural way: Suppose that _X_ is a connected topological space and (_Y_, <) is a totally ordered set equipped with the order topology, and let _f_ : _X_ → _Y_ be a continuous map. If _a_ and _b_ are two points in _X_ and _u_ is a point in _Y_ lying between _f_(_a_) and _f_(_b_) with respect to <, then there exists _c_ in _X_ such that _f_(_c_) = _u_. The original theorem is recovered by noting that ℝ is connected and that its natural topology is the order topology.

The Brouwer fixed-point theorem is a related theorem that, in one dimension gives a special case of the intermediate value theorem.


Converse is false

A "Darboux function" is a real-valued function _f_ that has the "intermediate value property", i.e., that satisfies the conclusion of the intermediate value theorem: for any two values _a_ and _b_ in the domain of _f_, and any _y_ between _f_(_a_) and _f_(_b_), there is some _c_ between _a_ and _b_ with _f_(_c_) = _y_. The intermediate value theorem says that every continuous function is a Darboux function. However, not every Darboux function is continuous; i.e., the converse of the intermediate value theorem is false.

As an example, take the function _f_ : [0, ∞) → [−1, 1] defined by _f_(_x_) = sin(1/_x_) for _x_ > 0 and f(0) = 0. This function is not continuous at _x_ = 0 because the limit of _f_(_x_) as _x_ tends to 0 does not exist; yet the function has the intermediate value property. Another, more complicated example is given by the Conway base 13 function.

Historically, this intermediate value property has been suggested as a _definition_ for continuity of real-valued functions[7]; this definition was not adopted.

Darboux's theorem states that all functions that result from the differentiation of some other function on some interval have the intermediate value property (even though they need not be continuous).


Practical applications

A similar result is the Borsuk–Ulam theorem.

Another generalization for which this holds is for any closed convex n (n > 1) dimensional shape. Specifically, for any continuous function whose domain is the given shape, and any point inside the shape (not necessarily its center), there exist two antipodal points with respect to the given point whose functional value is the same.

_Proof:_ Take _f_ to be any continuous function on a circle. Draw a line through the center of the circle, intersecting it at two opposite points _A_ and _B_. Let _d_ be defined by the difference _f_(_A_) − _f_(_B_). If the line is rotated 180 degrees, the value −_d_ will be obtained instead. Due to the intermediate value theorem there must be some intermediate rotation angle for which _d_ = 0, and as a consequence _f_(_A_) = _f_(_B_) at this angle.

The theorem also underpins the explanation of why rotating a wobbly table will bring it to stability (subject to certain easily met constraints).[8]


See also

-   Mean value theorem
-   Hairy ball theorem
-   Brouwer fixed point theorem


References


External links

-   Intermediate value Theorem - Bolzano Theorem at cut-the-knot
-   Bolzano's Theorem by Julio Cesar de la Yncera, Wolfram Demonstrations Project.
-   -   -   Mizar system proof: http://mizar.org/version/current/html/topreal5.html#T4

Category:Continuous mappings Category:Articles containing proofs Category:Theorems in calculus Category:Theorems in real analysis

[1]

[2] Essentially follows

[3]

[4] Karin Usadi Katz and Mikhail G. Katz (2011) A Burgessian Critique of Nominalistic Tendencies in Contemporary Mathematics and its Historiography. Foundations of Science. See link

[5]

[6]

[7]

[8] Keith Devlin (2007) How to stabilize a wobbly table