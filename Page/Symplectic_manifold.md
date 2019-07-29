In mathematics, a SYMPLECTIC MANIFOLD is a smooth manifold, _M_, equipped with a closed nondegenerate differential 2-form, _ω_, called the symplectic form. The study of symplectic manifolds is called symplectic geometry or symplectic topology. Symplectic manifolds arise naturally in abstract formulations of classical mechanics and analytical mechanics as the cotangent bundles of manifolds. For example, in the Hamiltonian formulation of classical mechanics, which provides one of the major motivations for the field, the set of all possible configurations of a system is modeled as a manifold, and this manifold's cotangent bundle describes the phase space of the system.

Any real-valued differentiable function, _H_, on a symplectic manifold can serve as an ENERGY FUNCTION or HAMILTONIAN. Associated to any Hamiltonian is a Hamiltonian vector field; the integral curves of the Hamiltonian vector field are solutions to Hamilton's equations. The Hamiltonian vector field defines a flow on the symplectic manifold, called a HAMILTONIAN FLOW or symplectomorphism. By Liouville's theorem, Hamiltonian flows preserve the volume form on the phase space.


Motivation

Symplectic manifolds arise from classical mechanics, in particular, they are a generalization of the phase space of a closed system.[1] In the same way the Hamilton equations allow one to derive the time evolution of a system from a set of differential equations, the symplectic form should allow one to obtain a vector field describing the flow of the system from the differential _dH_ of a Hamiltonian function _H_.[2] So we require a linear map , or equivalently, an element of . Letting _ω_ denote a section of , the requirement that _ω_ be non-degenerate ensures that for every differential _dH_ there is a unique corresponding vector field _V_(H)_ such that . Since one desires the Hamiltonian to be constant along flow lines, one should have , which implies that _ω_ is alternating and hence a 2-form. Finally, one makes the requirement that _ω_ should not change under flow lines, i.e. that the Lie derivative of _ω_ along _V_(H)_ vanishes. Applying Cartan's formula, this amounts to (here ι_(X) is the interior product):

ℒ_(_V__(_H_))(_ω_) = 0 ⇔ _d_(_ι__(_V__(_H_))_ω_) + _ι__(_V__(_H_))_d__ω_ = _d_(_d_ _H_) + _d__ω_(_V__(_H_)) = _d__ω_(_V__(_H_)) = 0

so that, on repeating this argument for different smooth functions H such that the corresponding V_(H) span the tangent space at each point the argument is applied at, we see that the requirement for the vanishing Lie derivative along flows of V_(H) corresponding to arbitrary smooth H is equivalent to the requirement that _ω_ should be closed.


Definition

A symplectic form on a manifold _M_ is a closed non-degenerate differential 2-form _ω_.[3][4] Here, non-degenerate means that for all , if there exists an such that for all , then . The skew-symmetric condition (inherent in the definition of differential 2-form) means that for all we have for all In odd dimensions, antisymmetric matrices are not invertible. Since _ω_ is a differential two-form, the skew-symmetric condition implies that _M_ has even dimension.[5][6] The closed condition means that the exterior derivative of ''ω _vanishes, . A symplectic manifold consists of a pair (_M_,_ω''), of a manifold _M_ and a symplectic form _ω_. Assigning a symplectic form _ω_ to a manifold _M_ is referred to as giving _M_ a SYMPLECTIC STRUCTURE.


Linear symplectic manifold

There is a standard linear model, namely a symplectic vector space $\R^{2n}.$ Let {v₁, …, v_(2n)} be a basis for $\R^{2n}.$ We define our symplectic form _ω_ on this basis as follows:

$$\omega(v_i, v_j) = \begin{cases} 1 & j-i =n \text{ with } 1 \leqslant i \leqslant n \\ -1 & i-j =n \text{ with } 1 \leqslant j \leqslant n \\ 0 & \text{otherwise} \end{cases}$$

In this case the symplectic form reduces to a simple quadratic form. If _I_(n)_ denotes the _n_ × _n_ identity matrix then the matrix, Ω, of this quadratic form is given by the block matrix:

$$\Omega = \begin{pmatrix} 0 & I_n  \\ -I_n & 0 \end{pmatrix}.$$


Lagrangian and other submanifolds

There are several natural geometric notions of submanifold of a symplectic manifold.

-   SYMPLECTIC SUBMANIFOLDS (potentially of any even dimension) are submanifolds where the symplectic form is required to induce a symplectic form on them.

-   ISOTROPIC SUBMANIFOLDS are submanifolds where the symplectic form restricts to zero, i.e. each tangent space is an isotropic subspace of the ambient manifold's tangent space. Similarly, if each tangent subspace to a submanifold is co-isotropic (the dual of an isotropic subspace), the submanifold is called CO-ISOTROPIC.

-   LAGRANGIAN SUBMANIFOLDS of a sympletic manifold (M, ω) are submanifolds where the restriction of the symplectic form ω to L ⊂ M is vanishing, i.e. ω|_(L) = 0 and $\text{dim }L=\tfrac{1}{2}\dim M$. Langrangian submanifolds are the maximal isotropic submanifolds.

The most important case of the isotropic submanifolds is that of LAGRANGIAN SUBMANIFOLDS. A Lagrangian submanifold is, by definition, an isotropic submanifold of maximal dimension, namely half the dimension of the ambient symplectic manifold. One major example is that the graph of a symplectomorphism in the product symplectic manifold is Lagrangian. Their intersections display rigidity properties not possessed by smooth manifolds; the Arnold conjecture gives the sum of the submanifold's Betti numbers as a lower bound for the number of self intersections of a smooth Lagrangian submanifold, rather than the Euler characteristic in the smooth case.

Examples

Let $\R^{2n}_{\textbf{x},\textbf{y}}$ have global coordinates labelled (x₁, …, x_(n), y₁, …, y_(n)). Then, we can equip $\R_{\textbf{x},\textbf{y}}^{2n}$ with the canonical symplectic form

_ω_ = _d__x_₁ ∧ _d__y_₁ + ⋯ + _d__x__(_n_) ∧ _d__y__(_n_).

There is a standard Lagrangian submanifold given by $\R^n_{\mathbf{x}} \to \R^{2n}_{\mathbf{x},\mathbf{y}}$. The form ω vanishes on $\R^n_{\mathbf{x}}$ because given any pair of tangent vectors X = f_(i)(X)∂_(x_(i)), Y = g_(i)(X)∂_(x_(i)), we have that ω(X, Y) = 0. To elucidate, consider the case n = 1. Then, X = f(x)∂_(x), Y = g(x)∂_(x), and ω = dx ∧ dy. Notice that when we expand this out

$$\omega(X,Y) = \omega(f(x)\partial_x,g(x)\partial_x) = \frac{1}{2}f(x)g(x)(\mathrm{d}x(\partial_x)\mathrm{d}y(\partial_x) - \mathrm{d}y(\partial_x)\mathrm{d}x(\partial_x))$$

both terms we have a dy(∂_(x)) factor, which is 0, by definition.

The cotangent bundle of a manifold is locally modeled on a space similar to the first example. It can be shown that we can glue these affine symplectic forms hence this bundle forms a symplectic manifold. A more non-trivial example of a Lagrangian submanifold is the zero section of the cotangent bundle of a manifold. For example, let

$$X = \{(x,y) \in \R^2 : y^2 - x = 0\}.$$

Then, we can present T^(*)X as

$$T^*X = \{(x,y,\mathrm{d}x,\mathrm{d}y) \in \R^4 : y^2 - x = 0, 2y\mathrm{d}y - \mathrm{d}x = 0\}$$

where we are treating the symbols dx, dy as coordinates of $\R^4 = T^*\R^2.$ We can consider the subset where the coordinates dx = 0 and dy = 0, giving us the zero section. This example can be repeated for any manifold defined by the vanishing locus of smooth functions f₁, …, f_(k) and their differentials df₁, …, df_(k).

Another useful class of Lagrangian submanifolds can be found using Morse theory. Given a Morse function $f:M\to\R$ and for a small enough ε one can construct a Lagrangian submanifold given by the vanishing locus 𝕍(ε ⋅ df) ⊂ T^(*)M. For a generic morse function we have a Lagrangian intersection given by M ∩ 𝕍(ε ⋅ df) = Crit(f).

Special Lagrangian submanifolds

In the case of Kahler manifolds (or Calabi-Yau manifolds) we can make a choice Ω = Ω₁ + iΩ₂ on M as a holomorphic n-form, where Ω₁ is the real part and Ω₂ imaginary. A Lagrangian submanifold L is called SPECIAL if in addition to the above Lagrangian condition the restriction Ω₂ to L is vanishing. In other words, the real part Ω₁ restricted on L leads the volume form on L. The following examples are known as special Lagrangian submanifolds,

:# complex Lagrangian submanifolds of hyperKahler manifolds,

:# fixed points of a real structure of Calabi-Yau manifolds. The SYZ conjecture has been proved for special Lagrangian submanifolds but in general, it is open, and brings a lot of impacts to the study of mirror symmetry. see


Lagrangian fibration

A LAGRANGIAN FIBRATION of a symplectic manifold _M_ is a fibration where all of the fibres are Lagrangian submanifolds. Since _M_ is even-dimensional we can take local coordinates and by Darboux's theorem the symplectic form _ω_ can be, at least locally, written as , where d denotes the exterior derivative and ∧ denotes the exterior product. Using this set-up we can locally think of _M_ as being the cotangent bundle $T^*\R^n,$ and the Lagrangian fibration as the trivial fibration $\pi: T^*\R^n \to \R^n.$ This is the canonical picture.


Lagrangian mapping

TIKZ_PICT_FBN.png Let _L_ be a Lagrangian submanifold of a symplectic manifold (_K_,ω) given by an immersion (_i_ is called a LAGRANGIAN IMMERSION). Let give a Lagrangian fibration of _K_. The composite is a LAGRANGIAN MAPPING. The critical value set of _π_ ∘ _i_ is called a caustic.

Two Lagrangian maps and are called LAGRANGIAN EQUIVALENT if there exist diffeomorphisms _σ_, _τ_ and _ν_ such that both sides of the diagram given on the right commute, and _τ_ preserves the symplectic form.[7] Symbolically:

    τ ∘ i₁ = i₂ ∘ σ, ν ∘ π₁ = π₂ ∘ τ, τ^(*)ω₂ = ω₁ ,

where _τ_^(∗)_ω_₂ denotes the pull back of _ω_₂ by _τ_.


Special cases and generalizations

-   A symplectic manifold endowed with a metric that is compatible with the symplectic form is an almost Kähler manifold in the sense that the tangent bundle has an almost complex structure, but this need not be integrable.

-   Symplectic manifolds are special cases of a Poisson manifold. The definition of a symplectic manifold requires that the symplectic form be non-degenerate everywhere, but if this condition is violated, the manifold may still be a Poisson manifold.

-   A MULTISYMPLECTIC MANIFOLD of degree _k_ is a manifold equipped with a closed nondegenerate _k_-form.[8]

-   A POLYSYMPLECTIC MANIFOLD is a Legendre bundle provided with a polysymplectic tangent-valued (n + 2)-form; it is utilized in Hamiltonian field theory.[9]


See also

-   Almost complex manifold
-   Almost symplectic manifold
-   Contact manifold − an odd-dimensional counterpart of the symplectic manifold.
-   Fedosov manifold
-   Poisson bracket
-   Symplectic group
-   Symplectic matrix
-   Symplectic topology
-   Symplectic vector space
-   Symplectomorphism
-   Tautological one-form
-   Wirtinger inequality (2-forms)
-   Covariant Hamiltonian field theory


Notes


References

-   Dusa McDuff and D. Salamon: _Introduction to Symplectic Topology_ (1998) Oxford Mathematical Monographs, .
-   Denis Auroux _Seminar on Mirror Symmetry_ https://math.berkeley.edu/~auroux/290s16.html
-   Eckhard Meinrenken _Symplectic Geometry_ http://www.math.toronto.edu/mein/teaching/LectureNotes/sympl.pdf
-   Ralph Abraham and Jerrold E. Marsden, _Foundations of Mechanics_, (1978) Benjamin-Cummings, London _See section 3.2_.
-   Maurice A. de Gosson: _Symplectic Geometry and Quantum Mechanics_ (2006) Birkhäuser Verlag, Basel .
-


External links

-   How to find Lagrangian Submanifolds - Math.Stackexchange
-   -   Sardanashvily, G., Fibre bundles, jet manifolds and Lagrangian theory. Lectures for theoreticians,arXiv: 0908.1886
-   McDuff, D., Symplectic structures - a new approach to geometry, Notices of the AMS, November 1998
-   -

Category:Differential topology Category:Symplectic geometry Category:Hamiltonian mechanics Category:Smooth manifolds

[1] Ben Webster: _What is a symplectic manifold, really?_ http://sbseminar.wordpress.com/2012/01/09/what-is-a-symplectic-manifold-really/

[2] Henry Cohn: _Why symplectic geometry is the natural setting for classical mechanics_ http://math.mit.edu/~cohn/Thoughts/symplectic.html

[3] Maurice de Gosson: _Symplectic Geometry and Quantum Mechanics_ (2006) Birkhäuser Verlag, Basel . (page 10)

[4]

[5]

[6]

[7]

[8] F. Cantrijn, L. A. Ibort and M. de León, J. Austral. Math. Soc. Ser. A 66 (1999), no. 3, 303-330.

[9] G. Giachetta, L. Mangiarotti and G. Sardanashvily, Covariant Hamiltonian equations for field theory, Journal of Physics A32 (1999) 6629-6642; arXiv: hep-th/9904062.