Gottfried_Wilhelm_Leibniz,_Bernhard_Christoph_Francke.jpg argued that idealized numbers containing infinitesimals be introduced.]]

The history of calculus is fraught with philosophical debates about the meaning and logical validity of fluxions or infinitesimal numbers. The standard way to resolve these debates is to define the operations of calculus using epsilon–delta procedures rather than infinitesimals. NON-STANDARD ANALYSIS[1][2][3] instead reformulates the calculus using a logically rigorous notion of infinitesimal numbers.

Non-standard analysis was originated in the early 1960s by the mathematician Abraham Robinson.[4][5] He wrote:

  ... the idea of infinitely small or _infinitesimal_ quantities seems to appeal naturally to our intuition. At any rate, the use of infinitesimals was widespread during the formative stages of the Differential and Integral Calculus. As for the objection ... that the distance between two distinct real numbers cannot be infinitely small, Gottfried Wilhelm Leibniz argued that the theory of infinitesimals implies the introduction of ideal numbers which might be infinitely small or infinitely large compared with the real numbers but which were _to possess the same properties as the latter_

Robinson argued that this law of continuity of Leibniz's is a precursor of the transfer principle. Robinson continued:

  However, neither he nor his disciples and successors were able to give a rational development leading up to a system of this sort. As a result, the theory of infinitesimals gradually fell into disrepute and was replaced eventually by the classical theory of limits.[6]

Robinson continues:

  It is shown in this book that Leibniz's ideas can be fully vindicated and that they lead to a novel and fruitful approach to classical Analysis and to many other branches of mathematics. The key to our method is provided by the detailed analysis of the relation between mathematical languages and mathematical structures which lies at the bottom of contemporary model theory.

In 1973, intuitionist Arend Heyting praised non-standard analysis as "a standard model of important mathematical research".[7]


Introduction

A non-zero element of an ordered field 𝔽 is infinitesimal if and only if its absolute value is smaller than any element of 𝔽 of the form $\frac{1}{n}$, for n a standard natural number. Ordered fields that have infinitesimal elements are also called non-Archimedean. More generally, non-standard analysis is any form of mathematics that relies on non-standard models and the transfer principle. A field which satisfies the transfer principle for real numbers is a hyperreal field, and non-standard real analysis uses these fields as _non-standard models_ of the real numbers.

Robinson's original approach was based on these non-standard models of the field of real numbers. His classic foundational book on the subject _Non-standard Analysis_ was published in 1966 and is still in print.[8] On page 88, Robinson writes:

  The existence of non-standard models of arithmetic was discovered by Thoralf Skolem (1934). Skolem's method foreshadows the ultrapower construction [...]

Several technical issues must be addressed to develop a calculus of infinitesimals. For example, it is not enough to construct an ordered field with infinitesimals. See the article on hyperreal numbers for a discussion of some of the relevant ideas.


Basic definitions

In this section we outline one of the simplest approaches to defining a hyperreal field ^(*)ℝ. Let ℝ be the field of real numbers, and let ℕ be the semiring of natural numbers. Denote by ℝ^(ℕ) the set of sequences of real numbers. A field ^(*)ℝ is defined as a suitable quotient of ℝ^(ℕ), as follows. Take a nonprincipal ultrafilter F ⊂ P(ℕ). In particular, F contains the Fréchet filter. Consider a pair of sequences

_u_ = (_u__(_n_)), _v_ = (_v__(_n_)) ∈ ℝ^(ℕ)

We say that u and v are equivalent if they coincide on a set of indices which is a member of the ultrafilter, or in formulas:

{_n_ ∈ ℕ : _u__(_n_) = _v__(_n_)} ∈ _F_

The quotient of ℝ^(ℕ) by the resulting equivalence relation is a hyperreal field ^(*)ℝ, a situation summarized by the formula ^(*)ℝ = ℝ^(ℕ)/F.


Motivation

There are at least three reasons to consider non-standard analysis: historical, pedagogical, and technical.

Historical

Much of the earliest development of the infinitesimal calculus by Newton and Leibniz was formulated using expressions such as _infinitesimal number_ and _vanishing quantity_. As noted in the article on hyperreal numbers, these formulations were widely criticized by George Berkeley and others. It was a challenge to develop a consistent theory of analysis using infinitesimals and the first person to do this in a satisfactory way was Abraham Robinson.[9]

In 1958 Curt Schmieden and Detlef Laugwitz published an Article "Eine Erweiterung der Infinitesimalrechnung"[10] - "An Extension of Infinitesimal Calculus", which proposed a construction of a ring containing infinitesimals. The ring was constructed from sequences of real numbers. Two sequences were considered equivalent if they differed only in a finite number of elements. Arithmetic operations were defined elementwise. However, the ring constructed in this way contains zero divisors and thus cannot be a field.

Pedagogical

H. Jerome Keisler, David Tall, and other educators maintain that the use of infinitesimals is more intuitive and more easily grasped by students than the "epsilon-delta" approach to analytic concepts.[11] This approach can sometimes provide easier proofs of results than the corresponding epsilon-delta formulation of the proof. Much of the simplification comes from applying very easy rules of nonstandard arithmetic, as follows:



        infinitesimal × bounded = infinitesimal



        infinitesimal + infinitesimal = infinitesimal

together with the transfer principle mentioned below.

Another pedagogical application of non-standard analysis is Edward Nelson's treatment of the theory of stochastic processes.[12]

Technical

Some recent work has been done in analysis using concepts from non-standard analysis, particularly in investigating limiting processes of statistics and mathematical physics. Sergio Albeverio et al.[13] discuss some of these applications.


Approaches to non-standard analysis

There are two very different approaches to non-standard analysis: the semantic or model-theoretic approach and the syntactic approach. Both these approaches apply to other areas of mathematics beyond analysis, including number theory, algebra and topology.

Robinson's original formulation of non-standard analysis falls into the category of the _semantic approach_. As developed by him in his papers, it is based on studying models (in particular saturated models) of a theory. Since Robinson's work first appeared, a simpler semantic approach (due to Elias Zakon) has been developed using purely set-theoretic objects called superstructures. In this approach _a model of a theory_ is replaced by an object called a _superstructure_ over a set . Starting from a superstructure one constructs another object using the ultrapower construction together with a mapping that satisfies the transfer principle. The map * relates formal properties of and . Moreover, it is possible to consider a simpler form of saturation called countable saturation. This simplified approach is also more suitable for use by mathematicians who are not specialists in model theory or logic.

The _syntactic approach_ requires much less logic and model theory to understand and use. This approach was developed in the mid-1970s by the mathematician Edward Nelson. Nelson introduced an entirely axiomatic formulation of non-standard analysis that he called Internal Set Theory (IST).[14] IST is an extension of Zermelo-Fraenkel set theory (ZF) in that alongside the basic binary membership relation ∈, it introduces a new unary predicate _standard_, which can be applied to elements of the mathematical universe together with some axioms for reasoning with this new predicate.

Syntactic non-standard analysis requires a great deal of care in applying the principle of set formation (formally known as the axiom of comprehension), which mathematicians usually take for granted. As Nelson points out, a fallacy in reasoning in IST is that of _illegal set formation_. For instance, there is no set in IST whose elements are precisely the standard integers (here _standard_ is understood in the sense of the new predicate). To avoid illegal set formation, one must only use predicates of ZFC to define subsets.[15]

Another example of the syntactic approach is the Alternative Set Theory[16] introduced by Vopěnka, trying to find set-theory axioms more compatible with the non-standard analysis than the axioms of ZF.


Robinson's book

Abraham Robinson's book _Non-standard analysis_ was published in 1966. Some of the topics developed in the book were already present in his 1961 article by the same title (Robinson 1961)[17]. In addition to containing the first full treatment of non-standard analysis, the book contains a detailed historical section where Robinson challenges some of the received opinions on the history of mathematics based on the pre–non-standard analysis perception of infinitesimals as inconsistent entities. Thus, Robinson challenges the idea that Augustin-Louis Cauchy's "sum theorem" in Cours d'Analyse concerning the convergence of a series of continuous functions was incorrect, and proposes an infinitesimal-based interpretation of its hypothesis that results in a correct theorem.


Invariant subspace problem

Abraham Robinson and Allen Bernstein used non-standard analysis to prove that every polynomially compact linear operator on a Hilbert space has an invariant subspace.[18]

Given an operator on Hilbert space , consider the orbit of a point in under the iterates of . Applying Gram-Schmidt one obtains an orthonormal basis for . Let be the corresponding nested sequence of "coordinate" subspaces of . The matrix expressing with respect to is almost upper triangular, in the sense that the coefficients are the only nonzero sub-diagonal coefficients. Bernstein and Robinson show that if is polynomially compact, then there is a hyperfinite index such that the matrix coefficient is infinitesimal. Next, consider the subspace of . If in has finite norm, then is infinitely close to .

Now let be the operator P_(w) ∘ T acting on , where is the orthogonal projection to . Denote by the polynomial such that is compact. The subspace is internal of hyperfinite dimension. By transferring upper triangularisation of operators of finite-dimensional complex vector space, there is an internal orthonormal Hilbert space basis for where runs from to , such that each of the corresponding -dimensional subspaces is -invariant. Denote by the projection to the subspace . For a nonzero vector of finite norm in , one can assume that is nonzero, or _q_(_T_)(_x_){{!}} > 1}} to fix ideas. Since is a compact operator, is infinitely close to and therefore one has also _q_(_T_(w)_)(_x_){{!}} > 1}}. Now let be the greatest index such that $|q(T_w) \left (\Pi_j(x) \right)|<\tfrac{1}{2}$. Then the space of all standard elements infinitely close to is the desired invariant subspace.

Upon reading a preprint of the Bernstein-Robinson paper, Paul Halmos reinterpreted their proof using standard techniques.[19] Both papers appeared back-to-back in the same issue of the _Pacific Journal of Mathematics_. Some of the ideas used in Halmos' proof reappeared many years later in Halmos' own work on quasi-triangular operators.


Other applications

Other results were received along the line of reinterpreting or reproving previously known results. Of particular interest is Kamae's proof[20] of the individual ergodic theorem or van den Dries and Wilkie's treatment[21] of Gromov's theorem on groups of polynomial growth. Nonstandard analysis was used by Larry Manevitz and Shmuel Weinberger to prove a result in algebraic topology.[22]

The real contributions of non-standard analysis lie however in the concepts and theorems that utilizes the new extended language of non-standard set theory. Among the list of new applications in mathematics there are new approaches to probability [23] hydrodynamics,[24] measure theory,[25] nonsmooth and harmonic analysis,[26] etc.

There are also applications of non-standard analysis to the theory of stochastic processes, particularly constructions of Brownian motion as random walks. Albeverio et-al[27] have an excellent introduction to this area of research.

Applications to calculus

As an application to mathematical education, H. Jerome Keisler wrote _Elementary Calculus: An Infinitesimal Approach_.[28] Covering non-standard calculus, it develops differential and integral calculus using the hyperreal numbers, which include infinitesimal elements. These applications of non-standard analysis depend on the existence of the _standard part_ of a finite hyperreal . The standard part of , denoted , is a standard real number infinitely close to . One of the visualization devices Keisler uses is that of an imaginary infinite-magnification microscope to distinguish points infinitely close together. Keisler's book is now out of print, but is freely available from his website; see references below.


Critique

Despite the elegance and appeal of some aspects of non-standard analysis, criticisms have been voiced, as well, such as those by E. Bishop, A. Connes, and P. Halmos, as documented at criticism of non-standard analysis.


Logical framework

Given any set , the _superstructure_ over a set is the set defined by the conditions

_V_₀(_S_) = _S_,

_V__(_n_ + 1)(_S_) = _V__(_n_)(_S_) ∪ ℘(_V__(_n_)(_S_)),

_V_(_S_) = ⋃_(_n_ ∈ N)_V__(_n_)(_S_).

Thus the superstructure over is obtained by starting from and iterating the operation of adjoining the power set of and taking the union of the resulting sequence. The superstructure over the real numbers includes a wealth of mathematical structures: For instance, it contains isomorphic copies of all separable metric spaces and metrizable topological vector spaces. Virtually all of mathematics that interests an analyst goes on within .

The working view of nonstandard analysis is a set and a mapping which satisfies some additional properties. To formulate these principles we first state some definitions.

A formula has _bounded quantification_ if and only if the only quantifiers which occur in the formula have range restricted over sets, that is are all of the form:

∀_x_ ∈ _A_, _Φ_(_x_, _α_₁, …, _α__(_n_))

∃_x_ ∈ _A_, _Φ_(_x_, _α_₁, …, _α__(_n_))

For example, the formula

∀_x_ ∈ _A_, ∃_y_ ∈ 2^(_B_), _x_ ∈ _y_

has bounded quantification, the universally quantified variable ranges over , the existentially quantified variable ranges over the powerset of . On the other hand,

∀_x_ ∈ _A_, ∃_y_, _x_ ∈ _y_

does not have bounded quantification because the quantification of _y_ is unrestricted.


Internal sets

A set _x_ is _internal_ if and only if _x_ is an element of *_A_ for some element _A_ of . *_A_ itself is internal if _A_ belongs to .

We now formulate the basic logical framework of nonstandard analysis:

-   Extension principle: The mapping * is the identity on .
-   _Transfer principle_: For any formula with bounded quantification and with free variables , and for any elements of , the following equivalence holds:

_P_(_A_₁, …, _A__(_n_)) ⇔ _P_( * _A_₁, …,  * _A__(_n_))

-   _Countable saturation_: If {_A__(_k_)}_(_k_\ ∈\ N) is a decreasing sequence of nonempty internal sets, with _k_ ranging over the natural numbers, then

⋂_(_k_)_A__(_k_) ≠ ∅

One can show using ultraproducts that such a map * exists. Elements of are called _standard_. Elements of are called hyperreal numbers.


First consequences

The symbol denotes the nonstandard natural numbers. By the extension principle, this is a superset of . The set is nonempty. To see this, apply countable saturation to the sequence of internal sets

_A__(_n_) = {_k_ ∈ __^(*)N : _k_ ≥ _n_}

The sequence has a nonempty intersection, proving the result.

We begin with some definitions: Hyperreals _r_, _s_ are _infinitely close_ if and only if

_r_ ≅ _s_ ⇔ ∀_θ_ ∈ R⁺, |_r_ − _s_| ≤ _θ_

A hyperreal is _infinitesimal_ if and only if it is infinitely close to 0. For example, if is a hyperinteger, i.e. an element of , then is an infinitesimal. A hyperreal is _limited_ (or _finite_) if and only if its absolute value is dominated by (less than) a standard integer. The limited hyperreals form a subring of containing the reals. In this ring, the infinitesimal hyperreals are an ideal.

The set of limited hyperreals or the set of infinitesimal hyperreals are _external_ subsets of ; what this means in practice is that bounded quantification, where the bound is an internal set, never ranges over these sets.

EXAMPLE: The plane with and ranging over is internal, and is a model of plane Euclidean geometry. The plane with and restricted to limited values (analogous to the Dehn plane) is external, and in this limited plane the parallel postulate is violated. For example, any line passing through the point on the -axis and having infinitesimal slope is parallel to the -axis.

THEOREM. For any limited hyperreal there is a unique standard real denoted infinitely close to . The mapping is a ring homomorphism from the ring of limited hyperreals to .

The mapping st is also external.

One way of thinking of the standard part of a hyperreal, is in terms of Dedekind cuts; any limited hyperreal defines a cut by considering the pair of sets where is the set of standard rationals less than and is the set of standard rationals greater than . The real number corresponding to can be seen to satisfy the condition of being the standard part of .

One intuitive characterization of continuity is as follows:

THEOREM. A real-valued function on the interval is continuous if and only if for every hyperreal in the interval , we have: .

(see microcontinuity for more details). Similarly,

THEOREM. A real-valued function is differentiable at the real value if and only if for every infinitesimal hyperreal number , the value

$$f'(x)= \operatorname{st} \left(\frac{{^*f}(x+h) - {^*f}(x)}{h}\right)$$

exists and is independent of . In this case is a real number and is the derivative of at .


-saturation

It is possible to "improve" the saturation by allowing collections of higher cardinality to be intersected. A model is -saturated if whenever {A_(i)}_(i ∈ I) is a collection of internal sets with the finite intersection property and |I| ≤ κ,

⋂_(_i_ ∈ _I_)_A__(_i_) ≠ ∅

This is useful, for instance, in a topological space , where we may want 2^(_X_){{!}}}}-saturation to ensure the intersection of a standard neighborhood base is nonempty.[29]

For any cardinal , a -saturated extension can be constructed.[30]


See also

-   Overspill
-   Non-standard calculus
-   Transfer principle
-   Internal set theory
-   _Elementary Calculus: An Infinitesimal Approach_
-   Hyperreal number
-   Hyperinteger
-   Infinitesimal
-   Surreal number
-   Non-classical analysis
-   Smooth infinitesimal analysis
-   Criticism of non-standard analysis
-   Influence of non-standard analysis
-   Hyperfinite set
-   Constructive non-standard analysis
-   Calculus Made Easy


Further reading

-   E. E. Rosinger, [math/0407178]. Short introduction to Nonstandard Analysis. arxiv.org.


References


Bibliography

-   Crowell, _Calculus_. A text using infinitesimals.
-   Robert Goldblatt (1998) _Lectures on the Hyperreals_. An introduction to nonstandard analysis. Graduate Texts in Mathematics, 188. Springer-Verlag
-   Hermoso, _Nonstandard Analysis and the Hyperreals_. A gentle introduction.
-   Hurd, A.E. and Loeb, P.A.: _An introduction to nonstandard real analysis_, London, Academic Press, 1985.
-   Keisler, H. Jerome _Elementary Calculus: An Approach Using Infinitesimals_. Includes an axiomatic treatment of the hyperreals, and is freely available under a Creative Commons license
-   Keisler, H. Jerome: _An Infinitesimal Approach to Stochastic Analysis_, vol. 297 of Memoirs of the American Mathematical Society, 1984.
-   Naranong S., _Nonstandard Analysis from a Model-Theoretic Perspective_. A streamlined introduction in the spirit of Robinson.
-   Robinson, A. Non-standard analysis. Nederl. Akad. Wetensch. Proc. Ser. A 64 = Indag. Math. 23 (1961) 432–440.
-   Robert, A. _Nonstandard analysis_, Wiley, New York 1988.
-   Skolem, Th. (1934) "Über die Nicht-charakterisierbarkeit der Zahlenreihe mittels endlich oder abzählbar unendlich vieler Aussagen mit ausschliesslich Zahlenvariablen", Fundamenta Mathematicae 23: 150-161.
-   Stroyan, K. ''A Brief Introduction to Infinitesimal Calculus
-   Gordon E., Kusraev A., and Kutateladze S.. ''Infinitesimal Analysis
-   Tao, T. An epsilon of room, II. Pages from year three of a mathematical blog. American Mathematical Society, Providence, RI, 2010 (pp. 209–229).


External links

-   ''The Ghosts of Departed Quantities by Lindsay Keegan.

Non-standard_analysis Category:Mathematical analysis Category:Real closed field Category:Infinity

[1] Nonstandard Analysis in Practice. Edited by Francine Diener, Marc Diener. Springer, 1995.

[2] Nonstandard Analysis, Axiomatically. By V. Vladimir Grigorevich Kanovei, Michael Reeken. Springer, 2004.

[3] Nonstandard Analysis for the Working Mathematician. Edited by Peter A. Loeb, Manfred P. H. Wolff. Springer, 2000.

[4] Non-standard Analysis. By Abraham Robinson. Princeton University Press, 1974.

[5] Abraham Robinson and Nonstandard Analysis: History, Philosophy, and Foundations of Mathematics. By Joseph W. Dauben. www.mcps.umn.edu.

[6] Robinson, A.: Non-standard analysis. North-Holland Publishing Co., Amsterdam 1966.

[7] Heijting, A. (1973) "Address to Professor A. Robinson. At the occasion of the Brouwer memorial lecture given by Prof. A.Robinson on the 26th April 1973." Nieuw Arch. Wisk. (3) 21, pp. 134—137.

[8]

[9]

[10] Curt Schmieden and Detlef Laugwitz: _Eine Erweiterung der Infinitesimalrechnung_, Mathematische Zeitschrift 69 (1958), 1-39

[11] H. Jerome Keisler, _Elementary Calculus: An Infinitesimal Approach_. First edition 1976; 2nd edition 1986: full text of 2nd edition

[12] Edward Nelson: _Radically Elementary Probability Theory_, Princeton University Press, 1987, full text

[13] Sergio Albeverio, Jans Erik Fenstad, Raphael Høegh-Krohn, Tom Lindstrøm: _Nonstandard Methods in Stochastic Analysis and Mathematical Physics_, Academic Press 1986.

[14] Edward Nelson: _Internal Set Theory: A New Approach to Nonstandard Analysis_, Bulletin of the American Mathematical Society, Vol. 83, Number 6, November 1977. A chapter on Internal Set Theory is available at http://www.math.princeton.edu/~nelson/books/1.pdf

[15]

[16] Vopěnka, P. Mathematics in the Alternative Set Theory. Teubner, Leipzig, 1979.

[17] Robinson, Abraham: 'Non-Standard Analysis', Kon. Nederl. Akad. Wetensch. Amsterdam Proc. AM (=Indag. Math. 23), 1961, 432-440.

[18] Allen Bernstein and Abraham Robinson, _Solution of an invariant subspace problem of K. T. Smith and P. R. Halmos_, Pacific Journal of Mathematics 16:3 (1966) 421-431

[19] P. Halmos, _Invariant subspaces for Polynomially Compact Operators_, Pacific Journal of Mathematics, 16:3 (1966) 433-437.

[20] T. Kamae: _A simple proof of the ergodic theorem using nonstandard analysis_, Israel Journal of Mathematics vol. 42, Number 4, 1982.

[21] L. van den Dries and A. J. Wilkie: _Gromov's Theorem on Groups of Polynomial Growth and Elementary Logic_, Journal of Algebra, Vol 89, 1984.

[22] Manevitz, Larry M.; Weinberger, Shmuel: Discrete circle actions: a note using non-standard analysis. Israel J. Math. 94 (1996), 147--155.

[23]

[24] Capinski M., Cutland N. J. _Nonstandard Methods for Stochastic Fluid Mechanics._ Singapore etc., World Scientific Publishers (1995)

[25] Cutland N. _Loeb Measures in Practice: Recent Advances._ Berlin etc.: Springer (2001)

[26] Gordon E. I., Kutateladze S. S., and Kusraev A. G. _Infinitesimal Analysis_ Dordrecht, Kluwer Academic Publishers (2002)

[27]

[28]

[29] Salbany, S.; Todorov, T. Nonstandard Analysis in Point-Set Topology. Erwing Schrodinger Institute for Mathematical Physics.

[30] Chang, C. C.; Keisler, H. J. Model theory. Third edition. Studies in Logic and the Foundations of Mathematics, 73. North-Holland Publishing Co., Amsterdam, 1990. xvi+650 pp.