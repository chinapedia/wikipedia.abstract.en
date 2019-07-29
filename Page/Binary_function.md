In mathematics, a BINARY FUNCTION (also called BIVARIATE FUNCTION, or FUNCTION OF TWO VARIABLES) is a function that takes two inputs.

Precisely stated, a function f is binary if there exists sets X, Y, Z such that

 _f_: _X_ × _Y_ → _Z_
where X × Y is the Cartesian product of X and Y.


Alternative definitions

Set-theoretically, one may represent a binary function as a subset of the Cartesian product _X_ × _Y_ × _Z_, where (_x_,_y_,_z_) belongs to the subset if and only if _f_(_x_,_y_) = _z_. Conversely, a subset _R_ defines a binary function if and only if for any _x_ in _X_ and _y_ in _Y_, there exists a unique _z_ in _Z_ such that (_x_,_y_,_z_) belongs to _R_. We then define _f_(_x_,_y_) to be this _z_.

Alternatively, a binary function may be interpreted as simply a function from _X_ × _Y_ to _Z_. Even when thought of this way, however, one generally writes _f_ (_x_,_y_) instead of _f_((_x_,_y_)). (That is, the same pair of parentheses is used to indicate both function application and the formation of an ordered pair.)


Examples

Division of whole numbers can be thought of as a function; if Z is the set of integers, N⁺ is the set of natural numbers (except for zero), and Q is the set of rational numbers, then division is a binary function from Z and N⁺ to Q.

Another example is that of inner products, or more generally functions of the form (x, y) ↦ x^(T)My where _x,y_ are real-valued vectors of appropriate size and _M_ is a matrix. If _M_ is a positive definite matrix, this yields an inner product.[1]


Functions of two real variables

Functions whose domain is a subset of ℝ² are often also called functions of two variables even if their domain does not form a rectangle and thus the cartesian product of two sets.[2]


Restrictions to ordinary functions

In turn, one can also derive ordinary functions of one variable from a binary function. Given any element _x_ of _X_, there is a function _f_ ^(_x_), or _f_ (_x_,·), from _Y_ to _Z_, given by _f_ ^(_x_)(_y_) := _f_ (_x_,_y_). Similarly, given any element _y_ of _Y_, there is a function _f_ _(_y_), or _f_ (·,_y_), from _X_ to _Z_, given by _f_ _(_y_)(_x_) := _f_ (_x_,_y_). In computer science, this identification between a function from _X_ × _Y_ to _Z_ and a function from _X_ to _Z_^(_Y_), where _Z_^(_Y_) is the set of all functions from _Y_ to _Z_, is called _currying_.


Generalisations

The various concepts relating to functions can also be generalised to binary functions. For example, the division example above is _surjective_ (or _onto_) because every rational number may be expressed as a quotient of an integer and a natural number. This example is _injective_ in each input separately, because the functions _f_ ^(_x_) and _f_ _(_y_) are always injective. However, it's not injective in both variables simultaneously, because (for example) _f_ (2,4) = _f_ (1,2).

One can also consider _partial_ binary functions, which may be defined only for certain values of the inputs. For example, the division example above may also be interpreted as a partial binary function from Z and N to Q, where N is the set of all natural numbers, including zero. But this function is undefined when the second input is zero.

A binary operation is a binary function where the sets _X_, _Y_, and _Z_ are all equal; binary operations are often used to define algebraic structures.

In linear algebra, a bilinear transformation is a binary function where the sets _X_, _Y_, and _Z_ are all vector spaces and the derived functions _f_ ^(_x_) and _f__(_y_) are all linear transformations. A bilinear transformation, like any binary function, can be interpreted as a function from _X_ × _Y_ to _Z_, but this function in general won't be linear. However, the bilinear transformation can also be interpreted as a single linear transformation from the tensor product X ⊗ Y to _Z_.


Generalisations to ternary and other functions

The concept of binary function generalises to _ternary_ (or _3-ary_) _function_, _quaternary_ (or _4-ary_) _function_, or more generally to _n-ary function_ for any natural number _n_. A _0-ary function_ to _Z_ is simply given by an element of _Z_. One can also define an _A-ary function_ where _A_ is any set; there is one input for each element of _A_.


Category theory

In category theory, _n_-ary functions generalise to _n_-ary morphisms in a multicategory. The interpretation of an _n_-ary morphism as an ordinary morphisms whose domain is some sort of product of the domains of the original _n_-ary morphism will work in a monoidal category. The construction of the derived morphisms of one variable will work in a closed monoidal category. The category of sets is closed monoidal, but so is the category of vector spaces, giving the notion of bilinear transformation above.


References

Category:Types of functions Category:2 (number)

[1]

[2]