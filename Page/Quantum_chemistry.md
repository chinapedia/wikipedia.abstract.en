QUANTUM CHEMISTRY is a branch of chemistry whose primary focus is the application of quantum mechanics in physical models and experiments of chemical systems. It is also called molecular quantum mechanics.


Overview

Experimental quantum chemists rely heavily on spectroscopy, through which information regarding the quantization of energy on a molecular scale can be obtained. Common methods are infra-red (IR) spectroscopy, nuclear magnetic resonance (NMR) spectroscopy, and scanning probe microscopy.

Theoretical quantum chemistry, the workings of which also tend to fall under the category of computational chemistry, seeks to calculate the predictions of quantum theory as atoms and molecules can only have discrete energies; as this task, when applied to polyatomic species, invokes the many-body problem, these calculations are performed using computers rather than by analytical "back of the envelope" methods.

It involves heavy interplay of experimental and theoretical methods. In these ways, quantum chemists investigate chemical phenomena.

Quantum chemistry studies the ground state of individual atoms and molecules, and the excited states, and transition states that occur during chemical reactions.

On the calculations, quantum chemical studies use also semi-empirical and other methods based on quantum mechanical principles, and deal with time dependent problems. Many quantum chemical studies assume the nuclei are at rest (Born–Oppenheimer approximation). Many calculations involve iterative methods that include self-consistent field methods. Major goals of quantum chemistry include increasing the accuracy of the results for small molecular systems, and increasing the size of large molecules that can be processed, which is limited by scaling considerations—the computation time increases as a power of the number of atoms.


History

Some view the birth of quantum chemistry as starting with the discovery of the Schrödinger equation and its application to the hydrogen atom in 1926. However, the 1927 article of Walter Heitler (1904–1981) and Fritz London, is often recognized as the first milestone in the history of quantum chemistry. This is the first application of quantum mechanics to the diatomic hydrogen molecule, and thus to the phenomenon of the chemical bond. In the following years much progress was accomplished by Robert S. Mulliken, Max Born, J. Robert Oppenheimer, Linus Pauling, Erich Hückel, Douglas Hartree, Vladimir Fock, to cite a few. The history of quantum chemistry also goes through the 1838 discovery of cathode rays by Michael Faraday, the 1859 statement of the black-body radiation problem by Gustav Kirchhoff, the 1877 suggestion by Ludwig Boltzmann that the energy states of a physical system could be discrete, and the 1900 quantum hypothesis by Max Planck that any energy radiating atomic system can theoretically be divided into a number of discrete energy elements _ε_ such that each of these energy elements is proportional to the frequency _ν_ with which they each individually radiate energy and a numerical value called Planck's constant. Then, in 1905, to explain the photoelectric effect (1839), i.e., that shining light on certain materials can function to eject electrons from the material, Albert Einstein postulated, based on Planck's quantum hypothesis, that light itself consists of individual quantum particles, which later came to be called photons (1926). In the years to follow, this theoretical basis slowly began to be applied to chemical structure, reactivity, and bonding. Probably the greatest contribution to the field was made by Linus Pauling.


Electronic structure

The first step in solving a quantum chemical problem is usually solving the Schrödinger equation (or Dirac equation in relativistic quantum chemistry) with the electronic molecular Hamiltonian. This is called determining the electronic structure of the molecule. It can be said that the electronic structure of a molecule or crystal implies essentially its chemical properties. An exact solution for the Schrödinger equation can only be obtained for the hydrogen atom (though exact solutions for the bound state energies of the hydrogen molecular ion have been identified in terms of the generalized Lambert W function). Since all other atomic, or molecular systems, involve the motions of three or more "particles", their Schrödinger equations cannot be solved exactly and so approximate solutions must be sought.

Wave model

The foundation of quantum mechanics and quantum chemistry is the wave model, in which the atom is a small, dense, positively charged nucleus surrounded by electrons. The wave model is derived from the wave function, a set of possible equations derived from the time evolution of the Schrödinger equation which is applied to the wavelike probability distribution of subatomic particles. Unlike the earlier Bohr model of the atom, however, the wave model describes electrons as "clouds" moving in orbitals, and their positions are represented by probability distributions rather than discrete points. The strength of this model lies in its predictive power. Specifically, it predicts the pattern of chemically similar elements found in the periodic table. The wave model is so named because electrons exhibit properties (such as interference) traditionally associated with waves. See wave–particle duality. In this model, when we solve the Schrödinger Equation for an Hydrogenoid Atom, we obtain a solution that depends on some numbers, called quantum numbers, that describes the orbital, the most probable space where an electron can be. These are n, the principal quantum number, for the energy, l, or secondary quantum number, which correlates to the angular momentum, ml, for the orientation, and ms the spin. This model can explain the new lines that appeared in the spectroscopy of atoms. For multielectron atoms we must introduce some rules as that the electrons fill orbitals in a way to minimize the energy of the atom, in order of increasing energy, the Pauli exclusion principle, Hund's rule, and the aufbau principle.

Valence bond

Although the mathematical basis of quantum chemistry had been laid by Schrödinger in 1926, it is generally accepted that the first true calculation in quantum chemistry was that of the German physicists Walter Heitler and Fritz London on the hydrogen (H₂) molecule in 1927. Heitler and London's method was extended by the American theoretical physicist John C. Slater and the American theoretical chemist Linus Pauling to become the valence-bond (VB) [or Heitler–London–Slater–Pauling (HLSP)] method. In this method, attention is primarily devoted to the pairwise interactions between atoms, and this method therefore correlates closely with classical chemists' drawings of bonds. It focuses on how the atomic orbitals of an atom combine to give individual chemical bonds when a molecule is formed, incorporating the two key concepts of orbital hybridization and resonance.

Molecular orbital

An alternative approach was developed in 1929 by Friedrich Hund and Robert S. Mulliken, in which electrons are described by mathematical functions delocalized over an entire molecule. The Hund–Mulliken approach or molecular orbital (MO) method is less intuitive to chemists, but has turned out capable of predicting spectroscopic properties better than the VB method. This approach is the conceptional basis of the Hartree–Fock method and further post Hartree–Fock methods.

Density functional theory

The Thomas–Fermi model was developed independently by Thomas and Fermi in 1927. This was the first attempt to describe many-electron systems on the basis of electronic density instead of wave functions, although it was not very successful in the treatment of entire molecules. The method did provide the basis for what is now known as density functional theory (DFT). Modern day DFT uses the Kohn–Sham method, where the density functional is split into four terms; the Kohn–Sham kinetic energy, an external potential, exchange and correlation energies. A large part of the focus on developing DFT is on improving the exchange and correlation terms. Though this method is less developed than post Hartree–Fock methods, its significantly lower computational requirements (scaling typically no worse than _n_³ with respect to _n_ basis functions, for the pure functionals) allow it to tackle larger polyatomic molecules and even macromolecules. This computational affordability and often comparable accuracy to MP2 and CCSD(T) (post-Hartree–Fock methods) has made it one of the most popular methods in computational chemistry.


Chemical dynamics

A further step can consist of solving the Schrödinger equation with the total molecular Hamiltonian in order to study the motion of molecules. Direct solution of the Schrödinger equation is called _quantum molecular dynamics_, within the semiclassical approximation _semiclassical molecular dynamics_, and within the classical mechanics framework _molecular dynamics (MD)_. Statistical approaches, using for example Monte Carlo methods, are also possible.

Adiabatic chemical dynamics

In adiabatic dynamics, interatomic interactions are represented by single scalar potentials called potential energy surfaces. This is the Born–Oppenheimer approximation introduced by Born and Oppenheimer in 1927. Pioneering applications of this in chemistry were performed by Rice and Ramsperger in 1927 and Kassel in 1928, and generalized into the RRKM theory in 1952 by Marcus who took the transition state theory developed by Eyring in 1935 into account. These methods enable simple estimates of unimolecular reaction rates from a few characteristics of the potential surface.

Non-adiabatic chemical dynamics

Non-adiabatic dynamics consists of taking the interaction between several coupled potential energy surface (corresponding to different electronic quantum states of the molecule). The coupling terms are called vibronic couplings. The pioneering work in this field was done by Stueckelberg, Landau, and Zener in the 1930s, in their work on what is now known as the Landau–Zener transition. Their formula allows the transition probability between two diabatic potential curves in the neighborhood of an avoided crossing to be calculated. Spin-forbidden reactions are one type of non-adiabatic reactions where at least one change in spin state occurs when progressing from reactant to product.


See also

-   Atomic physics
-   Computational chemistry
-   Condensed matter physics
-   Car–Parrinello molecular dynamics
-   Electron localization function
-   International Academy of Quantum Molecular Science
-   Molecular modelling
-   Physical chemistry
-   List of quantum chemistry and solid-state physics software
-   QMC@Home
-   _Quantum Aspects of Life_
-   Quantum electrochemistry
-   Relativistic quantum chemistry
-   Theoretical physics
-   Spin forbidden reactions


References

-   -   -   -   -   Considers the extent to which chemistry and especially the periodic system has been reduced to quantum mechanics.

-   Kostas Gavroglu, Ana Simões: _NEITHER PHYSICS NOR CHEMISTRY.A History of Quantum Chemistry_, MIT Press, 2011,
-   -   Karplus M., Porter R.N. (1971). _Atoms and Molecules. An introduction for students of physical chemistry_, Benjamin–Cummings Publishing Company,
-   -   -   -   -   -


External links

-   The Sherrill Group – Notes
-   ChemViz Curriculum Support Resources
-   Early ideas in the history of quantum chemistry
-   The Particle Adventure

Quantum_chemistry Category:Theoretical chemistry