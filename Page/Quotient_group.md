A QUOTIENT GROUP or FACTOR GROUP is a mathematical group obtained by aggregating similar elements of a larger group using an equivalence relation that preserves some of the group structure (the rest of the structure is "factored" out). For example, the cyclic group of addition modulo _n_ can be obtained from the group of integers under addition by identifying elements that differ by a multiple of _n_ and defining a group structure that operates on each such class (known as a congruence class) as a single entity. It is part of the mathematical field known as group theory.

In a quotient of a group, the equivalence class of the identity element is always a normal subgroup of the original group, and the other equivalence classes are precisely the cosets of that normal subgroup. The resulting quotient is written , where _G_ is the original group and _N_ is the normal subgroup. (This is pronounced "_G_ mod _N_", where "mod" is short for modulo.)

Much of the importance of quotient groups is derived from their relation to homomorphisms. The first isomorphism theorem states that the image of any group _G_ under a homomorphism is always isomorphic to a quotient of _G_. Specifically, the image of _G_ under a homomorphism is isomorphic to where ker(_φ_) denotes the kernel of _φ_.

The dual notion of a quotient group is a subgroup, these being the two primary ways of forming a smaller group from a larger one. Any normal subgroup has a corresponding quotient group, formed from the larger group by eliminating the distinction between elements of the subgroup. In category theory, quotient groups are examples of quotient objects, which are dual to subobjects. For other examples of quotient objects, see quotient ring, quotient space (linear algebra), quotient space (topology), and quotient set.


Definition and illustration

Given a group _G_ and a subgroup _H_, and an element _a_ in _G_, one can consider the corresponding left coset: _aH_ := { _ah_ : _h_ in _H_ }. Cosets are a natural class of subsets of a group; for example consider the abelian group _G_ of integers, with operation defined by the usual addition, and the subgroup _H_ of even integers. Then there are exactly two cosets: 0 + _H_, which are the even integers, and 1 + _H_, which are the odd integers (here we are using additive notation for the binary operation instead of multiplicative notation).

For a general subgroup _H_, it is desirable to define a compatible group operation on the set of all possible cosets, { _aH_ : _a_ in _G_ }. This is possible exactly when _H_ is a normal subgroup, see below. A subgroup _N_ of a group _G_ is normal if and only if the coset equality _aN_ = _Na_ holds for all _a_ in _G_. A normal subgroup of _G_ is denoted .

Definition

Let _N_ be a normal subgroup of a group _G_. Define the set _G_/_N_ to be the set of all left cosets of _N_ in _G_. That is, . Since the identity element _e_ ∈ _N_, _a_ ∈ _aN_. Define an operation on the set of cosets, _G_/_N_, as follows. For each _aN_ and _bN_ in _G_/_N_, the product of _aN_ and _bN_, (_aN_)(_bN_), is (_ab_)_N_. This works only because (_ab_)_N_ does not depend on the choice of the representatives, _a_ and _b_, of each left coset, _aN_ and _bN_. To prove this suppose _xN_ = _aN_ and _yN_ = _bN_ for some _x_, _y_ in _G_. Then

    _(ab)N_ = _a(bN)_ = _a(yN)_ = _a(Ny)_ = _(aN)y_ = _(xN)y_ = _x(Ny)_ = _x(yN)_ = _(xy)N_.

This depends on the fact that _N_ is a normal subgroup. It still remains to be shown that this condition is not only sufficient but necessary to define the operation on _G_/_N_, which will not be done here. Nonetheless, it can be checked that this operation on _G_/_N_ is always associative. _G_/_N_ has identity element _N_ and the inverse of element _aN_ can always be represented by _a_^(−1)_N_. Therefore, the set _G_/_N_ together with the operation defined by (_aN_)(_bN_) = (_ab_)_N_ forms a group; this is known as the QUOTIENT GROUP of _G_ by _N_.

Due to the normality of _N_, the left cosets and right cosets of _N_ in _G_ are the same, and so, _G_/_N_ could have been defined to be the set of right cosets of _N_ in _G_.

Example: Addition modulo 6

For example, consider the group with addition modulo 6: _G_ = {0, 1, 2, 3, 4, 5}. Consider the subgroup _N_ = {0, 3}, which is normal because _G_ is abelian. Then the set of (left) cosets is of size three:

    _G_/_N_ = { _a_+_N_ : _a_ ∈ _G_ } = { {0, 3}, {1, 4}, {2, 5} } = { 0+_N_, 1+_N_, 2+_N_ }.

The binary operation defined above makes this set into a group, known as the quotient group, which in this case is isomorphic to the cyclic group of order 3.


Motivation for the name "quotient"

The reason _G_/_N_ is called a quotient group comes from division of integers. When dividing 12 by 3 one obtains the answer 4 because one can regroup 12 objects into 4 subcollections of 3 objects. The quotient group is the same idea, although we end up with a group for a final answer instead of a number because groups have more structure than an arbitrary collection of objects.

To elaborate, when looking at _G_/_N_ with _N_ a normal subgroup of _G_, the group structure is used to form a natural "regrouping". These are the cosets of _N_ in _G_. Because we started with a group and normal subgroup, the final quotient contains more information than just the number of cosets (which is what regular division yields), but instead has a group structure itself.


Examples

Even and odd integers

Consider the group of integers Z (under addition) and the subgroup 2Z consisting of all even integers. This is a normal subgroup, because Z is abelian. There are only two cosets: the set of even integers and the set of odd integers, and therefore the quotient group Z/2Z is the cyclic group with two elements. This quotient group is isomorphic with the set with addition modulo 2; informally, it is sometimes said that Z/2Z _equals_ the set with addition modulo 2.

EXAMPLE FURTHER EXPLAINED...
Let γ(m)= remainders of $m \in \Z$ when dividing by 2.
Then γ(m) = 0 when m is even and γ(m) = 1 when m is odd.
By definition of γ, the kernel of γ,
ker(γ) $= \{ m \in \Z : \gamma(m)=0 \}$, is the set of all even integers.
Let H= ker(γ).
Then H is a subgroup, because the identity in $\Z$, which is 0, is in H,
the sum of two even integers is even and hence if m and n are in H, m + n is in H (closure)
and if m is even,  − m is also even and so H contains its inverses.
Define μ:$\to \Z_2$ as μ(aH) = γ(a) for $a\in\Z$
and is the quotient group of left cosets;  = {H, 1 + H}.
By the way we have defined μ, μ(aH) is 1 if a is odd and 0 if a is even.
Thus, μ is an isomorphism from to $\Z_2$.

Remainders of integer division

A slight generalization of the last example. Once again consider the group of integers Z under addition. Let _n_ be any positive integer. We will consider the subgroup _n_Z of Z consisting of all multiples of _n_. Once again _n_Z is normal in Z because Z is abelian. The cosets are the collection {_n_Z, 1+''N_Z, ..., (_n_−2)+_n_Z, (_n_−1)+_n''Z}. An integer _k_ belongs to the coset _r_+_n_Z, where _r_ is the remainder when dividing _k_ by _n_. The quotient Z/_n_Z can be thought of as the group of "remainders" modulo _n_. This is a cyclic group of order _n_.

Complex integer roots of 1

Normal_subgroup_illustration.svg _N_ in the twelfth roots of unity _G_.]] The twelfth roots of unity, which are points on the complex unit circle, form a multiplicative abelian group _G_, shown on the picture on the right as colored balls with the number at each point giving its complex argument. Consider its subgroup _N_ made of the fourth roots of unity, shown as red balls. This normal subgroup splits the group into three cosets, shown in red, green and blue. One can check that the cosets form a group of three elements (the product of a red element with a blue element is blue, the inverse of a blue element is green, etc.). Thus, the quotient group _G_/_N_ is the group of three colors, which turns out to be the cyclic group with three elements.

Sums of integers and real numbers

Consider the group of real numbers R under addition, and the subgroup Z of integers. The cosets of Z in R are all sets of the form _a_+Z, with a real number. Adding such cosets is done by adding the corresponding real numbers, and subtracting 1 if the result is greater than or equal to 1. The quotient group R/Z is isomorphic to the circle group S¹, the group of complex numbers of absolute value 1 under multiplication, or correspondingly, the group of rotations in 2D about the origin, that is, the special orthogonal group SO(2). An isomorphism is given by (see Euler's identity).

Matrices of real numbers

If _G_ is the group of invertible 3 × 3 real matrices, and _N_ is the subgroup of 3 × 3 real matrices with determinant 1, then _N_ is normal in _G_ (since it is the kernel of the determinant homomorphism). The cosets of _N_ are the sets of matrices with a given determinant, and hence _G_/_N_ is isomorphic to the multiplicative group of non-zero real numbers. The group _N_ is known as the special linear group SL(3).

Integer modular arithmetic

Consider the abelian group (that is, the set with addition modulo 4), and its subgroup . The quotient group is . This is a group with identity element , and group operations such as . Both the subgroup and the quotient group are isomorphic with Z₂.

Integer multiplication

Consider the multiplicative group G = Z_(n²)^(*). The set _N_ of _n_th residues is a multiplicative subgroup isomorphic to Z_(n)^(*). Then _N_ is normal in _G_ and the factor group _G_/_N_ has the cosets _N_, (1+_n_)_N_, (1+_n_)²N, ..., (1+_n_)^(_n_−1)N. The Paillier cryptosystem is based on the conjecture that it is difficult to determine the coset of a random element of _G_ without knowing the factorization of _n_.


Properties

The quotient group is isomorphic to the trivial group (the group with one element), and is isomorphic to _G_.

The order of , by definition the number of elements, is equal to _G_ : _N_{{!}}}}, the index of _N_ in _G_. If _G_ is finite, the index is also equal to the order of _G_ divided by the order of _N_. Note that may be finite, although both _G_ and _N_ are infinite (for example, ).

There is a "natural" surjective group homomorphism , sending each element _g_ of _G_ to the coset of _N_ to which _g_ belongs, that is: . The mapping _π_ is sometimes called the _canonical projection of G onto _. Its kernel is _N_.

There is a bijective correspondence between the subgroups of _G_ that contain _N_ and the subgroups of ; if _H_ is a subgroup of _G_ containing _N_, then the corresponding subgroup of is _π_(_H_). This correspondence holds for normal subgroups of _G_ and as well, and is formalized in the lattice theorem.

Several important properties of quotient groups are recorded in the fundamental theorem on homomorphisms and the isomorphism theorems.

If _G_ is abelian, nilpotent, solvable, cyclic or finitely generated, then so is .

If _H_ is a subgroup in a finite group _G_, and the order of _H_ is one half of the order of _G_, then _H_ is guaranteed to be a normal subgroup, so exists and is isomorphic to _C_₂. This result can also be stated as "any subgroup of index 2 is normal", and in this form it applies also to infinite groups. Furthermore, if _p_ is the smallest prime number dividing the order of a finite group, _G_, then if has order _p_, _H_ must be a normal subgroup of _G_.[1]

Given _G_ and a normal subgroup _N_, then _G_ is a group extension of by _N_. One could ask whether this extension is trivial or split; in other words, one could ask whether _G_ is a direct product or semidirect product of _N_ and . This is a special case of the extension problem. An example where the extension is not split is as follows: Let _G_ = Z₄ = {0, 1, 2, 3}, and _N_ = {0, 2}, which is isomorphic to Z₂. Then is also isomorphic to Z₂. But Z₂ has only the trivial automorphism, so the only semi-direct product of _N_ and is the direct product. Since Z₄ is different from , we conclude that _G_ is not a semi-direct product of _N_ and .


Quotients of Lie groups

If _G_ is a Lie group and _N_ is a normal Lie subgroup of _G_, the quotient is also a Lie group. In this case, the original group _G_ has the structure of a fiber bundle (specifically, a principal _N_-bundle), with base space and fiber _N_.

For a non-normal Lie subgroup _N_, the space of left cosets is not a group, but simply a differentiable manifold on which _G_ acts. The result is known as a homogeneous space.


See also

-   Group extension
-   Lattice theorem
-   Quotient category
-   Short exact sequence


Notes


References

-   -

Category:Group theory Group

[1]