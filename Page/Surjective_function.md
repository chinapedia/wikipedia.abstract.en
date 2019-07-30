In mathematics, a function _f_ from a set _X_ to a set _Y_ is SURJECTIVE (or ONTO), or a SURJECTION, if for every element _y_ in the codomain _Y_ of _f_ there is at least one element _x_ in the domain _X_ of _f_ such that _f_(_x_) = _y_. It is not required that _x_ be unique; the function _f_ may map one or more elements of _X_ to the same element of _Y_.

_X_ to codomain _Y_. The function is surjective because every point in the codomain is the value of _f_(_x_) for at least one point _x_ in the domain.]]

The term _surjective_ and the related terms _injective_ and _bijective_ were introduced by Nicolas Bourbaki,[1] a group of mainly French 20th-century mathematicians who under this pseudonym wrote a series of books presenting an exposition of modern advanced mathematics, beginning in 1935. The French word _sur_ means _over_ or _above_ and relates to the fact that the image of the domain of a surjective function completely covers the function's codomain.

Any function induces a surjection by restricting its codomain to the image of its domain. Every surjective function has a right inverse, and every function with a right inverse is necessarily a surjection. The composite of surjective functions is always surjective. Any function can be decomposed into a surjection and an injection.


Definition

A SURJECTIVE FUNCTION is a function whose image is equal to its codomain. Equivalently, a function _f_ with domain _X_ and codomain _Y_ is surjective if for every _y_ in _Y_ there exists at least one _x_ in _X_ with f(x) = y. Surjections are sometimes denoted by a two-headed rightwards arrow (),[2] as in _f_ : _X_ ↠ _Y_.

Symbolically,

    If f: X → Y, then f is said to be surjective if

∀_y_ ∈ _Y_, ∃_x_ ∈ _X_,  _f_(_x_) = _y_
.


Examples

_X_ to codomain _Y_. The smaller oval inside _Y_ is the image (also called range) of _f_. This function is NOT surjective, because the image does not fill the whole codomain. In other words, _Y_ is colored in a two-step process: First, for every _x_ in _X_, the point _f_(_x_) is colored yellow; Second, all the rest of the points in _Y_, that are not yellow, are colored blue. The function _f_ is surjective only if there are no blue points.]] For any set _X_, the identity function id_(_X_) on _X_ is surjective.

The function defined by _f_(_n_) = _n_ MOD 2 (that is, even integers are mapped to 0 and odd integers to 1) is surjective.

The function defined by _f_(_x_) = 2_x_ + 1 is surjective (and even bijective), because for every real number _y_ we have an _x_ such that _f_(_x_) = _y_: an appropriate _x_ is (_y_ − 1)/2.

The function defined by _f_(_x_) = _x_³ − 3_x_ is surjective, because the pre-image of any real number _y_ is the solution set of the cubic polynomial equation _x_³ − 3_x_ − _y_ = 0 and every cubic polynomial with real coefficients has at least one real root. However, this function is not injective (and hence not bijective) since e.g. the pre-image of _y_ = 2 is {_x_ = −1, _x_ = 2}. (In fact, the pre-image of this function for every _y_, −2 ≤ _y_ ≤ 2 has more than one element.)

The function defined by _g_(_x_) = _x_² is _not_ surjective, because there is no real number _x_ such that _x_² = −1. However, the function defined by _g_(_x_) = _x_² (with restricted codomain) _is_ surjective because for every _y_ in the nonnegative real codomain _Y_ there is at least one _x_ in the real domain _X_ such that _x_² = _y_.

The natural logarithm function is a surjective and even bijective mapping from the set of positive real numbers to the set of all real numbers. Its inverse, the exponential function, is not surjective as its range is the set of positive real numbers, and its domain is usually defined to be the set of all real numbers. The matrix exponential is not surjective when seen as a map from the space of all _n_×_n_ matrices to itself. It is, however, usually defined as a map from the space of all _n_×_n_ matrices to the general linear group of degree _n_, i.e. the group of all _n_×_n_ invertible matrices. Under this definition the matrix exponential is surjective for complex matrices, although still not surjective for real matrices.

The projection from a cartesian product to one of its factors is surjective unless the other factor is empty.

In a 3D video game, vectors are projected onto a 2D flat screen by means of a surjective function.

{{-}}


Properties

A function is bijective if and only if it is both surjective and injective.

If (as is often done) a function is identified with its graph, then surjectivity is not a property of the function itself, but rather a property of the mapping[3]. This is, the function together with its codomain. Unlike injectivity, surjectivity cannot be read off of the graph of the function alone.

Surjections as right invertible functions

The function is said to be a right inverse of the function if _f_(_g_(_y_)) = _y_ for every _y_ in _Y_ (_g_ can be undone by _f_). In other words, _g_ is a right inverse of _f_ if the composition of _g_ and _f_ in that order is the identity function on the domain _Y_ of _g_. The function _g_ need not be a complete inverse of _f_ because the composition in the other order, , may not be the identity function on the domain _X_ of _f_. In other words, _f_ can undo or "_reverse_" _g_, but cannot necessarily be reversed by it.

Every function with a right inverse is necessarily a surjection. The proposition that every surjective function has a right inverse is equivalent to the axiom of choice.

If is surjective and _B_ is a subset of _Y_, then _f_(_f_^(−1)(_B_)) = _B_. Thus, _B_ can be recovered from its preimage .

For example, in the first illustration, above, there is some function _g_ such that _g_(_C_) = 4. There is also some function _f_ such that _f_(4) = _C_. It doesn't matter that _g_(_C_) can also equal 3; it only matters that _f_ "reverses" _g_.

File:Surjective composition.svg|Surjective composition: the first function need not be surjective. File:Bijection.svg%7CAnother surjective function. (This one happens to be a bijection) File:Injection.svg%7CA NON-surjective function. (This one happens to be an injection)

Surjections as epimorphisms

A function is surjective if and only if it is right-cancellative:[4] given any functions , whenever _g_ o _f_ = _h_ o _f_, then _g_ = _h_. This property is formulated in terms of functions and their composition and can be generalized to the more general notion of the morphisms of a category and their composition. Right-cancellative morphisms are called epimorphisms. Specifically, surjective functions are precisely the epimorphisms in the category of sets. The prefix _epi_ is derived from the Greek preposition _ἐπί_ meaning _over_, _above_, _on_.

Any morphism with a right inverse is an epimorphism, but the converse is not true in general. A right inverse _g_ of a morphism _f_ is called a section of _f_. A morphism with a right inverse is called a split epimorphism.

Surjections as binary relations

Any function with domain _X_ and codomain _Y_ can be seen as a left-total and right-unique binary relation between _X_ and _Y_ by identifying it with its function graph. A surjective function with domain _X_ and codomain _Y_ is then a binary relation between _X_ and _Y_ that is right-unique and both left-total and right-total.

Cardinality of the domain of a surjection

The cardinality of the domain of a surjective function is greater than or equal to the cardinality of its codomain: If is a surjective function, then _X_ has at least as many elements as _Y_, in the sense of cardinal numbers. (The proof appeals to the axiom of choice to show that a function satisfying _f_(_g_(_y_)) = _y_ for all _y_ in _Y_ exists. _g_ is easily seen to be injective, thus the formal definition of |_Y_| ≤ |_X_| is satisfied.)

Specifically, if both _X_ and _Y_ are finite with the same number of elements, then is surjective if and only if _f_ is injective.

Given two sets _X_ and _Y_, the notation is used to say that either _X_ is empty or that there is a surjection from _Y_ onto _X_. Using the axiom of choice one can show that and together imply that |_Y_| = |_X_|, a variant of the Schröder–Bernstein theorem.

Composition and decomposition

The composite of surjective functions is always surjective: If _f_ and _g_ are both surjective, and the codomain of _g_ is equal to the domain of _f_, then is surjective. Conversely, if is surjective, then _f_ is surjective (but _g_, the function applied first, need not be). These properties generalize from surjections in the category of sets to any epimorphisms in any category.

Any function can be decomposed into a surjection and an injection: For any function there exist a surjection and an injection such that _h_ = _g_ o _f_. To see this, define _Y_ to be the set of preimages where _z_ is in . These preimages are disjoint and partition _X_. Then _f_ carries each _x_ to the element of _Y_ which contains it, and _g_ carries each element of _Y_ to the point in _Z_ to which _h_ sends its points. Then _f_ is surjective since it is a projection map, and _g_ is injective by definition.

Induced surjection and induced bijection

Any function induces a surjection by restricting its codomain to its range. Any surjective function induces a bijection defined on a quotient of its domain by collapsing all arguments mapping to a given fixed image. More precisely, every surjection can be factored as a projection followed by a bijection as follows. Let _A_/~ be the equivalence classes of _A_ under the following equivalence relation: _x_ ~ _y_ if and only if _f_(_x_) = _f_(_y_). Equivalently, _A_/~ is the set of all preimages under _f_. Let _P_(~) : _A_ → _A_/~ be the projection map which sends each _x_ in _A_ to its equivalence class [_x_]_(~), and let _f__(_P_) : _A_/~ → _B_ be the well-defined function given by _f__(_P_)([_x_]_(~)) = _f_(_x_). Then _f_ = _f__(_P_) o _P_(~).


See also

-   Bijection, injection and surjection
-   Cover (algebra)
-   Covering map
-   Enumeration
-   Fiber bundle
-   Index set
-   Section (category theory)


References


Further reading

-

Category:Functions and mappings Category:Basic concepts in set theory Category:Mathematical relations Category:Types of functions

[1] .

[2]

[3]

[4]