In mathematics, TOPOLOGICAL RECURSION is a recursive definition of invariants of spectral curves. It has applications in enumerative geometry, random matrix theory, mathematical physics, string theory, knot theory.


Introduction

The TOPOLOGICAL RECURSION is a construction in algebraic geometry.[1] It takes as initial data a SPECTRAL CURVE: the data of (Σ,Σ₀,x,ω_(0, 1),ω_(0, 2)), where: x : Σ → Σ₀ is a covering of Riemann surfaces with ramification points; ω_(0, 1) is a meromorphic differential 1-form on Σ, regular at the ramification points; ω_(0, 2) is a symmetric meromorphic bilinear differential form on Σ² having a double pole on the diagonal and no residue.

The topological recursion is then a recursive definition of infinite sequences of symmetric meromorphic n-forms ω_(g, n) on Σ^(n), with poles at ramification points only, for integers g≥0 such that 2g-2+n>0. The definition is a recursion on the integer 2g-2+n.

In many applications, the n-form ω_(g, n) is interpreted as a generating function that measures a set of surfaces of genus g and with n boundaries. The recursion is on 2-2g-n the Euler characteristics, whence the name "topological recursion".

Schematic illustration of the topological recursion: recursively adding pairs of pants to build a surface of genus g with n boundaries


Origin

The topological recursion was first discovered in random matrices. One main goal of random matrix theory, is to find the large size asymptotic expansion of n-point correlation functions, and in some suitable cases, the asymptotic expansion takes the form of a power series. The n-form ω_(g, n) is then the g^(th) coefficient in the asymptotic expansion of the n-point correlation function. It was found[2][3][4] that the coefficients ω_(g, n) always obey a same recursion on 2g-2+n. The idea to consider this universal recursion relation beyond random matrix theory, and to promote it as a definition of algebraic curves invariants, occurred in Eynard-Orantin 2007[5] who studied the main properties of those invariants.

An important application of topological recursion was to Gromov-Witten invariants. Marino and BKMP[6] conjectured that Gromov-Witten invariants of a toric Calabi-Yau 3-fold 𝔛 are the TR invariants of a spectral curve that is the mirror of 𝔛.

Since then, topological recursion has generated a lot of activity in particular in enumerative geometry. The link to Givental formalism and Frobenius manifolds has been established.[7]


Definition

(Case of simple branch points. For higher order branchpoints, see the section Higher order ramifications below)

-   For n ≥ 1 and 2g − 2 + n > 0:

$\omega_{g,n}(z_1,z_2,\dots,z_{n})=
\sum_{a=\text{branchpoints}} \operatorname{Res}_{z\to a} K(z_1,z,\sigma_a(z)) \Big( \omega_{g-1,n+1}(z,\sigma_a(z),z_2,\dots,z_n)
+ \sum'_{\overset{g_1+g_2=g}{I_1\uplus I_2=\{z_2,\dots,z_n\} }} \omega_{g_1,1+\# I_1}(z,I_1)\omega_{g_2,1+\# I_2}(\sigma_a(z),I_2)
\Big)$
where K(z₁, z₂, z₃) is called the recursion kernel: $K(z_1,z_2,z_3) = \frac{\frac12 \int_{z'=z_3}^{z_2} \omega_{0,2}(z_1,z')}{\omega_{0,1}(z_2)-\omega_{0,1}(z_3)}$
and σ_(a) is the local Galois involution near a branch point a, it is such that x(σ_(a)(z)) = x(z). The primed sum ∑′ means excluding the two terms (g₁, I₁) = (0, ∅) and (g₂, I₂) = (0, ∅).

-   For n = 0 and 2g − 2 > 0:

$F_g = \omega_{g,0} = \frac{1}{2-2g}\ \sum_{a=\text{branchpoints}} \operatorname{Res}_{z\to a} F_{0,1}(z) \omega_{g,1}(z)$
with dF_(0, 1) = ω_(0, 1) any antiderivative of ω_(0, 1).

-   The definition of F₀ = ω_(0, 0) and F₁ = ω_(1, 0) is more involved and can be found in the original article of Eynard-Orantin.[8]


Main properties

-   SYMMETRY: each ω_(g, n) is a symmetric n-form on Σ^(n).
-   POLES: each ω_(g, n) is meromorphic, it has poles only at branchpoints, with vanishing residues.
-   HOMOGENEITY: ω_(g, n) is homogeneous of degree 2 − 2g − n. Under the change ω_(0, 1) → λω_(0, 1), we have ω_(g, n) → λ^(2 − 2g − n)ω_(g, n).
-   DILATON EQUATION:

∑_(a = branchpoints)Res_(z → a)F_(0, 1)(z) ω_(g, n + 1)(z₁, …, z_(n), z) = (2 − 2g − n)ω_(g, n)(z₁, …, z_(n))
where dF_(0, 1) = ω_(0, 1).

-   LOOP EQUATIONS: The following forms have no poles at branchpoints

∑_(z ∈ x^( − 1)(x))ω_(g, n + 1)(z, z₁, …, z_(n))
$\sum_{\{z\neq z'\} \subset x^{-1}(x)}
\Big(\omega_{g,n+1}(z,z',z_2,\dots,z_n)
+ \sum_{\overset{g_1+g_2=g}{I_1\uplus I_2=\{z_2,\dots,z_n\} }} \omega_{g_1,1+\# I_1}(z,I_1)\omega_{g_2,1+\# I_2}(z',I_2)
\Big)$ where the sum has no prime, i.e. no term excluded.

-   DEFORMATIONS: The ω_(g, n) satisfy deformation equations
-   LIMITS: given a family of spectral curves 𝒮_(t), whose limit as t → 0 is a singular curve, resolved by rescaling by a power of t^(μ), then lim_(t → 0)t^((2 − 2g − n)μ)ω_(g, n)(𝒮_(t)) = ω_(g, n)(lim_(t → 0)t^(μ)𝒮_(t)).
-   SYMPLECTIC INVARIANCE: In the case where Σ is a compact algebraic curve with a marking of a symplectic basis of cycles, x is meromorphic and ω_(0, 1) = ydx is meromorphic and ω_(0, 2) = B is the fundamental second kind differential normalized on the marking, then the spectral curve 𝒮 = (Σ, ℂ, x, ydx, B) and $\tilde{\mathcal S}=(\Sigma,\mathbb C,y,-xdy,B)$, have the same F_(g) shifted by some terms.
-   MODULAR PROPERTIES: In the case where Σ is a compact algebraic curve with a marking of a symplectic basis of cycles, and ω_(0, 2) = B is the fundamental second kind differential normalized on the marking, then the invariants ω_(g, n) are quasi-modular forms under the modular group of marking changes. The invariants ω_(g, n) satisfy BCOV equations.


Generalizations

Higher order ramifications

In case the branchpoints are not simple, the definition is amended as follows[9] (simple branchpoints correspond to k=2):
$\omega_{g,n}(z_1,z_2,\dots,z_{n})=
\sum_{a=\text{branchpoints}} \operatorname{Res}_{z\to a}
\sum_{k=2}^{{\rm order}_x(a)} \sum_{J \subset x^{-1}(x(z))\setminus\{z\},\,\# J=k-1}
K_k(z_1,z,J)  \sum_{J_1,\dots , J_\ell \vdash J\cup\{z\}} \sum'_{\overset{g_1+\dots+g_\ell=g+\ell-k}{I_1\uplus \dots I_\ell=\{z_2,\dots,z_n\} }} \prod_{i=1}^k \omega_{g_i,\# J_i+\# I_i}(J_i,I_i)$
The first sum is over partitions J₁, …, J_(ℓ) of J ∪ {z} with non empty parts J_(i) ≠ ∅, and in the second sum, the prime means excluding all terms such that (g_(i), #J_(i) + #I_(i)) = (0, 1).

K_(k) is called the recursion kernel:
$K_k(z_0,z_1,\dots,z_k) = \frac{\int_{z'=*}^{z_1} \omega_{0,2}(z_0,z')}{\prod_{i=2}^k (\omega_{0,1}(z_1)-\omega_{0,1}(z_i))}$
The base point * of the integral in the numerator can be chosen arbitrarily in a vicinity of the branchpoint, the invariants ω_(g, n) will not depend on it.


Topological recursion invariants and intersection numbers

The invariants ω_(g, n) can be written in terms of intersection numbers of tautological classes

    [10]

(*) $\omega_{g,n}(z_1,\dots,z_n)
= 2^{3g-3+n}\sum_{G=\text{Graphs}} \frac{1}{\#\text{Aut}(G)} \int_{\left(\prod_{v=\text{vertices}} {\overline{\mathcal M}}_{g_v,n_v} \right)}\,\, \prod_{v=\text{vertices}} e^{\sum_k \hat t_{\sigma(v),k} \kappa_k} \prod_{(p,p')=\text{nodal points}} \left(\sum_{d,d'} B_{\sigma(p),2d;\sigma(p'),2d'} \psi_p^d \psi_{p'}^{d'}\right) \prod_{p_i=\text{marked points}\, i=1,\dots,n} \left(\sum_{d_i} \psi_{p_i}^{d_i} d\xi_{\sigma(p_i),d_i}(z_i) \right)$
where the sum is over dual graphs of stable nodal Riemann surfaces of total arithmetic genus g, and n smooth labeled marked points p₁, …, p_(n), and equipped with a map σ : {vertices} → {branchpoints}. ψ_(p) = c₁(ℒ_(p)) is the Chern class of the cotangent line bundle ℒ_(p) whose fiber is the cotangent plane at p. κ_(k) is the k^(th) Mumford's kappa class. The coefficients t̂_(a, k), B_(a, k; a′, k′), dξ_(a, k)(z), are the Taylor expansion coefficients of ω_(0, 1) and ω_(0, 2) in the vicinity of branchpoints as follows: in the vicinity of a branchpoint a (assumed simple), a local coordinate is $\zeta_a(z)=\sqrt{x(z)-a}$. The Taylor expansion of ω_(0, 2)(z, z′) near branchpoints z → a, z′ → a′ defines the coefficients B_(a, d; a′, d′)
$\omega_{0,2}(z,z') \mathop{{\sim}}_{z\to a,\ z'\to a'} \left( \frac{\delta_{a,a'} }{(\zeta_a(z)-\zeta_{a'}(z'))^2}+ 2\pi \sum_{d,d'=0}^\infty \frac{B_{a,d;a',d'}}{\Gamma(\frac{d+1}{2})\Gamma(\frac{d'+1}{2})}\, \zeta_a(z)^d \zeta_{a'}(z')^{d'} \right) d\zeta_a(z)d\zeta_{a'}(z')$.
The Taylor expansion at z′ → a, defines the 1-forms coefficients dξ_(a, d)(z)
$d\xi_{a,d}(z) =  \frac{-\Gamma(d+\frac12)}{\Gamma(\frac12)} \operatorname{Res}_{z'\to a} (x(z')-a)^{-d-\frac12}\omega_{0,2}(z,z')$ whose Taylor expansion near a branchpoint a′ is
$d\xi_{a,d}(z) \mathop{{\sim}}_{z\to a'}  \frac{-\delta_{a,a'} (2d+1)!! d\zeta_a(z)}{2^d \zeta_a(z)^{2d+2}}+ \sum_{k=0}^\infty \frac{B_{a,2d;a',2k} 2^{k+1}}{(2k-1)!!}\zeta_{a'}(z)^{2k} d\zeta_{a'}(z)$.
Write also the Taylor expansion of ω_(0, 1)
$\omega_{0,1}(z) \mathop{{\sim}}_{z\to a} \sum_{k=0}^\infty t_{a,k}\ \frac{\Gamma(\frac12)}{(k+1)\Gamma(\frac{k+1}{2})}\ \zeta_{a}(z)^{k} d\zeta_{a}(z)$.
Equivalently, the coefficients t_(a, k) can be found from expansion coefficients of the Laplace transform, and the coefficients t̂_(a, k) are the expansion coefficients of the log of the Laplace transform
$\int_{x(z)-x(a)\in \mathbb R_+} \omega_{0,1}(z) e^{-u x(z)} = \frac{e^{-ux(a)}\sqrt\pi}{2 u^{3/2}} \sum_{k=0}^\infty t_{a,k} u^{-k}
= \frac{e^{-ux(a)}\sqrt\pi}{2 u^{3/2}} e^{-\sum_{k=0}^\infty \hat t_{a,k} u^{-k}}$ .

For example, we have
ω_(0, 3)(z₁, z₂, z₃) = ∑_(a)e^(t̂_(a, 0))dξ_(a, 0)(z₁)dξ_(a, 0)(z₂)dξ_(a, 0)(z₃).

$\omega_{1,1}(z) = 2 \sum_a e^{\hat t_{a,0}}  \left( \frac{1}{24} d\xi_{a,1}(z) + \frac{\hat t_{a,1}}{24} d\xi_{a,0}(z) +\frac12 B_{a,0;a,0} d\xi_{a,0}(z)\right).$

The formula (*) generalizes ELSV formula as well as Mumford's formula and Mariño-Vafa formula.


Some applications in enumerative geometry

Mirzakhani's recursion

M. Mirzakhani's recursion for hyperbolic volumes of moduli spaces is an instance of topological recursion. For the choice of spectral curve $\left(\mathbb C; \ \mathbb C;\ x: z\mapsto z^2 ;\ \omega_{0,1}(z)=\frac{4}{\pi} z \sin{(\pi z)} dz;\,\omega_{0,2}(z_1,z_2) = \frac{dz_1 dz_2}{(z_1-z_2)^2}\right)$
the n-form ω_(g, n) = d₁…d_(n)F_(g, n) is the Laplace transform of the Weil-Petersson volume
F_(g, n)(z₁, …, z_(n)) = ∫₀^(∞)e^( − z₁L₁)dL₁…∫₀^(∞)e^( − z_(n)L_(n))dL_(n) ∫_(ℳ_(g, n)(L₁, …, L_(n)))w
where ℳ_(g, n)(L₁, …, L_(n)) is the moduli space of hyperbolic surfaces of genus g with n geodesic boundaries of respective lengths L₁, …, L_(n), and w is the Weil-Petersson volume form.
The topological recursion for the n-forms ω_(g, n)(z₁, …, z_(n)), is then equivalent to Mirzakhani's recursion.

Witten-Kontsevich intersection numbers

For the choice of spectral curve $\left(\mathbb C; \ \mathbb C;\ x: z\mapsto z^2 ;\ \omega_{0,1}(z)=2z^2 dz;\,\omega_{0,2}(z_1,z_2) = \frac{dz_1 dz_2}{(z_1-z_2)^2}\right)$
the n-form ω_(g, n) = d₁…d_(n)F_(g, n) is
$F_{g,n}(z_1,\dots,z_n) = 2^{2-2g-n}\sum_{d_1+\dots+d_n=3g-3+n} \prod_{i=1}^n \frac{(2d_i-1)!! }{z_i^{2d_i+1}} \quad \left\langle\tau_{d_1}\dots\tau_{d_n}\right\rangle_g$
where ⟨τ_(d₁)…τ_(d_(n))⟩_(g) is the Witten-Kontsevich intersection number of Chern classes of cotangent line bundles in the compactified moduli space of Riemann surfaces of genus g with n smooth marked points.

Hurwitz numbers

For the choice of spectral curve $\left(\mathbb C; \ \mathbb C;\ x: -z+\ln{z} ;\ \omega_{0,1}(z)=(1-z) dz;\,\omega_{0,2}(z_1,z_2) = \frac{dz_1 dz_2}{(z_1-z_2)^2}\right)$
the n-form ω_(g, n) = d₁…d_(n)F_(g, n) is
F_(g, n)(z₁, …, z_(n)) = ∑_(ℓ(μ) ≤ n)m_(μ)(e^(x(z₁)), …, e^(x(z_(n)))) h_(g, μ₁, …, μ_(n))
where h_(g, μ) is the connected simple Hurwitz number of genus g with ramification μ = (μ₁, …, μ_(n)): the number of branch covers of the Riemann sphere by a genus g connected surface, with 2g-2+n simple ramification points, and one point with ramification profile given by the partition μ.

Gromov-Witten numbers and the BKMP conjecture

Let 𝔛 a toric Calabi-Yau 3-fold, with Kähler moduli t₁, …, t_(b₂(𝔛)). Its mirror manifold is singular over a complex plane curve Σ given by a polynomial equation P(e^(x), e^(y)) = 0, whose coefficients are functions of the Kähler moduli. For the choice of spectral curve (Σ; ℂ^(*); x; ω_(0, 1)=ydx; ω_(0, 2)) with ω_(0, 2) the fundamental second kind differential on Σ,
According to the BKMP[11] conjecture, the n-form ω_(g, n) = d₁…d_(n)F_(g, n) is
$F_{g,n}(z_1,\dots,z_n) = \sum_{\mathbf d\in H_2(\mathfrak X,\mathbb Z)} \sum_{\mu_1,\dots,\mu_n\in H_1(\mathcal L,\mathbb Z)} t^d \prod_{i=1}^n e^{x(z_i)}
\mathcal N_{g}(\mathfrak X,\mathcal L;\mathbf d,\mu_1,\dots,\mu_n)$
where $\mathcal N_{g}(\mathfrak X,\mathcal L;\mathbf d,\mu_1,\dots,\mu_n)
= \int_{[{\overline{\mathcal M}}_{g,n}(\mathfrak X,\mathcal L, \mathbf d,\mu_1,\dots,\mu_n)]^{\rm vir}} 1$
is the genus g Gromov-Witten number, representing the number of holomorphic maps of a surface of genus g into 𝔛, with n boundaries mapped to a special Lagrangian submanifold ℒ. D = (d₁, …, d_(b₂(𝔛))) is the 2nd relative homology class of the surface's image, and μ_(i) ∈ H₁(ℒ, ℤ) are homology classes (winding number) of the boundary images.
The BKMP[12] conjecture has since then been proven.


Notes


References

[13]

Category:Topology Category:Algebraic geometry Category:Mathematical physics Category:String theory

[1] Invariants of algebraic curves and topological expansion , B. Eynard, N. Orantin, math-ph/0702045, ccsd-hal-00130963, Communications in Number Theory and Physics, Vol 1, Number 2, p347-452.

[2] B. Eynard, Topological expansion for the 1-hermitian matrix model correlation functions, JHEP/024A/0904, hep-th/0407261

[3] A. Alexandrov, A. Mironov, A. Morozov, Solving Virasoro Constraints in Matrix Models, Fortsch.Phys.53:512-521,2005, arXiv:hep-th/0412205

[4] L. Chekhov, B. Eynard, N. Orantin, Free energy topological expansion for the 2-matrix model, JHEP 0612 (2006) 053, math-ph/0603003

[5]

[6] Vincent Bouchard, Albrecht Klemm, Marcos Marino, Sara Pasquetti, Remodeling the B-model, Commun.Math.Phys.287:117-178,2009

[7] P. Dunin-Barkowski, N. Orantin, S. Shadrin, L. Spitz, "Identification of the Givental formula with the spectral curve topological recursion procedure", Commun.Math.Phys. 328 (2014) 669-700.

[8]

[9] V. Bouchard, B. Eynard, "Think globally, compute locally", JHEP02(2013)143.

[10] B. Eynard, Invariants of spectral curves and intersection theory of moduli spaces of complex curves, math-ph: arxiv.1110.2949, Journal Communications in Number Theory and Physics, Volume 8, Number 3.

[11]

[12]

[13] O. Dumitrescu and M. Mulase, Lectures on the topological recursion for Higgs bindles and quantum curves, https://www.math.ucdavis.edu/~mulase/texfiles/OMLectures.pdf