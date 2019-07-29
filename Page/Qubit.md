In quantum computing, a QUBIT () or QUANTUM BIT (sometimes QBIT) is the basic unit of quantum information—the quantum version of the classical binary bit physically realized with a two-state device. A qubit is a two-state (or two-level) quantum-mechanical system, one of the simplest quantum systems displaying the peculiarity of quantum mechanics. Examples include: the spin of the electron in which the two levels can be taken as spin up and spin down; or the polarization of a single photon in which the two states can be taken to be the vertical polarization and the horizontal polarization. In a classical system, a bit would have to be in one state or the other. However, quantum mechanics allows the qubit to be in a coherent superposition of both states/levels simultaneously, a property which is fundamental to quantum mechanics and quantum computing.


Etymology

The coining of the term _qubit_ is attributed to Benjamin Schumacher.[1] In the acknowledgments of his 1995 paper, Schumacher states that the term _qubit_ was created in jest during a conversation with William Wootters. The paper describes a way of compressing states emitted by a quantum source of information so that they require fewer physical resources to store. This procedure is now known as Schumacher compression.


Bit versus qubit[2]

A binary digit, characterized as 0 and 1, is used to represent information in classical computers. A binary digit can represent up to one bit of Shannon information, where a bit is the basic unit of information. However, in this article, the word bit is synonymous with binary digit.

In classical computer technologies, a _processed_ bit is implemented by one of two levels of low DC voltage, and whilst switching from one of these two levels to the other, a so-called forbidden zone must be passed as fast as possible, as electrical voltage cannot change from one level to another _instantaneously_.

There are two possible outcomes for the measurement of a qubit—usually taken to have the value "0" and "1", like a bit or binary digit. However, whereas the state of a bit can only be either 0 or 1, the general state of a qubit according to quantum mechanics can be a coherent superposition of both.[3] Moreover, whereas a measurement of a classical bit would not disturb its state, a measurement of a qubit would destroy its coherence and irrevocably disturb the superposition state. It is possible to fully encode one bit in one qubit. However, a qubit can hold more information, e.g. up to two bits using superdense coding.

For a system of _n_ components, a complete description of its state in classical physics requires only _n_ bits, whereas in quantum physics it requires 2^(_n_)−1 complex numbers.[4]


Standard representation

In quantum mechanics, the general quantum state of a qubit can be represented by a linear superposition of its two orthonormal basis states (or basis vectors). These vectors are usually denoted as $| 0 \rangle = \bigl[\begin{smallmatrix}
1\\
0
\end{smallmatrix}\bigr]$ and $| 1 \rangle = \bigl[\begin{smallmatrix}
0\\
1
\end{smallmatrix}\bigr]$. They are written in the conventional Dirac—or "bra–ket"—notation; the |0⟩ and |1⟩ are pronounced "ket 0" and "ket 1", respectively. These two orthonormal basis states, {|0⟩, |1⟩}, together called the computational basis, are said to span the two-dimensional linear vector (Hilbert) space of the qubit.

Qubit basis states can also be combined to form product basis states. For example, two qubits could be represented in a four-dimensional linear vector space spanned by the following product basis states: $| 00 \rangle = \biggl[\begin{smallmatrix}
1\\
0\\
0\\
0
\end{smallmatrix}\biggr]$, $| 01 \rangle = \biggl[\begin{smallmatrix}
0\\
1\\
0\\
0
\end{smallmatrix}\biggr]$, $| 10 \rangle = \biggl[\begin{smallmatrix}
0\\
0\\
1\\
0
\end{smallmatrix}\biggr]$, and $| 11 \rangle = \biggl[\begin{smallmatrix}
0\\
0\\
0\\
1
\end{smallmatrix}\biggr]$.

In general, _n_ qubits are represented by a superposition state vector in 2^(_n_)-dimensional Hilbert space.


Qubit states

A pure qubit state is a coherent superposition of the basis states. This means that a single qubit can be described by a linear combination of |0⟩ and |1⟩:

    |ψ⟩ = α|0⟩ + β|1⟩

where α and β are probability amplitudes and can in general both be complex numbers. When we measure this qubit in the standard basis, according to the Born rule, the probability of outcome |0⟩ with value "0" is |α|² and the probability of outcome |1⟩ with value "1" is |β|². Because the absolute squares of the amplitudes equate to probabilities, it follows that α and β must be constrained by the equation

    |α|² + |β|² = 1.

Note that a qubit in this superposition state does not have a value in between "0" and "1"; rather, when measured, the qubit has a probability |α|² of the value “0” and a probability |β|² of the value "1". In other words, superposition means that there is no way, even in principle, to tell which of the two possible states forming the superposition state actually pertains. Furthermore, the probability amplitudes, α and β, encode more than just the probabilities of the outcomes of a measurement; the _relative phase_ of α and β is responsible for quantum interference, _e.g._, as seen in the two-slit experiment.

Bloch sphere representation

Bloch_sphere.svg representation of a qubit. The probability amplitudes for the superposition state, |ψ⟩ = α|0⟩ + β|1⟩,  are given by $\alpha = \cos\left(\frac{\theta}{2}\right)$ and $\beta = e^{i \phi}  \sin\left(\frac{\theta}{2}\right)$.]]

It might, at first sight, seem that there should be four degrees of freedom in |ψ⟩ = α|0⟩ + β|1⟩ , as α and β are complex numbers with two degrees of freedom each. However, one degree of freedom is removed by the normalization constraint _α_{{!}}² + {{!}}_β_{{!}}² {{=}} 1}}. This means, with a suitable change of coordinates, one can eliminate one of the degrees of freedom. One possible choice is that of Hopf coordinates:

$$\begin{align}
\alpha &= e^{i \psi} \cos\frac{\theta}{2}, \\
\beta &= e^{i (\psi + \phi)} \sin\frac{\theta}{2}.
\end{align}$$
Additionally, for a single qubit the overall phase of the state has no physically observable consequences, so we can arbitrarily choose to be real (or in the case that is zero), leaving just two degrees of freedom:

$$\begin{align}
\alpha &= \cos\frac{\theta}{2}, \\
\beta &= e^{i \phi} \sin\frac{\theta}{2},
\end{align}$$
where e^(iϕ) is the physically significant _relative phase_.

The possible quantum states for a single qubit can be visualised using a Bloch sphere (see diagram). Represented on such a 2-sphere, a classical bit could only be at the "North Pole" or the "South Pole", in the locations where |0⟩ and |1⟩ are respectively. This particular choice of the polar axis is arbitrary, however. The rest of the surface of the Bloch sphere is inaccessible to a classical bit, but a pure qubit state can be represented by any point on the surface. For example, the pure qubit state $((|0 \rangle +i|1 \rangle)/{\sqrt{2}})$ would lie on the equator of the sphere at the positive y-axis. In the classical limit, a qubit, which can have quantum states anywhere on the Bloch sphere, reduces to the classical bit, which can be found only at either poles.

The surface of the Bloch sphere is a two-dimensional space, which represents the state space of the pure qubit states. This state space has two local degrees of freedom, which can be represented by the two angles ϕ and θ.

Mixed state

A pure state is one fully specified by a single ket, |ψ⟩ = α|0⟩ + β|1⟩,  a coherent superposition as described above. Coherence is essential for a qubit to be in a superposition state. With interactions and decoherence, it is possible to put the qubit in a mixed state, a statistical combination or incoherent mixture of different pure states. Mixed states can be represented by points _inside_ the Bloch sphere (or in the Bloch ball). A mixed qubit state has three degrees of freedom: the angles ϕ and θ, as well as the length r of the vector that represents the mixed state.

Operations on pure qubit states

There are various kinds of physical operations that can be performed on pure qubit states.

-   Quantum logic gates, building blocks for a quantum circuit in a quantum computer, operate on one, two, or three qubits: mathematically, the qubits undergo a (reversible) unitary transformation under the quantum gate. For a single qubit, unitary transformations correspond to rotations of the qubit (unit) vector on the Bloch sphere to specific superpositions. For two qubits, the Controlled NOT gate can be used to entangle or disentangle them.
-   Standard basis measurement is an irreversible operation in which information is gained about the state of a single qubit (and coherence is lost). The result of the measurement will be either |0⟩ (with probability |α|²) or |1⟩ (with probability |β|²). Measurement of the state of the qubit alters the magnitudes of α and β. For instance, if the result of the measurement is |1⟩, α is changed to 0 and β is changed to the phase factor e^(iϕ) no longer experimentally accessible. When a qubit is measured, the superposition state collapses to a basis state (up to a phase) and the relative phase is rendered inaccessible (i.e., coherence is lost). Note that a measurement of a qubit state that is entangled with another quantum system transforms the qubit state, a pure state, into a mixed state (an incoherent mixture of pure states) as the relative phase of the qubit state is rendered inaccessible.


Quantum entanglement

An important distinguishing feature between qubits and classical bits is that multiple qubits can exhibit quantum entanglement. Quantum entanglement is a nonlocal property of two or more qubits that allows a set of qubits to express higher correlation than is possible in classical systems.

The simplest system to display quantum entanglement is the system of two qubits. Consider, for example, two entangled qubits in the |Φ⁺⟩ Bell state:

$$\frac{1}{\sqrt{2}} (|00\rangle + |11\rangle).$$

In this state, called an _equal superposition_, there are equal probabilities of measuring either product state |00⟩ or |11⟩, as $|1/\sqrt{2}|^2 = 1/2$. In other words, there is no way to tell if the first qubit has value “0” or “1” and likewise for the second qubit.

Imagine that these two entangled qubits are separated, with one each given to Alice and Bob. Alice makes a measurement of her qubit, obtaining—with equal probabilities—either |0⟩ or |1⟩, i.e., she can now tell if her qubit has value “0” or “1”. Because of the qubits' entanglement, Bob must now get exactly the same measurement as Alice. For example, if she measures a |0⟩, Bob must measure the same, as |00⟩ is the only state where Alice's qubit is a |0⟩. In short, for these two entangled qubits, whatever Alice measures, so would Bob, with _perfect_ correlation, in any basis, however far apart they may be and even though both can not tell if their qubit has value “0” or “1” — a most surprising circumstance that can _not_ be explained by classical physics.

Controlled gate to construct the Bell state

Controlled gates act on 2 or more qubits, where one or more qubits act as a control for some specified operation. In particular, the controlled NOT gate (or CNOT or cX) acts on 2 qubits, and performs the NOT operation on the second qubit only when the first qubit is |1⟩, and otherwise leaves it unchanged. With respect to the unentangled product basis {|00⟩, |01⟩, |10⟩, |11⟩}, it maps the basis states as follows:

|00⟩ ↦ |00⟩

|01⟩ ↦ |01⟩

|10⟩ ↦ |11⟩

|11⟩ ↦ |10⟩
.

A common application of the C_(NOT) gate is to maximally entangle two qubits into the |Φ⁺⟩ Bell state. To construct |Φ⁺⟩, the inputs A (control) and B (target) to the C_(NOT) gate are:

$\frac{1}{\sqrt{2}}(|0\rangle + |1\rangle)_A$ and |0⟩_(B)

After applying C_(NOT), the output is the |Φ⁺⟩ Bell State: $\frac{1}{\sqrt{2}}(|00\rangle + |11\rangle)$.

Applications

The |Φ⁺⟩ Bell state forms part of the setup of the superdense coding, quantum teleportation, and entangled quantum cryptography algorithms.

Quantum entanglement also allows multiple states (such as the Bell state mentioned above) to be acted on simultaneously, unlike classical bits that can only have one value at a time. Entanglement is a necessary ingredient of any quantum computation that cannot be done efficiently on a classical computer. Many of the successes of quantum computation and communication, such as quantum teleportation and superdense coding, make use of entanglement, suggesting that entanglement is a resource that is unique to quantum computation.[5] A major hurdle facing quantum computing, as of 2018, in its quest to surpass classical digital computing, is noise in quantum gates that limits the size of quantum circuits that can be executed reliably.[6]


Quantum register

A number of qubits taken together is a qubit register. Quantum computers perform calculations by manipulating qubits within a register. A QUBYTE (quantum byte) is a collection of eight qubits.[7]

Variations of the qubit

Similar to the qubit, the qutrit is the unit of quantum information that can be realized in suitable 3-level quantum systems. This is analogous to the unit of classical information trit of ternary computers. Note, however, that not all 3-level quantum systems are qutrits.[8] The term "QU-_D_-IT" (_QUantum_ D_-gIT_) denotes the unit of quantum information that can be realized in suitable _d_-level quantum systems.[9]


Physical implementations

Any two-level quantum-mechanical system can be used as a qubit. Multilevel systems can be used as well, if they possess two states that can be effectively decoupled from the rest (e.g., ground state and first excited state of a nonlinear oscillator). There are various proposals. Several physical implementations that approximate two-level systems to various degrees were successfully realized. Similarly to a classical bit where the state of a transistor in a processor, the magnetization of a surface in a hard disk and the presence of current in a cable can all be used to represent bits in the same computer, an eventual quantum computer is likely to use various combinations of qubits in its design.

The following is an incomplete list of physical implementations of qubits, and the choices of basis are by convention only.

  Physical support                  Name                                 Information support       |0⟩                                        |1⟩
  --------------------------------- ------------------------------------ ------------------------- ------------------------------------------ ------------------------------------------------------------------
  Photon                            Polarization encoding                Polarization of light     Horizontal                                 Vertical
  Number of photons                 Fock state                           Vacuum                    Single photon state
  Time-bin encoding                 Time of arrival                      Early                     Late
  Coherent state of light           Squeezed light                       Quadrature                Amplitude-squeezed state                   Phase-squeezed state
  Electrons                         Electronic spin                      Spin                      Up                                         Down
  Electron number                   Charge                               No electron               One electron
  Nucleus                           Nuclear spin addressed through NMR   Spin                      Up                                         Down
  Optical lattices                  Atomic spin                          Spin                      Up                                         Down
  Josephson junction                Superconducting charge qubit         Charge                    Uncharged superconducting island (_Q_=0)   Charged superconducting island (_Q_=2_e_, one extra Cooper pair)
  Superconducting flux qubit        Current                              Clockwise current         Counterclockwise current
  Superconducting phase qubit       Energy                               Ground state              First excited state
  Singly charged quantum dot pair   Electron localization                Charge                    Electron on left dot                       Electron on right dot
  Quantum dot                       Dot spin                             Spin                      Down                                       Up
  Gapped topological system         Non-abelian anyons                   Braiding of Excitations   Depends on specific topological system     Depends on specific topological system


Qubit storage

In a paper entitled "Solid-state quantum memory using the ³¹P nuclear spin", published in the October 23, 2008, issue of the journal _Nature_,[10] a team of scientists from the U.K. and U.S. reported the first relatively long (1.75 seconds) and coherent transfer of a superposition state in an electron spin "processing" qubit to a nuclear spin "memory" qubit. This event can be considered the first relatively consistent quantum data storage, a vital step towards the development of quantum computing. Recently, a modification of similar systems (using charged rather than neutral donors) has dramatically extended this time, to 3 hours at very low temperatures and 39 minutes at room temperature.[11] Room temperature preparation of a qubit based on electron spins instead of nuclear spin was also demonstrated by a team of scientists from Switzerland and Australia.[12]


See also

-   Two-state quantum system
-   Ancilla bit
-   Photonic computer
-   W state
-   Physical and logical qubits


Further reading

-   A good introduction to the topic is the book by Nielsen and Chuang.[13]
-   An excellent treatment of two-level quantum systems, decades before the term “qubit” was coined, is found in the third volume of The Feynman Lectures on Physics (2013 ebook edition).
-   A non-traditional motivation of the qubit aimed at non-physicists is found in Quantum Computing Since Democritus, by Scott Aaronson, Cambridge University Press (2013).
-   A good introduction to qubits for non-specialists, by the person who coined the word, is found in Lecture 21 of ‘‘The science of information: from language to black holes’’, by Professor Benjamin Schumacher, The Great Courses, The Teaching Company (4DVDs, 2015).
-   A picture-book introduction to entanglement, contrasting classical systems and a Bell state, is found in “Quantum entanglement for babies“, by Chris Ferrie (2017).


References

Category:Quantum computing Category:Quantum information science Category:Quantum states Category:Teleportation Category:Units of information

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