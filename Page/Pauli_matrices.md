Wolfgang_Pauli.jpg (1900–1958), ca. 1924. Pauli received the Nobel Prize in physics in 1945, nominated by Albert Einstein, for the Pauli exclusion principle.]] In mathematical physics and mathematics, the PAULI MATRICES are a set of three complex matrices which are Hermitian and unitary.[1] Usually indicated by the Greek letter sigma (), they are occasionally denoted by tau () when used in connection with isospin symmetries. They are

$$\begin{align}
  \sigma_1 = \sigma_x &=
    \begin{pmatrix}
      0&1\\
      1&0
    \end{pmatrix} \\
  \sigma_2 = \sigma_y &=
    \begin{pmatrix}
      0&-i\\
      i&0
    \end{pmatrix} \\
  \sigma_3 = \sigma_z &=
    \begin{pmatrix}
      1&0\\
      0&-1
    \end{pmatrix} \,.
\end{align}$$

These matrices are named after the physicist Wolfgang Pauli. In quantum mechanics, they occur in the Pauli equation which takes into account the interaction of the spin of a particle with an external electromagnetic field.

Each Pauli matrix is Hermitian, and together with the identity matrix (sometimes considered as the zeroth Pauli matrix ), the Pauli matrices (multiplied by _real_ coefficients) form a basis for the vector space of Hermitian matrices.

Hermitian operators represent observables, so the Pauli matrices span the space of observables of the -dimensional complex Hilbert space. In the context of Pauli's work, represents the observable corresponding to spin along the th coordinate axis in three-dimensional Euclidean space .

The Pauli matrices (after multiplication by to make them anti-Hermitian), also generate transformations in the sense of Lie algebras: the matrices form a basis for 𝔰𝔲(2), which exponentiates to the SPECIAL UNITARY GROUP SU(2).[2] The algebra generated by the three matrices is isomorphic to the Clifford algebra of .


Algebraic properties

All three of the Pauli matrices can be compacted into a single expression:

$$\sigma_a =
    \begin{pmatrix}
      \delta_{a3}                &  \delta_{a1} - i\delta_{a2}\\
      \delta_{a1} + i\delta_{a2} & -\delta_{a3}
    \end{pmatrix}$$

where }} is the imaginary unit, and is the Kronecker delta, which equals +1 if _b_}} and 0 otherwise. This expression is useful for "selecting" any one of the matrices numerically by substituting values of 1, 2, 3}}, in turn useful when any of the matrices (but no particular one) is to be used in algebraic manipulations.

The matrices are involutory:

$$\sigma_1^2 = \sigma_2^2 = \sigma_3^2 = -i\sigma_1 \sigma_2 \sigma_3 = \begin{pmatrix} 1&0\\0&1\end{pmatrix} = I$$

where is the identity matrix.

The determinants and traces of the Pauli matrices are:

$$\begin{align}
               \det \sigma_i &= -1, \\
  \operatorname{tr} \sigma_i &= 0 .
\end{align}$$

From which, we can deduce that the eigenvalues of each are .

With the inclusion of the identity matrix, (sometimes denoted ), the Pauli matrices form an orthogonal basis (in the sense of Hilbert–Schmidt) of the real Hilbert space of complex Hermitian matrices, ℋ₂(ℂ), and the complex Hilbert space of all matrices, ℳ_(2, 2)(ℂ).

Eigenvectors and eigenvalues

Each of the (Hermitian) Pauli matrices has two eigenvalues, and . The corresponding normalized eigenvectors are:

$$\begin{align}
  \psi_{x+} &= \frac{1}\sqrt{2} \begin{pmatrix} 1 \\ 1 \end{pmatrix}, &
    \psi_{x-} &= \frac{1}\sqrt{2} \begin{pmatrix} 1 \\ -1 \end{pmatrix}, \\
  \psi_{y+} &= \frac{1}\sqrt{2} \begin{pmatrix} 1 \\ i \end{pmatrix}, &
    \psi_{y-} &= \frac{1}\sqrt{2} \begin{pmatrix} 1 \\ -i \end{pmatrix}, \\
  \psi_{z+} &=                  \begin{pmatrix} 1 \\ 0 \end{pmatrix}, &
    \psi_{z-} &=                  \begin{pmatrix} 0 \\  1 \end{pmatrix}.
\end{align}$$

Pauli vector

The Pauli vector is defined by[3]

_σ⃗_ = _σ_₁_x̂_ + _σ_₂_ŷ_ + _σ_₃_ẑ_

and provides a mapping mechanism from a vector basis to a Pauli matrix basis[4] as follows,

$$\begin{align}
     \vec{a} \cdot \vec{\sigma}
  &= \left(a_i \hat{x}_i\right) \cdot \left(\sigma_j \hat{x}_j\right)
   = a_i \sigma_j \hat{x}_i \cdot \hat{x}_j \\
  &= a_i \sigma_j \delta_{ij}
    = a_i \sigma_i
    = \begin{pmatrix}
               a_3 &  a_1 - ia_2 \\
        a_1 + ia_2 & -a_3
      \end{pmatrix}
\end{align}$$

using the summation convention. Further,

det _a⃗_ ⋅ _σ⃗_ =  − _a⃗_ ⋅ _a⃗_ =  − |_a⃗_|²,

its eigenvalues being  ± |a⃗|, and moreover (see completeness, below)

$$\frac{1}{2} \operatorname{tr} \left[\left(\vec{a} \cdot \vec{\sigma}\right) \vec{\sigma}\right] = \vec{a}~.$$

Its (unnormalized) eigenvectors are

$$\psi_+ = \begin{pmatrix} a_3 + |\vec{a}| \\ a_1 + ia_2 \end{pmatrix}; \qquad
  \psi_- = \begin{pmatrix} ia_2 - a_1 \\  a_3 + |\vec{a}| \end{pmatrix}.$$

Commutation relations

The Pauli matrices obey the following commutation relations:

[_σ__(_a_), _σ__(_b_)] = 2_i__ε__(_a__b__c_) _σ__(_c_) ,

and anticommutation relations:

{_σ__(_a_), _σ__(_b_)} = 2_δ__(_a__b_) _I_.

where the structure constant is the Levi-Civita symbol, Einstein summation notation is used, is the Kronecker delta, and is the identity matrix.

For example,

$$\begin{align}
    \left[\sigma_1, \sigma_2\right] &= 2i\sigma_3 \, \\
    \left[\sigma_2, \sigma_3\right] &= 2i\sigma_1 \, \\
    \left[\sigma_3, \sigma_1\right] &= 2i\sigma_2 \, \\
    \left[\sigma_1, \sigma_1\right] &= 0\, \\
  \left\{\sigma_1, \sigma_1\right\} &= 2I\, \\
  \left\{\sigma_1, \sigma_2\right\} &= 0\,.\\
\end{align}$$

Relation to dot and cross product

Pauli vectors elegantly map these commutation and anticommutation relations to corresponding vector products. Adding the commutator to the anticommutator gives

$$\begin{align}
  \left[\sigma_a, \sigma_b\right] + \{\sigma_a, \sigma_b\}  &= (\sigma_a \sigma_b - \sigma_b \sigma_a ) + (\sigma_a \sigma_b + \sigma_b \sigma_a) \\
    2i\varepsilon_{a b c}\,\sigma_c + 2 \delta_{a b}I &= 2\sigma_a \sigma_b
\end{align}$$
so that,

Contracting each side of the equation with components of two -vectors and (which commute with the Pauli matrices, i.e., _σ_(q)a_(p)_)}} for each matrix and vector component (and likewise with ), and relabeling indices , to prevent notational conflicts, yields

$$\begin{align}
  a_p b_q \sigma_p \sigma_q & = a_p b_q \left(i\varepsilon_{pqr}\,\sigma_r + \delta_{pq}I\right) \\
  a_p \sigma_p b_q \sigma_q & = i\varepsilon_{pqr}\,a_p b_q \sigma_r + a_p b_q \delta_{pq}I  ~.
\end{align}$$

Finally, translating the index notation for the dot product and cross product results in

If i is identified with the pseudoscalar σ_(x)σ_(y)σ_(z) then the right hand side becomes a ⋅ b + a ∧ b which is also the definition for the product of two vectors in geometric algebra.

Some trace relations

Following traces can be derived using the commutation and anticommutation relations.

$$\begin{align}
                             \operatorname{tr}\left(\sigma_a\right) &= 0 \\
                    \operatorname{tr}\left(\sigma_a \sigma_b\right) &= 2\delta_{ab} \\
           \operatorname{tr}\left(\sigma_a \sigma_b \sigma_c\right) &= 2i\varepsilon_{abc} \\
  \operatorname{tr}\left(\sigma_a \sigma_b \sigma_c \sigma_d\right) &= 2\left(\delta_{ab}\delta_{cd} - \delta_{ac}\delta_{bd} + \delta_{ad}\delta_{bc}\right)
\end{align}$$

Exponential of a Pauli vector

For

_a⃗_ = _a__n̂_, |_n̂_| = 1,

one has, for even powers, 2p,  p = 0, 1, 2, 3, …

(_n̂_ ⋅ _σ⃗_)^(2_p_) = _I_

which can be shown first for the p = 1 case using the anticommutation relations. For convenience, the case p = 0 is taken to be I by convention.

For odd powers, 2q + 1,  q = 0, 1, 2, 3, …

(_n̂_⋅_σ⃗_)^(2_q_ + 1) = _n̂_ ⋅ _σ⃗_ .

Matrix exponentiating, and using the Taylor series for sine and cosine,

$$\begin{align}
  e^{i a\left(\hat{n} \cdot \vec{\sigma}\right)}
    &= \sum_{k=0}^\infty{\frac{i^k \left[a \left(\hat{n} \cdot \vec{\sigma}\right)\right]^k}{k!}} \\
    &= \sum_{p=0}^\infty{\frac{(-1)^p (a\hat{n}\cdot \vec{\sigma})^{2p}}{(2p)!}} + i\sum_{q=0}^\infty{\frac{(-1)^q (a\hat{n}\cdot \vec{\sigma})^{2q + 1}}{(2q + 1)!}} \\
    &= I\sum_{p=0}^\infty{\frac{(-1)^p a^{2p}}{(2p)!}} + i (\hat{n}\cdot \vec{\sigma}) \sum_{q=0}^\infty{\frac{(-1)^q a^{2q+1}}{(2q + 1)!}}\\
\end{align}$$
.

In the last line, the first sum is the cosine, while the second sum is the sine; so, finally,

which is analogous to Euler's formula, extended to quaternions.

Note that

det [_i__a_(_n̂_ ⋅ _σ⃗_)] = _a_²
,

while the determinant of the exponential itself is just , which makes it the GENERIC GROUP ELEMENT OF SU(2).

A more abstract version of formula for a general matrix can be found in the article on matrix exponentials. A general version of for an analytic (at _a_ and −_a_) function is provided by application of Sylvester's formula,[5]

$$f(a(\hat{n} \cdot \vec{\sigma})) = I\frac{f(a) + f(-a)}{2} +  \hat{n} \cdot \vec{\sigma} \frac{f(a) - f(-a)}{2} ~.$$

The group composition law of

A straightforward application of formula provides a parameterization of the composition law of the group .[6] One may directly solve for in

$$\begin{align}
  e^{i a\left(\hat{n} \cdot \vec{\sigma}\right)} e^{i b\left(\hat{m} \cdot \vec{\sigma}\right)}
    &= I(\cos a \cos b - \hat{n} \cdot\hat{m} \sin a \sin b) + i(\hat{n} \sin a \cos b + \hat{m}  \sin b \cos a - \hat{n}\times\hat{m} ~ \sin a \sin b  )\cdot  \vec{\sigma } \\
    &= I\cos{c} + i (\hat{k} \cdot \vec{\sigma}) \sin{c} \\
    &= e^{i c \left(\hat{k} \cdot \vec{\sigma}\right)},
\end{align}$$

which specifies the generic group multiplication, where, manifestly,

cos _c_ = cos _a_cos _b_ − _n̂_ ⋅ _m̂_sin _a_sin _b_ ,

the spherical law of cosines. Given , then,

$$\hat{k} = \frac{1}{\sin c}\left(\hat{n} \sin a \cos b + \hat{m} \sin b \cos a - \hat{n}\times\hat{m}  \sin a \sin b\right) ~.$$

Consequently, the composite rotation parameters in this group element (a closed form of the respective BCH expansion in this case) simply amount to[7]

$$e^{ic \hat{k}\cdot \vec{\sigma}}= \exp \left( i\frac{c}{\sin c}   (\hat{n} \sin a \cos b + \hat{m}  \sin b \cos a - \hat{n}\times\hat{m}  ~ \sin a \sin b  )\cdot \vec{\sigma}\right ) ~.$$

(Of course, when is parallel to , so is , and _a + b_}}.)

Adjoint action

It is also straightforward to likewise work out the adjoint action on the Pauli vector, namely rotation effectively by double the angle ,

_e_^(_i__a_(_n̂_⋅_σ⃗_)) _σ⃗_ _e_^( − _i__a_(_n̂_⋅_σ⃗_)) = _σ⃗_cos (2_a_) + _n̂_ × _σ⃗_ sin (2_a_) + _n̂_ _n̂_ ⋅ _σ⃗_ (1 − cos (2_a_)) .

Completeness relation

An alternative notation that is commonly used for the Pauli matrices is to write the vector index in the superscript, and the matrix indices as subscripts, so that the element in row and column of the -th Pauli matrix is .

In this notation, the COMPLETENESS RELATION for the Pauli matrices can be written

$$\vec{\sigma}_{\alpha\beta}\cdot\vec{\sigma}_{\gamma\delta}\equiv \sum_{i=1}^3 \sigma^i_{\alpha\beta}\sigma^i_{\gamma\delta} = 2 \delta_{\alpha\delta} \delta_{\beta\gamma} - \delta_{\alpha\beta}\delta_{\gamma\delta}.$$

    PROOF: The fact that the Pauli matrices, along with the identity matrix _I_, form an orthogonal basis for the complex Hilbert space of all 2 × 2 matrices means that we can express any matrix _M_ as

        M = cI + ∑_(i)a_(i)σ^(i)

    where _c_ is a complex number, and _a_ is a 3-component complex vector. It is straightforward to show, using the properties listed above, that

        tr  σ^(i)σ^(j) = 2δ_(ij)

    where "tr" denotes the trace, and hence that

        \begin{align}

                c &= \frac{1}{2}\operatorname{tr}\,M,\ \ a_i = \frac{1}{2}\operatorname{tr}\,\sigma^i M ~. \\[3pt]
 \therefore ~~ 2M &= I \operatorname{tr}\, M + \sum_i \sigma^i \operatorname{tr}\, \sigma^i M ~,

\end{align}

    which can be rewritten in terms of matrix indices as

        2M_(αβ) = δ_(αβ)M_(γγ) + ∑_(i)σ_(αβ)^(i)σ_(γδ)^(i)M_(δγ) ,

    where summation is implied over the repeated indices _γ_ and _δ_. Since this is true for any choice of the matrix _M_, the completeness relation follows as stated above.

As noted above, it is common to denote the 2 × 2 unit matrix by _σ_₀, so _σ_⁰_(_αβ_) = _δ__(_αβ_). The completeness relation can alternatively be expressed as

$$\sum_{i=0}^3 \sigma^i_{\alpha\beta}\sigma^i_{\gamma\delta} = 2 \delta_{\alpha\delta} \delta_{\beta\gamma}~.$$

The fact that any complex Hermitian matrices can be expressed in terms of the identity matrix and the Pauli matrices also leads to the Bloch sphere representation of mixed states' density matrix, ( positive semidefinite matrices with trace ). This can be seen by simply first writing an arbitrary Hermitian matrix as a real linear combination of as above, and then imposing the positive-semidefinite and trace conditions.

Relation with the permutation operator

Let be the transposition (also known as a permutation) between two spins and living in the tensor product space ,

_P__(_i__j_)|_σ__(_i_)_σ__(_j_)⟩ = |_σ__(_j_)_σ__(_i_)⟩ .

This operator can also be written more explicitly as Dirac's spin exchange operator,

$$P_{ij} = \frac{1}{2}(\vec{\sigma}_i\cdot\vec{\sigma}_j + 1)\,.$$

Its eigenvalues are therefore[8] 1 or −1. It may thus be utilized as an interaction term in a Hamiltonian, splitting the energy eigenvalues of its symmetric versus antisymmetric eigenstates.


SU(2)

The group SU(2) is the Lie group of unitary matrices with unit determinant; its Lie algebra is the set of all anti-Hermitian matrices with trace 0. Direct calculation, as above, shows that the Lie algebra 𝔰𝔲₂ is the 3-dimensional real algebra spanned by the set }. In compact notation,

𝔰𝔲(2) = span {_i__σ_₁, _i__σ_₂, _i__σ_₃}.

As a result, each can be seen as an infinitesimal generator of SU(2). The elements of SU(2) are exponentials of linear combinations of these three generators, and multiply as indicated above in discussing the Pauli vector. Although this suffices to generate SU(2), it is not a proper [[Representation_theory_of_SU(2)|representation of , the fundamental representation of _SU(2)_. By taking Kronecker products of this representation with itself repeatedly, one may construct all higher irreducible representations. That is, the resulting spin operators for higher spin systems in three spatial dimensions, for arbitrarily large _j_, can be calculated using this spin operator and ladder operators. They can be found in Rotation group SO(3)#A note on Lie algebra. The analog formula to the above generalization of Euler's formula for Pauli matrices, the group element in terms of spin matrices, is tractable, but less simple.[9]

Also useful in the quantum mechanics of multiparticle systems, the general Pauli group is defined to consist of all -fold tensor products of Pauli matrices.

Relativistic quantum mechanics

In relativistic quantum mechanics, the spinors in four dimensions are 4 × 1 (or 1 × 4) matrices. Hence the Pauli matrices or the Sigma matrices operating on these spinors have to be 4 × 4 matrices. They are defined in terms of 2 × 2 Pauli matrices as

$$\mathsf{\Sigma}_i = \begin{pmatrix} \mathsf{\sigma}_i & 0 \\ 0 & \mathsf{\sigma}_i \end{pmatrix}.$$

It follows from this definition that Σ_(i) matrices have the same algebraic properties as σ_(i) matrices.

However, relativistic angular momentum is not a three-vector, but a second order four-tensor. Hence Σ_(i) needs to be replaced by Σ_(μν), the generator of Lorentz transformations on spinors. By the antisymmetry of angular momentum, the Σ_(μν) are also antisymmetric. Hence there are only six independent matrices.

The first three are the Σ_(jk) ≡ ϵ_(ijk)Σ_(i). The remaining three, Σ_(0i) ≡ α_(i), are the Dirac α_(i) matrices defined as

$$\mathsf{\alpha}_i = \begin{pmatrix} 0 & \mathsf{\sigma}_i\\ \mathsf{\sigma}_i & 0\end{pmatrix}.$$

The relativistic spin matrices Σ_(μν) are written in compact form in terms of commutator of gamma matrices as

$$\Sigma_{\mu\nu} = \frac{i}{2}\left[\gamma_\mu, \gamma_\nu\right]$$
.

Quantum information

In quantum information, single-qubit quantum gates are _2_ × _2_ unitary matrices. The Pauli matrices are some of the most important single-qubit operations. In that context, the Cartan decomposition given above is called the _Z–Y decomposition of a single-qubit gate_. Choosing a different Cartan pair gives a similar _X–Y decomposition of a single-qubit gate_.


See also

-   Spinors in three dimensions
-   Gamma matrices
    -

-   Angular momentum
-   Gell-Mann matrices
-   Poincaré group
-   Generalizations of Pauli matrices
-   Bloch sphere
-   Euler's four-square identity
-   For higher spin generalizations of the Pauli matrices, see


Remarks


Notes


References

-   -   -

Category:Lie groups Category:Matrices Category:Rotational symmetry Category:Articles containing proofs Category:Mathematical physics

[1]

[2] This conforms to the _mathematics_ convention for the matrix exponential, . In the _physics_ convention, , hence in it no pre-multiplication by is necessary to land in .

[3] The Pauli vector is a formal device. It may be thought of as an element of , where the tensor product space is endowed with a mapping induced by the dot product on .

[4] See the spinor map.

[5]

[6] N.B. The relation among derived here in the representation holds for _all representations_ of , being a _group identity_. Note that, by virtue of the standard normalization of that group's generators as _half_ the Pauli matrices, the parameters _a,b,c_ correspond to _half_ the rotation angles of the rotation group.

[7] cf. J W Gibbs (1884). _Elements of Vector Analysis_, New Haven, 1884, p. 67. In fact, however, the formula goes back to Olinde Rodrigues, 1840, replete with half-angle: "Des lois géometriques qui regissent les déplacements d' un systéme solide dans l' espace, et de la variation des coordonnées provenant de ces déplacement considérées indépendant des causes qui peuvent les produire", _J. Math. Pures Appl._ 5 (1840), 380–440;

[8] Explicitly, in the convention of "right-space matrices into elements of left-space matrices", it is $\quad\left(\begin{smallmatrix}
  1 & 0 & 0 & 0 \\
  0 & 0 & 1 & 0 \\
  0 & 1 & 0 & 0 \\
  0 & 0 & 0 & 1
\end{smallmatrix}\right)~.$

[9]