Inverse_Function.png In mathematics, an INVERSE FUNCTION (or ANTI-FUNCTION[1]) is a function that "reverses" another function: if the function applied to an input gives a result of , then applying its inverse function to gives the result , and vice versa, i.e., if and only if .[2][3]

As an example, consider the real-valued function of a real variable given by . Thinking of this as a step-by-step procedure (namely, take a number , multiply it by 5, then subtract 7 from the result), to reverse this and get back from some output value, say , we should undo each step in reverse order. In this case that means that we should add 7 to and then divide the result by 5. In functional notation this inverse function would be given by,

$$g(y) = \frac{y + 7}{5}.$$
With we have that and .

Not all functions have inverse functions. In order for a function to have an inverse,[4] it must have the property that for every in there must be one, and only one in so that . This property ensures that a function will exist having the necessary relationship with .


Definitions

Inverse_Functions_Domain_and_Range.png

Let be a function whose domain is the set , and whose image (range) is the set . Then is _invertible_ if there exists a function with domain and image , with the property:

_f_(_x_) = _y_  ⇔  _g_(_y_) = _x_.

If is invertible, the function is unique,[5] which means that there is exactly one function satisfying this property (no more, no less). That function is then called _the_ inverse of , and is usually denoted as .[6]

Stated otherwise, a function, considered as a binary relation, has an inverse if and only if the converse relation is a function on the range , in which case the converse relation is the inverse function.[7]

Not all functions have an inverse. For a function to have an inverse, each element must correspond to no more than one ; a function with this property is called one-to-one or an injection. If is to be a function on , then each element must correspond to some . Functions with this property are called surjections. This property is satisfied by definition if is the image (range) of , but may not hold in a more general context. To be invertible a function must be both an injection and a surjection. Such functions are called bijections. The inverse of an injection that is not a bijection, that is, a function that is not a surjection, is only a partial function on , which means that for some , is undefined. If a function is invertible, then both it and its inverse function are bijections.

There is another convention used in the definition of functions. This can be referred to as the "set-theoretic" or "graph" definition using ordered pairs in which a codomain is never referred to.[8] Under this convention all functions are surjections,[9] and so, being a bijection simply means being an injection. Authors using this convention may use the phrasing that a function is invertible if and only if it is an injection.[10] The two conventions need not cause confusion as long as it is remembered that in this alternate convention the codomain of a function is always taken to be the range of the function.

Example: Squaring and square root functions

The function given by is not injective since each possible result _y_ (except 0) corresponds to two different starting points in – one positive and one negative, and so this function is not invertible. With this type of function it is impossible to deduce an input from its output. Such a function is called non-injective or, in some applications, information-losing.

If the domain of the function is restricted to the nonnegative reals, that is, the function is redefined to be with the same _rule_ as before, then the function is bijective and so, invertible.[11] The inverse function here is called the _(positive) square root function_.

Inverses and composition

If is an invertible function with domain and range , then

_f_^( − 1)( _f_(_x_) ) = _x_
, for every x ∈ X.

Using the composition of functions we can rewrite this statement as follows:

_f_^( − 1) ∘ _f_ = id_(_X_),

where is the identity function on the set ; that is, the function that leaves its argument unchanged. In category theory, this statement is used as the definition of an inverse morphism.

Considering function composition helps to understand the notation . Repeatedly composing a function with itself is called iteration. If is applied times, starting with the value , then this is written as ; so _f_ (_f_ (_x_))}}, etc. Since _x_}}, composing and yields , "undoing" the effect of one application of .

Note on notation

While the notation might be misunderstood, certainly denotes the multiplicative inverse of and has nothing to do with the inverse function of .

In keeping with the general notation, some English[12] authors use expressions like to denote the inverse of the sine function applied to (actually a partial inverse; see below)[13] Other authors feel that this may be confused with the notation for the multiplicative inverse of , which can be denoted as . To avoid any confusion, an inverse trigonometric function is often indicated by the prefix "arc" (for Latin _arcus_).[14][15][16] For instance, the inverse of the sine function is typically called the arcsine function, written as .[17][18][19] Similarly, the inverse of a hyperbolic function is indicated by the prefix "ar" (for Latin _area_).[20] For instance, the inverse of the hyperbolic sine function is typically written as .[21] Other inverse special functions are sometimes prefixed with the prefix "inv" if the ambiguity of the notation should be avoided.[22][23]


Properties

Since a function is a special type of binary relation, many of the properties of an inverse function correspond to properties of converse relations.

Uniqueness

If an inverse function exists for a given function , then it is unique.[24] This follows since the inverse function must be the converse relation which is completely determined by .

Symmetry

There is a symmetry between a function and its inverse. Specifically, if is an invertible function with domain and range , then its inverse has domain and range , and the inverse of is the original function . In symbols, for functions and ,[25]

_f_^( − 1) ∘ _f_ = id_(_X_)
and f ∘ f^( − 1) = id_(Y).

This statement is a consequence of the implication that for to be invertible it must be bijective. The involutory nature of the inverse can be concisely expressed by[26]

(_f_^( − 1))^( − 1) = _f_.

Composition_of_Inverses.png The inverse of a composition of functions is given by[27]

(_g_ ∘ _f_)^( − 1) = _f_^( − 1) ∘ _g_^( − 1).
Notice that the order of and have been reversed; to undo followed by , we must first undo and then undo .

For example, let and let . Then the composition is the function that first multiplies by three and then adds five,

(_g_ ∘ _f_)(_x_) = 3_x_ + 5.
To reverse this process, we must first subtract five, and then divide by three,

$$(g \circ f)^{-1}(x) = \tfrac13(x - 5).$$
This is the composition .

Self-inverses

If is a set, then the identity function on is its own inverse:

id_(_X_)^( − 1) = id_(_X_).

More generally, a function is equal to its own inverse if and only if the composition is equal to . Such a function is called an involution.


Inverses in calculus

Single-variable calculus is primarily concerned with functions that map real numbers to real numbers. Such functions are often defined through formulas, such as:

_f_(_x_) = (2_x_ + 8)³.
A surjective function from the real numbers to the real numbers possesses an inverse as long as it is one-to-one, i.e. as long as the graph of has, for each possible value only one corresponding value, and thus passes the horizontal line test.

The following table shows several standard functions and their inverses:

    {| class="wikitable" align="center"

|- !align="center"| Function !align="center"| Inverse !align="center"| Notes |- |align="center"| |align="center"| | |- |align="center"| |align="center"| | |- |align="center"| {{math |align="center"| [[division_(mathematics)| for all . Then for all in ; that is, is a right inverse to . However, is not a left inverse to , since, e.g., .

Preimages

If is any function (not necessarily invertible), the PREIMAGE (or INVERSE IMAGE) of an element is the set of all elements of that map to :

_f_^( − 1)({_y_}) = {_x_∈_X_:_f_(_x_)=_y_}.

The preimage of can be thought of as the image of under the (multivalued) full inverse of the function .

Similarly, if is any subset of , the preimage of is the set of all elements of that map to :

_f_^( − 1)(_S_) = {_x_∈_X_:_f_(_x_)∈_S_}.

For example, take a function , where . This function is not invertible for reasons discussed above. Yet preimages may be defined for subsets of the codomain:

_f_^( − 1)({1,4,9,16}) = {−4,−3,−2,−1,1,2,3,4}

The preimage of a single element – a singleton set – is sometimes called the _fiber_ of . When is the set of real numbers, it is common to refer to as a _level set_.


See also

-   Lagrange inversion theorem, gives the Taylor series expansion of the inverse function of an analytic function
-   Inverse Fourier transform
-   Reversible computing


Notes


References

-   -   -   -   -   -   -


Further reading

-   -   -   -


External links

-   -   Wikibook: Functions
-   Wolfram Mathworld: Inverse Function

Category:Basic concepts in set theory Category:Inverse functions Category:Unary operations

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

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]