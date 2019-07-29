Orbitals_acetylene.jpg (H–C≡C–H) molecular orbital set. The left column shows MO's which are occupied in the ground state, with the lowest-energy orbital at the top. The white and grey line visible in some MO's is the molecular axis passing through the nuclei. The orbital wave functions are positive in the red regions and negative in the blue. The right column shows virtual MO's which are empty in the ground state, but may be occupied in excited states.]]

In chemistry, a MOLECULAR ORBITAL (MO) is a mathematical function describing the wave-like behavior of an electron in a molecule. This function can be used to calculate chemical and physical properties such as the probability of finding an electron in any specific region. The term _orbital_ was introduced by Robert S. Mulliken in 1932 as an abbreviation for _one-electron orbital wave function_.[1] At an elementary level, it is used to describe the _region_ of space in which the function has a significant amplitude. Molecular orbitals are usually constructed by combining atomic orbitals or hybrid orbitals from each atom of the molecule, or other molecular orbitals from groups of atoms. They can be quantitatively calculated using the Hartree–Fock or self-consistent field (SCF) methods.


Overview

A molecular orbital (MO) can be used to represent the regions in a molecule where an electron occupying that orbital is likely to be found. Molecular orbitals are obtained from the combination of atomic orbitals, which predict the location of an electron in an atom. A molecular orbital can specify the electron configuration of a molecule: the spatial distribution and energy of one (or one pair of) electron(s). Most commonly a MO is represented as a linear combination of atomic orbitals (the LCAO-MO method), especially in qualitative or very approximate usage. They are invaluable in providing a simple model of bonding in molecules, understood through molecular orbital theory. Most present-day methods in computational chemistry begin by calculating the MOs of the system. A molecular orbital describes the behavior of one electron in the electric field generated by the nuclei and some average distribution of the other electrons. In the case of two electrons occupying the same orbital, the Pauli principle demands that they have opposite spin. Necessarily this is an approximation, and highly accurate descriptions of the molecular electronic wave function do not have orbitals (see configuration interaction).

Molecular orbitals are, in general, delocalized throughout the entire molecule. Moreover, if the molecule has symmetry elements, its nondegenerate molecular orbitals are either symmetric or antisymmetric with respect to any of these symmetries. In other words, application of a symmetry operation S (e.g., a reflection, rotation, or inversion) to molecular orbital ψ results in the molecular orbital being unchanged or reversing its mathematical sign: Sψ = ±ψ. In planar molecules, for example, molecular orbitals are either symmetric (sigma) or antisymmetric (pi) with respect to reflection in the molecular plane. If molecules with degenerate orbital energies are also considered, a more general statement that molecular orbitals form bases for the irreducible representations of the molecule's symmetry group holds.[2] The symmetry properties of molecular orbitals means that delocalization is an inherent feature of molecular orbital theory and makes it fundamentally different from (and complementary to) valence bond theory, in which bonds are viewed as localized electron pairs, with allowance for resonance to account for delocalization.

In contrast to these symmetry-adapted _canonical_ molecular orbitals, localized molecular orbitals can be formed by applying certain mathematical transformations to the canonical orbitals. The advantage of this approach is that the orbitals will correspond more closely to the "bonds" of a molecule as depicted by a Lewis structure. As a disadvantage, the energy levels of these localized orbitals no longer have physical meaning. (The discussion in the rest of this article will focus on canonical molecular orbitals. For further discussions on localized molecular orbitals, see: natural bond orbital and sigma-pi and equivalent-orbital models.)


Formation of molecular orbitals

Molecular orbitals arise from allowed interactions between atomic orbitals, which are allowed if the symmetries (determined from group theory) of the atomic orbitals are compatible with each other. Efficiency of atomic orbital interactions is determined from the overlap (a measure of how well two orbitals constructively interact with one another) between two atomic orbitals, which is significant if the atomic orbitals are close in energy. Finally, the number of molecular orbitals formed must be equal to the number of atomic orbitals in the atoms being combined to form the molecule.


Qualitative discussion

For an imprecise, but qualitatively useful, discussion of the molecular structure, the molecular orbitals can be obtained from the "Linear combination of atomic orbitals molecular orbital method" ansatz. Here, the molecular orbitals are expressed as linear combinations of atomic orbitals.[3]

Linear combinations of atomic orbitals (LCAO)

Molecular orbitals were first introduced by Friedrich Hund[4][5] and Robert S. Mulliken[6][7] in 1927 and 1928.[8][9] The linear combination of atomic orbitals or "LCAO" approximation for molecular orbitals was introduced in 1929 by Sir John Lennard-Jones.[10] His ground-breaking paper showed how to derive the electronic structure of the fluorine and oxygen molecules from quantum principles. This qualitative approach to molecular orbital theory is part of the start of modern quantum chemistry. Linear combinations of atomic orbitals (LCAO) can be used to estimate the molecular orbitals that are formed upon bonding between the molecule's constituent atoms. Similar to an atomic orbital, a Schrödinger equation, which describes the behavior of an electron, can be constructed for a molecular orbital as well. Linear combinations of atomic orbitals, or the sums and differences of the atomic wavefunctions, provide approximate solutions to the Hartree–Fock equations which correspond to the independent-particle approximation of the molecular Schrödinger equation. For simple diatomic molecules, the wavefunctions obtained are represented mathematically by the equations

_Ψ_ = _c__(_a_)_ψ__(_a_) + _c__(_b_)_ψ__(_b_)

_Ψ_^(*) = _c__(_a_)_ψ__(_a_) − _c__(_b_)_ψ__(_b_)

where Ψ and Ψ^(*) are the molecular wavefunctions for the bonding and antibonding molecular orbitals, respectively, ψ_(a) and ψ_(b) are the atomic wavefunctions from atoms a and b, respectively, and c_(a) and c_(b) are adjustable coefficients. These coefficients can be positive or negative, depending on the energies and symmetries of the individual atomic orbitals. As the two atoms become closer together, their atomic orbitals overlap to produce areas of high electron density, and, as a consequence, molecular orbitals are formed between the two atoms. The atoms are held together by the electrostatic attraction between the positively charged nuclei and the negatively charged electrons occupying bonding molecular orbitals.[11]

Bonding, antibonding, and nonbonding MOs

When atomic orbitals interact, the resulting molecular orbital can be of three types: bonding, antibonding, or nonbonding.

Bonding MOs:

-   Bonding interactions between atomic orbitals are constructive (in-phase) interactions.
-   Bonding MOs are lower in energy than the atomic orbitals that combine to produce them.

Antibonding MOs:

-   Antibonding interactions between atomic orbitals are destructive (out-of-phase) interactions, with a nodal plane where the wavefunction of the antibonding orbital is zero between the two interacting atoms
-   Antibonding MOs are higher in energy than the atomic orbitals that combine to produce them.

Nonbonding MOs:

-   Nonbonding MOs are the result of no interaction between atomic orbitals because of lack of compatible symmetries.
-   Nonbonding MOs will have the same energy as the atomic orbitals of one of the atoms in the molecule.

Sigma and pi labels for MOs

The type of interaction between atomic orbitals can be further categorized by the molecular-orbital symmetry labels σ (sigma), π (pi), δ (delta), φ (phi), γ (gamma) etc. These are the Greek letters corresponding to the atomic orbitals s, p, d, f and g respectively. The number of nodal planes containing the internuclear axis between the atoms concerned is zero for σ MOs, one for π, two for δ, three for φ and four for γ.

σ symmetry

A MO with σ symmetry results from the interaction of either two atomic s-orbitals or two atomic p_(z)-orbitals. An MO will have σ-symmetry if the orbital is symmetric with respect to the axis joining the two nuclear centers, the internuclear axis. This means that rotation of the MO about the internuclear axis does not result in a phase change. A σ* orbital, sigma antibonding orbital, also maintains the same phase when rotated about the internuclear axis. The σ* orbital has a nodal plane that is between the nuclei and perpendicular to the internuclear axis.[12]

π symmetry

A MO with π symmetry results from the interaction of either two atomic p_(x) orbitals or p_(y) orbitals. An MO will have π symmetry if the orbital is asymmetric with respect to rotation about the internuclear axis. This means that rotation of the MO about the internuclear axis will result in a phase change. There is one nodal plane containing the internuclear axis, if real orbitals are considered.

A π* orbital, pi antibonding orbital, will also produce a phase change when rotated about the internuclear axis. The π* orbital also has a second nodal plane between the nuclei.[13][14][15][16]

δ symmetry

A MO with δ symmetry results from the interaction of two atomic d_(xy) or d_(x²-y²) orbitals. Because these molecular orbitals involve low-energy d atomic orbitals, they are seen in transition-metal complexes. A δ bonding orbital has two nodal planes containing the internuclear axis, and a δ* antibonding orbital also has a third nodal plane between the nuclei.

φ symmetry

Theoretical chemists have conjectured that higher-order bonds, such as phi bonds corresponding to overlap of f atomic orbitals, are possible. There is as of 2005 only one known example of a molecule purported to contain a phi bond (a U−U bond, in the molecule U₂).[17]

Gerade and ungerade symmetry

For molecules that possess a center of inversion (centrosymmetric molecules) there are additional labels of symmetry that can be applied to molecular orbitals. Centrosymmetric molecules include:

-   Homonuclear diatomics, X₂
-   Octahedral, EX₆
-   Square planar, EX₄.

Non-centrosymmetric molecules include:

-   Heteronuclear diatomics, XY
-   Tetrahedral, EX₄.

If inversion through the center of symmetry in a molecule results in the same phases for the molecular orbital, then the MO is said to have gerade (g) symmetry, from the German word for even. If inversion through the center of symmetry in a molecule results in a phase change for the molecular orbital, then the MO is said to have ungerade (u) symmetry, from the German word for odd. For a bonding MO with σ-symmetry, the orbital is σ_(g) (s' + s'' is symmetric), while an antibonding MO with σ-symmetry the orbital is σ_(u), because inversion of s' – s'' is antisymmetric. For a bonding MO with π-symmetry the orbital is π_(u) because inversion through the center of symmetry for would produce a sign change (the two p atomic orbitals are in phase with each other but the two lobes have opposite signs), while an antibonding MO with π-symmetry is π_(g) because inversion through the center of symmetry for would not produce a sign change (the two p orbitals are antisymmetric by phase).[18]

MO diagrams

The qualitative approach of MO analysis uses a molecular orbital diagram to visualize bonding interactions in a molecule. In this type of diagram, the molecular orbitals are represented by horizontal lines; the higher a line the higher the energy of the orbital, and degenerate orbitals are placed on the same level with a space between them. Then, the electrons to be placed in the molecular orbitals are slotted in one by one, keeping in mind the Pauli exclusion principle and Hund's rule of maximum multiplicity (only 2 electrons, having opposite spins, per orbital; place as many unpaired electrons on one energy level as possible before starting to pair them). For more complicated molecules, the wave mechanics approach loses utility in a qualitative understanding of bonding (although is still necessary for a quantitative approach). Some properties:

-   A basis set of orbitals includes those atomic orbitals that are available for molecular orbital interactions, which may be bonding or antibonding
-   The number of molecular orbitals is equal to the number of atomic orbitals included in the linear expansion or the basis set
-   If the molecule has some symmetry, the degenerate atomic orbitals (with the same atomic energy) are grouped in linear combinations (called SYMMETRY-ADAPTED ATOMIC ORBITALS (SO)), which belong to the representation of the symmetry group, so the wave functions that describe the group are known as SYMMETRY-ADAPTED LINEAR COMBINATIONS (SALC).
-   The number of molecular orbitals belonging to one group representation is equal to the number of symmetry-adapted atomic orbitals belonging to this representation
-   Within a particular representation, the symmetry-adapted atomic orbitals mix more if their atomic energy levels are closer.

The general procedure for constructing a molecular orbital diagram for a reasonably simple molecule can be summarized as follows:

1. Assign a point group to the molecule.

2. Look up the shapes of the SALCs.

3. Arrange the SALCs of each molecular fragment in increasing order of energy, first noting whether they stem from _s_, _p_, or _d_ orbitals (and put them in the order _s_ < _p_ < _d_), and then their number of internuclear nodes.

4. Combine SALCs of the same symmetry type from the two fragments, and from N SALCs form N molecular orbitals.

5. Estimate the relative energies of the molecular orbitals from considerations of overlap and relative energies of the parent orbitals, and draw the levels on a molecular orbital energy level diagram (showing the origin of the orbitals).

6. Confirm, correct, and revise this qualitative order by carrying out a molecular orbital calculation by using commercial software.[19]

Bonding in molecular orbitals

Orbital degeneracy

Molecular orbitals are said to be degenerate if they have the same energy. For example, in the homonuclear diatomic molecules of the first ten elements, the molecular orbitals derived from the p_(x) and the p_(y) atomic orbitals result in two degenerate bonding orbitals (of low energy) and two degenerate antibonding orbitals (of high energy).[20]

Ionic bonds

When the energy difference between the atomic orbitals of two atoms is quite large, one atom's orbitals contribute almost entirely to the bonding orbitals, and the other atom's orbitals contribute almost entirely to the antibonding orbitals. Thus, the situation is effectively that one or more electrons have been transferred from one atom to the other. This is called an (mostly) ionic bond.

Bond order

The bond order, or number of bonds, of a molecule can be determined by combining the number of electrons in bonding and antibonding molecular orbitals. A pair of electrons in a bonding orbital creates a bond, whereas a pair of electrons in an antibonding orbital negates a bond. For example, N₂, with eight electrons in bonding orbitals and two electrons in antibonding orbitals, has a bond order of three, which constitutes a triple bond.

Bond strength is proportional to bond order—a greater amount of bonding produces a more stable bond—and bond length is inversely proportional to it—a stronger bond is shorter.

There are rare exceptions to the requirement of molecule having a positive bond order. Although Be₂ has a bond order of 0 according to MO analysis, there is experimental evidence of a highly unstable Be₂ molecule having a bond length of 245 pm and bond energy of 10 kJ/mol.[21][22]

HOMO and LUMO

The highest occupied molecular orbital and lowest unoccupied molecular orbital are often referred to as the HOMO and LUMO, respectively. The difference of the energies of the HOMO and LUMO is called the HOMO-LUMO gap. This notion is often the matter of confusion in literature and should be considered with caution. Its value is usually located between the fundamental gap (difference between ionization potential and electron affinity) and the optical gap. In addition, HOMO-LUMO gap can be related to a bulk material band gap or transport gap, which is usually much smaller than fundamental gap.


Examples

Homonuclear diatomics

Homonuclear diatomic MOs contain equal contributions from each atomic orbital in the basis set. This is shown in the homonuclear diatomic MO diagrams for H₂, He₂, and Li₂, all of which containing symmetric orbitals.[23]

H₂

H2OrbitalsAnimation.gifs for the 1s orbital of a lone hydrogen atom (left and right) and the corresponding bonding (bottom) and antibonding (top) molecular orbitals of the H₂ molecule. The real part of the wavefunction is the blue curve, and the imaginary part is the red curve. The red dots mark the locations of the nuclei. The electron wavefunction oscillates according to the Schrödinger wave equation, and orbitals are its standing waves. The standing wave frequency is proportional to the orbital's kinetic energy. (This plot is a one-dimensional slice through the three-dimensional system.)]] As a simple MO example, consider the electrons in a hydrogen molecule, H₂ (see molecular orbital diagram), with the two atoms labelled H' and H". The lowest-energy atomic orbitals, 1s' and 1s", do not transform according to the symmetries of the molecule. However, the following symmetry adapted atomic orbitals do:

  1s' – 1s"   Antisymmetric combination: negated by reflection, unchanged by other operations
  ----------- ---------------------------------------------------------------------------------
  1s' + 1s"   Symmetric combination: unchanged by all symmetry operations

The symmetric combination (called a bonding orbital) is lower in energy than the basis orbitals, and the antisymmetric combination (called an antibonding orbital) is higher. Because the H₂ molecule has two electrons, they can both go in the bonding orbital, making the system lower in energy (hence more stable) than two free hydrogen atoms. This is called a covalent bond. The bond order is equal to the number of bonding electrons minus the number of antibonding electrons, divided by 2. In this example, there are 2 electrons in the bonding orbital and none in the antibonding orbital; the bond order is 1, and there is a single bond between the two hydrogen atoms.

He₂

On the other hand, consider the hypothetical molecule of He₂ with the atoms labeled He' and He". As with H₂, the lowest energy atomic orbitals are the 1s' and 1s", and do not transform according to the symmetries of the molecule, while the symmetry adapted atomic orbitals do. The symmetric combination—the bonding orbital—is lower in energy than the basis orbitals, and the antisymmetric combination—the antibonding orbital—is higher. Unlike H₂, with two valence electrons, He₂ has four in its neutral ground state. Two electrons fill the lower-energy bonding orbital, σ_(g)(1s), while the remaining two fill the higher-energy antibonding orbital, σ_(u)*(1s). Thus, the resulting electron density around the molecule does not support the formation of a bond between the two atoms; without a stable bond holding the atoms together, molecule would not be expected to exist. Another way of looking at it is that there are two bonding electrons and two antibonding electrons; therefore, the bond order is 0 and no bond exists (the molecule has one bound state supported by the Van der Waals potential).

Li₂

Dilithium Li₂ is formed from the overlap of the 1s and 2s atomic orbitals (the basis set) of two Li atoms. Each Li atom contributes three electrons for bonding interactions, and the six electrons fill the three MOs of lowest energy, σ_(g)(1s), σ_(u)*(1s), and σ_(g)(2s). Using the equation for bond order, it is found that dilithium has a bond order of one, a single bond.

Noble gases

Considering a hypothetical molecule of He₂, since the basis set of atomic orbitals is the same as in the case of H₂, we find that both the bonding and antibonding orbitals are filled, so there is no energy advantage to the pair. HeH would have a slight energy advantage, but not as much as H₂ + 2 He, so the molecule is very unstable and exists only briefly before decomposing into hydrogen and helium. In general, we find that atoms such as He that have full energy shells rarely bond with other atoms. Except for short-lived Van der Waals complexes, there are very few noble gas compounds known.

Heteronuclear diatomics

While MOs for homonuclear diatomic molecules contain equal contributions from each interacting atomic orbital, MOs for heteronuclear diatomics contain different atomic orbital contributions. Orbital interactions to produce bonding or antibonding orbitals in heteronuclear diatomics occur if there is sufficient overlap between atomic orbitals as determined by their symmetries and similarity in orbital energies.

HF

In hydrogen fluoride HF overlap between the H 1s and F 2s orbitals is allowed by symmetry but the difference in energy between the two atomic orbitals prevents them from interacting to create a molecular orbital. Overlap between the H 1s and F 2p_(z) orbitals is also symmetry allowed, and these two atomic orbitals have a small energy separation. Thus, they interact, leading to creation of σ and σ* MOs and a molecule with a bond order of 1. Since HF is a non-centrosymmetric molecule, the symmetry labels g and u do not apply to its molecular orbitals.[24]


Quantitative approach

To obtain quantitative values for the molecular energy levels, one needs to have molecular orbitals that are such that the configuration interaction (CI) expansion converges fast towards the full CI limit. The most common method to obtain such functions is the Hartree–Fock method, which expresses the molecular orbitals as eigenfunctions of the Fock operator. One usually solves this problem by expanding the molecular orbitals as linear combinations of Gaussian functions centered on the atomic nuclei (see linear combination of atomic orbitals and basis set (chemistry)). The equation for the coefficients of these linear combinations is a generalized eigenvalue equation known as the Roothaan equations, which are in fact a particular representation of the Hartree–Fock equation. There are a number of programs in which quantum chemical calculations of MOs can be performed, including Spartan and HyperChem.

Simple accounts often suggest that experimental molecular orbital energies can be obtained by the methods of ultra-violet photoelectron spectroscopy for valence orbitals and X-ray photoelectron spectroscopy for core orbitals. This, however, is incorrect as these experiments measure the ionization energy, the difference in energy between the molecule and one of the ions resulting from the removal of one electron. Ionization energies are linked approximately to orbital energies by Koopmans' theorem. While the agreement between these two values can be close for some molecules, it can be very poor in other cases.


References


External links

Category:Molecular physics Category:Quantum chemistry Category:Theoretical chemistry Category:Computational chemistry Category:Chemical bonding

[1]

[2]

[3]

[4] F. Hund, "Zur Deutung einiger Erscheinungen in den Molekelspektren" [On the interpretation of some phenomena in molecular spectra] _Zeitschrift für Physik_, vol. 36, pages 657-674 (1926).

[5] F. Hund, "Zur Deutung der Molekelspektren", _Zeitschrift für Physik_, Part I, vol. 40, pages 742-764 (1927); Part II, vol. 42, pages 93–120 (1927); Part III, vol. 43, pages 805-826 (1927); Part IV, vol. 51, pages 759-795 (1928); Part V, vol. 63, pages 719-751 (1930).

[6] R. S. Mulliken, "Electronic states. IV. Hund's theory; second positive nitrogen and Swan bands; alternate intensities", _Physical Review_, vol. 29, pages 637–649 (1927).

[7] R. S. Mulliken, "The assignment of quantum numbers for electrons in molecules", _Physical Review_, vol. 32, pages 186–222 (1928).

[8] Friedrich Hund and Chemistry, Werner Kutzelnigg, on the occasion of Hund's 100th birthday, _Angewandte Chemie International Edition_, 35, 573–586, (1996)

[9] Robert S. Mulliken's Nobel Lecture, _Science_, 157, no. 3785, 13-24. Available on-line at: Nobelprize.org

[10] Sir John Lennard-Jones, "The electronic structure of some diatomic molecules", _Transactions of the Faraday Society_, vol. 25, pages 668-686 (1929).

[11] Gary L. Miessler; Donald A. Tarr. Inorganic Chemistry. Pearson Prentice Hall, 3rd ed., 2004.

[12] Catherine E. Housecroft, Alan G. Sharpe, _Inorganic Chemistry_, Pearson Prentice Hall; 2nd Edition, 2005, p. 29-33.

[13]

[14] Peter Atkins; Julio De Paula. _Atkins’ Physical Chemistry_. Oxford University Press, 8th ed., 2006.

[15] Yves Jean; François Volatron. _An Introduction to Molecular Orbitals_. Oxford University Press, 1993.

[16] Michael Munowitz, _Principles of Chemistry_, Norton & Company, 2000, p. 229-233.

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24] Catherine E. Housecroft, Alan G, Sharpe, Inorganic Chemistry, Pearson Prentice Hall; 2nd Edition, 2005, , p. 41-43.