  --------------------------
  .]]
  that is not injective.]]
  --------------------------

In mathematics, a PARTIAL FUNCTION from _X_ to _Y_ (sometimes written as , , or , although the latter is often used for injective functions) is a function → _Y_}}, for some subset _X_{{′}} of _X_. It generalizes the concept of a function by not forcing _f_ to map _every_ element of _X_ to an element of _Y_ (only some subset _X_{{′}} of _X_). If = _X_}}, then _f_ is called a TOTAL FUNCTION for emphasizing that its domain is not a proper subset of _X_. Partial functions are often used when the exact domain, _X_, is not known (for example, in computability theory, general recursive functions are partial functions from the integers to the integers, and there cannot be any algorithm for deciding whether such a function is total). In real and complex analysis, a partial function is generally called simply a _function_.

Specifically, we will say that for any , either:

-   (it is defined as a single element in _Y_) or

-   _f_(_x_) is undefined.

For example, we can consider the square root function restricted to the integers

_g_: ℤ → ℤ

$$g(n) = \sqrt{n}.$$

Thus _g_(_n_) is only defined for _n_ that are perfect squares (). So, , but _g_(26) is undefined.


Basic concepts

There are two distinct meanings in current mathematical usage for the notion of the domain of a partial function. Most mathematicians, including recursion theorists, use the term "domain of _f_" for the set of all values _x_ such that _f_(_x_) is defined (_X'_ above). But some, particularly category theorists, consider the domain of a partial function _f_:_X_ → _Y_ to be _X_, and refer to _X'_ as the DOMAIN OF DEFINITION. Similarly, the term range can refer to either the codomain or the _image_ of a function.

A partial function is said to be injective or surjective when the total function given by the restriction of the partial function to its domain of definition is injective or surjective respectively. A partial function may be both injective and surjective (and thus bijective).

Because a function is trivially surjective when restricted to its image, the term partial bijection denotes a partial function which is injective.[1]

An injective partial function may be inverted to an injective partial function, and a partial function which is both injective and surjective has an injective function as inverse. Furthermore, a total function which is injective may be inverted to an injective partial function.

The notion of transformation can be generalized to partial functions as well. A PARTIAL TRANSFORMATION is a function , where both _A_ and _B_ are subsets of some set _X_.[2]


Total function

TOTAL FUNCTION is a synonym for function. The use of the adjective "total" is to suggest that it is a special case of a partial function (specifically, a total function with domain _X_ is a special case of a partial function over _X_). The adjective will typically be used for clarity in contexts where partial functions are common, for example in computability theory.


Function spaces

The set of all partial functions from a set _X_ to a set _Y_, denoted by , is the union of all total functions defined on subsets of _X_ with same codomain _Y_:

$$[X\not\to Y] =$$
$\bigcup\limits_{D \subseteq{X}} [D \to Y]$, the latter also written as $\bigcup\limits_{D\subseteq{X}} Y^D$. In finite case, its cardinality is

$$|[X\not\to Y]| =$$
(|Y| + 1)^(|X|), because any partial function can be extended to a total function by any fixed value _c_ not contained in _Y_, so that the codomain is }, an operation which is injective (unique and invertible by restriction).


Discussion and examples

The first diagram above represents a partial function that is _not_ a total function since the element 1 in the left-hand set is not associated with anything in the right-hand set. Whereas, the second diagram represents a total function since every element on the left-hand set is associated with exactly one element in the right hand set.

Natural logarithm

Consider the natural logarithm function mapping the real numbers to themselves. The logarithm of a non-positive real is not a real number, so the natural logarithm function doesn't associate any real number in the codomain with any non-positive real number in the domain. Therefore, the natural logarithm function is not a total function when viewed as a function from the reals to themselves, but it is a partial function. If the domain is restricted to only include the positive reals (that is, if the natural logarithm function is viewed as a function from the positive reals to the reals), then the natural logarithm is a total function.

Subtraction of natural numbers

Subtraction of natural numbers (non-negative integers) can be viewed as a partial function:

$$f: \mathbb{N} \times \mathbb{N}\not\to \mathbb{N}$$

_f_(_x_, _y_) = _x_ − _y_.

It is defined only when x ≥ y.

Bottom element

In denotational semantics a partial function is considered as returning the bottom element when it is undefined.

In computer science a partial function corresponds to a subroutine that raises an exception or loops forever. The IEEE floating point standard defines a not-a-number value which is returned when a floating point operation is undefined and exceptions are suppressed, e.g. when the square root of a negative number is requested.

In a programming language where function parameters are statically typed, a function may be defined as a partial function because the language's type system cannot express the exact domain of the function, so the programmer instead gives it the smallest domain which is expressible as a type and contains the true domain.

In category theory

In category theory, when considering the operation of morphism composition in concrete categories, the composition operation  ∘  : hom (C) × hom (C) → hom (C) is a total function if and only if ob (C) has one element. The reason for this is that two morphisms f : X → Y and g : U → V can only be composed as g ∘ f if Y = U, that is, the codomain of f must equal the domain of g.

The category of sets and partial functions is equivalent to but not isomorphic with the category of pointed sets and point-preserving maps.[3] One textbook notes that "This formal completion of sets and partial maps by adding “improper,” “infinite” elements was reinvented many times, in particular, in topology (one-point compactification) and in theoretical computer science."[4]

The category of sets and partial bijections is equivalent to its dual.[5] It is the prototypical inverse category.[6]

In abstract algebra

Partial algebra generalizes the notion of universal algebra to partial operations. An example would be a field, in which the multiplicative inversion is the only proper partial operation (because division by zero is not defined).[7]

The set of all partial functions (partial transformations) on a given base set, _X_, forms a regular semigroup called the semigroup of all partial transformations (or the partial transformation semigroup on _X_), typically denoted by 𝒫𝒯_(X).[8][9][10] The set of all partial bijections on _X_ forms the symmetric inverse semigroup.[11][12]

Charts and atlases for manifolds and fiber bundles

Charts in the atlases which specify the structure of manifolds and fiber bundles are partial functions. In the case of manifolds, the domain is the point set of the manifold. In the case of fiber bundles, the domain is the total space of the fiber bundle. In these applications, the most important construction is the transition map, which is the composite of one chart with the inverse of another. The initial classification of manifolds and fiber bundles is largely expressed in terms of constraints on these transition maps.

The reason for the use of partial functions instead of total functions is to permit general global topologies to be represented by stitching together local patches to describe the global structure. The "patches" are the domains where the charts are defined.


See also

-   Bijection
-   Injective function
-   Surjective function
-   Multivalued function
-   Densely defined operator


References

-   Martin Davis (1958), _Computability and Unsolvability_, McGraw–Hill Book Company, Inc, New York. Republished by Dover in 1982. .
-   Stephen Kleene (1952), _Introduction to Meta-Mathematics_, North-Holland Publishing Company, Amsterdam, Netherlands, 10th printing with corrections added on 7th printing (1974). .
-   Harold S. Stone (1972), _Introduction to Computer Organization and Data Structures_, McGraw–Hill Book Company, New York.

Category:Mathematical relations Category:Functions and mappings

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

[11]

[12]