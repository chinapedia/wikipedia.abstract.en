of classical mechanics (A), and according to the Schrödinger equation of quantum mechanics (B–F). In (B–F), the horizontal axis is position, and the vertical axis is the real part (blue) and imaginary part (red) of the wavefunction. The states (B,C,D) are energy eigenstates, but (E,F) are not.]]

In quantum mechanics, the PARTICLE IN A BOX model (also known as the INFINITE POTENTIAL WELL or the INFINITE SQUARE WELL) describes a particle free to move in a small space surrounded by impenetrable barriers. The model is mainly used as a hypothetical example to illustrate the differences between classical and quantum systems. In classical systems, for example, a particle trapped inside a large box can move at any speed within the box and it is no more likely to be found at one position than another. However, when the well becomes very narrow (on the scale of a few nanometers), quantum effects become important. The particle may only occupy certain positive energy levels. Likewise, it can never have zero energy, meaning that the particle can never "sit still". Additionally, it is more likely to be found at certain positions than at others, depending on its energy level. The particle may never be detected at certain positions, known as spatial nodes.

The particle in a box model is one of the very few problems in quantum mechanics which can be solved analytically, without approximations. Due to its simplicity, the model allows insight into quantum effects without the need for complicated mathematics. It serves as a simple illustration of how energy quantizations (energy levels), which are found in more complicated quantum systems such as atoms and molecules, come about. It is one of the first quantum mechanics problems taught in undergraduate physics courses, and it is commonly used as an approximation for more complicated quantum systems.


One-dimensional solution

The simplest form of the particle in a box model considers a one-dimensional system. Here, the particle may only move backwards and forwards along a straight line with impenetrable barriers at either end.[1] The walls of a one-dimensional box may be visualised as regions of space with an infinitely large potential energy. Conversely, the interior of the box has a constant, zero potential energy.[2] This means that no forces act upon the particle inside the box and it can move freely in that region. However, infinitely large forces repel the particle if it touches the walls of the box, preventing it from escaping. The potential energy in this model is given as

$$V(x) =
\begin{cases}
0, & x_c-\tfrac{L}{2} < x <x_c+\tfrac{L}{2},\\
\infty, & \text{otherwise,}
\end{cases},$$
where _L_ is the length of the box, _x_(c)_ is the location of the center of the box and _x_ is the position of the particle within the box. Simple cases include the centered box (''x_(c) = 0 _) and the shifted box (_x_(c) = L/2 '').

Position wave function

In quantum mechanics, the wavefunction gives the most fundamental description of the behavior of a particle; the measurable properties of the particle (such as its position, momentum and energy) may all be derived from the wavefunction.[3] The wavefunction ψ(x, t) can be found by solving the Schrödinger equation for the system

$$i\hbar\frac{\partial}{\partial t}\psi(x,t) = -\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2}\psi(x,t) +V(x)\psi(x,t),$$

where ℏ is the reduced Planck constant, m is the mass of the particle, i is the imaginary unit and t is time.

Inside the box, no forces act upon the particle, which means that the part of the wavefunction inside the box oscillates through space and time with the same form as a free particle:[4][5] where A and B are arbitrary complex numbers. The frequency of the oscillations through space and time is given by the wavenumber k and the angular frequency ω respectively. These are both related to the total energy of the particle by the expression

$$E = \hbar\omega = \frac{\hbar^2 k^2}{2m},$$

which is known as the dispersion relation for a free particle.[6] Here one must notice that now, since the particle is not entirely free but under the influence of a potential (the potential _V_ described above), the energy of the particle given above is not the same thing as $\frac{p^2}{2m}$ where _p_ is the momentum of the particle, and thus the wavenumber _k_ above actually describes the energy states of the particle, not the momentum states (i.e. it turns out that the momentum of the particle is not given by p = ℏk). In this sense, it is quite dangerous to call the number _k_ a wavenumber, since it is not related to momentum like "wavenumber" usually is. The rationale for calling _k_ the wavenumber is that it enumerates the number of crests that the wavefunction has inside the box, and in this sense it is a wavenumber. This discrepancy can be seen more clearly below, when we find out that the energy spectrum of the particle is discrete (only discrete values of energy are allowed) but the momentum spectrum is continuous (momentum can vary continuously) and in particular, the relation $E = \frac{p^2}{2m}$ for the energy and momentum of the particle does not hold. As said above, the reason this relation between energy and momentum does not hold is that the particle is not free, but there is a potential _V_ in the system, and the energy of the particle is E = T + V, where _T_ is the kinetic and _V_ the potential energy.

The size (or amplitude) of the wavefunction at a given position is related to the probability of finding a particle there by P(x, t) = |ψ(x, t)|². The wavefunction must therefore vanish everywhere beyond the edges of the box.[7][8] Also, the amplitude of the wavefunction may not "jump" abruptly from one point to the next.[9] These two conditions are only satisfied by wavefunctions with the form

$$\psi_n(x,t) =
\begin{cases}
A \sin\left(k_n \left(x-x_c+\tfrac{L}{2}\right)\right)\mathrm{e}^{-i\omega_n t}, & x_c-\tfrac{L}{2} < x < x_c+\tfrac{L}{2},\\
0, & \text{otherwise,}
\end{cases}$$

where [10]

$$k_n=\frac{n \pi}{ L}$$
,

and

$$E_n=\hbar \omega_n=\frac{n^2 \pi^2 \hbar^2}{2 m L^2}$$
,

where _n_ is a positive integer (1,2,3,4...). For a shifted box (_x_(c) = L/2)_, the solution is particularly simple. The simplest solutions, k_(n) = 0 or A = 0 both yield the trivial wavefunction ψ(x) = 0, which describes a particle that does not exist anywhere in the system.[11] Negative values of n are neglected, since they give wavefunctions identical to the positive n solutions except for a physically unimportant sign change.[12] Here one sees that only a discrete set of energy values and wavenumbers _k_ are allowed for the particle. Usually in quantum mechanics it is also demanded that the derivative of the wavefunction in addition to the wavefunction itself be continuous; here this demand would lead to the only solution being the constant zero function, which is not what we desire, so we give up this demand (as this system with infinite potential can be regarded as a nonphysical abstract limiting case, we can treat it as such and "bend the rules"). Note that giving up this demand means that the wavefunction is not a differentiable function at the boundary of the box, and thus it can be said that the wavefunction does not solve the Schrödinger equation at the boundary points x = 0 and x = L (but does solve everywhere else).

Finally, the unknown constant A may be found by normalizing the wavefunction so that the total probability density of finding the particle in the system is 1. It follows that

$$\left| A \right| = \sqrt{\frac{2 }{L}}.$$

Thus, _A_ may be any complex number with absolute value ; these different values of _A_ yield the same physical state, so _A_ = can be selected to simplify.

It is expected that the _eigenvalues_, i.e., the energy E_(n) of the box should be the same regardless of its position in space, but ψ_(n)(x, t) changes. Notice that $x_c-\tfrac{L}{2}{L}$ represents a phase shift in the wave function, This phase shift has no effect when solving the Schrödinger equation, and therefore does not affect the _eigenvalue_.

Momentum wave function

The momentum wavefunction is proportional to the Fourier transform of the position wavefunction. With k = p/ℏ (note that the parameter describing the momentum wavefunction below is not exactly the special above, linked to the energy eigenvalues), the momentum wavefunction is given by

$$\phi_n(p,t)
=\frac{1}{\sqrt{2\pi\hbar}}\int_{-\infty}^\infty \psi_n(x,t)e^{-ikx}\,dx
=
\sqrt{\frac{L}{\pi \hbar}} \left(\frac{n\pi}{n\pi+k L}\right)\,\textrm{sinc}\left(\tfrac{1}{2}(n\pi-k L)\right)e^{-i k x_c}e^{i (n-1) \tfrac{\pi}{2}}e^{-i\omega_n t} ,$$
where sinc is the cardinal sine sinc function, sin_(x)/x_}}. For the centered box ( 0''}}), the solution is real and particularly simple, since the phase factor on the right reduces to unity. (With care, it can be written as an even function of .)

It can be seen that the momentum spectrum in this wave packet is continuous, and one may conclude that for the energy state described by the wavenumber , the momentum can, when measured, also attain _other values_ beyond p =  ± ℏk_(n).

Hence, it also appears that, since the energy is $E_n = \frac{\hbar^2 k_n^2}{2m}$ for the _n_th eigenstate, the relation $E = \frac{p^2}{2m}$ does not strictly hold for the measured momentum ; the energy eigenstate ψ_(n) is not a momentum eigenstate, and, in fact, not even a superposition of two momentum eigenstates, as one might be tempted to imagine from equation () above: peculiarly, it has no well-defined momentum before measurement!

Position and momentum probability distributions

In classical physics, the particle can be detected anywhere in the box with equal probability. In quantum mechanics, however, the probability density for finding a particle at a given position is derived from the wavefunction as P(x) = |ψ(x)|². For the particle in a box, the probability density for finding the particle at a given position depends upon its state, and is given by

$$P_n(x,t) =
\begin{cases}
\frac{2}{L} \sin^2(k_n (x-x_c+\tfrac{L}{2})), & x_c-L/2 < x < x_c+L/2,\\
0, & \text{otherwise,}
\end{cases}$$

Thus, for any value of _n_ greater than one, there are regions within the box for which P(x) = 0, indicating that _spatial nodes_ exist at which the particle cannot be found.

In quantum mechanics, the average, or expectation value of the position of a particle is given by

⟨_x_⟩ = ∫_( − ∞)^(∞)_x__P__(_n_)(_x_) _d__x_.

For the steady state particle in a box, it can be shown that the average position is always ⟨x⟩ = x_(c), regardless of the state of the particle. For a superposition of states, the expectation value of the position will change based on the cross term which is proportional to cos (ωt).

The variance in the position is a measure of the uncertainty in position of the particle:

$$\mathrm{Var}(x)=\int_{-\infty}^\infty (x-\langle x\rangle)^2 P_n(x)\,dx = \frac{L^2}{12}\left(1-\frac{6}{n^2\pi^2}\right)$$

The probability density for finding a particle with a given momentum is derived from the wavefunction as P(x) = |ϕ(x)|². As with position, the probability density for finding the particle at a given momentum depends upon its state, and is given by

$$P_n(p)=\frac{L}{\pi \hbar} \left(\frac{n\pi}{n\pi+k L}\right)^2\,\textrm{sinc}^2\left(\tfrac{1}{2}(n\pi-k L)\right)$$

where, again, k = p/ℏ. The expectation value for the momentum is then calculated to be zero, and the variance in the momentum is calculated to be:

$$\mathrm{Var}(p)=\left(\frac{\hbar n\pi}{L}\right)^2$$

The uncertainties in position and momentum (Δx and Δp) are defined as being equal to the square root of their respective variances, so that:

$$\Delta x \Delta p = \frac{\hbar}{2} \sqrt{\frac{n^2\pi^2}{3}-2}$$

This product increases with increasing _n_, having a minimum value for _n=1_. The value of this product for _n=1_ is about equal to 0.568 ℏ which obeys the Heisenberg uncertainty principle, which states that the product will be greater than or equal to ℏ/2

Another measure of uncertainty in position is the information entropy of the probability distribution _H__(x):[13]

$$H_x=\int_{-\infty}^\infty P_n(x) \log(P_n(x) x_0)\,dx =\log\left(\frac{2 L}{e \,x_0}\right)$$

where _x₀_ is an arbitrary reference length.

Another measure of uncertainty in momentum is the information entropy of the probability distribution _H_(p)_:

_H__(_p_)(_n_) = ∫_( − ∞)^(∞)_P__(_n_)(_p_)log (_P__(_n_)(_p_)_p_₀) _d__p_

$$\lim_{n\to\infty} H_p(n) = \log\left(\frac{4 \pi \hbar\, e^{2(1-\gamma)}}{ L\, p_0}\right)$$

where γ is Euler's constant. The quantum mechanical entropic uncertainty principle states that for x₀ p₀ = ℏ

_H__(_x_) + _H__(_p_)(_n_) ≥ log (_e_ _π_) ≈ 2.14473...
(nats)

For x₀ p₀ = ℏ, the sum of the position and momentum entropies yields:

_H__(_x_) + _H__(_p_)(∞) = log (8_π_ _e_^(1 − 2_γ_)) ≈ 3.06974...
(nats)

which satisfies the quantum entropic uncertainty principle.

Energy levels

The energies which correspond with each of the permitted wavenumbers may be written as[14]

$$E_n = \frac{n^2\hbar^2 \pi ^2}{2mL^2} = \frac{n^2 h^2}{8mL^2}$$
. The energy levels increase with n², meaning that high energy levels are separated from each other by a greater amount than low energy levels are. The lowest possible energy for the particle (its _zero-point energy_) is found in state 1, which is given by[15]

$$E_1 = \frac{\hbar^2\pi^2}{2mL^2}.$$
The particle, therefore, always has a positive energy. This contrasts with classical systems, where the particle can have zero energy by resting motionlessly. This can be explained in terms of the uncertainty principle, which states that the product of the uncertainties in the position and momentum of a particle is limited by

$$\Delta x\Delta p \geq \frac{\hbar}{2}$$
It can be shown that the uncertainty in the position of the particle is proportional to the width of the box.[16] Thus, the uncertainty in momentum is roughly inversely proportional to the width of the box.[17] The kinetic energy of a particle is given by E = p²/(2m), and hence the minimum kinetic energy of the particle in a box is inversely proportional to the mass and the square of the well width, in qualitative agreement with the calculation above.[18]


Higher-dimensional boxes

(Hyper)rectangular walls

If a particle is trapped in a two-dimensional box, it may freely move in the x and y-directions, between barriers separated by lengths L_(x) and L_(y) respectively. For a centered box, the position wave function may be written including the length of the box as ψ_(n)(x, t, L). Using a similar approach to that of the one-dimensional box, it can be shown that the wavefunctions and energies for a centered box are given respectively by

_ψ__(_n__(_x_), _n__(_y_)) = _ψ__(_n__(_x_))(_x_, _t_, _L__(_x_))_ψ__(_n__(_y_))(_y_, _t_, _L__(_y_))
,

$$E_{n_x,n_y} = \frac{\hbar^2 k_{n_x,n_y}^2}{2m}$$
,

where the two-dimensional wavevector is given by

$$\mathbf{k_{n_x,n_y}} = k_{n_x}\mathbf{\hat{x}} + k_{n_y}\mathbf{\hat{y}} = \frac{n_x \pi }{L_x} \mathbf{\hat{x}} + \frac{n_y \pi }{L_y} \mathbf{\hat{y}}$$
.

For a three dimensional box, the solutions are

_ψ__(_n__(_x_), _n__(_y_), _n__(_z_)) = _ψ__(_n__(_x_))(_x_, _t_, _L__(_x_))_ψ__(_n__(_y_))(_y_, _t_, _L__(_y_))_ψ__(_n__(_z_))(_z_, _t_, _L__(_z_))
,

$$E_{n_x,n_y,n_z} = \frac{\hbar^2 k_{n_x,n_y,n_z}^2}{2m}$$
,

where the three-dimensional wavevector is given by:

$$\mathbf{k_{n_x,n_y,n_z}} = k_{n_x}\mathbf{\hat{x}} + k_{n_y}\mathbf{\hat{y}} + k_{n_z}\mathbf{\hat{z}} = \frac{n_x \pi }{L_x} \mathbf{\hat{x}} + \frac{n_y \pi }{L_y} \mathbf{\hat{y}} + \frac{n_z \pi }{L_z} \mathbf{\hat{z}}$$
.

In general for an n-dimensional box, the solutions are

_ψ_ = ∏_(_i_)_ψ__(_n__(_i_))(_x__(_i_), _t_, _L__(_i_))

The 1-dimensional momentum wave functions may likewise be represented by ϕ_(n)(x, t, L_(x)) and the momentum wave function for an n-dimensional centered box is then:

_ϕ_ = ∏_(_i_)_ϕ__(_n__(_i_))(_k__(_i_), _t_, _L__(_i_))

An interesting feature of the above solutions is that when two or more of the lengths are the same (e.g. L_(x) = L_(y)), there are multiple wavefunctions corresponding to the same total energy. For example, the wavefunction with n_(x) = 2, n_(y) = 1 has the same energy as the wavefunction with n_(x) = 1, n_(y) = 2. This situation is called _degeneracy_ and for the case where exactly two degenerate wavefunctions have the same energy that energy level is said to be _doubly degenerate_. Degeneracy results from symmetry in the system. For the above case two of the lengths are equal so the system is symmetric with respect to a 90° rotation.

More complicated wall shapes

The wavefunction for a quantum-mechanical particle in a box whose walls have arbitrary shape is given by the Helmholtz equation subject to the boundary condition that the wavefunction vanishes at the walls. These systems are studied in the field of quantum chaos for wall shapes whose corresponding dynamical billiard tables are non-integrable.


Applications

Because of its mathematical simplicity, the particle in a box model is used to find approximate solutions for more complex physical systems in which a particle is trapped in a narrow region of low electric potential between two high potential barriers. These quantum well systems are particularly important in optoelectronics, and are used in devices such as the quantum well laser, the quantum well infrared photodetector and the quantum-confined Stark effect modulator. It is also used to model a lattice in the Kronig-Penny model and for a finite metal with the free electron approximation.

Conjugated polyenes

Conjugated polyene systems can be modeled using particle in a box.[19] The conjugated system of electrons can be modeled as a one dimensional box with length equal to the total bond distance from one terminus of the polyene to the other. In this case each pair of electrons in each π bond corresponds to one energy level. The energy difference between two energy levels, n_(f) and n_(i) is:

$\Delta E =  \frac{(n_f^2 - n_i^2) h^2}{8mL^2}$

The difference between the ground state energy, n, and the first excited state, n+1, corresponds to the energy required to excite the system. This energy has a specific wavelength, and therefore color of light, related by:

$\lambda = \frac{hc}{\Delta E}$

A common example of this phenomenon is in β-carotene.[20] β-carotene (C₄₀H₅₆)[21] is a conjugated polyene with an orange color and a molecular length of approximately 3.8 nm (though its chain length is only approximately 2.4 nm).[22] Due to β-carotene's high level of conjugation, electrons are dispersed throughout the length of the molecule, allowing one to model it as a one-dimensional particle in a box. β-carotene has 11 carbon-carbon double bonds in conjugation;[23] each of those double bonds contains two π-electrons, therefore β-carotene has 22 π-electrons. With two electrons per energy level, β-carotene can be treated as a particle in a box at energy level _n_=11.[24] Therefore, the minimum energy needed to excite an electron to the next energy level can be calculated, _n_=12, as follows[25] (recalling that the mass of an electron is 9.109 × 10^(−31) kg[26]):

$\Delta E = \frac{(n_f^2 - n_i^2) h^2}{8 m L^2}$

$= \frac{(12^2 - 11^2) h^2}{8 m L^2}$

 = 2.3658 × 10^( − 19) J

Using the previous relation of wavelength to energy, recalling both Planck's constant _h_ and the speed of light _c_:

$\lambda = \tfrac{ hc }{ \Delta E }$

 = 0.00000084 m = 840 nm

This indicates that β-carotene primarily absorbs light in the infrared spectrum, therefore it would appear white to a human eye. However the observed wavelength is 450 nm,[27] indicating that the particle in a box is not a perfect model for this system.

Quantum well laser

The particle in a box model can be applied to quantum well lasers, which are laser diodes consisting of one semiconductor “well” material sandwiched between two other semiconductor layers of different material . Because the layers of this sandwich are very thin (the middle layer is typically about 100 Å thick), quantum confinement effects can be observed.[28] The idea that quantum effects could be harnessed to create better laser diodes originated in the 1970s. The quantum well laser was patented in 1976 by R. Dingle and C. H. Henry[29]

Specifically, the quantum well’s behavior can be represented by the particle in a finite well model. Two boundary conditions must be selected. The first is that the wave function must be continuous. Often, the second boundary condition is chosen to be the derivative of the wave function must be continuous across the boundary, but in the case of the quantum well the masses are different on either side of the boundary. Instead, the second boundary condition is chosen to conserve particle flux as(1/m)dϕ/dz, which is consistent with experiment. The solution to the finite well particle in a box must be solved numerically, resulting in wave functions that are sine functions inside the quantum well and exponentially decaying functions in the barriers.[30] This quantization of the energy levels of the electrons allows a quantum well laser to emit light more efficiently than conventional semiconductor lasers.

Due to their small size, quantum dots do not showcase the bulk properties of the specified semi-conductor but rather show quantised energy states.[31] This effect is known as the quantum confinement and has led to numerous applications of quantum dots such as the quantum well laser.[32]

Researchers at Princeton University have recently built a quantum well laser which is no bigger than a grain of rice.[33] The laser is powered by a single electron which passes through two quantum dots; a double quantum dot. The electron moves from a state of higher energy, to a state of lower energy whilst emitting photons in the microwave region. These photons bounce off mirrors to create a beam of light; the laser.[34]

The quantum well laser is heavily based on the interaction between light and electrons. This relationship is a key component in quantum mechanical theories which include the De Broglie Wavelength and Particle in a box. The double quantum dot allows scientists to gain full control over the movement of an electron which consequently results in the production of a laser beam.[35]

Quantum dots

Quantum dots are extremely small semiconductors (on the scale of nanometers).[36] They display quantum confinement in that the electrons cannot escape the “dot”, thus allowing particle-in-a-box approximations to be applied.[37] Their behavior can be described by three-dimensional particle-in-a-box energy quantization equations.[38]

The energy gap of a quantum dot is the energy gap between its valence and conduction bands. This energy gap ΔE(r) is equal to the band gap of the bulk material E_(gap) plus the energy equation derived from particle-in-a-box, which gives the energy for electrons and holes.[39] This can be seen in the following equation, where m_(e)^(*) and m_(h)^(*) are the effective masses of the electron and hole, r is radius of the dot, and h is Planck's constant:[40]

$\Delta E(r)=E_{\text{gap}}+\left ( \frac{h^2}{8r^2} \right ) \left( \frac{1}{m^*_e}+\frac{1}{m^*_h} \right)$

Hence, the energy gap of the quantum dot is inversely proportional to the square of the “length of the box,” i.e. the radius of the quantum dot.[41]

Manipulation of the band gap allows for the absorption and emission of specific wavelengths of light, as energy is inversely proportional to wavelength.[42] The smaller the quantum dot, the larger the band gap and thus the shorter the wavelength absorbed.[43][44]

Different semiconducting materials are used to synthesize quantum dots of different sizes and therefore emit different wavelengths of light.[45] Materials that normally emit light in the visible region are often used and their sizes are fine-tuned so that certain colors are emitted.[46] Typical substances used to synthesize quantum dots are cadmium (Cd) and selenium (Se).[47][48] For example, when the electrons of two nanometer CdSe quantum dots relax after excitation, blue light is emitted. Similarly, red light is emitted in four nanometer CdSe quantum dots.[49][50]

Quantum dots have a variety of functions including but not limited to fluorescent dyes, transistors, LEDs, solar cells, and medical imaging via optical probes.[51][52]

One function of quantum dots is their use in lymph node mapping, which is feasible due to their unique ability to emit light in the near infrared (NIR) region. Lymph node mapping allows surgeons to track if and where cancerous cells exist.[53]

Quantum dots are useful for these functions due to their emission of brighter light, excitation by a wide variety of wavelengths, and higher resistance to light than other substances.[54][55]


Relativistic Effects

The probability density does not go to zero at the nodes if relativistic effects are taken into account via Dirac equation.[56]


See also

-   History of Quantum Mechanics
-   Finite potential well
-   Delta function potential
-   Gas in a box
-   Particle in a ring
-   Particle in a spherically symmetric potential
-   Quantum harmonic oscillator
-   Semicircle potential well
-   Configuration integral (statistical mechanics)
-   Configuration integral (statistical mechanics), 2008. this wiki site is down; see this article in the web archive on 2012 April 28.


References


Bibliography

-   -   -


External links

Category:Quantum models

[1] Davies, p.4

[2] Actually, any constant, finite potential V₀ can be specified within the box. This merely shifts the energies of the states by V₀.

[3] Davies, p. 1

[4]

[5] Bransden and Joachain, p. 157

[6]

[7]

[8]

[9]

[10] Davies p. 5

[11] Bransden and Joachain, p.158

[12]

[13]

[14]

[15] Bransden and Joachain, p. 159

[16] Davies, p. 15

[17]

[18]

[19] Todd Wimpfheimer, A Particle in a Box Laboratory Experiment Using Everyday Compounds, Journal of Laboratory Chemical Education, Vol. 3 No. 2, 2015, pp. 19-21. .

[20]

[21]  C40H56 - PubChem|last=Pubchem|website=pubchem.ncbi.nlm.nih.gov|access-date=2016-11-10}}

[22]

[23]

[24]

[25]

[26] P.J. Mohr, B.N. Taylor, and D.B. Newell, "The 2014 CODATA Recommended Values of the Fundamental Physical Constants". This database was developed by J. Baker, M. Douma, and S. Kotochigova. Available: 1. National Institute of Standards and Technology, Gaithersburg, MD 20899.

[27] β-Carotene http://www.sigmaaldrich.com/catalog/product/aldrich/855553?lang=en®ion=us (accessed Nov 8, 2016).

[28]

[29] U.S. Patent #3,982,207, issued September 21, 1976, Inventors R. Dingle and C. H. Henry ,"Quantum Effects in Heterostructure Lasers", filed March 7, 1975.

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]