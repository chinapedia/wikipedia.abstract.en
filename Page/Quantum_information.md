In physics and computer science, QUANTUM INFORMATION is the information of the state of a quantum system. It is the basic entity of study in QUANTUM INFORMATION THEORY,[1] and can be manipulated using quantum information processing techniques. Quantum information refers to both the technical definition in terms of Von Neumann entropy and the general computational term.

Quantum Information, like classical information, can be processed using digital computers, transmitted from one location to another, manipulated with algorithms, and analyzed with computer science and mathematics. Recently, the field quantum computing has become an active research area because of the possibility to disrupt modern computation, communication, and cryptography.


Qubits and quantum information

Quantum information differs strongly from classical information, epitomized by the bit, in many striking and unfamiliar ways. While the fundamental unit of classical information is the bit, the most basic unit of quantum information is the qubit. Classical information is measured using Shannon Entropy, while the quantum mechanical analogue is Von Neumann entropy. Given a statistical ensemble of quantum mechanical systems with the density matrix ρ, it is given by S(ρ) =  − Tr (ρln ρ).  [2] Many of the same entropy measures in classical information theory can also be generalized to the quantum case, such as Holevo entropy[3] and the conditional quantum entropy.

Unlike classical digital states (which are discrete), a qubit is continuous-valued, describable by a direction on the Bloch sphere. Despite being continuously valued in this way, a qubit is the _smallest_ possible unit of quantum information, as despite the qubit state being continuously-valued, it is impossible to measure the value precisely. Three famous theorems describe the limits on manipulation of quantum information.[4]

1.  no-teleportation theorem, which states that a qubit cannot be (wholly) converted into classical bits; that is, it cannot be "read".
2.  no cloning theorem, which prevents an arbitrary qubit from being copied.
3.  no-deleting theorem, which prevents an arbitrary qubit from being deleted.
4.  no-broadcast theorem, Although a single qubit can be transported from place to place (_e.g._ via quantum teleportation), it cannot be delivered to multiple recipients.

These theorems prove that quantum information within the universe is conserved. They open up possibilities in quantum information processing.


Quantum information processing

The state of a qubit contains all of its information. This state is frequently expressed as a vector on the Bloch sphere. This state can be changed by applying linear transformations or quantum gates to them. These Unitary transformation (quantum mechanics) are described as rotations on the Bloch Sphere. While classical gates correspond to the familiar operations of Boolean logic, quantum gates are physical unitary operators.

-   Due to the volatility of quantum systems and the impossibility of copying states, the storing of quantum information is much more difficult than storing classical information. Nevertheless, with the use of quantum error correction quantum information can still be reliably stored in principle. The existence of quantum error correcting codes has also led to the possibility of fault tolerant quantum computation.
-   Classical bits can be encoded into and subsequently retrieved from configurations of qubits, through the use of quantum gates. By itself, a single qubit can convey no more than one bit of accessible classical information about its preparation. This is Holevo's theorem. However, in superdense coding a sender, by acting on one of two entangled qubits, can convey two bits of accessible information about their joint state to a receiver.
-   Quantum information can be moved about, in a quantum channel, analogous to the concept of a classical communications channel. Quantum messages have a finite size, measured in qubits; quantum channels have a finite channel capacity, measured in qubits per second.
-   Quantum information, and changes in quantum information, can be quantitatively measured by using an analogue of Shannon entropy, called the von Neumann entropy.
-   In some cases quantum algorithms can be used to perform computations faster than in any known classical algorithm. The most famous example of this is Shor's algorithm that can factor numbers in polynomial time, compared to the best classical algorithms that take sub-exponential time. As factorization is an important part of the safety of RSA encryption, Shor's algorithm sparked the new field of post-quantum cryptography that tries to find encryption schemes that remain safe even when quantum computers are in play. Other examples of algorithms that demonstrate quantum supremacy include Grover's search algorithm, where the quantum algorithm gives a quadratic speed-up over the best possible classical algorithm. The complexity class of problems efficiently solvable by a quantum computer is known as BQP.
-   Quantum key distribution (QKD) allows unconditionally secure transmission of classical information, unlike classical encryption, which can always be broken in principle, if not in practice. Do note that certain subtle points regarding the safety of QKD are still hotly debated.

The study of all of the above topics and differences comprises quantum information theory.


Relation to quantum mechanics

Quantum mechanics is the study of how microscopic physical systems change dynamically in nature. In the field of quantum information theory, the quantum systems studied are abstracted away from any real world counterpart. A qubit might for instance physically be a photon in a linear optical quantum computer, an ion in a trapped ion quantum computer, or it might be a large collection of atoms as in a superconducting quantum computer. Regardless of the physical implementation, the limits and features of qubits implied by quantum information theory hold as all these systems are all mathematically described by the same apparatus of density matrices over the complex numbers. Another important difference with quantum mechanics is that, while quantum mechanics often studies infinite-dimensional systems such as a harmonic oscillator, quantum information theory concerns both with continuous-variable systems [5] and finite-dimensional systems [6] [7][8] .


Journals

Many journals publish research in quantum information science, although only a few are dedicated to this area. Among these are

-   _International Journal of Quantum Information_
-   _Quantum Information & Computation_
-   _Quantum Information Processing_
-   _npj Quantum Information_[9]
-   _Quantum_[10]
-   _Quantum Science and Technology_[11]


See also

-   Categorical quantum mechanics
-   Einstein's thought experiments
-   Interpretations of quantum mechanics
-   POVM (positive operator valued measure)
-   Quantum clock
-   Quantum cognition
-   Quantum foundations
-   Quantum information science
-   Quantum statistical mechanics
-   Qutrit
-   Typical subspace


References

-   Charles H. Bennett and Peter W. Shor, "Quantum Information Theory," _IEEE Transactions on Information Theory,_ Vol 44, pp 2724–2742, Oct 1998|
-   Gregg Jaeger's book on Quantum Information(published by Springer, New York, 2007, )
-   Lectures at the Institut Henri Poincaré (slides and videos)
-   International Journal of Quantum Information World Scientific
-   Quantum Information Processing Springer
-   Michael A. Nielsen, Isaac L. Chuang, "Quantum Computation and Quantum Information"
-   J. Watrous, The Theory of Quantum Information (Cambridge Univ. Press, 2018). Freely available at 2
-   John Preskill, Course Information for Physics 219/Computer Science 219 Quantum Computation, Caltech 3
-   Masahito Hayashi, "Quantum Information: An Introduction"
-   Masahito Hayashi, "Quantum Information Theory: Mathematical Foundation"
-   Charles H. Bennett, Peter W. Shor, "Quantum Information Theory"45
-   -   Vlatko Vedral, "Introduction to Quantum Information Science"
-   Christian Weedbrook, Stefano Pirandola, Raul Garcia-Patron, Nicolas J. Cerf, Timothy C. Ralph, Jeffrey H. Shapiro, Seth Lloyd "Gaussian Quantum Information", arXiv:1110.3234

it:Informazione quantistica

Category:Quantum information theory

[1]

[2]

[3]

[4]

[5] Christian Weedbrook, Stefano Pirandola, Raul Garcia-Patron, Nicolas J. Cerf, Timothy C. Ralph, Jeffrey H. Shapiro, Seth Lloyd "Gaussian Quantum Information", arXiv:1110.3234}

[6] Masahito Hayashi, "Quantum Information Theory: Mathematical Foundation"

[7] J. Watrous, The Theory of Quantum Information (Cambridge Univ. Press, 2018). Freely available at 1

[8]

[9]

[10]

[11]