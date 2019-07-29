In quantum mechanics, BRA–KET NOTATION is a standard notation for describing quantum states. It can also be used to denote abstract vectors and linear functionals in mathematics. The notation uses angle brackets (the ⟨ and ⟩ symbols) and a vertical bar (the | symbol), to denote the scalar product of vectors or the action of a linear functional on a vector in a complex vector space. [1] The scalar product or action is written as

⟨_ϕ_ ∣ _ψ_⟩.

The right part is called the KET ; it is a vector, typically represented as a column vector, and written |ψ⟩.

The left part is called the BRA, ; it is the Hermitian conjugate of the ket with the same label, typically represented as a row vector, and written ⟨ϕ|.

A combination of bras, kets, and operators is interpreted using matrix multiplication. A bra and a ket with the same label are Hermitian conjugates of each other.

Bra-ket notation was introduced in 1939 by Paul Dirac[2][3] and is also known as the DIRAC NOTATION. However the bra-ket notation has a precursor in Hermann Grassmann's use of the notation [ϕ ∣ ψ] for his inner products nearly 100 years earlier.[4]


Introduction

Bra–ket notation is a notation for linear algebra, particularly focused on vectors, inner products, linear operators, Hermitian conjugation, and the dual space, for both finite-dimensional and infinite-dimensional complex vector spaces. It is specifically designed to ease the types of calculations that frequently come up in quantum mechanics.

Its use in quantum mechanics is quite widespread. Many phenomena that are explained using quantum mechanics are usually explained using bra–ket notation.

In simple cases, a ket can be described as a column vector, a bra with the same label is its conjugate transpose (which is a row vector), and writing bras, kets, and linear operators next to each other implies matrix multiplication.[5] However, kets may also exist in uncountably-infinite-dimensional vector spaces, such that they cannot be literally written as a column vector. Also, writing a column vector as a list of numbers requires picking a basis, whereas one can write "" without committing to any particular basis. This is helpful because quantum mechanics calculations involve frequently switching between different bases (e.g. position basis, momentum basis, energy eigenbasis, etc.), so it is better to have the basis vectors (if any) written out explicitly. In some situations involving two important basis vectors they will be referred to simply as "" and "".

The standard mathematical notation for the inner product, preferred as well by some physicists, expresses exactly the same thing as the bra–ket notation,

(_ϕ_, _ψ_) = ⟨_ϕ_ ∣ _ψ_⟩ = (⟨_ϕ_|) (|_ψ_⟩),

Bras and kets can also be configured in other ways, such as the outer product

|_ψ_⟩⟨_ϕ_|

which can also be represented as a matrix multiplication (i.e., a column vector times a row vector equals a matrix).

If the ket is an element of a vector space, the bra is technically an element of its dual space—see Riesz representation theorem.


Vector spaces

Vectors vs kets

In mathematics, the term "vector" is used to refer generally to any element of any vector space. In physics, however, the term "vector" is much more specific: "Vector" refers almost exclusively to quantities like displacement or velocity, which have three components that relate directly to the three dimensions of the real world. Such vectors are typically denoted with over arrows () or boldface ().

In quantum mechanics, a quantum state is typically represented as an element of an abstract complex vector space—for example the infinite-dimensional vector space of all possible wavefunctions (functions mapping each point of 3D space to a complex number). Since the term "vector" is already used for something else (see previous paragraph), it is very common to refer to these elements of abstract complex vector spaces as "kets", and to write them using ket notation.

Ket notation

Ket notation, invented by Dirac, uses vertical bars and angular brackets: . When this notation is used, these quantities are called "kets", and is read as "ket-A".[6] These kets can be manipulated using the usual rules of linear algebra, for example:

$$\begin{align}
|A \rangle &= |B\rangle + |C\rangle \\
|C \rangle &= (-1+2i)|D \rangle \\
|D \rangle &= \int_{-\infty}^{\infty} e^{-x^2} |x\rangle \, \mathrm{d}x \,.
\end{align}$$

Note how any symbols, letters, numbers, or even words—whatever serves as a convenient label—can be used as the label inside a ket. For example, the last line above involves infinitely many different kets, one for each real number . In other words, the symbol "" has a specific and universal mathematical meaning, while just the "" by itself does not. For example, might or might not be equal to . Nevertheless, for convenience, there is usually some logical scheme behind the labels inside kets, such as the common practice of labeling energy eigenkets in quantum mechanics through a listing of their quantum numbers.

Inner products and bras

An inner product is a generalization of the dot product. The inner product of two vectors is a scalar. In neutral notation (notation dedicated to the inner product _only_), this might be written , where and are elements of the abstract vector space, i.e. both are _kets_.[7]

Bra–ket notation uses a specific notation for inner products:

(_A_, _B_) = ⟨_A_|_B_⟩ = the inner product of ket |_A_⟩ with ket |_B_⟩

Bra–ket notation splits this inner product (also called a "bracket") into two pieces, the "bra" and the "ket":

⟨_A_|_B_⟩ = (⟨_A_|) (|_B_⟩)

where is called a bra, read as "bra-A", and is a ket as above.

The purpose of "splitting" the inner product into a bra and a ket is that _both_ the bra and the ket are meaningful _on their own_, and can be used in other contexts besides within an inner product. There are two main ways to think about the meanings of separate bras and kets. Accordingly, the interpretation of the expression has a second interpretation, namely that of the action of a linear functional per below.

Bras and kets as row and column vectors

For a finite-dimensional vector space, using a fixed orthonormal basis, the inner product can be written as a matrix multiplication of a row vector with a column vector:

$$\langle A | B \rangle \doteq A_1^* B_1 + A_2^* B_2 + \cdots + A_N^* B_N =
\begin{pmatrix} A_1^* & A_2^* & \cdots & A_N^* \end{pmatrix}
\begin{pmatrix} B_1 \\ B_2 \\ \vdots \\ B_N \end{pmatrix}$$
Based on this, the bras and kets can be defined as:

$$\begin{align} \langle A | &\doteq \begin{pmatrix} A_1^* & A_2^* & \cdots & A_N^* \end{pmatrix} \\
| B \rangle &\doteq \begin{pmatrix} B_1 \\ B_2 \\ \vdots \\ B_N \end{pmatrix} \end{align}$$
and then it is understood that a bra next to a ket implies matrix multiplication.

The conjugate transpose (also called _Hermitian conjugate_) of a bra is the corresponding ket and vice versa:

⟨_A_|^(†) = |_A_⟩, |_A_⟩^(†) = ⟨_A_|
because if one starts with the bra

$$\begin{pmatrix} A_1^* & A_2^* & \cdots & A_N^* \end{pmatrix} \,,$$
then performs a complex conjugation, and then a matrix transpose, one ends up with the ket

$$\begin{pmatrix} A_1 \\ A_2 \\ \vdots \\ A_N \end{pmatrix}$$

Bras as linear functionals

A more abstract definition, which is equivalent but more easily generalized to infinite-dimensional spaces, is to say that bras are linear functionals on the space of kets, i.e. linear transformations that input a ket and output a complex number. The bra linear functionals are defined to be consistent with the inner product. Thus, if is the linear functional corresponding to under the Riesz representation theorem, then

⟨_A_|_B_⟩ = ⟨_A_|(|_B_⟩) ,

i.e. it produces _the same_ complex number as the inner product does. The terminology for the right hand side is though _not_ inner product, which always involves two _kets_. While confusing this is harmless, since the same number is produced in the end.

In mathematics terminology, the vector space of bras is the dual space to the vector space of kets, and corresponding bras and kets are related by the Riesz representation theorem.

Non-normalizable states and non-Hilbert spaces

Bra–ket notation can be used even if the vector space is not a Hilbert space.

In quantum mechanics, it is common practice to write down kets which have infinite norm, i.e. non-normalizable wavefunctions. Examples include states whose wavefunctions are Dirac delta functions or infinite plane waves. These do not, technically, belong to the Hilbert space itself. However, the definition of "Hilbert space" can be broadened to accommodate these states (see the Gelfand–Naimark–Segal construction or rigged Hilbert spaces). The bra–ket notation continues to work in an analogous way in this broader context.

Banach spaces are a different generalization of Hilbert spaces. In a Banach space , the vectors may be notated by kets and the continuous linear functionals by bras. Over any vector space without topology, we may also notate the vectors by kets and the linear functionals by bras. In these more general contexts, the bracket does not have the meaning of an inner product, because the Riesz representation theorem does not apply.


Usage in quantum mechanics

The mathematical structure of quantum mechanics is based in large part on linear algebra:

-   Wave functions and other quantum states can be represented as vectors in a complex Hilbert space. (The exact structure of this Hilbert space depends on the situation.) In bra–ket notation, for example, an electron might be in the "state" . (Technically, the quantum states are _rays_ of vectors in the Hilbert space, as corresponds to the same state for any nonzero complex number .)
-   Quantum superpositions can be described as vector sums of the constituent states. For example, an electron in the state is in a quantum superposition of the states and .
-   Measurements are associated with linear operators (called observables) on the Hilbert space of quantum states.
-   Dynamics are also described by linear operators on the Hilbert space. For example, in the Schrödinger picture, there is a linear time evolution operator with the property that if an electron is in state right now, at a later time it will be in the state , the same for every possible .
-   Wave function normalization is scaling a wave function so that its norm is 1.

Since virtually every calculation in quantum mechanics involves vectors and linear operators, it can involve, and often does involve, bra–ket notation. A few examples follow:

Spinless position–space wave function

 , which belongs to a _countably infinite_-dimensional Hilbert space; there are countably infinitely many  values and basis vectors .
  | width2    = 230
  | image2    = Continuous complex vector components.svg
  | caption2  = Continuous components  of a complex vector  ∫ d_x_ _ψ_(_x_)}}, which belongs to an _uncountably infinite_-dimensional Hilbert space; there are infinitely many  values and basis vectors .
 }}

The Hilbert space of a spin-0 point particle is spanned by a "position basis" , where the label extends over the set of all points in position space. This label is the eigenvalue of the position operator acting on such a basis state, $\hat{\mathbf{r}}|\mathbf{r}\rangle =   \mathbf{r}|\mathbf{r}\rangle$. Since there are an uncountably infinite number of vector components in the basis, this is an uncountably infinite-dimensional Hilbert space. The dimensions of the Hilbert space (usually infinite) and position space (usually 1, 2 or 3) are not to be conflated.

Starting from any ket in this Hilbert space, one may _define_ a complex scalar function of , known as a wavefunction,

$$\Psi(\mathbf{r}) \ \stackrel{\text{def}}{=}\ \lang \mathbf{r}|\Psi\rang \,.$$

On the left-hand side, is a function mapping any point in space to a complex number; on the right-hand side, ∫ d³R Ψ(R) }} is a ket consisting of a superposition of kets with relative coefficients specified by that function.

It is then customary to define linear operators acting on wavefunctions in terms of linear operators acting on kets, by

$$\hat A \Psi(\mathbf{r}) \ \stackrel{\text{def}}{=}\ \lang \mathbf{r}|\hat A|\Psi\rang \,.$$

For instance, the momentum operator $\hat \mathbf {p}$ has the following form,

$$\hat{\mathbf{p} }\Psi(\mathbf{r}) \ \stackrel{\text{def}}{=}\ \lang \mathbf{r} |\hat \mathbf{p}|\Psi\rang = - i \hbar \nabla \Psi(\mathbf{r}) \,.$$

One occasionally encounters an expression such as

∇|_Ψ_⟫ ,
though this is something of an abuse of notation. The differential operator must be understood to be an abstract operator, acting on kets, that has the effect of differentiating wavefunctions once the expression is projected onto the position basis, ∇⟪R|Ψ⟫ , even though, in the momentum basis, this operator amounts to a mere multiplication operator (by ). That is, to say,

$$\langle \mathbf{r} |\hat \mathbf{p}   =  - i \hbar \nabla \langle \mathbf{r}| ~,$$
or

$$\hat \mathbf{p}   =  \int d^3 \mathbf{r} ~| \mathbf{r}\rangle (  - i \hbar \nabla) \langle \mathbf{r}| ~.$$

Overlap of states

In quantum mechanics the expression is typically interpreted as the probability amplitude for the state to collapse into the state . Mathematically, this means the coefficient for the projection of onto . It is also described as the projection of state onto state .

Changing basis for a spin- particle

A stationary [[spin-½|spin-, play an important role in quantum mechanics; for example, an observable is always described by a self-adjoint operator. If is a self-adjoint operator, then is always a real number (not complex). This implies that expectation values of observables are real.


Properties

Bra–ket notation was designed to facilitate the formal manipulation of linear-algebraic expressions. Some of the properties that allow this manipulation are listed herein. In what follows, and denote arbitrary complex numbers, denotes the complex conjugate of , and denote arbitrary linear operators, and these properties are to hold for any choice of bras and kets.

Linearity

-   Since bras are linear functionals,

⟨_ϕ_|(_c_₁|_ψ_₁⟩ + _c_₂|_ψ_₂⟩) = _c_₁⟨_ϕ_|_ψ_₁⟩ + _c_₂⟨_ϕ_|_ψ_₂⟩ .

-   By the definition of addition and scalar multiplication of linear functionals in the dual space,[8]

(_c_₁⟨_ϕ_₁| + _c_₂⟨_ϕ_₂|)|_ψ_⟩ = _c_₁⟨_ϕ_₁|_ψ_⟩ + _c_₂⟨_ϕ_₂|_ψ_⟩ .

Associativity

Given any expression involving complex numbers, bras, kets, inner products, outer products, and/or linear operators (but not addition), written in bra–ket notation, the parenthetical groupings do not matter (i.e., the associative property holds). For example:

$$\begin{align}
\lang \psi| \bigl(A |\phi\rang\bigr) = \bigl(\lang \psi|A\bigr)|\phi\rang \, &\stackrel{\text{def}}{=} \, \lang \psi | A | \phi \rang \\
\bigl(A|\psi\rang\bigr)\lang \phi| = A\bigl(|\psi\rang \lang \phi|\bigr) \, &\stackrel{\text{def}}{=} \, A | \psi \rang \lang \phi |
\end{align}$$
and so forth. The expressions on the right (with no parentheses whatsoever) are allowed to be written unambiguously _because_ of the equalities on the left. Note that the associative property does _not_ hold for expressions that include nonlinear operators, such as the antilinear time reversal operator in physics.

Hermitian conjugation

Bra–ket notation makes it particularly easy to compute the Hermitian conjugate (also called _dagger_, and denoted ) of expressions. The formal rules are:

-   The Hermitian conjugate of a bra is the corresponding ket, and vice versa.
-   The Hermitian conjugate of a complex number is its complex conjugate.
-   The Hermitian conjugate of the Hermitian conjugate of anything (linear operators, bras, kets, numbers) is itself—i.e.,

(_x_^(†))^(†) = _x_ .

-   Given any combination of complex numbers, bras, kets, inner products, outer products, and/or linear operators, written in bra–ket notation, its Hermitian conjugate can be computed by reversing the order of the components, and taking the Hermitian conjugate of each.

These rules are sufficient to formally write the Hermitian conjugate of any such expression; some examples are as follows:

-   Kets:

(_c_₁|_ψ_₁⟩ + _c_₂|_ψ_₂⟩)^(†) = _c_₁^(*)⟨_ψ_₁| + _c_₂^(*)⟨_ψ_₂| .

-   Inner products:

⟨_ϕ_|_ψ_⟩^(*) = ⟨_ψ_|_ϕ_⟩ .

    Note that is a scalar, so the Hermitian conjugate is just the complex conjugate, i.e.
    (⟨_ϕ_|_ψ_⟩)^(†) = ⟨_ϕ_|_ψ_⟩^(*)

-   Matrix elements:

$$\begin{align}
\langle \phi| A | \psi \rangle^* &= \left\langle \psi \left| A^\dagger \right|\phi \right\rangle \\
\left\langle \phi\left| A^\dagger B^\dagger \right| \psi \right\rangle^* &= \langle \psi | BA |\phi \rangle \,.
\end{align}$$

-   Outer products:

((_c_₁|_ϕ_₁⟩⟨_ψ_₁|) + (_c_₂|_ϕ_₂⟩⟨_ψ_₂|))^(†) = (_c_₁^(*)|_ψ_₁⟩⟨_ϕ_₁|) + (_c_₂^(*)|_ψ_₂⟩⟨_ϕ_₂|) .


Composite bras and kets

Two Hilbert spaces and may form a third space by a tensor product. In quantum mechanics, this is used for describing composite systems. If a system is composed of two subsystems described in and respectively, then the Hilbert space of the entire system is the tensor product of the two spaces. (The exception to this is if the subsystems are actually identical particles. In that case, the situation is a little more complicated.)

If is a ket in and is a ket in , the direct product of the two kets is a ket in . This is written in various notations:

|_ψ_⟩|_ϕ_⟩ , |_ψ_⟩ ⊗ |_ϕ_⟩ , |_ψ__ϕ_⟩ , |_ψ_, _ϕ_⟩ .

See quantum entanglement and the EPR paradox for applications of this product.


The unit operator

Consider a complete orthonormal system (_basis_),

{_e__(_i_) | _i_ ∈ ℕ} ,
for a Hilbert space , with respect to the norm from an inner product .

From basic functional analysis, it is known that any ket can also be written as

|_ψ_⟩ = ∑_(_i_ ∈ ℕ)⟨_e__(_i_)|_ψ_⟩|_e__(_i_)⟩,
with the inner product on the Hilbert space.

From the commutativity of kets with (complex) scalars, it follows that

∑_(_i_ ∈ ℕ)|_e__(_i_)⟩⟨_e__(_i_)| = 𝟙
must be the _identity operator_, which sends each vector to itself.

This, then, can be inserted in any expression without affecting its value; for example

$$\begin{align}
\langle v | w \rangle &= \langle v | \left( \sum_{i \in \mathbb{N}} | e_i \rangle \langle e_i| \right) | w \rangle \\
                      &= \langle v | \left( \sum_{i \in \mathbb{N}} | e_i \rangle \langle e_i| \right) \left( \sum_{j \in \mathbb{N}} | e_j \rangle \langle e_j |\right)| w \rangle \\
&= \langle v | e_i \rangle \langle e_i | e_j \rangle \langle e_j | w \rangle \,,
\end{align}$$
where, in the last identity, the Einstein summation convention has been used.

In quantum mechanics, it often occurs that little or no information about the inner product of two arbitrary (state) kets is present, while it is still possible to say something about the expansion coefficients *}} and of those vectors with respect to a specific (orthonormalized) basis. In this case, it is particularly useful to insert the unit operator into the bracket one time or more.

For more information, see Resolution of the identity,

-       ∫ d_x_ {{=}} ∫ d_p_ }}, where ∫ d_x_ _e_^(_ixp_/_ħ_)/}}.

Since _δ_(_x_ − _x_′)}}, plane waves follow, _e_^(_ixp_/_ħ_)/}}.[9]

Typically, when all matrix elements of an operator such as

⟨_x_|_A_|_y_⟩
are available, this resolution serves to reconstitute the full operator,

∫_d__x__d__y_  |_x_⟩⟨_x_|_A_|_y_⟩⟨_y_| = _A_ .


Notation used by mathematicians

The object physicists are considering when using bra–ket notation is a Hilbert space (a complete inner product space).

Let be a Hilbert space and a vector in . What physicists would denote by is the vector itself. That is,

|_h_⟩ ∈ ℋ
.

Let be the dual space of . This is the space of linear functionals on . The isomorphism is defined by _φ_(h)_}}, where for every we define

_ϕ__(_h_)(_g_) = IP(_h_, _g_) = (_h_, _g_) = ⟨_h_, _g_⟩ = ⟨_h_|_g_⟩
, where , , and are just different notations for expressing an inner product between two elements in a Hilbert space (or for the first three, in any inner product space). Notational confusion arises when identifying and with and respectively. This is because of literal symbolic substitutions. Let _H_ {{=}} }} and let G {{=}} }}. This gives

_ϕ__(_h_)(_g_) = _H_(_g_) = _H_(_G_) = ⟨_h_|(_G_) = ⟨_h_|(|_g_⟩) .

One ignores the parentheses and removes the double bars. Some properties of this notation are convenient since we are dealing with linear operators and composition acts like a ring multiplication.

Moreover, mathematicians usually write the dual entity not at the first place, as the physicists do, but at the second one, and they usually use not an asterisk but an overline (which the physicists reserve for averages and the Dirac spinor adjoint) to denote complex conjugate numbers; i.e., for scalar products mathematicians usually write

$$(\phi ,\psi )=\int \phi (x)\cdot \overline{\psi(x)}\, \mathrm{d}x \,,$$
whereas physicists would write for the same quantity

⟨_ψ_|_ϕ_⟩ = ∫_d__x_ _ψ_^(*)(_x_) ⋅ _ϕ_(_x_) .


See also

-   Angular momentum diagrams (quantum mechanics)
-   {{mvar
-   Quantum state
-   Inner product


Notes


References

-   . Also see his standard text, _The Principles of Quantum Mechanics_, IV edition, Clarendon Press (1958),

-   -   -   -


External links

-   Richard Fitzpatrick, "Quantum Mechanics: A graduate level course", The University of Texas at Austin. Includes:
    -   1. Ket space
    -   2. Bra space
    -   3. Operators
    -   4. The outer product
    -   5. Eigenvalues and eigenvectors
-   Robert Littlejohn, Lecture notes on "The Mathematical Formalism of Quantum mechanics", including bra-ket notation. Unviversity of California, Berkeley.
-

Category:Quantum mechanics Category:Information theory Category:Quantum information science Category:Linear algebra Category:Mathematical notation Category:Paul Dirac

[1] Lecture 2 | Quantum Entanglements, Part 1 (Stanford), Leonard Susskind on complex numbers, complex conjugate, bra, ket. 2006-10-02.

[2]

[3]

[4]

[5] Gidney, Craig (2017). Bra–Ket Notation Trivializes Matrix Multiplication

[6]

[7] Lecture 2 | Quantum Entanglements, Part 1 (Stanford), Leonard Susskind on inner product, 2006-10-02.

[8] Lecture notes by Robert Littlejohn, eqns 12 and 13

[9] In his book (1958), Ch. III.20, Dirac defines the _standard ket_ which, up to a normalization, is the translationally invariant momentum eigenstate |ϖ⟩ = lim_(p → 0)|p⟩ in the momentum representation, i.e., p̂|ϖ⟩ = 0. Consequently, the corresponding wavefunction is a constant, $\langle x|\varpi\rangle  \sqrt{2\pi \hbar}=1$, and $|x\rangle= \delta(\hat{x}-x) |\varpi\rangle  \sqrt{2\pi \hbar}$.