In computational complexity theory, BOUNDED-ERROR QUANTUM POLYNOMIAL TIME (BQP) is the class of decision problems solvable by a quantum computer in polynomial time, with an error probability of at most 1/3 for all instances.[1] It is the quantum analogue of the complexity class BPP.

A decision problem is a member of BQP if there exists a quantum algorithm (an algorithm that runs on a quantum computer) that solves the decision problem with _high_ probability and is guaranteed to run in polynomial time. A run of the algorithm will correctly solve the decision problem with a probability of at least 2/3.

+------------------------------+
| BQP algorithm (1 run)        |
+==============================+
| "padding-left:4em;">produced |
|                              |
| }}                           |
+------------------------------+
|                              |
+------------------------------+
|                              |
+------------------------------+
| BQP algorithm (_k_ runs)     |
+------------------------------+
| "padding-left:4em;">Answer   |
|                              |
| produced}}                   |
+------------------------------+
|                              |
+------------------------------+
|                              |
+------------------------------+
| for some constant _c_ > 0    |
+------------------------------+


Definition

BQP can be viewed as the languages associated with certain bounded-error uniform families of quantum circuits.[2] A language _L_ is in BQP if and only if there exists a polynomial-time uniform family of quantum circuits {Q_(n) : n ∈ ℕ}, such that

-   For all n ∈ ℕ, _Q_(n)_ takes _n_ qubits as input and outputs 1 bit
-   For all _x_ in _L_, $\mathrm{Pr}(Q_{|x|}(x)=1)\geq \tfrac{2}{3}$
-   For all _x_ not in _L_, $\mathrm{Pr}(Q_{|x|}(x)=0)\geq  \tfrac{2}{3}$

Alternatively, one can define BQP in terms of quantum Turing machines. A language _L_ is in BQP if and only if there exists a polynomial quantum Turing machine that accepts _L_ with an error probability of at most 1/3 for all instances.[3]

Similarly to other "bounded error" probabilistic classes the choice of 1/3 in the definition is arbitrary. We can run the algorithm a constant number of times and take a majority vote to achieve any desired probability of correctness less than 1, using the Chernoff bound. The complexity class is unchanged by allowing error as high as 1/2 − _n_^(−_c_) on the one hand, or requiring error as small as 2^(−_n^(c)_) on the other hand, where _c_ is any positive constant, and _n_ is the length of input.[4]


Quantum computation

The number of qubits in the computer is allowed to be a polynomial function of the instance size. For example, algorithms are known for factoring an _n_-bit integer using just over 2_n_ qubits (Shor's algorithm).

Usually, computation on a quantum computer ends with a measurement. This leads to a collapse of quantum state to one of the basis states. It can be said that the quantum state is measured to be in the correct state with high probability.

Quantum computers have gained widespread interest because some problems of practical interest are known to be in BQP, but suspected to be outside P. Some prominent examples are:

-   Integer factorization (see Shor's algorithm)[5]
-   Discrete logarithm[6]
-   Simulation of quantum systems (see universal quantum simulator)
-   Approximating the Jones polynomial at certain roots of unity


Relationship to other complexity classes

BQP_complexity_class_diagram.svg

This class is defined for a quantum computer and its natural corresponding class for an ordinary computer (or a Turing machine plus a source of randomness) is BPP. Just like P and BPP, BQP is low for itself, which means BQP^(BQP) = BQP[7]. Informally, this is true because polynomial time algorithms are closed under composition. If a polynomial time algorithm calls as a subroutine polynomially many polynomial time algorithms, the resulting algorithm is still polynomial time.

BQP contains P and BPP and is contained in AWPP,[8] PP[9] and PSPACE.[10] In fact, BQP is low for PP, meaning that a PP machine achieves no benefit from being able to solve BQP problems instantly, an indication of the possible difference in power between these similar classes. The known relationships with classic complexity classes are:

P ⊆ BPP ⊆ BQP ⊆ AWPP ⊆ PP ⊆ PSPACE

As the problem of P ≟ PSPACE has not yet been solved, the proof of inequality between BQP and classes mentioned above is supposed to be difficult.[11] The relation between BQP and NP is not known. In May 2018, computer scientists Ran Raz of Princeton University and Avishay Tal of Stanford University published a paper[12] which showed that, relative to an oracle, BQP was not contained in PH.

Adding postselection to BQP results in the complexity class POSTBQP which is equal to PP.[13][14]


See also

-   Hidden subgroup problem
-   Polynomial hierarchy (PH).
-   Quantum complexity theory, mainly P and NP.


References


External links

-   Complexity Zoo link to BQP

Category:Probabilistic complexity classes Category:Quantum complexity theory Category:Quantum computing

[1] Michael Nielsen and Isaac Chuang (2000). _Quantum Computation and Quantum Information_. Cambridge: Cambridge University Press. .

[2]

[3]

[4]

[5] arXiv:quant-ph/9508027v2 _Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer_, Peter W. Shor

[6]

[7]

[8]

[9] L. Adleman, J. DeMarrais, and M.-D. Huang. Quantum computability. SIAM J. Comput., 26(5):1524–1540, 1997.

[10]

[11]

[12]

[13] . Preprint available at 1

[14]