In mathematical analysis, the WEIERSTRASS APPROXIMATION THEOREM states that every continuous function defined on a closed interval can be uniformly approximated as closely as desired by a polynomial function. Because polynomials are among the simplest functions, and because computers can directly evaluate polynomials, this theorem has both practical and theoretical relevance, especially in polynomial interpolation. The original version of this result was established by Karl Weierstrass in 1885 using the Weierstrass transform.

Marshall H. Stone considerably generalized the theorem and simplified the proof . His result is known as the STONE–WEIERSTRASS THEOREM. The Stone–Weierstrass theorem generalizes the Weierstrass approximation theorem in two directions both regressive and progressive: instead of the real interval , an arbitrary compact Hausdorff space is considered, and instead of the algebra of polynomial functions, approximation with elements from more general subalgebras of is investigated. The Stone–Weierstrass theorem is a vital result in the study of the algebra of continuous functions on a compact Hausdorff space.

Further, there is a generalization of the Stone–Weierstrass theorem to noncompact Tychonoff spaces, namely, any continuous function on a Tychonoff space is approximated uniformly on compact sets by algebras of the type appearing in the Stone–Weierstrass theorem and described below.

A different generalization of Weierstrass' original theorem is Mergelyan's theorem, which generalizes it to functions defined on certain subsets of the complex plane.


Weierstrass approximation theorem

The statement of the approximation theorem as originally discovered by Weierstrass is as follows:

    WEIERSTRASS APPROXIMATION THEOREM. Suppose is a continuous real-valued function defined on the real interval . For every , there exists a polynomial such that for all in , we have  _f_ (_x_) − _p_(_x_){{!}} < _ε_}}, or equivalently, the supremum norm  _f_  − _p_{{!!}} < _ε_}}.

A constructive proof of this theorem using Bernstein polynomials is outlined on that page.

Applications

As a consequence of the Weierstrass approximation theorem, one can show that the space is separable: the polynomial functions are dense, and each polynomial function can be uniformly approximated by one with rational coefficients; there are only countably many polynomials with rational coefficients. Since is Hausdorff and separable it follows that has cardinality equal to — the same cardinality as the cardinality of the reals. (Remark: This cardinality result also follows from the fact that a continuous function on the reals is uniquely determined by its restriction to the rationals.)


Stone–Weierstrass theorem, real version

The set of continuous real-valued functions on , together with the supremum norm  _f_ {{!!}} {{=}} sup_(_a_\ ≤\ _x_\ ≤\ _b_) {{!}} _f_ (_x_){{!}}}}, is a Banach algebra, (that is, an associative algebra and a Banach space such that  _fg_{{!!}} ≤ {{!!}} _f_ {{!!}}·{{!!}}_g_{{!!}}}} for all ). The set of all polynomial functions forms a subalgebra of (that is, a vector subspace of that is closed under multiplication of functions), and the content of the Weierstrass approximation theorem is that this subalgebra is dense in .

Stone starts with an arbitrary compact Hausdorff space and considers the algebra of real-valued continuous functions on , with the topology of uniform convergence. He wants to find subalgebras of which are dense. It turns out that the crucial property that a subalgebra must satisfy is that it _separates points_: a set of functions defined on is said to separate points if, for every two different points and in there exists a function in with . Now we may state:

    STONE–WEIERSTRASS THEOREM (REAL NUMBERS). Suppose is a compact Hausdorff space and is a subalgebra of which contains a non-zero constant function. Then is dense in if and only if it separates points.

This implies Weierstrass’ original statement since the polynomials on form a subalgebra of which contains the constants and separates points.

Locally compact version

A version of the Stone–Weierstrass theorem is also true when is only locally compact. Let be the space of real-valued continuous functions on which vanish at infinity; that is, a continuous function is in if, for every , there exists a compact set such that _f_ {{!}}  < _ε_}} on . Again, is a Banach algebra with the supremum norm. A subalgebra of is said to VANISH NOWHERE if not all of the elements of simultaneously vanish at a point; that is, for every in , there is some in such that . The theorem generalizes as follows:

    STONE–WEIERSTRASS THEOREM (LOCALLY COMPACT SPACES). Suppose is a _locally compact_ Hausdorff space and is a subalgebra of . Then is dense in (given the topology of uniform convergence) if and only if it separates points and vanishes nowhere.

This version clearly implies the previous version in the case when is compact, since in that case C(_X_, R)}}. There are also more general versions of the Stone–Weierstrass that weaken the assumption of local compactness.[1]

Applications

The Stone–Weierstrass theorem can be used to prove the following two statements which go beyond Weierstrass's result.

-   If is a continuous real-valued function defined on the set and , then there exists a polynomial function in two variables such that  _f_ (_x_, _y_) − _p_(_x_, _y_) {{!}} < _ε_}} for all in and in .
-   If and are two compact Hausdorff spaces and is a continuous function, then for every there exist and continuous functions on and continuous functions on such that  _f_ − ∑ _f_(i) g_(i)_ {{!!}} < _ε_}}.

The theorem has many other applications to analysis, including:

-   Fourier series: The set of linear combinations of functions _e_^(2_πinx_), _n_ ∈ Z}} is dense in , where we identify the endpoints of the interval to obtain a circle. An important consequence of this is that the are an orthonormal basis of the space [[Lp_space| and _b_}}. Then is dense in .

The above versions of Stone–Weierstrass can be proven from this version once one realizes that the lattice property can also be formulated using the absolute value  _f_ {{!}}}} which in turn can be approximated by polynomials in . A variant of the theorem applies to linear subspaces of closed under max :

    STONE–WEIERSTRASS THEOREM. Suppose is a compact Hausdorff space and is a family of functions in such that
    1.  separates points.

    2.  contains the constant function 1.

    3.  If then for all constants .
    4.  If , then .

    Then is dense in .

More precise information is available:

    Suppose is a compact Hausdorff space with at least two points and is a lattice in . The function belongs to the closure of if and only if for each pair of distinct points _x_ and _y_ in and for each there exists some for which  _f_ (_x_) − _φ_(_x_){{!}} < _ε_}} and  _f_ (_y_) − _φ_(_y_){{!}} < _ε_}}.


Bishop's theorem

Another generalization of the Stone–Weierstrass theorem is due to Errett Bishop. Bishop's theorem is as follows :

    Let be a closed subalgebra of the Banach space of continuous complex-valued functions on a compact Hausdorff space . Suppose that has the following property:

        _(_S_) ∈ _A_(S)_}} for every maximal set such that all real functions of are constant.

    Then .

gives a short proof of Bishop's theorem using the Krein–Milman theorem in an essential way, as well as the Hahn–Banach theorem : the process of . See also .


Nachbin's theorem

Nachbin's theorem gives an analog for Stone–Weierstrass theorem for algebras of complex valued smooth functions on a smooth manifold . Nachbin's theorem is as follows :

    Let be a subalgebra of the algebra of smooth functions on a finite dimensional smooth manifold . Suppose that separates the points of and also separates the tangent vectors of : for each point _m_ ∈ _M_ and tangent vector _v_ at the tangent space at _m_, there is a _f_ ∈ such that d_f_(_x_)(_v_) ≠ 0. Then is dense in .


See also

-   Müntz–Szász theorem.
-   Bernstein polynomial.
-   Runge's phenomenon shows that finding a polynomial such that _P_(_x_)}} for some finely spaced _x_(n)_}} is a bad way to attempt to find a polynomial approximating uniformly. However, as is shown in Walter Rudin's Principles of Mathematical Analysis, one can easily find a polynomial uniformly approximating by convolving with a polynomial kernel.
-   Mergelyan's theorem, concerning polynomial approximations of complex functions.


Notes


References

-   .

-   .

-   Jan Brinkhuis & Vladimir Tikhomirov (2005) _Optimization: Insights and Applications_, Princeton University Press .
-   -   .

-   .

-   .

-   .

-   .

-   -   -   .

Historical works

The historical publication of Weierstrass (in German language) is freely available from the digital online archive of the _Berlin Brandenburgische Akademie der Wissenschaften_:

-   K. Weierstrass (1885). Über die analytische Darstellbarkeit sogenannter willkürlicher Functionen einer reellen Veränderlichen. _Sitzungsberichte der Königlich Preußischen Akademie der Wissenschaften zu Berlin_, 1885 (II).

    Erste Mitteilung (part 1) pp. 633–639, Zweite Mitteilung (part 2) pp. 789–805.

Important historical works of Stone include:

-   .

-   ; 21 (5), 237–254.


External links

-

Category:Continuous mappings Category:Theorems in analysis Category:Theorems in approximation theory Category:1885 in mathematics Category:1937 in mathematics

[1]