Monad}} In abstract algebra, a branch of mathematics, a MONOID is an algebraic structure with a single associative binary operation and an identity element.

Monoids are semigroups with identity. They occur in several branches of mathematics.

For example, the functions from a set into itself form a monoid with respect to function composition. More generally, in category theory, the morphisms of an object to itself form a monoid, and, conversely, a monoid may be viewed as a category with a single object.

In computer science and computer programming, the set of strings built from a given set of characters is a free monoid. Transition monoids and syntactic monoids are used in describing finite-state machines. Trace monoids and history monoids provide a foundation for process calculi and concurrent computing.

In theoretical computer science, the study of monoids is fundamental for automata theory (Krohn–Rhodes theory), and formal language theory (star height problem).

See Semigroup for the history of the subject, and some other general properties of monoids.


Definition

Suppose that _S_ is a set and • is some binary operation , then _S_ with • is a MONOID if it satisfies the following two axioms:

Associativity: For all _a_, _b_ and _c_ in _S_, the equation  holds.
Identity element: There exists an element _e_ in _S_ such that for every element _a_ in _S_, the equations  hold.

In other words, a monoid is a semigroup with an identity element. It can also be thought of as a magma with associativity and identity. The identity element of a monoid is unique.[1] For this reason the identity is regarded as a constant, i. e. 0-ary (or nullary) operation. The monoid therefore is characterized by specification of the triple (_S_, • , _e_).

Depending on the context, the symbol for the binary operation may be omitted, so that the operation is denoted by juxtaposition; for example, the monoid axioms may be written (ab)c = a(bc) and ea = ae = a. This notation does not imply that it is numbers being multiplied.

A monoid in which each element has an inverse is a group.


Monoid structures

Submonoids

A SUBMONOID of a monoid is a subset _N_ of _M_ that is closed under the monoid operation and contains the identity element _e_ of _M_.[2][3] Symbolically, _N_ is a submonoid of _M_ if , whenever , and . _N_ is thus a monoid under the binary operation inherited from _M_.

Generators

A subset _S_ of _M_ is said to be a GENERATOR of _M_ if _M_ is the smallest set containing _S_ that is closed under the monoid operation, or equivalently _M_ is the result of applying the finitary closure operator to _S_. If there is a generator of _M_ that has finite cardinality, then _M_ is said to be FINITELY GENERATED. Not every set _S_ will generate a monoid, as the generated structure may lack an identity element.

Commutative monoid

A monoid whose operation is commutative is called a COMMUTATIVE MONOID (or, less commonly, an ABELIAN MONOID). Commutative monoids are often written additively. Any commutative monoid is endowed with its ALGEBRAIC preordering ≤, defined by if there exists _z_ such that .[4] An ORDER-UNIT of a commutative monoid _M_ is an element _u_ of _M_ such that for any element _x_ of _M_, there exists a positive integer _n_ such that . This is often used in case _M_ is the positive cone of a partially ordered abelian group _G_, in which case we say that _u_ is an order-unit of _G_.

Partially commutative monoid

A monoid for which the operation is commutative for some, but not all elements is a trace monoid; trace monoids commonly occur in the theory of concurrent computation.


Examples

-   Out of the 16 possible binary Boolean operators, each of the four that has a two sided identity is also commutative and associative and thus makes the set {False, True} a commutative monoid. Under the standard definitions, AND and XNOR have the identity True while XOR and OR have the identity False. The monoids from AND and OR are also idempotent while those from XOR and XNOR are not.
-   The natural numbers, N, form a commutative monoid under addition (identity element zero), or multiplication (identity element one). A submonoid of under addition is called a numerical monoid.
-   The positive integers, , form a commutative monoid under multiplication (identity element one).
-   Given a set , all subsets of form a commutative monoid under intersection operation (identity element is itself).
-   Given a set , all subsets of form a commutative monoid under union operation (identity element is the empty set).
-   Generalizing the previous example, every bounded semilattice is an idempotent commutative monoid.
    -   In particular, any bounded lattice can be endowed with both a meet- and a join- monoid structure. The identity elements are the lattice's top and its bottom, respectively. Being lattices, Heyting algebras and Boolean algebras are endowed with these monoid structures.
-   Every singleton set closed under a binary operation • forms the trivial (one-element) monoid, which is also the trivial group.
-   Every group is a monoid and every abelian group a commutative monoid.
-   Any semigroup may be turned into a monoid simply by adjoining an element not in and defining for all . This conversion of any semigroup to the monoid is done by the free functor between the category of semigroups and the category of monoids.[5]
    -   Thus, an idempotent monoid (sometimes known as _find-first_) may be formed by adjoining an identity element to the left zero semigroup over a set . The opposite monoid (sometimes called _find-last_) is formed from the right zero semigroup over .
        -   Adjoin an identity to the left-zero semigroup with two elements . Then the resulting idempotent monoid models the lexicographical order of a sequence given the orders of its elements, with _e_ representing equality.
-   The elements of any unital ring, with addition or multiplication as the operation.
    -   The integers, rational numbers, real numbers or complex numbers, with addition or multiplication as operation.[6]
    -   The set of all by matrices over a given ring, with matrix addition or matrix multiplication as the operation.
-   The set of all finite strings over some fixed alphabet forms a monoid with string concatenation as the operation. The empty string serves as the identity element. This monoid is denoted and is called the FREE MONOID over .
-   Given any monoid , the _opposite monoid_ has the same carrier set and identity element as , and its operation is defined by . Any commutative monoid is the opposite monoid of itself.
-   Given two sets and endowed with monoid structure (or, in general, any finite number of monoids, , their cartesian product is also a monoid (respectively, ). The associative operation and the identity element are defined pairwise.[7]
-   Fix a monoid . The set of all functions from a given set to is also a monoid. The identity element is a constant function mapping any value to the identity of ; the associative operation is defined pointwise.
-   Fix a monoid with the operation and identity element , and consider its power set consisting of all subsets of . A binary operation for such subsets can be defined by . This turns into a monoid with identity element . In the same way the power set of a group is a monoid under the product of group subsets.
-   Let be a set. The set of all functions forms a monoid under function composition. The identity is just the identity function. It is also called the FULL TRANSFORMATION MONOID of . If is finite with elements, the monoid of functions on is finite with elements.
-   Generalizing the previous example, let be a category and an object of . The set of all endomorphisms of , denoted , forms a monoid under composition of morphisms. For more on the relationship between category theory and monoids see below.
-   The set of homeomorphism classes of compact surfaces with the connected sum. Its unit element is the class of the ordinary 2-sphere. Furthermore, if denotes the class of the torus, and _b_ denotes the class of the projective plane, then every element _c_ of the monoid has a unique expression the form where is a positive integer and , or . We have .
-   Let ⟨f⟩ be a cyclic monoid of order , that is, ⟨f⟩ = {f⁰, f¹, …, f^(n − 1)}. Then f^(n) = f^(k) for some 0 ≤ k < n. In fact, each such gives a distinct monoid of order , and every cyclic monoid is isomorphic to one of these.
    Moreover, can be considered as a function on the points {0, 1, 2, …, n − 1} given by



        \begin{bmatrix}

0 & 1 & 2 & \dots & n-2 & n-1 \\ 1 & 2 & 3 & \dots & n-1 & k\end{bmatrix}

    or, equivalently

        $f(i) := \begin{cases} i+1, & \text{if }  0 \le i < n-1  \\ k,  & \text{if } i = n-1. \end{cases}$

    Multiplication of elements in ⟨f⟩ is then given by function composition.
    When k = 0 then the function is a permutation of {0, 1, 2, …, n − 1}, and gives the unique cyclic group of order .


Properties

In a monoid, one can define positive integer powers of an element _x_ : _x_¹ = _x_, and _x_^(_n_) = _x_ • ... • _x_ (_n_ times) for _n_ > 1 . The rule of powers _x_^(_n_\ +\ _p_) = _x_^(_n_) • _x_^(_p_) is obvious.

From the definition of a monoid, one can show that the identity element _e_ is unique. Then, for any _x_, one can set _x_⁰ = _e_ and the rule of powers is still true with nonnegative exponents.

It is possible to define invertible elements: an element _x_ is called invertible if there exists an element _y_ such that and . The element _y_ is called the inverse of _x_. If _y_ and _z_ are inverses of _x_, then by associativity . Thus inverses, if they exist, are unique.[8]

If _y_ is the inverse of _x_, one can define negative powers of _x_ by setting and (_n_ times) for . And the rule of exponents is still verified for all integers . This is why the inverse of _x_ is usually written . The set of all invertible elements in a monoid _M_, together with the operation •, forms a group. In that sense, every monoid contains a group (possibly only the trivial group consisting of only the identity).

However, not every monoid sits inside a group. For instance, it is perfectly possible to have a monoid in which two elements _a_ and _b_ exist such that holds even though _b_ is not the identity element. Such a monoid cannot be embedded in a group, because in the group we could multiply both sides with the inverse of _a_ and would get that , which isn't true. A monoid has the cancellation property (or is cancellative) if for all _a_, _b_ and _c_ in _M_, always implies and always implies . A commutative monoid with the cancellation property can always be embedded in a group via the Grothendieck construction. That is how the additive group of the integers (a group with operation +) is constructed from the additive monoid of natural numbers (a commutative monoid with operation + and cancellation property). However, a non-commutative cancellative monoid need not be embeddable in a group.

If a monoid has the cancellation property and is _finite_, then it is in fact a group. Proof: Fix an element _x_ in the monoid. Since the monoid is finite, for some . But then, by cancellation we have that where _e_ is the identity. Therefore, , so _x_ has an inverse.

The right- and left-cancellative elements of a monoid each in turn form a submonoid (i.e. obviously include the identity and not so obviously are closed under the operation). This means that the cancellative elements of any commutative monoid can be extended to a group.

It turns out that requiring the cancellative property in a monoid is not required to perform the Grothendieck construction – commutativity is sufficient. However, if the original monoid has an absorbing element then its Grothendieck group is the trivial group. Hence the homomorphism is, in general, not injective.

An INVERSE MONOID is a monoid where for every _a_ in _M_, there exists a unique _a_^(−1) in _M_ such that and . If an inverse monoid is cancellative, then it is a group.

In the opposite direction, a ZEROSUMFREE MONOID is an additively written monoid in which implies that and :[9] equivalently, that no element other than zero has an additive inverse.


Acts and operator monoids

Let _M_ be a monoid, with the binary operation denoted by • and the identity element denoted by _e_. Then a (left) _M_-ACT (or left act over _M_) is a set _X_ together with an operation which is compatible with the monoid structure as follows:

-   for all _x_ in _X_: ;
-   for all _a_, _b_ in _M_ and _x_ in _X_: .

This is the analogue in monoid theory of a (left) group action. Right _M_-acts are defined in a similar way. A monoid with an act is also known as an OPERATOR MONOID. Important examples include transition systems of semiautomata. A transformation semigroup can be made into an operator monoid by adjoining the identity transformation.


Monoid homomorphisms

A homomorphism between two monoids and is a function such that

-   for all _x_, _y_ in _M_

-   ,

where _e__(_M_) and _e__(_N_) are the identities on _M_ and _N_ respectively. Monoid homomorphisms are sometimes simply called MONOID MORPHISMS.

Not every semigroup homomorphism is a monoid homomorphism, since it may not map the identity to the identity of the target monoid, even though the element it maps the identity to will be an identity of the image of the mapping. In contrast, a semigroup homomorphism between groups is always a group homomorphism, as it necessarily preserves the identity. Since for monoids this isn't always true, it is necessary to state this as a separate requirement.

A bijective monoid homomorphism is called a monoid isomorphism. Two monoids are said to be isomorphic if there is a monoid isomorphism between them.


Equational presentation

Monoids may be given a PRESENTATION, much in the same way that groups can be specified by means of a group presentation. One does this by specifying a set of generators Σ, and a set of relations on the free monoid Σ^(∗). One does this by extending (finite) binary relations on Σ^(∗) to monoid congruences, and then constructing the quotient monoid, as above.

Given a binary relation , one defines its symmetric closure as . This can be extended to a symmetric relation by defining if and only if and for some strings with . Finally, one takes the reflexive and transitive closure of _E_, which is then a monoid congruence.

In the typical situation, the relation _R_ is simply given as a set of equations, so that R = {u₁ = v₁, ⋯, u_(n) = v_(n)}. Thus, for example,

    ⟨p, q | pq = 1⟩

is the equational presentation for the bicyclic monoid, and

    ⟨a, b | aba = baa, bba = bab⟩

is the plactic monoid of degree 2 (it has infinite order). Elements of this plactic monoid may be written as a^(i)b^(j)(ba)^(k) for integers _i_, _j_, _k_, as the relations show that _ba_ commutes with both _a_ and _b_.


Relation to category theory

Monoids can be viewed as a special class of categories. Indeed, the axioms required of a monoid operation are exactly those required of morphism composition when restricted to the set of all morphisms whose source and target is a given object.[10] That is,

    _A monoid is, essentially, the same thing as a category with a single object._

More precisely, given a monoid , one can construct a small category with only one object and whose morphisms are the elements of _M_. The composition of morphisms is given by the monoid operation •.

Likewise, monoid homomorphisms are just functors between single object categories.[11] So this construction gives an equivalence between the category of (small) monoids MON and a full subcategory of the category of (small) categories CAT. Similarly, the category of groups is equivalent to another full subcategory of CAT.

In this sense, category theory can be thought of as an extension of the concept of a monoid. Many definitions and theorems about monoids can be generalised to small categories with more than one object. For example, a quotient of a category with one object is just a quotient monoid.

Monoids, just like other algebraic structures, also form their own category, MON, whose objects are monoids and whose morphisms are monoid homomorphisms.[12]

There is also a notion of monoid object which is an abstract definition of what is a monoid in a category. A monoid object in SET is just a monoid.


Monoids in computer science

In computer science, many abstract data types can be endowed with a monoid structure. In a common pattern, a sequence of elements of a monoid is "folded" or "accumulated" to produce a final value. For instance, many iterative algorithms need to update some kind of "running total" at each iteration; this pattern may be elegantly expressed by a monoid operation. Alternatively, the associativity of monoid operations ensures that the operation can be parallelized by employing a prefix sum or similar algorithm, in order to utilize multiple cores or processors efficiently.

Given a sequence of values of type _M_ with identity element ε and associative operation •, the _fold_ operation is defined as follows:

    $\mathrm{fold}: M^{*} \rarr M = l \mapsto \begin{cases} \varepsilon & \mbox{if } l = \mathrm{nil} \\ m \bullet \mathrm{fold} \, l' & \mbox{if } l = \mathrm{cons} \, m \, l' \end{cases}$

In addition, any data structure can be 'folded' in a similar way, given a serialization of its elements. For instance, the result of "folding" a binary tree might differ depending on pre-order vs. post-order tree traversal.


MapReduce

An application of monoids in computer science is so-called MapReduce programming model (see Encoding Map-Reduce As A Monoid With Left Folding). MapReduce, in computing, consists of two or three operations. Given a dataset, "Map" consists of mapping arbitrary data to elements of a specific monoid. "Reduce" consists of folding those elements, so that in the end we produce just one element.

For example, if we have a multiset, in a program it is represented as a map from elements to their numbers. Elements are called keys in this case. The number of distinct keys may be too big, and in this case the multiset is being sharded. To finalize reduction properly, the "Shuffling" stage regroups the data among the nodes. If we do not need this step, the whole Map/Reduce consists of mapping and reducing; both operation are parallelizable, the former due to its element-wise nature, the latter due to associativity of the monoid.


Complete monoids

A COMPLETE MONOID is a commutative monoid equipped with an infinitary sum operation Σ_(I) for any index set such that:[13][14][15][16]

    ∑_(i ∈ ∅)m_(i) = 0; ∑_(i ∈ {j})m_(i) = m_(j); ∑_(i ∈ {j, k})m_(i) = m_(j) + m_(k)  for j ≠ k

and

    ∑_(j ∈ J)∑_(i ∈ I_(j))m_(i) = ∑_(i ∈ I)(m_(i))  if ⋃_(j ∈ J)I_(j) = I and I_(j) ∩ I_(j′) = ∅  for j ≠ j′

A CONTINUOUS MONOID is an ordered commutative monoid in which every directed set has a least upper bound compatible with the monoid operation:

    a + sup S = sup (a + S) .

These two concepts are closely related: a continuous monoid is a complete monoid in which the infinitary sum may be defined as

    ∑_(I)a_(i) = sup ∑_(E)a_(i)

where the supremum on the right runs over all finite subsets of and each sum on the right is a finite sum in the monoid.[17]


See also

-   Green's relations
-   Monad (functional programming)
-   Semiring and Kleene algebra
-   Star height problem
-   Vedic square

+------------------------------------------------------------------------------------+
| +--------------------------------------------------------------------------------+ |
| | +-------+--------------------------------------------------------------------+ | |
| | | Group | +----------------------------------------------------------------+ | | |
| | |       | | +--------+---------------------------------------------------+ | | | |
| | |       | | | Monoid | +-----------------------------------------------+ | | | | |
| | |       | | |        | | +-----------+-------------------------------+ | | | | | |
| | |       | | |        | | | Semigroup | +---------------------------+ | | | | | | |
| | |       | | |        | | |           | | +-------+---------------+ | | | | | | | |
| | |       | | |        | | |           | | | Magma |   ----------- | | | | | | | | |
| | |       | | |        | | |           | | |       |   Operation   | | | | | | | | |
| | |       | | |        | | |           | | |       |   Closure     | | | | | | | | |
| | |       | | |        | | |           | | |       |   ----------- | | | | | | | | |
| | |       | | |        | | |           | | +-------+---------------+ | | | | | | | |
| | |       | | |        | | |           | +---------------------------+ | | | | | | |
| | |       | | |        | | |           | | Associativity             | | | | | | | |
| | |       | | |        | | |           | +---------------------------+ | | | | | | |
| | |       | | |        | | +-----------+-------------------------------+ | | | | | |
| | |       | | |        | +-----------------------------------------------+ | | | | |
| | |       | | |        | | Identity                                      | | | | | |
| | |       | | |        | +-----------------------------------------------+ | | | | |
| | |       | | +--------+---------------------------------------------------+ | | | |
| | |       | +----------------------------------------------------------------+ | | |
| | |       | | Inverses                                                       | | | |
| | |       | +----------------------------------------------------------------+ | | |
| | +-------+--------------------------------------------------------------------+ | |
| +--------------------------------------------------------------------------------+ |
+------------------------------------------------------------------------------------+


Notes


References

-   -   -   -   -


External links

-   -   -

Category:Algebraic structures Category:Category theory Category:Semigroup theory

[1] If both _e_₁ and _e_₂ satisfy the above equations, then _e_₁ = _e_₁ • _e_₂ = _e_₂.

[2] Jacobson (2009)

[3] Some authors omit the requirement that a submonoid must contain the identity element from its definition, requiring only that it have _an_ identity element, which can be distinct from that of _M_.

[4]

[5] .

[6] Jacobson (2009), p. 29, examples 1, 2, 4 & 5.

[7] Jacobson (2009), p. 35

[8] Jacobson, I.5. p. 22

[9]

[10]

[11]

[12]

[13] Droste, M., & Kuich, W. (2009). Semirings and Formal Power Series. _Handbook of Weighted Automata_, 3–28. , pp. 7–10

[14]

[15]

[16]

[17]