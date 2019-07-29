In physics, the NO-CLONING THEOREM states that it is impossible to create an identical copy of an arbitrary unknown quantum state. This no-go theorem of quantum mechanics was articulated by James Park in proving the impossibility of a simple perfect non-disturbing measurement scheme,[1] in 1970 and rediscovered by Wootters and Zurek[2] and by Dieks[3] in 1982. It has profound implications in quantum computing and related fields. The state of one system can be entangled with the state of another system. For instance, one can use the controlled NOT gate and the Walsh–Hadamard gate to entangle two qubits. This is not cloning. No well-defined state can be attributed to a subsystem of an entangled state. Cloning is a process, the result of which is a separable state with identical factors.

The no-cloning theorem is normally stated and proven for pure states; the no-broadcast theorem generalizes this result to mixed states.

The no-cloning theorem has a time-reversed dual, the no-deleting theorem. Together, these underpin the interpretation of quantum mechanics in terms of category theory, and, in particular, as a dagger compact category.[4][5] This formulation, known as categorical quantum mechanics, allows, in turn, a connection to be made from quantum mechanics to linear logic as the logic of quantum information theory (in the same sense that classical logic arises from Cartesian closed categories).


History

According to Asher Peres[6] and David Kaiser,[7] the publication of the 1982 proof of the no-cloning theorem by Wootters and Zurek[8] and by Dieks[9] was prompted by a proposal of Nick Herbert[10] for a superluminal communication device using quantum entanglement. However, Ortigoso[11] pointed out in 2018 that a complete proof along with an interpretation in terms of the lack of simple nondisturbing measurements in quantum mechanics was already delivered by Park in 1970.[12]


Theorem and proof

Suppose we have two quantum systems _A_ and _B_ with a common Hilbert space H = H_(A) = H_(B). Suppose we want to have a procedure to copy the state |ϕ⟩_(A) of quantum system _A_, in quantum system _B_ irrespective of the original state |ϕ⟩_(A) (see bra–ket notation). That is, beginning with the state |ϕ⟩_(A), we want to end up with the state |ϕ⟩_(A) ⊗ |ϕ⟩_(B). To make a "copy" of the state _A_, we combine it with system _B_ in some unknown initial, or blank, state |e⟩_(B) independent of |ϕ⟩_(A), of which we have no prior knowledge. The state of the composite system is then described by the following tensor product:

|_ϕ_⟩_(_A_) ⊗ |_e_⟩_(_B_).

(in the following we will omit the ⊗ symbol and keep it implicit). There are only two permissible quantum operations with which we may manipulate the composite system.

We can perform an observation, which irreversibly collapses the system into some eigenstate of an observable, corrupting the information contained in the qubit(s). This is obviously not what we want.

Alternatively, we could control the Hamiltonian of the _combined_ system, and thus the time-evolution operator _U_(_t_), e.g. for a time-independent Hamiltonian, U(t) = e^( − iHt/ℏ). Evolving up to some fixed time t₀ yields a unitary operator _U_ on H ⊗ H, the Hilbert space of the combined system. However, no such unitary operator _U_ can clone all states.

THEOREM: There is no unitary operator _U_ on H ⊗ H such that for all normalised states |ϕ⟩_(A) and |e⟩_(B) in H

_U_(|_ϕ_⟩_(_A_)|_e_⟩_(_B_)) = _e_^(_i__α_(_ϕ_, _e_))|_ϕ_⟩_(_A_)|_ϕ_⟩_(_B_)

for some real number α depending on ϕ and e.

The extra phase factor expresses the fact that a quantum-mechanical state defines a normalised vector in Hilbert space only up to a phase factor i.e. as an element of projectivised Hilbert space.

To prove the theorem, we select an arbitrary pair of states |ϕ⟩_(A) and |ψ⟩_(A) in the Hilbert space H. Because _U_ is unitary,

⟨_ϕ_|_ψ_⟩⟨_e_|_e_⟩ ≡ ⟨_ϕ_|_(_A_)⟨_e_|_(_B_)|_ψ_⟩_(_A_)|_e_⟩_(_B_) = ⟨_ϕ_|_(_A_)⟨_e_|_(_B_)_U_^(†)_U_|_ψ_⟩_(_A_)|_e_⟩_(_B_) = _e_^( − _i_(_α_(_ϕ_, _e_) − _α_(_ψ_, _e_)))⟨_ϕ_|_(_A_)⟨_ϕ_|_(_B_)|_ψ_⟩_(_A_)|_ψ_⟩_(_B_) ≡ _e_^( − _i_(_α_(_ϕ_, _e_) − _α_(_ψ_, _e_)))⟨_ϕ_|_ψ_⟩².

Since the quantum state |e⟩ is assumed to be normalized, we thus get

|⟨_ϕ_|_ψ_⟩|² = |⟨_ϕ_|_ψ_⟩|.

This implies that either |⟨ϕ|ψ⟩| = 1 or |⟨ϕ|ψ⟩| = 0. Hence by the Cauchy–Schwarz inequality either ϕ = e^(iβ)ψ or ϕ is orthogonal to ψ. However, this cannot be the case for two _arbitrary_ states. Therefore, a single universal _U_ cannot clone a _general_ quantum state. This proves the no-cloning theorem.

Take a qubit for example. It can be represented by two complex numbers, called probability amplitudes (normalised to 1), that is three real numbers (two polar angles and one radius). Copying three numbers on a classical computer using any copy and paste operation is trivial (up to a finite precision) but the problem manifests if the qubit is unitarily transformed (e.g. by the Hadamard quantum gate) to be polarised (which unitary transformation is a surjective isometry). In such a case the qubit can be represented by just two real numbers (one polar angle and one radius equal to 1), while the value of the third can be arbitrary in such a representation. Yet a realisation of a qubit (polarisation-encoded photon, for example) is capable of storing the whole qubit information support within its "structure". Thus no single universal unitary evolution _U_ can clone an arbitrary quantum state according to the no-cloning theorem. It would have to depend on the transformed qubit (initial) state and thus would not have been _universal_.


Generalizations

Mixed states and nonunitary operations

In the statement of the theorem, two assumptions were made: the state to be copied is a pure state and the proposed copier acts via unitary time evolution. These assumptions cause no loss of generality. If the state to be copied is a mixed state, it can be purified. Alternately, a different proof can be given that works directly with mixed states; in this case, the theorem is often known as the no-broadcast theorem[13][14]. Similarly, an arbitrary quantum operation can be implemented via introducing an ancilla and performing a suitable unitary evolution. Thus the no-cloning theorem holds in full generality.

Arbitrary sets of states

Non-clonability can be seen as a property of arbitrary sets of quantum states. If we know that a system's state is one of the states in some set S, but we do not know which one, can we prepare another system in the same state? If the elements of S are pairwise orthogonal, the answer is always yes: for any such set there exists a measurement which will ascertain the exact state of the system without disturbing it, and once we know the state we can prepare another system in the same state.

On the other hand, if S contains a pair of elements that are not pairwise orthogonal, then an argument like that given above shows that the answer is no. So even if we can narrow down the state of a quantum system to just _two_ possibilities, we still cannot clone it in general (unless the states happen to be orthogonal).

Another way of stating the no-cloning theorem is that amplification of a quantum signal can only happen with respect to some orthogonal basis. This is related to the emergence of the rules of classical probability via quantum decoherence.

No-cloning in a classical context

There is a classical analogue to the quantum no-cloning theorem, which might be stated as follows: given only the result of one flip of a (possibly biased) coin, we cannot simulate a second, independent toss of the same coin. The proof of this statement uses the linearity of classical probability, and has exactly the same structure as the proof of the quantum no-cloning theorem. Thus, in order to claim that no-cloning is a uniquely quantum result, some care is necessary in stating the theorem. One way of restricting the result to quantum mechanics is to restrict the states to pure states, where a pure state is defined to be one that is not a convex combination of other states. The classical pure states are pairwise orthogonal, but quantum pure states are not.

No-cloning in logic

In logic, the idea of no-cloning and no-deleting correspond to the notion of disallowing two rules of inference: the rule of weakening (monotonicity of entailment) and the rule of contraction (idempotency of entailment). The removal of these two rules of inference from classical logic results in linear logic, which is the form of logic that describes quantum systems (or, more generally, the behavior of tensor products on Hilbert spaces).


Consequences

-   Spin-spacetime Censorship - General relativity and various quantum gravity theories predict that spin and spin-generated magnetic dipole field causes a (slight) bending to the spacetime around spin half particles, breaking its spherical symmetry[15]. However, through a gedanken experiment analyzed in the context of quantum information, it follows that such a spin-related deviation from spherical symmetry would violate relativistic causality and No-cloning theorem (see Spin-spacetime EPR gedanken experiment). To avoid this conundrum, the measurable spacetime around the particle’s rest frame must be spherically symmetric. This way, it follows that there must be a censorship mechanism, compensating for the spin-spacetime bending and preventing the possibility of spacetime-based spin detection. This censorship mechanism (called spin-spacetime censorship) may shed new light on the interface between quantum mechanics and general relativity.[16].
-   The no-cloning theorem prevents the use of classical error correction techniques on quantum states. For example, backup copies of a state in the middle of a quantum computation cannot be created and used for correcting subsequent errors. Error correction is vital for practical quantum computing, and for some time this was thought to be a fatal limitation. In 1995, Shor and Steane revived the prospects of quantum computing by independently devising the first quantum error correcting codes, which circumvent the no-cloning theorem.
-   Similarly, cloning would violate the no-teleportation theorem, which says that it is impossible to convert a quantum state into a sequence of classical bits (even an infinite sequence of bits), copy those bits to some new location, and recreate a copy of the original quantum state in the new location. This should not be confused with entanglement-assisted teleportation, which does allow a quantum state to be destroyed in one location, and an exact copy to be recreated in another location.
-   The no-cloning theorem is implied by the no-communication theorem, which states that quantum entanglement cannot be used to transmit classical information (whether superluminally, or slower). That is, cloning, together with entanglement, would allow such communication to occur. To see this, consider the EPR thought experiment, and suppose quantum states could be cloned. Assume parts of a maximally entangled Bell state are distributed to Alice and Bob. Alice could send bits to Bob in the following way: If Alice wishes to transmit a "0", she measures the spin of her electron in the Z direction, collapsing Bob's state to either |z + ⟩_(B) or |z − ⟩_(B). To transmit "1", Alice does nothing to her qubit. Bob creates many copies of his electron's state, and measures the spin of each copy in the Z direction. Bob will know that Alice has transmitted a "0" if all his measurements will produce the same result; otherwise, his measurements will have outcomes |z + ⟩_(B) or |z − ⟩_(B) with equal probability. This would allow Alice and Bob to communicate classical bits between each other (possibly across space-like separations, violating causality).
-   The no cloning theorem prevents an interpretation of the holographic principle for black holes as meaning that there are two copies of information, one lying at the event horizon and the other in the black hole interior. This leads to more radical interpretations, such as black hole complementarity.
-   The no-cloning theorem applies to all dagger compact categories: there is no universal cloning morphism for any non-trivial category of this kind.[17] Although the theorem is inherent in the definition of this category, it is not trivial to see that this is so; the insight is important, as this category includes things that are not finite-dimensional Hilbert spaces, including the category of sets and relations and the category of cobordisms.


Imperfect cloning

Even though it is impossible to make perfect copies of an unknown quantum state, it is possible to produce imperfect copies. This can be done by coupling a larger auxiliary system to the system that is to be cloned, and applying a unitary transformation to the combined system. If the unitary transformation is chosen correctly, several components of the combined system will evolve into approximate copies of the original system. In 1996, V. Buzek and M. Hillery showed that a universal cloning machine can make a clone of an unknown state with the surprisingly high fidelity of 5/6.[18]

Imperfect cloning can be used as an eavesdropping attack on quantum cryptography protocols, among other uses in quantum information science.


See also

-   Fundamental Fysiks Group
-   No-broadcast theorem
-   No-communication theorem
-   No-deleting theorem
-   No-hiding theorem
-   Quantum entanglement
-   Quantum cloning
-   Quantum information
-   Quantum teleportation
-   Uncertainty principle
-   Stronger Uncertainty Relations


References


Other sources

-   V. Buzek and M. Hillery, _Quantum cloning_, Physics World 14 (11) (2001), pp. 25–29.

Category:Quantum information science Category:Physics theorems Category:Articles containing proofs

[1]

[2]

[3]

[4] John Baez, Mike Stay, _Physics, Topology, Logic and Computation: A Rosetta Stone_ (2009)

[5] Bob Coecke, _Quantum Picturalism_, (2009) ArXiv 0908.1787

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15] Yuri.N., Obukhov, "Spin, gravity, and inertia", Physical review letters 86.2 (2001): 192.

[16] see

[17] S. Abramsky, "No-Cloning in categorical quantum mechanics", (2008) _Semantic Techniques for Quantum Computation_, I. Mackie and S. Gay (eds), Cambridge University Press.

[18] Bužek V. and Hillery, M. Quantum Copying: Beyond the No-Cloning Theorem. Phys. Rev. A 54, 1844 (1996)