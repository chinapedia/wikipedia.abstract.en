IDENTICAL PARTICLES, also called INDISTINGUISHABLE or INDISCERNIBLE PARTICLES, are particles that cannot be distinguished from one another, even in principle. Species of identical particles include, but are not limited to elementary particles such as electrons, composite subatomic particles such as atomic nuclei, as well as atoms and molecules. Quasiparticles also behave in this way. Although all known indistinguishable particles are "tiny", there is no exhaustive list of all possible sorts of particles nor a clear-cut limit of applicability, as explored in quantum statistics.

There are two main categories of identical particles: bosons, which can share quantum states, and fermions, which do not share quantum states as described by the Pauli exclusion principle. Examples of bosons are photons, gluons, phonons, helium-4 nuclei and all mesons. Examples of fermions are electrons, neutrinos, quarks, protons, neutrons, and helium-3 nuclei.

The fact that particles can be identical has important consequences in statistical mechanics. Calculations in statistical mechanics rely on probabilistic arguments, which are sensitive to whether or not the objects being studied are identical. As a result, identical particles exhibit markedly different statistical behaviour from distinguishable particles. For example, the indistinguishability of particles has been proposed as a solution to Gibbs' mixing paradox.


Distinguishing between particles

There are two methods for distinguishing between particles. The first method relies on differences in the intrinsic physical properties of the particles, such as mass, electric charge, and spin. If differences exist, it is possible to distinguish between the particles by measuring the relevant properties. However, it is an empirical fact that microscopic particles of the same species have completely equivalent physical properties. For instance, every electron in the universe has exactly the same electric charge; this is why it is possible to speak of such a thing as "the charge of the electron".

Even if the particles have equivalent physical properties, there remains a second method for distinguishing between particles, which is to track the trajectory of each particle. As long as the position of each particle can be measured with infinite precision (even when the particles collide), then there would be no ambiguity about which particle is which.

The problem with the second approach is that it contradicts the principles of quantum mechanics. According to quantum theory, the particles do not possess definite positions during the periods between measurements. Instead, they are governed by wavefunctions that give the probability of finding a particle at each position. As time passes, the wavefunctions tend to spread out and overlap. Once this happens, it becomes impossible to determine, in a subsequent measurement, which of the particle positions correspond to those measured earlier. The particles are then said to be indistinguishable.


Quantum mechanical description

Symmetrical and antisymmetrical states

What follows is an example to make the above discussion concrete, using the formalism developed in the article on the mathematical formulation of quantum mechanics.

Let _n_ denote a complete set of (discrete) quantum numbers for specifying single-particle states (for example, for the particle in a box problem, take _n_ to be the quantized wave vector of the wavefunction.) For simplicity, consider a system composed of two particles that are not interacting with each other. Suppose that one particle is in the state _n_₁, and the other is in the state _n_₂. Intuitively, the quantum state of the system is written as

|_n_₁⟫|_n_₂⟫

where the state writing order matters such as the firstly written state is for the particle 1 and the secondly written state is for the particle 2 (so, if |n₂⟫|n₁⟫, then the particle 1 occupies the state _n_₂ while the particle 2 occupies the state _n_₁). This is simply the canonical way of constructing a basis for a tensor product space H ⊗ H of the combined system from the individual spaces. This expression is valid for distinguishable particles, however, it is not appropriate for indistinguishable particles since |n₁⟫|n₂⟫ and |n₂⟫|n₁⟫ as a result of exchanging the particles are generally different states.

-   "the particle 1 occupies the _n_₁ state and the particle 2 occupies the _n_₂ state" ≠ "the particle 1 occupies the _n_₂ state and the particle 2 occupies the _n_₁ state".

Two states are physically equivalent only if they differ by a complex phase factor. For two indistinguishable particles, a state before the particle exchange must be physically equivalent to the state after the exchange, so these two state differ only by a complex phase factor. This fact suggests that a state for two indistinguishable (and non-interacting) particles is given by following two possibilities: [1][2][3]

|_n_₁⟫|_n_₂⟫ ± |_n_₂⟫|_n_₁⟫

States where it is a sum are known as SYMMETRIC, while states involving the difference are called ANTISYMMETRIC. More completely, symmetric states have the form

|_n_₁, _n_₂; _S_⟫ ≡ constant × (|_n_₁⟫|_n_₂⟫ + |_n_₂⟫|_n_₁⟫)

while antisymmetric states have the form

|_n_₁, _n_₂; _A_⟫ ≡ constant × (|_n_₁⟫|_n_₂⟫ − |_n_₂⟫|_n_₁⟫)

Note that if _n_₁ and _n_₂ are the same, the antisymmetric expression gives zero, which cannot be a state vector since it cannot be normalized. In other words, more than one identical particle cannot occupy an antisymmetric state (one antisymmetric state can be occupied only by one particle). This is known as the Pauli exclusion principle, and it is the fundamental reason behind the chemical properties of atoms and the stability of matter.

Exchange symmetry

The importance of symmetric and antisymmetric states is ultimately based on empirical evidence. It appears to be a fact of nature that identical particles do not occupy states of a mixed symmetry, such as

|_n_₁, _n_₂; ?⟫ = constant × (|_n_₁⟫|_n_₂⟫ + _i_|_n_₂⟫|_n_₁⟫)

There is actually an exception to this rule, which will be discussed later. On the other hand, it can be shown that the symmetric and antisymmetric states are in a sense special, by examining a particular symmetry of the multiple-particle states known as EXCHANGE SYMMETRY.

Define a linear operator _P_, called the exchange operator. When it acts on a tensor product of two state vectors, it exchanges the values of the state vectors:

_P_(|_ψ_⟫|_ϕ_⟫) ≡ |_ϕ_⟫|_ψ_⟫

_P_ is both Hermitian and unitary. Because it is unitary, it can be regarded as a symmetry operator. This symmetry may be described as the symmetry under the exchange of labels attached to the particles (i.e., to the single-particle Hilbert spaces).

Clearly, P² = 1 (the identity operator), so the eigenvalues of _P_ are +1 and −1. The corresponding eigenvectors are the symmetric and antisymmetric states:

_P_|_n_₁, _n_₂; _S_⟫ =  + |_n_₁, _n_₂; _S_⟫

_P_|_n_₁, _n_₂; _A_⟫ =  − |_n_₁, _n_₂; _A_⟫

In other words, symmetric and antisymmetric states are essentially unchanged under the exchange of particle labels: they are only multiplied by a factor of +1 or −1, rather than being "rotated" somewhere else in the Hilbert space. This indicates that the particle labels have no physical meaning, in agreement with the earlier discussion on indistinguishability.

It will be recalled that _P_ is Hermitian. As a result, it can be regarded as an observable of the system, which means that, in principle, a measurement can be performed to find out if a state is symmetric or antisymmetric. Furthermore, the equivalence of the particles indicates that the Hamiltonian can be written in a symmetrical form, such as

$$H = \frac{p_1^2}{2m} + \frac{p_2^2}{2m} + U(|x_1 - x_2|) + V(x_1) + V(x_2)$$

It is possible to show that such Hamiltonians satisfy the commutation relation

[_P_,_H_] = 0

According to the Heisenberg equation, this means that the value of _P_ is a constant of motion. If the quantum state is initially symmetric (antisymmetric), it will remain symmetric (antisymmetric) as the system evolves. Mathematically, this says that the state vector is confined to one of the two eigenspaces of _P_, and is not allowed to range over the entire Hilbert space. Thus, that eigenspace might as well be treated as the actual Hilbert space of the system. This is the idea behind the definition of Fock space.

Fermions and bosons

The choice of symmetry or antisymmetry is determined by the species of particle. For example, symmetric states must always be used when describing photons or helium-4 atoms, and antisymmetric states when describing electrons or protons.

Particles which exhibit symmetric states are called bosons. The nature of symmetric states has important consequences for the statistical properties of systems composed of many identical bosons. These statistical properties are described as Bose–Einstein statistics.

Particles which exhibit antisymmetric states are called fermions. Antisymmetry gives rise to the Pauli exclusion principle, which forbids identical fermions from sharing the same quantum state. Systems of many identical fermions are described by Fermi–Dirac statistics.

Parastatistics are also possible.

In certain two-dimensional systems, mixed symmetry can occur. These exotic particles are known as anyons, and they obey fractional statistics. Experimental evidence for the existence of anyons exists in the fractional quantum Hall effect, a phenomenon observed in the two-dimensional electron gases that form the inversion layer of MOSFETs. There is another type of statistic, known as braid statistics, which are associated with particles known as plektons.

The spin-statistics theorem relates the exchange symmetry of identical particles to their spin. It states that bosons have integer spin, and fermions have half-integer spin. Anyons possess fractional spin.

_N_ particles

The above discussion generalizes readily to the case of _N_ particles. Suppose there are _N_ particles with quantum numbers _n_₁, _n_₂, ..., n_(N). If the particles are bosons, they occupy a TOTALLY SYMMETRIC STATE, which is symmetric under the exchange of _any two_ particle labels:

$$|n_1 n_2 \cdots n_N; S\rang = \sqrt{\frac{\prod_n m_n!}{N!}} \sum_p |n_{p(1)}\rang |n_{p(2)}\rang \cdots |n_{p(N)}\rang$$

Here, the sum is taken over all different states under permutations _p_ acting on _N_ elements. The square root left to the sum is a normalizing constant. The quantity _m_(n)_ stands for the number of times each of the single-particle states _n_ appears in the _N_-particle state. Note that _∑_(n) m_(n) = N_.

In the same vein, fermions occupy TOTALLY ANTISYMMETRIC STATES:

$$|n_1 n_2 \cdots n_N; A\rang = \frac{1}{\sqrt{N!}} \sum_p \operatorname{sgn}(p) |n_{p(1)}\rang |n_{p(2)}\rang \cdots |n_{p(N)}\rang\$$

Here, is the sign of each permutation (i.e. + 1 if p is composed of an even number of transpositions, and  − 1 if odd). Note that there is no Π_(n)m_(n) term, because each single-particle state can appear only once in a fermionic state. Otherwise the sum would again be zero due to the antisymmetry, thus representing a physically impossible state. This is the Pauli exclusion principle for many particles.

These states have been normalized so that

⟪_n_₁_n_₂⋯_n__(_N_); _S_|_n_₁_n_₂⋯_n__(_N_); _S_⟫ = 1,  ⟪_n_₁_n_₂⋯_n__(_N_); _A_|_n_₁_n_₂⋯_n__(_N_); _A_⟫ = 1.

Measurement

Suppose there is a system of _N_ bosons (fermions) in the symmetric (antisymmetric) state

|_n_₁_n_₂⋯_n__(_N_); _S_/_A_⟫

and a measurement is performed on some other set of discrete observables, _m_. In general, this yields some result _m₁_ for one particle, _m₂_ for another particle, and so forth. If the particles are bosons (fermions), the state after the measurement must remain symmetric (antisymmetric), i.e.

|_m_₁_m_₂⋯_m__(_N_); _S_/_A_⟫

The probability of obtaining a particular result for the _m_ measurement is

_P__(_S_/_A_)(_n_₁, ⋯_n__(_N_) → _m_₁, ⋯_m__(_N_)) ≡ |⟪_m_₁⋯_m__(_N_); _S_/_A_ | _n_₁⋯_n__(_N_); _S_/_A_⟫|²

It can be shown that

∑_(_m_₁ ≤ _m_₂ ≤ … ≤ _m__(_N_))_P__(_S_/_A_)(_n_₁, ⋯_n__(_N_) → _m_₁, ⋯_m__(_N_)) = 1

which verifies that the total probability is 1. The sum has to be restricted to _ordered_ values of _m₁_, ..., _m_(N)_ to ensure that each multi-particle state is not counted more than once.

Wavefunction representation

So far, the discussion has included only discrete observables. It can be extended to continuous observables, such as the position _x_.

Recall that an eigenstate of a continuous observable represents an infinitesimal _range_ of values of the observable, not a single value as with discrete observables. For instance, if a particle is in a state |_ψ_⟩, the probability of finding it in a region of volume _d_³_x_ surrounding some position _x_ is

|⟪_x_|_ψ_⟫|² _d_³_x_

As a result, the continuous eigenstates |_x_⟩ are normalized to the delta function instead of unity:

⟪_x_|_x_′⟫ = _δ_³(_x_ − _x_′)

Symmetric and antisymmetric multi-particle states can be constructed from continuous eigenstates in the same way as before. However, it is customary to use a different normalizing constant:

$$|x_1 x_2 \cdots x_N; S\rang = \frac{\prod_j n_j!}{N!} \sum_p |x_{p(1)}\rang |x_{p(2)}\rang \cdots |x_{p(N)}\rang$$

$$|x_1 x_2 \cdots x_N; A\rang = \frac{1}{N!} \sum_p \mathrm{sgn}(p) |x_{p(1)}\rang |x_{p(2)}\rang \cdots |x_{p(N)}\rang$$

A many-body wavefunction can be written,



\begin{align} \Psi^{(S)}_{n_1 n_2 \cdots n_N} (x_1, x_2, \cdots x_N) & \equiv \lang x_1 x_2 \cdots x_N; S | n_1 n_2 \cdots n_N; S \rang \\[10pt] & = \sqrt{\frac{\prod_j n_j!}{N!}} \sum_p \psi_{p(1)}(x_1) \psi_{p(2)}(x_2) \cdots \psi_{p(N)}(x_N) \end{align}



\begin{align} \Psi^{(A)}_{n_1 n_2 \cdots n_N} (x_1, x_2, \cdots x_N) & \equiv \lang x_1 x_2 \cdots x_N; A | n_1 n_2 \cdots n_N; A \rang \\[10pt] & = \frac{1}{\sqrt{N!}} \sum_p \mathrm{sgn}(p) \psi_{p(1)}(x_1) \psi_{p(2)}(x_2) \cdots \psi_{p(N)}(x_N) \end{align}

where the single-particle wavefunctions are defined, as usual, by

_ψ__(_n_)(_x_) ≡ ⟪_x_|_n_⟫

The most important property of these wavefunctions is that exchanging any two of the coordinate variables changes the wavefunction by only a plus or minus sign. This is the manifestation of symmetry and antisymmetry in the wavefunction representation:

_Ψ__(_n_₁⋯_n__(_N_))^((_S_))(⋯_x__(_i_)⋯_x__(_j_)⋯) = _Ψ__(_n_₁⋯_n__(_N_))^((_S_))(⋯_x__(_j_)⋯_x__(_i_)⋯)

_Ψ__(_n_₁⋯_n__(_N_))^((_A_))(⋯_x__(_i_)⋯_x__(_j_)⋯) =  − _Ψ__(_n_₁⋯_n__(_N_))^((_A_))(⋯_x__(_j_)⋯_x__(_i_)⋯)

The many-body wavefunction has the following significance: if the system is initially in a state with quantum numbers _n_₁, ..., n_(N), and a position measurement is performed, the probability of finding particles in infinitesimal volumes near _x_₁, _x_₂, ..., _x__(N) is

_N_! |_Ψ__(_n_₁_n_₂⋯_n__(_N_))^((_S_/_A_))(_x_₁,_x_₂,⋯_x__(_N_))|² _d_^(3_N_)​_x_

The factor of _N_! comes from our normalizing constant, which has been chosen so that, by analogy with single-particle wavefunctions,

∫​∫​⋯​∫ |_Ψ__(_n_₁_n_₂⋯_n__(_N_))^((_S_/_A_))(_x_₁,_x_₂,⋯_x__(_N_))|²_d_³​_x_₁_d_³​_x_₂⋯_d_³​_x__(_N_) = 1

Because each integral runs over all possible values of _x_, each multi-particle state appears _N_! times in the integral. In other words, the probability associated with each event is evenly distributed across _N_! equivalent points in the integral space. Because it is usually more convenient to work with unrestricted integrals than restricted ones, the normalizing constant has been chosen to reflect this.

Finally, antisymmetric wavefunction can be written as the determinant of a matrix, known as a Slater determinant:

$$\Psi^{(A)}_{n_1 \cdots n_N} (x_1, \cdots x_N)
= \frac{1}{\sqrt{N!}} \left|
\begin{matrix}
\psi_{n_1}(x_1) & \psi_{n_1}(x_2) & \cdots & \psi_{n_1}(x_N) \\
\psi_{n_2}(x_1) & \psi_{n_2}(x_2) & \cdots & \psi_{n_2}(x_N) \\
\cdots & \cdots & \cdots & \cdots \\
\psi_{n_N}(x_1) & \psi_{n_N}(x_2) & \cdots & \psi_{n_N}(x_N) \\
\end{matrix}
\right|$$

The operator approach and parastatistics

The Hilbert space for n particles is given by the tensor product ⊗_(n)H. The permutation group of S_(n) acts on this space by permuting the entries. By definition the expectation values for an observable a of n indistinguishable particles should be invariant under these permutation. This means that for all ψ ∈ H and σ ∈ S_(n)

(_σ__Ψ_)^(_t_)_a_(_σ__Ψ_) = _Ψ_^(_t_)_a__Ψ_,
or equivalently for each σ ∈ S_(n)

_σ_^(_t_)_a__σ_ = _a_
. Two states are equivalent whenever their expectation values coincide for all observables. If we restrict to observables of n identical particles, and hence observables satisfying the equation above, we find that the following states (after normalization) are equivalent

_Ψ_ ∼ ∑_(_σ_ ∈ _S__(_n_))_λ__(_σ_)_σ__Ψ_
. The equivalence classes are in bijective relation with irreducible subspaces of ⊗_(n)H under S_(n).

Two obvious irreducible subspaces are the one dimensional symmetric/bosonic subspace and anti-symmetric/fermionic subspace. There are however more types of irreducible subspaces. States associated with these other irreducible subspaces are called parastatistic states.[4] Young tableaux provide a way to classify all of these irreducible subspaces.


Statistical properties

Statistical effects of indistinguishability

The indistinguishability of particles has a profound effect on their statistical properties. To illustrate this, consider a system of _N_ distinguishable, non-interacting particles. Once again, let _n__(_j_) denote the state (i.e. quantum numbers) of particle _j_. If the particles have the same physical properties, the _n__(_j_)'s run over the same range of values. Let _ε_(_n_) denote the energy of a particle in state _n_. As the particles do not interact, the total energy of the system is the sum of the single-particle energies. The partition function of the system is

$$Z = \sum_{n_1, n_2, \cdots n_N} \exp\left\{ -\frac{1}{kT} \left[ \varepsilon(n_1) + \varepsilon(n_2) + \cdots + \varepsilon(n_N) \right] \right\}$$

where _k_ is Boltzmann's constant and _T_ is the temperature. This expression can be factored to obtain

_Z_ = _ξ_^(_N_)

where

$$\xi = \sum_n \exp\left[ - \frac{\varepsilon(n)}{kT} \right].$$

If the particles are identical, this equation is incorrect. Consider a state of the system, described by the single particle states [_n_₁, ..., _n__(_N_)]. In the equation for _Z_, every possible permutation of the _n_'s occurs once in the sum, even though each of these permutations is describing the same multi-particle state. Thus, the number of states has been over-counted.

If the possibility of overlapping states is neglected, which is valid if the temperature is high, then the number of times each state is counted is approximately _N_!. The correct partition function is

$$Z = \frac{\xi^N}{N!}.$$

Note that this "high temperature" approximation does not distinguish between fermions and bosons.

The discrepancy in the partition functions of distinguishable and indistinguishable particles was known as far back as the 19th century, before the advent of quantum mechanics. It leads to a difficulty known as the Gibbs paradox. Gibbs showed that in the equation _Z_ = _ξ_^(_N_), the entropy of a classical ideal gas is

_S_ = _N__k_ln (_V_) + _N__f_(_T_)

where _V_ is the volume of the gas and _f_ is some function of _T_ alone. The problem with this result is that _S_ is not extensive – if _N_ and _V_ are doubled, _S_ does not double accordingly. Such a system does not obey the postulates of thermodynamics.

Gibbs also showed that using _Z_ = _ξ_^(_N_)/_N_! alters the result to

$$S = N k \ln \left(\frac{V}{N}\right) + N f(T)$$

which is perfectly extensive. However, the reason for this correction to the partition function remained obscure until the discovery of quantum mechanics.

Statistical properties of bosons and fermions

There are important differences between the statistical behavior of bosons and fermions, which are described by Bose–Einstein statistics and Fermi–Dirac statistics respectively. Roughly speaking, bosons have a tendency to clump into the same quantum state, which underlies phenomena such as the laser, Bose–Einstein condensation, and superfluidity. Fermions, on the other hand, are forbidden from sharing quantum states, giving rise to systems such as the Fermi gas. This is known as the Pauli Exclusion Principle, and is responsible for much of chemistry, since the electrons in an atom (fermions) successively fill the many states within shells rather than all lying in the same lowest energy state.

The differences between the statistical behavior of fermions, bosons, and distinguishable particles can be illustrated using a system of two particles. The particles are designated A and B. Each particle can exist in two possible states, labelled |0⟩ and |1⟩, which have the same energy.

The composite system can evolve in time, interacting with a noisy environment. Because the |0⟩ and |1⟩ states are energetically equivalent, neither state is favored, so this process has the effect of randomizing the states. (This is discussed in the article on quantum entanglement.) After some time, the composite system will have an equal probability of occupying each of the states available to it. The particle states are then measured.

If A and B are distinguishable particles, then the composite system has four distinct states: |0⟩|0⟩, |1⟩|1⟩, |0⟩|1⟩, and |1⟩|0⟩. The probability of obtaining two particles in the |0⟩ state is 0.25; the probability of obtaining two particles in the |1⟩ state is 0.25; and the probability of obtaining one particle in the |0⟩ state and the other in the |1⟩ state is 0.5.

If A and B are identical bosons, then the composite system has only three distinct states: |0⟩|0⟩, |1⟩|1⟩, and $\frac{1}{\sqrt{2}}(|0\rangle|1\rangle + |1\rangle|0\rangle)$. When the experiment is performed, the probability of obtaining two particles in the |0⟩ state is now 0.33; the probability of obtaining two particles in the |1⟩ state is 0.33; and the probability of obtaining one particle in the |0⟩ state and the other in the |1⟩ state is 0.33. Note that the probability of finding particles in the same state is relatively larger than in the distinguishable case. This demonstrates the tendency of bosons to "clump."

If A and B are identical fermions, there is only one state available to the composite system: the totally antisymmetric state $\frac{1}{\sqrt{2}}(|0\rangle|1\rangle - |1\rangle|0\rangle)$. When the experiment is performed, one particle is always in the |0⟩ state and the other is in the |1⟩ state.

The results are summarized in Table 1:

  Particles         Both 0   Both 1   One 0 and one 1
  ----------------- -------- -------- -----------------
  Distinguishable   0.25     0.25     0.5
  Bosons            0.33     0.33     0.33
  Fermions          0        0        1

  : Table 1: Statistics of two particles

As can be seen, even a system of two particles exhibits different statistical behaviors between distinguishable particles, bosons, and fermions. In the articles on Fermi–Dirac statistics and Bose–Einstein statistics, these principles are extended to large number of particles, with qualitatively similar results.


The homotopy class

To understand why particle statistics work the way that they do, note first that particles are point-localized excitations and that particles that are spacelike separated do not interact. In a flat _d_-dimensional space _M_, at any given time, the configuration of two identical particles can be specified as an element of _M_ × _M_. If there is no overlap between the particles, so that they do not interact directly, then their locations must belong to the space the subspace with coincident points removed. The element describes the configuration with particle I at x and particle II at y, while describes the interchanged configuration. With identical particles, the state described by ought to be indistinguishable from the state described by . Now consider the homotopy class of continuous paths from to , within the space . If _M_ is R^(_d_) where , then this homotopy class only has one element. If _M_ is R², then this homotopy class has countably many elements (i.e. a counterclockwise interchange by half a turn, a counterclockwise interchange by one and a half turns, two and a half turns, etc., a clockwise interchange by half a turn, etc.). In particular, a counterclockwise interchange by half a turn is _not_ homotopic to a clockwise interchange by half a turn. Lastly, if _M_ is R, then this homotopy class is empty.

Suppose first that . The universal covering space of which is none other than itself, only has two points which are physically indistinguishable from , namely itself and . So, the only permissible interchange is to swap both particles. This interchange is an involution, so its only effect is to multiply the phase by a square root of 1. If the root is +1, then the points have Bose statistics, and if the root is −1, the points have Fermi statistics.

In the case _M_ = R², the universal covering space of has infinitely many points that are physically indistinguishable from . This is described by the infinite cyclic group generated by making a counterclockwise half-turn interchange. Unlike the previous case, performing this interchange twice in a row does not recover the original state; so such an interchange can generically result in a multiplication by exp(_iθ_) for any real _θ_ (by unitarity, the absolute value of the multiplication must be 1). This is called anyonic statistics. In fact, even with two _distinguishable_ particles, even though is now physically distinguishable from , the universal covering space still contains infinitely many points which are physically indistinguishable from the original point, now generated by a counterclockwise rotation by one full turn. This generator, then, results in a multiplication by exp(_iφ_). This phase factor here is called the mutual statistics.

Finally, in the case _M_ = R, the space is not connected, so even if particle I and particle II are identical, they can still be distinguished via labels such as "the particle on the left" and "the particle on the right". There is no interchange symmetry here.


See also

-   Quasi-set theory
-   DeBroglie hypothesis


Footnotes


References

-


External links

-   Exchange of Identical and Possibly Indistinguishable Particles by John S. Denker
-   Identity and Individuality in Quantum Theory (Stanford Encyclopedia of Philosophy)
-   Many-Electron States in E. Pavarini, E. Koch, and U. Schollwöck: Emergent Phenomena in Correlated Matter, Jülich 2013,

Category:Particle statistics Category:Pauli exclusion principle Category:Probabilistic arguments

[1] http://www.tcm.phy.cam.ac.uk/~pdh1001/thesis/node14.html

[2]

[3]

[4]