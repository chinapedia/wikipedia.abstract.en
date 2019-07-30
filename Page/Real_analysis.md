for a square wave. Fourier series are an important tool in real analysis.]] In mathematics, REAL ANALYSIS is the branch of mathematical analysis that studies the behavior of real numbers, sequences and series of real numbers, and real-valued functions.[1] Some particular properties of real-valued sequences and functions that real analysis studies include convergence, limits, continuity, smoothness, differentiability and integrability.

Real analysis is distinguished from complex analysis, which deals with the study of complex numbers and their functions.


Scope

Construction of the real numbers

The theorems of real analysis rely intimately upon the structure of the real number line. The real number system consists of a set (ℝ), together with two binary operations denoted and , and an order denoted . The operations make the real numbers a field, and, along with the order, an ordered field. The real number system is the unique _complete ordered field_, in the sense that any other complete ordered field is isomorphic to it. Intuitively, completeness means that there are no 'gaps' in the real numbers. In particular, this property distinguishes the real numbers from other ordered fields (e.g., the rational numbers ℚ) and is critical to the proof of several key properties of functions of the real numbers. The completeness of the reals is often conveniently expressed as the _least upper bound property_ (see below).

There are several ways of formalizing the definition of the real numbers. Modern approaches consist of providing a list of axioms, and a proof of the existence of a model for them, which has above properties. Moreover, one may show that any two models are isomorphic, which means that all models have exactly the same properties, and that one may forget how the model is constructed for using real numbers. Some of these constructions are described in the main article.

Order properties of the real numbers

The real numbers have several important lattice-theoretic properties that are absent in the complex numbers. Most importantly, the real numbers form an ordered field, in which sums and products of positive numbers are also positive. Moreover, the ordering of the real numbers is total, and the real numbers have the least upper bound property:

  _Every nonempty subset of ℝ that has an upper bound has a least upper bound that is also a real number._

These order-theoretic properties lead to a number of important results in real analysis, such as the monotone convergence theorem, the intermediate value theorem and the mean value theorem.

However, while the results in real analysis are stated for real numbers, many of these results can be generalized to other mathematical objects. In particular, many ideas in functional analysis and operator theory generalize properties of the real numbers – such generalizations include the theories of Riesz spaces and positive operators. Also, mathematicians consider real and imaginary parts of complex sequences, or by pointwise evaluation of operator sequences.

Topological properties of the real numbers

Many of the theorems of real analysis are consequences of the topological properties of the real number line. The order properties of the real numbers described above are closely related to these topological properties. As a topological space, the real numbers has a _standard topology_, which is the order topology induced by order <. Alternatively, by defining the _metric_ or _distance function_ d : ℝ × ℝ → ℝ_( ≥ 0) using the absolute value function as d(x, y) = |x − y|, the real numbers become the prototypical example of a metric space. The topology induced by metric d turns out to be identical to the standard topology induced by order <. Theorems like the intermediate value theorem that are essentially topological in nature can often be proved in the more general setting of metric or topological spaces rather than in ℝ only. Often, such proofs tend to be shorter or simpler compared to classical proofs that apply direct methods.

Sequences

A _SEQUENCE_ is a function whose domain is a countable, totally ordered set. The domain is usually taken to be the natural numbers[2], although it is occasionally convenient to also consider bidirectional sequences indexed by the set of all integers, including negative indices.

Of interest in real analysis, a _REAL-VALUED SEQUENCE_, here indexed by the natural numbers, is a map a : ℕ → ℝ, n ↦ a_(n). Each a(n) = a_(n) is referred to as a _TERM_ (or, less commonly, an _ELEMENT_) of the sequence. A sequence is rarely denoted explicitly as a function; instead, by convention, it is almost always notated as if it were an ordered ∞-tuple, with individual terms or a general term enclosed in parentheses:

  (a_(n)) = (a_(n))_(n ∈ ℕ) = (a₁, a₂, a₃, ⋯).[3]

A sequence that tends to a limit (i.e., lim_(n → ∞)a_(n) exists) is said to be CONVERGENT; otherwise it is DIVERGENT. (_See the section on limits and convergence for details._) A real-valued sequence (a_(n)) is _BOUNDED_ if there exists M ∈ ℝ such that |a_(n)| < M for all n ∈ ℕ. A real-valued sequence (a_(n)) is _MONOTONICALLY INCREASING_ or _DECREASING_ if

  a₁ ≤ a₂ ≤ a₃ ≤ … or a₁ ≥ a₂ ≥ a₃ ≥ …

holds, respectively. If either holds, the sequence is said to be _MONOTONIC_. The monotonicity is _STRICT_ if the chained inequalities still hold with ≤ or ≥ replaced by < or >.

Given a sequence (a_(n)), another sequence (b_(k)) is a _SUBSEQUENCE_ of (a_(n)) if b_(k) = a_(n_(k)) for all positive integers k and (n_(k)) is a strictly increasing sequence of natural numbers.

Limits and convergence

Roughly speaking, a LIMIT is the value that a function or a sequence "approaches" as the input or index approaches some value.[4] (This value can include the symbols  ± ∞ when addressing the behavior of a function or sequence as the variable increases or decreases without bound.) The idea of a limit is fundamental to calculus (and mathematical analysis in general) and its formal definition is used in turn to define notions like continuity, derivatives, and integrals. (In fact, the study of limiting behavior has been used as a characteristic that distinguishes calculus and mathematical analysis from other branches of mathematics.)

The concept of limit was informally introduced for functions by Newton and Leibniz, at the end of 17th century, for building infinitesimal calculus. For sequences, the concept was introduced by Cauchy, and made rigorous, at the end of 19th century by Bolzano and Weierstrass, who gave the modern ε-δ definition, which follows.

DEFINITION. Let f be a real-valued function defined on E ⊂ ℝ. We say that _f(x) TENDS TO L AS x APPROACHES x₀_, or that _THE LIMIT OF f(x) AS x APPROACHES x₀ IS L_ if, for any ϵ > 0, there exists δ > 0 such that for all x ∈ E, 0 < |x − x₀| < δ implies that |f(x) − L| < ϵ. We write this symbolically as

  f(x) → L  as  x → x₀, or lim_(x → x₀)f(x) = L.

Intuitively, this definition can be thought of in the following way: We say that f(x) → L as x → x₀, when, given any positive number ϵ, no matter how small, we can always find a δ, such that we can guarantee that f(x) and L are less than ϵ apart, as long as x (in the domain of f) is a real number that is less than δ away from x₀ but distinct from x₀. The purpose of the last stipulation, which corresponds to the condition 0 < |x − x₀| in the definition, is to ensure that lim_(x → x₀)f(x) = L does not imply anything about the value of f(x₀) itself. Actually, x₀ does not even need to be in the domain of f in order for lim_(x → x₀)f(x) to exist.

In a slightly different but related context, the concept of a limit applies to the behavior of a sequence (a_(n)) when n becomes large.

DEFINITION. Let (a_(n)) be a real-valued sequence. We say that (a_(n)) _CONVERGES TO_ a if, for any ϵ > 0, there exists a natural number N such that n ≥ N implies that |a − a_(n)| < ϵ. We write this symbolically as

  a_(n) → a  as  n → ∞, or lim_(n → ∞)a_(n) = a;

if (a_(n)) fails to converge, we say that (a_(n)) _DIVERGES_.

Generalizing to a real-valued function of a real variable, a slight modification of this definition (replacement of sequence (a_(n)) and term a_(n) by function f and value f(x) and natural numbers N and n by real numbers M and x, respectively) yields the definition of the _LIMIT OF f(x) AS x INCREASES WITHOUT BOUND_, notated lim_(x → ∞)f(x). Reversing the inequality x ≥ M to x ≤ M gives the corresponding definition of the limit of f(x) as x _decreases_ _without bound_, lim_(x →  − ∞)f(x).

Sometimes, it is useful to conclude that a sequence converges, even though the value to which it converges is unknown or irrelevant. In these cases, the concept of a Cauchy sequence is useful.

DEFINITION. Let (a_(n)) be a real-valued sequence. We say that (a_(n)) is a _CAUCHY SEQUENCE_ if, for any ϵ > 0, there exists a natural number N such that m, n ≥ N implies that |a_(m) − a_(n)| < ϵ.

It can be shown that a real-valued sequence is Cauchy if and only if it is convergent. This property of the real numbers is expressed by saying that the real numbers endowed with the standard metric, (ℝ, | ⋅ |), is a _COMPLETE METRIC SPACE_. In a general metric space, however, a Cauchy sequence need not converge.

In addition, for real-valued sequences that are monotonic, it can be shown that the sequence is bounded if and only if it is convergent.

Uniform and pointwise convergence for sequences of functions

In addition to sequences of numbers, one may also speak of _sequences of functions_ _on_ E ⊂ ℝ, that is, infinite, ordered families of functions f_(n) : E → ℝ, denoted (f_(n))_(n = 1)^(∞), and their convergence properties. However, in the case of sequences of functions, there are two kinds of convergence, known as _pointwise convergence_ and _uniform convergence_, that need to be distinguished.

Roughly speaking, pointwise convergence of functions f_(n) to a limiting function f : E → ℝ, denoted f_(n) → f, simply means that given any x ∈ E, f_(n)(x) → f(x) as n → ∞. In contrast, uniform convergence is a stronger type of convergence, in the sense that a uniformly convergent sequence of functions also converges pointwise, but not conversely. Uniform convergence requires members of the family of functions, f_(n), to fall within some error ϵ > 0 of f for _every value of x ∈ E_, whenever n ≥ N, for some integer N. For a family of functions to uniformly converge, sometimes denoted f_(n) ⇉ f, such a value of N must exist for any ϵ > 0 given, no matter how small. Intuitively, we can visualize this situation by imagining that, for a large enough N, the functions f_(N), f_(N + 1), f_(N + 2), … are all confined within a 'tube' of width 2ϵ about f (i.e., between f − ϵ and f + ϵ) _for every value in their domain_ E.

The distinction between pointwise and uniform convergence is important when exchanging the order of two limiting operations (e.g., taking a limit, a derivative, or integral) is desired: in order for the exchange to be well-behaved, many theorems of real analysis call for uniform convergence. For example, a sequence of continuous functions (see below) is guaranteed to converge to a continuous limiting function if the convergence is uniform, while the limiting function may not be continuous if convergence is only pointwise. Karl Weierstrass is generally credited for clearly defining the concept of uniform convergence and fully investigating its implications.

Compactness

Compactness is a concept from general topology that plays an important role in many of the theorems of real analysis. The property of compactness is a generalization of the notion of a set being _closed_ and _bounded_. (In the context of real analysis, these notions are equivalent: a set in Euclidean space is compact if and only if it is closed and bounded.) Briefly, a closed set contains all of its boundary points, while a set is bounded if there exists a real number such that the distance between any two points of the set is less than that number. In ℝ, sets that are closed and bounded, and therefore compact, include the empty set, any finite number of points, closed intervals, and their finite unions. However, this list is not exhaustive; for instance, the set $\{1/n:n\in\mathbb{N}\}\cup \{0}\$ is another example of a compact set. On the other hand, the set {1/n : n ∈ ℕ} is not compact because it is bounded but not closed, as the boundary point 0 is not a member of the set. The set [0, ∞) is also not compact because it is closed but not bounded.

For subsets of the real numbers, there are several equivalent definitions of compactness.

DEFINITION. A set E ⊂ ℝ is compact if it is closed and bounded.

This definition also holds for Euclidean space of any finite dimension, ℝ^(n), but it is not valid for metric spaces in general. The equivalence of the definition with the definition of compactness based on subcovers, given later in this section, is known as the Heine-Borel theorem.

A more general definition that applies to all metric spaces uses the notion of a subsequence (see above).

DEFINITION. A set E in a metric space is compact if every sequence in E has a convergent subsequence.

This particular property is known as _subsequential compactness_. In ℝ, a set is subsequentially compact if and only if it is closed and bounded, making this definition equivalent to the one given above. Subsequential compactness is equivalent to the definition of compactness based on subcovers for metric spaces, but not for topological spaces in general.

The most general definition of compactness relies on the notion of _open covers_ and _subcovers_, which is applicable to topological spaces (and thus to metric spaces and ℝ as special cases). In brief, a collection of open sets U_(α) is said to be an _open cover_ of set X if the union of these sets is a superset of X. This open cover is said to have a _finite subcover_ if a finite subcollection of the U_(α) could be found that also covers X.

DEFINITION. A set X in a topological space is compact if every open cover of X has a finite subcover.

Compact sets are well-behaved with respect to properties like convergence and continuity. For instance, any Cauchy sequence in a compact metric space is convergent. As another example, the image of a compact metric space under a continuous map is also compact.

Continuity

A function from the set of real numbers to the real numbers can be represented by a graph in the Cartesian plane; such a function is continuous if, roughly speaking, the graph is a single unbroken curve with no "holes" or "jumps".

There are several ways to make this intuition mathematically rigorous. Several definitions of varying levels of generality can be given. In cases where two or more definitions are applicable, they are readily shown to be equivalent to one another, so the most convenient definition can be used to determine whether a given function is continuous or not. In the first definition given below, f : I → ℝ is a function defined on a non-degenerate interval I of the set of real numbers as its domain. Some possibilities include I = ℝ, the whole set of real numbers, an open interval I = (a, b) = {x ∈ ℝ | a < x < b}, or a closed interval I = [a, b] = {x ∈ ℝ | a ≤ x ≤ b}. Here, a and b are distinct real numbers, and we exclude the case of I being empty or consisting of only one point, in particular.

DEFINITION. If I ⊂ ℝ is a non-degenerate interval, we say that f : I → ℝ is _CONTINUOUS AT_ p ∈ E if lim_(x → p)f(x) = f(p). We say that f is a _CONTINUOUS MAP_ if f is continuous at every p ∈ I.

In contrast to the requirements for f to have a limit at a point p, which do not constrain the behavior of f at p itself, the following two conditions, in addition to the existence of lim_(x → p)f(x), must also hold in order for f to be continuous at p: (I) f must be defined at p, i.e., p is in the domain of f; _and_ (II) f(x) → f(p) as x → p. The definition above actually applies to any domain E that does not contain an isolated point, or equivalently, E where every p ∈ E is a limit point of E. A more general definition applying to f : X → ℝ with a general domain X ⊂ ℝ is the following:

DEFINITION. If X is an arbitrary subset of ℝ, we say that f : X → ℝ is _CONTINUOUS AT_ p ∈ X if, for any ϵ > 0, there exists δ > 0 such that for all x ∈ X, |x − p| < δ implies that |f(x) − f(p)| < ϵ. We say that f is a _CONTINUOUS MAP_ if f is continuous at every p ∈ X.

A consequence of this definition is that f is _trivially continuous at any isolated point_ p ∈ X. This somewhat unintuitive treatment of isolated points is necessary to ensure that our definition of continuity for functions on the real line is consistent with the most general definition of continuity for maps between topological spaces (which includes metric spaces and ℝ in particular as special cases). This definition, which extends beyond the scope of our discussion of real analysis, is given below for completeness.

DEFINITION. If X and Y are topological spaces, we say that f : X → Y is _CONTINUOUS AT_ p ∈ X if f^( − 1)(V) is a neighborhood of p in X for every neighborhood V of f(p) in Y. We say that f is a _CONTINUOUS MAP_ if f^( − 1)(U) is open in X for every U open in Y.

(Here, f^( − 1)(S) refers to the preimage of S ⊂ Y under f.)

Uniform continuity

DEFINITION. If X is a subset of the real numbers, we say a function f : X → ℝ is _UNIFORMLY CONTINUOUS_ _ON_ X if, for any ϵ > 0, there exists a δ > 0 such that for all x, y ∈ X, |x − y| < δ implies that |f(x) − f(y)| < ϵ_._

Explicitly, when a function is uniformly continuous on X, the choice of δ needed to fulfill the definition must work for _all of_ X for a given ϵ. In contrast, when a function is continuous at every point p ∈ X (or said to be continuous on X), the choice of δ may depend on both ϵ _and_ p. Importantly, in contrast to simple continuity, uniform continuity is a property of a function that only makes sense with a specified domain; to speak of uniform continuity at a single point p is meaningless.

On a compact set, it is easily shown that all continuous functions are uniformly continuous. If E is a bounded noncompact subset of ℝ, then there exists f : E → ℝ that is continuous but not uniformly continuous. As a simple example, consider f : (0, 1) → ℝ defined by f(x) = 1/x. By choosing points close to 0, we can always make |f(x) − f(y)| > ϵ for any single choice of δ > 0, for a given ϵ > 0.

Absolute continuity

DEFINITION. Let I ⊂ ℝ be an interval on the real line. A function f : I → ℝ is said to be _ABSOLUTELY CONTINUOUS_ _ON_ I if for every positive number ϵ, there is a positive number δ such that whenever a finite sequence of pairwise disjoint sub-intervals (x₁, y₁), (x₂, y₂), …, (x_(n), y_(n)) of I satisfies[5]

$$\sum_{k=1}^{n} (y_k - x_k) < \delta$$
then

$$\displaystyle \sum_{k=1}^{n} | f(y_k) - f(x_k) | < \epsilon.$$
Absolutely continuous functions are continuous: consider the case _n_ = 1 in this definition. The collection of all absolutely continuous functions on _I_ is denoted AC(_I_). Absolute continuity is an important concept in the Lebesgue theory of integration, allowing the formulation of a generalized version of the fundamental theorem of calculus that applies to the Lebesgue integral.

Differentiation

The notion of the _derivative_ of a function or _differentiability_ originates from the concept of approximating a function near a given point using the "best" linear approximation. This approximation, if it exists, is unique and is given by the line that is tangent to the function at the given point a, and the slope of the line is the derivative of the function at a.

A function f : ℝ → ℝ is _DIFFERENTIABLE AT a_ if the limit

$$f'(a)=\lim_{h\to 0}\frac{f(a+h)-f(a)}{h}$$

exists. This limit is known as the _DERIVATIVE OF f AT a_, and the function f′, possibly defined on only a subset of ℝ, is the _DERIVATIVE_ (or _DERIVATIVE FUNCTION_) _OF_ _f_. If the derivative exists everywhere, the function is said to be _DIFFERENTIABLE_.

As a simple consequence of the definition, f is continuous at _a_ if it is differentiable there. Differentiability is therefore a stronger regularity condition (condition describing the "smoothness" of a function) than continuity, and it is possible for a function to be continuous on the entire real line but not differentiable anywhere (see Weierstrass's nowhere differentiable continuous function). It is possible to discuss the existence of higher-order derivatives as well, by finding the derivative of a derivative function, and so on.

One can classify functions by their _DIFFERENTIABILITY CLASS_. The class C⁰ (sometimes C⁰([a, b]) to indicate the interval of applicability) consists of all continuous functions. The class C¹ consists of all differentiable functions whose derivative is continuous; such functions are called _CONTINUOUSLY DIFFERENTIABLE_. Thus, a C¹ function is exactly a function whose derivative exists and is of class C⁰. In general, the classes _C^(k)_ can be defined recursively by declaring C⁰ to be the set of all continuous functions and declaring _C^(k)_ for any positive integer k to be the set of all differentiable functions whose derivative is in C^(k − 1). In particular, _C^(k)_ is contained in C^(k − 1) for every k, and there are examples to show that this containment is strict. Class C^(∞) is the intersection of the sets _C^(k)_ as _k_ varies over the non-negative integers, and the members of this class are known as the _SMOOTH FUNCTIONS_. Class C^(ω) consists of all analytic functions, and is strictly contained in C^(∞) (see bump function for a smooth function that is not analytic).

The chain rule, mean value theorem, l'Hospital's rule, and Taylor's theorem are important results in the elementary theory of the derivative.

Series

A series formalizes the imprecise notion of taking the sum of an endless sequence of numbers. The idea that taking the sum of an "infinite" number of terms can lead to a finite result was counterintuitive to the ancient Greeks and led to the formulation of a number of paradoxes by Zeno and other philosophers. The modern notion of assigning a value to a series avoids dealing with the ill-defined notion of adding an "infinite" number of terms. Instead, the finite sum of the first n terms of the sequence, known as a partial sum, is considered, and the concept of a limit is applied to the sequence of partial sums as n grows without bound. The series is assigned the value of this limit, if it exists.

Given an (infinite) sequence (a_(n)), we can define an associated _SERIES_ as the formal mathematical object $a_1+a_2+a_3+\cdots=\sum_{n=1}^{\infty} a_n$, sometimes simply written as ∑a_(n). The _PARTIAL SUMS_ of a series ∑a_(n) are the numbers $s_n=\sum_{j=1}^n a_j$. A series ∑a_(n) is said to be _CONVERGENT_ if the sequence consisting of its partial sums, (s_(n)), is convergent; otherwise it is _DIVERGENT_. The _SUM_ of a convergent series is defined as the number s = lim_(n → ∞)s_(n).

It is to be emphasized that the word "sum" is used here in a metaphorical sense as a shorthand for taking the limit of a sequence of partial sums and should not be interpreted as simply "adding" an infinite number of terms. For instance, in contrast to the behavior of finite sums, rearranging the terms of an infinite series may result in convergence to a different number (see the article on the _Riemann rearrangement theorem_ for further discussion).

An example of a convergent series is a geometric series which forms the basis of one of Zeno's famous paradoxes:

$$\sum_{n=1}^\infty \frac{1}{2^n} = \frac{1}{2}+ \frac{1}{4}+ \frac{1}{8}+\cdots=1$$
.

In contrast, the harmonic series has been known since the Middle Ages to be a divergent series:

$$\sum_{n=1}^\infty\frac{1}{n}=1+\frac{1}{2}+\frac{1}{3}+\cdots=\infty$$
.

(Here, " = ∞" is merely a notational convention to indicate that the partial sums of the series grow without bound.)

A series ∑a_(n) is said to _CONVERGE ABSOLUTELY_ if ∑|a_(n)| is convergent. A convergent series ∑a_(n) for which ∑|a_(n)| diverges is said to _CONVERGE CONDITIONALLY_ (or _NONABSOLUTELY_). It is easily shown that absolute convergence of a series implies its convergence. On the other hand, an example of a conditionally convergent series is

$$\sum_{n=1}^\infty\frac{(-1)^{n-1}}{n}=1-\frac{1}{2}+\frac{1}{3}-\frac{1}{4}+\cdots=\log 2$$
.

Taylor series

The Taylor series of a real or complex-valued function _ƒ_(_x_) that is infinitely differentiable at a real or complex number _a_ is the power series
$$f(a)+\frac {f'(a)}{1!} (x-a)+ \frac{f''(a)}{2!} (x-a)^2+\frac{f^{(3)}(a)}{3!}(x-a)^3+ \cdots.$$

which can be written in the more compact sigma notation as

$$\sum_{n=0} ^ {\infty} \frac {f^{(n)}(a)}{n!} \, (x-a)^{n}$$

where _n_! denotes the factorial of _n_ and _ƒ_^( (_n_))(_a_) denotes the _n_th derivative of _ƒ_ evaluated at the point _a_. The derivative of order zero _ƒ_ is defined to be _ƒ_ itself and and 0! are both defined to be 1. In the case that 0}}, the series is also called a Maclaurin series.

A Taylor series of _f_ about point _a_ may diverge, converge at only the point _a_, converge for all _x_ such that |x − a| < R (the largest such _R_ for which convergence is guaranteed is called the _radius of convergence_), or converge on the entire real line. Even a converging Taylor series may converge to a value different from the value of the function at that point. If the Taylor series at a point has a nonzero radius of convergence, and sums to the function in the disc of convergence, then the function is analytic. The analytic functions have many fundamental properties. In particular, an analytic function of a real variable extends naturally to a function of a complex variable. It is in this way that the exponential function, the logarithm, the trigonometric functions and their inverses are extended to functions of a complex variable.

Fourier series

Fourier series decomposes periodic functions or periodic signals into the sum of a (possibly infinite) set of simple oscillating functions, namely sines and cosines (or complex exponentials). The study of Fourier series typically occurs and is handled within the branch mathematics > mathematical analysis > Fourier analysis.

Integration

Integration is a formalization of the problem of finding the area bound by a curve and the related problems of determining the length of a curve or volume enclosed by a surface. The basic strategy to solving problems of this type was known to the ancient Greeks and Chinese, and was known as the _method of exhaustion_. Generally speaking, the desired area is bounded from above and below, respectively, by increasingly accurate circumscribing and inscribing polygonal approximations whose exact areas can be computed. By considering approximations consisting of a larger and larger ("infinite") number of smaller and smaller ("infinitesimal") pieces, the area bound by the curve can be deduced, as the upper and lower bounds defined by the approximations converge around a common value.

The spirit of this basic strategy can easily be seen in the definition of the Riemann integral, in which the integral is said to exist if upper and lower Riemann (or Darboux) sums converge to a common value as thinner and thinner rectangular slices ("refinements") are considered. Though the machinery used to define it is much more elaborate compared to the Riemann integral, the Lebesgue integral was defined with similar basic ideas in mind. Compared to the Riemann integral, the more sophisticated Lebesgue integral allows area (or length, volume, etc.; termed a "measure" in general) to be defined and computed for much more complicated and irregular subsets of Euclidean space, although there still exist "non-measurable" subsets for which an area cannot be assigned.

Riemann integration

The Riemann integral is defined in terms of Riemann sums of functions with respect to tagged partitions of an interval. Let [a, b] be a closed interval of the real line; then a _TAGGED PARTITION_ $\cal{P}$ of [a, b] is a finite sequence

_a_ = _x_₀ ≤ _t_₁ ≤ _x_₁ ≤ _t_₂ ≤ _x_₂ ≤ ⋯ ≤ _x__(_n_ − 1) ≤ _t__(_n_) ≤ _x__(_n_) = _b_. ​

This partitions the interval [a, b] into n sub-intervals [x_(i − 1), x_(i)] indexed by i = 1, …, n, each of which is "tagged" with a distinguished point t_(i) ∈ [x_(i − 1), x_(i)]. For a function f bounded on [a, b], we define the _RIEMANN SUM_ of f with respect to tagged partition $\cal{P}$ as

$$\sum_{i=1}^{n} f(t_i) \Delta_i,$$

where Δ_(i) = x_(i) − x_(i − 1) is the width of sub-interval i. Thus, each term of the sum is the area of a rectangle with height equal to the function value at the distinguished point of the given sub-interval, and width the same as the sub-interval width. The _MESH_ of such a tagged partition is the width of the largest sub-interval formed by the partition, ||Δ_(i)|| = max_(i = 1, …, n)Δ_(i). We say that the _RIEMANN INTEGRAL_ of f on [a, b] is S if for any ϵ > 0 there exists δ > 0 such that, for any tagged partition $\cal{P}$ with mesh ||Δ_(i)|| < δ, we have

$$\left| S - \sum_{i=1}^{n} f(t_i)\Delta_i \right| < \epsilon.$$

This is sometimes denoted ℛ∫_(a)^(b)f = S. When the chosen tags give the maximum (respectively, minimum) value of each interval, the Riemann sum is known as the upper (respectively, lower) _DARBOUX SUM_. A function is _DARBOUX INTEGRABLE_ if the upper and lower Darboux sums can be made to be arbitrarily close to each other for a sufficiently small mesh. Although this definition gives the Darboux integral the appearance of being a special case of the Riemann integral, they are, in fact, equivalent, in the sense that a function is Darboux integrable if and only if it is Riemann integrable, and the values of the integrals are equal. In fact, calculus and real analysis textbooks often conflate the two, introducing the definition of the Darboux integral as that of the Riemann integral, due to the slightly easier to apply definition of the former.

The fundamental theorem of calculus asserts that integration and differentiation are inverse operations in a certain sense.

Lebesgue integration and measure

LEBESGUE INTEGRATION is a mathematical construction that extends the integral to a larger class of functions; it also extends the domains on which these functions can be defined. The concept of a _MEASURE_, an abstraction of length, area, or volume, is central to the definition of the Lebesgue integral and is important to the study of probability theory. (_For a construction of the Lebesgue integral, the main article on Lebesgue integration should be consulted.)_

Distributions

DISTRIBUTIONS (or GENERALIZED FUNCTIONS) are objects that generalize functions. Distributions make it possible to differentiate functions whose derivatives do not exist in the classical sense. In particular, any locally integrable function has a distributional derivative.

Relation to complex analysis

Real analysis is an area of analysis that studies concepts such as sequences and their limits, continuity, differentiation, integration and sequences of functions. By definition, real analysis focuses on the real numbers, often including positive and negative infinity to form the extended real line. Real analysis is closely related to complex analysis, which studies broadly the same properties of complex numbers. In complex analysis, it is natural to define differentiation via holomorphic functions, which have a number of useful properties, such as repeated differentiability, expressability as power series, and satisfying the Cauchy integral formula.

In real analysis, it is usually more natural to consider differentiable, smooth, or harmonic functions, which are more widely applicable, but may lack some more powerful properties of holomorphic functions. However, results such as the fundamental theorem of algebra are simpler when expressed in terms of complex numbers.

Techniques from the theory of analytic functions of a complex variable are often used in real analysis – such as evaluation of real integrals by residue calculus.


Important results

Important results include the Bolzano–Weierstrass and Heine–Borel theorems, the intermediate value theorem and mean value theorem, Taylor's theorem, the fundamental theorem of calculus, the Arzelà-Ascoli theorem, the Stone-Weierstrass theorem, Fatou's lemma, and the monotone convergence and dominated convergence theorems.


Generalizations and related areas of mathematics

Various ideas from real analysis can be generalized from the real line to broader or more abstract contexts. These generalizations link real analysis to other disciplines and subdisciplines, in many cases playing an important role in their development as distinct areas of mathematics. For instance, generalization of ideas like continuous functions and compactness from real analysis to metric spaces and topological spaces connects real analysis to the field of general topology, while generalization of finite-dimensional Euclidean spaces to infinite-dimensional analogs led to the study of Banach spaces, and Hilbert spaces as topics of importance in functional analysis. Georg Cantor's investigation of sets and sequence of real numbers, mappings between them, and the foundational issues of real analysis gave birth to naive set theory. The study of issues of convergence for sequences of functions eventually gave rise to Fourier analysis as a subdiscipline of mathematical analysis. Investigation of the consequences of generalizing differentiability from functions of a real variable to ones of a complex variable gave rise to the concept of holomorphic functions and the inception of complex analysis as another distinct subdiscipline of analysis. On the other hand, the generalization of integration from the Riemann sense to that of Lebesgue led to the formulation of the concept of abstract measure spaces, a fundamental concept in measure theory. Finally, the generalization of integration from the real line to curves and surfaces in higher dimensional space brought about the study of vector calculus, whose further generalization and formalization played an important role in the evolution of the concepts of differential forms and smooth (differentiable) manifolds in differential geometry and other closely related areas of geometry and topology.


See also

-   List of real analysis topics
-   Time-scale calculus – a unification of real analysis with calculus of finite differences
-   Real multivariable function
-   Real coordinate space
-   Complex analysis
-   Non-Newtonian calculus, alternatives to the classical calculus of Newton and Leibniz.


References


Bibliography

-   -   -   -   -   -   -   -   -   -   -


External links

-   How We Got From There to Here: A Story of Real Analysis by Robert Rogers and Eugene Boman
-   A First Course in Analysis by Donald Yau
-   Analysis WebNotes by John Lindsay Orr
-   Interactive Real Analysis by Bert G. Wachsmuth
-   A First Analysis Course by John O'Connor
-   Mathematical Analysis I by Elias Zakon
-   Mathematical Analysis II by Elias Zakon
-   -   Earliest Known Uses of Some of the Words of Mathematics: Calculus & Analysis
-   Basic Analysis: Introduction to Real Analysis by Jiri Lebl
-   Topics in Real and Functional Analysis by Gerald Teschl, University of Vienna.

Real_analysis

[1]

[2]

[3] Some authors (e.g., Rudin 1976) use braces instead and write {a_(n)}. However, this notation conflicts with the usual notation for a set, which, in contrast to a sequence, disregards the order and the multiplicity of its elements.

[4]

[5] ; ; . The interval _I_ is assumed to be bounded and closed in the former two books but not the latter book.