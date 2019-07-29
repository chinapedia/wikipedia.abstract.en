Group_homomorphism_ver.2.svg of N.]]

In mathematics, given two groups, (_G_, ∗) and (_H_, ·), a GROUP HOMOMORPHISM from (_G_, ∗) to (_H_, ·) is a function _h_ : _G_ → _H_ such that for all _u_ and _v_ in _G_ it holds that

_h_(_u_ * _v_) = _h_(_u_) ⋅ _h_(_v_)

where the group operation on the left hand side of the equation is that of _G_ and on the right hand side that of _H_.

From this property, one can deduce that _h_ maps the identity element _e_(G)_ of _G_ to the identity element _e_(H)_ of _H_,

_h_(_e__(_G_)) = _e__(_H_)

and it also maps inverses to inverses in the sense that

_h_(_u_^( − 1)) = _h_(_u_)^( − 1). 

Hence one can say that _h_ "is compatible with the group structure".

Older notations for the homomorphism _h_(_x_) may be _x_^(_h_) or _x__(_h_), though this may be confused as an index or a general subscript. A more recent trend is to write group homomorphisms on the right of their arguments, omitting brackets, so that _h_(_x_) becomes simply _x h_. This approach is especially prevalent in areas of group theory where automata play a role, since it accords better with the convention that automata read words from left to right.

In areas of mathematics where one considers groups endowed with additional structure, a _homomorphism_ sometimes means a map which respects not only the group structure (as above) but also the extra structure. For example, a homomorphism of topological groups is often required to be continuous.


Intuition

The purpose of defining a group homomorphism is to create functions that preserve the algebraic structure. An equivalent definition of group homomorphism is: The function _h_ : _G_ → _H_ is a group homomorphism if whenever

_a_ ∗ _b_ = _c_   we have   _h_(_a_) ⋅ _h_(_b_) = _h_(_c_).

In other words, the group _H_ in some sense has a similar algebraic structure as _G_ and the homomorphism _h_ preserves that.


Types of group homomorphism

Monomorphism: A group homomorphism that is injective (or, one-to-one); i.e., preserves distinctness.
Epimorphism: A group homomorphism that is surjective (or, onto); i.e., reaches every point in the codomain.
Isomorphism: A group homomorphism that is bijective; i.e., injective and surjective. Its inverse is also a group homomorphism. In this case, the groups _G_ and _H_ are called _isomorphic_; they differ only in the notation of their elements and are identical for all practical purposes.
Endomorphism: A homomorphism, _h_: _G_ → _G_; the domain and codomain are the same. Also called an endomorphism of _G_.
Automorphism: An endomorphism that is bijective, and hence an isomorphism. The set of all automorphisms of a group _G_, with functional composition as operation, forms itself a group, the _automorphism group_ of _G_. It is denoted by Aut(_G_). As an example, the automorphism group of (Z, +) contains only two elements, the identity transformation and multiplication with −1; it is isomorphic to Z/2Z.


Image and kernel

We define the _kernel of h_ to be the set of elements in _G_ which are mapped to the identity in _H_

    ker (h) ≡ {u∈G:h(u)=e_(H)}.

and the _image of h_ to be

    im (h) ≡ h(G) ≡ {h(u):u∈G}.

The kernel and image of a homomorphism can be interpreted as measuring how close it is to being an isomorphism. The first isomorphism theorem states that the image of a group homomorphism, _h_(_G_) is isomorphic to the quotient group _G_/ker _h_.

The kernel of h is a normal subgroup of _G_ and the image of h is a subgroup of _H_:

    \begin{align}

 h\left(g^{-1} \circ u \circ g\right) &= h(g)^{-1} \cdot h(u) \cdot h(g) \\
                                      &= h(g)^{-1} \cdot e_H  \cdot h(g) \\
                                      &= h(g)^{-1} \cdot h(g) = e_H.

\end{align}

If and only if {_e__(_G_)}}}, the homomorphism, _h_, is a _group monomorphism_; i.e., _h_ is injective (one-to-one). Injection directly gives that there is a unique element in the kernel, and a unique element in the kernel gives injection:

$$\begin{align}
                  &&                           h(g_1) &= h(g_2) \\
  \Leftrightarrow &&         h(g_1) \cdot h(g_2)^{-1} &= e_H \\
  \Leftrightarrow && h\left(g_1 \circ g_2^{-1}\right) &= e_H,\  \operatorname{ker}(h) = \{e_G\} \\
  \Rightarrow     &&               g_1 \circ g_2^{-1} &= e_G \\
  \Leftrightarrow &&                              g_1 &= g_2
\end{align}$$


Examples

-   Consider the cyclic group Z/3Z = {0, 1, 2} and the group of integers Z with addition. The map _h_ : Z → Z/3Z with _h_(_u_) = _u_ mod 3 is a group homomorphism. It is surjective and its kernel consists of all integers which are divisible by 3.

-   The exponential map yields a group homomorphism from the group of real numbers R with addition to the group of non-zero real numbers R* with multiplication. The kernel is {0} and the image consists of the positive real numbers.
-   The exponential map also yields a group homomorphism from the group of complex numbers C with addition to the group of non-zero complex numbers C* with multiplication. This map is surjective and has the kernel {2π_ki_ : _k_ ∈ Z}, as can be seen from Euler's formula. Fields like R and C that have homomorphisms from their additive group to their multiplicative group are thus called exponential fields.


The category of groups

If and are group homomorphisms, then so is . This shows that the class of all groups, together with group homomorphisms as morphisms, forms a category.


Homomorphisms of abelian groups

If _G_ and _H_ are abelian (i.e., commutative) groups, then the set of all group homomorphisms from _G_ to _H_ is itself an abelian group: the sum of two homomorphisms is defined by

    (_h_ + _k_)(_u_) = _h_(_u_) + _k_(_u_)    for all _u_ in _G_.

The commutativity of _H_ is needed to prove that is again a group homomorphism.

The addition of homomorphisms is compatible with the composition of homomorphisms in the following sense: if _f_ is in , _h_, _k_ are elements of , and _g_ is in , then

       and    .

Since the composition is associative, this shows that the set End(_G_) of all endomorphisms of an abelian group forms a ring, the _endomorphism ring_ of _G_. For example, the endomorphism ring of the abelian group consisting of the direct sum of _m_ copies of Z/_n_Z is isomorphic to the ring of _m_-by-_m_ matrices with entries in Z/_n_Z. The above compatibility also shows that the category of all abelian groups with group homomorphisms forms a preadditive category; the existence of direct sums and well-behaved kernels makes this category the prototypical example of an abelian category.


See also

-   Fundamental theorem on homomorphisms
-   Ring homomorphism


References

-   -


External links

-   -

Category:Group theory Category:Morphisms