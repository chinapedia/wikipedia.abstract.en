Drum_vibration_mode12.gif. These modes are eigenfunctions of a linear operator on a function space, a common construction in functional analysis.]]

FUNCTIONAL ANALYSIS is a branch of mathematical analysis, the core of which is formed by the study of vector spaces endowed with some kind of limit-related structure (e.g. inner product, norm, topology, etc.) and the linear functions defined on these spaces and respecting these structures in a suitable sense. The historical roots of functional analysis lie in the study of spaces of functions and the formulation of properties of transformations of functions such as the Fourier transform as transformations defining continuous, unitary etc. operators between function spaces. This point of view turned out to be particularly useful for the study of differential and integral equations.

The usage of the word _functional_ as a noun goes back to the calculus of variations, implying a function whose argument is a function. The term was first used in Hadamard's 1910 book on that subject. However, the general concept of a functional had previously been introduced in 1887 by the Italian mathematician and physicist Vito Volterra.[1][2] The theory of nonlinear functionals was continued by students of Hadamard, in particular Fréchet and Lévy. Hadamard also founded the modern school of linear functional analysis further developed by Riesz and the group of Polish mathematicians around Stefan Banach.

In modern introductory texts to functional analysis, the subject is seen as the study of vector spaces endowed with a topology, in particular infinite-dimensional spaces. In contrast, linear algebra deals mostly with finite-dimensional spaces, and does not use topology. An important part of functional analysis is the extension of the theory of measure, integration, and probability to infinite dimensional spaces, also known as INFINITE DIMENSIONAL ANALYSIS.


Normed vector spaces

The basic and historically first class of spaces studied in functional analysis are complete normed vector spaces over the real or complex numbers. Such spaces are called Banach spaces. An important example is a Hilbert space, where the norm arises from an inner product. These spaces are of fundamental importance in many areas, including the mathematical formulation of quantum mechanics.

More generally, functional analysis includes the study of Fréchet spaces and other topological vector spaces not endowed with a norm.

An important object of study in functional analysis are the continuous linear operators defined on Banach and Hilbert spaces. These lead naturally to the definition of C*-algebras and other operator algebras.

Hilbert spaces

Hilbert spaces can be completely classified: there is a unique Hilbert space up to isomorphism for every cardinality of the orthonormal basis.[3] Finite-dimensional Hilbert spaces are fully understood in linear algebra, and infinite-dimensional separable Hilbert spaces are isomorphic to ℓ ²(ℵ₀) . Separability being important for applications, functional analysis of Hilbert spaces consequently mostly deals with this space. One of the open problems in functional analysis is to prove that every bounded linear operator on a Hilbert space has a proper invariant subspace. Many special cases of this invariant subspace problem have already been proven.

Banach spaces

General Banach spaces are more complicated than Hilbert spaces, and cannot be classified in such a simple manner as those. In particular, many Banach spaces lack a notion analogous to an orthonormal basis.

Examples of Banach spaces are L^( p)-spaces for any real number p ≥ 1 . Given also a measure μ on set X, then L^( p)(X), sometimes also denoted L^( p)(X, μ) or L^( p)(μ), has as its vectors equivalence classes [ f ] of measurable functions whose absolute value's p-th power has finite integral, that is, functions f  for which one has

∫_(_X_)|_f_(_x_)|^(_p_) _d__μ_(_x_) <  + ∞
.

If μ is the counting measure, then the integral may be replaced by a sum. That is, we require

∑_(_x_ ∈ _X_)|_f_(_x_)|^(_p_) <  + ∞
.

Then it is not necessary to deal with equivalence classes, and the space is denoted ℓ^( p)(X), written more simply  ℓ^( p ) in the case when X is the set of non-negative integers.

In Banach spaces, a large part of the study involves the dual space: the space of all continuous linear maps from the space into its underlying field, so-called functionals. A Banach space can be canonically identified with a subspace of its bidual, which is the dual of its dual space. The corresponding map is an isometry but in general not onto. A general Banach space and its bidual need not even be isometrically isomorphic in any way, contrary to the finite-dimensional situation. This is explained in the dual space article.

Also, the notion of derivative can be extended to arbitrary functions between Banach spaces. See, for instance, the Fréchet derivative article.


Major and foundational results

Important results of functional analysis include:

Uniform boundedness principle

The uniform boundedness principle or Banach–Steinhaus theorem is one of the fundamental results in functional analysis. Together with the Hahn–Banach theorem and the open mapping theorem, it is considered one of the cornerstones of the field. In its basic form, it asserts that for a family of continuous linear operators (and thus bounded operators) whose domain is a Banach space, pointwise boundedness is equivalent to uniform boundedness in operator norm.

The theorem was first published in 1927 by Stefan Banach and Hugo Steinhaus but it was also proven independently by Hans Hahn.

  THEOREM (UNIFORM BOUNDEDNESS PRINCIPLE). Let _X_ be a Banach space and _Y_ be a normed vector space. Suppose that _F_ is a collection of continuous linear operators from _X_ to _Y_. If for all _x_ in _X_ one has

  sup_(_T_ ∈ _F_)∥_T_(_x_)∥_(_Y_) < ∞,

  then

  sup_(_T_ ∈ _F_)∥_T_∥_(_B_(_X_, _Y_)) < ∞.

Spectral theorem

There are many theorems known as the spectral theorem, but one in particular has many applications in functional analysis.

Theorem:[4] Let _A_ be a bounded self-adjoint operator on a Hilbert space _H_. Then there is a measure space and a real-valued essentially bounded measurable function _f_ on _X_ and a unitary operator such that

_U_^(*)_T__U_ = _A_ 

where _T_ is the multiplication operator:

[_T__φ_](_x_) = _f_(_x_)_φ_(_x_). 

and ∥T∥ = ∥f∥_(∞)

This is the beginning of the vast research area of functional analysis called operator theory; see also the spectral measure.

There is also an analogous spectral theorem for bounded normal operators on Hilbert spaces. The only difference in the conclusion is that now f may be complex-valued.

Hahn–Banach theorem

The Hahn–Banach theorem is a central tool in functional analysis. It allows the extension of bounded linear functionals defined on a subspace of some vector space to the whole space, and it also shows that there are "enough" continuous linear functionals defined on every normed vector space to make the study of the dual space "interesting".

HAHN–BANACH THEOREM:[5] If is a sublinear function, and is a linear functional on a linear subspace which is dominated by on , i.e.

_φ_(_x_) ≤ _p_(_x_)  ∀_x_ ∈ _U_

then there exists a linear extension of to the whole space , i.e., there exists a linear functional such that

_ψ_(_x_) = _φ_(_x_)  ∀_x_ ∈ _U_,

_ψ_(_x_) ≤ _p_(_x_)  ∀_x_ ∈ _V_.

Open mapping theorem

The open mapping theorem, also known as the Banach–Schauder theorem (named after Stefan Banach and Juliusz Schauder), is a fundamental result which states that if a continuous linear operator between Banach spaces is surjective then it is an open map. More precisely,:[6]

    OPEN MAPPING THEOREM. If _X_ and _Y_ are Banach spaces and _A_ : _X_ → _Y_ is a surjective continuous linear operator, then _A_ is an open map (i.e. if _U_ is an open set in _X_, then _A_(_U_) is open in _Y_).

The proof uses the Baire category theorem, and completeness of both _X_ and _Y_ is essential to the theorem. The statement of the theorem is no longer true if either space is just assumed to be a normed space, but is true if _X_ and _Y_ are taken to be Fréchet spaces.

Closed graph theorem

The closed graph theorem states the following: If _X_ is a topological space and _Y_ is a compact Hausdorff space, then the graph of a linear map _T_ from _X_ to _Y_ is closed if and only if _T_ is continuous.[7]

Other topics


Foundations of mathematics considerations

Most spaces considered in functional analysis have infinite dimension. To show the existence of a vector space basis for such spaces may require Zorn's lemma. However, a somewhat different concept, Schauder basis, is usually more relevant in functional analysis. Many very important theorems require the Hahn–Banach theorem, usually proved using axiom of choice, although the strictly weaker Boolean prime ideal theorem suffices. The Baire category theorem, needed to prove many important theorems, also requires a form of axiom of choice.


Points of view

Functional analysis in its includes the following tendencies:

-   _Abstract analysis_. An approach to analysis based on topological groups, topological rings, and topological vector spaces.
-   _Geometry of Banach spaces_ contains many topics. One is combinatorial approach connected with Jean Bourgain; another is a characterization of Banach spaces in which various forms of the law of large numbers hold.
-   _Noncommutative geometry_. Developed by Alain Connes, partly building on earlier notions, such as George Mackey's approach to ergodic theory.
-   _Connection with quantum mechanics_. Either narrowly defined as in mathematical physics, or broadly interpreted by, e.g. Israel Gelfand, to include most types of representation theory.


See also

-   -   List of functional analysis topics
-   Spectral theory


References


Further reading

-   Aliprantis, C.D., Border, K.C.: _Infinite Dimensional Analysis: A Hitchhiker's Guide_, 3rd ed., Springer 2007, . Online (by subscription)
-   Bachman, G., Narici, L.: _Functional analysis_, Academic Press, 1966. (reprint Dover Publications)
-   Banach S. _Theory of Linear Operations_. Volume 38, North-Holland Mathematical Library, 1987,
-   Brezis, H.: _Analyse Fonctionnelle_, Dunod or
-   Conway, J. B.: _A Course in Functional Analysis_, 2nd edition, Springer-Verlag, 1994,
-   Dunford, N. and Schwartz, J.T.: _Linear Operators, General Theory, John Wiley & Sons_, and other 3 volumes, includes visualization charts
-   Edwards, R. E.: _Functional Analysis, Theory and Applications_, Hold, Rinehart and Winston, 1965.
-   Eidelman, Yuli, Vitali Milman, and Antonis Tsolomitis: _Functional Analysis: An Introduction_, American Mathematical Society, 2004.
-   Friedman, A.: _Foundations of Modern Analysis_, Dover Publications, Paperback Edition, July 21, 2010
-   Giles,J.R.: _Introduction to the Analysis of Normed Linear Spaces_,Cambridge University Press,2000
-   Hirsch F., Lacombe G. - "Elements of Functional Analysis", Springer 1999.
-   Hutson, V., Pym, J.S., Cloud M.J.: _Applications of Functional Analysis and Operator Theory_, 2nd edition, Elsevier Science, 2005,
-   Kantorovitz, S.,_Introduction to Modern Analysis_, Oxford University Press,2003,2nd ed.2006.
-   Kolmogorov, A.N and Fomin, S.V.: _Elements of the Theory of Functions and Functional Analysis_, Dover Publications, 1999
-   Kreyszig, E.: _Introductory Functional Analysis with Applications_, Wiley, 1989.
-   Lax, P.: _Functional Analysis_, Wiley-Interscience, 2002,
-   Lebedev, L.P. and Vorovich, I.I.: _Functional Analysis in Mechanics_, Springer-Verlag, 2002
-   Michel, Anthony N. and Charles J. Herget: _Applied Algebra and Functional Analysis_, Dover, 1993.
-   Pietsch, Albrecht: _History of Banach spaces and linear operators_, Birkhäuser Boston Inc., 2007,
-   Reed, M., Simon, B.: "Functional Analysis", Academic Press 1980.
-   Riesz, F. and Sz.-Nagy, B.: _Functional Analysis_, Dover Publications, 1990
-   Rudin, W.: _Functional Analysis_, McGraw-Hill Science, 1991
-   Saxe, Karen: _Beginning Functional Analysis_, Springer, 2001
-   Schechter, M.: _Principles of Functional Analysis_, AMS, 2nd edition, 2001
-   Shilov, Georgi E.: _Elementary Functional Analysis_, Dover, 1996.
-   Sobolev, S.L.: _Applications of Functional Analysis in Mathematical Physics_, AMS, 1963
-   Vogt, D., Meise, R.: _Introduction to Functional Analysis_, Oxford University Press, 1997.
-   Yosida, K.: _Functional Analysis_, Springer-Verlag, 6th edition, 1980


External links

-   -   Topics in Real and Functional Analysis by Gerald Teschl, University of Vienna.
-   Lecture Notes on Functional Analysis by Yevgeny Vilensky, New York University.
-   Lecture videos on functional analysis by Greg Morrow from University of Colorado Colorado Springs
-   An Introduction to Functional Analysis on Coursera by John Cagnol from Ecole Centrale Paris

Functional_analysis

[1] _acsu.buffalo.edu_

[2] _History of the Mathematical Sciences_ p. 195

[3]

[4]

[5]

[6]

[7] , p. 171