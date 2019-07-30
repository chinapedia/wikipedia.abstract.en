(100) surface]] carbide (SiC). Image obtained using an STM.]] ]]

A SCANNING TUNNELING MICROSCOPE (STM) is an instrument for imaging surfaces at the atomic level. Its development in 1981 earned its inventors, Gerd Binnig and Heinrich Rohrer (at IBM Zürich), the Nobel Prize in Physics in 1986.[1][2] For an STM, good resolution is considered to be 0.1 nm lateral resolution and 0.01 nm (10 pm) depth resolution.[3] With this resolution, individual atoms within materials are routinely imaged and manipulated. The STM can be used not only in ultra-high vacuum but also in air, water, and various other liquid or gas ambients, and at temperatures ranging from near zero kelvin to over 1000 °C.[4][5]

STM is based on the concept of quantum tunneling. When a conducting tip is brought very near to the surface to be examined, a bias (voltage difference) applied between the two can allow electrons to tunnel through the vacuum between them. The resulting _tunneling current_ is a function of tip position, applied voltage, and the local density of states (LDOS) of the sample.[6] Information is acquired by monitoring the current as the tip's position scans across the surface, and is usually displayed in image form. STM can be a challenging technique, as it requires extremely clean and stable surfaces, sharp tips, excellent vibration control, and sophisticated electronics, but nonetheless many hobbyists have built their own.[7]


Procedure

tip.]]

First, a voltage bias is applied and the tip is brought close to the sample by coarse sample-to-tip control, which is turned off when the tip and sample are sufficiently close. At close range, fine control of the tip in all three dimensions when near the sample is typically piezoelectric, maintaining tip-sample separation W typically in the 4-7 Å (0.4-0.7 nm) range, which is the equilibrium position between attractive (3<W<10Å) and repulsive (W<3Å) interactions.[8] In this situation, the voltage bias will cause electrons to tunnel between the tip and sample, creating a current that can be measured. Once tunneling is established, the tip's bias and position with respect to the sample can be varied (with the details of this variation depending on the experiment) and data are obtained from the resulting changes in current.

If the tip is moved across the sample in the x-y plane, the changes in surface height and density of states causes changes in current. These changes are mapped in images. This change in current with respect to position can be measured itself, or the height, z, of the tip corresponding to a constant current can be measured.[9] These two modes are called constant height mode and constant current mode, respectively. In constant current mode, feedback electronics adjust the height by a voltage to the piezoelectric height control mechanism.[10] This leads to a height variation and thus the image comes from the tip topography across the sample and gives a constant charge density surface; this means contrast on the image is due to variations in charge density.[11] In constant height mode, the voltage and height are both held constant while the current changes to keep the voltage from changing; this leads to an image made of current changes over the surface, which can be related to charge density.[12] The benefit to using a constant height mode is that it is faster, as the piezoelectric movements require more time to register the height change in constant current mode than the current change in constant height mode.[13] All images produced by STM are grayscale, with color optionally added in post-processing in order to visually emphasize important features.

In addition to scanning across the sample, information on the electronic structure at a given location in the sample can be obtained by sweeping voltage and measuring current at a specific location.[14] This type of measurement is called scanning tunneling spectroscopy (STS) and typically results in a plot of the local density of states as a function of energy within the sample. The advantage of STM over other measurements of the density of states lies in its ability to make extremely local measurements: for example, the density of states at an impurity site can be compared to the density of states far from impurities.[15]

Framerates of at least 25 Hz enable so called video-rate STM.[16][17] Framerates up to 80 Hz are possible with fully working feedback that adjusts the height of the tip.[18] Due to the line-by-line scanning motion, a proper comparison on the speed requires not only the framerate, but also the number of pixels in an image: with a framerate of 10 Hz and 100x100 pixels the tip moves with a line frequency of 1 kHz, whereas it moves with only with 500 Hz, when measuring with a faster framerate of 50 Hz but only 10x10 pixels. Video-rate STM can be used to scan surface diffusion.[19]


Instrumentation

The components of an STM include scanning tip, piezoelectric controlled height and x,y scanner, coarse sample-to-tip control, vibration isolation system, and computer.[20]

The resolution of an image is limited by the radius of curvature of the scanning tip of the STM. Additionally, image artifacts can occur if the tip has two tips at the end rather than a single atom; this leads to “double-tip imaging,” a situation in which both tips contribute to the tunneling.[21] Therefore, it has been essential to develop processes for consistently obtaining sharp, usable tips. Recently, carbon nanotubes have been used in this instance.[22]

The tip is often made of tungsten or platinum-iridium, though gold is also used.[23] Tungsten tips are usually made by electrochemical etching, and platinum-iridium tips by mechanical shearing.[24]

Due to the extreme sensitivity of tunnel current to height, proper vibration insulation or an extremely rigid STM body is imperative for obtaining usable results. In the first STM by Binnig and Rohrer, magnetic levitation was used to keep the STM free from vibrations; now mechanical spring or gas spring systems are often used.[25] Additionally, mechanisms for reducing eddy currents are sometimes implemented.

Maintaining the tip position with respect to the sample, scanning the sample and acquiring the data is computer controlled.[26] The computer may also be used for enhancing the image with the help of image processing[27][28] as well as performing quantitative measurements.[29][30]


Other STM related studies

organic semiconductor monolayer (here: PTCDA molecules) on graphite, in which the logo of the Center for NanoScience (CeNS), LMU has been written.]] surface at an atomic level obtained by an STM.]] Many other microscopy techniques have been developed based upon STM. These include photon scanning microscopy (PSTM), which uses an optical tip to tunnel photons;[31] scanning tunneling potentiometry (STP), which measures electric potential across a surface;[32] spin polarized scanning tunneling microscopy (SPSTM), which uses a ferromagnetic tip to tunnel spin-polarized electrons into a magnetic sample,[33] multi-tip scanning tunneling microscopy which enables electrical measurements to be performed at the nanoscale, and atomic force microscopy (AFM), in which the force caused by interaction between the tip and sample is measured.

Other STM methods involve manipulating the tip in order to change the topography of the sample. This is attractive for several reasons. Firstly the STM has an atomically precise positioning system which allows very accurate atomic scale manipulation. Furthermore, after the surface is modified by the tip, it is a simple matter to then image with the same tip, without changing the instrument. IBM researchers developed a way to manipulate xenon atoms adsorbed on a nickel surface.[34] This technique has been used to create electron "corrals" with a small number of adsorbed atoms, which allows the STM to be used to observe electron Friedel oscillations on the surface of the material. Aside from modifying the actual sample surface, one can also use the STM to tunnel electrons into a layer of electron beam photoresist on a sample, in order to do lithography. This has the advantage of offering more control of the exposure than traditional electron beam lithography. Another practical application of STM is atomic deposition of metals (gold, silver, tungsten, etc.) with any desired (pre-programmed) pattern, which can be used as contacts to nanodevices or as nanodevices themselves.

Variable temperature STM was used to investigate temperature dependency of molecular rotations on single crystalline surfaces.[35] Rotating molecules appear blurred compared to non-rotating ones.

Recently groups have found they can use the STM tip to rotate individual bonds within single molecules.[36] The electrical resistance of the molecule depends on the orientation of the bond, so the molecule effectively becomes a molecular switch.


Principle of operation

Tunneling is a functioning concept that arises from quantum mechanics. Classically, an object hitting an impenetrable barrier will not pass through. In contrast, objects with a very small mass, such as the electron, have wavelike characteristics which permit such an event, referred to as tunneling.

Electrons behave as beams of energy, and in the presence of a potential _U_(_z_), assuming 1-dimensional case, the energy levels _ψ_(n)_(_z_) of the electrons are given by solutions to Schrödinger’s equation,

$$- \frac{\hbar^2}{2m} \frac{\partial^2\psi_n (z)}{\partial z^2} + U(z) \psi_n (z) = E\psi_n (z)$$

where _ħ_ is the reduced Planck’s constant, _z_ is the position, and _m_ is the mass of an electron.[37] If an electron of energy _E_ is incident upon an energy barrier of height _U_(_z_), the electron wave function is a traveling wave solution,

_ψ__(_n_)(_z_) = _ψ__(_n_)(0)_e_^( ± _i__k__z_)

where

$$k=\frac{\sqrt{2m(E-U(z))}}{\hbar}$$
if _E_ > _U_(_z_), which is true for a wave function inside the tip or inside the sample.[38] Inside a barrier, _E_ < _U_(_z_) so the wave functions which satisfy this are decaying waves,

_ψ__(_n_)(_z_) = _ψ__(_n_)(0)_e_^( ± _κ__z_)

where

$$\kappa = \frac{\sqrt{2m(U-E)}}{\hbar}$$
quantifies the decay of the wave inside the barrier, with the barrier in the +_z_ direction for  − κ.[39]

Knowing the wave function allows one to calculate the probability density for that electron to be found at some location. In the case of tunneling, the tip and sample wave functions overlap such that when under a bias, there is some finite probability to find the electron in the barrier region and even on the other side of the barrier.[40] Let us assume the bias is _V_ and the barrier width is _W_. This probability, _P_, that an electron at _z_=0 (left edge of barrier) can be found at _z_=_W_ (right edge of barrier) is proportional to the wave function squared,

_P_ ∝ |_ψ__(_n_)(0)|²_e_^( − 2_κ__W_)
.[41]

If the bias is small, we can let _U_ − _E_ ≈ _φM_ in the expression for _κ_, where _φM_, the work function, gives the minimum energy needed to bring an electron from an occupied level, the highest of which is at the Fermi level (for metals at _T_=0 kelvins), to vacuum level. When a small bias _V_ is applied to the system, only electronic states very near the Fermi level, within _eV_ (a product of electron charge and voltage, not to be confused here with electronvolt unit), are excited.[42] These excited electrons can tunnel across the barrier. In other words, tunneling occurs mainly with electrons of energies near the Fermi level.

However, tunneling does require that there be an empty level of the same energy as the electron for the electron to tunnel into on the other side of the barrier. It is because of this restriction that the tunneling current can be related to the density of available or filled states in the sample. The current due to an applied voltage _V_ (assume tunneling occurs sample to tip) depends on two factors: 1) the number of electrons between _E__(f) and _eV_ in the sample, and 2) the number among them which have corresponding free states to tunnel into on the other side of the barrier at the tip.[43] The higher the density of available states the greater the tunneling current. When _V_ is positive, electrons in the tip tunnel into empty states in the sample; for a negative bias, electrons tunnel out of occupied states in the sample into the tip.[44]

Mathematically, this tunneling current is given by

$$I \propto \sum_{E_f-eV}^{E_f} |\psi_n (0)|^2 e^{-2 \kappa W}$$
.

One can sum the probability over energies between _E__(f) − _eV_ and _E__(f) to get the number of states available in this energy range per unit volume, thereby finding the local density of states (LDOS) near the Fermi level.[45] The LDOS near some energy _E_ in an interval _ε_ is given by

$$\rho_s (z,E) = \frac{1}{\epsilon} \sum_{E- \epsilon}^{E}|\psi_n (z)|^2$$
,

and the tunnel current at a small bias V is proportional to the LDOS near the Fermi level, which gives important information about the sample.[46] It is desirable to use LDOS to express the current because this value does not change as the volume changes, while probability density does.[47] Thus the tunneling current is given by

_I_ ∝ _V__ρ__(_s_)(0, _E__(_f_))_e_^( − 2_κ__W_)

where ρ_(s)(0,_E__(f)) is the LDOS near the Fermi level of the sample at the sample surface.[48] This current can also be expressed in terms of the LDOS near the Fermi level of the sample at the tip surface,

_I_ ∝ _V__ρ__(_s_)(_W_, _E__(_f_))

The exponential term in the above equations means that small variations in W greatly influence the tunnel current. If the separation is decreased by 1 Å, the current increases by an order of magnitude, and vice versa.[49]

This approach fails to account for the _rate_ at which electrons can pass the barrier. This rate should affect the tunnel current, so it can be treated using the Fermi's golden rule with the appropriate tunneling matrix element. John Bardeen solved this problem in his study of the metal-insulator-metal junction.[50] He found that if he solved Schrödinger’s equation for each side of the junction separately to obtain the wave functions ψ and χ for each electrode, he could obtain the tunnel matrix, M, from the overlap of these two wave functions.[51] This can be applied to STM by making the electrodes the tip and sample, assigning ψ and χ as sample and tip wave functions, respectively, and evaluating M at some surface S between the metal electrodes, where z=0 at the sample surface and z=W at the tip surface.[52]

Now, Fermi’s Golden Rule gives the rate for electron transfer across the barrier, and is written

$$w = \frac{2 \pi}{\hbar} |M|^2 \delta (E_{\psi} - E_{\chi} )$$
,

where δ(E_(ψ)–E_(χ)) restricts tunneling to occur only between electron levels with the same energy.[53] The tunnel matrix element, given by

$$M= \frac{\hbar ^2}{2 m} \int_{z=z_0} ( \chi*\frac {\partial \psi}{\partial z}-\psi \frac{\partial \chi*}{\partial z}) dS$$
,

is a description of the lower energy associated with the interaction of wave functions at the overlap, also called the resonance energy.[54]

Summing over all the states gives the tunneling current as

$$I = \frac{4 \pi e}{\hbar}\int_{-\infty}^{+\infty} [f(E_f -eV + \epsilon) - f(E_f + \epsilon)] \rho_s (E_f - eV + \epsilon) \rho_T (E_f + \epsilon)|M|^2 d \epsilon$$
,

where _f_ is the Fermi function, ρ_(s) and ρ_(T) are the density of states in the sample and tip, respectively.[55] The Fermi distribution function describes the filling of electron levels at a given temperature T.


Early invention

An earlier, similar invention, the _Topografiner_ of R. Young, J. Ward, and F. Scire from the NIST,[56] relied on field emission. However, Young is credited by the Nobel Committee as the person who realized that it should be possible to achieve better resolution by using the tunnel effect. It was later discovered that an even higher resolution could be achieved by calculating the Doppler effect.[57]


See also

-   Microscopy
-   Scanning probe microscopy
-   Electrochemical scanning tunneling microscope
-   Atomic force microscope
-   Electron microscope


References


Further reading

-   Tersoff, J.: Hamann, D. R.: Theory of the scanning tunneling microscope, Physical Review B 31, 1985, p. 805 - 813.
-   Bardeen, J.: Tunnelling from a many-particle point of view, Physical Review Letters 6 (2), 1961, p. 57-59.
-   Chen, C. J.: Origin of Atomic Resolution on Metal Surfaces in Scanning Tunneling Microscopy, Physical Review Letters 65 (4), 1990, p. 448-451
-   G. Binnig, H. Rohrer, Ch. Gerber, and E. Weibel, Phys. Rev. Lett. 50, 120 - 123 (1983)
-   G. Binnig, H. Rohrer, Ch. Gerber, and E. Weibel, Phys. Rev. Lett. 49, 57 - 61 (1982)
-   G. Binnig, H. Rohrer, Ch. Gerber, and E. Weibel, Appl. Phys. Lett., Vol. 40, Issue 2, pp. 178-180 (1982)
-   -   -   -   -   _Theory of STM and Related Scanning Probe Methods._ Springer Series in Surface Sciences, Band 3. Springer, Berlin 1998
-   _Stabilization of Large Adsorbates by Rotational Entropy: A Time-Resolved Variable-Temperature STM Study_, ChemPhysChem, doi: 10.1002/cphc.201200531


External links

-   NobelPrize.org website about STM, including an interactive STM simulator.
-   A scanning tunelling microscope filmed during operation by an electron microscope
-   The Inner Workings of an STM - An Animated Explanation WeCanFigureThisOut.org
-   Build a simple STM with a cost of materials less than $100.00 excluding oscilloscope
-   animations and explanations on various types of microscopes including electron microscopes (Université Paris Sud)

Category:Scanning probe microscopy Category:Swiss inventions Category:German inventions Category:Microscopes Category:1981 introductions Category:Articles containing video clips

[1]

[2] Press release for the 1986 Nobel Prize in physics

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

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]  (Russian translation is available).

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]  Cornell Chronicle|website=news.cornell.edu|language=en|access-date=2018-09-07}}

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

[57]