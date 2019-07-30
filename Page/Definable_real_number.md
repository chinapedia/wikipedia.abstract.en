is equal to the length of the hypotenuse of a right triangle with legs of length 1 and is therefore a CONSTRUCTIBLE NUMBER]]

Informally, a DEFINABLE REAL NUMBER is a real number that can be uniquely specified by its description. The description may be expressed as a construction or as a formula of a formal language. For example, the positive square root of 2, $\sqrt{2}$, can be defined as the unique positive solution to the equation x² = 2, and it can be constructed with a compass and straightedge.

Different choices of a formal language or its interpretation can give rise to different notions of definability. Specific varieties of definable numbers include the constructible numbers of geometry, the algebraic numbers, and the computable numbers.


Constructible numbers

One way of specifying a real number uses geometric techniques. A real number _r_ is a constructible number if there is a method to construct a line segment of length _r_ using a compass and straightedge, beginning with a fixed line segment of length 1.

Each positive integer, and each positive rational number, is constructible. The positive square root of 2 is constructible. However, the cube root of 2 is not constructible; this is related to the impossibility of doubling the cube.


Algebraic numbers

colored by degree (red=1, green=2, blue=3, yellow=4)]]

A real number _r_ is called an algebraic number if there is a polynomial _p_(_x_), with only integer coefficients, so that _r_ is a root of _p_, that is, _p_(_r_)=0. Each algebraic number can be defined individually using the order relation on the reals. For example, if a polynomial _q_(_x_) has 5 roots, the third one can be defined as the unique _r_ such that _q_(_r_) = 0 and such that there are two distinct numbers less than _r_ for which _q_ is zero.

All rational numbers are algebraic, and all constructible numbers are algebraic. There are numbers such as the cube root of 2 which are algebraic but not constructible.

The algebraic numbers form a subfield of the real numbers. This means that 0 and 1 are algebraic numbers and, moreover, if _a_ and _b_ are algebraic numbers, then so are _a_+_b_, _a_−_b_, _ab_ and, if _b_ is nonzero, _a_/_b_.

The algebraic numbers also have the property, which goes beyond being a subfield of the reals, that for each positive integer _n_ and each algebraic number _a_, all of the _n_th roots of _a_ that are real numbers are also algebraic.

There are only countably many algebraic numbers, but there are uncountably many real numbers, so in the sense of cardinality most real numbers are not algebraic. This nonconstructive proof that not all real numbers are algebraic was first published by Georg Cantor in his 1874 paper "On a Property of the Collection of All Real Algebraic Numbers".

Non-algebraic numbers are called transcendental numbers. Specific examples of transcendental numbers include π and Euler's number _e_.


Computable real numbers

A real number is a computable number if there is an algorithm that, given a natural number _n_, produces a decimal expansion for the number accurate to _n_ decimal places. This notion was introduced by Alan Turing in 1936.

The computable numbers include the algebraic numbers along with many transcendental numbers including π and _e_. Like the algebraic numbers, the computable numbers also form a subfield of the real numbers, and the positive computable numbers are closed under taking _n_th roots for each positive _n_.

Not all real numbers are computable. The entire set of computable numbers is countable, so most reals are not computable. Specific examples of noncomputable real numbers include the limits of Specker sequences, and algorithmically random real numbers such as Chaitin's Ω numbers.


Definability in arithmetic

Another notion of definability comes from the formal theories of arithmetic, such as Peano arithmetic. The language of arithmetic has symbols for 0, 1, the successor operation, addition, and multiplication, intended to be interpreted in the usual way over the natural numbers. Because no variables of this language range over the real numbers, a different sort of definability is needed to refer to real numbers. A real number _a_ is _definable in the language of arithmetic_ (or _arithmetical_) if its Dedekind cut can be defined as a predicate in that language; that is, if there is a first-order formula _φ_ in the language of arithmetic, with three free variables, such that

$$\forall m \, \forall n \, \forall p \left (\varphi(n,m,p)\iff\frac{(-1)^p\cdot n}{m+1}<a \right ).$$
Here _m_, _n_, and _p_ range over nonnegative integers.

The second-order language of arithmetic is the same as the first-order language, except that variables and quantifiers are allowed to range over sets of naturals. A real that is second-order definable in the language of arithmetic is called _analytical_.

Every computable real number is arithmetical, and the arithmetical numbers form a subfield of the reals, as do the analytical numbers. Every arithmetical number is analytical, but not every analytical number is arithmetical. Because there are only countably many analytical numbers, most real numbers are not analytical, and thus also not arithmetical.

Every computable number is arithmetical, but not every arithmetical number is computable. For example, the limit of a Specker sequence is an arithmetical number that is not computable.

The definitions of arithmetical and analytical reals can be stratified into the arithmetical hierarchy and analytical hierarchy. In general, a real is computable if and only if its Dedekind cut is at level Δ₁⁰ of the arithmetical hierarchy, one of the lowest levels. Similarly, the reals with arithmetical Dedekind cuts form the lowest level of the analytical hierarchy.


Definability in models of ZFC

A real number _a_ is FIRST-ORDER DEFINABLE IN THE LANGUAGE OF SET THEORY, WITHOUT PARAMETERS, if there is a formula _φ_ in the language of set theory, with one free variable, such that _a_ is the unique real number such that _φ_(_a_) holds (see ). This notion cannot be expressed as a formula in the language of set theory.

All analytical numbers, and in particular all computable numbers, are definable in the language of set theory. Thus the real numbers definable in the language of set theory include all familiar real numbers such as 0, 1, π, _e_, et cetera, along with all algebraic numbers. Assuming that they form a set in the model, the real numbers definable in the language of set theory over a particular model of ZFC form a field.

Each set model _M_ of ZFC set theory that contains uncountably many real numbers must contain real numbers that are not definable within _M_ (without parameters). This follows from the fact that there are only countably many formulas, and so only countably many elements of _M_ can be definable over _M_. Thus, if _M_ has uncountably many real numbers, we can prove from "outside" _M_ that not every real number of _M_ is definable over _M_.

This argument becomes more problematic if it is applied to class models of ZFC, such as the von Neumann universe . The argument that applies to set models cannot be directly generalized to class models in ZFC because the property "the real number _x_ is definable over the class model _N_" cannot be expressed as a formula of ZFC. Similarly, the question whether the von Neumann universe contains real numbers that it cannot define cannot be expressed as a sentence in the language of ZFC. Moreover, there are countable models of ZFC in which all real numbers, all sets of real numbers, functions on the reals, etc. are definable .


See also

-   Berry's paradox
-   Constructible universe
-   Entscheidungsproblem
-   Ordinal definable set
-   Tarski's undefinability theorem


References

-   .

-   .

-   .

-   (and ). Computable numbers (and Turing's a-machines) were introduced in this paper; the definition of computable numbers uses infinite decimal sequences.


External links

-   Can each number be specified by a finite text?

Category:Set theory