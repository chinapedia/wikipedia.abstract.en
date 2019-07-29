In vector calculus, and more generally differential geometry, STOKES' THEOREM (sometimes spelled STOKES'S THEOREM, and also called the GENERALIZED STOKES THEOREM or the STOKES–CARTAN THEOREM[1]) is a statement about the integration of differential forms on manifolds, which both simplifies and generalizes several theorems from vector calculus. Stokes' theorem says that the integral of a differential form over the boundary of some orientable manifold is equal to the integral of its exterior derivative over the whole of , i.e.,

∫_(∂_Ω_)_ω_ = ∫_(_Ω_)_d__ω_ .

Stokes' theorem was formulated in its modern form by Élie Cartan in 1945,[2] following earlier work on the generalization of the theorems of vector calculus by Vito Volterra, Édouard Goursat, and Henri Poincaré.[3][4]

This modern form of Stokes' theorem is a vast generalization of a classical result that Lord Kelvin communicated to George Stokes in a letter dated July 2, 1850.See:

-   -   The letter from Thomson to Stokes appears in:
-   Neither Thomson nor Stokes published a proof of the theorem. The first published proof appeared in 1861 in: Hankel doesn't mention the author of the theorem.
-   In a footnote, Larmor mentions earlier researchers who had integrated, over a surface, the curl of a vector field. See: [5][6] Stokes set the theorem as a question on the 1854 Smith's Prize exam, which led to the result bearing his name. It was first published by Hermann Hankel in 1861.[7]See:
-   The 1854 Smith's Prize Examination is available online at: Clerk Maxwell Foundation. Maxwell took this examination and tied for first place with Edward John Routh. See: See also Smith's prize or the Clerk Maxwell Foundation.
-   In a footnote on page 27, Maxwell mentions that Stokes used the theorem as question 8 in the Smith's Prize Examination of 1854. This footnote appears to have been the cause of the theorem's being known as "Stokes' theorem". This classical Kelvin–Stokes theorem relates the surface integral of the curl of a vector field over a surface in Euclidean three-space to the line integral of the vector field over its boundary: Let be a piecewise smooth Jordan plane curve. The Jordan curve theorem implies that divides into two components, a compact one and another that is non-compact. Let denote the compact part that is bounded by and suppose is smooth, with _ψ_(_D_)}}. If is the space curve defined by _ψ_(_γ_(_t_))}}[8] and is a smooth vector field on , then:[9][10][11]

∮_(_Γ_)F ⋅ _d_Γ = ∬_(_S_)∇ × F ⋅ _d_S

This classical statement, along with the classical divergence theorem, the fundamental theorem of calculus, and Green's theorem are simply special cases of the general formulation stated above.


Introduction

The fundamental theorem of calculus states that the integral of a function over the interval can be calculated by finding an antiderivative of :

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = _F_(_b_) − _F_(_a_) .

Stokes' theorem is a vast generalization of this theorem in the following sense.

-   By the choice of , . In the parlance of differential forms, this is saying that is the exterior derivative of the 0-form, i.e. function, : in other words, that . The general Stokes theorem applies to higher differential forms instead of just 0-forms such as .
-   A closed interval is a simple example of a one-dimensional manifold with boundary. Its boundary is the set consisting of the two points and . Integrating over the interval may be generalized to integrating forms on a higher-dimensional manifold. Two technical conditions are needed: the manifold has to be orientable, and the form has to be compactly supported in order to give a well-defined integral.
-   The two points and form the boundary of the closed interval. More generally, Stokes' theorem applies to oriented manifolds with boundary. The boundary of is itself a manifold and inherits a natural orientation from that of . For example, the natural orientation of the interval gives an orientation of the two boundary points. Intuitively, inherits the opposite orientation as , as they are at opposite ends of the interval. So, "integrating" over two boundary points , is taking the difference .

In even simpler terms, one can consider the points as boundaries of curves, that is as 0-dimensional boundaries of 1-dimensional manifolds. So, just as one can find the value of an integral () over a 1-dimensional manifold () by considering the anti-derivative () at the 0-dimensional boundaries (), one can generalize the fundamental theorem of calculus, with a few additional caveats, to deal with the value of integrals () over -dimensional manifolds () by considering the antiderivative () at the -dimensional boundaries () of the manifold.

So the fundamental theorem reads:

∫_([_a_, _b_])_f_(_x_) _d__x_ = ∫_([_a_, _b_])_d__F_ = ∫_({_a_}^(−) ∪ {_b_}⁺)_F_ = _F_(_b_) − _F_(_a_) .


Formulation for smooth manifolds with boundary

Let be an oriented smooth manifold with boundary of dimension and let be a smooth -differential form that is compactly supported on . First, suppose that is compactly supported in the domain of a single, oriented coordinate chart . In this case, we define the integral of over as

∫_(_Ω_)_α_ = ∫_(_φ_(_U_))(_φ_^( − 1))^(*)_α_ ,

i.e., via the pullback of to .

More generally, the integral of over is defined as follows: Let be a partition of unity associated with a locally finite cover of (consistently oriented) coordinate charts, then define the integral

∫_(_Ω_)_α_ ≡ ∑_(_i_)∫_(_U__(_i_))_ψ__(_i_)_α_ ,

where each term in the sum is evaluated by pulling back to as described above. This quantity is well-defined; that is, it does not depend on the choice of the coordinate charts, nor the partition of unity.

The generalized Stokes theorem reads:

Conventionally, ∫_(∂Ω)i^(*)ω is abbreviated as ∫_(∂Ω)ω, since the pullback of a differential form by the inclusion map is simply its restriction to its domain: i^(*)ω = ω|_(∂Ω). Here d is the exterior derivative, which is defined using the manifold structure only. The right-hand side is sometimes written as ∮_(∂Ω)ω to stress the fact that the (n − 1)-manifold ∂Ω has no boundary.For mathematicians this fact is known, therefore the circle is redundant and often omitted. However, one should keep in mind here that in thermodynamics, where frequently expressions as appear (wherein the total derivative, see below, should not be confused with the exterior one), the integration path is a one-dimensional closed line on a much higher-dimensional manifold. That is, in a thermodynamic application, where is a function of the temperature _T_}}, the volume _V_}}, and the electrical polarization _P_}} of the sample, one has

$$\{d_\text{total}U\}=\sum_{i=1}^3\frac{\partial U}{\partial\alpha_i}\,d\alpha_i\,,$$
and the circle is really necessary, e.g. if one considers the _differential_ consequences of the _integral_ postulate

$$\oint_W\,\{d_\text{total}U\}\, \stackrel{!}{=}\,0\,.$$
(This fact is also an implication of Stokes' theorem, since for a given smooth n-dimensional manifold Ω, application of the theorem twice gives ∫_(∂(∂Ω))ω = ∫_(Ω)d(dω) = 0 for any (n − 2)-form ω, which implies that ∂(∂Ω) = ∅.) The right-hand side of the equation is often used to formulate _integral_ laws; the left-hand side then leads to equivalent _differential_ formulations (see below).

The theorem is often used in situations where Ω is an embedded oriented submanifold of some bigger manifold, often R^(k), on which the form ω is defined.


Topological preliminaries; integration over chains

Let be a smooth manifold. A (smooth) singular [[Simplex|, have zero integral over _boundaries_, i.e. over manifolds that can be written as , and

1.  exact forms, i.e., _dσ_}}, have zero integral over _cycles_, i.e. if the boundaries sum up to the empty set: ∅}}.

De Rham's theorem shows that this homomorphism is in fact an isomorphism. So the converse to 1 and 2 above hold true. In other words, if are cycles generating the th homology group, then for any corresponding real numbers, , there exist a closed form, , such that

∮_(_c__(_i_))_ω_ = _a__(_i_) ,

and this form is unique up to exact forms.

Stokes' theorem on smooth manifolds can be derived from Stokes' theorem for chains in smooth manifolds, and vice versa.[12] Formally stated, the latter reads:[13]


Underlying principle

Stokes_patch.svg To simplify these topological arguments, it is worthwhile to examine the underlying principle by considering an example for 2}} dimensions. The essential idea can be understood by the diagram on the left, which shows that, in an oriented tiling of a manifold, the interior paths are traversed in opposite directions; their contributions to the path integral thus cancel each other pairwise. As a consequence, only the contribution from the boundary remains. It thus suffices to prove Stokes' theorem for sufficiently fine tilings (or, equivalently, simplices), which usually is not difficult.


Generalization to rough sets

Green's-theorem-simple-region.svg, so its boundary is not a smooth manifold.]]

The formulation above, in which is a smooth manifold with boundary, does not suffice in many applications. For example, if the domain of integration is defined as the plane region between two -coordinates and the graphs of two functions, it will often happen that the domain has corners. In such a case, the corner points mean that is not a smooth manifold with boundary, and so the statement of Stokes' theorem given above does not apply. Nevertheless, it is possible to check that the conclusion of Stokes' theorem is still true. This is because and its boundary are well-behaved away from a small set of points (a measure zero set).

A version of Stokes' theorem that extends to rough domains was proved by Whitney.[14] Assume that is a connected bounded open subset of . Call a _standard domain_ if it satisfies the following property: There exists a subset of , open in , whose complement in has [[Hausdorff_measure|Hausdorff and is the region . Whitney remarks that the boundary of a standard domain is the union of a set of zero Hausdorff -measure and a finite or countable union of smooth -manifolds, each of which has the domain on only one side. He then proves that if is a standard domain in , is an -form which is defined, continuous, and bounded on , smooth on , integrable on , and such that is integrable on , then Stokes' theorem holds, that is,

∫_(_P_)_ω_ = ∫_(_D_)_d__ω_ .

The study of measure-theoretic properties of rough sets leads to geometric measure theory. Even more general versions of Stokes' theorem have been proved by Federer and by Harrison.[15]


Special cases

The general form of the Stokes theorem using differential forms is more powerful and easier to use than the special cases. The traditional versions can be formulated using Cartesian coordinates without the machinery of differential geometry, and thus are more accessible. Further, they are older and their names are more familiar as a result. The traditional forms are often considered more convenient by practicing scientists and engineers but the non-naturalness of the traditional formulation becomes apparent when using other coordinate systems, even familiar ones like spherical or cylindrical coordinates. There is potential for confusion in the way names are applied, and the use of dual formulations.

Kelvin–Stokes theorem

Stokes'_Theorem.svg

This is a (dualized) (1 + 1)-dimensional case, for a 1-form (dualized because it is a statement about vector fields). This special case is often just referred to as _Stokes' theorem_ in many introductory university vector calculus courses and is used in physics and engineering. It is also sometimes known as the CURL theorem.

The classical Kelvin–Stokes theorem relates the surface integral of the curl of a vector field over a surface in Euclidean three-space to the line integral of the vector field over its boundary. It is a special case of the general Stokes theorem (with 2}}) once we identify a vector field with a 1-form using the metric on Euclidean 3-space. The curve of the line integral, , must have positive orientation, meaning that points counterclockwise when the surface normal, , points toward the viewer.

One consequence of the Kelvin–Stokes theorem is that the field lines of a vector field with zero curl cannot be closed contours. The formula can be rewritten as:

Suppose is defined in region with smooth surface and has first-order continuous partial derivatives. Then

    \begin{align}

& \iint_\Sigma \Bigg(\left(\frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z} \right)\,dy\,dz +\left(\frac{\partial P}{\partial z}-\frac{\partial R}{\partial x} \right) \,dz\,dx +\left (\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\,dx\,dy\Bigg) \\[4pt] = {} & \oint_{\partial\Sigma} \Big(P\,dx+Q\,dy+R\,dz\Big)\,,\end{align}
where , and are the components of , and is boundary of region with smooth surface .

Green's theorem

Green's theorem is immediately recognizable as the third integrand of both sides in the integral in terms of , , and cited above.

In electromagnetism

Two of the four Maxwell equations involve curls of 3-D vector fields, and their differential and integral forms are related by the Kelvin–Stokes theorem. Caution must be taken to avoid cases with moving boundaries: the partial time derivatives are intended to exclude such cases. If moving boundaries are included, interchange of integration and differentiation introduces terms related to boundary motion not included in the results below (see Differentiation under the integral sign):

+-----------------------------+-----------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                        | Differential form                                                                             | Integral form (using Kelvin–Stokes theorem plus relativistic invariance, )                                                                                                                                                                                                         |
+=============================+===============================================================================================+====================================================================================================================================================================================================================================================================================+
| Maxwell–Faraday equation    | $\quad \nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}} {\partial t} \quad$             | $\begin{align}\quad \oint_C \mathbf{E} \cdot d\mathbf{l} &= \iint_S  \nabla \times \mathbf{E} \cdot d\mathbf{A} \\ &= -\iint_S \frac{\partial \mathbf{B}}{\partial t} \cdot d\mathbf{A}\end{align}\quad$ (with and not necessarily stationary)                                     |
| Faraday's law of induction: |                                                                                               |                                                                                                                                                                                                                                                                                    |
+-----------------------------+-----------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Ampère's law                | $\quad \nabla \times \mathbf{H} = \mathbf{J} + \frac{\partial \mathbf{D}} {\partial t} \quad$ | $\begin{align}\quad \oint_C \mathbf{H} \cdot d\mathbf{l} &= \iint_S \nabla \times \mathbf{H} \cdot d\mathbf{A}\\ &= \iint_S \mathbf{J} \cdot d\mathbf{A} + \iint_S \frac{\partial \mathbf{D}}{\partial t} \cdot d\mathbf{A}\end{align}\quad$ (with and not necessarily stationary) |
| (with Maxwell's extension): |                                                                                               |                                                                                                                                                                                                                                                                                    |
+-----------------------------+-----------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The above listed subset of Maxwell's equations are valid for electromagnetic fields expressed in SI units. In other systems of units, such as CGS or Gaussian units, the scaling factors for the terms differ. For example, in Gaussian units, Faraday's law of induction and Ampère's law take the forms:[16][17]

$$\begin{align} \nabla \times \mathbf{E} &= -\frac{1}{c} \frac{\partial \mathbf{B}} {\partial t}\,, \\
\nabla \times \mathbf{H} &= \frac{1}{c} \frac{\partial \mathbf{D}} {\partial t} + \frac{4\pi}{c} \mathbf{J}\,, \end{align}$$

respectively, where is the speed of light in vacuum.

Divergence theorem

Likewise, the Ostrogradsky–Gauss theorem (also known as the divergence theorem or Gauss's theorem)

∫_(_V__o__l_)∇ ⋅ F _d__(_V__o__l_) = ∮_(∂_V__o__l_)F ⋅ _d_Σ

is a special case if we identify a vector field with the -form obtained by contracting the vector field with the Euclidean volume form. An application of this is the case _f_C}} where is an arbitrary constant vector. Working out the divergence of the product gives

C ⋅ ∫_(_V__o__l_)∇_f_ _d__(_V__o__l_) = C ⋅ ∮_(∂_V__o__l_)_f_ _d_Σ .
Since this holds for all we find

∫_(_V__o__l_)∇_f_ _d__(_V__o__l_) = ∮_(∂_V__o__l_)_f_ _d_Σ .


See also

-   Chandrasekhar–Wentzel lemma


Footnotes


References


Further reading

-   -   -   -   -   -   -   -   -   -   -


External links

-   -   Proof of the Divergence Theorem and Stokes' Theorem
-   Calculus 3 – Stokes Theorem from lamar.edu – an expository explanation

Category:Differential topology Category:Differential forms Category:Duality theories Category:Integration on manifolds Category:Theorems in calculus Category:Theorems in differential geometry

[1]  Michel Moisan {{!}} Springer|language=en}}

[2]

[3]

[4]

[5]

[6] Spivak (1965), p. vii, Preface.

[7]

[8]  and are both loops, however, is not necessarily a Jordan curve

[9]

[10] This proof is based on the Lecture Notes given by Prof. Robert Scheichl (University of Bath, U.K) 1, please refer the 2

[11] This proof is also same to the proof shown in

[12]

[13]

[14] Whitney, _Geometric Integration Theory,_ III.14.

[15]

[16]

[17]