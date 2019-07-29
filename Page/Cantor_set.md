In mathematics, the CANTOR SET is a set of points lying on a single line segment that has a number of remarkable and deep properties. It was discovered in 1874 by Henry John Stephen Smith[1][2][3][4] and introduced by German mathematician Georg Cantor in 1883.[5][6]

Through consideration of this set, Cantor and others helped lay the foundations of modern point-set topology. Although Cantor himself defined the set in a general, abstract way, the most common modern construction is the CANTOR TERNARY SET, built by removing the middle third of a line segment and then repeating the process with the remaining shorter segments. Cantor himself mentioned the ternary construction only in passing, as an example of a more general idea, that of a perfect set that is nowhere dense.


Construction and formula of the ternary set

The Cantor ternary set 𝒞 is created by iteratively deleting the _open_ middle third from a set of line segments. One starts by deleting the open middle third (, ) from the interval [0, 1], leaving two line segments: [0, ] ∪ [, 1]. Next, the open middle third of each of these remaining segments is deleted, leaving four line segments: [0, ] ∪ [, ] ∪ [, ] ∪ [, 1]. This process is continued ad infinitum, where the _n_th set is

    $C_n = \frac{C_{n-1}} 3 \cup \left(\frac 2 {3} +\frac{C_{n-1}} 3 \right) \text{ for } n \ge 1, \text{ and } C_0=[0,1].$

The Cantor ternary set contains all points in the interval [0, 1] that are not deleted at any step in this infinite process:

    $\mathcal{C} := \bigcap_{n=1}^\infty C_n.$

The first six steps of this process are illustrated below.

Cantor_set_in_seven_iterations.svg

Using the idea of self-similar transformations, T_(L)(x) = x/3, T_(R)(x) = (2 + x)/3 and C_(n) = T_(L)(C_(n − 1)) ∪ T_(R)(C_(n − 1)), the explicit closed formulas for the Cantor set are[7]

    $\mathcal{C}=[0,1] \smallsetminus \bigcup_{n=1}^\infty \bigcup_{k=0}^{3^n-1} \left(\frac{3k+1}{3^{n+1}},\frac{3k+2}{3^{n+1}}\right),$

where every middle third is removed as the open interval $\textstyle \left(\frac{3k+1}{3^{n+1}},\frac{3k+2}{3^{n+1}}\right)$ from the closed interval $\textstyle \left[\frac{3k+0}{3^{n+1}},\frac{3k+3}{3^{n+1}}\right] = \left[\frac{k+0}{3^n},\frac{k+1}{3^n}\right]$ surrounding it, or

    $\mathcal{C}=\bigcap_{n=1}^\infty \bigcup_{k=0}^{3^{n-1}-1} \left( \left[\frac{3k+0}{3^n},\frac{3k+1}{3^n}\right] \cup \left[\frac{3k+2}{3^n},\frac{3k+3}{3^n}\right] \right),$

where the middle third $\textstyle \left(\frac{3k+1}{3^n},\frac{3k+2}{3^n}\right)$ of the foregoing closed interval $\textstyle \left[\frac{k+0}{3^{n-1}},\frac{k+1}{3^{n-1}}\right] = \left[\frac{3k+0}{3^n},\frac{3k+3}{3^n}\right]$ is removed by intersecting with $\textstyle \left[\frac{3k+0}{3^n},\frac{3k+1}{3^n}\right] \cup \left[\frac{3k+2}{3^n},\frac{3k+3}{3^n}\right] .$

This process of removing middle thirds is a simple example of a finite subdivision rule. The Cantor ternary set is an example of a fractal string.

Cantor_set_binary_tree.svg

In arithmetical terms, the Cantor set consists of all real numbers of the unit interval [0, 1] that do not require the digit 1 in order to be expressed as a ternary (base 3) fraction. As the above diagram illustrates, each point in the Cantor set is uniquely located by a path through an infinitely deep binary tree, where the path turns left or right at each level according to which side of a deleted segment the point lies on. Representing each left turn with 0 and each right turn with 2 yields the ternary fraction for a point. Replacing the "2" digits in these fractions with "1" digits produces a surjective (and not injective) mapping between the Cantor set and the set of infinite binary sequences.


Composition

Since the Cantor set is defined as the set of points not excluded, the proportion (i.e., measure) of the unit interval remaining can be found by total length removed. This total is the geometric progression

$$\sum_{n=0}^\infty \frac{2^n}{3^{n+1}} = \frac{1}{3} + \frac{2}{9} + \frac{4}{27} + \frac{8}{81} + \cdots =  \frac{1}{3}\left(\frac{1}{1-\frac{2}{3}}\right) = 1.$$

So that the proportion left is 1 – 1 = 0.

This calculation suggests that the Cantor set cannot contain any interval of non-zero length. It may seem surprising that there should be anything left—after all, the sum of the lengths of the removed intervals is equal to the length of the original interval. However, a closer look at the process reveals that there must be something left, since removing the "middle third" of each interval involved removing open sets (sets that do not include their endpoints). So removing the line segment (¹⁄₃, ²⁄₃) from the original interval [0, 1] leaves behind the points ¹⁄₃ and ²⁄₃. Subsequent steps do not remove these (or other) endpoints, since the intervals removed are always internal to the intervals remaining. So the Cantor set is not empty, and in fact contains an uncountably infinite number of points (as follows from the above description in terms of paths in an infinite binary tree).

It may appear that _only_ the endpoints of the construction segments are left, but that is not the case either. The number ¹⁄₄, for example, has the unique ternary form 0.020202… = . It is in the bottom third, and the top third of that third, and the bottom third of that top third, and so on. Since it is never in one of the middle segments, it is never removed. Yet it is also not an endpoint of any middle segment, because it is not a multiple of any power of 1/3.[8] All endpoints of segments are _terminating_ ternary fractions and are contained in the set

$$\{x \in [0,1] \mid \exists i \in \N_0: x \, 3^i \in \Z \} \qquad \Bigl(\subset \N_0 \, 3^{-\N_0} \Bigr)$$
which is a countably infinite set. As to cardinality, _most_ elements of the Cantor set are not endpoints of intervals, and the whole Cantor set is not countable.


Properties

Cardinality

It can be shown that there are as many points left behind in this process as there were to begin with, and that therefore, the Cantor set is uncountable. To see this, we show that there is a function _f_ from the Cantor set 𝒞 to the closed interval [0,1] that is surjective (i.e. _f_ maps from 𝒞 onto [0,1]) so that the cardinality of 𝒞 is no less than that of [0,1]. Since 𝒞 is a subset of [0,1], its cardinality is also no greater, so the two cardinalities must in fact be equal, by the Cantor–Bernstein–Schröder theorem.

To construct this function, consider the points in the [0, 1] interval in terms of base 3 (or ternary) notation. Recall that the proper ternary fractions, more precisely: the elements of $\bigl(\Z \smallsetminus \{0\}\bigr) \cdot 3^{-\N_0}$, admit more than one representation in this notation, as for example ¹⁄₃, that can be written as 0.1₃ = ₃, but also as 0.0222...₃ = ₃, and ²⁄₃, that can be written as 0.2₃ = ₃ but also as 0.1222...₃ = ₃.[9] When we remove the middle third, this contains the numbers with ternary numerals of the form 0.1xxxxx...₃ where xxxxx...₃ is strictly between 00000...₃ and 22222...₃. So the numbers remaining after the first step consist of

-   Numbers of the form 0.0xxxxx...₃ (including 0.022222...₃ = 1/3)
-   Numbers of the form 0.2xxxxx...₃ (including 0.222222...₃ = 1)

This can be summarized by saying that those numbers that admit a ternary representation such that the first digit after the radix point is not 1 are the ones remaining after the first step.

The second step removes numbers of the form 0.01xxxx...₃ and 0.21xxxx...₃, and (with appropriate care for the endpoints) it can be concluded that the remaining numbers are those with a ternary numeral where neither of the first _two_ digits is 1.

Continuing in this way, for a number not to be excluded at step _n_, it must have a ternary representation whose _n_th digit is not 1. For a number to be in the Cantor set, it must not be excluded at any step, it must admit a numeral representation consisting entirely of 0s and 2s.

It is worth emphasising that numbers like 1, ¹⁄₃ = 0.1₃ and ⁷⁄₉ = 0.21₃ are in the Cantor set, as they have ternary numerals consisting entirely of 0s and 2s: 1 = 0.222...₃ = ₃, ¹⁄₃ = 0.0222...₃ = ₃ and ⁷⁄₉ = 0.20222...₃ = ₃. All the latter numbers are “endpoints”, here: right limit points of 𝒞. The same is true for the left limit points of 𝒞, e. g. ²⁄₃ = 0.1222...₃ = ₃ = ₃ and ⁸⁄₉ = 0.21222...₃ = ₃ = ₃. All these endpoints are _proper ternary_ fractions (elements of $\Z \cdot 3^{-\N_0}$) of the form ^(_p_)⁄_(_q_), where when irreducible the denominator _q_ is a power of 3.[10] The ternary representation of these fractions terminates (i. e. is finite) or — what is the same — is infinite and “ends” in either infinitely many recurring 0s or infinitely many recurring 2s. And such a fraction is a left limit point of 𝒞 if its ternary representation avoiding any 1 “ends” in infinitely many recurring 0s and a right limit point of 𝒞 if its 1 avoiding ternary numeral “ends” in infinitely many recurring 2s.

This set of endpoints is dense in 𝒞 (but not dense in [0, 1]) and makes up a countably infinite set. The numbers in 𝒞 which are _not_ endpoints also have only 0s and 2s in their ternary representation, but there is _no_ digit position from which on there are _only_ digits 0 resp. _only_ digits 2, i. e. there is no trailing infinite repetition of the digit 0 nor of the digit 2.

The function from 𝒞 to [0,1] is defined by taking the ternary numeral that does consist entirely of 0s and 2s, replacing all the 2s by 1s, and interpreting the sequence as a binary representation of a real number. In a formula,

$$f \bigg( \sum_{k\in \N} a_k 3^{-k} \bigg) = \sum_{k\in \N} \frac{a_k}{2} 2^{-k}$$
  where   $\forall k\in \N : a_k \in \{0,2\} .$

For any number _y_ in [0,1], its binary representation can be translated into a ternary representation of a number _x_ in 𝒞 by replacing all the 1s by 2s. With this, _f_(_x_) = _y_ so that _y_ is in the range of _f_. For instance if _y_ = ³⁄₅ = 0.100110011001...₂ = , we write _x_ = = 0.200220022002...₃ = ⁷⁄₁₀. Consequently, _f_ is surjective. However, _f_ is _not_ injective — the values for which _f_(_x_) coincides are those at opposing ends of one of the _middle thirds_ removed. For instance, take

    ¹⁄₃ = ₃ (which is a right limit point of 𝒞 and a left limit point of the middle third [¹⁄₃,²⁄₃])   and
    ²⁄₃ = ₃ (which is a left limit point of 𝒞 and a right limit point of the middle third [¹⁄₃,²⁄₃])

so

$$\begin{array}{lcl}
f\bigl({}^1\!\!/\!_3 \bigr) = f(0.0\overline{2}_3) = 0.0\overline{1}_2 = \!\! & \!\! 0.1_2 \!\! & \!\! = 0.1\overline{0}_2 = f(0.2\overline{0}_3) = f\bigl({}^2\!\!/\!_3 \bigr) . \\
& \parallel \\
& {}^1\!\!/\!_2
\end{array}$$
Thus there are as many points in the Cantor set as there are in the interval [0, 1] (which has the uncountable cardinality However, the set of endpoints of the removed intervals is countable, so there must be uncountably many numbers in the Cantor set which are not interval endpoints. As noted above, one example of such a number is ¹⁄₄, which can be written as 0.020202...₃ = in ternary notation. In fact, given any a ∈ [ − 1, 1], there exist x, y ∈ 𝒞 such that a = y − x. This was first demonstrated by Steinhaus in 1917, who proved, via a geometric argument, the equivalent assertion that {(x, y) ∈ ℝ² | y = x + a} ∩ (𝒞 × 𝒞) ≠ ∅ for every a ∈ [ − 1, 1].[11] Since this construction provides an injection from [ − 1, 1] to 𝒞 × 𝒞, we have |𝒞 × 𝒞| ≥ |[ − 1, 1]| = 𝔠 as an immediate corollary. Assuming that |A × A| = |A| for any infinite set A (a statement shown to be equivalent to the axiom of choice by Tarski), this provides another demonstration that |𝒞| = 𝔠.

The Cantor set contains as many points as the interval from which it is taken, yet itself contains no interval of nonzero length. The irrational numbers have the same property, but the Cantor set has the additional property of being closed, so it is not even dense in any interval, unlike the irrational numbers which are dense in every interval.

It has been conjectured that all algebraic irrational numbers are normal. Since members of the Cantor set are not normal, this would imply that all members of the Cantor set are either rational or transcendental.

Self-similarity

The Cantor set is the prototype of a fractal. It is self-similar, because it is equal to two copies of itself, if each copy is shrunk by a factor of 3 and translated. More precisely, the Cantor set is equal to the union of two functions, the left and right self-similarity transformations of itself, T_(L)(x) = x/3 and T_(R)(x) = (2 + x)/3, which leave the Cantor set invariant up to homeomorphism: T_(L)(𝒞) ≅ T_(R)(𝒞) ≅ 𝒞 = T_(L)(𝒞) ∪ T_(R)(𝒞).

Repeated iteration of T_(L) and T_(R) can be visualized as an infinite binary tree. That is, at each node of the tree, one may consider the subtree to the left or to the right. Taking the set {T_(L), T_(R)} together with function composition forms a monoid, the dyadic monoid.

The automorphisms of the binary tree are its hyperbolic rotations, and are given by the modular group. Thus, the Cantor set is a homogeneous space in the sense that for any two points x and y in the Cantor set 𝒞, there exists a homeomorphism h : 𝒞 → 𝒞 with h(x) = y. An explicit construction of h can be described more easily if we see the Cantor set as a product space of countably many copies of the discrete space {0, 1}. Then the map $h:\{0,1\}^\N\to\{0,1\}^\N$ defined by h_(n)(u) := u_(n) + x_(n) + y_(n)mod 2 is an involutive homeomorphism exchanging x and y.

Conservation law

It has been found that some form of conservation law is always responsible behind scaling and self-similarity. In the case of Cantor set it can be seen that the d_(f)th moment (where d_(f) = ln (2)/ln (3) is the fractal dimension) of all the surviving intervals at any stage of the construction process is equal to constant which is equal to one in the case of Cantor set [12][13] . We know that there are N = 2^(n) intervals of size 1/3^(n) present in the system at the nth step of its construction. Then if we level the surviving intervals as x₁, x₂, …, x_(2^(n)) then the d_(f)th moment is x₁^(d_(f)) + x₂^(d_(f)) + ⋯ + x_(2^(n))^(d_(f)) = 1 since x₁ = x₂ = ⋯ = x_(2^(n)) = 1/3^(n).

The Hausdorff dimension of the Cantor set is equal to ln(2)/ln(3) ≈ 0.631.

Topological and analytical properties

Although "the" Cantor set typically refers to the original, middle-thirds Cantor described above, topologists often talk about "a" Cantor set, which means any topological space that is homeomorphic (topologically equivalent) to it.

As the above summation argument shows, the Cantor set is uncountable but has Lebesgue measure 0. Since the Cantor set is the complement of a union of open sets, it itself is a closed subset of the reals, and therefore a complete metric space. Since it is also totally bounded, the Heine–Borel theorem says that it must be compact.

For any point in the Cantor set and any arbitrarily small neighborhood of the point, there is some other number with a ternary numeral of only 0s and 2s, as well as numbers whose ternary numerals contain 1s. Hence, every point in the Cantor set is an accumulation point (also called a cluster point or limit point) of the Cantor set, but none is an interior point. A closed set in which every point is an accumulation point is also called a perfect set in topology, while a closed subset of the interval with no interior points is nowhere dense in the interval.

Every point of the Cantor set is also an accumulation point of the complement of the Cantor set.

For any two points in the Cantor set, there will be some ternary digit where they differ — one will have 0 and the other 2. By splitting the Cantor set into "halves" depending on the value of this digit, one obtains a partition of the Cantor set into two closed sets that separate the original two points. In the relative topology on the Cantor set, the points have been separated by a clopen set. Consequently, the Cantor set is totally disconnected. As a compact totally disconnected Hausdorff space, the Cantor set is an example of a Stone space.

As a topological space, the Cantor set is naturally homeomorphic to the product of countably many copies of the space {0, 1}, where each copy carries the discrete topology. This is the space of all sequences in two digits

2^(ℕ) = {(_x__(_n_)) ∣ _x__(_n_) ∈ {0, 1} for _n_ ∈ ℕ}
,

which can also be identified with the set of 2-adic integers. The basis for the open sets of the product topology are cylinder sets; the homeomorphism maps these to the subspace topology that the Cantor set inherits from the natural topology on the real number line. This characterization of the Cantor space as a product of compact spaces gives a second proof that Cantor space is compact, via Tychonoff's theorem.

From the above characterization, the Cantor set is homeomorphic to the p-adic integers, and, if one point is removed from it, to the p-adic numbers.

The Cantor set is a subset of the reals, which are a metric space with respect to the ordinary distance metric; therefore the Cantor set itself is a metric space, by using that same metric. Alternatively, one can use the p-adic metric on 2^(ℕ): given two sequences (x_(n)), (y_(n)) ∈ 2^(ℕ), the distance between them is d((x_(n)), (y_(n))) = 2^( − k), where k is the smallest index such that x_(k) ≠ y_(k); if there is no such index, then the two sequences are the same, and one defines the distance to be zero. These two metrics generate the same topology on the Cantor set.

We have seen above that the Cantor set is a totally disconnected perfect compact metric space. Indeed, in a sense it is the only one: every nonempty totally disconnected perfect compact metric space is homeomorphic to the Cantor set. See Cantor space for more on spaces homeomorphic to the Cantor set.

The Cantor set is sometimes regarded as "universal" in the category of compact metric spaces, since any compact metric space is a continuous image of the Cantor set; however this construction is not unique and so the Cantor set is not universal in the precise categorical sense. The "universal" property has important applications in functional analysis, where it is sometimes known as the _representation theorem for compact metric spaces_.[14]

For any integer _q_ ≥ 2, the topology on the group G=Z_(_q_)^(ω) (the countable direct sum) is discrete. Although the Pontrjagin dual Γ is also Z_(_q_)^(ω), the topology of Γ is compact. One can see that Γ is totally disconnected and perfect - thus it is homeomorphic to the Cantor set. It is easiest to write out the homeomorphism explicitly in the case _q_=2. (See Rudin 1962 p 40.)

The geometric mean of the Cantor set is approximately 0.274974.[15]

Measure and probability

The Cantor set can be seen as the compact group of binary sequences, and as such, it is endowed with a natural Haar measure. When normalized so that the measure of the set is 1, it is a model of an infinite sequence of coin tosses. Furthermore, one can show that the usual Lebesgue measure on the interval is an image of the Haar measure on the Cantor set, while the natural injection into the ternary set is a canonical example of a singular measure. It can also be shown that the Haar measure is an image of any probability, making the Cantor set a universal probability space in some ways.

In Lebesgue measure theory, the Cantor set is an example of a set which is uncountable and has zero measure.[16]

Cantor numbers

If we define a Cantor number as a member of the Cantor set, then[17]

-   (1) Every real number in [0, 2] is the sum of two Cantor numbers.
-   (2) Between any two Cantor numbers there is a number that is not a Cantor number.

Descriptive set theory

The Cantor set is a meager set (or a set of first category) as a subset of [0,1] (although not as a subset of itself, since it is a Baire space). The Cantor set thus demonstrates that notions of "size" in terms of cardinality, measure, and (Baire) category need not coincide. Like the set ℚ ∩ [0, 1], the Cantor set 𝒞 is "small" in the sense that it is a null set (a set of measure zero) and it is a meager subset of [0,1]. However, unlike ℚ ∩ [0, 1], which is countable and has a "small" cardinality, ℵ₀, the cardinality of 𝒞 is the same as that of [0,1], the continuum 𝔠 and is "large" in the sense of cardinality. In fact, it is also possible to construct a subset of [0,1] that is meager but of positive measure and a subset that is non-meager but of measure zero: By taking the countable union of "fat" Cantor sets 𝒞^((n))(see Smith–Volterra–Cantor set below) of measure (n − 1)/n, we obtain a set $\mathcal{A}:=\bigcup_{n=1}^{\infty}\mathcal{C}^{(n)}$which has a positive measure but is meager in [0,1], since each 𝒞^((n)) is nowhere dense. Then consider the set $\mathcal{A}^{\mathrm{c}}=[0,1]\setminus\bigcup_{n=1}^\infty\mathcal{C}^{(n)}$. Since 𝒜 ∪ 𝒜^(c) = [0, 1], 𝒜^(c) cannot be meager, but since μ(𝒜) = 1, 𝒜^(c) must have measure zero.


Variants

Smith–Volterra–Cantor set

Instead of repeatedly removing the middle third of every piece as in the Cantor set, we could also keep removing any other fixed percentage (other than 0% and 100%) from the middle. In the case where the middle ⁸⁄₁₀ of the interval is removed, we get a remarkably accessible case — the set consists of all numbers in [0,1] that can be written as a decimal consisting entirely of 0s and 9s.

By removing progressively smaller percentages of the remaining pieces in every step, one can also construct sets homeomorphic to the Cantor set that have positive Lebesgue measure, while still being nowhere dense. See Smith–Volterra–Cantor set for an example.

Stochastic Cantor set

One can modify the construction of the Cantor set by dividing randomly instead of equally. Besides, to incorporate time we can divide only one of the available intervals at each step instead of dividing all the available intervals. In the case of stochastic triadic Cantor set the resulting process can be described by the following rate equation[18][19]

$${{\partial c(x,t)}\over{\partial t}}=-{{x^2}\over{2}}c(x,t)+2\int_x^\infty (y-x)c(y,t) \, dy,$$

and for the stochastic dyadic Cantor set[20]

$${{\partial c(x,t)}\over{\partial t}}=-xc(x,t)+(1+p)\int_x^\infty c(y,t) \, dy,$$

where c(x, t)dx is the number of intervals of size between x and x + dx. In the case of triadic Cantor set the fractal dimension is 0.5616 which is less than its deterministic counterpart 0.6309. In the case of stochastic dyadic Cantor set the fractal dimension is p which is again less than that of its deterministic counterpart ln (1 + p)/ln 2. In the case of stochastic dyadic Cantor set the solution for c(x, t) exhibits dynamic scaling as its solution in the long-time limit is t^( − (1 + d_(f)))e^( − xt) where the fractal dimension of the stochastic dyadic Cantor set d_(f) = p. In either case, like triadic Cantor set, the d_(f)th moment (∫x^(d_(f))c(x, t)dx = constant)) of stochastic triadic and dyadic Cantor set too are conserved quantities.

Cantor dust

CANTOR DUST is a multi-dimensional version of the Cantor set. It can be formed by taking a finite Cartesian product of the Cantor set with itself, making it a Cantor space. Like the Cantor set, Cantor dust has zero measure.[21] Cantorcubes.gifs recursion progression towards Cantor dust]]

  ----------------- ------------------
  Cantor_dust.png   Cantors_cube.jpg
  ----------------- ------------------

A different 2D analogue of the Cantor set is the Sierpinski carpet, where a square is divided up into nine smaller squares, and the middle one removed. The remaining squares are then further divided into nine each and the middle removed, and so on ad infinitum.[22] The 3D analogue of this is the Menger sponge.


Historical remarks

Cantor-like_Column_Capital_Ile_de_Philae_Description_d'Egypte_1809.jpg

Cantor himself defined the set in a general, abstract way, and mentioned the ternary construction only in passing, as an example of a more general idea, that of a perfect set that is nowhere dense. The original paper provides several different constructions of the abstract concept.

This set would have been considered abstract at the time when Cantor devised it. Cantor himself was led to it by practical concerns about the set of points where a trigonometric series might fail to converge. The discovery did much to set him on the course for developing an abstract, general theory of infinite sets.

A column capital from the Ancient Egyptian site of the island of Philae carries a pattern which resembles the Cantor set. Cantor may have seen the image, as his cousin was an Egyptologist.[23]


See also

-   Smith–Volterra–Cantor set
-   Hexagrams (I Ching)
-   Cantor function
-   Cantor cube
-   Antoine's necklace
-   Koch snowflake
-   Knaster–Kuratowski fan
-   List of fractals by Hausdorff dimension
-   Moser–de Bruijn sequence


Notes


References

-   -   -   -   -   .

-


External links

-   -   Cantor Sets and Cantor Set and Function at cut-the-knot
-   Cantor Set (PRIME)
-   Cantor Dust Demo Program

Category:Measure theory Category:Topological spaces Category:Sets of real numbers Category:Georg Cantor Category:L-systems

[1]

[2] The “Cantor set” was also discovered by Paul du Bois-Reymond (1831–1889). See . The “Cantor set” was also discovered in 1881 by Vito Volterra (1860–1940). See: .

[3]

[4]

[5]

[6]

[7]

[8]

[9] This alternative recurring representation of a number with a terminating numeral occurs in any positional system with Archimedean absolute value.

[10]

[11]

[12]

[13]

[14]

[15] http://math.stackexchange.com/questions/1889476/cantor-set-geometric-mean

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]