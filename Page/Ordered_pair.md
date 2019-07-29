In mathematics, an ORDERED PAIR (_a_, _b_) is a pair of objects. The order in which the objects appear in the pair is significant: the ordered pair (_a_, _b_) is different from the ordered pair (_b_, _a_) unless _a_ = _b_. (In contrast, the unordered pair {_a_, _b_} equals the unordered pair {_b_, _a_}.)

Ordered pairs are also called 2-tuples, or sequences (sometimes, lists in a computer science context) of length 2; ordered pairs of scalars are also called 2-dimensional vectors. The entries of an ordered pair can be other ordered pairs, enabling the recursive definition of ordered _n_-tuples (ordered lists of _n_ objects). For example, the ordered triple (_a_,_b_,_c_) can be defined as (_a_, (_b_,_c_)), i.e., as one pair nested in another.

In the ordered pair (_a_, _b_), the object _a_ is called the _first entry_, and the object _b_ the _second entry_ of the pair. Alternatively, the objects are called the first and second _components_, the first and second _coordinates_, or the left and right _projections_ of the ordered pair.

Cartesian products and binary relations (and hence functions) are defined in terms of ordered pairs.


Generalities

Let (a₁, b₁) and (a₂, b₂) be ordered pairs. Then the _characteristic_ (or _defining_) _property_ of the ordered pair is:

(_a_₁, _b_₁) = (_a_₂, _b_₂) if and only if _a_₁ = _a_₂ and _b_₁ = _b_₂.

The set of all ordered pairs whose first entry is in some set _A_ and whose second entry is in some set _B_ is called the Cartesian product of _A_ and _B_, and written _A_ × _B_. A binary relation between sets _A_ and _B_ is a subset of _A_ × _B_.

The notation may be used for other purposes, most notably as denoting open intervals on the real number line. In such situations, the context will usually make it clear which meaning is intended.[1][2] For additional clarification, the ordered pair may be denoted by the variant notation ⟨a, b⟩, but this notation also has other uses.

The left and right projection of a pair _p_ is usually denoted by ₁(_p_) and ₂(_p_), or by _(_ℓ_)(_p_) and _(_r_)(_p_), respectively. In contexts where arbitrary _n_-tuples are considered, (_t_) is a common notation for the _i_-th component of an _n_-tuple _t_.


Informal and formal definitions

In some introductory mathematics textbooks an informal (or intuitive) definition of ordered pair is given, such as

  For any two objects and , the ordered pair is a notation specifying the two objects and , in that order.[3]

This is usually followed by a comparison to a set of two elements; pointing out that in a set and must be different, but in an ordered pair they may be equal and that while the order of listing the elements of a set doesn't matter, in an ordered pair changing the order of distinct entries changes the ordered pair.

This "definition" is unsatisfactory because it is only descriptive and is based on an intuitive understanding of _order_. However, as is sometimes pointed out, no harm will come from relying on this description and almost everyone thinks of ordered pairs in this manner.[4]

A more satisfactory approach is to observe that the characteristic property of ordered pairs given above is all that is required to understand the role of ordered pairs in mathematics. Hence the ordered pair can be taken as a primitive notion, whose associated axiom is the characteristic property. This was the approach taken by the N. Bourbaki group in its _Theory of Sets_, published in 1954. However, this approach also has its drawbacks as both the existence of ordered pairs and their characteristic property must be axiomatically assumed.[5]

Another way to rigorously deal with ordered pairs is to define them formally in the context of set theory. This can be done in several ways and has the advantage that existence and the characteristic property can be proven from the axioms that define the set theory. One of the most cited versions of this definition is due to Kuratowski (see below) and his definition was used in the second edition of Bourbaki's _Theory of Sets_, published in 1970. Even those mathematical textbooks that give an informal definition of ordered pairs will often mention the formal definition of Kuratowski in an exercise.


Defining the ordered pair using set theory

If one agrees that set theory is an appealing foundation of mathematics, then all mathematical objects must be defined as sets of some sort. Hence if the ordered pair is not taken as primitive, it must be defined as a set.[6] Several set-theoretic definitions of the ordered pair are given below.

Wiener's definition

Norbert Wiener proposed the first set theoretical definition of the ordered pair in 1914:[7]

(_a_,_b_) := {{{_a_}, ∅}, {{_b_}}}.
He observed that this definition made it possible to define the types of _Principia Mathematica_ as sets. _Principia Mathematica_ had taken types, and hence relations of all arities, as primitive.

Wiener used {{_b_}} instead of {_b_} to make the definition compatible with type theory where all elements in a class must be of the same "type". With _b_ nested within an additional set, its type is equal to {{a}, ∅}'s.

Hausdorff's definition

About the same time as Wiener (1914), Felix Hausdorff proposed his definition:

    (a, b) := {{a,1},{b,2}}

"where 1 and 2 are two distinct objects different from a and b."[8]

Kuratowski's definition

In 1921 Kazimierz Kuratowski offered the now-accepted definition[9][10] of the ordered pair (_a_, _b_):

(_a_, _b_)_(_K_) := {{_a_}, {_a_, _b_}}.
Note that this definition is used even when the first and the second coordinates are identical:

    (x, x)_(K) = {{x}, {x, x}} = {{x}, {x}} = {{x}}

Given some ordered pair _p_, the property "_x_ is the first coordinate of _p_" can be formulated as:

∀_Y_ ∈ _p_ : _x_ ∈ _Y_.
The property "_x_ is the second coordinate of _p_" can be formulated as:

$$(\exist Y\in p:x\in Y)\land(\forall Y_1,Y_2\in p:Y_1\ne Y_2\rarr (x\notin Y_1\lor x \notin Y_2)).$$
In the case that the left and right coordinates are identical, the right conjunct $(\forall Y_1,Y_2\in p:Y_1\ne Y_2\rarr (x\notin Y_1 \lor x \notin Y_2))$ is trivially true, since _Y_₁ ≠ _Y_₂ is never the case.

This is how we can extract the first coordinate of a pair (using the notation for arbitrary intersection and arbitrary union):

_π_₁(_p_) = ⋃⋂_p_.

This is how the second coordinate can be extracted:

$$\pi_2(p) = \bigcup\{x \in \bigcup p \mid \bigcup p \neq \bigcap p \rarr x \notin \bigcap p \}.$$

Variants

The above Kuratowski definition of the ordered pair is "adequate" in that it satisfies the characteristic property that an ordered pair must satisfy, namely that (a, b) = (x, y) ↔ (a = x) ∧ (b = y). In particular, it adequately expresses 'order', in that (a, b) = (b, a) is false unless b = a. There are other definitions, of similar or lesser complexity, that are equally adequate:

-   (a, b)_(reverse) := {{b}, {a, b}};
-   (a, b)_(short) := {a, {a, b}};
-   (a, b)₀₁ := {{0, a}, {1, b}}.[11]

The REVERSE definition is merely a trivial variant of the Kuratowski definition, and as such is of no independent interest. The definition SHORT is so-called because it requires two rather than three pairs of braces. Proving that SHORT satisfies the characteristic property requires the Zermelo–Fraenkel set theory axiom of regularity.[12] Moreover, if one uses von Neumann's set-theoretic construction of the natural numbers, then 2 is defined as the set {0, 1} = {0, {0}}, which is indistinguishable from the pair (0, 0)_(short). Yet another disadvantage of the SHORT pair is the fact, that even if _a_ and _b_ are of the same type, the elements of the SHORT pair are not. (However, if _a_ = _b_ then the SHORT version keeps having cardinality 2, which is something one might expect of any "pair", including any "ordered pair". Also note that the SHORT version is used in Tarski–Grothendieck set theory, upon which the Mizar system is founded.)

Proving that definitions satisfy the characteristic property

Prove: (_a_, _b_) = (_c_, _d_) if and only if _a_ = _c_ and _b_ = _d_.

KURATOWSKI:
_If_. If _a = c_ and _b = d_, then {{_a_}, {_a, b_}} = {{_c_}, {_c, d_}}. Thus (_a, b_)_(K) = (_c, d_)_(K).

_Only if_. Two cases: _a_ = _b_, and _a_ ≠ _b_.

If _a_ = _b_:

    (_a, b_)_(K) = {{_a_}, {_a, b_}} = {{_a_}, {_a, a_}} = {{_a_}}.
    (_c, d_)_(K) = {{_c_}, {_c, d_}} = {{_a_}}.
    Thus {_c_} = {_c, d_} = {_a_}, which implies _a_ = _c_ and _a_ = _d_. By hypothesis, _a_ = _b_. Hence _b_ = _d_.

If _a_ ≠ _b_, then (_a, b_)_(K) = (_c, d_)_(K) implies {{_a_}, {_a, b_}} = {{_c_}, {_c, d_}}.

    Suppose {_c, d_} = {_a_}. Then _c = d = a_, and so {{_c_}, {_c, d_}} = {{_a_}, {_a, a_}} = {{_a_}, {_a_}} = {{_a_}}. But then {{_a_}, {_a, b_}} would also equal {{_a_}}, so that _b = a_ which contradicts _a_ ≠ _b_.

    Suppose {_c_} = {_a, b_}. Then _a = b = c_, which also contradicts _a_ ≠ _b_.

    Therefore {_c_} = {_a_}, so that _c = a_ and {_c, d_} = {_a, b_}.

    If _d = a_ were true, then {_c, d_} = {_a, a_} = {_a_} ≠ {_a, b_}, a contradiction. Thus _d = b_ is the case, so that _a = c_ and _b = d_.

REVERSE:
(_a, b_)_(reverse) = {{_b_}, {_a, b_}} = {{_b_}, {_b, a_}} = (_b, a_)_(K).

_If_. If (_a, b_)_(reverse) = (_c, d_)_(reverse), (_b, a_)_(K) = (_d, c_)_(K). Therefore _b = d_ and _a = c_.

_Only if_. If _a = c_ and _b = d_, then {{_b_}, {_a, b_}} = {{_d_}, {_c, d_}}. Thus (_a, b_)_(reverse) = (_c, d_)_(reverse).

SHORT:[13]

_If_: If _a = c_ and _b = d_, then {_a_, {_a, b_}} = {_c_, {_c, d_}}. Thus (_a, b_)_(short) = (_c, d_)_(short).

_Only if_: Suppose {_a_, {_a, b_}} = {_c_, {_c, d_}}. Then _a_ is in the left hand side, and thus in the right hand side. Because equal sets have equal elements, one of _a = c_ or _a_ = {_c, d_} must be the case.

    If _a_ = {_c, d_}, then by similar reasoning as above, {_a, b_} is in the right hand side, so {_a, b_} = _c_ or {_a, b_} = {_c, d_}.

        If {_a, b_} = _c_ then _c_ is in {_c, d_} = _a_ and _a_ is in _c_, and this combination contradicts the axiom of regularity, as {_a, c_} has no minimal element under the relation "element of."
        If {_a, b_} = {_c, d_}, then _a_ is an element of _a_, from _a_ = {_c, d_} = {_a, b_}, again contradicting regularity.

    Hence _a = c_ must hold.

Again, we see that {_a, b_} = _c_ or {_a, b_} = {_c, d_}.

    The option {_a, b_} = _c_ and _a = c_ implies that _c_ is an element of _c_, contradicting regularity.
    So we have _a = c_ and {_a, b_} = {_c, d_}, and so: {_b_} = {_a, b_} \ {_a_} = {_c, d_} \ {_c_} = {_d_}, so _b_ = _d_.

Quine–Rosser definition

Rosser (1953)[14] employed a definition of the ordered pair due to Quine which requires a prior definition of the natural numbers. Let $\N$ be the set of natural numbers and define first

$$\sigma(x) := \begin{cases}
      x, & \text{if }x \not\in \N, \\
      x+1, & \text{if }x \in \N.
    \end{cases}$$
σ increments its argument, if it is a natural number and leaves it as is otherwise. Note: 0 does not appear as functional value of σ. As $x \smallsetminus \N$ is the set of the elements of x not in $\N$ go on with

$$\varphi(x) := \sigma[x] = \{\sigma(\alpha)\mid\alpha \in x\} = (x \smallsetminus \N) \cup \{n+1 : n \in (x \cap \N) \}.$$
This is the (elementwise) image of a set x under φ, sometimes denoted by σ″x as well. Applying this function to a set _x_ simply increments every natural number in it. In particular, φ(x) does never contain the number 0, so that for any sets _x_ and _y_,

_φ_(_x_) ≠ {0} ∪ _φ_(_y_).
Further, define

_ψ_(_x_) := _σ_[_x_] ∪ {0} = _φ_(_x_) ∪ {0}.
By this, ψ(x) does always contain the number 0.

Finally, define the ordered pair (_A_, _B_) as the disjoint union

(_A_, _B_) := _φ_[_A_] ∪ _ψ_[_B_] = {_φ_(_a_) : _a_ ∈ _A_} ∪ {_φ_(_b_) ∪ {0} : _b_ ∈ _B_}.
(which is φ″A ∪ ψ″B in alternate notation).

Extracting all the elements of the pair that do not contain 0 and undoing φ yields _A_. Likewise, _B_ can be recovered from the elements of the pair that do contain 0.[15]

In type theory and in outgrowths thereof such as the axiomatic set theory NF, the Quine–Rosser pair has the same type as its projections and hence is termed a "type-level" ordered pair. Hence this definition has the advantage of enabling a function, defined as a set of ordered pairs, to have a type only 1 higher than the type of its arguments. This definition works only if the set of natural numbers is infinite. This is the case in NF, but not in type theory or in NFU. J. Barkley Rosser showed that the existence of such a type-level ordered pair (or even a "type-raising by 1" ordered pair) implies the axiom of infinity. For an extensive discussion of the ordered pair in the context of Quinian set theories, see Holmes (1998).[16]

Cantor–Frege definition

Early in the development of the set theory, before paradoxes were discovered, Cantor followed Frege by defining the ordered pair of two sets as the class of all relations that hold between these sets, assuming that the notion of relation is primitive:[17]

(_x_, _y_) = {_R_ : _x__R__y_}.

This definition is inadmissible in most modern formalized set theories and is methodologically similar to defining the cardinal of a set as the class of all sets equipotent with the given set.[18]

Morse definition

Morse–Kelley set theory makes free use of proper classes.[19] Morse defined the ordered pair so that its projections could be proper classes as well as sets. (The Kuratowski definition does not allow this.) He first defined ordered pairs whose projections are sets in Kuratowski's manner. He then _redefined_ the pair

(_x_, _y_) = ({0} × _s_(_x_)) ∪ ({1} × _s_(_y_))

where the component Cartesian products are Kuratowski pairs of sets and where

_s_(_x_) = {∅} ∪ {{_t_} ∣ _t_ ∈ _x_}

This renders possible pairs whose projections are proper classes. The Quine–Rosser definition above also admits proper classes as projections. Similarly the triple is defined as a 3-tuple as follows:

(_x_, _y_, _z_) = ({0} × _s_(_x_)) ∪ ({1} × _s_(_y_)) ∪ ({2} × _s_(_z_))

The use of the singleton set s(x) which has an inserted empty set allows tuples to have the uniqueness property that if _a_ is an _n_-tuple and b is an _m_-tuple and _a_ = _b_ then _n_ = _m_. Ordered triples which are defined as ordered pairs do not have this property with respect to ordered pairs.


Category theory

A category-theoretic product _A_ × _B_ in a category of sets represents the set of ordered pairs, with the first element coming from _A_ and the second coming from _B_. In this context the characteristic property above is a consequence of the universal property of the product and the fact that elements of a set _X_ can be identified with morphisms from 1 (a one element set) to _X_. While different objects may have the universal property, they are all naturally isomorphic.


References

Category:Basic concepts in set theory Category:Order theory Category:Type theory

[1]

[2]

[3]

[4]

[5]

[6] Quine has argued that the set-theoretical implementations of the concept of the ordered pair is a paradigm for the clarification of philosophical ideas (see "Word and Object", section 53). The general notion of such definitions or implementations are discussed in Thomas Forster "Reasoning about theoretical entities".

[7] Wiener's paper "A Simplification of the logic of relations" is reprinted, together with a valuable commentary on pages 224ff in van Heijenoort, Jean (1967), _From Frege to Gödel: A Source Book in Mathematical Logic, 1979–1931_, Harvard University Press, Cambridge MA, (pbk.). van Heijenoort states the simplification this way: "By giving a definition of the ordered pair of two elements in terms of class operations, the note reduced the theory of relations to that of classes".

[8] cf introduction to Wiener's paper in van Heijenoort 1967:224

[9] cf introduction to Wiener's paper in van Heijenoort 1967:224. van Heijenoort observes that the resulting set that represents the ordered pair "has a type higher by 2 than the elements (when they are of the same type)"; he offers references that show how, under certain circumstances, the type can be reduced to 1 or 0.

[10]

[11] This differs from Hausdorff's definition in not requiring the two elements 0 and 1 to be distinct from _a_ and _b_.

[12] Tourlakis, George (2003) _Lectures in Logic and Set Theory. Vol. 2: Set Theory_. Cambridge Univ. Press. Proposition III.10.1.

[13] For a formal Metamath proof of the adequacy of SHORT, see here (opthreg). Also see Tourlakis (2003), Proposition III.10.1.

[14] J. Barkley Rosser, 1953. _Logic for Mathematicians_. McGraw–Hill.

[15] Holmes, M. Randall: _On Ordered Pairs_, on: Boise State, March 29, 2009. The author uses σ₁ for φ and σ₂ for ψ.

[16] Holmes, M. Randall (1998) _Elementary Set Theory with a Universal Set_. Academia-Bruylant. The publisher has graciously consented to permit diffusion of this monograph via the web.

[17]  §144

[18]  p. 22, footnote 59

[19]