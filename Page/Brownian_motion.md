adatom on a ¹¹¹Ag surface [1] ]] BROWNIAN MOTION or PEDESIS (from "leaping" ) is the random motion of particles suspended in a fluid (a liquid or a gas) resulting from their collision with the fast-moving molecules in the fluid.[2]

This pattern of motion typically alternates random fluctuations in a particle's position inside a fluid sub-domain with a relocation to another sub-domain. Each relocation is followed by more fluctuations within the new closed volume. This pattern describes a fluid at thermal equilibrium, defined by a given temperature. Within such a fluid, there exists no preferential direction of flow as in transport phenomena. More specifically, the fluid's overall linear and angular momenta remain null over time. It is important also to note that the kinetic energies of the molecular Brownian motions, together with those of molecular rotations and vibrations, sum up to the caloric component of a fluid's internal energy.

This motion is named after the botanist Robert Brown, who first described the phenomenon in 1827, while looking through a microscope at pollen of the plant _Clarkia pulchella_ immersed in water. In 1905, almost eighty years later, theoretical physicist Albert Einstein published a paper where he modeled the motion of the pollen as being moved by individual water molecules, making one of his first big contributions to science.[3] This explanation of Brownian motion served as convincing evidence that atoms and molecules exist and was further verified experimentally by Jean Perrin in 1908. Perrin was awarded the Nobel Prize in Physics in 1926 "for his work on the discontinuous structure of matter".[4] The direction of the force of atomic bombardment is constantly changing, and at different times the particle is hit more on one side than another, leading to the seemingly random nature of the motion.

The many-body interactions that yield the Brownian pattern cannot be solved by a model accounting for every involved molecule. In consequence, only probabilistic models applied to molecular populations can be employed to describe it. Two such models of the statistical mechanics, due to Einstein and Smoluchowski are presented below. Another, pure probabilistic class of models is the class of the stochastic process models. There exist both simpler and more complicated stochastic processes which in extreme ("taken to the limit") may describe the Brownian Motion (see random walk and Donsker's theorem).


History

The Roman philosopher Lucretius' scientific poem "On the Nature of Things" (c. 60 BC) has a remarkable description of Brownian motion of dust particles in verses 113–140 from Book II. He uses this as a proof of the existence of atoms: , _Les Atomes_, three tracings of the motion of colloidal particles of radius 0.53 µm, as seen under the microscope, are displayed. Successive positions every 30 seconds are joined by straight line segments (the mesh size is 3.2 µm).[5]]]

"Observe what happens when sunbeams are admitted into a building and shed light on its shadowy places. You will see a multitude of tiny particles mingling in a multitude of ways... their dancing is an actual indication of underlying movements of matter that are hidden from our sight... It originates with the atoms which move of themselves [i.e., spontaneously]. Then those small compound bodies that are least removed from the impetus of the atoms are set in motion by the impact of their invisible blows and in turn cannon against slightly larger bodies. So the movement mounts up from the atoms and gradually emerges to the level of our senses so that those bodies are in motion that we see in sunbeams, moved by blows that remain invisible."

Although the mingling motion of dust particles is caused largely by air currents, the glittering, tumbling motion of small dust particles is, indeed, caused chiefly by true Brownian dynamics.

While Jan Ingenhousz described the irregular motion of coal dust particles on the surface of alcohol in 1785, the discovery of this phenomenon is often credited to the botanist Robert Brown in 1827. Brown was studying pollen grains of the plant _Clarkia pulchella_ suspended in water under a microscope when he observed minute particles, ejected by the pollen grains, executing a jittery motion. By repeating the experiment with particles of inorganic matter he was able to rule out that the motion was life-related, although its origin was yet to be explained.

The first person to describe the mathematics behind Brownian motion was Thorvald N. Thiele in a paper on the method of least squares published in 1880. This was followed independently by Louis Bachelier in 1900 in his PhD thesis "The theory of speculation", in which he presented a stochastic analysis of the stock and option markets. The Brownian motion model of the stock market is often cited, but Benoit Mandelbrot rejected its applicability to stock price movements in part because these are discontinuous.[6]

Albert Einstein (in one of his 1905 papers) and Marian Smoluchowski (1906) brought the solution of the problem to the attention of physicists, and presented it as a way to indirectly confirm the existence of atoms and molecules. Their equations describing Brownian motion were subsequently verified by the experimental work of Jean Baptiste Perrin in 1908.


Statistical mechanics theories

Einstein's theory

There are two parts to Einstein's theory: the first part consists in the formulation of a diffusion equation for Brownian particles, in which the diffusion coefficient is related to the mean squared displacement of a Brownian particle, while the second part consists in relating the diffusion coefficient to measurable physical quantities.[7] In this way Einstein was able to determine the size of atoms, and how many atoms there are in a mole, or the molecular weight in grams, of a gas.[8] In accordance to Avogadro's law this volume is the same for all ideal gases, which is 22.414 liters at standard temperature and pressure. The number of atoms contained in this volume is referred to as the Avogadro number, and the determination of this number is tantamount to the knowledge of the mass of an atom since the latter is obtained by dividing the mass of a mole of the gas by the Avogadro constant.

, indicating that all the particles are located at the origin at time _t_ = 0, and for increasing times they become flatter and flatter until the distribution becomes uniform in the asymptotic time limit.]]

The first part of Einstein's argument was to determine how far a Brownian particle travels in a given time interval.[9] Classical mechanics is unable to determine this distance because of the enormous number of bombardments a Brownian particle will undergo, roughly of the order of 10¹⁴ collisions per second.[10] Thus Einstein was led to consider the collective motion of Brownian particles.

He regarded the increment of particle positions in time τ in a one dimensional (_x_) space (with the coordinates chosen so that the origin lies at the initial position of the particle) as a random variable (Δ) with some probability density function φ(Δ). Further, assuming conservation of particle number, he expanded the density (number of particles per unit volume) at time t + τ in a Taylor series,

$$\begin{align}
\rho(x,t) + \tau \frac{\partial\rho(x)}{\partial t} + \cdots = \rho(x, t+\tau) ={}& \int_{-\infty}^{+\infty} \rho(x - \Delta, t) \cdot \varphi(\Delta) \, \mathrm{d} \Delta = \mathbb{E}_\Delta[\rho(x, t + \tau)]
\\
={}& \rho(x, t) \cdot \int_{-\infty}^{+\infty} \varphi(\Delta) \, d \Delta -
 \frac{\partial\rho}{\partial x} \cdot \int_{-\infty}^{+\infty} \Delta \cdot \varphi(\Delta) \, \mathrm{d} \Delta
\\
&{}+
 \frac{\partial^2 \rho}{\partial x^2} \cdot \int_{-\infty}^{+\infty} \frac{\Delta^2}{2} \cdot \varphi(\Delta) \, \mathrm{d} \Delta + \cdots
\\
={}& \rho(x, t) \cdot 1 + 0 +
 \frac{\partial^2 \rho}{\partial x^2} \cdot \int_{-\infty}^{+\infty} \frac{\Delta^2}{2} \cdot \varphi(\Delta) \, \mathrm{d} \Delta + \cdots
\end{align}$$

where the second equality in the first line is by definition of φ. The integral in the first term is equal to one by the definition of probability, and the second and other even terms (i.e. first and other odd moments) vanish because of space symmetry. What is left gives rise to the following relation:

$$\frac{\partial\rho}{\partial t} = \frac{\partial^2 \rho}{\partial x^2} \cdot \int_{-\infty}^{+\infty} \frac{\Delta^2}{2\, \tau} \cdot \varphi(\Delta) \, \mathrm{d} \Delta + \text{higher-order even moments.}$$

Where the coefficient after the Laplacian, the second moment of probability of displacement Δ, is interpreted as mass diffusivity _D_:

$$D = \int_{-\infty}^{+\infty} \frac{\Delta^2}{2\, \tau} \cdot \varphi(\Delta) \, \mathrm{d} \Delta.$$

Then the density of Brownian particles _ρ_ at point _x_ at time _t_ satisfies the diffusion equation:

$$\frac{\partial\rho}{\partial t}=D\cdot \frac{\partial^2\rho}{\partial x^2},$$

Assuming that _N_ particles start from the origin at the initial time _t_ = 0, the diffusion equation has the solution

$$\rho(x,t)=\frac{N}{\sqrt{4\pi Dt}}e^{-\frac{x^2}{4Dt}}.$$

This expression (which is a normal distribution with the mean μ = 0 and variance σ² = 2Dt usually called Brownian motion B_(t)) allowed Einstein to calculate the moments directly. The first moment is seen to vanish, meaning that the Brownian particle is equally likely to move to the left as it is to move to the right. The second moment is, however, non-vanishing, being given by

$$\overline{x^2}=2\,D\,t.$$

This equation expresses the mean squared displacement in terms of the time elapsed and the diffusivity. From this expression Einstein argued that the displacement of a Brownian particle is not proportional to the elapsed time, but rather to its square root.[11] His argument is based on a conceptual switch from the "ensemble" of Brownian particles to the "single" Brownian particle: we can speak of the relative number of particles at a single instant just as well as of the time it takes a Brownian particle to reach a given point.[12]

The second part of Einstein's theory relates the diffusion constant to physically measurable quantities, such as the mean squared displacement of a particle in a given time interval. This result enables the experimental determination of Avogadro's number and therefore the size of molecules. Einstein analyzed a dynamic equilibrium being established between opposing forces. The beauty of his argument is that the final result does not depend upon which forces are involved in setting up the dynamic equilibrium.

In his original treatment, Einstein considered an osmotic pressure experiment, but the same conclusion can be reached in other ways.

Consider, for instance, particles suspended in a viscous fluid in a gravitational field. Gravity tends to make the particles settle, whereas diffusion acts to homogenize them, driving them into regions of smaller concentration. Under the action of gravity, a particle acquires a downward speed of _v_ = _μmg_, where _m_ is the mass of the particle, _g_ is the acceleration due to gravity, and _μ_ is the particle's mobility in the fluid. George Stokes had shown that the mobility for a spherical particle with radius _r_ is $\mu=\tfrac{1}{6\pi\eta r}$, where _η_ is the dynamic viscosity of the fluid. In a state of dynamic equilibrium, and under the hypothesis of isothermal fluid, the particles are distributed according to the barometric distribution

$$\rho=\rho_0e^{-\frac{mgh}{k_{\rm B}T}},$$

where _ρ_ − _ρ_₀ is the difference in density of particles separated by a height difference of _h_, _k__(B) is the Boltzmann constant (the ratio of the universal gas constant, _R_, to the Avogadro constant, _N_), and _T_ is the absolute temperature.

shows the tendency for granules to move to regions of lower concentration when affected by gravity.]] Dynamic equilibrium is established because the more that particles are pulled down by gravity, the greater the tendency for the particles to migrate to regions of lower concentration. The flux is given by Fick's law,

$$J=-D\frac{d\rho}{dh},$$

where _J_ = _ρv_. Introducing the formula for _ρ_, we find that

$$v=\frac{Dmg}{k_{\rm B}T}.$$

In a state of dynamical equilibrium, this speed must also be equal to _v_ = _μmg_. Notice that both expressions for _v_ are proportional to _mg_, reflecting that the derivation is independent of the type of forces considered. Similarly, one can derive an equivalent formula for identical charged particles of charge _q_ in a uniform electric field of magnitude _E_, where _mg_ is replaced with the electrostatic force _qE_. Equating these two expressions yields a formula for the diffusivity, independent of _mg_ or _qE_ or other such forces:

$$\frac{\overline{x^2}}{2t}=D=\mu k_{\rm B}T=\frac{\mu RT}{N_\text{A}}=\frac{RT}{6\pi\eta rN_\text{A}}.$$

Here the first equality follows from the first part of Einstein's theory, the third equality follows from the definition of Boltzmann's constant as _k__(B) = _R_ / _N_, and the fourth equality follows from Stokes's formula for the mobility. By measuring the mean squared displacement over a time interval along with the universal gas constant _R_, the temperature _T_, the viscosity _η_, and the particle radius _r_, the Avogadro constant _N_ can be determined.

The type of dynamical equilibrium proposed by Einstein was not new. It had been pointed out previously by J. J. Thomson[13] in his series of lectures at Yale University in May 1903 that the dynamic equilibrium between the velocity generated by a concentration gradient given by Fick's law and the velocity due to the variation of the partial pressure caused when ions are set in motion "gives us a method of determining Avogadro's Constant which is independent of any hypothesis as to the shape or size of molecules, or of the way in which they act upon each other".[14]

An identical expression to Einstein's formula for the diffusion coefficient was also found by Walther Nernst in 1888[15] in which he expressed the diffusion coefficient as the ratio of the osmotic pressure to the ratio of the frictional force and the velocity to which it gives rise. The former was equated to the law of van 't Hoff while the latter was given by Stokes's law. He writes k′ = p₀/k for the diffusion coefficient _k′_, where p₀ is the osmotic pressure and _k_ is the ratio of the frictional force to the molecular viscosity which he assumes is given by Stokes's formula for the viscosity. Introducing the ideal gas law per unit volume for the osmotic pressure, the formula becomes identical to that of Einstein's.[16] The use of Stokes's law in Nernst's case, as well as in Einstein and Smoluchowski, is not strictly applicable since it does not apply to the case where the radius of the sphere is small in comparison with the mean free path.[17]

At first, the predictions of Einstein's formula were seemingly refuted by a series of experiments by Svedberg in 1906 and 1907, which gave displacements of the particles as 4 to 6 times the predicted value, and by Henri in 1908 who found displacements 3 times greater than Einstein's formula predicted.[18] But Einstein's predictions were finally confirmed in a series of experiments carried out by Chaudesaigues in 1908 and Perrin in 1909. The confirmation of Einstein's theory constituted empirical progress for the kinetic theory of heat. In essence, Einstein showed that the motion can be predicted directly from the kinetic model of thermal equilibrium. The importance of the theory lay in the fact that it confirmed the kinetic theory's account of the second law of thermodynamics as being an essentially statistical law.[19]

Smoluchowski model

Smoluchowski's theory of Brownian motion[20] starts from the same premise as that of Einstein and derives the same probability distribution _ρ_(_x_, _t_) for the displacement of a Brownian particle along the _x_ in time _t_. He therefore gets the same expression for the mean squared displacement: $\overline{(\Delta x)^2}$. However, when he relates it to a particle of mass _m_ moving at a velocity u which is the result of a frictional force governed by Stokes's law, he finds

$$\overline{(\Delta x)^2}=2Dt=t\frac{32}{81}\frac{u^2}{\pi\mu a}=t\frac{64}{27}\frac{\frac{1}{2}u^2}{3\pi\mu a},$$
where _μ_ is the viscosity coefficient, and a is the radius of the particle. Associating the kinetic energy u²/2 with the thermal energy _RT_/_N_, the expression for the mean squared displacement is 64/27 times that found by Einstein. The fraction 27/64 was commented on by Arnold Sommerfeld in his necrology on Smoluchowski: "The numerical coefficient of Einstein, which differs from Smoluchowski by 27/64 can only be put in doubt."[21]

Smoluchowski[22] attempts to answer the question of why a Brownian particle should be displaced by bombardments of smaller particles when the probabilities for striking it in the forward and rear directions are equal. If the probability of _m_ gains and _n_ − _m_ losses follows a binomial distribution,

$$P_{m,n}=\binom{n}{m} 2^{-n},$$

with equal _a priori_ probabilities of 1/2, the mean total gain is

$$\overline{2m-n}=\sum_{m=\frac{n}{2}}^n (2m-n)P_{m,n}=\frac{n n!}{2^n \left [ \left (\frac{n}{2} \right )! \right ]^2}.$$

If _n_ is large enough so that Stirling's approximation can be used in the form

$$n!\approx\left(\frac{n}{e}\right)^n\sqrt{2\pi n},$$
then the expected total gain will be

$$\overline{2m-n}\approx\sqrt{\frac{2n}{\pi}},$$
showing that it increases as the square root of the total population.

Suppose that a Brownian particle of mass _M_ is surrounded by lighter particles of mass _m_ which are traveling at a speed _u_. Then, reasons Smoluchowski, in any collision between a surrounding and Brownian particles, the velocity transmitted to the latter will be _mu_/_M_. This ratio is of the order of 10^(−7) cm/s. But we also have to take into consideration that in a gas there will be more than 10¹⁶ collisions in a second, and even greater in a liquid where we expect that there will be 10²⁰ collision in one second. Some of these collisions will tend to accelerate the Brownian particle; others will tend to decelerate it. If there is a mean excess of one kind of collision or the other to be of the order of 10⁸ to 10¹⁰ collisions in one second, then velocity of the Brownian particle may be anywhere between 10 and 1000 cm/s. Thus, even though there are equal probabilities for forward and backward collisions there will be a net tendency to keep the Brownian particle in motion, just as the ballot theorem predicts.

These orders of magnitude are not exact because they don't take into consideration the velocity of the Brownian particle, _U_, which depends on the collisions that tend to accelerate and decelerate it. The larger _U_ is, the greater will be the collisions that will retard it so that the velocity of a Brownian particle can never increase without limit. Could such a process occur, it would be tantamount to a perpetual motion of the second type. And since equipartition of energy applies, the kinetic energy of the Brownian particle, MU²/2, will be equal, on the average, to the kinetic energy of the surrounding fluid particle, mu²/2.

In 1906 Smoluchowski published a one-dimensional model to describe a particle undergoing Brownian motion.[23] The model assumes collisions with _M_ ≫ _m_ where _M_ is the test particle's mass and _m_ the mass of one of the individual particles composing the fluid. It is assumed that the particle collisions are confined to one dimension and that it is equally probable for the test particle to be hit from the left as from the right. It is also assumed that every collision always imparts the same magnitude of Δ_V_. If _N__(R) is the number of collisions from the right and _N__(L) the number of collisions from the left then after _N_ collisions the particle's velocity will have changed by Δ_V_(2_N__(R) − _N_). The multiplicity is then simply given by:

$$\binom{N}{N_{\rm R}} = \frac{N!}{N_{\rm R}!(N-N_{\rm R})!}$$

and the total number of possible states is given by 2^(_N_). Therefore, the probability of the particle being hit from the right _N_(R)_ times is:

$$P_N(N_{\rm R})=\frac{N!}{2^NN_{\rm R}!(N-N_{\rm R})!}$$

As a result of its simplicity, Smoluchowski's 1D model can only qualitatively describe Brownian motion. For a realistic particle undergoing Brownian motion in a fluid, many of the assumptions cannot be made. For example, the assumption that on average occurs an equal number of collisions from the right as from the left falls apart once the particle is in motion. Also, there would be a distribution of different possible Δ_V_s instead of always just one in a realistic situation.

Other physics models using partial differential equations

The diffusion equation yields an approximation of the time evolution of the probability density function associated to the position of the particle going under a Brownian movement under the physical definition. The approximation is valid on short timescales.

The time evolution of the position of the Brownian particle itself is best described using Langevin equation, an equation which involves a random force field representing the effect of the thermal fluctuations of the solvent on the particle.

The displacement of a particle undergoing Brownian motion is obtained by solving the diffusion equation under appropriate boundary conditions and finding the rms of the solution. This shows that the displacement varies as the square root of the time (not linearly), which explains why previous experimental results concerning the velocity of Brownian particles gave nonsensical results. A linear time dependence was incorrectly assumed.

At very short time scales, however, the motion of a particle is dominated by its inertia and its displacement will be linearly dependent on time: Δ_x_ = _v_Δ_t_. So the instantaneous velocity of the Brownian motion can be measured as _v_ = Δ_x_/Δ_t_, when Δ_t_ << _τ_, where _τ_ is the momentum relaxation time. In 2010, the instantaneous velocity of a Brownian particle (a glass microsphere trapped in air with optical tweezers) was measured successfully.[24] The velocity data verified the Maxwell–Boltzmann velocity distribution, and the equipartition theorem for a Brownian particle.

Astrophysics: star motion within galaxies

In stellar dynamics, a massive body (star, black hole, etc.) can experience Brownian motion as it responds to gravitational forces from surrounding stars.[25] The rms velocity _V_ of the massive object, of mass _M_, is related to the rms velocity v_(⋆) of the background stars by

_M__V_² ≈ _m__v__(⋆)²
where m ≪ M is the mass of the background stars. The gravitational force from the massive object causes nearby stars to move faster than they otherwise would, increasing both v_(⋆) and _V_.[26] The Brownian velocity of Sgr A*, the supermassive black hole at the center of the Milky Way galaxy, is predicted from this formula to be less than 1 km _s_^(−1).[27]


Mathematics

on a torus. In the scaling limit, random walk approaches the Wiener process according to Donsker's theorem.]] In mathematics, Brownian motion is described by the WIENER PROCESS; a continuous-time stochastic process named in honor of Norbert Wiener. It is one of the best known Lévy processes (càdlàg stochastic processes with stationary independent increments) and occurs frequently in pure and applied mathematics, economics and physics.

The Wiener process _W_(t)_ is characterized by four facts:

1.  _W_₀ = 0
2.  _W_(t)_ is almost surely continuous
3.  _W_(t)_ has independent increments
4.  W_(t) − W_(s) ∼ 𝒩(0, t − s) (for 0 ≤ s ≤ t).

𝒩(μ, σ²) denotes the normal distribution with expected value _μ_ and variance _σ_². The condition that it has independent increments means that if 0 ≤ s₁ < t₁ ≤ s₂ < t₂ then W_(t₁) − W_(s₁) and W_(t₂) − W_(s₂) are independent random variables.

An alternative characterisation of the Wiener process is the so-called _Lévy characterisation_ that says that the Wiener process is an almost surely continuous martingale with _W_₀ = 0 and quadratic variation [W_(t), W_(t)] = t.

A third characterisation is that the Wiener process has a spectral representation as a sine series whose coefficients are independent 𝒩(0, 1) random variables. This representation can be obtained using the Karhunen–Loève theorem.

The Wiener process can be constructed as the scaling limit of a random walk, or other discrete-time stochastic processes with stationary independent increments. This is known as Donsker's theorem. Like the random walk, the Wiener process is recurrent in one or two dimensions (meaning that it returns almost surely to any fixed neighborhood of the origin infinitely often) whereas it is not recurrent in dimensions three and higher. Unlike the random walk, it is scale invariant.

The time evolution of the position of the Brownian particle itself can be described approximately by a Langevin equation, an equation which involves a random force field representing the effect of the thermal fluctuations of the solvent on the Brownian particle. On long timescales, the mathematical Brownian motion is well described by a Langevin equation. On small timescales, inertial effects are prevalent in the Langevin equation. However the mathematical _Brownian motion_ is exempt of such inertial effects. Note that inertial effects have to be considered in the Langevin equation, otherwise the equation becomes singular. so that simply removing the inertia term from this equation would not yield an exact description, but rather a singular behavior in which the particle doesn't move at all.

Statistics

The Brownian motion can be modeled by a random walk.[28] Random walks in porous media or fractals are anomalous.[29]

In the general case, Brownian motion is a non-Markov random process and described by stochastic integral equations.[30]

Lévy characterisation

The French mathematician Paul Lévy proved the following theorem, which gives a necessary and sufficient condition for a continuous R^(_n_)-valued stochastic process _X_ to actually be _n_-dimensional Brownian motion. Hence, Lévy's condition can actually be used as an alternative definition of Brownian motion.

Let _X_ = (_X_₁, ..., _X__(_n_)) be a continuous stochastic process on a probability space (Ω, Σ, P) taking values in R^(_n_). Then the following are equivalent:

1.  _X_ is a Brownian motion with respect to P, i.e., the law of _X_ with respect to P is the same as the law of an _n_-dimensional Brownian motion, i.e., the push-forward measure _X__(∗)(P) is classical Wiener measure on _C_₀([0, +∞); R^(_n_)).
2.  both
    1.  _X_ is a martingale with respect to P (and its own natural filtration); and
    2.  for all 1 ≤ _i_, _j_ ≤ _n_, _X__(_i_)(_t_)_X__(_j_)(_t_) −_δ__(_ij_)_t_ is a martingale with respect to P (and its own natural filtration), where _δ__(_ij_) denotes the Kronecker delta.

Spectral content

The spectral content of a stochastic process X_(t)can be found from the power spectral density, formally defined as

$S(\omega)=\lim_{T\to\infty}\frac{1}{T}\mathbb{E}\left\{\left|\int^T_0
e^{i \omega t}X_t dt\right|^2\right\}$,

where 𝔼 stands for the expected value. The power spectral density of Brownian motion is found to be [31]

$S_{BM}(\omega)=\frac{4 D}{\omega^2}$.

where D is the diffusion coefficient of X_(t). For naturally occurring signals, the spectral content can be found from the power spectral density of a single realization, with finite available time, i.e.,

$S^{(1)}(\omega,T)=\frac{1}{T}\left|\int^T_0 e^{i \omega t}X_t dt\right|^2$,

which for an individual realization of a Brownian motion trajectory,[32] it is found to have expected value μ_(BM)(ω, T)

$\mu_{BM}(\omega,T)=\frac{4 D}{\omega^2}\left[1-\frac{\sin\left(\omega T\right)}{\omega T}\right]$

and variance σ_(BM)²(ω, T)[33]

$\sigma_S^2(f,T)=\mathbb{E}\left\{\left(S^{(j)}_T(f)\right)^2\right\}-\mu_S^2
(f,T)
=\frac{20 D^2}{f^4}\Bigg[1-\Big(6-\cos\left(f T\right)\Big)\frac{2\sin\left(
fT\right)}{5fT}
+\frac{\Big(17-\cos\left(2fT\right)-16\cos\left(f T\right)\Big)}{10 f^2 T^2}
\Bigg]$.

For sufficiently long realization times, the expected value of the power spectrum of a single trajectory converges to the formally defined power spectral density S(ω), but its coefficient of variation $\gamma=\sqrt{\sigma^2}/\mu$ tends to $\sqrt{5}/2$. This implies the distribution of S⁽¹⁾(ω, T)is broad even in the infinite time limit.

Riemannian manifold

The infinitesimal generator (and hence characteristic operator) of a Brownian motion on R^(_n_) is easily calculated to be ½Δ, where Δ denotes the Laplace operator. In image processing and computer vision, the Laplacian operator has been used for various tasks such as blob and edge detection. This observation is useful in defining Brownian motion on an _m_-dimensional Riemannian manifold (_M_, _g_): a BROWNIAN MOTION ON _M_ is defined to be a diffusion on _M_ whose characteristic operator 𝒜 in local coordinates _x__(_i_), 1 ≤ _i_ ≤ _m_, is given by ½Δ_(LB), where Δ_(LB) is the Laplace–Beltrami operator given in local coordinates by

$$\Delta_{\mathrm{LB}}=\frac{1}{\sqrt{\det(g)}} \sum_{i=1}^m \frac{\partial}{\partial x_i} \left(\sqrt{\det(g)} \sum_{j=1}^m g^{ij} \frac{\partial}{\partial x_j} \right),$$

where [_g_^(_ij_)] = [_g__(_ij_)]^(−1) in the sense of the inverse of a square matrix.


Narrow escape

The narrow escape problem is a ubiquitous problem in biology, biophysics and cellular biology which has the following formulation: a Brownian particle (ion, molecule, or protein) is confined to a bounded domain (a compartment or a cell) by a reflecting boundary, except for a small window through which it can escape. The narrow escape problem is that of calculating the mean escape time. This time diverges as the window shrinks, thus rendering the calculation a singular perturbation problem.


See also

-   Brownian bridge: a Brownian motion that is required to "bridge" specified values at specified times
-   Brownian covariance
-   Brownian dynamics
-   Brownian motion of sol particles
-   Brownian motor
-   Brownian noise (Martin Gardner proposed this name for sound generated with random intervals. It is a pun on Brownian motion and white noise.)
-   Brownian ratchet
-   Brownian surface
-   Brownian tree
-   Brownian web
-   Rotational Brownian motion
-   Clinamen
-   Complex system
-   Continuity equation
-   Diffusion equation
-   Geometric Brownian motion
-   Itō diffusion: a generalisation of Brownian motion
-   Langevin equation
-   Lévy arcsine law
-   Local time (mathematics)
-   Many-body problem
-   Marangoni effect
-   Nanoparticle tracking analysis
-   Narrow escape problem
-   Osmosis
-   Random walk
-   Schramm–Loewner evolution
-   Single particle tracking
-   Statistical mechanics
-   Surface diffusion: a type of constrained Brownian motion.
-   Thermal equilibrium
-   Thermodynamic equilibrium
-   Tyndall effect: physical chemistry phenomenon where particles are involved; used to differentiate between the different types of mixtures.
-   Ultramicroscope


References

-   Lester Eli Dubins & Gideon Schwarz (1965). _On Continuous Martingales_. Proceedings of the National Academy of Sciences.


Further reading

-   Also includes a subsequent defense by Brown of his original observations, _Additional remarks on active molecules_.

-   -   -   -   -   -   -   Lucretius, _On The Nature of Things_, translated by William Ellery Leonard. (_on-line version_, from Project Gutenberg. See the heading 'Atomic Motions'; this translation differs slightly from the one quoted).
-   Nelson, Edward, (1967). _Dynamical Theories of Brownian Motion_. (PDF version of this out-of-print book, from the author's webpage.) This is primarily a mathematical work, but the first four chapters discuss the history of the topic, in the era from Brown to Einstein.
-   -   -   See also Perrin's book "Les Atomes" (1914).

-   -   -   Theile, T. N.
    -   Danish version: "Om Anvendelse af mindste Kvadraters Methode i nogle Tilfælde, hvor en Komplikation af visse Slags uensartede tilfældige Fejlkilder giver Fejlene en ‘systematisk’ Karakter".
    -   French version: "Sur la compensation de quelques erreurs quasi-systématiques par la méthodes de moindre carrés" published simultaneously in _Vidensk. Selsk. Skr. 5. Rk., naturvid. og mat. Afd._, 12:381–408, 1880.


External links

-   Einstein on Brownian Motion
-   Discusses history, botany and physics of Brown's original observations, with videos
-   "Einstein's prediction finally witnessed one century later" : a test to observe the velocity of Brownian motion
-   Brownian Motion on YouTube

Category:Statistical mechanics Category:Wiener process Category:Fractals Category:Colloidal chemistry Category:Robert Brown (botanist) Category:Albert Einstein Category:Articles containing video clips Category:Lévy processes

[1] Teaching the Growth, Ripening, and Agglomeration of Nanostructures in Computer Experiments, Jan Philipp Meyburg and Detlef Diesing, Journal of Chemical Education, (2017), 94, 9, 1225-1231, J.Chem.Edu

[2]

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

[16]

[17]

[18] See P. Clark 1976, p. 97

[19] See P. Clark 1976 for this whole paragraph

[20]

[21] See p. 535 in

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]