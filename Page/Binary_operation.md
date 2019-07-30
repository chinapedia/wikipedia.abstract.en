In mathematics, a BINARY OPERATION or DYADIC OPERATION is a calculation that combines two elements (called operands) to produce another element. More formally, a binary operation is an operation of arity two.

More specifically, a binary operation _on a set_ is a binary operation whose two domains and the codomain are the same set. Examples include the familiar arithmetic operations of addition, subtraction, multiplication. Other examples are readily found in different areas of mathematics, such as vector addition, matrix multiplication and conjugation in groups.

However, a binary operation may also involve several sets. For example, scalar multiplication of vector spaces takes a scalar and a vector to produce a vector, and scalar product takes two vectors to produce a scalar.

Binary operations are the keystone of most algebraic structures, that are studied in algebra, and used in all mathematics, such as fields, groups, monoids, rings, algebras, and many more.


Terminology

More precisely, a binary operation on a set _S_ is a map which sends elements of the Cartesian product to _S_:[1][2][3]

 _f_: _S_ × _S_ → _S_.
Because the result of performing the operation on a pair of elements of _S_ is again an element of _S_, the operation is called a CLOSED binary operation on _S_ (or sometimes expressed as having the property of closure).[4] If _f_ is not a function, but is instead a partial function, it is called a PARTIAL BINARY OPERATION. For instance, division of real numbers is a partial binary operation, because one can't divide by zero: _a_/0 is not defined for any real _a_. However, both in universal algebra and model theory the binary operations considered are defined on all of .

Sometimes, especially in computer science, the term is used for any binary function.


Properties and examples

Typical examples of binary operations are the addition (+) and multiplication (×) of numbers and matrices as well as composition of functions on a single set. For instance,

-   On the set of real numbers R, is a binary operation since the sum of two real numbers is a real number.
-   On the set of natural numbers N, is a binary operation since the sum of two natural numbers is a natural number. This is a different binary operation than the previous one since the sets are different.
-   On the set M(2,R) of matrices with real entries, is a binary operation since the sum of two such matrices is a matrix.
-   On the set M(2,R) of matrices with real entries, is a binary operation since the product of two such matrices is a matrix.
-   For a given set _C_, let _S_ be the set of all functions . Define by for all , the composition of the two functions _h_ and _h_ in _S_. Then _f_ is a binary operation since the composition of the two functions is again a function on the set _C_ (that is, a member of _S_).

Many binary operations of interest in both algebra and formal logic are commutative, satisfying for all elements _a_ and _b_ in _S_, or associative, satisfying for all _a_, _b_ and _c_ in _S_. Many also have identity elements and inverse elements.

The first three examples above are commutative and all of the above examples are associative.

On the set of real numbers R, subtraction, that is, , is a binary operation which is not commutative since, in general, . It is also not associative, since, in general, ; for instance, but .

On the set of natural numbers N, the binary operation exponentiation, , is not commutative since, (cf. Equation xʸ = yˣ), and is also not associative since . For instance, with , and , , but . By changing the set N to the set of integers Z, this binary operation becomes a partial binary operation since it is now undefined when and _b_ is any negative integer. For either set, this operation has a _right identity_ (which is 1) since for all _a_ in the set, which is not an _identity_ (two sided identity) since in general.

Division (/), a partial binary operation on the set of real or rational numbers, is not commutative or associative. Tetration (↑↑), as a binary operation on the natural numbers, is not commutative or associative and has no identity element.


Notation

Binary operations are often written using infix notation such as , , or (by juxtaposition with no symbol) _ab_ rather than by functional notation of the form . Powers are usually also written without operator, but with the second argument as superscript.

Binary operations sometimes use prefix or (probably more often) postfix notation, both of which dispense with parentheses. They are also called, respectively, Polish notation and reverse Polish notation.


Pair and tuple

A binary operation, _ab_, depends on the ordered pair (_a, b_) and so (_ab_)_c_ (where the parentheses here mean first operate on the ordered pair (_a_, _b_) and then operate on the result of that using the ordered pair ((_ab_), _c_)) depends in general on the ordered pair ((_a_, _b_), _c_). Thus, for the general, non-associative case, binary operations can be represented with binary trees.

However:

-   If the operation is associative, (_ab_)_c_ = _a_(_bc_), then the value of (_ab_)_c_ depends only on the tuple (_a_, _b_, _c_).
-   If the operation is commutative, _ab_ = _ba_, then the value of (_ab_)_c_ depends only on { {_a_, _b_}, _c_}, where braces indicate multisets.
-   If the operation is both associative and commutative then the value of (_ab_)_c_ depends only on the multiset {_a_, _b_, _c_}.
-   If the operation is associative, commutative and idempotent, _aa_ = _a_, then the value of (_ab_)_c_ depends only on the set {_a_, _b_, _c_}.


Binary operations as ternary relations

A binary operation _f_ on a set _S_ may be viewed as a _ternary_ relation on _S_, that is, the set of triples (_a_, _b_, _f_(_a,b_)) in _S_ × _S_ × _S_ for all _a_ and _b_ in _S_.


External binary operations

An EXTERNAL BINARY OPERATION is a binary function from _K_ × _S_ to _S_. This differs from a _binary operation on a set_ in the sense in that _K_ need not be _S_; its elements come from _outside_.

An example of an external binary operation is scalar multiplication in linear algebra. Here _K_ is a field and _S_ is a vector space over that field.

An external binary operation may alternatively be viewed as an action; _K_ is acting on _S_.

The dot product of two vectors maps from _S_ × _S_ to _K_, where _K_ is a field and _S_ is a vector space over _K_. It depends on authors whether it is considered as a binary operation.


See also

-   Truth table#Binary operations
-   Iterated binary operation
-   Operator (programming)
-   Ternary operation
-   Unary operation


Notes


References

-   -   -   -


External links

-

Binary_operations

[1]

[2]

[3]

[4]