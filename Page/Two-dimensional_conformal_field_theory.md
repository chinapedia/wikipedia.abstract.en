A TWO-DIMENSIONAL CONFORMAL FIELD THEORY is a quantum field theory on a Euclidean two-dimensional space, that is invariant under local conformal transformations.

In contrast to other types of conformal field theories, two-dimensional conformal field theories have infinite-dimensional symmetry algebras. In some cases, this allows them to be solved exactly, using the conformal bootstrap method.

Notable two-dimensional conformal field theories include minimal models, Liouville theory, massless free bosonic theories,[1] Wess–Zumino–Witten models, and certain sigma models.


Basic structures

Geometry

Two-dimensional conformal field theories (CFTs) are defined on Riemann surfaces, where local conformal maps are holomorphic functions. While a CFT might conceivably exist only on a given Riemann surface, its existence on any surface other than the sphere, implies its existence on all surfaces.[2] On the other hand, some CFTs exist only on the sphere. Unless stated otherwise, we consider CFT on the sphere in this article.

Symmetry algebra

Given a local complex coordinate z, the real vector space of infinitesimal conformal maps has the basis $(\ell_n+\bar\ell_n)_{n\in\mathbb{Z}} \cup (i(\ell_n-\bar\ell_n))_{n\in\mathbb{Z}}$, with $\ell_n = -z^{n+1}\frac{\partial}{\partial z}$. (For example, ℓ_( − 1) + ℓ_( − 1) and i(ℓ₁ − ℓ_( − 1)) generate translations.) Relaxing the assumption that z̄ is the complex conjugate of z, i.e. complexifying the space of infinitesimal conformal maps, one obtains a complex vector space with the basis $(\ell_n)_{n\in\mathbb{Z}} \cup (\bar\ell_n)_{n\in\mathbb{Z}}$.

With their natural commutators, the differential operators ℓ_(n) generate a Witt algebra. By standard quantum-mechanical arguments, the symmetry algebra of conformal field theory must be the central extension of the Witt algebra, i.e. the Virasoro algebra, whose generators are (L_(n))_(n ∈ ℤ), plus a central generator. In a given CFT, the central generator takes a constant value, called the central charge.

The symmetry algebra is therefore the product of two copies of the Virasoro algebra: the left-moving or holomorphic algebra, with generators L_(n), and the right-moving or antiholomorphic algebra, with generators L̄_(n).[3]

Space of states

The SPACE OF STATES, also called the SPECTRUM, of a CFT, is a representation of the product of the two Virasoro algebras. The eigenvalues of the Virasoro generator L₀ + L̄₀ are interpreted as the energies of the states. Their real parts are usually assumed to be bounded from below.

A CFT is called RATIONAL if its space of states decomposes into finitely many irreducible representations of the product of the two Virasoro algebras.

A CFT is called DIAGONAL if its space of states is a direct sum of representations of the type R ⊗ R̄, where R is an indecomposable representation of the left Virasoro algebra, and R̄ is the same representation of the right Virasoro algebra.

The CFT is called unitary if the space of states has a positive definite Hermitian form such that L₀ and L̄₀ are self-adjoint, L₀^(†) = L₀ and L̄₀^(†) = L̄₀. This implies in particular that L_(n)^(†) = L_( − n), and that the central charge is real. The space of states is then a Hilbert space. While unitarity is necessary for a CFT to be a proper quantum system with a probabilistic interpretation, many interesting CFTs are nevertheless non-unitary, including minimal models and Liouville theory for most allowed values of the central charge.

State-field correspondence

The STATE-FIELD CORRESPONDENCE is a linear map v ↦ V_(v)(z) from the space of states to the space of fields, that commutes with the action of the symmetry algebra.

In particular, the image of a primary state of a lowest weight representation of the Virasoro algebra is a primary field[4] V_(Δ)(z), such that

_L__(_n_ > 0)_V__(_Δ_)(_z_) = 0 , _L_₀_V__(_Δ_)(_z_) = _Δ__V__(_Δ_)(_z_) .
DESCENDENT FIELDS are obtained from primary fields by acting with creation modes L_(n < 0). DEGENERATE FIELDS correspond to primary states of degenerate representations. For example, the degenerate field V_(1, 1)(z) obeys L_( − 1)V_(1, 1)(z) = 0, due to the presence of a null vector in the corresponding degenerate representation.

Correlation functions

An N-POINT CORRELATION FUNCTION is a number that depends linearly on N fields, denoted as ⟨V₁(z₁)⋯V_(N)(z_(N))⟩ with i ≠ j ⇒ z_(i) ≠ z_(j). In the path integral formulation of conformal field theory, correlation functions are defined as functional integrals. In the conformal bootstrap approach, correlation functions are defined by axioms. In particular, it is assumed that there exists an operator product expansion (OPE),[5]

_V_₁(_z_₁)_V_₂(_z_₂) = ∑_(_i_)_C_₁₂^(_v__(_i_))(_z_₁, _z_₂)_V__(_v__(_i_))(_z_₂) ,
where {v_(i)} is a basis of the space of states, and the numbers C₁₂^(v_(i))(z₁, z₂) are called OPE coefficients. Moreover, correlation functions are assumed to be invariant under permutations on the fields, in other words the OPE is assumed to be associative and commutative. (OPE commutativity V₁(z₁)V₂(z₂) = V₂(z₂)V₁(z₁) does not imply that OPE coefficients are invariant under 1 ↔ 2, because expanding on fields V_(v_(i))(z₂) breaks that symmetry.)


Chiral conformal field theory

In a two-dimensional conformal field theory, properties are called CHIRAL if they follow from the action of one of the two Virasoro algebras. If the space of states can be decomposed into factorized representations of the product of the two Virasoro algebras, then all consequences of conformal symmetry are chiral. In other words, the actions of the two Virasoro algebras can be studied separately.

Energy-momentum tensor

The dependence of a field V(z) on its position is assumed to be determined by

$$\frac{\partial}{\partial z} V(z) = L_{-1}V(z).$$

It follows that the OPE

$$T(y)V(z) = \sum_{n\in\Z} \frac{L_nV(z)}{(y-z)^{n+2}},$$

defines a locally holomorphic field T(y) that does not depend on z. This field is identified with (a component of) the energy-momentum tensor.[6] In particular, the OPE of the energy-momentum tensor with a primary field is

$$T(y)V_\Delta(z) = \frac{\Delta}{(y-z)^2} V_\Delta(z) + \frac{1}{y-z}\frac{\partial}{\partial z} V_\Delta(z) + O(1).$$

The OPE of the energy-momentum tensor with itself is

$$T(y)T(z) = \frac{\frac{c}{2}}{(y-z)^4} + \frac{2T(z)}{(y-z)^2} + \frac{\partial T(z)}{y-z} + O(1),$$

where c is the central charge. (This OPE is equivalent to the commutation relations of the Virasoro algebra.)

Conformal Ward identities

CONFORMAL WARD IDENTITIES are linear equations that correlation functions obey as a consequence of conformal symmetry.[7] They can be derived by studying correlation functions that involve insertions of the energy-momentum tensor. Their solutions are conformal blocks.

For example, consider conformal Ward identities on the sphere. Let z be a global complex coordinate on the sphere, viewed as $\Complex\cup\{\infty\}.$ Holomorphy of the energy-momentum tensor at z = ∞ is equivalent to

$$T(z)\underset{z\to\infty}{=} O\left(\frac{1}{z^4}\right).$$

Moreover, inserting T(z) in an N-point functions of primary fields yields

$$\left\langle T(z)\prod_{i=1}^N V_{\Delta_i}(z_i) \right\rangle = \sum_{i=1}^N\left(\frac{\Delta_i}{(z-z_i)^2} +\frac{1}{z-z_i}\frac{\partial}{\partial z_i}\right)\left\langle \prod_{i=1}^N V_{\Delta_i}(z_i) \right\rangle.$$

From the last two equations, it is possible to deduce LOCAL WARD IDENTITIES that express N-point functions of descendent fields in terms of N-point functions of primary fields. Moreover, it is possible to deduce three differential equations for any N-point function of primary fields, called GLOBAL CONFORMAL WARD IDENTITIES:

$$\sum_{i=1}^N \left(z_i^k\frac{\partial}{\partial z_i} +\Delta_i k z_i^{k-1}\right) \left\langle \prod_{i=1}^N V_{\Delta_i}(z_i) \right\rangle = 0, \qquad (k\in\{0, 1, 2\}).$$

These identities determine how two- and three-point functions depend on z,

$$\left\langle V_{\Delta_1}(z_1)V_{\Delta_2}(z_2) \right\rangle \begin{cases} = 0 & \ \ (\Delta_1\neq \Delta_2) \\ \propto (z_1-z_2)^{-2\Delta_1}& \ \ (\Delta_1= \Delta_2) \end{cases}$$

⟨_V__(_Δ_₁)(_z_₁)_V__(_Δ_₂)(_z_₂)_V__(_Δ_₃)(_z_₃)⟩ ∝ (_z_₁ − _z_₂)^(_Δ_₃ − _Δ_₁ − _Δ_₂)(_z_₂ − _z_₃)^(_Δ_₁ − _Δ_₂ − _Δ_₃)(_z_₁ − _z_₃)^(_Δ_₂ − _Δ_₁ − _Δ_₃),

where the undetermined proportionality coefficients are functions of z̄.

BPZ equations

A correlation function that involves a degenerate field satisfies a linear partial differential equation called a BELAVIN–POLYAKOV–ZAMOLODCHIKOV EQUATION after Alexander Belavin, Alexander Polyakov and Alexander Zamolodchikov.[8] The order of this equation is the level of the null vector in the corresponding degenerate representation.

A trivial example is the order one BPZ equation

$$\frac{\partial}{\partial z_1} \left\langle V_{1, 1}(z_1) V_2(z_2) \cdots V_N(z_N) \right\rangle = 0.$$

which follows from

$$\frac{\partial}{\partial z_1} V_{1, 1}(z_1) = L_{-1} V_{1, 1}(z_1) = 0.$$

The first nontrivial example involves a degenerate field V_(2, 1) with a vanishing null vector at the level two,

(_L__( − 1)²+_b_²_L__( − 2))_V__(2, 1) = 0,

where b is related to the central charge by

_c_ = 1 + 6(_b_+_b_^( − 1))².

Then an N-point function of V_(2, 1) and N − 1 other primary fields obeys:

$$\left( \frac{1}{b^2} \frac{\partial^2}{\partial z_1^2} + \sum_{i=2}^N \left(\frac{1}{z_1-z_i} \frac{\partial}{\partial z_i} + \frac{\Delta_i}{(z_1-z_i)^2} \right)\right) \left\langle V_{2, 1}(z_1) \prod_{i=2}^N V_{\Delta_i}(z_i) \right\rangle = 0.$$

A BPZ equation of order rs for a correlation function that involve the degenerate field V_(r, s) can be deduced from the vanishing of the null vector, and the local Ward identities. Thanks to global Ward identities, four-point functions can be written in terms of one variable instead of four, and BPZ equations for four-point functions can be reduced to ordinary differential equations.

Fusion rules

In an OPE that involves a degenerate field, the vanising of the null vector (plus conformal symmetry) constrains which primary fields can appear. The resulting constraints are called FUSION RULES.[9] Using the momentum α such that

_Δ_ = _α_(_b_+_b_^( − 1)−_α_)

instead of the conformal dimension Δ for parametrizing primary fields, the fusion rules are

$$V_{r,s} \times V_\alpha = \sum_{i=0}^{r-1}\sum_{j=0}^{s-1} V_{\alpha + \left (i-\frac{r-1}{2} \right )b + \left (j-\frac{s-1}{2} \right )b^{-1}}$$

in particular

$$\begin{align}
V_{1,1}\times V_\alpha &= V_\alpha \\[6pt]
V_{2,1}\times V_\alpha &= V_{\alpha-\frac{b}{2}} + V_{\alpha+\frac{b}{2}} \\[6pt]
V_{1,2}\times V_\alpha &= V_{\alpha-\frac{1}{2b}} + V_{\alpha+\frac{1}{2b}}
\end{align}$$

Alternatively, fusion rules have an algebraic definition in terms of an associative FUSION PRODUCT of representations of the Virasoro algebra at a given central charge. The fusion product differs from the tensor product of representations. (In a tensor product, the central charges add.) In certain finite cases, this leads to the structure of a fusion category.


Conformal bootstrap

The conformal bootstrap method consists in defining and solving CFTs using only symmetry and consistency assumptions, by reducing all correlation functions to combinations of structure constants and conformal blocks. In two dimensions, this method leads to exact solutions of certain CFTs, and to classifications of rational theories.

Structure constants

Let V_(i) be a left- and right-primary field with left- and right-conformal dimensions Δ_(i) and Δ̄_(i). According to the left and right global Ward identities, three-point functions of such fields are of the type

$$\begin{align}
& \left\langle V_1(z_1)V_2(z_2)V_3(z_3) \right\rangle = C_{123}
\\
& \qquad \times (z_1-z_2)^{\Delta_3-\Delta_1-\Delta_2} (z_2 -z_3)^{\Delta_1-\Delta_2-\Delta_3} (z_1 -z_3)^{\Delta_2-\Delta_1-\Delta_3}
\\
& \qquad \times
 (\bar z_1-\bar z_2)^{\bar \Delta_3-\bar \Delta_1-\bar \Delta_2} (\bar z_2 -\bar z_3)^{\bar \Delta_1-\bar \Delta_2-\bar \Delta_3} (\bar z_1 -\bar z_3)^{\bar \Delta_2-\bar \Delta_1-\bar \Delta_3}\ ,
\end{align}$$
where the z_(i)-independent number C₁₂₃ is called a THREE-POINT STRUCTURE CONSTANT. For the three-point function to be single-valued, the left- and right-conformal dimensions of primary fields must obey

$$\Delta_i- \bar \Delta_i \in \frac12\mathbb{Z} \ .$$
This condition is satisfied by bosonic (Δ_(i) − Δ̄_(i) ∈ ℤ) and fermionic ($\Delta_i- \bar \Delta_i \in\mathbb{Z}+\frac12$) fields. It is however violated by parafermionic fields (Δ_(i) − Δ̄_(i) ∈ ℚ), whose correlation functions are therefore not single-valued on the Riemann sphere.

Three-point structure constants also appear in OPEs,

_V_₁(_z_₁)_V_₂(_z_₂) = ∑_(_i_)_C__(12_i_)(_z_₁ − _z_₂)^(_Δ__(_i_) − _Δ_₁ − _Δ_₂)(_z̄_₁ − _z̄_₂)^(_Δ̄__(_i_) − _Δ̄_₁ − _Δ̄_₂)(_V__(_i_)(_z_₂) + ⋯) .
The contributions of descendent fields, denoted by the dots, are completely determined by conformal symmetry.[10]

Conformal blocks

Any correlation function can be written as a linear combination of CONFORMAL BLOCKS: functions that are determined by conformal symmetry, and labelled by representations of the symmetry algebra. The coefficients of the linear combination are products of structure constants.[11]

In two-dimensional CFT, the symmetry algebra is factorized into two copies of the Virasoro algebra, and a conformal block that involves primary fields has a HOLOMORPHIC FACTORIZATION: it is a product of a locally holomorphic factor that is determined by the left-moving Virasoro algebra, and a locally antiholomorphic factor that is determined by the right-moving Virasoro algebra. These factors are themselves called conformal blocks.

For example, using the OPE of the first two fields in a four-point function of primary fields yields

$$\left\langle \prod_{i=1}^4 V_{i}(z_i) \right\rangle = \sum_{s} C_{12s} C_{s34} \mathcal{F}^{(s)}_{\Delta_s}(\{\Delta_i\},\{z_i\}) \mathcal{F}^{(s)}_{\bar \Delta_s}(\{\bar \Delta_i\},\{\bar z_i\})\ ,$$
where ℱ_(Δ_(s))^((s))({Δ_(i)}, {z_(i)}) is an S-CHANNEL FOUR-POINT CONFORMAL BLOCK. Four-point conformal blocks are complicated functions that can be efficiently computed using Alexei Zamolodchikov's recursion relations. If one of the four fields is degenerate, then the corresponding conformal blocks obey BPZ equations. If in particular one the four fields is V_(2, 1), then the corresponding conformal blocks can be written in terms of the hypergeometric function.

As first explained by Witten[12], the space of conformal blocks of a two-dimensional CFT can be identified with the quantum Hilbert space of a 2+1 dimensional Chern-Simons theory, which is an example of a topological field theory. This connection has been very fruitful in the theory of the fractional quantum Hall effect.

Conformal bootstrap equations

When a correlation function can be written in terms of conformal blocks in several different ways, the equality of the resulting expressions provides constraints on the space of states and on three-point structure constants. These constraints are called the CONFORMAL BOOTSTRAP EQUATIONS. While the Ward identities are linear equations for correlation functions, the conformal bootstrap equations depend non-linearly on the three-point structure constants.

For example, a four-point function ⟨V₁V₂V₃V₄⟩ can be written in terms of conformal blocks in three inequivalent ways, corresponding to using the OPEs V₁V₂ (S-CHANNEL), V₁V₄ (T-CHANNEL) or V₁V₃ (U-CHANNEL). The equality of the three resulting expressions is called crossing symmetry of the four-point function, and is equivalent to the associativity of the OPE.[13]

For example, the torus partition function (i.e. zero-point function) is a function of the modulus of the torus, which depends on the space of states, and not on three-point structure constants. The torus partition function can be written in terms of the characters of the representations that appear in the space of states. This depends on the choice of a loop in the torus, and changing the loop amounts to acting on the modulus with an element of the modular group. The invariance of the partition function under the action of the modular group is a constraint on the space of states. The study of modular invariant torus partition functions is sometimes called the MODULAR BOOTSTRAP.

The consistency of a CFT on the sphere is equivalent to crossing symmetry of the four-point function. The consistency of a CFT on all Riemann surfaces also requires modular invariance of the torus one-point function.[14] Modular invariance of the torus partition function is therefore neither necessary, nor sufficient, for a CFT to exist. It has however been widely studied in rational CFTs, because characters of representations are simpler than other kinds of conformal blocks, such as sphere four-point conformal blocks.


Examples

Minimal models

A minimal model is a CFT whose spectrum is built from finitely many irreducible representations of the Virasoro algebra. Minimal models only exist for particular values of the central charge,[15]

$$c_{p,q} = 1 - 6 \frac{(p-q)^2}{pq}, \qquad p>q \in\{2,3,\ldots\}.$$

There is an ADE classification of minimal models.[16] In particular, the A-SERIES MINIMAL MODEL with the central charge c = c_(p, q) is a diagonal CFT whose spectrum is built from $\tfrac{1}{2}(p-1)(q-1)$ degenerate lowest weight representations of the Virasoro algebra. These degenerate representations are labelled by pairs of integers that form the KAC TABLE,

(_r_, _s_) ∈ {1, …, _p_ − 1} × {1, …, _q_ − 1}  with  (_r_, _s_) ≃ (_p_ − _r_, _q_ − _s_).

For example, the A-series minimal model with $c=c_{4,3}=\tfrac{1}{2}$ describes the critical Ising model in two dimensions.

Liouville theory

For any $c\in\Complex,$ Liouville theory is a diagonal CFT whose spectrum is built from Verma modules with conformal dimensions

$$\Delta \in \frac{c-1}{24} + \R_+$$

Liouville theory has been solved, in the sense that its three-point structure constants are explicitly known. Liouville theory has applications to string theory, and to two-dimensional quantum gravity.

Extended symmetry algebras

In some CFTs, the symmetry algebra is not just the Virasoro algebra, but an associative algebra (i.e. not necessarily a Lie algebra) that contains the Virasoro algebra. The spectrum is then decomposed into representations of that algebra, and the notions of diagonal and rational CFTs are defined with respect to that algebra.[17]

Massless free bosonic theories

In two dimensions, massless free bosonic theories are conformally invariant. Their symmetry algebra is the affine Lie algebra $\hat{\mathfrak{u}}_1$ built from the abelian, rank one Lie algebra. The fusion product of any two representations of this symmetry algebra yields only one representation, and this makes correlation functions very simple.

Viewing minimal models and Liouville theory as perturbed free bosonic theories leads to the COULOMB GAS METHOD for computing their correlation functions. Moreover, for c = 1, there is a one-parameter family of free bosonic theories with infinite discrete spectrums, that describe COMPACTIFIED FREE BOSONS, with the parameter being the compactification radius.[18]

Wess–Zumino–Witten models

Given a Lie group G, the corresponding Wess–Zumino–Witten model is a CFT whose symmetry algebra is the affine Lie algebra built from the Lie algebra of G. If G is compact, then this CFT is rational, its central charge takes discrete values, and its spectrum is known.

Superconformal field theories

The symmetry algebra of a supersymmetric CFT is a super Virasoro algebra, or a larger algebra. Supersymmetric CFTs are in particular relevant to superstring theory.

Theories based on W-algebras

W-algebras are natural extensions of the Virasoro algebra. CFTs based on W-algebras include generalizations of minimal models and Liouville theory, respectively called W-MINIMAL MODELS and conformal Toda theories. Conformal Toda theories are more complicated than Liouville theory, and less well understood.

Sigma models

In two dimensions, classical sigma models are conformally invariant, but only some target manifolds lead to quantum sigma models that are conformally invariant. Examples of such target manifolds include toruses, and Calabi-Yau manifolds.

Logarithmic conformal field theories

Logarithmic conformal field theories are two-dimensional CFTs such that the action of the Virasoro algebra generator L₀ on the spectrum is not diagonalizable. In particular, the spectrum cannot be built solely from lowest weight representations. As a consequence, the dependence of correlation functions on the positions of the fields can be logarithmic. This contrasts with the power-like dependence of two- and three-point functions, which are associated to lowest weight representations.


References


Further reading

-   P. Di Francesco, P. Mathieu, and D. Sénéchal, _Conformal Field Theory_, Springer-Verlag, New York, 1997. .
-   S. Ribault, _Conformal field theory on the plane_, arXiv:1406.4290

Category:Conformal field theory

[1] P. Di Francesco, P. Mathieu, and D. Sénéchal, _Conformal Field Theory_, Springer-Verlag, New York, 1997. .

[2] G. Moore and N. Seiberg, _Classical and quantum conformal field theory_, Commun.Math. Phys. (1989) 123: 177. doi:10.1007/BF01238857

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Andrea Cappelli and Jean-Bernard Zuber (2010), "A-D-E Classification of Conformal Field Theories", Scholarpedia 5(4):10314.

[17]

[18]