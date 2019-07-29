Bloch_Sphere.svg is a representation of a qubit, the fundamental building block of quantum computers.]] QUANTUM COMPUTING is the use of quantum-mechanical phenomena such as superposition and entanglement to perform computation. A QUANTUM COMPUTER is used to perform such computation, which can be implemented theoretically or physically.[1]

The field of quantum computing is actually a sub-field of quantum information science, which includes quantum cryptography and quantum communication. Quantum computing was started in the early 1980s when Richard Feynman and Yuri Manin expressed the idea that a quantum computer had the potential to simulate things that a classical computer could not.[2][3] In 1994, Peter Shor published an algorithm that is able to efficiently solve some problems that are used in asymmetric cryptography that are considered hard for classical computers.[4]

There are currently two main approaches to physically implementing a quantum computer: analog and digital. Analog approaches are further divided into quantum simulation, quantum annealing, and adiabatic quantum computation. Digital quantum computers use quantum logic gates to do computation. Both approaches use quantum bits or qubits.[5]

Qubits are fundamental to quantum computing and are somewhat analogous to bits in a classical computer. Qubits can be in a 1 or 0 quantum state. But they can also be in a superposition of the 1 and 0 states. However, when qubits are measured the result is always either a 0 or a 1; the probabilities of the two outcomes depends on the quantum state they were in.

Today's physical quantum computers are very noisy and quantum error correction is a burgeoning field of research. Unfortunately existing hardware is so noisy that _fault-tolerant quantum computing [is] still a rather distant dream_.[6] As of April 2019, no large scalable quantum hardware has been demonstrated, nor have commercially useful algorithms been published for today's small, noisy quantum computers.[7] There is an increasing amount of investment in quantum computing by governments, established companies, and start-ups.[8] Both applications of near-term intermediate-scale device[9] and the demonstration of quantum supremacy[10] are actively pursued in academic and industrial research.


Basics

A classical computer has a memory made up of bits, where each bit is represented by either a one or a zero. A quantum computer, on the other hand, maintains a sequence of qubits, which can represent a one, a zero, or any quantum superposition of those two qubit states;[11] a pair of qubits can be in any quantum superposition of 4 states,[12] and three qubits in any superposition of 8 states. In general, a quantum computer with n qubits can be in any superposition of up to 2^(n) different states.[13] (This compares to a normal computer that can only be in _one_ of these 2^(n) states at any one time).

A quantum computer operates on its qubits using quantum gates and measurement (which also alters the observed state). An algorithm is composed of a fixed sequence of quantum logic gates and a problem is encoded by setting the initial values of the qubits, similar to how a classical computer works. The calculation usually ends with a measurement, collapsing the system of qubits into one of the 2^(n) eigenstates, where each qubit is zero or one, decomposing into a classical state. The outcome can, therefore, be at most n classical bits of information. If the algorithm did not end with a measurement, the result is an unobserved quantum state. (Such unobserved states may be sent to other computers as part of distributed quantum algorithms.)

Quantum algorithms are often probabilistic, in that they provide the correct solution only with a certain known probability.[14] Note that the term non-deterministic computing must not be used in that case to mean probabilistic (computing) because the term non-deterministic has a different meaning in computer science.

An example of an implementation of qubits of a quantum computer could start with the use of particles with two spin states: "down" and "up" (typically written | ↓ ⟩ and | ↑ ⟩, or |0⟩ and |1⟩). This is true because any such system can be mapped onto an effective spin-1/2 system.


Principles of operation

A quantum computer with a given number of qubits is fundamentally different from a classical computer composed of the same number of classical bits. For example, representing the state of an _n_-qubit system on a classical computer requires the storage of 2^(_n_) complex coefficients, while to characterize the state of a classical _n_-bit system it is sufficient to provide the values of the _n_ bits, that is, only _n_ numbers. Although this fact may seem to indicate that qubits can hold exponentially more information than their classical counterparts, care must be taken not to overlook the fact that the qubits are only in a probabilistic superposition of all of their states. This means that when the final state of the qubits is measured, they will only be found in one of the possible configurations they were in before the measurement. It is generally incorrect to think of a system of qubits as being in one particular state before the measurement. The qubits are in a superposition of states before any measurement is made, which directly affects the possible outcomes of the computation.

Quantum_computer.svg |place = London |year = 2007 |page = 157 |isbn = 978-2-7462-1516-0}} ]]

To better understand this point, consider a classical computer that operates on a three-bit register. If the exact state of the register at a given time is not known, it can be described as a probability distribution over the 2³ = 8 different three-bit strings 000, 001, 010, 011, 100, 101, 110, and 111. If there is no uncertainty over its state, then it is in exactly one of these states with probability 1. However, if it is a probabilistic computer, then there is a possibility of it being in any _one_ of a number of different states.

The state of a three-qubit quantum computer is similarly described by an eight-dimensional vector (a₀, a₁, a₂, a₃, a₄, a₅, a₆, a₇) (or a one-dimensional vector with each vector node holding the amplitude and the state as the bit string of qubits). Here, however, the coefficients a_(i) are complex numbers, and it is the sum of the _squares_ of the coefficients' absolute values, ∑_(i)|a_(i)|², that must equal 1. For each i, the absolute value squared |a_(i)|² gives the probability of the system being found in the i-th state after a measurement. However, because a complex number encodes not just a magnitude but also a direction in the complex plane, the phase difference between any two coefficients (states) represents a meaningful parameter. This is a fundamental difference between quantum computing and probabilistic classical computing.[15]

If you measure the three qubits, you will observe a three-bit string. The probability of measuring a given string is the squared magnitude of that string's coefficient (i.e., the probability of measuring 000 = |a₀|², the probability of measuring 001 = |a₁|², etc.). Thus, measuring a quantum state described by complex coefficients (a₀, a₁, a₂, a₃, a₄, a₅, a₆, a₇) gives the classical probability distribution (|a₀|², |a₁|², |a₂|², |a₃|², |a₄|², |a₅|², |a₆|², |a₇|²) and we say that the quantum state "collapses" to a classical state as a result of making the measurement.

An eight-dimensional vector can be specified in many different ways depending on what basis is chosen for the space. The basis of bit strings (e.g., 000, 001, …, 111) is known as the computational basis. Other possible bases are unit-length, orthogonal vectors and the eigenvectors of the Pauli-x operator. Ket notation is often used to make the choice of basis explicit. For example, the state (a₀, a₁, a₂, a₃, a₄, a₅, a₆, a₇) in the computational basis can be written as:

_a_₀ |000⟩ + _a_₁ |001⟩ + _a_₂ |010⟩ + _a_₃ |011⟩ + _a_₄ |100⟩ + _a_₅ |101⟩ + _a_₆ |110⟩ + _a_₇ |111⟩

    where, e.g., |010⟩ = (0,0,1,0,0,0,0,0)

The computational basis for a single qubit (two dimensions) is |0⟩ = (1,0) and |1⟩ = (0,1).

Using the eigenvectors of the Pauli-x operator, a single qubit is $|+\rangle = \tfrac{1}{\sqrt{2}} \left(1,1\right)$ and $|-\rangle = \tfrac{1}{\sqrt{2}} \left(1,-1\right)$.


Operation

While a classical 3-bit state and a quantum 3-qubit state are each eight-dimensional vectors, they are manipulated quite differently for classical or quantum computation. For computing in either case, the system must be initialized, for example into the all-zeros string, |000⟩, corresponding to the vector (1,0,0,0,0,0,0,0). In classical randomized computation, the system evolves according to the application of stochastic matrices, which preserve that the probabilities add up to one (i.e., preserve the L1 norm). In quantum computation, on the other hand, allowed operations are unitary matrices, which are effectively rotations (they preserve that the sum of the squares add up to one, the Euclidean or L2 norm). (Exactly what unitaries can be applied depend on the physics of the quantum device.) Consequently, since rotations can be undone by rotating backward, quantum computations are reversible. (Technically, quantum operations can be probabilistic combinations of unitaries, so quantum computation really does generalize classical computation. See quantum circuit for a more precise formulation.)

Finally, upon termination of the algorithm, the result needs to be read off. In the case of a classical computer, we _sample_ from the probability distribution on the three-bit register to obtain one definite three-bit string, say 000. Quantum mechanically, one _measures_ the three-qubit state, which is equivalent to collapsing the quantum state down to a classical distribution (with the coefficients in the classical state being the squared magnitudes of the coefficients for the quantum state, as described above), followed by sampling from that distribution. This destroys the original quantum state. Many algorithms will only give the correct answer with a certain probability. However, by repeatedly initializing, running and measuring the quantum computer's results, the probability of getting the correct answer can be increased. In contrast, counterfactual quantum computation allows the correct answer to be inferred when the quantum computer is not actually running in a technical sense, though earlier initialization and frequent measurements are part of the counterfactual computation protocol.

For more details on the sequences of operations used for various quantum algorithms, see universal quantum computer, Shor's algorithm, Grover's algorithm, Deutsch–Jozsa algorithm, amplitude amplification, quantum Fourier transform, quantum gate, quantum adiabatic algorithm and quantum error correction.


Potential

Cryptography

Integer factorization, which underpins the security of public key cryptographic systems, is believed to be computationally infeasible with an ordinary computer for large integers if they are the product of few prime numbers (e.g., products of two 300-digit primes).[16] By comparison, a quantum computer could efficiently solve this problem using Shor's algorithm to find its factors. This ability would allow a quantum computer to break many of the cryptographic systems in use today, in the sense that there would be a polynomial time (in the number of digits of the integer) algorithm for solving the problem. In particular, most of the popular public key ciphers are based on the difficulty of factoring integers or the discrete logarithm problem, both of which can be solved by Shor's algorithm. In particular, the RSA, Diffie–Hellman, and elliptic curve Diffie–Hellman algorithms could be broken. These are used to protect secure Web pages, encrypted email, and many other types of data. Breaking these would have significant ramifications for electronic privacy and security.

However, other cryptographic algorithms do not appear to be broken by those algorithms.[17][18] Some public-key algorithms are based on problems other than the integer factorization and discrete logarithm problems to which Shor's algorithm applies, like the McEliece cryptosystem based on a problem in coding theory.[19][20] Lattice-based cryptosystems are also not known to be broken by quantum computers, and finding a polynomial time algorithm for solving the dihedral hidden subgroup problem, which would break many lattice based cryptosystems, is a well-studied open problem.[21] It has been proven that applying Grover's algorithm to break a symmetric (secret key) algorithm by brute force requires time equal to roughly 2^(n/2) invocations of the underlying cryptographic algorithm, compared with roughly 2^(n) in the classical case,[22] meaning that symmetric key lengths are effectively halved: AES-256 would have the same security against an attack using Grover's algorithm that AES-128 has against classical brute-force search (see Key size). Quantum cryptography could potentially fulfill some of the functions of public key cryptography. Quantum-based cryptographic systems could, therefore, be more secure than traditional systems against quantum hacking.[23]

Quantum search

Besides factorization and discrete logarithms, quantum algorithms offering a more than polynomial speedup over the best known classical algorithm have been found for several problems,[24] including the simulation of quantum physical processes from chemistry and solid state physics, the approximation of Jones polynomials, and solving Pell's equation. No mathematical proof has been found that shows that an equally fast classical algorithm cannot be discovered, although this is considered unlikely.[25] However, quantum computers offer polynomial speedup for some problems. The most well-known example of this is _quantum database search_, which can be solved by Grover's algorithm using quadratically fewer queries to the database than that are required by classical algorithms. In this case, the advantage is not only provable but also optimal, it has been shown that Grover's algorithm gives the maximal possible probability of finding the desired element for any number of oracle lookups. Several other examples of provable quantum speedups for query problems have subsequently been discovered, such as for finding collisions in two-to-one functions and evaluating NAND trees.

Problems that can be addressed with Grover's algorithm have the following properties:

1.  There is no searchable structure in the collection of possible answers,
2.  The number of possible answers to check is the same as the number of inputs to the algorithm, and
3.  There exists a boolean function which evaluates each input and determines whether it is the correct answer

For problems with all these properties, the running time of Grover's algorithm on a quantum computer will scale as the square root of the number of inputs (or elements in the database), as opposed to the linear scaling of classical algorithms. A general class of problems to which Grover's algorithm can be applied[26] is Boolean satisfiability problem. In this instance, the _database_ through which the algorithm is iterating is that of all possible answers. An example (and possible) application of this is a password cracker that attempts to guess the password or secret key for an encrypted file or system. Symmetric ciphers such as Triple DES and AES are particularly vulnerable to this kind of attack.[27] This application of quantum computing is a major interest of government agencies.[28]

Quantum simulation

Since chemistry and nanotechnology rely on understanding quantum systems, and such systems are impossible to simulate in an efficient manner classically, many believe quantum simulation will be one of the most important applications of quantum computing.[29] Quantum simulation could also be used to simulate the behavior of atoms and particles at unusual conditions such as the reactions inside a collider.[30]

Quantum annealing and adiabatic optimization

Quantum annealing or Adiabatic quantum computation relies on the adiabatic theorem to undertake calculations. A system is placed in the ground state for a simple Hamiltonian, which is slowly evolved to a more complicated Hamiltonian whose ground state represents the solution to the problem in question. The adiabatic theorem states that if the evolution is slow enough the system will stay in its ground state at all times through the process.

Solving linear equations

The Quantum algorithm for linear systems of equations or "HHL Algorithm", named after its discoverers Harrow, Hassidim, and Lloyd, is expected to provide speedup over classical counterparts.[31]

Quantum supremacy

John Preskill has introduced the term _quantum supremacy_ to refer to the hypothetical speedup advantage that a quantum computer would have over a classical computer in a certain field.[32] Google announced in 2017 that it expected to achieve quantum supremacy by the end of the year though that did not happen. IBM said in 2018 that the best classical computers will be beaten on some practical task within about five years and views the quantum supremacy test only as a potential future benchmark.[33] Quantum supremacy has not been achieved yet, and skeptics like Gil Kalai doubt that it will ever be.[34][35] Bill Unruh doubted the practicality of quantum computers in a paper published back in 1994.[36] Paul Davies argued that a 400-qubit computer would even come into conflict with the cosmological information bound implied by the holographic principle.[37]


Obstacles

There are a number of technical challenges in building a large-scale quantum computer,[38] and thus far quantum computers have yet to solve a problem faster than a classical computer. David DiVincenzo, of IBM, listed the following requirements for a practical quantum computer:[39]

-   scalable physically to increase the number of qubits;
-   qubits that can be initialized to arbitrary values;
-   quantum gates that are faster than decoherence time;
-   universal gate set;
-   qubits that can be read easily.

Quantum decoherence

One of the greatest challenges is controlling or removing quantum decoherence. This usually means isolating the system from its environment as interactions with the external world cause the system to decohere. However, other sources of decoherence also exist. Examples include the quantum gates, and the lattice vibrations and background thermonuclear spin of the physical system used to implement the qubits. Decoherence is irreversible, as it is effectively non-unitary, and is usually something that should be highly controlled, if not avoided. Decoherence times for candidate systems in particular, the transverse relaxation time _T_₂ (for NMR and MRI technology, also called the _dephasing time_), typically range between nanoseconds and seconds at low temperature.[40] Currently, some quantum computers require their qubits to be cooled to 20 millikelvins in order to prevent significant decoherence.[41]

As a result, time-consuming tasks may render some quantum algorithms inoperable, as maintaining the state of qubits for a long enough duration will eventually corrupt the superpositions.[42]

These issues are more difficult for optical approaches as the timescales are orders of magnitude shorter and an often-cited approach to overcoming them is optical pulse shaping. Error rates are typically proportional to the ratio of operating time to decoherence time, hence any operation must be completed much more quickly than the decoherence time.

As described in the Quantum threshold theorem, if the error rate is small enough, it is thought to be possible to use quantum error correction to suppress errors and decoherence. This allows the total calculation time to be longer than the decoherence time if the error correction scheme can correct errors faster than decoherence introduces them. An often cited figure for the required error rate in each gate for fault-tolerant computation is 10^(−3), assuming the noise is depolarizing.

Meeting this scalability condition is possible for a wide range of systems. However, the use of error correction brings with it the cost of a greatly increased number of required qubits. The number required to factor integers using Shor's algorithm is still polynomial, and thought to be between _L_ and _L_², where _L_ is the number of qubits in the number to be factored; error correction algorithms would inflate this figure by an additional factor of _L_. For a 1000-bit number, this implies a need for about 10⁴ bits without error correction.[43] With error correction, the figure would rise to about 10⁷ bits. Computation time is about _L_² or about 10⁷ steps and at 1 MHz, about 10 seconds.

A very different approach to the stability-decoherence problem is to create a topological quantum computer with anyons, quasi-particles used as threads and relying on braid theory to form stable logic gates.[44][45]


Developments

Quantum computing models

There are a number of quantum computing models, distinguished by the basic elements in which the computation is decomposed. The four main models of practical importance are:

-   Quantum gate array (computation decomposed into a sequence of few-qubit quantum gates)
-   One-way quantum computer (computation decomposed into a sequence of one-qubit measurements applied to a highly entangled initial state or cluster state)
-   Adiabatic quantum computer, based on quantum annealing (computation decomposed into a slow continuous transformation of an initial Hamiltonian into a final Hamiltonian, whose ground states contain the solution)[46]
-   Topological quantum computer[47] (computation decomposed into the braiding of anyons in a 2D lattice)

The quantum Turing machine is theoretically important but the direct implementation of this model is not pursued. All four models of computation have been shown to be equivalent; each can simulate the other with no more than polynomial overhead.

Physical realizations

For physically implementing a quantum computer, many different candidates are being pursued, among them (distinguished by the physical system used to realize the qubits):

-   Superconducting quantum computing[48][49] (qubit implemented by the state of small superconducting circuits (Josephson junctions))
-   Trapped ion quantum computer (qubit implemented by the internal state of trapped ions)
-   Optical lattices (qubit implemented by internal states of neutral atoms trapped in an optical lattice)
-   Quantum dot computer, spin-based (e.g. the Loss-DiVincenzo quantum computer[50]) (qubit given by the spin states of trapped electrons)
-   Quantum dot computer, spatial-based (qubit given by electron position in double quantum dot)[51]
-   Coupled Quantum Wire (qubit implemented by a pair of Quantum Wires coupled by a Quantum Point Contact)[52][53][54]
-   Nuclear magnetic resonance quantum computer (NMRQC) implemented with the nuclear magnetic resonance of molecules in solution, where qubits are provided by nuclear spins within the dissolved molecule and probed with radio waves
-   Solid-state NMR Kane quantum computers (qubit realized by the nuclear spin state of phosphorus donors in silicon)
-   Electrons-on-helium quantum computers (qubit is the electron spin)
-   Cavity quantum electrodynamics (CQED) (qubit provided by the internal state of trapped atoms coupled to high-finesse cavities)
-   Molecular magnet[55] (qubit given by spin states)
-   Fullerene-based ESR quantum computer (qubit based on the electronic spin of atoms or molecules encased in fullerenes)
-   Linear optical quantum computer (qubits realized by processing states of different modes of light through linear elements e.g. mirrors, beam splitters and phase shifters)[56]
-   Diamond-based quantum computer[57][58][59] (qubit realized by the electronic or nuclear spin of nitrogen-vacancy centers in diamond)
-   Bose-Einstein condensate-based quantum computer[60]
-   Transistor-based quantum computer – string quantum computers with entrainment of positive holes using an electrostatic trap
-   Rare-earth-metal-ion-doped inorganic crystal based quantum computers[61][62] (qubit realized by the internal electronic state of dopants in optical fibers)
-   Metallic-like carbon nanospheres based quantum computers[63]

A large number of candidates demonstrates that the topic, in spite of rapid progress, is still in its infancy. There is also a vast amount of flexibility.

Timeline

In 1959, Richard Feynman, in his lecture "There's Plenty of Room at the Bottom", states the possibility of using quantum effects for computation.

In 1980, Paul Benioff described quantum mechanical Hamiltonian models of computers[64] and the Russian mathematician Yuri Manin motivated the development of quantum computers.[65]

In 1981, at a conference co-organized by MIT and IBM, physicist Richard Feynman urged the world to build a quantum computer. He said, "Nature isn't classical, dammit, and if you want to make a simulation of nature, you'd better make it quantum mechanical, and by golly, it's a wonderful problem because it doesn't look so easy."[66]

In 1984, IBM scientists Charles Bennett and Gilles Brassard published BB84, the world's first quantum cryptography protocol.

In 1985, David Deutsch describes the first universal quantum computer. Just as a Universal Turing machine can simulate any other Turing machine efficiently (Church-Turing thesis), so the universal quantum computer is able to simulate any other quantum computer with at most a polynomial slowdown.

In 1989, Bikas K. Chakrabarti & collaborators proposes the idea that quantum fluctuations could help explore rough energy landscapes by escaping from local minima of glassy systems having tall but thin barriers by tunneling (instead of climbing over using thermal excitations), suggesting the effectiveness of quantum annealing over classical simulated annealing.

In 1992, David Deutsch and Richard Jozsa propose a computational problem that can be solved efficiently with the determinist Deutsch–Jozsa algorithm on a quantum computer, but for which no deterministic classical algorithm is possible. This was perhaps the earliest result in the computational complexity of quantum computers, proving that they were capable of performing _some_ well-defined computational task more efficiently than any classical computer.

In 1993, an international group of six scientists, including Charles Bennett, showed that perfect quantum teleportation is possible[67] in principle, but only if the original is destroyed.

In 1994, Peter Shor, at AT&T's Bell Labs, discovered an important quantum algorithm, which allows a quantum computer to factor large integers exponentially much faster than the best known classical algorithm. Shor's algorithm can theoretically break many of the Public-key cryptography systems in use today,[68] sparking a tremendous interest in quantum computers.

In 1996, the DiVincenzo's criteria are published, which are a list of conditions that are necessary for constructing a quantum computer, proposed by the theoretical physicist David P. DiVincenzo in his 2000 paper "The Physical Implementation of Quantum Computation".

In 2001, researchers demonstrated Shor's algorithm to factor 15 using a 7-qubit NMR computer.[69]

In 2005, researchers at the University of Michigan built a semiconductor chip ion trap. Such devices from standard lithography may point the way to scalable quantum computing.[70]

In 2009, researchers at Yale University created the first solid-state quantum processor. The 2-qubit superconducting chip had artificial atom qubits made of a billion aluminum atoms that acted like a single atom that could occupy two states.[71][72]

A team at the University of Bristol also created a silicon chip based on quantum optics, able to run Shor's algorithm.[73] Further developments were made in 2010.[74] Springer publishes a journal, _Quantum Information Processing_, devoted to the subject.[75]

In February 2010, Digital Combinational Circuits like an adder, subtractor etc. are designed with the help of Symmetric Functions organized from different quantum gates.[76][77]

In April 2011, a team of scientists from Australia and Japan made a breakthrough in quantum teleportation, successfully transferring a complex set of quantum data with full transmission integrity, without affecting the qubits' superpositions.[78][79]

DWave_128chip.jpg Inc. Mounted and wire-bonded in a sample holder. The D-Wave processor is designed to use 128 superconducting logic elements that exhibit controllable and tunable coupling to perform operations.]]

In 2011, D-Wave Systems announced the first commercial quantum annealer, the D-Wave One, claiming a 128-qubit processor. On 25 May 2011, Lockheed Martin agreed to purchase a D-Wave One system.[80] Lockheed and the University of Southern California (USC) will house the D-Wave One at the newly formed _USC Lockheed Martin Quantum Computing Center_.[81] D-Wave's engineers designed the chips with an empirical approach, focusing on solving particular problems. Investors liked this more than academics, who said D-Wave had not demonstrated that they really had a quantum computer. Criticism softened after a D-Wave paper in _Nature_ that proved that the chips have some quantum properties.[82][83] Two published papers have suggested that the D-Wave machine's operation can be explained classically, rather than requiring quantum models.[84][85] Later work showed that classical models are insufficient when all available data is considered.[86] Experts remain divided on the ultimate classification of the D-Wave systems though their quantum behavior was established concretely with a demonstration of entanglement.[87]

During the same year, researchers at the University of Bristol created an all-bulk optics system that ran a version of Shor's algorithm to successfully factor 21.[88]

In September 2011, researchers proved quantum computers can be made with a Von Neumann architecture (separation of RAM).[89]

In November 2011, researchers factorized 143 using 4 qubits.[90]

In February 2012, IBM scientists said that they had made several breakthroughs in quantum computing with superconducting integrated circuits.[91]

In April 2012, a multinational team of researchers from the University of Southern California, the Delft University of Technology, the Iowa State University of Science and Technology, and the University of California, Santa Barbara constructed a 2-qubit quantum computer on a doped diamond crystal that can easily be scaled up and is functional at room temperature. Two logical qubit directions of electron spin and nitrogen kernels spin were used, with microwave pulses. This computer ran Grover's algorithm, generating the right answer on the first try in 95% of cases.[92]

In September 2012, Australian researchers at the University of New South Wales said the world's first quantum computer was just 5 to 10 years away, after announcing a global breakthrough enabling the manufacture of its memory building blocks. A research team led by Australian engineers created the first working qubit based on a single atom in silicon, invoking the same technological platform that forms the building blocks of modern-day computers.[93][94]

In October 2012, Nobel Prizes were awarded to David J. Wineland and Serge Haroche for their basic work on understanding the quantum world, which may help make quantum computing possible.[95][96]

In November 2012, the first quantum teleportation from one macroscopic object to another was reported by scientists at the University of Science and Technology of China.[97][98]

In December 2012, 1QBit, the first dedicated quantum computing software company, was founded in Vancouver, BC.[99] 1QBit is the first company to focus exclusively on commercializing software applications for commercially available quantum computers, including the D-Wave Two. 1QBit's research demonstrated the ability of superconducting quantum annealing processors to solve real-world problems.[100]

In February 2013, a new technique, boson sampling, was reported by two groups using photons in an optical lattice that is not a universal quantum computer, but may be good enough for practical problems.[101]

In May 2013, Google announced that it was launching the Quantum Artificial Intelligence Lab, hosted by NASA's Ames Research Center, with a 512-qubit D-Wave quantum computer. The Universities Space Research Association (USRA) will invite researchers to share time on it with the goal of studying quantum computing for machine learning.[102] Google added that they had "already developed some quantum machine learning algorithms" and had "learned some useful principles", such as that "best results" come from "mixing quantum and classical computing".[103]

In early 2014, based on documents provided by former NSA contractor Edward Snowden, it was reported that the U.S. National Security Agency (NSA) is running a $79.7 million research program titled "Penetrating Hard Targets", to develop a quantum computer capable of breaking vulnerable encryption.[104]

In 2014, a group of researchers from ETH Zürich, USC, Google, and Microsoft reported a definition of quantum speedup, and were not able to measure quantum speedup with the D-Wave Two device, but did not explicitly rule it out.[105][106]

In 2014, researchers at University of New South Wales used silicon as a protectant shell around qubits, making them more accurate, increasing the length of time they will hold information, and possibly making quantum computers easier to build.[107]

In April 2015, IBM scientists claimed two critical advances towards the realization of a practical quantum computer, claiming the ability to detect and measure both kinds of quantum errors simultaneously, as well as a new, square quantum bit circuit design that could scale to larger dimensions.[108]

In October 2015, QuTech successfully conducted the Loophole-free Bell inequality violation test using electron spins separated by 1.3 kilometres.[109]

In October 2015, researchers at the University of New South Wales built a quantum logic gate in silicon for the first time.[110]

In December 2015, NASA publicly displayed the world's first fully operational quantum computer made by D-Wave Systems at the Quantum Artificial Intelligence Lab at its Ames Research Center. The device was purchased in 2013 via a partnership with Google and Universities Space Research Association. The presence and use of quantum effects in the D-Wave quantum processing unit is more widely accepted.[111] In some tests, it can be shown that the D-Wave quantum annealing processor outperforms Selby’s algorithm.[112] Only two of these computers have been made so far.

In May 2016, IBM Research announced[113] that for the first time ever it is making quantum computing available to members of the public via the cloud, who can access and run experiments on IBM’s quantum processor, calling the service the IBM Quantum Experience. The quantum processor is composed of five superconducting qubits and is housed at IBM's Thomas J. Watson Research Center.

In August 2016, scientists at the University of Maryland successfully built the first reprogrammable quantum computer.[114]

In October 2016, the University of Basel described a variant of the electron-hole based quantum computer, which instead of manipulating electron spins, uses electron holes in a semiconductor at low (mK) temperatures, which are much less vulnerable to decoherence. This has been dubbed the "positronic" quantum computer, as the quasi-particle behaves as if it has a positive electrical charge.[115]

In March 2017, IBM announced an industry-first initiative, called _IBM Q_, to build commercially available universal quantum computing systems. The company also released a new API for the IBM Quantum Experience that enables developers and programmers to begin building interfaces between its existing 5-qubit cloud-based quantum computer and classical computers, without needing a deep background in quantum physics.

In May 2017, IBM announced[116] that it had successfully built and tested its most powerful universal quantum computing processors. The first is a 16-qubit processor that will allow for more complex experimentation than the previously available 5-qubit processor. The second is IBM's first prototype commercial processor with 17 qubits, and leverages significant materials, device, and architecture improvements to make it the most powerful quantum processor created to date by IBM.

In July 2017, a group of U.S. researchers announced a quantum simulator with 51 qubits. The announcement was made by Mikhail Lukin of Harvard University at the International Conference on Quantum Technologies in Moscow.[117] A quantum simulator differs from a computer. Lukin’s simulator was designed to solve one equation. Solving a different equation would require building a new system, whereas a computer can solve many different equations.

In September 2017, IBM Research scientists used a 7-qubit device to model beryllium hydride molecule, the largest molecule to date by a quantum computer.[118] The results were published as the cover story in the peer-reviewed journal Nature.

In October 2017, IBM Research scientists successfully "broke the 49-qubit simulation barrier" and simulated 49- and 56-qubit short-depth circuits, using the Lawrence Livermore National Laboratory's Vulcan supercomputer, and the University of Illinois' Cyclops Tensor Framework (originally developed at the University of California).[119]

In November 2017, the University of Sydney research team successfully made a microwave circulator, an important quantum computer part, that was 1000 times smaller than a conventional circulator, by using topological insulators to slow down the speed of light in a material.[120]

In December 2017, IBM announced[121] its first IBM Q Network clients. The companies, universities, and labs that will explore practical business and science quantum applications, using IBM Q 20-qubit commercial systems, include: JPMorgan Chase, Daimler AG, Samsung, JSR Corporation, Barclays, Hitachi Metals, Honda, Nagase, Keio University, Oak Ridge National Lab, Oxford University and University of Melbourne.

In December 2017, Microsoft released a preview version of a "Quantum Development Kit",[122] which includes a programming language, Q# that can be used to write programs that are run on an emulated quantum computer.

In 2017, D-Wave was reported to be selling a 2,000-qubit quantum computer.[123]

In late 2017 and early 2018, IBM,[124] Intel,[125] and Google[126] each reported testing quantum processors containing 50, 49, and 72 qubits, respectively, all realized using superconducting circuits. By number of qubits, these circuits are approaching the range in which simulating their quantum dynamics is expected to become prohibitive on classical computers, although it has been argued that further improvements in error rates are needed to put classical simulation out of reach.[127]

In February 2018, scientists reported, for the first time, the discovery of a new form of light, which may involve polaritons, that could be useful in the development of quantum computers.[128][129]

In February 2018, QuTech reported successfully testing a silicon-based two-spin-qubits quantum processor.[130]

In June 2018, Intel began testing a silicon-based spin-qubit processor, manufactured in the company's D1D Fab in Oregon.[131]

In July 2018, a team led by the University of Sydney achieved the world's first multi-qubit demonstration of a quantum chemistry calculation performed on a system of trapped ions, one of the leading hardware platforms in the race to develop a universal quantum computer.[132]

In December 2018, IonQ reported that its machine could be built as large as 160 qubits.[133]

In January 2019, IBM launched IBM Q System One, its first integrated quantum computing system for commercial use.[134][135] IBM Q System One is designed by industrial design company Map Project Office and interior design company Universal Design Studio[136].

In March 2019, a group of Russian scientists used the open-access IBM quantum computer to demonstrate a protocol for the complex conjugation of the probability amplitudes needed for time reversal of a physical process,[137] in this case, for an electron scattered on a two-level impurity, a two-qubit experiment. However, for the three-qubit experiment, the amplitude fell below 50% (failure of time reversal, due to its increased complexity).[138]


Relation to computational complexity theory

BQP_complexity_class_diagram.svg The class of problems that can be efficiently solved by quantum computers is called BQP, for "bounded error, quantum, polynomial time". Quantum computers only run probabilistic algorithms, so BQP on quantum computers is the counterpart of BPP ("bounded error, probabilistic, polynomial time") on classical computers. It is defined as the set of problems solvable with a polynomial-time algorithm, whose probability of error is bounded away from one half.[139] A quantum computer is said to "solve" a problem if, for every instance, its answer will be right with high probability. If that solution runs in polynomial time, then that problem is in BQP.

BQP is contained in the complexity class _#P_ (or more precisely in the associated class of decision problems _P^(#P)_),[140] which is a subclass of PSPACE.

BQP is suspected to be disjoint from NP-complete and a strict superset of P, but that is not known. Both integer factorization and discrete log are in BQP. Both of these problems are NP problems suspected to be outside BPP, and hence outside P. Both are suspected to not be NP-complete. There is a common misconception that quantum computers can solve NP-complete problems in polynomial time. That is not known to be true, and is generally suspected to be false.[141]

The capacity of a quantum computer to accelerate classical algorithms has rigid limits—upper bounds of quantum computation's complexity. The overwhelming part of classical calculations cannot be accelerated on a quantum computer.[142] A similar fact prevails for particular computational tasks, like the search problem, for which Grover's algorithm is optimal.[143]

Bohmian Mechanics is a non-local hidden variable interpretation of quantum mechanics. It has been shown that a non-local hidden variable quantum computer could implement a search of an _N_-item database at most in $O(\sqrt[3]{N})$ steps. This is slightly faster than the $O(\sqrt{N})$ steps taken by Grover's algorithm. Neither search method will allow quantum computers to solve NP-Complete problems in polynomial time.[144]

Although quantum computers may be faster than classical computers for some problem types, those described above cannot solve any problem that classical computers cannot already solve. A Turing machine can simulate these quantum computers, so such a quantum computer could never solve an undecidable problem like the halting problem. The existence of "standard" quantum computers does not disprove the Church–Turing thesis.[145] It has been speculated that theories of quantum gravity, such as M-theory or loop quantum gravity, may allow even faster computers to be built. Currently, _defining_ computation in such theories is an open problem due to the _problem of time_, i.e., there currently exists no obvious way to describe what it means for an observer to submit input to a computer and later receive output.[146][147]


See also


References


Further reading

-   -   -   -   -   -   -   -   Table 1 lists switching and dephasing times for various systems.

-   -   -   -   -   -   -   Lomonaco, Sam. Four Lectures on Quantum Computing given at Oxford University in July 2006
-   -   -   -   -   -   -   -   -   -   -   Indian Science News Association, _Special Issue of "Science & Culture" on 'A Quantum Jump in Computation'_, Vol. 85 (5-6), May-June (2019)


External links

-   Stanford Encyclopedia of Philosophy: "Quantum Computing" by Amit Hagar.
-   -   Maryland University Laboratory for Physical Sciences: conducts researches for the quantum computer-based project led by the NSA, named 'Penetrating Hard Target'.
-   Visualized history of quantum computing
-   -   -   Patenting in the field of quantum computing

Lectures

-   Quantum computing for the determined – 22 video lectures by Michael Nielsen
-   Video Lectures by David Deutsch
-   Lectures at the Institut Henri Poincaré (slides and videos)
-   Online lecture on An Introduction to Quantum Computing, Edward Gerjuoy (2008)
-

Quantum_information_science Category:Quantum computing Category:Models of computation Category:Quantum cryptography Category:Information theory Category:Computational complexity theory Category:Classes of computers Category:Theoretical computer science Category:Open problems Category:Computer-related introductions in 1980 Category:Emerging technologies

[1]

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

[17] Daniel J. Bernstein, _Introduction to Post-Quantum Cryptography_. Introduction to Daniel J. Bernstein, Johannes Buchmann, Erik Dahmen (editors). Post-quantum cryptography. Springer, Berlin, 2009.

[18] See also pqcrypto.org, a bibliography maintained by Daniel J. Bernstein and Tanja Lange on cryptography not known to be broken by quantum computing.

[19]

[20] Robert J. McEliece. "A public-key cryptosystem based on algebraic coding theory." Jet Propulsion Laboratory DSN Progress Report 42–44, 114–116.

[21]

[22] Bennett C.H., Bernstein E., Brassard G., Vazirani U., "The strengths and weaknesses of quantum computation". _SIAM Journal on Computing_ 26(5): 1510–1523 (1997).

[23]

[24] Quantum Algorithm Zoo – Stephen Jordan's Homepage

[25]

[26]

[27]

[28]

[29]

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

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75] "Quantum Information Processing". Springer.com. Retrieved on 2011-05-19.

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137] G. B. Lesovik, I. A. Sadovskyy, M. V. Suslov, A. V. Lebedev & V. M. Vinokur (13 March 2019) Arrow of time and its reversal on the IBM quantum computer. _Nature_ Scientific Reports volume 9, Article number: 4396 (2019)

[138] Aakash Jhaveri (14 March 2019) Scientists Were Able to Reverse Time, But There's A Catch

[139] Nielsen, p. 41

[140]

[141]

[142]

[143]

[144]

[145] Nielsen, p. 126

[146]  See section 7 "Quantum Gravity": "[…] to anyone who wants a test or benchmark for a favorite quantum gravity theory,[author's footnote: That is, one without all the bother of making numerical predictions and comparing them to observation] let me humbly propose the following: _can you define Quantum Gravity Polynomial-Time?_ […] until we can say what it means for a 'user' to specify an 'input' and ‘later' receive an 'output'—_there is no such thing as computation, not even theoretically._" (emphasis in original)

[147]