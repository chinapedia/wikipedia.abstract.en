In computational solid state physics, CONTINUOUS-TIME QUANTUM MONTE CARLO (CT-QMC) is a family of stochastic algorithms for solving the Anderson impurity model at finite temperature.[1][2][3][4][5] These methods first expand the full partition function as a series of Feynman diagrams, employ Wick's theorem to group diagrams into determinants, and finally use Markov chain Monte Carlo to stochastically sum up the resulting series.[6]

The attribute _continuous-time_ was introduced to distinguish the method from the then-predominant Hirsch–Fye quantum Monte Carlo method,[7] which relies on a Suzuki–Trotter discretisation of the imaginary time axis.

If the sign problem is absent, the method can also be used to solve lattice models such as the Hubbard model at half filling. To distinguish it from other Monte Carlo methods for such systems that also work in continuous time, the method is then usually referred to as DIAGRAMMATIC DETERMINANTAL QUANTUM MONTE CARLO (DDQMC or DDMC).[8]


Partition function expansion

In second quantisation, the Hamiltonian of the Anderson impurity model reads:[9]

$$H = \underbrace{\sum_{ij} E_{ij} c^\dagger_i c_j}_{H_\mathrm{loc0}}
+ \underbrace{\frac12 \sum_{ijkl} U_{ikjl} c^\dagger_i c^\dagger_j c_l c_k}_{H_\mathrm{int}}
+ \underbrace{\sum_{p,i} \big(V_{pi} f^\dagger_p c_i + V^*_{pi} c^\dagger_i f_p \big)}_{H_\mathrm{hyb}}
+ \underbrace{\sum_p \epsilon_p f^\dagger_p f_p}_{H_\mathrm{bath}}$$
, where c_(i)^(†) and c_(i) are the creation and annihilation operators, respectively, of a fermion on the impurity. The index i collects the spin index and possibly other quantum numbers such as orbital (in the case of a multi-orbital impurity) and cluster site (in the case of multi-site impurity). f_(p)^(†) and f_(p) are the corresponding fermion operators on the non-interacting bath, where the bath quantum number p will typically be continuous.

Step 1 of CT-QMC is to split the Hamiltonian into a exactly solvable term, H₀, and the rest, H_(I). Different choices correspond to different expansions and thus different algorithmic descriptions. Common choices are:

-   Interaction expansion (CT-INT):[10] H_(I) = H_(int)
-   Hybrdisiation expansion (CT-HYB):[11][12] H_(I) = H_(hyb)
-   Auxiliary field expansion (CT-AUX):[13] like CT-INT, but the interaction term is first decoupled using a discrete Hubbard-Stratonovich transformation

Step 2 is to switch to the interaction picture and expand the partition function in terms of a Dyson series:

$$Z = \operatorname{tr}\left(\mathrm e^{-\beta H}\right)
= \sum_{n=0}^\infty \frac{(-1)^n}{n!} \int_0^\beta \mathrm d^n\tau\;
  \operatorname{tr}\left[\mathrm e^{-\beta H_0}
   T_\tau H_\mathrm{I}(\tau_1) H_\mathrm{I}(\tau_2) \cdots H_\mathrm{I}(\tau_n) \right]$$
, where β is the inverse temperature and T_(τ) denotes imaginary time ordering. The presence of a (zero-dimensional) lattice regularises the series and the finite size and temperature of the system makes renormalisation unnecessary.[14]

The Dyson series generates a factorial number of identical diagrams per order, which makes sampling more difficult and possibly worsen the sign problem. Thus, as step 3, one uses Wick's theorem to group identical diagrams into determinants. This leads to the expressions:[15]

-   Interaction expansion (CT-INT):

$$Z = \sum_{n=0}^\infty
  \prod_{\alpha=1}^{n} \sum_{i_\alpha j_\alpha k_\alpha l_\alpha} \int \mathrm d\tau_\alpha
  \left(-\frac12 U_{i_\alpha k_\alpha j_\alpha l_\alpha} \right)
  \det \left[\begin{array}{cc}
    \langle T_\tau c^\dagger_{i_\alpha}\!(\tau_\alpha)\ c_{k_\beta}\!(\tau_\beta) \rangle_0 &
    \langle T_\tau c^\dagger_{i_\alpha}\!(\tau_\alpha)\ c_{l_\beta}\!(\tau_\beta) \rangle_0 \\
    \langle T_\tau c^\dagger_{j_\alpha}\!(\tau_\alpha)\ c_{k_\beta}\!(\tau_\beta) \rangle_0 &
    \langle T_\tau c^\dagger_{j_\alpha}\!(\tau_\alpha)\ c_{l_\beta}\!(\tau_\beta) \rangle_0
  \end{array} \right]_{\alpha\beta}$$

-   Hybridisation expansion (CT-HYB):

$$Z = \sum_{n=0}^\infty
  \prod_{\alpha=1}^{n} \sum_{i_\alpha j_\alpha} \int \mathrm d\tau_\alpha \mathrm d\tau^\prime_\alpha
  \operatorname{tr}\Big[\mathrm e^{-\beta (H_\mathrm{loc0} + H_\mathrm{int})}
   T_\tau \prod_{\alpha=1}^{n} c^\dagger_{i_\alpha}(\tau_\alpha) c_{i_\alpha}(\tau^\prime_\alpha) \Big]\; \det\big[\Delta_{i_\alpha j_\beta}(\tau_\alpha - \tau^\prime_\beta)\big]_{\alpha\beta}$$

In a final step, one notes that this is nothing but an integral over a large domain and performs it using a Monte Carlo method, usually the Metropolis-Hastings algorithm.


See also

-   Metropolis-Hastings algorithm
-   Quantum Monte Carlo
-   Dynamical mean field theory


References

[16] [17] [18] [19] [20] [21]

Category:Computational physics

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

[17]

[18]

[19]

[20]

[21]