In mathematics and computer science, CURRYING is the technique of translating the evaluation of a function that takes multiple arguments into evaluating a sequence of functions, each with a single argument. For example, a function that takes two arguments, one from _X_ and one from _Y_, and produces outputs in _Z,_ by currying is translated into a function that takes a single argument from _X_ and produces as outputs _functions_ from _Y_ to _Z._ Currying is related to, but not the same as, partial application.

Currying is useful in both practical and theoretical settings. In functional programming languages, and many others, it provides a way of automatically managing how arguments are passed to functions and exceptions. In theoretical computer science, it provides a way to study functions with multiple arguments in simpler theoretical models which provide only one argument. The most general setting for the strict notion of currying and uncurrying is in the closed monoidal categories, which underpins a vast generalization of the Curry–Howard correspondence of proofs and programs to a correspondence with many other structures, including quantum mechanics, cobordisms and string theory.[1] It was introduced by Gottlob Frege,[2] developed by Moses Schönfinkel,[3][4][5] and further developed by Haskell Curry.[6][7]

UNCURRYING is the dual transformation to currying, and can be seen as a form of defunctionalization. It takes a function f whose return value is another function g, and yields a new function f′ that takes as parameters the arguments for both f and g, and returns, as a result, the application of f and subsequently, g, to those arguments. The process can be iterated.


Motivation

Currying provides a way for working with functions that take multiple arguments, and using them in frameworks where functions might take only one argument. For example, some analytical techniques can only be applied to functions with a single argument. Practical functions frequently take more arguments than this. Frege showed that it was sufficient to provide solutions for the single argument case, as it was possible to transform a function with multiple arguments into a chain of single-argument functions instead. This transformation is the process now known as currying.[8] All "ordinary" functions that might typically be encountered in mathematical analysis or in computer programming can be curried. However, there are categories in which currying is not possible; the most general categories which allow currying are the closed monoidal categories.

Some programming languages almost always use curried functions to achieve multiple arguments; notable examples are ML and Haskell, where in both cases all functions have exactly one argument. This property is inherited from lambda calculus, where multi-argument functions are usually represented in curried form.

Currying is related to, but not the same as partial application. In practice, the programming technique of closures can be used to perform partial application and a kind of currying, by hiding arguments in an environment that travels with the curried function.

Illustration

Suppose we have a function f : ℝ × ℝ → ℝ which takes two real arguments and outputs real numbers, and it is defined by f(x, y) = x + y². Currying translates this into a function h which takes a single real argument and outputs functions from ℝ to ℝ. In symbols, h : ℝ → ℝ^(ℝ), where ℝ^(ℝ)denotes the set of all functions that take a single real argument and produce real outputs. For every real number x, define the function h_(x) : ℝ → ℝ by h_(x)(y) = x + y², and then define the function h : ℝ → ℝ^(ℝ) by h(x) = h_(x). So for instance, h(2) is the function that sends its real argument y to the output 2 + y², or h(2)(y) = h₂(y) = 2 + y². We see that in general

_h_(_x_)(_y_) = _x_ + _y_² = _f_(_x_, _y_)

so that the original function f and its currying h convey exactly the same information. In this situation, we also write

curry(_f_) = _h_.

This also works for functions with more than two arguments. If f were a function of three arguments f(x, y, z), its currying h would have the property

_f_(_x_, _y_, _z_) = _h_(_x_)(_y_)(_z_).


History

The name "currying", coined by Christopher Strachey in 1967, is a reference to logician Haskell Curry. The alternative name "Schönfinkelisation" has been proposed as a reference to Moses Schönfinkel.[9] In the mathematical context, the principle can be traced back to work in 1893 by Frege.


Definition

Currying is most easily understood by starting with an informal definition, which can then be molded to fit many different domains. First, there is some notation to be established. The notation X → Y denotes all functions from X to Y. If f is such a function, we write f: X → Y. Let X × Y denote the ordered pairs of the elements of X and Y respectively, that is, the Cartesian product of X and Y. Here, X and Y may be sets, or they may be types, or they may be other kinds of objects, as explored below.

Given a function

_f_: (_X_ × _Y_) → _Z_
,

CURRYING constructs a new function

_h_: _X_ → (_Y_ → _Z_)
.

That is, h takes an argument from X and returns a function that maps Y to Z. It is defined by

_h_(_x_)(_y_) = _f_(_x_, _y_)

for x from X and y from Y. We then also write

curry(_f_) = _h_.

UNCURRYING is the reverse transformation, and is most easily understood in terms of its right adjoint, the function apply .

Set theory

In set theory, the notation Y^(X) is used to denote the set of functions from the set X to the set Y. Currying is the natural bijection between the set A^(B × C) of functions from B × C to A, and the set (A^(C))^(B) of functions from B to the set of functions from C to A. In symbols:

_A_^(_B_ × _C_) ≅ (_A_^(_C_))^(_B_)

Indeed, it is this natural bijection that justifies the exponential notation for the set of functions. As is the case in all instances of currying, the formula above describes an adjoint pair of functors: for every fixed set C, the functor B ↦ B × C is left adjoint to the functor A ↦ A^(C).

In the category of sets, the object Y^(X) is called the exponential object.

Function spaces

In the theory of function spaces, such as in functional analysis or homotopy theory, one is commonly interested in continuous functions between topological spaces. One writes Hom(X, Y) (the Hom functor) for the set of _all_ functions from X to Y, and uses the notation Y^(X) to denote the subset of continuous functions. Here, curry is the bijection

curry : Hom(_X_ × _Y_, _Z_) → Hom(_X_, Hom(_Y_, _Z_)),

while uncurrying is the inverse map. If the set Y^(X) of continuous functions from X to Y is given the compact-open topology, and if the space Y is locally compact Hausdorff, then

curry : _Z_^(_X_ × _Y_) → (_Z_^(_Y_))^(_X_)

is a homeomorphism. This is also the case when X, Y and Y^(X) are kaonized,[10][11] although there are more cases.[12][13]

One useful corollary is that a function is continuous if and only if its curried form is continuous. Another important result is that the application map, usually called "evaluation" in this context, is continuous (note that eval is a strictly different concept in computer science.) That is,

$\begin{align} &&\text{eval}:Y^X \times X \to Y \\
                     && (f,x) \mapsto f(x) \end{align}$

is continuous when Y^(X) is compact-open and Y locally compact Hausdorff.[14] These two results are central for establishing the continuity of homotopy, i.e. when X is the unit interval I, so that Z^(I × Y) ≅ (Z^(Y))^(I) can the thought of as either a homotopy of two functions from Y to Z, or, equivalently, a single (continuous) path in Z^(Y).

Algebraic topology

In algebraic topology, currying serves as an example of Eckmann–Hilton duality, and, as such, plays an important role in a variety of different settings. For example, loop space is adjoint to reduced suspensions; this is commonly written as

[_Σ__X_, _Z_] ≊ [_X_, _Ω__Z_]
where [A, B] is the set of homotopy classes of maps A → B, and ΣA is the suspension of _A_, and ΩA is the loop space of _A_. In essence, the suspension ΣX can be seen as the cartesian product of X with the unit interval, modulo an equivalence relation to turn the interval into a loop. The curried form then maps the space X to the space of functions from loops into Z, that is, from X into ΩZ.[15] Then curry is the adjoint functor that maps suspensions to loop spaces, and uncurrying is the dual.[16]

The duality between the mapping cone and the mapping fiber (cofibration and fibration)[17] can be understood as a form of currying, which in turn leads to the duality of the long exact and coexact Puppe sequences.

In homological algebra, the relationship between currying and uncurrying is known as tensor-hom adjunction. Here, an interesting twist arises: the Hom functor and the tensor product functor might not lift to an exact sequence; this leads to the definition of the Ext functor and the Tor functor.

Domain theory

In order theory, that is, the theory of lattices of partially ordered sets, curry is a continuous function when the lattice is given the Scott topology.[18] Scott-continuous functions were first investigated in the attempt to provide a semantics for lambda calculus (as ordinary set theory is inadequate to do this). More generally, Scott-continuous functions are now studied in domain theory, which encompasses the study of denotational semantics of computer algorithms. Note that the Scott topology is quite different than many common topologies one might encounter in the category of topological spaces; the Scott topology is typically finer, and is not sober.

The notion of continuity makes its appearance in homotopy type theory, where, roughly speaking, two computer programs can be considered to be homotopic, i.e. compute the same results, if they can be "continuously" refactored from one to the other.

Lambda calculi

In theoretical computer science, currying provides a way to study functions with multiple arguments in very simple theoretical models, such as the lambda calculus, in which functions only take a single argument. Consider a function f(x, y) taking two arguments, and having the type (X × Y) → Z, which should be understood to mean that _x_ must have the type X, _y_ must have the type Y, and the function itself returns the type Z. The curried form of _f_ is defined as

curry(_f_) = _λ__x_.(_λ__y_.(_f_(_x_, _y_)))

where λ is the abstractor of lambda calculus. Since curry takes, as input, functions with the type (X × Y) → Z, one concludes that the type of curry itself is

curry : ((_X_ × _Y_) → _Z_) → (_X_ → (_Y_ → _Z_))

The → operator is often considered right-associative, so the curried function type X → (Y → Z) is often written as X → Y → Z. Conversely, function application is considered to be left-associative, so that f(x, y) is equivalent to

((curry(_f_) _x_) _y_) = curry(_f_) _x_ _y_
.

That is, the parenthesis are not required to disambiguate the order of the application.

Curried functions may be used in any programming language that supports closures; however, uncurried functions are generally preferred for efficiency reasons, since the overhead of partial application and closure creation can then be avoided for most function calls.

Type theory

In type theory, the general idea of a type system in computer science is formalized into a specific algebra of types. For example, when writing f: X → Y, the intent is that X and Y are types, while the arrow → is a type constructor, specifically, the function type or arrow type. Similarly, the Cartesian product X × Y of types is constructed by the product type constructor ×.

The type-theoretical approach is expressed in programming languages such as ML and the languages derived from and inspired by it: CaML, Haskell and F#.

The type-theoretical approach provides a natural complement to the language of category theory, as discussed below. This is because categories, and specifically, monoidal categories, have an internal language, with simply-typed lambda calculus being the most prominent example of such a language. It is important in this context, because it can be built from a single type constructor, the arrow type. Currying then endows the language with a natural product type. The correspondence between objects in categories and types then allows programming languages to be re-interpreted as logics (via Curry–Howard correspondence), and as other types of mathematical systems, as explored further, below.

Logic

Under the Curry–Howard correspondence, the existence of currying and uncurrying is equivalent to the logical theorem (A ∧ B) → C ⇔ A → (B → C), as tuples (product type) corresponds to conjunction in logic, and function type corresponds to implication.

The exponential object Q^(P) in the category of Heyting algebras is normally written as material implication P → Q. Distributive Heyting algebras are Boolean algebras, and the exponential object has the explicit form ¬P ∨ Q, thus making it clear that the exponential object really is material implication.[19]

Category theory

The above notions of currying and uncurrying find their most general, abstract statement in category theory. Currying is a universal property of an exponential object, and gives rise to an adjunction in cartesian closed categories. That is, there is a natural isomorphism between the morphisms from a binary product f: (X × Y) → Z and the morphisms to an exponential object g: X → Z^(Y).

This generalizes to a broader result in closed monoidal categories: Currying is the statement that the tensor product and the internal Hom are adjoint functors; that is, for every object B there is a natural isomorphism:

_H__o__m_(_A_ ⊗ _B_, _C_) ≅ _H__o__m_(_A_, _B_ ⇒ _C_).

Here, _Hom_ denotes the (external) Hom-functor of all morphisms in the category, while B ⇒ C denotes the internal hom functor in the closed monoidal category. For the category of sets, the two are the same. When the product is the cartesian product, then the internal hom B ⇒ C becomes the exponential object C^(B).

Currying can break down in one of two ways. One is if a category is not closed, and thus lacks an internal hom functor (possibly because there is more than one choice for such a functor). Another ways is if it is not monoidal, and thus lacks a product (that is, lacks a way of writing down pairs of objects). Categories that do have both products and internal homs are exactly the closed monoidal categories.

The setting of cartesian closed categories is sufficient for the discussion of classical logic; the more general setting of closed monoidal categories is suitable for quantum computation.[20]

The difference between these two is that the product for cartesian categories (such as the category of sets, complete partial orders or Heyting algebras) is just the Cartesian product; it is interpreted as an ordered pair of items (or a list). Simply typed lambda calculus is the internal language of cartesian closed categories; and it is for this reason that pairs and lists are the primary types in the type theory of LISP, scheme and many functional programming languages.

By contrast, the product for monoidal categories (such as Hilbert space and the vector spaces of functional analysis) is the tensor product. The internal language of such categories is linear logic, a form of quantum logic; the corresponding type system is the linear type system. Such categories are suitable for describing entangled quantum states, and, more generally, allow a vast generalization of the Curry–Howard correspondence to quantum mechanics, to cobordisms in algebraic topology, and to string theory.[21] The linear type system, and linear logic are useful for describing synchronization primitives, such as mutual exclusion locks, and the operation of vending machines.


Contrast with partial function application

Currying and partial function application are often conflated.[22] (Reference is a blog). One of the significant differences between the two is that a call to a partially applied function returns the result right away, not another function down the currying chain; this distinction can be illustrated clearly for functions whose arity is greater than two.[23]

Given a function of type f: (X × Y × Z) → N, currying produces curry(f): X → (Y → (Z → N)). That is, while an evaluation of the first function might be represented as f(1, 2, 3), evaluation of the curried function would be represented as f_(curried)(1)(2)(3), applying each argument in turn to a single-argument function returned by the previous invocation. Note that after calling f_(curried)(1), we are left with a function that takes a single argument and returns another function, not a function that takes two arguments.

In contrast, PARTIAL FUNCTION APPLICATION refers to the process of fixing a number of arguments to a function, producing another function of smaller arity. Given the definition of f above, we might fix (or 'bind') the first argument, producing a function of type partial(f): (Y × Z) → N. Evaluation of this function might be represented as f_(partial)(2, 3). Note that the result of partial function application in this case is a function that takes two arguments.

Intuitively, partial function application says "if you fix the first argument of the function, you get a function of the remaining arguments". For example, if function _div_ stands for the division operation _x_/_y_, then _div_ with the parameter _x_ fixed at 1 (i.e., _div_ 1) is another function: the same as the function _inv_ that returns the multiplicative inverse of its argument, defined by _inv_(_y_) = 1/_y_.

The practical motivation for partial application is that very often the functions obtained by supplying some but not all of the arguments to a function are useful; for example, many languages have a function or operator similar to plus_one. Partial application makes it easy to define these functions, for example by creating a function that represents the addition operator with 1 bound as its first argument.

Partial application can be seen as evaluating a curried function at a fixed point, e.g. given f: (X × Y × Z) → N and a ∈ X then curry(partial(f)_(a))(y)(z) = curry(f)(a)(y)(z) or simply partial(f)_(a) = curry₁(f)(a) where curry₁ curries f's first parameter.

Thus, partial application is reduced to a curried function at a fixed point. Further, a curried function at a fixed point is (trivially), a partial application. Thus, by reduction, a curried function at a fixed point is a partial application. For further evidence, note that, given any function f(x, y), a function g(y, x) may be defined such that g(y, x) = f(x, y). Thus, any partial application may be reduced to a single curry operation. As such, curry is more suitably defined as an operation which, in many theoretical cases, is often applied recursively, but which is theoretically indistinguishable (when considered as an operation) from a partial application.

So, a partial application can be defined as the objective result of a single application of the curry operator on some ordering of the inputs of some function.


See also

-   Tensor-hom adjunction
-   Lazy evaluation
-   Closure (computer science)
-   s_(mn) theorem
-   Closed monoidal category


Notes


References

-   -


External links

-   Currying Schonfinkelling at the Portland Pattern Repository
-   Currying != Generalized Partial Application! - post at Lambda-the-Ultimate.org

Category:Higher-order functions Category:Functional programming Category:Lambda calculus Category:Articles with example Java code

[1]

[2] Willard Van Orman Quine, introduction to "Bausteine der mathematischen Logik", pp. 305–316. Translated by Stefan Bauer-Mengelberg as "On the building blocks of mathematical logic" in Jean van Heijenoort (1967), _A Source Book in Mathematical Logic, 1879–1931_. Harvard University Press, pp. 355–66.

[3]  (Reprinted lecture notes from 1967.)

[4]

[5] Kenneth Slonneger and Barry L. Kurtz. _Formal Syntax and Semantics of Programming Languages_. 1995. p. 144.

[6] Henk Barendregt, Erik Barendsen, "Introduction to Lambda Calculus", March 2000, page 8.

[7]

[8]

[9] I. Heim and A. Kratzer (1998). _Semantics in Generative Grammar_. Blackwell.

[10] J.P. May, _A Concise Course in Algebraic Topology_, (1999) Chicago Lectures in Mathematics

[11]

[12] P. I. Booth and J. Tillotson, "Monoidal closed, Cartesian closed and convenient categories of topological spaces", _Pacific Journal of Mathematics_, 88 (1980) pp.33-53.

[13]

[14] Joseph J. Rotman, _An Introduction to Algebraic Topology_ (1988) Springer-Verlag _(See Chapter 11 for proof.)_

[15]

[16]

[17]

[18]  _(See theorems 1.2.13, 1.2.14)_

[19] Saunders Mac Lane and Ieke Moerdijk, _Sheaves in Geometry and Logic_ (1992) Springer (_See Chapter 1, pp.48-57_)

[20] Samson Abramsky and Bob Coecke, "A Categorical Semantics for Quantum Protocols."

[21] John C. Baez and Mike Stay, "Physics, Topology, Logic and Computation: A Rosetta Stone", (2009) ArXiv 0903.0340 in _New Structures for Physics_, ed. Bob Coecke, _Lecture Notes in Physics_ vol. 813, Springer, Berlin, 2011, pp. 95-174.

[22]

[23]