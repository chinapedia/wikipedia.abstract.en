In mathematics, a SEQUENCE is an enumerated collection of objects in which repetitions are allowed. Like a set, it contains members (also called _elements_, or _terms_). The number of elements (possibly infinite) is called the _length_ of the sequence. Unlike a set, the same elements can appear multiple times at different positions in a sequence, and order matters. Formally, a sequence can be defined as a function whose domain is either the set of the natural numbers (for infinite sequences) or the set of the first _n_ natural numbers (for a sequence of finite length _n_). The position of an element in a sequence is its _rank_ or _index_; it is the natural number from which the element is the image. It depends on the context or a specific convention, if the first element has index 0 or 1. When a symbol has been chosen for denoting a sequence, the _n_th element of the sequence is denoted by this symbol with _n_ as subscript; for example, the _n_th element of the Fibonacci sequence is generally denoted _F__(_n_).

For example, (M, A, R, Y) is a sequence of letters with the letter 'M' first and 'Y' last. This sequence differs from (A, R, M, Y). Also, the sequence (1, 1, 2, 3, 5, 8), which contains the number 1 at two different positions, is a valid sequence. Sequences can be _finite_, as in these examples, or _infinite_, such as the sequence of all even positive integers (2, 4, 6, ...). In computing and computer science, finite sequences are sometimes called strings, words or lists, the different names commonly corresponding to different ways to represent them in computer memory; infinite sequences are called streams. The empty sequence ( ) is included in most notions of sequence, but may be excluded depending on the context. s (in blue). This sequence is neither increasing, decreasing, convergent, nor Cauchy. It is, however, bounded.]]


Examples and notation

A sequence can be thought of as a list of elements with a particular order. Sequences are useful in a number of mathematical disciplines for studying functions, spaces, and other mathematical structures using the convergence properties of sequences. In particular, sequences are the basis for series, which are important in differential equations and analysis. Sequences are also of interest in their own right and can be studied as patterns or puzzles, such as in the study of prime numbers.

There are a number of ways to denote a sequence, some of which are more useful for specific types of sequences. One way to specify a sequence is to list the elements. For example, the first four odd numbers form the sequence (1, 3, 5, 7). This notation can be used for infinite sequences as well. For instance, the infinite sequence of positive odd integers can be written (1, 3, 5, 7, ...). Listing is most useful for infinite sequences with a pattern that can be easily discerned from the first few elements. Other ways to denote a sequence are discussed after the examples.

Examples

with squares whose sides are successive Fibonacci numbers in length.]]

The prime numbers are the natural numbers bigger than 1 that have no divisors but 1 and themselves. Taking these in their natural order gives the sequence (2, 3, 5, 7, 11, 13, 17, ...). The prime numbers are widely used in mathematics and specifically in number theory.

The Fibonacci numbers are the integer sequence whose elements are the sum of the previous two elements. The first two elements are either 0 and 1 or 1 and 1 so that the sequence is (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...).

For a large list of examples of integer sequences, see On-Line Encyclopedia of Integer Sequences.

Other examples of sequences include ones made up of rational numbers, real numbers, and complex numbers. The sequence (.9, .99, .999, .9999, ...) approaches the number 1. In fact, every real number can be written as the limit of a sequence of rational numbers, e.g. via its decimal expansion. For instance, is the limit of the sequence (3, 3.1, 3.14, 3.141, 3.1415, ...). A related sequence is the sequence of decimal digits of , i.e. (3, 1, 4, 1, 5, 9, ...). This sequence does not have any pattern that is easily discernible by eye, unlike the preceding sequence, which is increasing.

Indexing

Other notations can be useful for sequences whose pattern cannot be easily guessed, or for sequences that do not have a pattern such as the digits of . One such notation is to write down a general formula for computing the _n_th term as a function of _n_, enclose it in parentheses, and include a subscript indicating the range of values that _n_ can take. For example, in this notation the sequence of even numbers could be written as (2n)_(n ∈ ℕ). The sequence of squares could be written as (n²)_(n ∈ ℕ). The variable _n_ is called an index, and the set of values that it can take is called the index set.

It is often useful to combine this notation with the technique of treating the elements of a sequence as variables. This yields expressions like (a_(n))_(n ∈ ℕ), which denotes a sequence whose _n_th element is given by the variable a_(n). For example:

$$\begin{align}
a_1 &= 1\text{st element of }(a_n)_{n\in\mathbb N} \\
a_2 &= 2\text{nd element } \\
a_3 &= 3\text{rd element } \\
&\vdots \\
a_{n-1} &= (n-1)\text{th element} \\
a_n &= n\text{th element} \\
a_{n+1} &= (n+1)\text{th element} \\
& \vdots
 \end{align}$$
Note that we can consider multiple sequences at the same time by using different variables; e.g. (b_(n))_(n ∈ ℕ) could be a different sequence than (a_(n))_(n ∈ ℕ). We can even consider a sequence of sequences: ((a_(m, n))_(n ∈ ℕ))_(m ∈ ℕ) denotes a sequence whose _m_th term is the sequence (a_(m, n))_(n ∈ ℕ).

An alternative to writing the domain of a sequence in the subscript is to indicate the range of values that the index can take by listing its highest and lowest legal values. For example, the notation (k²)_(k = 1)¹⁰ denotes the ten-term sequence of squares (1, 4, 9, ..., 100). The limits ∞ and  − ∞ are allowed, but they do not represent valid values for the index, only the supremum or infimum of such values, respectively. For example, the sequence (a_(n))_(n = 1)^(∞) is the same as the sequence (a_(n))_(n ∈ ℕ), and does not contain an additional term "at infinity". The sequence (a_(n))_(n =  − ∞)^(∞) is a BI-INFINITE SEQUENCE, and can also be written as (..., a_( − 1), a₀, a₁, a₂, ...).

In cases where the set of indexing numbers is understood, the subscripts and superscripts are often left off. That is, one simply writes (a_(k)) for an arbitrary sequence. Often, the index _k_ is understood to run from 1 to ∞. However, sequences are frequently indexed starting from zero, as in

(_a__(_k_))_(_k_ = 0)^(∞) = (_a_₀, _a_₁, _a_₂, ...).
In some cases the elements of the sequence are related naturally to a sequence of integers whose pattern can be easily inferred. In these cases the index set may be implied by a listing of the first few abstract elements. For instance, the sequence of squares of odd numbers could be denoted in any of the following ways.

-   (1, 9, 25, ...)
-   (a₁, a₃, a₅, ...),  a_(k) = k²
-   (a_(2k − 1))_(k = 1)^(∞),  a_(k) = k²
-   (a_(k))_(k = 1)^(∞),  a_(k) = (2k − 1)²
-   ((2k − 1)²)_(k = 1)^(∞)

Moreover, the subscripts and superscripts could have been left off in the third, fourth, and fifth notations, if the indexing set was understood to be the natural numbers. Note that in the second and third bullets, there is a well-defined sequence (a_(k))_(k = 1)^(∞), but it is not the same as the sequence denoted by the expression.

Defining a sequence by recursion

Sequences whose elements are related to the previous elements in a straightforward way are often defined using recursion. This is in contrast to the definition of sequences of elements as functions of their positions.

To define a sequence by recursion, one needs a rule, called _recurrence relation_ to construct each element in terms of the ones before it. In addition, enough initial elements must be provided so that all subsequent elements of the sequence can be computed by successive applications of the recurrence relation.

The Fibonacci sequence is a simple classical example, defined by the recurrence relation

_a__(_n_) = _a__(_n_ − 1) + _a__(_n_ − 2),
with initial terms a₀ = 0 and a₁ = 1. From this, a simple computation shows that the first ten terms of this sequence are 0, 1, 1, 2, 3, 5, 8, 13, 21, and 34.

A complicated example of a sequence defined by a recurrence relation is Recaman's sequence,[1] defined by the recurrence relation

$$\begin{cases}a_n = a_{n-1} - n,\quad \text{if the result is positive and not already in the previous terms,}\\a_n = a_{n-1} + n, \quad\text{otherwise},
\end{cases}$$
with initial term a₀ = 0.

A _linear recurrence with constant coefficients_ is a recurrence relation of the form

_a__(_n_) = _c_₀ + _c_₁_a__(_n_ − 1) + … + _c__(_k_)_a__(_n_ − _k_),
where c₀, …, c_(k) are constants. There is a general method for expressing the general term a_(n) of such a sequence as a function of ; see Linear recurrence. In the case of the Fibonacci sequence, one has c₀ = 0, c₁ = c₂ = 1, and the resulting function of is given by Binet's_formula.

A holonomic sequence is a sequence defined by a recurrence relation of the form

_a__(_n_) = _c_₁_a__(_n_ − 1) + … + _c__(_k_)_a__(_n_ − _k_),
where c₁, …, c_(k) are polynomials in . For most holonomic sequences, there is no explicit formula for expressing explicitly a_(n) as a function of . Nevertheless holonomic sequences play an important role in various areas of mathematics. For example, many special functions have a Taylor series whose sequence of coefficients is holonomic. The use of the recurrence relation allows a fast computation of values of such special functions.

Not all sequences can be specified by a recurrence relation. An example is the sequence of prime numbers in their natural order (2, 3, 5, 7, 11, 13, 17, ...).


Formal definition and basic properties

There are many different notions of sequences in mathematics, some of which (_e.g._, exact sequence) are not covered by the definitions and notations introduced below.

Definition

In this article, a sequence is formally defined as a function whose domain is an interval of integers. This definition covers several different uses of the word "sequence", including one-sided infinite sequences, bi-infinite sequences, and finite sequences (see below for definitions of these kinds of sequences). However, many authors use a narrower definition by requiring the domain of a sequence to be the set of natural numbers. This narrower definition has the disadvantage that it rules out finite sequences and bi-infinite sequences, both of which are usually called sequences in standard mathematical practice. Another disadvantage is that, if one removes the first terms of a sequence, one needs reindexing the remainder terms for fitting this definition. In some contexts, to shorten exposition, the codomain of the sequence is fixed by context, for example by requiring it to be the set R of real numbers,[2] the set C of complex numbers,[3] or a topological space.[4]

Although sequences are a type of function, they are usually distinguished notationally from functions in that the input is written as a subscript rather than in parentheses, that is, rather than . There are terminological differences as well: the value of a sequence at the lowest input (often 1) is called the "first element" of the sequence, the value at the second smallest input (often 2) is called the "second element", etc. Also, while a function abstracted from its input is usually denoted by a single letter, e.g. _f_, a sequence abstracted from its input is usually written by a notation such as (a_(n))_(n ∈ A), or just as (a_(n)). Here is the domain, or index set, of the sequence.

Sequences and their limits (see below) are important concepts for studying topological spaces. An important generalization of sequences is the concept of nets. A NET is a function from a (possibly uncountable) directed set to a topological space. The notational conventions for sequences normally apply to nets as well.

Finite and infinite

The LENGTH of a sequence is defined as the number of terms in the sequence.

A sequence of a finite length _n_ is also called an _n_-tuple. Finite sequences include the EMPTY SEQUENCE ( ) that has no elements.

Normally, the term _infinite sequence_ refers to a sequence that is infinite in one direction, and finite in the other—the sequence has a first element, but no final element. Such a sequence is called a SINGLY INFINITE SEQUENCE or a ONE-SIDED INFINITE SEQUENCE when disambiguation is necessary. In contrast, a sequence that is infinite in both directions—i.e. that has neither a first nor a final element—is called a BI-INFINITE SEQUENCE, TWO-WAY INFINITE SEQUENCE, or DOUBLY INFINITE SEQUENCE. A function from the set Z of _all_ integers into a set, such as for instance the sequence of all even integers ( ..., −4, −2, 0, 2, 4, 6, 8... ), is bi-infinite. This sequence could be denoted (2n)_(n =  − ∞)^(∞).

Increasing and decreasing

A sequence is said to be _monotonically increasing_, if each term is greater than or equal to the one before it. For example, the sequence (a_(n))_(n = 1)^(∞) is monotonically increasing if and only if _a__(_n_+1) ≥ _a__(_n_) for all _n_ ∈ N. If each consecutive term is strictly greater than (>) the previous term then the sequence is called STRICTLY MONOTONICALLY INCREASING. A sequence is MONOTONICALLY DECREASING, if each consecutive term is less than or equal to the previous one, and STRICTLY MONOTONICALLY DECREASING, if each is strictly less than the previous. If a sequence is either increasing or decreasing it is called a MONOTONE sequence. This is a special case of the more general notion of a monotonic function.

The terms NONDECREASING and NONINCREASING are often used in place of _increasing_ and _decreasing_ in order to avoid any possible confusion with _strictly increasing_ and _strictly decreasing_, respectively.

Bounded

If the sequence of real numbers (_a_(n)_) is such that all the terms are less than some real number _M_, then the sequence is said to be BOUNDED FROM ABOVE. In other words, this means that there exists _M_ such that for all _n_, _a_(n)_ ≤ _M_. Any such _M_ is called an _upper bound_. Likewise, if, for some real _m_, _a_(n)_ ≥ _m_ for all _n_ greater than some _N_, then the sequence is BOUNDED FROM BELOW and any such _m_ is called a _lower bound_. If a sequence is both bounded from above and bounded from below, then the sequence is said to be BOUNDED.

Subsequences

A SUBSEQUENCE of a given sequence is a sequence formed from the given sequence by deleting some of the elements without disturbing the relative positions of the remaining elements. For instance, the sequence of positive even integers (2, 4, 6, ...) is a subsequence of the positive integers (1, 2, 3, ...). The positions of some elements change when other elements are deleted. However, the relative positions are preserved.

Formally, a subsequence of the sequence (a_(n))_(n ∈ ℕ) is any sequence of the form (a_(n_(k)))_(k ∈ ℕ), where (n_(k))_(k ∈ ℕ) is a strictly increasing sequence of positive integers.

Other types of sequences

Some other types of sequences that are easy to define include:

-   An INTEGER SEQUENCE is a sequence whose terms are integers.
-   A POLYNOMIAL SEQUENCE is a sequence whose terms are polynomials.
-   A positive integer sequence is sometimes called MULTIPLICATIVE, if _a__(_nm_) = _a__(_n_) _a__(_m_) for all pairs _n_, _m_ such that _n_ and _m_ are coprime.[5] In other instances, sequences are often called _multiplicative_, if _a__(_n_) = _na_₁ for all _n_. Moreover, a _multiplicative_ Fibonacci sequence[6] satisfies the recursion relation _a__(_n_) = _a__(_n_−1) _a__(_n_−2).
-   A binary sequence is a sequence whose terms have one of two discrete values, e.g. base 2 values (0,1,1,0, ...), a series of coin tosses (Heads/Tails) H,T,H,H,T, ..., the answers to a set of True or False questions (T, F, T, T, ...), and so on.


Limits and convergence

An important property of a sequence is _convergence_. If a sequence converges, it converges to a particular value known as the _limit_. If a sequence converges to some limit, then it is CONVERGENT. A sequence that does not converge is DIVERGENT.

Informally, a sequence has a limit if the elements of the sequence become closer and closer to some value L (called the limit of the sequence), and they become and remain _arbitrarily_ close to L, meaning that given a real number d greater than zero, all but a finite number of the elements of the sequence have a distance from L less than d.

For example, the sequence $a_n = \frac{n+1}{2n^2}$ shown to the right converges to the value 0. On the other hand, the sequences b_(n) = n³ (which begins 1, 8, 27, …) and c_(n) = ( − 1)^(n) (which begins -1, 1, -1, 1, …) are both divergent.

If a sequence converges, then the value it converges to is unique. This value is called the LIMIT of the sequence. The limit of a convergent sequence (a_(n)) is normally denoted lim_(n → ∞)a_(n). If (a_(n)) is a divergent sequence, then the expression lim_(n → ∞)a_(n) is meaningless.

Formal definition of convergence

A sequence of real numbers (a_(n)) CONVERGES TO a real number L if, for all ε > 0, there exists a natural number N such that for all n ≥ N we have[7]

  |a_(n) − L| < ε.

If (a_(n)) is a sequence of complex numbers rather than a sequence of real numbers, this last formula can still be used to define convergence, with the provision that | ⋅ | denotes the complex modulus, i.e. $|z| = \sqrt{z^*z}$. If (a_(n)) is a sequence of points in a metric space, then the formula can be used to define convergence, if the expression |a_(n) − L| is replaced by the expression dist(a_(n), L), which denotes the distance between a_(n) and L.

Applications and important results

If (a_(n)) and (b_(n)) are convergent sequences, then the following limits exist, and can be computed as follows:[8][9]

-   lim_(n → ∞)(a_(n) ± b_(n)) = lim_(n → ∞)a_(n) ± lim_(n → ∞)b_(n)
-   lim_(n → ∞)ca_(n) = clim_(n → ∞)a_(n) for all c
-   lim_(n → ∞)(a_(n)b_(n)) = (lim_(n → ∞)a_(n))(lim_(n → ∞)b_(n))
-   $\lim_{n\to\infty} \frac{a_n} {b_n} = \frac{ \lim \limits_{n\to\infty} a_n}{ \lim \limits_{n\to\infty} b_n}$, provided that lim_(n → ∞)b_(n) ≠ 0
-   lim_(n → ∞)a_(n)^(p) = (lim_(n → ∞)a_(n))^(p) for all p > 0

Moreover:

-   If a_(n) ≤ b_(n) for all n greater than some N, then lim_(n → ∞)a_(n) ≤ lim_(n → ∞)b_(n).
-   (Squeeze Theorem)
    If (c_(n)) is a sequence such that a_(n) ≤ c_(n) ≤ b_(n) for all n > N
    then (c_(n)) is convergent, and lim_(n → ∞)c_(n) = L.
-   If a sequence is bounded and monotonic then it is convergent.
-   A sequence is convergent if and only if all of its subsequences are convergent.

Cauchy sequences

s every Cauchy sequence converges to some limit.]]

A Cauchy sequence is a sequence whose terms become arbitrarily close together as n gets very large. The notion of a Cauchy sequence is important in the study of sequences in metric spaces, and, in particular, in real analysis. One particularly important result in real analysis is _Cauchy characterization of convergence for sequences_:

    A sequence of real numbers is convergent (in the reals) if and only if it is Cauchy.

In contrast, there are Cauchy sequences of rational numbers that are not convergent in the rationals, e.g. the sequence defined by _x_₁ = 1 and _x__(_n_+1) = is Cauchy, but has no rational limit, cf. here. More generally, any sequence of rational numbers that converges to an irrational number is Cauchy, but not convergent when interpreted as a sequence in the set of rational numbers.

Metric spaces that satisfy the Cauchy characterization of convergence for sequences are called complete metric spaces and are particularly nice for analysis.

Infinite limits

In calculus, it is common to define notation for sequences which do not converge in the sense discussed above, but which instead become and remain arbitrarily large, or become and remain arbitrarily negative. If a_(n) becomes arbitrarily large as n → ∞, we write

lim_(_n_ → ∞)_a__(_n_) = ∞.
In this case we say that the sequence DIVERGES, or that it CONVERGES TO INFINITY. An example of such a sequence is .

If a_(n) becomes arbitrarily negative (i.e. negative and large in magnitude) as n → ∞, we write

lim_(_n_ → ∞)_a__(_n_) =  − ∞
and say that the sequence DIVERGES or CONVERGES TO NEGATIVE INFINITY.


Series

A SERIES is, informally speaking, the sum of the terms of a sequence. That is, it is an expression of the form $\sum_{n = 1}^\infty a_n$ or a₁ + a₂ + ⋯, where (a_(n)) is a sequence of real or complex numbers. The PARTIAL SUMS of a series are the expressions resulting from replacing the infinity symbol with a finite number, i.e. the _N_th partial sum of the series $\sum_{n = 1}^\infty a_n$ is the number

$$S_N = \sum_{n = 1}^N a_n = a_1 + a_2 + \cdots + a_N.$$
The partial sums themselves form a sequence (S_(N))_(N ∈ ℕ), which is called the SEQUENCE OF PARTIAL SUMS of the series $\sum_{n = 1}^\infty a_n$. If the sequence of partial sums converges, then we say that the series $\sum_{n = 1}^\infty a_n$ is CONVERGENT, and the limit lim_(N → ∞)S_(N) is called the VALUE of the series. The same notation is used to denote a series and its value, i.e. we write $\sum_{n = 1}^\infty a_n = \lim_{N\to\infty} S_N$.


Use in other fields of mathematics

Topology

Sequences play an important role in topology, especially in the study of metric spaces. For instance:

-   A metric space is compact exactly when it is sequentially compact.
-   A function from a metric space to another metric space is continuous exactly when it takes convergent sequences to convergent sequences.
-   A metric space is a connected space if and only if, whenever the space is partitioned into two sets, one of the two sets contains a sequence converging to a point in the other set.
-   A topological space is separable exactly when there is a dense sequence of points.

Sequences can be generalized to nets or filters. These generalizations allow one to extend some of the above theorems to spaces without metrics.

Product topology

The topological product of a sequence of topological spaces is the cartesian product of those spaces, equipped with a natural topology called the product topology.

More formally, given a sequence of spaces (X_(i))_(i ∈ ℕ), the product space

_X_ := ∏_(_i_ ∈ ℕ)_X__(_i_),

is defined as the set of all sequences (x_(i))_(i ∈ ℕ) such that for each _i_, x_(i) is an element of X_(i). The CANONICAL PROJECTIONS are the maps _p_(i)_ : _X_ → _X_(i)_ defined by the equation p_(i)((x_(j))_(j ∈ ℕ)) = x_(i). Then the PRODUCT TOPOLOGY on _X_ is defined to be the coarsest topology (i.e. the topology with the fewest open sets) for which all the projections _p_(i)_ are continuous. The product topology is sometimes called the TYCHONOFF TOPOLOGY.

Analysis

In analysis, when talking about sequences, one will generally consider sequences of the form

(_x_₁, _x_₂, _x_₃, …) or (_x_₀, _x_₁, _x_₂, …)
which is to say, infinite sequences of elements indexed by natural numbers.

It may be convenient to have the sequence start with an index different from 1 or 0. For example, the sequence defined by _x_(n)_ = 1/log(_n_) would be defined only for _n_ ≥ 2. When talking about such infinite sequences, it is usually sufficient (and does not change much for most considerations) to assume that the members of the sequence are defined at least for all indices large enough, that is, greater than some given _N_.

The most elementary type of sequences are numerical ones, that is, sequences of real or complex numbers. This type can be generalized to sequences of elements of some vector space. In analysis, the vector spaces considered are often function spaces. Even more generally, one can study sequences with elements in some topological space.

Sequence spaces

A sequence space is a vector space whose elements are infinite sequences of real or complex numbers. Equivalently, it is a function space whose elements are functions from the natural numbers to the field K, where K is either the field of real numbers or the field of complex numbers. The set of all such functions is naturally identified with the set of all possible infinite sequences with elements in K, and can be turned into a vector space under the operations of pointwise addition of functions and pointwise scalar multiplication. All sequence spaces are linear subspaces of this space. Sequence spaces are typically equipped with a norm, or at least the structure of a topological vector space.

The most important sequences spaces in analysis are the ℓ^(_p_) spaces, consisting of the _p_-power summable sequences, with the _p_-norm. These are special cases of L^(_p_) spaces for the counting measure on the set of natural numbers. Other important classes of sequences like convergent sequences or null sequences form sequence spaces, respectively denoted _c_ and _c_₀, with the sup norm. Any sequence space can also be equipped with the topology of pointwise convergence, under which it becomes a special kind of Fréchet space called an FK-space.

Linear algebra

Sequences over a field may also be viewed as vectors in a vector space. Specifically, the set of _F_-valued sequences (where _F_ is a field) is a function space (in fact, a product space) of _F_-valued functions over the set of natural numbers.

Abstract algebra

Abstract algebra employs several types of sequences, including sequences of mathematical objects such as groups or rings.

Free monoid

If _A_ is a set, the free monoid over _A_ (denoted _A_^(*), also called Kleene star of _A_) is a monoid containing all the finite sequences (or strings) of zero or more elements of _A_, with the binary operation of concatenation. The free semigroup _A_⁺ is the subsemigroup of _A_^(*) containing all elements except the empty sequence.

Exact sequences

In the context of group theory, a sequence

$$G_0 \;\xrightarrow{f_1}\; G_1 \;\xrightarrow{f_2}\; G_2 \;\xrightarrow{f_3}\; \cdots \;\xrightarrow{f_n}\; G_n$$
of groups and group homomorphisms is called EXACT, if the image (or range) of each homomorphism is equal to the kernel of the next:

_i__m_(_f__(_k_)) = _k__e__r_(_f__(_k_ + 1))

Note that the sequence of groups and homomorphisms may be either finite or infinite.

A similar definition can be made for certain other algebraic structures. For example, one could have an exact sequence of vector spaces and linear maps, or of modules and module homomorphisms.

Spectral sequences

In homological algebra and algebraic topology, a SPECTRAL SEQUENCE is a means of computing homology groups by taking successive approximations. Spectral sequences are a generalization of exact sequences, and since their introduction by , they have become an important research tool, particularly in homotopy theory.

Set theory

An ordinal-indexed sequence is a generalization of a sequence. If α is a limit ordinal and _X_ is a set, an α-indexed sequence of elements of _X_ is a function from α to _X_. In this terminology an ω-indexed sequence is an ordinary sequence.

Computing

In computer science, finite sequences are called lists. Potentially infinite sequences are called streams. Finite sequences of characters or digits are called strings.

Streams

Infinite sequences of digits (or characters) drawn from a finite alphabet are of particular interest in theoretical computer science. They are often referred to simply as _sequences_ or _streams_, as opposed to finite _strings_. Infinite binary sequences, for instance, are infinite sequences of bits (characters drawn from the alphabet {0, 1}). The set _C_ = {0, 1}^(∞) of all infinite binary sequences is sometimes called the Cantor space.

An infinite binary sequence can represent a formal language (a set of strings) by setting the _n_ th bit of the sequence to 1 if and only if the _n_ th string (in shortlex order) is in the language. This representation is useful in the diagonalization method for proofs.[10]


See also

-   Enumeration
-   On-Line Encyclopedia of Integer Sequences
-   Recurrence relation
-   Sequence space

Operations

-   Cauchy product

Examples

-   Discrete-time signal
-   Farey sequence
-   Fibonacci sequence
-   Look-and-say sequence
-   Thue–Morse sequence

Types

-   ±1-sequence
-   Arithmetic progression
-   Automatic sequence
-   Cauchy sequence
-   Constant-recursive sequence
-   Geometric progression
-   Holonomic sequence
-   Regular sequence
-   Pseudorandom binary sequence
-   Random sequence

Related concepts

-   List (computing)
-   Net (topology) (a generalization of sequences)
-   Ordinal-indexed sequence
-   Recursion (computer science)
-   Set (mathematics)
-   Tuple


Notes


References


External links

-   -   The On-Line Encyclopedia of Integer Sequences
-   Journal of Integer Sequences (free)
-

Category:Elementary mathematics *

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]