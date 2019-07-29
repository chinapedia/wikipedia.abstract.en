In mathematics, especially functional analysis, a BANACH ALGEBRA, named after Stefan Banach, is an associative algebra _A_ over the real or complex numbers (or over a non-Archimedean complete normed field) that at the same time is also a Banach space, i.e. a normed space and complete in the metric induced by the norm. The norm is required to satisfy

∀_x_, _y_ ∈ _A_ : ∥_x_ _y_∥  ≤ ∥_x_∥ ∥_y_∥.

This ensures that the multiplication operation is continuous.

A Banach algebra is called _unital_ if it has an identity element for the multiplication whose norm is 1, and _commutative_ if its multiplication is commutative. Any Banach algebra A (whether it has an identity element or not) can be embedded isometrically into a unital Banach algebra A_(e) so as to form a closed ideal of A_(e). Often one assumes _a priori_ that the algebra under consideration is unital: for one can develop much of the theory by considering A_(e) and then applying the outcome in the original algebra. However, this is not the case all the time. For example, one cannot define all the trigonometric functions in a Banach algebra without identity.

The theory of real Banach algebras can be very different from the theory of complex Banach algebras. For example, the spectrum of an element of a nontrivial complex Banach algebra can never be empty, whereas in a real Banach algebra it could be empty for some elements.

Banach algebras can also be defined over fields of p-adic numbers. This is part of p-adic analysis.


Examples

The prototypical example of a Banach algebra is C₀(X), the space of (complex-valued) continuous functions on a locally compact (Hausdorff) space that vanish at infinity. C₀(X) is unital if and only if _X_ is compact. The complex conjugation being an involution, C₀(X) is in fact a C*-algebra. More generally, every C*-algebra is a Banach algebra.

-   The set of real (or complex) numbers is a Banach algebra with norm given by the absolute value.
-   The set of all real or complex _n_-by-_n_ matrices becomes a unital Banach algebra if we equip it with a sub-multiplicative matrix norm.
-   Take the Banach space R^(_n_) (or C^(_n_)) with norm ||_x_|| = max |_x__(_i_)| and define multiplication componentwise: (_x_₁,...,_x__(_n_))(_y_₁,...,_y__(_n_)) = (_x_₁_y_₁,...,_x__(_n_)_y__(_n_)).
-   The quaternions form a 4-dimensional real Banach algebra, with the norm being given by the absolute value of quaternions.
-   The algebra of all bounded real- or complex-valued functions defined on some set (with pointwise multiplication and the supremum norm) is a unital Banach algebra.
-   The algebra of all bounded continuous real- or complex-valued functions on some locally compact space (again with pointwise operations and supremum norm) is a Banach algebra.
-   The algebra of all continuous linear operators on a Banach space _E_ (with functional composition as multiplication and the operator norm as norm) is a unital Banach algebra. The set of all compact operators on E is a Banach algebra and closed ideal. It is without identity if ∞}}.[1]
-   If _G_ is a locally compact Hausdorff topological group and μ its Haar measure, then the Banach space L¹(_G_) of all μ-integrable functions on _G_ becomes a Banach algebra under the convolution _xy_(_g_) = ∫ _x_(_h_) _y_(_h_^(−1)_g_) dμ(_h_) for _x_, _y_ in L¹(_G_).[2]
-   Uniform algebra: A Banach algebra that is a subalgebra of the complex algebra C(X) with the supremum norm and that contains the constants and separates the points of X (which must be a compact Hausdorff space).
-   Natural Banach function algebra: A uniform algebra all of whose characters are evaluations at points of X.
-   C*-algebra: A Banach algebra that is a closed *-subalgebra of the algebra of bounded operators on some Hilbert space.
-   Measure algebra: A Banach algebra consisting of all Radon measures on some locally compact group, where the product of two measures is given by convolution of measures.[3]


Counterexamples

The algebra of the quaternions $\H$ is not a complex Banach algebra (for any norm on $\H$), for if 𝒜 is a complex Banach algebra that is also a division algebra, then $\mathcal A \approx \C$ (Gelfand–Mazur theorem), since if $\lambda \in \C$ is a point in the non-empty[4] spectrum $\sigma(a) \subset \C$ of a ∈ 𝒜, a − λ1 is not invertible, hence a − λ1 = 0 since 𝒜 is a division algebra, whence a = λ1[5] (which also proves the Gelfand–Mazur theorem).


Properties

Several elementary functions which are defined via power series may be defined in any unital Banach algebra; examples include the exponential function and the trigonometric functions, and more generally any entire function. (In particular, the exponential map can be used to define abstract index groups.) The formula for the geometric series remains valid in general unital Banach algebras. The binomial theorem also holds for two commuting elements of a Banach algebra.

The set of invertible elements in any unital Banach algebra is an open set, and the inversion operation on this set is continuous, (and hence is a homeomorphism) so that it forms a topological group under multiplication.[6]

If a Banach algebra has unit 1, then 1 cannot be a commutator; i.e., xy − yx ≠ 1  for any _x_, _y_ ∈ _A_. This is because _xy_ and _yx_ have the same spectrum except possibly _0_.

The various algebras of functions given in the examples above have very different properties from standard examples of algebras such as the reals. For example:

-   Every real Banach algebra which is a division algebra is isomorphic to the reals, the complexes, or the quaternions. Hence, the only complex Banach algebra which is a division algebra is the complexes. (This is known as the Gelfand–Mazur theorem.)
-   Every unital real Banach algebra with no zero divisors, and in which every principal ideal is closed, is isomorphic to the reals, the complexes, or the quaternions.
-   Every commutative real unital Noetherian Banach algebra with no zero divisors is isomorphic to the real or complex numbers.
-   Every commutative real unital Noetherian Banach algebra (possibly having zero divisors) is finite-dimensional.
-   Permanently singular elements in Banach algebras are topological divisors of zero, _i.e._, considering extensions _B_ of Banach algebras _A_ some elements that are singular in the given algebra _A_ have a multiplicative inverse element in a Banach algebra extension _B_. Topological divisors of zero in _A_ are permanently singular in all Banach extension _B_ of _A_.


Spectral theory

Unital Banach algebras over the complex field provide a general setting to develop spectral theory. The _spectrum_ of an element _x_ ∈ _A_, denoted by σ(x), consists of all those complex scalars _λ_ such that _x_ − _λ_1 is not invertible in _A_. The spectrum of any element _x_ is a closed subset of the closed disc in C with radius ||_x_|| and center 0, and thus is compact. Moreover, the spectrum σ(x) of an element _x_ is non-empty and satisfies the spectral radius formula:

sup {|_λ_| : _λ_ ∈ _σ_(_x_)} = lim_(_n_ → ∞)∥_x_^(_n_)∥^(1/_n_).

Given _x_ ∈ _A_, the holomorphic functional calculus allows to define _ƒ_(_x_) ∈ _A_ for any function _ƒ_ holomorphic in a neighborhood of σ(x). Furthermore, the spectral mapping theorem holds:

_σ_(_f_(_x_)) = _f_(_σ_(_x_)).
[7]

When the Banach algebra _A_ is the algebra L(_X_) of bounded linear operators on a complex Banach space _X_  (e.g., the algebra of square matrices), the notion of the spectrum in _A_ coincides with the usual one in the operator theory. For _ƒ_ ∈ _C_(_X_) (with a compact Hausdorff space _X_), one sees that:

_σ_(_f_) = {_f_(_t_) : _t_ ∈ _X_}.

The norm of a normal element _x_ of a C*-algebra coincides with its spectral radius. This generalizes an analogous fact for normal operators.

Let _A_  be a complex unital Banach algebra in which every non-zero element _x_ is invertible (a division algebra). For every _a_ ∈ _A_, there is _λ_ ∈ C such that _a_ − _λ_1_' IS NOT INVERTIBLE (BECAUSE THE SPECTRUM OF _A_ IS NOT EMPTY) HENCE _A_ = ''Λ_1''' : this algebra _A_ is naturally isomorphic to C (the complex case of the Gelfand–Mazur theorem).


Ideals and characters

Let _A_  be a unital _commutative_ Banach algebra over C. Since _A_ is then a commutative ring with unit, every non-invertible element of _A_ belongs to some maximal ideal of _A_. Since a maximal ideal 𝔪 in _A_ is closed, A/𝔪 is a Banach algebra that is a field, and it follows from the Gelfand–Mazur theorem that there is a bijection between the set of all maximal ideals of _A_ and the set Δ(_A_) of all nonzero homomorphisms from _A_  to C. The set Δ(_A_) is called the "structure space" or "character space" of _A_, and its members "characters."

A character χ is a linear functional on _A_ which is at the same time multiplicative, χ(_ab_) = χ(_a_) χ(_b_), and satisfies _χ_(1) = 1. Every character is automatically continuous from _A_  to C, since the kernel of a character is a maximal ideal, which is closed. Moreover, the norm (_i.e._, operator norm) of a character is one. Equipped with the topology of pointwise convergence on _A_ (_i.e._, the topology induced by the weak-* topology of _A_^(∗)), the character space, Δ(_A_), is a Hausdorff compact space.

For any _x_ ∈ _A_,

_σ_(_x_) = _σ_(_x̂_)

where x̂ is the Gelfand representation of _x_ defined as follows: x̂ is the continuous function from Δ(_A_) to C given by x̂(χ) = χ(x).  The spectrum of x̂, in the formula above, is the spectrum as element of the algebra _C_(Δ(_A_)) of complex continuous functions on the compact space Δ(_A_). Explicitly,

_σ_(_x̂_) = {_χ_(_x_) : _χ_ ∈ _Δ_(_A_)}
.

As an algebra, a unital commutative Banach algebra is semisimple (i.e., its Jacobson radical is zero) if and only if its Gelfand representation has trivial kernel. An important example of such an algebra is a commutative C*-algebra. In fact, when _A_ is a commutative unital C*-algebra, the Gelfand representation is then an isometric *-isomorphism between _A_ and _C_(Δ(_A_)) .[8]


See also

-   Operator algebra
-   Shilov boundary
-   Automatic continuity
-   Kaplansky's conjecture
-   Approximate identity


Remarks


Notes


References

-   -   -   -   -   -

Banach_algebras Category:Fourier analysis Category:Science and technology in Poland

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Proof: Since every element of a commutative C*-algebra is normal, the Gelfand representation is isometric; in particular, it is injective and its image is closed. But the image of the Gelfand representation is dense by the Stone-Weierstrass theorem.