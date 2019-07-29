There are several well-known theorems in functional analysis known as the RIESZ REPRESENTATION THEOREM. They are named in honor of Frigyes Riesz.

This article will describe his theorem concerning the dual of a Hilbert space, which is sometimes called the Fréchet–Riesz theorem. For the theorems relating linear functionals to measures, see Riesz–Markov–Kakutani representation theorem.


The Hilbert space representation theorem

This theorem establishes an important connection between a Hilbert space and its continuous dual space. If the underlying field is the real numbers, the two are isometrically isomorphic; if the underlying field is the complex numbers, the two are isometrically anti-isomorphic. The (anti-) isomorphism is a particular natural one as will be described next; a natural isomorphism.

Let _H_ be a Hilbert space, and let _H*_ denote its dual space, consisting of all continuous linear functionals from _H_ into the field ℝ or ℂ. If x is an element of _H_, then the function φ_(x), for all y in _H_ defined by:

φ_(x)(y) = ⟨y,x⟩,

where ⟨⋅, ⋅ ⟩ denotes the inner product of the Hilbert space, is an element of _H*_. The Riesz representation theorem states that _every_ element of _H*_ can be written uniquely in this form.

''' Riesz-Fréchet representation theorem. ''' Let H be a Hilbert space and φ ∈ H^(*). Then there exists f ∈ H such that for any x ∈ H, φ(x) = ⟨f, x⟩. Moreover ∥f∥_(H) = ∥φ∥_(H*)

PROOF. Let M = {u ∈ H | φ(u) = 0}. Clearly M is closed subspace of H. If M = H, then we can trivially choose v = 0. Now assume M ≠ H. Then M^(⊥) is one-dimensional. Indeed, let v₁, v₂ be nonzero vectors in M^(⊥). Then there is nonzero real number λ, such that λφ(v₁) = φ(v₂). Observe that λv₁ − v₂ ∈ M^(⊥) and φ(λv₁ − v₂) = 0, so λv₁ − v₂ ∈ M. This means that λv₁ − v₂ = 0. Now let g be unit vector in M^(⊥). For arbitrary x ∈ H, let v be the orthogonal projections of x onto M^(⊥) respectively. Then v = ⟨g, v⟩g and ⟨g, x − v⟩ = 0 (from the properties of orthogonal projections), so that x − v ∈ M and ⟨g, x⟩ = ⟨g, v⟩. Thus φ(x) = φ(v + x − v) = φ(⟨g, v⟩g) + φ(x − v) = ⟨g, v⟩φ(g) = ⟨g, x⟩φ(g). Hence f = φ(g)g. We also see ∥f∥_(H) = φ(g). From the Cauchy-Bunyakovsky-Schwartz inequality φ(x) ≤ ∥g∥∥x∥φ(g), thus for x with unit norm φ(x) ≤ φ(g). This implies that ∥φ∥_(H*) = φ(g).

Given any continuous linear functional _g_ in _H*_, the corresponding element x_(g) ∈ H can be constructed uniquely by x_(g) = g(e₁)e₁ + g(e₂)e₂ + ..., where {e_(i)} is an orthonormal basis of _H_, and the value of x_(g) does not vary by choice of basis. Thus, if y ∈ H, y = a₁e₁ + a₂e₂ + ..., then g(y) = a₁g(e₁) + a₂g(e₂) + ... = ⟨x_(g), y⟩.

THEOREM. The mapping Φ: _H_ → _H*_ defined by Φ(x) = φ_(x) is an isometric (anti-) isomorphism, meaning that:

-   Φ is bijective.
-   The norms of x and φ_(x) agree: ‖x‖ = ‖Φ(x)‖.
-   Φ is additive: Φ(x₁ + x₂) = Φ(x₁) + Φ(x₂).
-   If the base field is ℝ, then Φ(λx) = λΦ(x) for all real numbers λ.
-   If the base field is ℂ, then Φ(λx) = λ̄Φ(x) for all complex numbers λ, where λ̄ denotes the complex conjugation of λ.

The inverse map of Φ can be described as follows. Given a non-zero element φ of _H*_, the orthogonal complement of the kernel of φ is a one-dimensional subspace of _H_. Take a non-zero element _z_ in that subspace, and set $x = \overline{\varphi(z)} \cdot z /{\left\Vert z \right\Vert}^2$. Then Φ(x) = φ.

Historically, the theorem is often attributed simultaneously to Riesz and Fréchet in 1907 (see references).

In the mathematical treatment of quantum mechanics, the theorem can be seen as a justification for the popular bra–ket notation. The theorem says that, every bra ⟨ψ| has a corresponding ket |ψ⟩, and the latter is unique.


References

-   M. Fréchet (1907). Sur les ensembles de fonctions et les opérations linéaires. _C. R. Acad. Sci. Paris_ 144, 1414–1416.
-   F. Riesz (1907). Sur une espèce de géométrie analytique des systèmes de fonctions sommables. _C. R. Acad. Sci. Paris_ 144, 1409–1411.
-   F. Riesz (1909). Sur les opérations fonctionnelles linéaires. _C. R. Acad. Sci. Paris_ _149_, 974–977.
-   P. Halmos _Measure Theory_, D. van Nostrand and Co., 1950.
-   P. Halmos, _A Hilbert Space Problem Book_, Springer, New York 1982 _(problem 3 contains version for vector spaces with coordinate systems)_.
-   Walter Rudin, _Real and Complex Analysis_, McGraw-Hill, 1966, .
-

Category:Theorems in functional analysis Category:Duality theories Category:Integral representations