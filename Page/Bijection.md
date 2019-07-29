Bijection.svg In mathematics, a BIJECTION, BIJECTIVE FUNCTION, or ONE-TO-ONE CORRESPONDENCE is a function between the elements of two sets, where each element of one set is paired with exactly one element of the other set, and each element of the other set is paired with exactly one element of the first set. There are no unpaired elements. In mathematical terms, a bijective function is a one-to-one (injective) and onto (surjective) mapping of a set _X_ to a set _Y_.

A bijection from the set _X_ to the set _Y_ has an inverse function from _Y_ to _X_. If _X_ and _Y_ are finite sets, then the existence of a bijection means they have the same number of elements. For infinite sets the picture is more complicated, leading to the concept of cardinal number, a way to distinguish the various sizes of infinite sets.

A bijective function from a set to itself is also called a _permutation_.

Bijective functions are essential to many areas of mathematics including the definitions of isomorphism, homeomorphism, diffeomorphism, permutation group, and projective map.


Definition

For a pairing between _X_ and _Y_ (where _Y_ need not be different from _X_) to be a bijection, four properties must hold:

1.  each element of _X_ must be paired with at least one element of _Y_,
2.  no element of _X_ may be paired with more than one element of _Y_,
3.  each element of _Y_ must be paired with at least one element of _X_, and
4.  no element of _Y_ may be paired with more than one element of _X_.

Satisfying properties (1) and (2) means that a bijection is a function with domain _X_. It is more common to see properties (1) and (2) written as a single statement: Every element of _X_ is paired with exactly one element of _Y_. Functions which satisfy property (3) are said to be "onto _Y_ " and are called surjections (or SURJECTIVE FUNCTIONS). Functions which satisfy property (4) are said to be "one-to-one functions" and are called injections (or INJECTIVE FUNCTIONS).[1] With this terminology, a bijection is a function which is both a surjection and an injection, or using other words, a bijection is a function which is both "one-to-one" and "onto".

Bijections are sometimes denoted by a two-headed rightwards arrow with tail (), as in _f_ : _X_ ⤖ _Y_. This symbol is a combination of the two-headed rightwards arrow () sometimes used to denote surjections and the rightwards arrow with a barbed tail () sometimes used to denote injections.


Examples

Batting line-up of a baseball or cricket team

Consider the batting line-up of a baseball or cricket team (or any list of all the players of any sports team where every player holds a specific spot in a line-up). The set _X_ will be the players on the team (of size nine in the case of baseball) and the set _Y_ will be the positions in the batting order (1st, 2nd, 3rd, etc.) The "pairing" is given by which player is in what position in this order. Property (1) is satisfied since each player is somewhere in the list. Property (2) is satisfied since no player bats in two (or more) positions in the order. Property (3) says that for each position in the order, there is some player batting in that position and property (4) states that two or more players are never batting in the same position in the list.

Seats and students of a classroom

In a classroom there are a certain number of seats. A bunch of students enter the room and the instructor asks them all to be seated. After a quick look around the room, the instructor declares that there is a bijection between the set of students and the set of seats, where each student is paired with the seat they are sitting in. What the instructor observed in order to reach this conclusion was that:

1.  Every student was in a seat (there was no one standing),
2.  No student was in more than one seat,
3.  Every seat had someone sitting there (there were no empty seats), and
4.  No seat had more than one student in it.

The instructor was able to conclude that there were just as many seats as there were students, without having to count either set.


More mathematical examples and some non-examples

-   For any set _X_, the identity function 1_(_X_): _X_ → _X_, 1_(_X_)(_x_) = _x_, is bijective.
-   The function _f_: R → R, _f_(_x_) = 2_x_ + 1 is bijective, since for each _y_ there is a unique _x_ = (_y_ − 1)/2 such that _f_(_x_) = _y_. In more generality, any linear function over the reals, _f_: R → R, _f_(_x_) = _ax_ + _b_ (where _a_ is non-zero) is a bijection. Each real number _y_ is obtained from (paired with) the real number _x_ = (_y_ − _b_)/_a_.
-   The function _f_: _R_ → (−π/2, π/2), given by _f_(_x_) = arctan(_x_) is bijective since each real number _x_ is paired with exactly one angle _y_ in the interval (−π/2, π/2) so that tan(_y_) = _x_ (that is, _y_ = arctan(_x_)). If the codomain (−π/2, π/2) was made larger to include an integer multiple of π/2 then this function would no longer be onto (surjective) since there is no real number which could be paired with the multiple of π/2 by this arctan function.
-   The exponential function, _g_: R → R, _g_(_x_) = e^(_x_), is not bijective: for instance, there is no _x_ in R such that _g_(_x_) = −1, showing that _g_ is not onto (surjective). However, if the codomain is restricted to the positive real numbers $\scriptstyle \R^+ \;\equiv\; \left(0,\, +\infty\right)$, then _g_ becomes bijective; its inverse (see below) is the natural logarithm function ln.
-   The function _h_: R → R⁺, _h_(_x_) = _x_² is not bijective: for instance, _h_(−1) = _h_(1) = 1, showing that _h_ is not one-to-one (injective). However, if the domain is restricted to $\scriptstyle\R^+_0 \;\equiv\; \left[0,\, +\infty\right)$, then _h_ becomes bijective; its inverse is the positive square root function.


Inverses

A bijection _f_ with domain _X_ (indicated by _f_: _X → Y_ in functional notation) also defines a converse relation starting in _Y_ and going to _X_ (by turning the arrows around). The process of "turning the arrows around" for an arbitrary function does not, _in general_, yield a function, but properties (3) and (4) of a bijection say that this inverse relation is a function with domain _Y_. Moreover, properties (1) and (2) then say that this inverse _function_ is a surjection and an injection, that is, the inverse function exists and is also a bijection. Functions that have inverse functions are said to be invertible. A function is invertible if and only if it is a bijection.

Stated in concise mathematical notation, a function _f_: _X → Y_ is bijective if and only if it satisfies the condition

    for every _y_ in _Y_ there is a unique _x_ in _X_ with _y_ = _f_(_x_).

Continuing with the baseball batting line-up example, the function that is being defined takes as input the name of one of the players and outputs the position of that player in the batting order. Since this function is a bijection, it has an inverse function which takes as input a position in the batting order and outputs the player who will be batting in that position.


Composition

The composition $\scriptstyle g \,\circ\, f$ of two bijections _f_: _X → Y_ and _g_: _Y → Z_ is a bijection. The inverse of $\scriptstyle g \,\circ\, f$ is $\scriptstyle (g \,\circ\, f)^{-1} \;=\; (f^{-1}) \,\circ\, (g^{-1})$.

Bijective_composition.svg Conversely, if the composition $\scriptstyle g \,\circ\, f$ of two functions is bijective, we can only say that _f_ is injective and _g_ is surjective.


Bijections and cardinality

If _X_ and _Y_ are finite sets, then there exists a bijection between the two sets _X_ and _Y_ if and only if _X_ and _Y_ have the same number of elements. Indeed, in axiomatic set theory, this is taken as the definition of "same number of elements" (equinumerosity), and generalising this definition to infinite sets leads to the concept of cardinal number, a way to distinguish the various sizes of infinite sets.


Properties

-   A function _f_: R → R is bijective if and only if its graph meets every horizontal and vertical line exactly once.
-   If _X_ is a set, then the bijective functions from _X_ to itself, together with the operation of functional composition (∘), form a group, the symmetric group of _X_, which is denoted variously by S(_X_), _S_(X)_, or _X_! (_X_ factorial).
-   Bijections preserve cardinalities of sets: for a subset _A_ of the domain with cardinality |_A_| and subset _B_ of the codomain with cardinality |_B_|, one has the following equalities:

        |_f_(_A_)| = |_A_| and |_f_^(−1)(_B_)| = |_B_|.

-   If _X_ and _Y_ are finite sets with the same cardinality, and _f_: _X → Y_, then the following are equivalent:
    1.  _f_ is a bijection.
    2.  _f_ is a surjection.
    3.  _f_ is an injection.
-   For a finite set _S_, there is a bijection between the set of possible total orderings of the elements and the set of bijections from _S_ to _S_. That is to say, the number of permutations of elements of _S_ is the same as the number of total orderings of that set—namely, _n_!.


Bijections and category theory

Bijections are precisely the isomorphisms in the category SET of sets and set functions. However, the bijections are not always the isomorphisms for more complex categories. For example, in the category GRP of groups, the morphisms must be homomorphisms since they must preserve the group structure, so the isomorphisms are _group isomorphisms_ which are bijective homomorphisms.


Generalization to partial functions

The notion of one-to-one correspondence generalizes to partial functions, where they are called PARTIAL BIJECTIONS, although partial bijections are only required to be injective. The reason for this relaxation is that a (proper) partial function is already undefined for a portion of its domain; thus there is no compelling reason to constrain its inverse to be a total function, i.e. defined everywhere on its domain. The set of all partial bijections on a given base set is called the symmetric inverse semigroup.[2]

Another way of defining the same notion is to say that a partial bijection from _A_ to _B_ is any relation _R_ (which turns out to be a partial function) with the property that _R_ is the graph of a bijection _f_:_A′_→_B′_, where _A′_ is a subset of _A_ and _B′_ is a subset of _B_.[3]

When the partial bijection is on the same set, it is sometimes called a ONE-TO-ONE PARTIAL TRANSFORMATION.[4] An example is the Möbius transformation simply defined on the complex plane, rather than its completion to the extended complex plane.[5]


Contrast with

-   Multivalued function


See also

-   Bijection, injection and surjection
-   Bijective numeration
-   Bijective proof
-   Category theory
-   Ax–Grothendieck theorem


Notes


References

This topic is a basic concept in set theory and can be found in any text which includes an introduction to set theory. Almost all texts that deal with an introduction to writing proofs will include a section on set theory, so the topic may be found in any of these:

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   -   -   Earliest Uses of Some of the Words of Mathematics: entry on Injection, Surjection and Bijection has the history of Injection and related terms.

Category:Functions and mappings Category:Basic concepts in set theory Category:Mathematical relations Category:Types of functions

[1] There are names associated to properties (1) and (2) as well. A relation which satisfies property (1) is called a _total relation_ and a relation satisfying (2) is a _single valued relation_.

[2]

[3]

[4]

[5]  preprint citing