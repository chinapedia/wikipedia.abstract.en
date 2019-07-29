Measure_illustration.png in the sense that if _A_ is a subset of _B_, the measure of _A_ is less than or equal to the measure of _B_. Furthermore, the measure of the empty set is required to be 0.]]

In mathematical analysis, a MEASURE on a set is a systematic way to assign a number to each suitable subset of that set, intuitively interpreted as its size. In this sense, a measure is a generalization of the concepts of length, area, and volume. A particularly important example is the Lebesgue measure on a Euclidean space, which assigns the conventional length, area, and volume of Euclidean geometry to suitable subsets of the -dimensional Euclidean space . For instance, the Lebesgue measure of the interval in the real numbers is its length in the everyday sense of the word, specifically, 1.

Technically, a measure is a function that assigns a non-negative real number or [[Extended_real_number_line|. A subset of a null set is called a _negligible set_. A negligible set need not be measurable, but every measurable negligible set is automatically a null set. A measure is called _complete_ if every negligible set is measurable.

A measure can be extended to a complete one by considering the σ-algebra of subsets which differ by a negligible set from a measurable set , that is, such that the symmetric difference of and is contained in a null set. One defines to equal .


Additivity

Measures are required to be countably additive. However, the condition can be strengthened as follows. For any set I and any set of nonnegative r_(i), i ∈ I define:

∑_(_i_ ∈ _I_)_r__(_i_) = sup {∑_(_i_ ∈ _J_)_r__(_i_):|_J_|<ℵ₀,_J_⊆_I_}.
That is, we define the sum of the r_(i) to be the supremum of all the sums of finitely many of them.

A measure μ on Σ is κ-additive if for any λ < κ and any family of disjoint sets X_(α), α < λ the following hold:

⋃_(_α_ ∈ _λ_)_X__(_α_) ∈ _Σ_

_μ_(⋃_(_α_ ∈ _λ_)_X__(_α_)) = ∑_(_α_ ∈ _λ_)_μ_(_X__(_α_)).
Note that the second condition is equivalent to the statement that the ideal of null sets is κ-complete.


Non-measurable sets

If the axiom of choice is assumed to be true, it can be proved that not all subsets of Euclidean space are Lebesgue measurable; examples of such sets include the Vitali set, and the non-measurable sets postulated by the Hausdorff paradox and the Banach–Tarski paradox.


Generalizations

For certain purposes, it is useful to have a "measure" whose values are not restricted to the non-negative reals or infinity. For instance, a countably additive set function with values in the (signed) real numbers is called a _signed measure_, while such a function with values in the complex numbers is called a _complex measure_. Measures that take values in Banach spaces have been studied extensively.[1] A measure that takes values in the set of self-adjoint projections on a Hilbert space is called a _projection-valued measure_; these are used in functional analysis for the spectral theorem. When it is necessary to distinguish the usual measures which take non-negative values from generalizations, the term POSITIVE MEASURE is used. Positive measures are closed under conical combination but not general linear combination, while signed measures are the linear closure of positive measures.

Another generalization is the _finitely additive measure_, also known as a content. This is the same as a measure except that instead of requiring _countable_ additivity we require only _finite_ additivity. Historically, this definition was used first. It turns out that in general, finitely additive measures are connected with notions such as Banach limits, the dual of _L_^(∞) and the Stone–Čech compactification. All these are linked in one way or another to the axiom of choice. Contents remain useful in certain technical problems in geometric measure theory; this is the theory of Banach measures.

A charge is a generalization in both directions: it is a finitely additive, signed measure.


See also

-   Abelian von Neumann algebra
-   Almost everywhere
-   Carathéodory's extension theorem
-   Content (measure theory)
-   Fubini's theorem
-   Fatou's lemma
-   Fuzzy measure theory
-   Geometric measure theory
-   Hausdorff measure
-   Inner measure
-   Lebesgue integration
-   Lebesgue measure
-   Lorentz space
-   Lifting theory
-   Measurable cardinal
-   Measurable function
-   Minkowski content
-   Outer measure
-   Product measure
-   Pushforward measure
-   Regular measure
-   Vector measure
-   Valuation (measure theory)
-   Volume form


References


Bibliography

-   Robert G. Bartle (1995) _The Elements of Integration and Lebesgue Measure_, Wiley Interscience.
-   -   -   -   Chapter III.

-   R. M. Dudley, 2002. _Real Analysis and Probability_. Cambridge University Press.
-   Second edition.

-   D. H. Fremlin, 2000. _Measure Theory_. Torres Fremlin.
-   -   R. Duncan Luce and Louis Narens (1987). "measurement, theory of," _The New Palgrave: A Dictionary of Economics_, v. 3, pp. 428–32.
-   M. E. Munroe, 1953. _Introduction to Measure and Integration_. Addison Wesley.
-   -   Shilov, G. E., and Gurevich, B. L., 1978. _Integral, Measure, and Derivative: A Unified Approach_, Richard A. Silverman, trans. Dover Publications. . Emphasizes the Daniell integral.
-   -   -


External links

-   -   Tutorial: Measure Theory for Dummies

Measure_theory Measures_(measure_theory)

[1] .