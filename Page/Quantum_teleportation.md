QUANTUM TELEPORTATION is a process by which quantum information (e.g. the exact state of an atom or photon) can be transmitted (exactly, in principle) from one location to another, with the help of classical communication and previously shared quantum entanglement between the sending and receiving location. Because it depends on classical communication, which can proceed no faster than the speed of light, it cannot be used for faster-than-light transport or communication of classical bits. While it has proven possible to teleport one or more qubits of information between two (entangled) quanta,[1][2][3] this has not yet been achieved between anything larger than molecules.[4]

Although the name is inspired by the teleportation commonly used in fiction, quantum teleportation is limited to the transfer of information rather than matter itself. Quantum teleportation is not a form of transportation, but of communication: it provides a way of transporting a qubit from one location to another without having to move a physical particle along with it.

The term was coined by physicist Charles Bennett. The seminal paper[5] first expounding the idea of quantum teleportation was published by C. H. Bennett, G. Brassard, C. Crépeau, R. Jozsa, A. Peres, and W. K. Wootters in 1993.[6] Quantum teleportation was first realized in single photons,[7] later being demonstrated in various material systems such as atoms, ions, electrons and superconducting circuits. The latest reported record distance for quantum teleportation is by the group of Jian-Wei Pan using the Micius satellite for space-based quantum teleportation.[8][9][10]


Non-technical summary

In matters relating to quantum or classical information theory, it is convenient to work with the simplest possible unit of information, the two-state system. In classical information, this is a bit, commonly represented using one or zero (or true or false). The quantum analog of a bit is a quantum bit, or qubit. Qubits encode a type of information, called quantum information, which differs sharply from "classical" information. For example, quantum information can be neither copied (the no-cloning theorem) nor destroyed (the no-deleting theorem).

Quantum teleportation provides a mechanism of moving a qubit from one location to another, without having to physically transport the underlying particle to which that qubit is normally attached. Much like the invention of the telegraph allowed classical bits to be transported at high speed across continents, quantum teleportation holds the promise that one day, qubits could be moved likewise.[11][12] the quantum states of single photons, photon modes, single atoms, atomic ensembles, defect centers in solids, single electrons, and superconducting circuits have been employed as information bearers.[13]

The movement of qubits does not require the movement of "things" any more than communication over the internet does: no quantum object needs to be transported, but it is necessary to communicate two classical bits per teleported qubit from the sender to the receiver. The actual teleportation protocol requires that an entangled quantum state or Bell state be created, and its two parts shared between two locations (the source and destination, or Alice and Bob). In essence, a certain kind of quantum channel between two sites must be established first, before a qubit can be moved. Teleportation also requires a classical information channel to be established, as two classical bits must be transmitted to accompany each qubit. The reason for this is that the results of the measurements must be communicated, and this must be done over ordinary classical communication channels. The need for such classical channels may, at first, seem disappointing; however, this is not unlike ordinary communications, which requires wires, radios or lasers. What's more, Bell states are most easily shared using photons from lasers, and so teleportation could be done, in principle, through open space, i.e., without the need to send the light through cables or optical fibers.

The quantum states of single atoms have been teleported.[14][15][16] Quantum states can be encoded in various degrees of freedom of atoms. For example, qubits can be encoded in the degrees of freedom of electrons surrounding the atomic nucleus or in the degrees of freedom of the nucleus itself. It is inaccurate to say "an atom has been teleported". It is the quantum state of an atom that is teleported. Thus, performing this kind of teleportation requires a stock of atoms at the receiving site, available for having qubits imprinted on them.[17] The importance of teleporting nuclear state is unclear: nuclear state does affect the atom, e.g. in hyperfine splitting, but whether such state would need to be teleported in some futuristic "practical" application is debatable.

An important aspect of quantum information theory is entanglement, which imposes statistical correlations between otherwise distinct physical systems. These correlations hold even when measurements are chosen and performed independently, out of causal contact from one another, as verified in Bell test experiments. Thus, an observation resulting from a measurement choice made at one point in spacetime seems to instantaneously affect outcomes in another region, even though light hasn't yet had time to travel the distance; a conclusion seemingly at odds with special relativity (EPR paradox). However such correlations can never be used to transmit any information faster than the speed of light, a statement encapsulated in the no-communication theorem. Thus, teleportation, as a whole, can never be superluminal, as a qubit cannot be reconstructed until the accompanying classical information arrives.

Understanding quantum teleportation requires a good grounding in finite-dimensional linear algebra, Hilbert spaces and projection matrixes. A qubit is described using a two-dimensional complex number-valued vector space (a Hilbert space), which are the primary basis for the formal manipulations given below. A working knowledge of quantum mechanics is not absolutely required to understand the mathematics of quantum teleportation, although without such acquaintance, the deeper meaning of the equations may remain quite mysterious.


Protocol

The prerequisites for quantum teleportation are a qubit that is to be teleported, a conventional communication channel capable of transmitting two classical bits (i.e., one of four states), and means of generating an entangled EPR pair of qubits, transporting each of these to two different locations, A and B, performing a Bell measurement on one of the EPR pair qubits, and manipulating the quantum state of the other pair. The protocol is then as follows:

1.  An EPR pair is generated, one qubit sent to location A, the other to B.
2.  At location A, a Bell measurement of the EPR pair qubit and the qubit to be teleported (the quantum state |ϕ⟩) is performed, yielding one of four measurement outcomes, which can be encoded in two classical bits of information. Both qubits at location A are then discarded.
3.  Using the classical channel, the two bits are sent from A to B. (This is the only potentially time-consuming step after step 1, due to speed-of-light considerations.)
4.  As a result of the measurement performed at location A, the EPR pair qubit at location B is in one of four possible states. Of these four possible states, one is identical to the original quantum state |ϕ⟩, and the other three are closely related. Which of these four possibilities actually obtained, is encoded in the two classical bits. Knowing this, the EPR pair qubit at location B is modified in one of three ways, or not at all, to result in a qubit identical to |ϕ⟩, the qubit that was chosen for teleportation.

It is worth to notice that the above protocol assumes that the qubits are individually addressable, that means the qubits are distinguishable and physically labeled. However, there can be situations where two identical qubits are indistinguishable due to the spatial overlap of their wave functions. Under this condition, the qubits cannot be individually controlled or measured. Nevertheless, a teleportation protocol analogous to that described above can still be (conditionally) implemented by exploiting two independently-prepared qubits, with no need of an initial EPR pair. This can be made by addressing the internal degrees of freedom of the qubits (e.g., spins or polarizations) by spatially localized measurements performed in separated regions A and B shared by the wave functions of the two indistinguishable qubits.[18]


Experimental results and records

Work in 1998 verified the initial predictions,[19] and the distance of teleportation was increased in August 2004 to 600 meters, using optical fiber.[20] Subsequently, the record distance for quantum teleportation has been gradually increased to ,[21] then to ,[22] and is now , set in open air experiments in the Canary Islands, done between the two astronomical observatories of the Instituto de Astrofísica de Canarias.[23] There has been a recent record set () using superconducting nanowire detectors that reached the distance of over optical fiber.[24] For material systems, the record distance is .[25]

A variant of teleportation called "open-destination" teleportation, with receivers located at multiple locations, was demonstrated in 2004 using five-photon entanglement.[26] Teleportation of a composite state of two single photons has also been realized.[27] In April 2011, experimenters reported that they had demonstrated teleportation of wave packets of light up to a bandwidth of 10 MHz while preserving strongly nonclassical superposition states.[28][29] In August 2013, the achievement of "fully deterministic" quantum teleportation, using a hybrid technique, was reported.[30] On 29 May 2014, scientists announced a reliable way of transferring data by quantum teleportation. Quantum teleportation of data had been done before but with highly unreliable methods.[31][32] On 26 February 2015, scientists at the University of Science and Technology of China in Hefei, led by Chao-yang Lu and Jian-Wei Pan carried out the first experiment teleporting multiple degrees of freedom of a quantum particle. They managed to teleport the quantum information from ensemble of rubidium atoms to another ensemble of rubidium atoms over a distance of using entangled photons.[33][34][35] In 2016, researchers demonstrated quantum teleportation with two independent sources which are separated by in Hefei optical fiber network.[36] In September 2016, researchers at the University of Calgary demonstrated quantum teleportation over the Calgary metropolitan fiber network over a distance of .[37]

Researchers have also successfully used quantum teleportation to transmit information between clouds of gas atoms, notable because the clouds of gas are macroscopic atomic ensembles.[38][39]

In 2018, physicists at Yale demonstrated a deterministic teleported CNOT operation between logically encoded qubits.[40]


Formal presentation

There are a variety of ways in which the teleportation protocol can be written mathematically. Some are very compact but abstract, and some are verbose but straightforward and concrete. The presentation below is of the latter form: verbose, but has the benefit of showing each quantum state simply and directly. Later sections review more compact notations.

The teleportation protocol begins with a quantum state or qubit |ψ⟩, in Alice's possession, that she wants to convey to Bob. This qubit can be written generally, in bra–ket notation, as:

|_ψ_⟩_(_C_) = _α_|0⟩_(_C_) + _β_|1⟩_(_C_).

The subscript _C_ above is used only to distinguish this state from _A_ and _B_, below.

Next, the protocol requires that Alice and Bob share a maximally entangled state. This state is fixed in advance, by mutual agreement between Alice and Bob, and can be any one of the four Bell states shown. It does not matter which one.

$$|\Phi^+\rangle_{AB} = \frac{1}{\sqrt{2}} (|0\rangle_A \otimes |0\rangle_{B} + |1\rangle_A \otimes |1\rangle_{B})$$
,

$$|\Phi^-\rangle_{AB} = \frac{1}{\sqrt{2}} (|0\rangle_A \otimes |0\rangle_{B} - |1\rangle_A \otimes |1\rangle_{B})$$
,

$$|\Psi^+\rangle_{AB} = \frac{1}{\sqrt{2}} (|0\rangle_A \otimes |1\rangle_{B} + |1\rangle_A \otimes |0\rangle_{B})$$
,

$$|\Psi^-\rangle_{AB} = \frac{1}{\sqrt{2}} (|0\rangle_A \otimes |1\rangle_{B} - |1\rangle_A \otimes |0\rangle_{B})$$
.

In the following, assume that Alice and Bob share the state |Φ⁺⟩_(AB). Alice obtains one of the particles in the pair, with the other going to Bob. (This is implemented by preparing the particles together and shooting them to Alice and Bob from a common source.) The subscripts _A_ and _B_ in the entangled state refer to Alice's or Bob's particle.

At this point, Alice has two particles (_C_, the one she wants to teleport, and _A_, one of the entangled pair), and Bob has one particle, _B_. In the total system, the state of these three particles is given by

$$|\psi\rangle_C\otimes|\Phi^+\rangle_{AB}   = (\alpha |0\rangle_C + \beta|1\rangle_C)\otimes\frac{1}{\sqrt{2}} (|0\rangle_A \otimes |0\rangle_B + |1\rangle_A \otimes |1\rangle_B) .$$

Alice will then make a local measurement in the Bell basis (i.e. the four Bell states) on the two particles in her possession. To make the result of her measurement clear, it is best to write the state of Alice's two qubits as superpositions of the Bell basis. This is done by using the following general identities, which are easily verified:

$$|0\rangle \otimes |0\rangle = \frac{1}{\sqrt{2}} (|\Phi^+\rangle + |\Phi^-\rangle),$$

$$|0\rangle \otimes |1\rangle = \frac{1}{\sqrt{2}} (|\Psi^+\rangle + |\Psi^-\rangle),$$

$$|1\rangle \otimes |0\rangle = \frac{1}{\sqrt{2}} (|\Psi^+\rangle - |\Psi^-\rangle),$$

and

$$|1\rangle \otimes |1\rangle = \frac{1}{\sqrt{2}} (|\Phi^+\rangle - |\Phi^-\rangle).$$

One applies these identities with _A_ and _C_ subscripts. The total three particle state, of _A_, _B_ and _C_ together, thus becomes the following four-term superposition:

$$\begin{align}
| & \psi\rangle_C \otimes\ |\Phi^+\rangle_{AB} \   = \\
\frac{1}{2} \Big \lbrack
\ & |\Phi^+\rangle_{AC} \otimes (\alpha |0\rangle_B + \beta|1\rangle_B)
\ + \ |\Phi^-\rangle_{AC} \otimes (\alpha |0\rangle_B - \beta|1\rangle_B) \\
\ + \ & |\Psi^+\rangle_{AC} \otimes (\beta |0\rangle_B + \alpha|1\rangle_B)
\ + \ |\Psi^-\rangle_{AC} \otimes (\alpha |1\rangle_B - \beta|0\rangle_B) \Big \rbrack . \\
\end{align}$$
[41]

The above is just a change of basis on Alice's part of the system. No operation has been performed and the three particles are still in the same total state. The actual teleportation occurs when Alice measures her two qubits A,C, in the Bell basis

|_Φ_⁺⟩_(_A__C_), |_Φ_^(−)⟩_(_A__C_), |_Ψ_⁺⟩_(_A__C_), |_Ψ_^(−)⟩_(_A__C_)
.

Experimentally, this measurement may be achieved via a series of laser pulses directed at the two particles. Given the above expression, evidently the result of Alice's (local) measurement is that the three-particle state would collapse to one of the following four states (with equal probability of obtaining each):

-   |Φ⁺⟩_(AC) ⊗ (α|0⟩_(B) + β|1⟩_(B))
-   |Φ^(−)⟩_(AC) ⊗ (α|0⟩_(B) − β|1⟩_(B))
-   |Ψ⁺⟩_(AC) ⊗ (α|1⟩_(B) + β|0⟩_(B))
-   |Ψ^(−)⟩_(AC) ⊗ (α|1⟩_(B) − β|0⟩_(B))

Alice's two particles are now entangled to each other, in one of the four Bell states, and the entanglement originally shared between Alice's and Bob's particles is now broken. Bob's particle takes on one of the four superposition states shown above. Note how Bob's qubit is now in a state that resembles the state to be teleported. The four possible states for Bob's qubit are unitary images of the state to be teleported.

The result of Alice's Bell measurement tells her which of the above four states the system is in. She can now send her result to Bob through a classical channel. Two classical bits can communicate which of the four results she obtained.

After Bob receives the message from Alice, he will know which of the four states his particle is in. Using this information, he performs a unitary operation on his particle to transform it to the desired state α|0⟩_(B) + β|1⟩_(B):

-   If Alice indicates her result is |Φ⁺⟩_(AC), Bob knows his qubit is already in the desired state and does nothing. This amounts to the trivial unitary operation, the identity operator.
-   If the message indicates |Φ^(−)⟩_(AC), Bob would send his qubit through the unitary quantum gate given by the Pauli matrix

$$\sigma_3 = \begin{bmatrix} 1 & 0 \\ 0 & -1\end{bmatrix}$$

to recover the state.

-   If Alice's message corresponds to |Ψ⁺⟩_(AC), Bob applies the gate

$$\sigma_1 = \begin{bmatrix} 0 & 1 \\ 1 & 0\end{bmatrix}$$

to his qubit.

-   Finally, for the remaining case, the appropriate gate is given by

$$\sigma_1 \sigma_3  =  - \sigma_3 \sigma_1 =  -i \sigma_2 = \begin{bmatrix} 0 & -1 \\ 1 & 0\end{bmatrix}.$$

Teleportation is thus achieved. The above-mentioned three gates correspond to rotations of π radians (180°) about appropriate axes (X, Y and Z). ] Some remarks:

-   After this operation, Bob's qubit will take on the state |ψ⟩_(B) = α|0⟩_(B) + β|1⟩_(B), and Alice's qubit becomes an (undefined) part of an entangled state. Teleportation does not result in the copying of qubits, and hence is consistent with the no cloning theorem.
-   There is no transfer of matter or energy involved. Alice's particle has not been physically moved to Bob; only its state has been transferred. The term "teleportation", coined by Bennett, Brassard, Crépeau, Jozsa, Peres and Wootters, reflects the indistinguishability of quantum mechanical particles.
-   For every qubit teleported, Alice needs to send Bob two classical bits of information. These two classical bits do not carry complete information about the qubit being teleported. If an eavesdropper intercepts the two bits, she may know exactly what Bob needs to do in order to recover the desired state. However, this information is useless if she cannot interact with the entangled particle in Bob's possession.

Quantum circuit for a single qubit quantum teleportation is demonstrated using Q-Kit, a quantum circuit simulator with graphical interface. Alice's state in qubit 2 is transferred to Bob's qubit 0 using a priorly entangled pair of qubits between Alice and Bob, qubits 1 and 0.


Alternative notations

representation of quantum teleportation]]

There are a variety of different notations in use that describe the teleportation protocol. One common one is by using the notation of quantum gates. In the above derivation, the unitary transformation that is the change of basis (from the standard product basis into the Bell basis) can be written using quantum gates. Direct calculation shows that this gate is given by

_G_ = (_H_ ⊗ _I_) _C__(_N_)

where _H_ is the one qubit Walsh-Hadamard gate and C_(N) is the Controlled NOT gate.


Entanglement swapping

Teleportation can be applied not just to pure states, but also mixed states, that can be regarded as the state of a single subsystem of an entangled pair. The so-called entanglement swapping is a simple and illustrative example.

If Alice has a particle which is entangled with a particle owned by Bob, and Bob teleports it to Carol, then afterwards, Alice's particle is entangled with Carol's.

A more symmetric way to describe the situation is the following: Alice has one particle, Bob two, and Carol one. Alice's particle and Bob's first particle are entangled, and so are Bob's second and Carol's particle:

                      ___
                     /   \
 Alice-:-:-:-:-:-Bob1 -:- Bob2-:-:-:-:-:-Carol
                     ___/

Now, if Bob does a projective measurement on his two particles in the Bell state basis and communicates the results to Carol, as per the teleportation scheme described above, the state of Bob's first particle can be teleported to Carol's. Although Alice and Carol never interacted with each other, their particles are now entangled.

A detailed diagrammatic derivation of entanglement swapping has been given by Bob Coecke,[42] presented in terms of categorical quantum mechanics.


Generalizations of the Teleportation Protocol

The basic teleportation protocol for a qubit described above has been generalized in several directions, in particular regarding the dimension of the system teleported and the number of parties involved (either as sender, controller, or receiver).

_d_-dimensional systems

A generalization to d-level systems (so-called qudits) is straight forward and was already discussed in the original paper by Bennett _et al._:[43] the maximally entangled state of two qubits has to be replaced by a maximally entangled state of two qudits and the Bell measurement by a measurement defined by a maximally entangled orthonormal basis. All possible such generalizations were discussed by Werner in 2001.[44] The generalization to infinite-dimensional so-called continuous-variable systems was proposed in [45] and lead to the first teleportation experiment that worked unconditionally.[46]

Multipartite versions

The use of multipartite entangled states instead of a bipartite maximally entangled state allows for several new features: either the sender can teleport information to several receivers either sending the same state to all of them (which allows to reduce the amount of entanglement needed for the process) [47] or teleporting multipartite states [48] or sending a single state in such a way that the receiving parties need to cooperate to extract the information.[49] A different way of viewing the latter setting is that some of the parties can control whether the others can teleport.


Logic gate teleportation

In general, mixed states ρ may be transported, and a linear transformation ω applied during teleportation, thus allowing data processing of quantum information. This is one of the foundational building blocks of quantum information processing. This is demonstrated below.

General description

A general teleportation scheme can be described as follows. Three quantum systems are involved. System 1 is the (unknown) state _ρ_ to be teleported by Alice. Systems 2 and 3 are in a maximally entangled state _ω_ that are distributed to Alice and Bob, respectively. The total system is then in the state

_ρ_ ⊗ _ω_.

A successful teleportation process is a LOCC quantum channel Φ that satisfies

(Tr₁₂ ∘ _Φ_)(_ρ_ ⊗ _ω_) = _ρ_ ,

where Tr₁₂ is the partial trace operation with respect systems 1 and 2, and ∘ denotes the composition of maps. This describes the channel in the Schrödinger picture.

Taking adjoint maps in the Heisenberg picture, the success condition becomes

⟨_Φ_(_ρ_ ⊗ _ω_)|_I_ ⊗ _O_⟩ = ⟨_ρ_|_O_⟩

for all observable _O_ on Bob's system. The tensor factor in I ⊗ O is 12 ⊗ 3 while that of ρ ⊗ ω is 1 ⊗ 23.

Further details

The proposed channel Φ can be described more explicitly. To begin teleportation, Alice performs a local measurement on the two subsystems (1 and 2) in her possession. Assume the local measurement have _effects_

_F__(_i_) = _M__(_i_)².

If the measurement registers the _i_-th outcome, the overall state collapses to

(_M__(_i_) ⊗ _I_)(_ρ_ ⊗ _ω_)(_M__(_i_) ⊗ _I_).

The tensor factor in (M_(i) ⊗ I) is 12 ⊗ 3 while that of ρ ⊗ ω is 1 ⊗ 23. Bob then applies a corresponding local operation Ψ__(i)_ on system 3. On the combined system, this is described by

(_I__d_ ⊗ _Ψ__(_i_))(_M__(_i_) ⊗ _I_)(_ρ_ ⊗ _ω_)(_M__(_i_) ⊗ _I_).

where _Id_ is the identity map on the composite system 1 ⊗ 2.

Therefore, the channel Φ is defined by

_Φ_(_ρ_ ⊗ _ω_) = ∑_(_i_)(_I__d_ ⊗ _Ψ__(_i_))(_M__(_i_) ⊗ _I_)(_ρ_ ⊗ _ω_)(_M__(_i_) ⊗ _I_)

Notice Φ satisfies the definition of LOCC. As stated above, the teleportation is said to be successful if, for all observable _O_ on Bob's system, the equality

⟨_Φ_(_ρ_ ⊗ _ω_), _I_ ⊗ _O_⟩ = ⟨_ρ_, _O_⟩

holds. The left hand side of the equation is:

∑_(_i_)⟨(_I__d_ ⊗ _Ψ__(_i_))(_M__(_i_) ⊗ _I_)(_ρ_ ⊗ _ω_)(_M__(_i_) ⊗ _I_), _I_ ⊗ _O_⟩

 = ∑_(_i_)⟨(_M__(_i_) ⊗ _I_)(_ρ_ ⊗ _ω_)(_M__(_i_) ⊗ _I_), _I_ ⊗ _Ψ__(_i_)^(*)(_O_)⟩

where Ψ__(i)*_ is the adjoint of Ψ__(i)_ in the Heisenberg picture. Assuming all objects are finite dimensional, this becomes

∑_(_i_)Tr  (_ρ_ ⊗ _ω_)(_F__(_i_) ⊗ _Ψ__(_i_)^(*)(_O_)).

The success criterion for teleportation has the expression

∑_(_i_)Tr  (_ρ_ ⊗ _ω_)(_F__(_i_) ⊗ _Ψ__(_i_)^(*)(_O_)) = Tr  _ρ_ ⋅ _O_.


Local explanation of the phenomenon

A local explanation of quantum teleportation is put forward by David Deutsch and Patrick Hayden, with respect to the many-worlds interpretation of quantum mechanics. Their paper asserts that the two bits that Alice sends Bob contain "locally inaccessible information" resulting in the teleportation of the quantum state. "The ability of quantum information to flow through a classical channel ..., surviving decoherence, is ... the basis of quantum teleportation."[50]


See also

-   Quantum complex network
-   Quantum mechanics
    -   Introduction to quantum mechanics
    -   Quantum computer
    -   Quantum cryptography
    -   Quantum energy teleportation
    -   Quantum nonlocality
    -   Heisenberg uncertainty principle
-   Wheeler–Feynman absorber theory


References

Specific

General

-   Review on theory and experiments:
    -

-   Theoretical proposal:
    -   C. H. Bennett, G. Brassard, C. Crépeau, R. Jozsa, A. Peres, W. K. Wootters, _Teleporting an Unknown Quantum State via Dual Classical and Einstein–Podolsky–Rosen Channels_, Phys. Rev. Lett. 70, 1895–1899 (1993) (pdf). This is the seminal paper that laid out the entanglement protocol.
    -   -   (1)

    -   -   A. Peres, "What is actually teleported?", _IBM Journal of Research and Development_ Vol. 48, Issue 1, (2004)(this document online)
    -   G. Rigolin, _Quantum Teleportation of an Arbitrary Two Qubit State and its Relation to Multipartite Entanglement_, Phys. Rev. A 71 2005; 032303 (this document online)
    -   Shi-Biao Zheng (2004) "Scheme for approximate conditional teleportation of an unknown atomic state without the Bell-state measurement", Phys. Rev. A 69, 064302
    -   W. B. Cardoso, A. T. Avelar, B. Baseia, and N. G. de Almeida, "Teleportation of entangled states without Bell-state measurement", Phys. Rev. A 72, 045802 (2005).
    -   Michael N. Leuenberger, Michael E. Flatte, David D. Awschalom, "Teleportation of Electronic Many-Qubit States Encoded in the Electron Spin of Quantum Dots via Single Photons", Phys. Rev. Lett. 94, 107401 (2005).
    -   A. N. Pyrkov, Tim Byrnes, "Quantum teleportation of spin coherent states: beyond continuous variables teleportation", New J. Phys. 16, 073038 (2014) (this document online)
    -   Yuchuan Wei, How to teleport a PARTICLE rather than a state, Phys Rev E93 (2016)066103.

-   First experiments with photons:
    -   D. Bouwmeester, J.-W. Pan, K. Mattle, M. Eibl, H. Weinfurter, A. Zeilinger, _Experimental Quantum Teleportation_, Nature 390, 6660, 575-579 (1997).
    -   D. Boschi, S. Branca, F. De Martini, L. Hardy, & S. Popescu, _Experimental Realization of Teleporting an Unknown Pure Quantum State via Dual classical and Einstein–Podolsky–Rosen channels_, Phys. Rev. Lett. 80, 6, 1121–1125 (1998)
    -   -   -

-   First experiments with atoms:
    -   -   -


External links

-   Loophole-free Bell test - Kavli Institute of Nanoscience
-   "Spooky action and beyond" - Interview with Prof. Dr. Anton Zeilinger about quantum teleportation. Date: 2006-02-16
-   Quantum Teleportation at IBM
-   Physicists Succeed In Transferring Information Between Matter And Light
-   Quantum telecloning: Captain Kirk's clone and the eavesdropper
-   Teleportation-based approaches to universal quantum computation
-   Teleportation as a quantum computation
-   Quantum teleportation with atoms: quantum process tomography
-   Entangled State Teleportation
-   Fidelity of quantum teleportation through noisy channels by
-   TelePOVM— A generalized quantum teleportation scheme
-   Entanglement Teleportation via Werner States
-   Quantum Teleportation of a Polarization State
-   The Time Travel Handbook: A Manual of Practical Teleportation & Time Travel
-   letters to nature: Deterministic quantum teleportation with atoms
-   Quantum teleportation with a complete Bell state measurement
-   Welcome to the quantum Internet. _Science News_, Aug. 16 2008.
-   Quantum experiments - interactive.
-   A (mostly serious) introduction to quantum teleportation for non-physicists
-   Q-Kit Graphical Quantum Circuit Simulator, a desktop application for building and customizing quantum gates and circuits, simulating up to 20-qubit systems.

Category:Quantum information science Category:Quantum computing Category:Emerging technologies Category:Teleportation

[1]

[2]

[3]

[4]

[5]

[6] A. Zeilinger, _Dance of the Photons_, Farrar, Straus and Giroux, New York, 2010, p. 46. ("The quantum mechanical solution [to teleportation] was proposed in 1993 by an international collaboration of six theoretical physicists: Charles Bennett of IBM; Gilles Brassard, Claude Crépeau, and Richard Jozsa of the University of Montreal; Asher Peres of the Technion (the Israel Institute of Technology in Haifa), and William K. Wootters of Williams College... The Bennett-Brassard-Crépeau-Jozsa-Peres-Wootters paper has the title 'Teleporting an Unknown Quantum State via Dual Classical and Einstein-Podolsky-Rosen channels.' To have the word 'teleporting' in the title of a physics paper was quite unusual at the time, since teleportation was considered to be part of science fiction and a somewhat shaky topic. But apparently, there was no better name for the interesting theoretical discovery these scientists made, and it was a very fitting name indeed.")

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] New York Times, Scientists Teleport Not Kirk, but an Atom (2004)

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

[26] Nature 430, 54-58 (1 July 2004) http://www.nature.com/nature/journal/v430/n6995/full/nature02643.html

[27] Experimental quantum teleportation of a two-qubit composite system Qiang Zhang, Alexander Goebel, Claudia Wagenknecht, Yu-Ao Chen, Bo Zhao, Tao Yang, Alois Mair, Jörg Schmiedmayer & Jian-Wei Pan Nature Physics 2, 678–682

[28]

[29]

[30] Takeda et al., "Deterministic quantum teleportation of photonic quantum bits by a hybrid technique", _Nature_, August 2013.

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40] K.S. Chou et al., _Deterministic teleportation of a quantum gate between two logical qubits._ https://arxiv.org/abs/1801.05283

[41]

[42] Bob Coecke, "The logic of entanglement". _Research Report PRG-RR-03-12_, 2003. arXiv:quant-ph/0402014 (8 page shortversion) (full 160 page version)

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]