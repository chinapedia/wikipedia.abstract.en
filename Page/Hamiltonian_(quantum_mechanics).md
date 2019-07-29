In quantum mechanics, a HAMILTONIAN is an operator corresponding to the sum of the kinetic energies plus the potential energies for all the particles in the system (this addition is the total energy of the system in most of the cases under analysis). It is usually denoted by H, also Ȟ or Ĥ. Its spectrum is the set of possible outcomes when one measures the total energy of a system. Because of its close relation to the time-evolution of a system, it is of fundamental importance in most formulations of quantum theory.

The Hamiltonian is named after William Rowan Hamilton, who created a revolutionary reformulation of Newtonian mechanics, now called Hamiltonian mechanics, which is also important in quantum physics.


Introduction

The Hamiltonian is the sum of the kinetic energies of all the particles, plus the potential energy of the particles associated with the system. The expression of the Hamiltonian can take different forms and simplifications taken into account the concrete characteristics of the system under analysis: single or several particles in the system; interaction between particles; kind of potential energy; time varying potential or time independent one; etc.


The Schrödinger Hamiltonian

One particle

By analogy with classical mechanics, the Hamiltonian is commonly expressed as the sum of operators corresponding to the kinetic and potential energies of a system in the form

_Ĥ_ = _T̂_ + _V̂_,

where

_V̂_ = _V_ = _V_(R, _t_),
is the potential energy operator and

$$\hat{T} = \frac{\mathbf{\hat{p}}\cdot\mathbf{\hat{p}}}{2m} = \frac{\hat{p}^2}{2m} = -\frac{\hbar^2}{2m}\nabla^2,$$
is the kinetic energy operator in which m is the mass of the particle, the dot denotes the dot product of vectors, and

_p̂_ =  − _i_ℏ∇,
is the momentum operator where an ∇ is the del operator. The dot product of ∇ with itself is the Laplacian ∇². In three dimensions using Cartesian coordinates the Laplace operator is

$$\nabla^2 = \frac{\partial^2}{{\partial x}^2} + \frac{\partial^2}{{\partial y}^2} + \frac{\partial^2}{{\partial z}^2}$$

Although this is not the technical definition of the Hamiltonian in classical mechanics, it is the form it most commonly takes. Combining these together yields the familiar form used in the Schrödinger equation:

$$\begin{align}\hat{H} & = \hat{T} + \hat{V} \\
 & = \frac{\mathbf{\hat{p}}\cdot\mathbf{\hat{p}}}{2m}+ V(\mathbf{r},t) \\
 & = -\frac{\hbar^2}{2m}\nabla^2+ V(\mathbf{r},t)\end{align}$$

which allows one to apply the Hamiltonian to systems described by a wave function Ψ(R, t). This is the approach commonly taken in introductory treatments of quantum mechanics, using the formalism of Schrödinger's wave mechanics.

One can also make substitutions to certain variables to fit specific cases, such as some involving electromagnetic fields.

Many particles

The formalism can be extended to N particles:

$$\hat{H} = \sum_{n=1}^N \hat{T}_n + V$$

where

_V_ = _V_(R₁, R₂⋯R_(_N_), _t_),
is the potential energy function, now a function of the spatial configuration of the system and time (a particular set of spatial positions at some instant of time defines a configuration) and;

$$\hat{T}_n = \frac{\mathbf{p}_n\cdot\mathbf{p}_n}{2m_n} ,$$
is the kinetic energy operator of particle n, and ∇_(n) is the gradient for particle n, ∇_(n)² is the Laplacian for particle using the coordinates:

$$\nabla_n^2 = \frac{\partial^2}{\partial x_n^2} + \frac{\partial^2}{\partial y_n^2} + \frac{\partial^2}{\partial z_n^2},$$

Combining these yields the Schrödinger Hamiltonian for the N-particle case:

$$\begin{align} \hat{H} & = \sum_{n=1}^N \hat{T}_n + V \\
 & = \sum_{n=1}^N \frac{\mathbf{\hat{p}}_n\cdot\mathbf{\hat{p}}_n}{2m_n}+ V(\mathbf{r}_1,\mathbf{r}_2\cdots\mathbf{r}_N,t) \\
 & = -\frac{\hbar^2}{2}\sum_{n=1}^N \frac{1}{m_n}\nabla_n^2 + V(\mathbf{r}_1,\mathbf{r}_2\cdots\mathbf{r}_N,t)
\end{align}$$

However, complications can arise in the many-body problem. Since the potential energy depends on the spatial arrangement of the particles, the kinetic energy will also depend on the spatial configuration to conserve energy. The motion due to any one particle will vary due to the motion of all the other particles in the system. For this reason cross terms for kinetic energy may appear in the Hamiltonian; a mix of the gradients for two particles:

$$-\frac{\hbar^2}{2M}\nabla_i\cdot\nabla_j$$

where M denotes the mass of the collection of particles resulting in this extra kinetic energy. Terms of this form are known as _mass polarization terms_, and appear in the Hamiltonian of many electron atoms (see below).

For N interacting particles, i.e. particles which interact mutually and constitute a many-body situation, the potential energy function V is _not_ simply a sum of the separate potentials (and certainly not a product, as this is dimensionally incorrect). The potential energy function can only be written as above: a function of all the spatial positions of each particle.

For non-interacting particles, i.e. particles which do not interact mutually and move independently, the potential of the system is the sum of the separate potential energy for each particle,[1] that is

$$V = \sum_{i=1}^N V(\mathbf{r}_i,t) = V(\mathbf{r}_1,t) + V(\mathbf{r}_2,t) + \cdots + V(\mathbf{r}_N,t)$$

The general form of the Hamiltonian in this case is:

$$\begin{align} \hat{H} & = -\frac{\hbar^2}{2}\sum_{i=1}^{N}\frac{1}{m_i}\nabla_i^2 + \sum_{i=1}^N V_i\\
 & = \sum_{i=1}^{N}\left(-\frac{\hbar^2}{2m_i}\nabla_i^2 + V_i \right) \\
 & = \sum_{i=1}^{N}\hat{H}_i \\
\end{align}$$

where the sum is taken over all particles and their corresponding potentials; the result is that the Hamiltonian of the system is the sum of the separate Hamiltonians for each particle. This is an idealized situation - in practice the particles are almost always influenced by some potential, and there are many-body interactions. One illustrative example of a two-body interaction where this form would not apply is for electrostatic potentials due to charged particles, because they interact with each other by Coulomb interaction (electrostatic force), as shown below.


Schrödinger equation

The Hamiltonian generates the time evolution of quantum states. If |ψ(t)⟩ is the state of the system at time t, then

$$H \left| \psi (t) \right\rangle = i \hbar {\partial\over\partial t} \left| \psi (t) \right\rangle.$$

This equation is the Schrödinger equation. It takes the same form as the Hamilton–Jacobi equation, which is one of the reasons H is also called the Hamiltonian. Given the state at some initial time (t = 0), we can solve it to obtain the state at any subsequent time. In particular, if H is independent of time, then

|_ψ_(_t_)⟩ = _e_^( − _i__H__t_/ℏ)|_ψ_(0)⟩.

The exponential operator on the right hand side of the Schrödinger equation is usually defined by the corresponding power series in H. One might notice that taking polynomials or power series of unbounded operators that are not defined everywhere may not make mathematical sense. Rigorously, to take functions of unbounded operators, a functional calculus is required. In the case of the exponential function, the continuous, or just the holomorphic functional calculus suffices. We note again, however, that for common calculations the physicists' formulation is quite sufficient.

By the *-homomorphism property of the functional calculus, the operator

_U_ = _e_^( − _i__H__t_/ℏ)

is a unitary operator. It is the _time evolution operator_, or _propagator_, of a closed quantum system. If the Hamiltonian is time-independent, {U(t)} form a one parameter unitary group (more than a semigroup); this gives rise to the physical principle of detailed balance.


Dirac formalism

However, in the more general formalism of Dirac, the Hamiltonian is typically implemented as an operator on a Hilbert space in the following way:

The eigenkets (eigenvectors) of H, denoted $\left| a \right\rang$, provide an orthonormal basis for the Hilbert space. The spectrum of allowed energy levels of the system is given by the set of eigenvalues, denoted {E_(a)}, solving the equation:

_H_|_a_⟩ = _E__(_a_)|_a_⟩.

Since H is a Hermitian operator, the energy is always a real number.

From a mathematically rigorous point of view, care must be taken with the above assumptions. Operators on infinite-dimensional Hilbert spaces need not have eigenvalues (the set of eigenvalues does not necessarily coincide with the spectrum of an operator). However, all routine quantum mechanical calculations can be done using the physical formulation.


Expressions for the Hamiltonian

Following are expressions for the Hamiltonian in a number of situations.[2] Typical ways to classify the expressions are the number of particles, number of dimensions, and the nature of the potential energy function - importantly space and time dependence. Masses are denoted by m, and charges by q.

General forms for one particle

Free particle

The particle is not bound by any potential energy, so the potential is zero and this Hamiltonian is the simplest. For one dimension:

$$\hat{H} = -\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2}$$

and in three dimensions:

$$\hat{H} = -\frac{\hbar^2}{2m}\nabla^2$$

Constant-potential well

For a particle in a region of constant potential V = V₀ (no dependence on space or time), in one dimension, the Hamiltonian is:

$$\hat{H} = -\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2} + V_0$$

in three dimensions

$$\hat{H} = -\frac{\hbar^2}{2m}\nabla^2 + V_0$$

This applies to the elementary "particle in a box" problem, and step potentials.

Simple harmonic oscillator

For a simple harmonic oscillator in one dimension, the potential varies with position (but not time), according to:

$$V = \frac{k}{2}x^2 = \frac{m\omega^2}{2}x^2$$

where the angular frequency _ω_, effective spring constant k, and mass m of the oscillator satisfy:

$$\omega^2 = \frac{k}{m}$$

so the Hamiltonian is:

$$\hat{H} = -\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2} + \frac{m\omega^2}{2}x^2$$

For three dimensions, this becomes

$$\hat{H} = -\frac{\hbar^2}{2m}\nabla^2 + \frac{m\omega^2}{2} r^2$$

where the three-dimensional position vector R using cartesian coordinates is (x, y, z), its magnitude is

_r_² = R ⋅ R = |R|² = _x_² + _y_² + _z_²

Writing the Hamiltonian out in full shows it is simply the sum of the one-dimensional Hamiltonians in each direction:

$$\begin{align} \hat{H} & = -\frac{\hbar^2}{2m}\left( \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} + \frac{\partial^2}{\partial z^2} \right) + \frac{m\omega^2}{2} (x^2+y^2+z^2) \\
& = \left(-\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2} + \frac{m\omega^2}{2}x^2\right) + \left(-\frac{\hbar^2}{2m}\frac{\partial^2}{\partial y^2} + \frac{m\omega^2}{2}y^2 \right ) + \left(- \frac{\hbar^2}{2m}\frac{\partial^2}{\partial z^2} +\frac{m\omega^2}{2}z^2 \right) \\
\end{align}$$

Rigid rotor

For a rigid rotor – i.e. system of particles which can rotate freely about any axes, not bound in any potential (such as free molecules with negligible vibrational degrees of freedom, say due to double or triple chemical bonds), Hamiltonian is:

$$\hat{H} = -\frac{\hbar^2}{2I_{xx}}\hat{J}_x^2 -\frac{\hbar^2}{2I_{yy}}\hat{J}_y^2 -\frac{\hbar^2}{2I_{zz}}\hat{J}_z^2$$

where I_(xx), I_(yy), and I_(yy) are the moment of inertia components (technically the diagonal elements of the moment of inertia tensor), and Ĵ_(x) ​, Ĵ_(y) ​ and Ĵ_(z) ​ are the total angular momentum operators (components), about the x, y, and z axes respectively.

Electrostatic or coulomb potential

The Coulomb potential energy for two point charges q₁ and q₂ (i.e. charged particles, since particles have no spatial extent), in three dimensions, is (in SI units - rather than Gaussian units which are frequently used in electromagnetism):

$$V = \frac{q_1q_2}{4\pi\epsilon_0 |\mathbf{r}|}$$

However, this is only the potential for one point charge due to another. If there are many charged particles, each charge has a potential energy due to every other point charge (except itself). For N charges, the potential energy of charge q_(j) due to all other charges is (see also Electrostatic potential energy stored in a configuration of discrete point charges):[3]

$$V_j = \frac{1}{2}\sum_{i\neq j} q_i \phi(\mathbf{r}_i)=\frac{1}{8\pi\varepsilon_0}\sum_{i\neq j} \frac{q_iq_j}{|\mathbf{r}_i-\mathbf{r}_j|}$$

where ϕ(R_(i)) is the electrostatic potential of charge q_(j) at R_(i). The total potential of the system is then the sum over j:

$$V = \frac{1}{8\pi\varepsilon_0}\sum_{j=1}^N\sum_{i\neq j} \frac{q_iq_j}{|\mathbf{r}_i-\mathbf{r}_j|}$$

so the Hamiltonian is:

$$\begin{align}\hat{H} & = -\frac{\hbar^2}{2}\sum_{j=1}^N\frac{1}{m_j}\nabla_j^2 + \frac{1}{8\pi\varepsilon_0}\sum_{j=1}^N\sum_{i\neq j} \frac{q_iq_j}{|\mathbf{r}_i-\mathbf{r}_j|} \\
 & = \sum_{j=1}^N \left ( -\frac{\hbar^2}{2m_j}\nabla_j^2 + \frac{1}{8\pi\varepsilon_0}\sum_{i\neq j} \frac{q_iq_j}{|\mathbf{r}_i-\mathbf{r}_j|}\right) \\
\end{align}$$

Electric dipole in an electric field

For an electric dipole moment D constituting charges of magnitude q, in a uniform, electrostatic field (time-independent) E, positioned in one place, the potential is:

_V_ =  − D̂ ⋅ E

the dipole moment itself is the operator

D̂ = _q_R̂

Since the particle is stationary, there is no translational kinetic energy of the dipole, so the Hamiltonian of the dipole is just the potential energy:

_Ĥ_ =  − D̂ ⋅ E =  − _q_R̂ ⋅ E

Magnetic dipole in a magnetic field

For a magnetic dipole moment Μ in a uniform, magnetostatic field (time-independent) B, positioned in one place, the potential is:

_V_ =  − Μ ⋅ B

Since the particle is stationary, there is no translational kinetic energy of the dipole, so the Hamiltonian of the dipole is just the potential energy:

_Ĥ_ =  − Μ ⋅ B

For a Spin-½ particle, the corresponding spin magnetic moment is:[4]

$$\boldsymbol{\mu}_S = \frac{g_s e}{2m} \mathbf{S}$$

where g_(s) is the spin gyromagnetic ratio (a.k.a. "spin g-factor"), e is the electron charge, S is the spin operator vector, whose components are the Pauli matrices, hence

$$\hat{H} = \frac{g_s e}{2m} \mathbf{S} \cdot\mathbf{B}$$

Charged particle in an electromagnetic field

For a charged particle q in an electromagnetic field, described by the scalar potential ϕ and vector potential A, there are two parts to the Hamiltonian to substitute for.[5] The momentum operator must be replaced by the canonical momentum operator, which includes a contribution from the A field:

Π̂ = P̂ − _q_A

where P̂ is the kinetic momentum operator given as the usual momentum operator:

P̂ =  − _i_ℏ∇

so the corresponding kinetic energy operator is:

$$\hat{T} = \frac{\mathbf{\hat{\Pi}}\cdot\mathbf{\hat{\Pi}}}{2m} = \frac{1}{2m} \left ( \mathbf{\hat{P}} - q\mathbf{A} \right)^2$$

and the potential energy, which is due to the ϕ field:

_V_ = _q__ϕ_

Casting all of these into the Hamiltonian gives:

$$\hat{H} = \frac{1}{2m} \left ( -i\hbar\nabla - q\mathbf{A} \right)^2 + q\phi$$


Energy eigenket degeneracy, symmetry, and conservation laws

In many systems, two or more energy eigenstates have the same energy. A simple example of this is a free particle, whose energy eigenstates have wavefunctions that are propagating plane waves. The energy of each of these plane waves is inversely proportional to the square of its wavelength. A wave propagating in the x direction is a different state from one propagating in the y direction, but if they have the same wavelength, then their energies will be the same. When this happens, the states are said to be _degenerate_.

It turns out that degeneracy occurs whenever a nontrivial unitary operator U commutes with the Hamiltonian. To see this, suppose that |a⟫ is an energy eigenket. Then U|a⟫ is an energy eigenket with the same eigenvalue, since

_U__H_|_a_⟩ = _U__E__(_a_)|_a_⟩ = _E__(_a_)(_U_|_a_⟩) = _H_ (_U_|_a_⟩).

Since U is nontrivial, at least one pair of |a⟫ and U|a⟫ must represent distinct states. Therefore, H has at least one pair of degenerate energy eigenkets. In the case of the free particle, the unitary operator which produces the symmetry is the rotation operator, which rotates the wavefunctions by some angle while otherwise preserving their shape.

The existence of a symmetry operator implies the existence of a conserved observable. Let G be the Hermitian generator of U:

_U_ = _I_ − _i__ϵ__G_ + _O_(_ϵ_²) 

It is straightforward to show that if U commutes with H, then so does G:

[_H_, _G_] = 0 

Therefore,

$$\frac{\partial}{\partial t} \langle\psi(t)|G|\psi(t)\rangle
= \frac{1}{i\hbar} \langle\psi(t)|[G,H]|\psi(t)\rangle
= 0.$$

In obtaining this result, we have used the Schrödinger equation, as well as its dual,

$$\langle\psi (t)|H = - i \hbar {\partial\over\partial t} \langle\psi(t)|.$$

Thus, the expected value of the observable G is conserved for any state of the system. In the case of the free particle, the conserved quantity is the angular momentum.


Hamilton's equations

Hamilton's equations in classical Hamiltonian mechanics have a direct analogy in quantum mechanics. Suppose we have a set of basis states {|n⟩}, which need not necessarily be eigenstates of the energy. For simplicity, we assume that they are discrete, and that they are orthonormal, i.e.,

⟨_n_′|_n_⟩ = _δ__(_n__n_′)

Note that these basis states are assumed to be independent of time. We will assume that the Hamiltonian is also independent of time.

The instantaneous state of the system at time t, |ψ(t)⟩, can be expanded in terms of these basis states:

|_ψ_(_t_)⟩ = ∑_(_n_)_a__(_n_)(_t_)|_n_⟩

where

_a__(_n_)(_t_) = ⟨_n_|_ψ_(_t_)⟩.

The coefficients a_(n)(t) are complex variables. We can treat them as coordinates which specify the state of the system, like the position and momentum coordinates which specify a classical system. Like classical coordinates, they are generally not constant in time, and their time dependence gives rise to the time dependence of the system as a whole.

The expectation value of the Hamiltonian of this state, which is also the mean energy, is

$$\langle H(t) \rangle \ \stackrel{\mathrm{def}}{=}\  \langle\psi(t)|H|\psi(t)\rangle
= \sum_{nn'} a_{n'}^* a_n \langle n'|H|n \rangle$$

where the last step was obtained by expanding |ψ(t)⟩ in terms of the basis states.

Each a_(n)(t) actually corresponds to _two_ independent degrees of freedom, since the variable has a real part and an imaginary part. We now perform the following trick: instead of using the real and imaginary parts as the independent variables, we use a_(n)(t) and its complex conjugate a_(n)^(*)(t). With this choice of independent variables, we can calculate the partial derivative

$$\frac{\partial \langle H \rangle}{\partial a_{n'}^{*}}
= \sum_{n} a_n \langle n'|H|n \rangle
= \langle n'|H|\psi\rangle$$

By applying Schrödinger's equation and using the orthonormality of the basis states, this further reduces to

$$\frac{\partial \langle H \rangle}{\partial a_{n'}^{*}}
= i \hbar \frac{\partial a_{n'}}{\partial t}$$

Similarly, one can show that

$$\frac{\partial \langle H \rangle}{\partial a_n}
= - i \hbar \frac{\partial a_{n}^{*}}{\partial t}$$

If we define "conjugate momentum" variables π_(n) by

_π__(_n_)(_t_) = _i_ℏ_a__(_n_)^(*)(_t_)

then the above equations become

$$\frac{\partial \langle H \rangle}{\partial \pi_n} = \frac{\partial a_n}{\partial t},\quad \frac{\partial \langle H \rangle}{\partial a_n} = - \frac{\partial \pi_n}{\partial t}$$

which is precisely the form of Hamilton's equations, with the a_(n)s as the generalized coordinates, the π_(n)s as the conjugate momenta, and ⟨H⟩ taking the place of the classical Hamiltonian.


See also

-   Hamiltonian mechanics
-   Operator (physics)
-   Bra–ket notation
-   Quantum state
-   Linear algebra
-   Conservation of energy
-   Potential theory
-   Many-body problem
-   Electrostatics
-   Electric field
-   Magnetic field
-   Lieb–Thirring inequality


References

Category:Hamiltonian mechanics Category:Operator theory Category:Quantum mechanics Category:Quantum chemistry Category:Theoretical chemistry Category:Computational chemistry Category:William Rowan Hamilton

[1] Quantum Physics of Atoms, Molecules, Solids, Nuclei and Particles (2nd Edition), R. Resnick, R. Eisberg, John Wiley & Sons, 1985,

[2] Quanta: A handbook of concepts, P.W. Atkins, Oxford University Press, 1974,

[3] Electromagnetism (2nd edition), I.S. Grant, W.R. Phillips, Manchester Physics Series, 2008

[4] Physics of Atoms and Molecules, B.H. Bransden, C.J.Joachain, Longman, 1983,

[5]