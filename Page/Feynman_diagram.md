this article on the Simple English Wikipedia}}

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Feynmann_Diagram_Gluon_Radiation.svg and a positron annihilate, producing a photon (represented by the blue sine wave) that becomes a quark–antiquark pair, after which the antiquark radiates a gluon (represented by the green helix).]]
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RichardFeynman-PaineMansionWoods1984_copyrightTamikoThiel_bw.jpg

In theoretical physics, FEYNMAN DIAGRAMS are pictorial representations of the mathematical expressions describing the behavior of subatomic particles. The scheme is named after its inventor, American physicist Richard Feynman, and was first introduced in 1948. The interaction of sub-atomic particles can be complex and difficult to understand intuitively. Feynman diagrams give a simple visualization of what would otherwise be an arcane and abstract formula. As David Kaiser writes, "since the middle of the 20th century, theoretical physicists have increasingly turned to this tool to help them undertake critical calculations", and so "Feynman diagrams have revolutionized nearly every aspect of theoretical physics".[1] While the diagrams are applied primarily to quantum field theory, they can also be used in other fields, such as solid-state theory.

Feynman used Ernst Stueckelberg's interpretation of the positron as if it were an electron moving backward in time.[2] Thus, antiparticles are represented as moving backward along the time axis in Feynman diagrams.

The calculation of probability amplitudes in theoretical particle physics requires the use of rather large and complicated integrals over a large number of variables. These integrals do, however, have a regular structure, and may be represented graphically as Feynman diagrams.

A Feynman diagram is a contribution of a particular class of particle paths, which join and split as described by the diagram. More precisely, and technically, a Feynman diagram is a graphical representation of a perturbative contribution to the transition amplitude or correlation function of a quantum mechanical or statistical field theory. Within the canonical formulation of quantum field theory, a Feynman diagram represents a term in the Wick's expansion of the perturbative [[S-matrix|{k^2+i0}e^{-ik(x-x')}

is the electromagnetic contraction (propagator) in the Feynman gauge. This term is represented by the Feynman diagram at the right. This diagram gives contributions to the following processes:

1.  e^(−) e^(−) scattering (initial state at the right, final state at the left of the diagram);
2.  e⁺ e⁺ scattering (initial state at the left, final state at the right of the diagram);
3.  e^(−) e⁺ scattering (initial state at the bottom/top, final state at the top/bottom of the diagram).

Compton scattering and annihilation/generation of e^(−) e⁺ pairs

Another interesting term in the expansion is

$$N\bar\psi(x)\,\gamma^\mu\,\underline{\psi(x)\,\bar\psi(x')}\,\gamma^\nu\,\psi(x')\,A_\mu(x)\,A_\nu(x')\;,$$

where

$$\underline{\psi(x)\bar\psi(x')}=\int\frac{d^4p}{(2\pi)^4}\frac{i}{\gamma p-m+i0}e^{-ip(x-x')}$$

is the fermionic contraction (propagator).


Path integral formulation

In a path integral, the field Lagrangian, integrated over all possible field histories, defines the probability amplitude to go from one field configuration to another. In order to make sense, the field theory should have a well-defined ground state, and the integral should be performed a little bit rotated into imaginary time, i.e. a Wick rotation.

Scalar field Lagrangian

A simple example is the free relativistic scalar field in dimensions, whose action integral is:

$$S = \int \tfrac12 \partial_\mu \phi \partial^\mu \phi\, d^dx \,.$$

The probability amplitude for a process is:

∫_(_A_)^(_B_)_e_^(_i__S_) _D__ϕ_ ,

where and are space-like hypersurfaces that define the boundary conditions. The collection of all the on the starting hypersurface give the initial value of the field, analogous to the starting position for a point particle, and the field values at each point of the final hypersurface defines the final field value, which is allowed to vary, giving a different amplitude to end up at different values. This is the field-to-field transition amplitude.

The path integral gives the expectation value of operators between the initial and final state:

∫_(_A_)^(_B_)_e_^(_i__S_)_ϕ_(_x_₁)⋯_ϕ_(_x__(_n_)) _D__ϕ_ = ⟨_A_|_ϕ_(_x_₁)⋯_ϕ_(_x__(_n_))|_B_⟩ ,

and in the limit that A and B recede to the infinite past and the infinite future, the only contribution that matters is from the ground state (this is only rigorously true if the path-integral is defined slightly rotated into imaginary time). The path integral can be thought of as analogous to a probability distribution, and it is convenient to define it so that multiplying by a constant doesn't change anything:

$$\frac{\displaystyle\int e^{iS} \phi(x_1) \cdots \phi(x_n) \,D\phi }{ \displaystyle\int e^{iS} \,D\phi } = \left\langle 0 \left| \phi(x_1) \cdots \phi(x_n) \right|0\right\rangle \,.$$

The normalization factor on the bottom is called the _partition function_ for the field, and it coincides with the statistical mechanical partition function at zero temperature when rotated into imaginary time.

The initial-to-final amplitudes are ill-defined if one thinks of the continuum limit right from the beginning, because the fluctuations in the field can become unbounded. So the path-integral can be thought of as on a discrete square lattice, with lattice spacing and the limit should be taken carefully. If the final results do not depend on the shape of the lattice or the value of , then the continuum limit exists.

On a lattice

On a lattice, (i), the field can be expanded in Fourier modes:

$$\phi(x) = \int \frac{dk}{(2\pi)^d} \phi(k) e^{ik\cdot x} = \int_k \phi(k) e^{ikx}\,.$$

Here the integration domain is over restricted to a cube of side length , so that large values of are not allowed. It is important to note that the -measure contains the factors of 2 from Fourier transforms, this is the best standard convention for -integrals in QFT. The lattice means that fluctuations at large are not allowed to contribute right away, they only start to contribute in the limit . Sometimes, instead of a lattice, the field modes are just cut off at high values of instead.

It is also convenient from time to time to consider the space-time volume to be finite, so that the modes are also a lattice. This is not strictly as necessary as the space-lattice limit, because interactions in are not localized, but it is convenient for keeping track of the factors in front of the -integrals and the momentum-conserving delta functions that will arise.

On a lattice, (ii), the action needs to be discretized:

$$S= \sum_{\langle x,y\rangle} \tfrac12 \big(\phi(x) - \phi(y) \big)^2\,,$$

where is a pair of nearest lattice neighbors and . The discretization should be thought of as defining what the derivative means.

In terms of the lattice Fourier modes, the action can be written:

_S_ = ∫_(_k_)((1 − cos (_k_₁)) + (1 − cos (_k_₂)) + ⋯ + (1 − cos (_k__(_d_))))_ϕ__(_k_)^(*)_ϕ_^(_k_) .
For near zero this is:

$$S = \int_k \tfrac12 k^2 \left|\phi(k)\right|^2\,.$$

Now we have the continuum Fourier transform of the original action. In finite volume, the quantity is not infinitesimal, but becomes the volume of a box made by neighboring Fourier modes, or .

The field is real-valued, so the Fourier transform obeys:

_ϕ_(_k_)^(*) = _ϕ_( − _k_) .

In terms of real and imaginary parts, the real part of is an even function of , while the imaginary part is odd. The Fourier transform avoids double-counting, so that it can be written:

$$S = \int_k \tfrac12 k^2 \phi(k) \phi(-k)$$

over an integration domain that integrates over each pair exactly once.

For a complex scalar field with action

$$S = \int \tfrac12 \partial_\mu\phi^* \partial^\mu\phi \,d^dx$$

the Fourier transform is unconstrained:

$$S = \int_k \tfrac12 k^2 \left|\phi(k)\right|^2$$

and the integral is over all .

Integrating over all different values of is equivalent to integrating over all Fourier modes, because taking a Fourier transform is a unitary linear transformation of field coordinates. When you change coordinates in a multidimensional integral by a linear transformation, the value of the new integral is given by the determinant of the transformation matrix. If

_y__(_i_) = _A__(_i__j_)_x__(_j_) ,

then

det (_A_)∫_d__x_₁ _d__x_₂⋯ _d__x__(_n_) = ∫_d__y_₁ _d__y_₂⋯ _d__y__(_n_) .

If is a rotation, then

_A_^(_T_)_A_ = _I_
so that ±1}}, and the sign depends on whether the rotation includes a reflection or not.

The matrix that changes coordinates from to can be read off from the definition of a Fourier transform.

_A__(_k__x_) = _e_^(_i__k__x_) 

and the Fourier inversion theorem tells you the inverse:

_A__(_k__x_)^( − 1) = _e_^( − _i__k__x_) 

which is the complex conjugate-transpose, up to factors of 2. On a finite volume lattice, the determinant is nonzero and independent of the field values.

det _A_ = 1 

and the path integral is a separate factor at each value of .

$$\int \exp \left(\frac{i}{2} \sum_k k^2 \phi^*(k) \phi(k) \right)\, D\phi = \prod_k \int_{\phi_k} e^{\frac{i}{2} k^2 \left|\phi_k \right|^2\, d^dk} \,$$

The factor is the infinitesimal volume of a discrete cell in -space, in a square lattice box

$$d^dk = \left(\frac{1}{L}\right)^d\,,$$
where is the side-length of the box. Each separate factor is an oscillatory Gaussian, and the width of the Gaussian diverges as the volume goes to infinity.

In imaginary time, the _Euclidean action_ becomes positive definite, and can be interpreted as a probability distribution. The probability of a field having values is

$$e^{\int_k - \tfrac12 k^2 \phi^*_k \phi_k} = \prod_k e^{- k^2 \left|\phi_k\right|^2\, d^dk}\,.$$

The expectation value of the field is the statistical expectation value of the field when chosen according to the probability distribution:

$$\left\langle \phi(x_1) \cdots \phi(x_n) \right\rangle = \frac{ \displaystyle\int e^{-S} \phi(x_1) \cdots \phi(x_n)\, D\phi} {\displaystyle\int e^{-S}\, D\phi}$$

Since the probability of is a product, the value of at each separate value of is independently Gaussian distributed. The variance of the Gaussian is , which is formally infinite, but that just means that the fluctuations are unbounded in infinite volume. In any finite volume, the integral is replaced by a discrete sum, and the variance of the integral is .

Monte Carlo

The path integral defines a probabilistic algorithm to generate a Euclidean scalar field configuration. Randomly pick the real and imaginary parts of each Fourier mode at wavenumber to be a Gaussian random variable with variance . This generates a configuration at random, and the Fourier transform gives . For real scalar fields, the algorithm must generate only one of each pair , and make the second the complex conjugate of the first.

To find any correlation function, generate a field again and again by this procedure, and find the statistical average:

$$\left\langle \phi(x_1) \cdots \phi(x_n) \right\rangle = \lim_{|C|\rightarrow\infty}\frac{ \displaystyle\sum_C \phi_C(x_1) \cdots \phi_C(x_n) }{|C| }$$

where is the number of configurations, and the sum is of the product of the field values on each configuration. The Euclidean correlation function is just the same as the correlation function in statistics or statistical mechanics. The quantum mechanical correlation functions are an analytic continuation of the Euclidean correlation functions.

For free fields with a quadratic action, the probability distribution is a high-dimensional Gaussian, and the statistical average is given by an explicit formula. But the Monte Carlo method also works well for bosonic interacting field theories where there is no closed form for the correlation functions.

Scalar propagator

Each mode is independently Gaussian distributed. The expectation of field modes is easy to calculate:

⟨_ϕ__(_k_)_ϕ__(_k_′)⟩ = 0 

for , since then the two Gaussian random variables are independent and both have zero mean.

$$\left\langle\phi_k \phi_k \right\rangle = \frac{V}{k^2}$$

in finite volume , when the two -values coincide, since this is the variance of the Gaussian. In the infinite volume limit,

$$\left\langle\phi(k) \phi(k')\right\rangle = \delta(k-k') \frac{1}{k^2}$$

Strictly speaking, this is an approximation: the lattice propagator is:

$$\left\langle\phi(k) \phi(k')\right\rangle = \delta(k-k') \frac{1}{2\big(d - \cos(k_1) + \cos(k_2) \cdots + \cos(k_d)\big) }$$

But near 0}}, for field fluctuations long compared to the lattice spacing, the two forms coincide.

It is important to emphasize that the delta functions contain factors of 2, so that they cancel out the 2 factors in the measure for integrals.

_δ_(_k_) = (2_π_)^(_d_)_δ__(_D_)(_k_₁)_δ__(_D_)(_k_₂)⋯_δ__(_D_)(_k__(_d_)) 

where is the ordinary one-dimensional Dirac delta function. This convention for delta-functions is not universal—some authors keep the factors of 2 in the delta functions (and in the -integration) explicit.

Equation of motion

The form of the propagator can be more easily found by using the equation of motion for the field. From the Lagrangian, the equation of motion is:

∂_(_μ_)∂^(_μ_)_ϕ_ = 0 

and in an expectation value, this says:

∂_(_μ_)∂^(_μ_)⟨_ϕ_(_x_)_ϕ_(_y_)⟩ = 0

Where the derivatives act on , and the identity is true everywhere except when and coincide, and the operator order matters. The form of the singularity can be understood from the canonical commutation relations to be a delta-function. Defining the (Euclidean) _Feynman propagator_ as the Fourier transform of the time-ordered two-point function (the one that comes from the path-integral):

∂²_Δ_(_x_) = _i__δ_(_x_) 

So that:

$$\Delta(k) = \frac{i}{k^2}$$

If the equations of motion are linear, the propagator will always be the reciprocal of the quadratic-form matrix that defines the free Lagrangian, since this gives the equations of motion. This is also easy to see directly from the path integral. The factor of disappears in the Euclidean theory.

Wick theorem

Because each field mode is an independent Gaussian, the expectation values for the product of many field modes obeys _Wick's theorem_:

⟨_ϕ_(_k_₁)_ϕ_(_k_₂)⋯_ϕ_(_k__(_n_))⟩

is zero unless the field modes coincide in pairs. This means that it is zero for an odd number of , and for an even number of , it is equal to a contribution from each pair separately, with a delta function.

$$\left\langle \phi(k_1) \cdots \phi(k_{2n})\right\rangle = \sum \prod_{i,j} \frac{\delta\left(k_i - k_j\right) }{k_i^2 }$$

where the sum is over each partition of the field modes into pairs, and the product is over the pairs. For example,

$$\left\langle \phi(k_1) \phi(k_2) \phi(k_3) \phi(k_4) \right\rangle = \frac{\delta(k_1 -k_2)}{k_1^2}\frac{\delta(k_3-k_4)}{k_3^2} + \frac{\delta(k_1-k_3)}{k_3^2}\frac{\delta(k_2-k_4)}{k_2^2} + \frac{\delta(k_1-k_4)}{k_1^2}\frac{\delta(k_2 -k_3)}{k_2^2}$$

An interpretation of Wick's theorem is that each field insertion can be thought of as a dangling line, and the expectation value is calculated by linking up the lines in pairs, putting a delta function factor that ensures that the momentum of each partner in the pair is equal, and dividing by the propagator.

Higher Gaussian moments — completing Wick's theorem

There is a subtle point left before Wick's theorem is proved—what if more than two of the phis have the same momentum? If it's an odd number, the integral is zero; negative values cancel with the positive values. But if the number is even, the integral is positive. The previous demonstration assumed that the phis would only match up in pairs.

But the theorem is correct even when arbitrarily many of the are equal, and this is a notable property of Gaussian integration:

$$I = \int e^{-ax^2/2}dx = \sqrt\frac{2\pi}{a}$$

$$\frac{\partial^n}{\partial a^n } I = \int \frac{x^{2n}}{2^n} e^{-ax^2/2}dx = \frac{1\cdot 3 \cdot 5 \ldots \cdot (2n-1) }{ 2 \cdot 2 \cdot 2 \ldots \;\;\;\;\;\cdot 2\;\;\;\;\;\;} \sqrt{2\pi}\, a^{-\frac{2n+1}{2}}$$

Dividing by ,

$$\left\langle x^{2n}\right\rangle=\frac{\displaystyle\int x^{2n} e^{-a x^2/2} }{\displaystyle \int e^{-a x^2/2} } = 1 \cdot 3 \cdot 5 \ldots \cdot (2n-1) \frac{1}{a^n}$$

$$\left\langle x^2 \right\rangle = \frac{1}{a}$$

If Wick's theorem were correct, the higher moments would be given by all possible pairings of a list of different :

⟨_x_₁_x_₂_x_₃⋯_x__(2_n_)⟩

where the are all the same variable, the index is just to keep track of the number of ways to pair them. The first can be paired with others, leaving . The next unpaired can be paired with different leaving , and so on. This means that Wick's theorem, uncorrected, says that the expectation value of should be:

⟨_x_^(2_n_)⟩ = (2_n_ − 1) ⋅ (2_n_ − 3)… ⋅ 5 ⋅ 3 ⋅ 1⟨_x_²⟩^(_n_)

and this is in fact the correct answer. So Wick's theorem holds no matter how many of the momenta of the internal variables coincide.

Interaction

Interactions are represented by higher order contributions, since quadratic contributions are always Gaussian. The simplest interaction is the quartic self-interaction, with an action:

$$S = \int \partial^\mu \phi \partial_\mu\phi +\frac {\lambda}{ 4!} \phi^4.$$

The reason for the combinatorial factor 4! will be clear soon. Writing the action in terms of the lattice (or continuum) Fourier modes:

_S_ = ∫_(_k_)_k_²|_ϕ_(_k_)|² + ∫_(_k_₁_k_₂_k_₃_k_₄)_ϕ_(_k_₁)_ϕ_(_k_₂)_ϕ_(_k_₃)_ϕ_(_k_₄)_δ_(_k_₁ + _k_₂ + _k_₃ + _k_₄) = _S__(_F_) + _X_.

Where is the free action, whose correlation functions are given by Wick's theorem. The exponential of in the path integral can be expanded in powers of , giving a series of corrections to the free action.

$$e^{-S} = e^{-S_F} \left( 1 + X + \frac{1}{2!} X X + \frac{1}{3!} X X X + \cdots \right)$$

The path integral for the interacting action is then a power series of corrections to the free action. The term represented by should be thought of as four half-lines, one for each factor of . The half-lines meet at a vertex, which contributes a delta-function that ensures that the sum of the momenta are all equal.

To compute a correlation function in the interacting theory, there is a contribution from the terms now. For example, the path-integral for the four-field correlator:

$$\left\langle \phi(k_1) \phi(k_2) \phi(k_3) \phi(k_4) \right\rangle = \frac{\displaystyle\int e^{-S} \phi(k_1)\phi(k_2)\phi(k_3)\phi(k_4) D\phi }{ Z}$$

which in the free field was only nonzero when the momenta were equal in pairs, is now nonzero for all values of . The momenta of the insertions can now match up with the momenta of the s in the expansion. The insertions should also be thought of as half-lines, four in this case, which carry a momentum , but one that is not integrated.

The lowest-order contribution comes from the first nontrivial term in the Taylor expansion of the action. Wick's theorem requires that the momenta in the half-lines, the factors in , should match up with the momenta of the external half-lines in pairs. The new contribution is equal to:

$$\lambda \frac{1}{ k_1^2} \frac{1}{ k_2^2} \frac{1}{ k_3^2} \frac{1}{ k_4^2}\,.$$

The 4! inside is canceled because there are exactly 4! ways to match the half-lines in to the external half-lines. Each of these different ways of matching the half-lines together in pairs contributes exactly once, regardless of the values of , by Wick's theorem.

Feynman diagrams

The expansion of the action in powers of gives a series of terms with progressively higher number of s. The contribution from the term with exactly s is called th order.

The th order terms has:

1.  internal half-lines, which are the factors of from the s. These all end on a vertex, and are integrated over all possible .

2.  external half-lines, which are the come from the insertions in the integral.

By Wick's theorem, each pair of half-lines must be paired together to make a _line_, and this line gives a factor of

$$\frac{\delta(k_1 + k_2)}{k_1^2}$$

which multiplies the contribution. This means that the two half-lines that make a line are forced to have equal and opposite momentum. The line itself should be labelled by an arrow, drawn parallel to the line, and labeled by the momentum in the line . The half-line at the tail end of the arrow carries momentum , while the half-line at the head-end carries momentum . If one of the two half-lines is external, this kills the integral over the internal , since it forces the internal to be equal to the external . If both are internal, the integral over remains.

The diagrams that are formed by linking the half-lines in the s with the external half-lines, representing insertions, are the Feynman diagrams of this theory. Each line carries a factor of , the propagator, and either goes from vertex to vertex, or ends at an insertion. If it is internal, it is integrated over. At each vertex, the total incoming is equal to the total outgoing .

The number of ways of making a diagram by joining half-lines into lines almost completely cancels the factorial factors coming from the Taylor series of the exponential and the 4! at each vertex.

Loop order

A forest diagram is one where all the internal lines have momentum that is completely determined by the external lines and the condition that the incoming and outgoing momentum are equal at each vertex. The contribution of these diagrams is a product of propagators, without any integration. A tree diagram is a connected forest diagram.

An example of a tree diagram is the one where each of four external lines end on an . Another is when three external lines end on an , and the remaining half-line joins up with another , and the remaining half-lines of this run off to external lines. These are all also forest diagrams (as every tree is a forest); an example of a forest that is not a tree is when eight external lines end on two s.

It is easy to verify that in all these cases, the momenta on all the internal lines is determined by the external momenta and the condition of momentum conservation in each vertex.

A diagram that is not a forest diagram is called a _loop_ diagram, and an example is one where two lines of an are joined to external lines, while the remaining two lines are joined to each other. The two lines joined to each other can have any momentum at all, since they both enter and leave the same vertex. A more complicated example is one where two s are joined to each other by matching the legs one to the other. This diagram has no external lines at all.

The reason loop diagrams are called loop diagrams is because the number of -integrals that are left undetermined by momentum conservation is equal to the number of independent closed loops in the diagram, where independent loops are counted as in homology theory. The homology is real-valued (actually valued), the value associated with each line is the momentum. The boundary operator takes each line to the sum of the end-vertices with a positive sign at the head and a negative sign at the tail. The condition that the momentum is conserved is exactly the condition that the boundary of the -valued weighted graph is zero.

A set of valid -values can be arbitrarily redefined whenever there is a closed loop. A closed loop is a cyclical path of adjacent vertices that never revisits the same vertex. Such a cycle can be thought of as the boundary of a hypothetical 2-cell. The -labellings of a graph that conserve momentum (i.e. which has zero boundary) up to redefinitions of (i.e. up to boundaries of 2-cells) define the first homology of a graph. The number of independent momenta that are not determined is then equal to the number of independent homology loops. For many graphs, this is equal to the number of loops as counted in the most intuitive way.

Symmetry factors

The number of ways to form a given Feynman diagram by joining together half-lines is large, and by Wick's theorem, each way of pairing up the half-lines contributes equally. Often, this completely cancels the factorials in the denominator of each term, but the cancellation is sometimes incomplete.

The uncancelled denominator is called the _symmetry factor_ of the diagram. The contribution of each diagram to the correlation function must be divided by its symmetry factor.

For example, consider the Feynman diagram formed from two external lines joined to one , and the remaining two half-lines in the joined to each other. There are 4 × 3 ways to join the external half-lines to the , and then there is only one way to join the two remaining lines to each other. The comes divided by 4 × 3 × 2}}, but the number of ways to link up the half lines to make the diagram is only 4 × 3, so the contribution of this diagram is divided by two.

For another example, consider the diagram formed by joining all the half-lines of one to all the half-lines of another . This diagram is called a _vacuum bubble_, because it does not link up to any external lines. There are 4! ways to form this diagram, but the denominator includes a 2! (from the expansion of the exponential, there are two s) and two factors of 4!. The contribution is multiplied by = .

Another example is the Feynman diagram formed from two s where each links up to two external lines, and the remaining two half-lines of each are joined to each other. The number of ways to link an to two external lines is 4 × 3, and either could link up to either pair, giving an additional factor of 2. The remaining two half-lines in the two s can be linked to each other in two ways, so that the total number of ways to form the diagram is , while the denominator is . The total symmetry factor is 2, and the contribution of this diagram is divided by 2.

The symmetry factor theorem gives the symmetry factor for a general diagram: the contribution of each Feynman diagram must be divided by the order of its group of automorphisms, the number of symmetries that it has.

An automorphism of a Feynman graph is a permutation of the lines and a permutation of the vertices with the following properties:

1.  If a line goes from vertex to vertex , then goes from to . If the line is undirected, as it is for a real scalar field, then can go from to too.
2.  If a line ends on an external line, ends on the same external line.
3.  If there are different types of lines, should preserve the type.

This theorem has an interpretation in terms of particle-paths: when identical particles are present, the integral over all intermediate particles must not double-count states that differ only by interchanging identical particles.

Proof: To prove this theorem, label all the internal and external lines of a diagram with a unique name. Then form the diagram by linking a half-line to a name and then to the other half line.

Now count the number of ways to form the named diagram. Each permutation of the s gives a different pattern of linking names to half-lines, and this is a factor of . Each permutation of the half-lines in a single gives a factor of 4!. So a named diagram can be formed in exactly as many ways as the denominator of the Feynman expansion.

But the number of unnamed diagrams is smaller than the number of named diagram by the order of the automorphism group of the graph.

Connected diagrams: _linked-cluster theorem_

Roughly speaking, a Feynman diagram is called _connected_ if all vertices and propagator lines are linked by a sequence of vertices and propagators of the diagram itself. If one views it as an undirected graph it is connected. The remarkable relevance of such diagrams in QFTs is due to the fact that they are sufficient to determine the quantum partition function . More precisely, connected Feynman diagrams determine

_i__W_[_J_] ≡ ln _Z_[_J_].

To see this, one should recall that

_Z_[_J_] ∝ ∑_(_k_)_D__(_k_)

with constructed from some (arbitrary) Feynman diagram that can be thought to consist of several connected components . If one encounters (identical) copies of a component within the Feynman diagram one has to include a _symmetry factor_ . However, in the end each contribution of a Feynman diagram to the partition function has the generic form

$$\prod_i \frac{C_{i}^{n_i} }{ n_i!}$$

where labels the (infinitely) many connected Feynman diagrams possible.

A scheme to successively create such contributions from the to is obtained by

$$\left(\frac{1}{0!}+\frac{C_1}{1!}+\frac{C^2_1}{2!}+\cdots\right)\left(1+C_2+\frac{1}{2}C^2_2+\cdots\right)\cdots$$

and therefore yields

$$Z[J]\propto\prod_i{\sum^\infty_{n_i=0}{\frac{C_i^{n_i}}{n_i!}}}=\exp{\sum_i{C_i}}\propto \exp{W[J]}\,.$$

To establish the _normalization_ exp _W_[0] {{=}} 1}} one simply calculates all connected _vacuum diagrams_, i.e., the diagrams without any _sources_ (sometimes referred to as _external legs_ of a Feynman diagram).

Vacuum bubbles

An immediate consequence of the linked-cluster theorem is that all vacuum bubbles, diagrams without external lines, cancel when calculating correlation functions. A correlation function is given by a ratio of path-integrals:

$$\left\langle \phi_1(x_1) \cdots \phi_n(x_n)\right\rangle = \frac{\displaystyle\int e^{-S} \phi_1(x_1) \cdots\phi_n(x_n)\, D\phi }{\displaystyle \int e^{-S}\, D\phi}\,.$$

The top is the sum over all Feynman diagrams, including disconnected diagrams that do not link up to external lines at all. In terms of the connected diagrams, the numerator includes the same contributions of vacuum bubbles as the denominator:

∫_e_^( − _S_)_ϕ_₁(_x_₁)⋯_ϕ__(_n_)(_x__(_n_)) _D__ϕ_ = (∑_E__(_i_))(exp(∑_(_i_)_C__(_i_))) .

Where the sum over diagrams includes only those diagrams each of whose connected components end on at least one external line. The vacuum bubbles are the same whatever the external lines, and give an overall multiplicative factor. The denominator is the sum over all vacuum bubbles, and dividing gets rid of the second factor.

The vacuum bubbles then are only useful for determining itself, which from the definition of the path integral is equal to:

_Z_ = ∫_e_^( − _S_)_D__ϕ_ = _e_^( − _H__T_) = _e_^( − _ρ__V_)

where is the energy density in the vacuum. Each vacuum bubble contains a factor of zeroing the total at each vertex, and when there are no external lines, this contains a factor of , because the momentum conservation is over-enforced. In finite volume, this factor can be identified as the total volume of space time. Dividing by the volume, the remaining integral for the vacuum bubble has an interpretation: it is a contribution to the energy density of the vacuum.

Sources

Correlation functions are the sum of the connected Feynman diagrams, but the formalism treats the connected and disconnected diagrams differently. Internal lines end on vertices, while external lines go off to insertions. Introducing _sources_ unifies the formalism, by making new vertices where one line can end.

Sources are external fields, fields that contribute to the action, but are not dynamical variables. A scalar field source is another scalar field that contributes a term to the (Lorentz) Lagrangian:

∫_h_(_x_)_ϕ_(_x_) _d_^(_d_)_x_ = ∫_h_(_k_)_ϕ_(_k_) _d_^(_d_)_k_ 

In the Feynman expansion, this contributes H terms with one half-line ending on a vertex. Lines in a Feynman diagram can now end either on an vertex, or on an vertex, and only one line enters an vertex. The Feynman rule for an vertex is that a line from an with momentum gets a factor of .

The sum of the connected diagrams in the presence of sources includes a term for each connected diagram in the absence of sources, except now the diagrams can end on the source. Traditionally, a source is represented by a little "×" with one line extending out, exactly as an insertion.

log (_Z_[_h_]) = ∑_(_n_, _C_)_h_(_k_₁)_h_(_k_₂)⋯_h_(_k__(_n_))_C_(_k_₁, ⋯, _k__(_n_)) 

where is the connected diagram with external lines carrying momentum as indicated. The sum is over all connected diagrams, as before.

The field is not dynamical, which means that there is no path integral over : is just a parameter in the Lagrangian, which varies from point to point. The path integral for the field is:

_Z_[_h_] = ∫_e_^(_i__S_ + _i_∫_h__ϕ_) _D__ϕ_ 

and it is a function of the values of at every point. One way to interpret this expression is that it is taking the Fourier transform in field space. If there is a probability density on , the Fourier transform of the probability density is:

$$\int \rho(y) e^{i k y}\, d^n y = \left\langle e^{i k y} \right\rangle = \left\langle \prod_{i=1}^{n} e^{ih_i y_i}\right\rangle \,$$

The Fourier transform is the expectation of an oscillatory exponential. The path integral in the presence of a source is:

_Z_[_h_] = ∫_e_^(_i__S_)_e_^(_i_∫_(_x_)_h_(_x_)_ϕ_(_x_)) _D__ϕ_ = ⟨_e_^(_i__h__ϕ_)⟩

which, on a lattice, is the product of an oscillatory exponential for each field value:

⟨∏_(_x_)_e_^(_i__h__(_x_)_ϕ__(_x_))⟩

The Fourier transform of a delta-function is a constant, which gives a formal expression for a delta function:

_δ_(_x_ − _y_) = ∫_e_^(_i__k_(_x_ − _y_)) _d__k_

This tells you what a field delta function looks like in a path-integral. For two scalar fields and ,

_δ_(_ϕ_ − _η_) = ∫_e_^(_i__h_(_x_)(_ϕ_(_x_) − _η_(_x_)) _d_^(_d_)_x_) _D__h_ ,

which integrates over the Fourier transform coordinate, over . This expression is useful for formally changing field coordinates in the path integral, much as a delta function is used to change coordinates in an ordinary multi-dimensional integral.

The partition function is now a function of the field , and the physical partition function is the value when is the zero function:

The correlation functions are derivatives of the path integral with respect to the source:

$$\left\langle\phi(x)\right\rangle = \frac{1}{Z} \frac{\partial}{\partial h(x)} Z[h] = \frac{\partial}{\partial h(x)} \log\big(Z[h]\big)\,.$$

In Euclidean space, source contributions to the action can still appear with a factor of , so that they still do a Fourier transform.

Spin ; "photons" and "ghosts"

Spin : Grassmann integrals

The field path integral can be extended to the Fermi case, but only if the notion of integration is expanded. A Grassmann integral of a free Fermi field is a high-dimensional determinant or Pfaffian, which defines the new type of Gaussian integration appropriate for Fermi fields.

The two fundamental formulas of Grassmann integration are:

∫_e_^(_M__(_i__j_)_ψ̄_^(_i_)_ψ_^(_j_)) _D__ψ̄_ _D__ψ_ = _D__e__t_(_M_) ,

where is an arbitrary matrix and are independent Grassmann variables for each index , and

$$\int e^{\frac12 A_{ij} \psi^i \psi^j}\, D\psi = \mathrm{Pfaff}(A)\,,$$

where is an antisymmetric matrix, is a collection of Grassmann variables, and the is to prevent double-counting (since −_ψ^(j)ψ^(i)_}}).

In matrix notation, where and are Grassmann-valued row vectors, and are Grassmann-valued column vectors, and is a real-valued matrix:

_Z_ = ∫_e_^(_ψ̄__M__ψ_ + _η̄__ψ_ + _ψ̄__η_) _D__ψ̄_ _D__ψ_ = ∫_e_^((_ψ̄_+_η̄__M_^( − 1))_M_(_ψ_+_M_^( − 1)_η_) − _η̄__M_^( − 1)_η_) _D__ψ̄_ _D__ψ_ = _D__e__t_(_M_)_e_^( − _η̄__M_^( − 1)_η_) ,

where the last equality is a consequence of the translation invariance of the Grassmann integral. The Grassmann variables are external sources for , and differentiating with respect to pulls down factors of .

$$\left\langle\bar\psi \psi\right\rangle = \frac{1}{Z} \frac{\partial}{\partial \eta} \frac{\partial}{\partial \bar\eta} Z |_{\eta=\bar\eta=0} = M^{-1}$$

again, in a schematic matrix notation. The meaning of the formula above is that the derivative with respect to the appropriate component of and gives the matrix element of . This is exactly analogous to the bosonic path integration formula for a Gaussian integral of a complex bosonic field:

$$\int e^{\phi^* M \phi + h^* \phi + \phi^* h } \,D\phi^*\, D\phi = \frac{e^{h^* M^{-1} h} }{ \mathrm{Det}(M)}$$

$$\left\langle\phi^* \phi\right\rangle = \frac{1}{Z} \frac{\partial}{\partial h} \frac{\partial}{\partial h^*}Z |_{h=h^*=0} = M^{-1} \,.$$

So that the propagator is the inverse of the matrix in the quadratic part of the action in both the Bose and Fermi case.

For real Grassmann fields, for Majorana fermions, the path integral a Pfaffian times a source quadratic form, and the formulas give the square root of the determinant, just as they do for real Bosonic fields. The propagator is still the inverse of the quadratic part.

The free Dirac Lagrangian:

∫_ψ̄_(_γ_^(_μ_)∂_(_μ_)−_m_)_ψ_

formally gives the equations of motion and the anticommutation relations of the Dirac field, just as the Klein Gordon Lagrangian in an ordinary path integral gives the equations of motion and commutation relations of the scalar field. By using the spatial Fourier transform of the Dirac field as a new basis for the Grassmann algebra, the quadratic part of the Dirac action becomes simple to invert:

_S_ = ∫_(_k_)_ψ̄_(_i__γ_^(_μ_)_k__(_μ_)−_m_)_ψ_ .

The propagator is the inverse of the matrix linking and , since different values of do not mix together.

$$\left\langle\bar\psi(k') \psi (k) \right\rangle = \delta (k+k')\frac{1} {\gamma\cdot k - m}  = \delta(k+k')\frac{\gamma\cdot k+m }{ k^2 - m^2}$$

The analog of Wick's theorem matches and in pairs:

$$\left\langle\bar\psi(k_1) \bar\psi(k_2) \cdots \bar\psi(k_n) \psi(k'_1) \cdots \psi(k_n)\right\rangle = \sum_{\mathrm{pairings}} (-1)^S \prod_{\mathrm{pairs}\; i,j} \delta\left(k_i -k_j\right) \frac{1}{\gamma\cdot k_i - m}$$

where S is the sign of the permutation that reorders the sequence of and to put the ones that are paired up to make the delta-functions next to each other, with the coming right before the . Since a pair is a commuting element of the Grassmann algebra, it doesn't matter what order the pairs are in. If more than one pair have the same , the integral is zero, and it is easy to check that the sum over pairings gives zero in this case (there are always an even number of them). This is the Grassmann analog of the higher Gaussian moments that completed the Bosonic Wick's theorem earlier.

The rules for spin- Dirac particles are as follows: The propagator is the inverse of the Dirac operator, the lines have arrows just as for a complex scalar field, and the diagram acquires an overall factor of −1 for each closed Fermi loop. If there are an odd number of Fermi loops, the diagram changes sign. Historically, the −1 rule was very difficult for Feynman to discover. He discovered it after a long process of trial and error, since he lacked a proper theory of Grassmann integration.

The rule follows from the observation that the number of Fermi lines at a vertex is always even. Each term in the Lagrangian must always be Bosonic. A Fermi loop is counted by following Fermionic lines until one comes back to the starting point, then removing those lines from the diagram. Repeating this process eventually erases all the Fermionic lines: this is the Euler algorithm to 2-color a graph, which works whenever each vertex has even degree. Note that the number of steps in the Euler algorithm is only equal to the number of independent Fermionic homology cycles in the common special case that all terms in the Lagrangian are exactly quadratic in the Fermi fields, so that each vertex has exactly two Fermionic lines. When there are four-Fermi interactions (like in the Fermi effective theory of the weak nuclear interactions) there are more -integrals than Fermi loops. In this case, the counting rule should apply the Euler algorithm by pairing up the Fermi lines at each vertex into pairs that together form a bosonic factor of the term in the Lagrangian, and when entering a vertex by one line, the algorithm should always leave with the partner line.

To clarify and prove the rule, consider a Feynman diagram formed from vertices, terms in the Lagrangian, with Fermion fields. The full term is Bosonic, it is a commuting element of the Grassmann algebra, so the order in which the vertices appear is not important. The Fermi lines are linked into loops, and when traversing the loop, one can reorder the vertex terms one after the other as one goes around without any sign cost. The exception is when you return to the starting point, and the final half-line must be joined with the unlinked first half-line. This requires one permutation to move the last to go in front of the first , and this gives the sign.

This rule is the only visible effect of the exclusion principle in internal lines. When there are external lines, the amplitudes are antisymmetric when two Fermi insertions for identical particles are interchanged. This is automatic in the source formalism, because the sources for Fermi fields are themselves Grassmann valued.

Spin 1: photons

The naive propagator for photons is infinite, since the Lagrangian for the A-field is:

$$S = \int \tfrac14 F^{\mu\nu} F_{\mu\nu} = \int -\tfrac12\left(\partial^\mu A_\nu \partial_\mu A^\nu - \partial^\mu A_\mu \partial_\nu A^\nu \right)\,.$$

The quadratic form defining the propagator is non-invertible. The reason is the gauge invariance of the field; adding a gradient to does not change the physics.

To fix this problem, one needs to fix a gauge. The most convenient way is to demand that the divergence of is some function , whose value is random from point to point. It does no harm to integrate over the values of , since it only determines the choice of gauge. This procedure inserts the following factor into the path integral for :

$$\int \delta\left(\partial_\mu A^\mu - f\right) e^{-\frac{f^2}{2} }\, Df\,.$$

The first factor, the delta function, fixes the gauge. The second factor sums over different values of that are inequivalent gauge fixings. This is simply

$$e^{- \frac{\left(\partial_\mu A_\mu\right)^2}{2}}\,.$$

The additional contribution from gauge-fixing cancels the second half of the free Lagrangian, giving the Feynman Lagrangian:

_S_ = ∫∂^(_μ_)_A_^(_ν_)∂_(_μ_)_A__(_ν_)

which is just like four independent free scalar fields, one for each component of . The Feynman propagator is:

$$\left\langle A_\mu(k) A_\nu(k') \right\rangle = \delta\left(k+k'\right) \frac{g_{\mu\nu}}{ k^2 }.$$

The one difference is that the sign of one propagator is wrong in the Lorentz case: the timelike component has an opposite sign propagator. This means that these particle states have negative norm—they are not physical states. In the case of photons, it is easy to show by diagram methods that these states are not physical—their contribution cancels with longitudinal photons to only leave two physical photon polarization contributions for any value of .

If the averaging over is done with a coefficient different from , the two terms don't cancel completely. This gives a covariant Lagrangian with a coefficient λ, which does not affect anything:

$$S= \int \tfrac12\left(\partial^\mu A^\nu \partial_\mu A_\nu - \lambda \left(\partial_\mu A^\mu\right)^2\right)$$

and the covariant propagator for QED is:

$$\left \langle A_\mu(k) A_\nu(k') \right\rangle =\delta\left(k+k'\right)\frac{g_{\mu\nu} - \lambda\frac{k_\mu k_\nu }{ k^2} }{ k^2}.$$

Spin 1: non-Abelian ghosts

To find the Feynman rules for non-Abelian gauge fields, the procedure that performs the gauge fixing must be carefully corrected to account for a change of variables in the path-integral.

The gauge fixing factor has an extra determinant from popping the delta function:

$$\delta\left(\partial_\mu A_\mu - f\right) e^{-\frac{f^2}{2}} \det M$$

To find the form of the determinant, consider first a simple two-dimensional integral of a function that depends only on , not on the angle . Inserting an integral over :

$$\int f(r)\, dx\, dy = \int f(r) \int d\theta\, \delta(y) \left|\frac{dy}{d\theta}\right|\, dx\, dy$$

The derivative-factor ensures that popping the delta function in removes the integral. Exchanging the order of integration,

$$\int f(r)\, dx\, dy = \int d\theta\, \int f(r) \delta(y) \left|\frac{dy}{d\theta}\right|\, dx\, dy$$

but now the delta-function can be popped in ,

$$\int f(r)\, dx\, dy = \int d\theta_0\, \int f(x) \left|\frac{dy}{d\theta}\right|\, dx\,.$$

The integral over just gives an overall factor of 2, while the rate of change of with a change in is just , so this exercise reproduces the standard formula for polar integration of a radial function:

∫_f_(_r_) _d__x_ _d__y_ = 2_π_∫_f_(_x_)_x_ _d__x_

In the path-integral for a nonabelian gauge field, the analogous manipulation is:

$$\int DA \int \delta\big(F(A)\big) \det\left(\frac{\partial F}{\partial G}\right)\, DG e^{iS} = \int DG \int \delta\big(F(A)\big)\det\left(\frac{\partial F}{ \partial G}\right) e^{iS} \,$$

The factor in front is the volume of the gauge group, and it contributes a constant, which can be discarded. The remaining integral is over the gauge fixed action.

$$\int \det\left(\frac{\partial F}{ \partial G}\right)e^{iS_{GF}}\, DA \,$$

To get a covariant gauge, the gauge fixing condition is the same as in the Abelian case:

∂_(_μ_)_A_^(_μ_) = _f_ ,

Whose variation under an infinitesimal gauge transformation is given by:

∂_(_μ_) _D__(_μ_)_α_ ,

where is the adjoint valued element of the Lie algebra at every point that performs the infinitesimal gauge transformation. This adds the Faddeev Popov determinant to the action:

det (∂_(_μ_) _D__(_μ_)) 

which can be rewritten as a Grassmann integral by introducing ghost fields:

∫_e_^(_η̄_∂_(_μ_) _D_^(_μ_)_η_) _D__η̄_ _D__η_ 

The determinant is independent of , so the path-integral over can give the Feynman propagator (or a covariant propagator) by choosing the measure for as in the abelian case. The full gauge fixed action is then the Yang Mills action in Feynman gauge with an additional ghost action:

_S_ = ∫Tr ∂_(_μ_)_A__(_ν_)∂^(_μ_)_A_^(_ν_) + _f__(_j__k_)^(_i_)∂^(_ν_)_A__(_i_)^(_μ_)_A__(_μ_)^(_j_)_A__(_ν_)^(_k_) + _f__(_j__r_)^(_i_)_f__(_k__l_)^(_r_)_A__(_i_)_A__(_j_)_A_^(_k_)_A_^(_l_) + Tr ∂_(_μ_)_η̄_∂^(_μ_)_η_ + _η̄__A__(_j_)_η_ 

The diagrams are derived from this action. The propagator for the spin-1 fields has the usual Feynman form. There are vertices of degree 3 with momentum factors whose couplings are the structure constants, and vertices of degree 4 whose couplings are products of structure constants. There are additional ghost loops, which cancel out timelike and longitudinal states in loops.

In the Abelian case, the determinant for covariant gauges does not depend on , so the ghosts do not contribute to the connected diagrams.


Particle-path representation

Feynman diagrams were originally discovered by Feynman, by trial and error, as a way to represent the contribution to the S-matrix from different classes of particle trajectories.

Schwinger representation

The Euclidean scalar propagator has a suggestive representation:

$$\frac{1}{p^2+m^2} = \int_0^\infty e^{-\tau\left(p^2 + m^2\right)}\, d\tau$$

The meaning of this identity (which is an elementary integration) is made clearer by Fourier transforming to real space.

$$\Delta(x) = \int_0^\infty d\tau e^{-m^2\tau} \frac{1}{ ({4\pi\tau})^{d/2}}e^\frac{-x^2}{ 4\tau}$$

The contribution at any one value of to the propagator is a Gaussian of width . The total propagation function from 0 to is a weighted sum over all proper times of a normalized Gaussian, the probability of ending up at after a random walk of time .

The path-integral representation for the propagator is then:

$$\Delta(x) = \int_0^\infty d\tau \int DX\, e^{- \int\limits_0^{\tau} \left(\frac{\dot{x}^2}{2} + m^2\right) d\tau'}$$

which is a path-integral rewrite of the SCHWINGER REPRESENTATION .

The Schwinger representation is both useful for making manifest the particle aspect of the propagator, and for symmetrizing denominators of loop diagrams.

Combining denominators

The Schwinger representation has an immediate practical application to loop diagrams. For example, for the diagram in the theory formed by joining two s together in two half-lines, and making the remaining lines external, the integral over the internal propagators in the loop is:

    $\int_k \frac{1}{k^2 + m^2} \frac{1}{ (k+p)^2 + m^2} \,.$

Here one line carries momentum and the other . The asymmetry can be fixed by putting everything in the Schwinger representation.

∫_(_t_, _t_′)_e_^( − _t_(_k_² + _m_²) − _t_′((_k_+_p_)²+_m_²)) _d__t_ _d__t_′ .

Now the exponent mostly depends on ,

∫_(_t_, _t_′)_e_^( − (_t_ + _t_′)(_k_² + _m_²) − _t_′2_p_ ⋅ _k_ − _t_′_p_²) ,

except for the asymmetrical little bit. Defining the variable _t_ + _t_′}} and }}, the variable goes from 0 to , while goes from 0 to 1. The variable is the total proper time for the loop, while parametrizes the fraction of the proper time on the top of the loop versus the bottom.

The Jacobian for this transformation of variables is easy to work out from the identities:

_d_(_u__v_) = _d__t_′ _d__u_ = _d__t_ + _d__t_′ ,

and "wedging" gives

_u_ _d__u_ ∧ _d__v_ = _d__t_ ∧ _d__t_′ 
.

This allows the integral to be evaluated explicitly:

$$\int_{u,v} u e^{-u \left( k^2+m^2 + v 2p\cdot k + v p^2\right)} = \int \frac{1}{\left(k^2 + m^2 + v 2p\cdot k - v p^2\right)^2}\, dv$$

leaving only the -integral. This method, invented by Schwinger but usually attributed to Feynman, is called _combining denominator_. Abstractly, it is the elementary identity:

$$\frac{1}{AB}= \int_0^1 \frac{1}{\big( vA+ (1-v)B\big)^2}\, dv$$

But this form does not provide the physical motivation for introducing ; is the proportion of proper time on one of the legs of the loop.

Once the denominators are combined, a shift in to _k_ + _vp_}} symmetrizes everything:

$$\int_0^1 \int\frac{1}{\left(k^2 + m^2 + 2vp \cdot k + v p^2\right)^2}\, dk\, dv = \int_0^1 \int \frac{1}{\left(k'^2 + m^2 + v(1-v)p^2\right)^2}\, dk'\, dv$$

This form shows that the moment that is more negative than four times the mass of the particle in the loop, which happens in a physical region of Lorentz space, the integral has a cut. This is exactly when the external momentum can create physical particles.

When the loop has more vertices, there are more denominators to combine:

$$\int dk\, \frac{1}{k^2 + m^2} \frac{1}{(k+p_1)^2 + m^2} \cdots \frac{1}{(k+p_n)^2 + m^2}$$

The general rule follows from the Schwinger prescription for denominators:

$$\frac{1}{D_0 D_1 \cdots D_n} = \int_0^\infty \cdots\int_0^\infty e^{-u_0 D_0 \cdots -u_n D_n}\, du_0 \cdots du_n \,.$$

The integral over the Schwinger parameters can be split up as before into an integral over the total proper time _u_₀ + _u_₁ … + _u_(n)_}} and an integral over the fraction of the proper time in all but the first segment of the loop }} for . The are positive and add up to less than 1, so that the integral is over an -dimensional simplex.

The Jacobian for the coordinate transformation can be worked out as before:

_d__u_ = _d__u_₀ + _d__u_₁⋯ + _d__u__(_n_) 

_d_(_u__v__(_i_)) = _d__u__(_i_) .

Wedging all these equations together, one obtains

_u_^(_n_) _d__u_ ∧ _d__v_₁ ∧ _d__v_₂⋯ ∧ _d__v__(_n_) = _d__u_₀ ∧ _d__u_₁⋯ ∧ _d__u__(_n_) .

This gives the integral:

∫₀^(∞)∫_(_s__i__m__p__l__e__x_)_u_^(_n_)_e_^( − _u_(_v_₀_D_₀+_v_₁_D_₁+_v_₂_D_₂⋯+_v__(_n_)_D__(_n_))) _d__v_₁⋯_d__v__(_n_) _d__u_ ,

where the simplex is the region defined by the conditions

$$v_i>0 \quad \mbox{and} \quad \sum_{i=1}^n v_i < 1$$
as well as

$$v_0 = 1-\sum_{i=1}^n v_i\,.$$
Performing the integral gives the general prescription for combining denominators:

$$\frac{1}{ D_0 \cdots D_n } = n! \int_{\mathrm{simplex}} \frac{1}{ \left(v_0 D_0 +v_1 D_1 \cdots + v_n D_n\right)^{n+1}}\, dv_1\, dv_2 \cdots dv_n$$

Since the numerator of the integrand is not involved, the same prescription works for any loop, no matter what the spins are carried by the legs. The interpretation of the parameters is that they are the fraction of the total proper time spent on each leg.

Scattering

The correlation functions of a quantum field theory describe the scattering of particles. The definition of "particle" in relativistic field theory is not self-evident, because if you try to determine the position so that the uncertainty is less than the compton wavelength, the uncertainty in energy is large enough to produce more particles and antiparticles of the same type from the vacuum. This means that the notion of a single-particle state is to some extent incompatible with the notion of an object localized in space.

In the 1930s, Wigner gave a mathematical definition for single-particle states: they are a collection of states that form an irreducible representation of the Poincaré group. Single particle states describe an object with a finite mass, a well defined momentum, and a spin. This definition is fine for protons and neutrons, electrons and photons, but it excludes quarks, which are permanently confined, so the modern point of view is more accommodating: a particle is anything whose interaction can be described in terms of Feynman diagrams, which have an interpretation as a sum over particle trajectories.

A field operator can act to produce a one-particle state from the vacuum, which means that the field operator produces a superposition of Wigner particle states. In the free field theory, the field produces one particle states only. But when there are interactions, the field operator can also produce 3-particle, 5-particle (if there is no +/− symmetry also 2, 4, 6 particle) states too. To compute the scattering amplitude for single particle states only requires a careful limit, sending the fields to infinity and integrating over space to get rid of the higher-order corrections.

The relation between scattering and correlation functions is the LSZ-theorem: The scattering amplitude for particles to go to particles in a scattering event is the given by the sum of the Feynman diagrams that go into the correlation function for field insertions, leaving out the propagators for the external legs.

For example, for the interaction of the previous section, the order contribution to the (Lorentz) correlation function is:

$$\left\langle \phi(k_1)\phi(k_2)\phi(k_3)\phi(k_4)\right\rangle = \frac{i}{k_1^2}\frac{i}{k_2^2} \frac{i}{k_3^2} \frac{i}{k_4^2} i\lambda \,$$

Stripping off the external propagators, that is, removing the factors of , gives the invariant scattering amplitude :

_M_ = _i__λ_ 

which is a constant, independent of the incoming and outgoing momentum. The interpretation of the scattering amplitude is that the sum of over all possible final states is the probability for the scattering event. The normalization of the single-particle states must be chosen carefully, however, to ensure that is a relativistic invariant.

Non-relativistic single particle states are labeled by the momentum , and they are chosen to have the same norm at every value of . This is because the nonrelativistic unit operator on single particle states is:

∫_d__k_ |_k_⟩⟨_k_| .

In relativity, the integral over the -states for a particle of mass m integrates over a hyperbola in space defined by the energy–momentum relation:

_E_² − _k_² = _m_² .

If the integral weighs each point equally, the measure is not Lorentz-invariant. The invariant measure integrates over all values of and , restricting to the hyperbola with a Lorentz-invariant delta function:

$$\int \delta(E^2-k^2 - m^2) |E,k\rangle\langle E,k|\, dE\, dk = \int {dk \over 2 E} |k\rangle\langle k|\,.$$

So the normalized -states are different from the relativistically normalized -states by a factor of

$$\sqrt{E} = \left(k^2-m^2\right)^\frac14\,.$$

The invariant amplitude is then the probability amplitude for relativistically normalized incoming states to become relativistically normalized outgoing states.

For nonrelativistic values of , the relativistic normalization is the same as the nonrelativistic normalization (up to a constant factor ). In this limit, the invariant scattering amplitude is still constant. The particles created by the field scatter in all directions with equal amplitude.

The nonrelativistic potential, which scatters in all directions with an equal amplitude (in the Born approximation), is one whose Fourier transform is constant—a delta-function potential. The lowest order scattering of the theory reveals the non-relativistic interpretation of this theory—it describes a collection of particles with a delta-function repulsion. Two such particles have an aversion to occupying the same point at the same time.


Nonperturbative effects

Thinking of Feynman diagrams as a perturbation series, nonperturbative effects like tunneling do not show up, because any effect that goes to zero faster than any polynomial does not affect the Taylor series. Even bound states are absent, since at any finite order particles are only exchanged a finite number of times, and to make a bound state, the binding force must last forever.

But this point of view is misleading, because the diagrams not only describe scattering, but they also are a representation of the short-distance field theory correlations. They encode not only asymptotic processes like particle scattering, they also describe the multiplication rules for fields, the operator product expansion. Nonperturbative tunneling processes involve field configurations that on average get big when the coupling constant gets small, but each configuration is a coherent superposition of particles whose local interactions are described by Feynman diagrams. When the coupling is small, these become collective processes that involve large numbers of particles, but where the interactions between each of the particles is simple.

This means that nonperturbative effects show up asymptotically in resummations of infinite classes of diagrams, and these diagrams can be locally simple. The graphs determine the local equations of motion, while the allowed large-scale configurations describe non-perturbative physics. But because Feynman propagators are nonlocal in time, translating a field process to a coherent particle language is not completely intuitive, and has only been explicitly worked out in certain special cases. In the case of nonrelativistic bound states, the Bethe–Salpeter equation describes the class of diagrams to include to describe a relativistic atom. For quantum chromodynamics, the Shifman Vainshtein Zakharov sum rules describe non-perturbatively excited long-wavelength field modes in particle language, but only in a phenomenological way.

The number of Feynman diagrams at high orders of perturbation theory is very large, because there are as many diagrams as there are graphs with a given number of nodes. Nonperturbative effects leave a signature on the way in which the number of diagrams and resummations diverge at high order. It is only because non-perturbative effects appear in hidden form in diagrams that it was possible to analyze nonperturbative effects in string theory, where in many cases a Feynman description is the only one available.


In popular culture

-   The use of the above diagram of the virtual particle producing a quark–antiquark pair was featured in the television sit-com _The Big Bang Theory_, in the episode "The Bat Jar Conjecture".
-   _PhD Comics_ of January 11, 2012, shows Feynman diagrams that _visualize and describe quantum academic interactions_, i.e. the paths followed by Ph.D. students when interacting with their advisors.[3]


See also

-   Julian Schwinger#Schwinger and Feynman
-   Stueckelberg–Feynman interpretation
-   Penguin diagram
-   Path integral formulation
-   Propagator
-   List of Feynman diagrams
-   Angular momentum diagrams (quantum mechanics)


Notes


References

-   -   -   (expanded, updated version of 't Hooft & Veltman, 1973, cited above)

-   -


External links

-   AMS article: "What's New in Mathematics: Finite-dimensional Feynman Diagrams"
-   Draw Feynman diagrams explained by Flip Tanedo at Quantumdiaries.com
-   Drawing Feynman diagrams with FeynDiagram C++ library that produces PostScript output.
-   Online Diagram Tool A graphical application for creating publication ready diagrams.
-   JaxoDraw A Java program for drawing Feynman diagrams.
-

Category:Concepts in physics Category:Scattering theory Category:Quantum field theory Category:Diagrams Category:Richard Feynman Category:1948 introductions

[1]

[2]

[3] Jorge Cham, Academic Interaction – Feynman Diagrams, January 11, 2012.