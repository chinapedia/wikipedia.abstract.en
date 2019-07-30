In mathematics, a BINARY RELATION over two sets _A_ and _B_ is a set of ordered pairs (_a_, _b_) consisting of elements _a_ of _A_ and elements _b_ of _B_. That is, it is a subset of the Cartesian product . It encodes the information of relation: an element _a_ is related to an element _b_ if and only if the pair (_a_, _b_) belongs to the set.

An example is the "divides" relation over the set of prime numbers P and the set of integers Z, in which each prime _p_ is related to each integer _z_ that is a multiple of _p_, but not to an integer that is not a multiple of _p_. In this relation, for instance, the prime 2 is related to numbers such as −4, 0, 6, 10, but not 1 or 9, and the prime 3 is related to 0, 6, and 9, but not 4 or 13.

Binary relations are used in many branches of mathematics to model concepts like "is greater than", "is equal to", and "divides" in arithmetic, "is congruent to" in geometry, "is adjacent to" in graph theory, "is orthogonal to" in linear algebra and many more. A function may be defined as a special kind of binary relation. Binary relations are also heavily used in computer science.

A binary relation is the special case of an _n_-ary relation , that is, a set of _n_-tuples where the _j_th component of each _n_-tuple is taken from the _j_th domain _A__(_j_) of the relation. An example of a ternary relation over Z is "… lies between … and …", which contains triples such as , , and .

A binary relation over _A_ and _B_ is an element of the power set of . Since the latter set is ordered by inclusion (⊆), each relation has a place in the lattice of subsets of .

As part of set theory, relations are manipulated with the algebra of sets, including complementation. Furthermore, the two sets are considered symmetrically by introduction of the converse relation which exchanges their places. Another operation is composition of relations. Altogether these tools form the calculus of relations, for which there are textbooks by Ernst Schröder, Clarence Lewis, and Gunther Schmidt. A deeper analysis of relations involves decomposing them into subsets called _concepts_ and placing them in a complete lattice.

In some systems of axiomatic set theory, relations are extended to classes, which are generalizations of sets. This extension is needed for, among other things, modeling the concepts of "is an element of" or "is a subset of" in set theory, without running into logical inconsistencies such as Russell's paradox.

The terms CORRESPONDENCE, [1] DYADIC RELATION and TWO-PLACE RELATION are synonyms for binary relation. But some authors use the term "binary relation" for any subset of a Cartesian product without reference to _A_ and _B_ while the term "correspondence" is reserved for a binary relation with reference to _A_ and _B_.


Definition

Given two sets _X_ and _Y_, the Cartesian product _X_ × _Y_ is defined as {(_x_, _y_) | _x_ ∈ _X_ and _y_ ∈ _Y_}, and its elements are called ordered pairs.

A binary relation _R_ on _X_ and _Y_ is a subset of ; that is, it is a set of ordered pairs consisting of elements and .[2][3] The set _X_ is called the _set of departure_ and the set _Y_ the _set of destination_ or _codomain_. (In order to specify the choices of the sets _X_ and _Y_, some authors define a binary relation or a correspondence as an ordered triple where _R_ is a subset of .) The statement is read "_x_ is _R_-related to _y_", and is denoted by _xRy_.

When , a binary relation is called a HOMOGENEOUS RELATION. To emphasize the fact _X_ and _Y_ are allowed to be different, a binary relation is also called a heterogeneous relation.[4][5][6] An example of a homogeneous relation is a kinship where the relations are over people. Homogeneous relation may be viewed as directed graphs, and in the symmetric case as ordinary graphs. Homogeneous relations also encompass orderings as well as partitions of a set (called equivalence relations).

The order of the elements is important; if then _aRb_ and _bRa_ can be true or false independently of each other. For example, 3 divides 9, but 9 does not divide 3.

The DOMAIN of _R_ is the set of all _x_ such that _xRy_ for at least one _y_. The RANGE or _image_ of _R_ is the set of all _y_ such that _xRy_ for at least one _x_. The _field_ of _R_ is the union of its domain and its range.[7][8][9]

Some authors also call a binary relation a multivalued function; in fact, a (single-valued) partial function from _X_ to _Y_ is nothing but a binary relation over _X_ and _Y_ such that for all _x_ in _X_ and _y_, _z_ in _Y_.

Example

          ball   car   doll   cup
  ------- ------ ----- ------ -----
  John    +      −     −      −
  Mary    −      −     +      −
  Venus   −      +     −      −

  : 2nd example relation

          ball   car   doll   cup
  ------- ------ ----- ------ -----
  John    +      −     −      −
  Mary    −      −     +      −
  Ian     −      −     −      −
  Venus   −      +     −      −

  : 1st example relation

The following example shows that the choice of codomain is important. Suppose there are four objects _A_ = {ball, car, doll, cup} and four people _B_ = {John, Mary, Ian, Venus}. A possible relation on _A_ and _B_ is "is owned by", given by _R_ = {(ball, John), (doll, Mary), (car, Venus)}. That is, John owns the ball, Mary owns the doll, and Venus owns the car. Nobody owns the cup and Ian owns nothing. As a set, _R_ does not involve Ian, and therefore _R_ could have been viewed as a subset of _A_ × {John, Mary, Venus}, i.e. a relation over _A_ and {John, Mary, Venus}.


Special types of binary relations

Some important types of binary relations _R_ over two sets _X_ and _Y_ are listed below.

Uniqueness properties:

-   INJECTIVE (also called LEFT-UNIQUE [10]): for all _x_ and _z_ in _X_ and _y_ in _Y_, if _xRy_ and _zRy_ then . For example, the green relation in the diagram is injective, but the red relation is not, as it relates e.g., both and to .
-   FUNCTIONAL (also called RIGHT-UNIQUE [11], RIGHT-DEFINITE [12] or UNIVALENT [13]): for all _x_ in _X_, and _y_ and _z_ in _Y_, if _xRy_ and _xRz_ then ; such a binary relation is called a _partial function_. Both relations in the picture are functional. An example of a non-functional relation can be obtained by rotating the red graph clockwise by 90 degrees, i.e. by considering the relation which relates e.g., to both and .
-   ONE-TO-ONE (also written 1-TO-1): injective and functional. The green relation is one-to-one, but the red is not.

Totality properties (only definable if the sets of departure _X_ resp. destination _Y_ are specified):

-   :Kilp, Knauer and Mikhalev: p. 3. The same four definitions appear in the following:
-   -   -   for all _x_ in _X_ there exists a _y_ in _Y_ such that _xRy_; such an _R_ is also called a multivalued function by some authors. This property, although also referred to as _total_ by some authors, is different from the definition of _total_ in the next section. Both relations in the picture are left-total. The relation , obtained from the above rotation, is not left-total, as it doesn't relate, e.g., to any real number _y_.

-   SURJECTIVE (also called RIGHT-TOTAL [14] or ONTO ): for all _y_ in _Y_ there exists an _x_ in _X_ such that _xRy_. The green relation is surjective, but the red relation is not, as it doesn't relate any real number _x_ to e.g., .

Uniqueness and totality properties:

-   A _function_: a relation that is functional and left-total. Both the green and the red relation are functions.
-   An _injective function_ or _injection_: a relation that is injective, functional, and left-total.
-   A _surjective function_ or _surjection_: a relation that is functional, left-total, and right-total.
-   A _bijection_: a surjective one-to-one or surjective injective function is said to be _bijective_, also known as _one-to-one correspondence_.[15] The green relation is bijective, but the red is not.


Operations on binary relations

If _R_ and _S_ are binary relations over two sets _X_ and _Y_ then each of the following is a binary relation over _X_ and _Y_:

-   _Union_: , defined as _R_ ∪ _S_ = {(_x_, _y_) | (_x_, _y_) ∈ _R_ or (_x_, _y_) ∈ _S_}. The identity element is the empty relation. For example, ≥ is the union of > and =.
-   _Intersection_: , defined as _R_ ∩ _S_ = {(_x_, _y_) | (_x_, _y_) ∈ _R_ and (_x_, _y_) ∈ _S_}. The identity element is the universal relation.

If _R_ is a binary relation over _X_ and _Y_, and _S_ is a binary relation over _Y_ and _Z_ then the following is a binary relation over _X_ and _Z_: (see main article _composition of relations_)

-   _Composition_: , also denoted (or ), defined as _S_ ∘ _R_ = {(_x_, _z_) | ∃_y_ ∈ _Y_, (_x_, _y_) ∈ _R_ and (_y_, _z_) ∈ _S_}. The identity element is the identity relation. The order of _R_ and _S_ in the notation , used here agrees with the standard notational order for composition of functions. For example, the composition "is mother of" ∘ "is parent of" yields "is maternal grandparent of", while the composition "is parent of" ∘ "is mother of" yields "is grandmother of".

A relation _R_ over two sets _X_ and _Y_ is said to be _contained_ in a relation _S_ over _X_ and _Y_ if _R_ is a subset of _S_, that is, for all _x_ in _X_ and _y_ in _Y_, if _xRy_ then _xSy_. In this case, if _R_ and _S_ disagree, _R_ is also said to be _smaller_ than _S_. For example, > is contained in ≥.

If _R_ is a binary relation over _X_ and _Y_ then the following is a binary relation over _Y_ and _X_:

-   _Converse_: _R_^(T), defined as _R_^(T) = {(_y_, _x_) | (_x_, _y_) ∈ _R_}. A binary relation over a set is equal to its converse if and only if it is symmetric. See also duality (order theory). For example, "is less than" (<) is the converse of "is greater than" (>).

Complement

If _R_ is a binary relation in then it has a _complementary relation_ _S_ defined as .

An overline or bar is used to indicate the complementary relation: S = R̄. Alternatively, a strikethrough is used to denote complements, for example, = and ≠ are complementary to each other, as are ∈ and ∉, and ⊇ and ⊉. Some authors even use R and $\not R$. In total orderings < and ≥ are complements, as are > and ≤.

The complement of the converse relation _R_^(T) is the converse of the complement: $\overline{R^\mathsf{T}} = \bar{R}^\mathsf{T}.$

If , the complement has the following properties:

-   If a relation is symmetric, the complement is too.
-   The complement of a reflexive relation is irreflexive and vice versa.
-   The complement of a strict weak order is a total preorder and vice versa.

Restriction

The restriction of a binary relation over a set _X_ to a subset _S_ is the set of all pairs in the relation for which _x_ and _y_ are in _S_.

If a relation is reflexive, irreflexive, symmetric, antisymmetric, asymmetric, transitive, total, trichotomous, a partial order, total order, strict weak order, total preorder (weak order), or an equivalence relation, its restrictions are too.

However, the transitive closure of a restriction is a subset of the restriction of the transitive closure, i.e., in general not equal. For example, restricting the relation "_x_ is parent of _y_" to females yields the relation "_x_ is mother of the woman _y_"; its transitive closure doesn't relate a woman with her paternal grandmother. On the other hand, the transitive closure of "is parent of" is "is ancestor of"; its restriction to females does relate a woman with her paternal grandmother.

Also, the various concepts of completeness (not to be confused with being "total") do not carry over to restrictions. For example, over the real numbers a property of the relation ≤ is that every non-empty subset _S_ of R with an upper bound in R has a least upper bound (also called supremum) in R. However, for the rational numbers this supremum is not necessarily rational, so the same property does not hold on the restriction of the relation ≤ to the rational numbers.

The _left-restriction_ (_right-restriction_, respectively) of a binary relation over two sets _X_ and _Y_ to a subset _S_ of its domain (codomain) is the set of all pairs in the relation for which _x_ (_y_) is an element of _S_.

Matrix representation

Binary relations over two sets _X_ and _Y_ can be represented algebraically by matrices indexed by _X_ and _Y_ with entries in the Boolean semiring (addition corresponds to OR and multiplication to AND), matrix addition corresponds to union of relations, matrix multiplication corresponds to composition of relations (of a relation over _X_ and _Y_ and a relation over _Y_ and _Z_),[16] the Hadamard product corresponds to intersection of relations, the zero matrix corresponds to the empty relation, and the matrix of ones corresponds to the universal relation. If _X_ equals _Y_ then the endorelations form a matrix semiring (indeed, a matrix semialgebra over the Boolean semiring), and the identity matrix corresponds to the identity relation.[17]


Sets versus classes

Certain mathematical "relations", such as "equal to", "subset of", and "member of", cannot be understood to be binary relations as defined above, because their domains and codomains cannot be taken to be sets in the usual systems of axiomatic set theory. For example, if we try to model the general concept of "equality" as a binary relation =, we must take the domain and codomain to be the "class of all sets", which is not a set in the usual set theory.

In most mathematical contexts, references to the relations of equality, membership and subset are harmless because they can be understood implicitly to be restricted to some set in the context. The usual work-around to this problem is to select a "large enough" set _A_, that contains all the objects of interest, and work with the restriction =_(_A_) instead of =. Similarly, the "subset of" relation ⊆ needs to be restricted to have domain and codomain P(_A_) (the power set of a specific set _A_): the resulting set relation can be denoted ⊆_(_A_). Also, the "member of" relation needs to be restricted to have domain _A_ and codomain P(_A_) to obtain a binary relation ∈_(_A_) that is a set. Bertrand Russell has shown that assuming ∈ to be defined over all sets leads to a contradiction in naive set theory.

Another solution to this problem is to use a set theory with proper classes, such as NBG or Morse–Kelley set theory, and allow the domain and codomain (and so the graph) to be proper classes: in such a theory, equality, membership, and subset are binary relations without special comment. (A minor modification needs to be made to the concept of the ordered triple , as normally a proper class cannot be a member of an ordered tuple; or of course one can identify the binary relation with its graph in this context.)[18] With this definition one can for instance define a binary relation over every set and its power set.


Homogeneous relation

A HOMOGENEOUS RELATION (also called ENDORELATION ) over a set _X_ is a binary relation over the set _X_ and itself, i.e. it is a subset of the Cartesian product .[19][20][21] It is also simply called a binary relation over _X_.

A homogeneous relation _R_ over a set _X_ may be identified with a directed simple graph permitting loops, where _X_ is the vertex set and _R_ is the edge set (there is an edge from a vertex _x_ to a vertex _y_ if and only if _xRy_). The homogenous relation is called the adjacency relation of the directed graph.

The set of all binary relations ℬ(X) over a set _X_ is the set 2^(_X_\ ×\ _X_) which is a Boolean algebra augmented with the involution of mapping of a relation to its converse relation. Considering composition of relations as a binary operation on ℬ(X), it forms a inverse semigroup.

Particular homogeneous relations

Some important particular binary relations over a set _X_ are:

-   the EMPTY RELATION ,
-   the UNIVERSAL RELATION , and
-   the IDENTITY RELATION _I_ = {(_x_, _x_) | _x_ ∈ _X_}.

For arbitrary elements _x_ and _y_ of _X_,

-   _xEy_ holds never,
-   _xUy_ holds always, and
-   _xIy_ holds if and only if .

Properties

Some important properties that a binary relation _R_ over a set _X_ may have are:

-   _Reflexive_: for all _x_ in _X_, _xRx_. For example, ≥ is a reflexive relation but > is not.
-   _Irreflexive_ (or _strict_): for all _x_ in _X_, ¬_xRx_. For example, > is an irreflexive relation, but ≥ is not.
-   _Coreflexive_: for all _x_ and _y_ in _X_, if _xRy_ then .[22] For example, the relation over the integers in which each odd number is related to itself is a coreflexive relation. The equality relation is the only example of a both reflexive and coreflexive relation, and any coreflexive relation is a subset of the identity relation.
-   _Quasi-reflexive_: for all _x_ and _y_ in _X_, if _xRy_ then _xRx_ and _yRy_.

The previous 4 alternatives are far from being exhaustive; e.g., the red relation from the above picture is neither irreflexive, nor coreflexive, nor reflexive, since it contains the pair , and , but not , respectively. The latter two facts also rule out quasi-reflexivity.

-   _Symmetric_: for all _x_ and _y_ in _X_, if _xRy_ then _yRx_. For example, "is a blood relative of" is a symmetric relation, because _x_ is a blood relative of _y_ if and only if _y_ is a blood relative of _x_.
-   _Antisymmetric_: for all _x_ and _y_ in _X_, if ''xRy ''and _yRx_ then . For example, ≥ is an antisymmetric relation; so is >, but vacuously (the condition in the definition is always false).[23]
-   _Asymmetric_: for all _x_ and _y_ in _X_, if _xRy_ then ¬_yRx_. A relation is asymmetric if and only if it is both antisymmetric and irreflexive.[24] For example, > is an asymmetric relation, but ≥ is not.

Again, the previous 3 alternatives are far from being exhaustive; as an example over the natural numbers, the relation _xRy_ defined by is neither symmetric nor antisymmetric, let alone asymmetric.

-   _Transitive_: for all _x_, _y_ and _z_ in _X_, if _xRy_ and _yRz_ then _xRz_. A transitive relation is irreflexive if and only if it is asymmetric.[25] For example, "is ancestor of" is a transitive relation, while "is parent of" is not.
-   _Connex_: for all _x_ and _y_ in _X_, _xRy_ or _yRx_ (or both). This property is sometimes called "total", which is distinct from the definitions of "total" given in the previous section.
-   _Trichotomous_: for all _x_ and _y_ in _X_, exactly one of _xRy_, _yRx_ or holds. For example, > is a trichotomous relation, while the relation "divides" over the natural numbers is not.[26]
-   _Right Euclidean_ (or just _Euclidean_): for all _x_, _y_ and _z_ in _X_, if _xRy_ and _xRz_ then _yRz_. For example, = is an Euclidean relation because if and then .
-   _Left Euclidean_: for all _x_, _y_ and _z_ in _X_, if _yRx_ and _zRx_ then _yRz_.
-   _Serial_: for all _x_ in _X_, there exists _y_ in _X_ such that _xRy_. For example, > is a serial relation over the integers. But it is not a serial relation over the positive integers, because there is no _y_ in the positive integers such that .[27] However, < is a serial relation over the positive integers, the rational numbers and the real numbers. Every reflexive relation is serial: for a given _x_, choose _y_ = _x_.
-   SET-LIKE (or LOCAL): for all _x_ in _X_, the class of all _y_ such that _yRx_ is a set. (This makes sense only if relations over proper classes are allowed.) For example, the usual ordering < over the class of ordinal numbers is a set-like relation, while its inverse > is not.
-   _Well-founded_: every nonempty subset _S_ of _X_ contains a minimal element with respect to _R_. Well-foundedness implies the descending chain condition (that is, no infinite chain … _x__(_n_)_R_…_Rx_₃_Rx_₂_Rx_₁ can exist). If the axiom of dependent choice is assumed, both conditions are equivalent.[28][29]

A _preorder_ is a relation that is reflexive and transitive. A _total preorder_, also called _weak order_, is a relation that is reflexive, transitive, and connex. A _partial order_ is a relation that is reflexive, antisymmetric, and transitive. A _total order_, also called _linear order_, _simple order_, _connex order_, or _chain_ is a relation that is reflexive, antisymmetric, transitive and connex.[30]

A _partial equivalence relation_ is a relation that is symmetric and transitive. An _equivalence relation_ is a relation that is reflexive, symmetric, and transitive. It is also a relation that is symmetric, transitive, and serial, since these properties imply reflexivity.

Operations on homogeneous relations

If _R_ is a homogeneous relation over _X_ then each of the following is a homogeneous relation over _X_:

-   _Reflexive closure_: _R_⁼, defined as _R_⁼ = {(_x_, _x_) | _x_ ∈ _X_} ∪ _R_ or the smallest reflexive relation over _X_ containing _R_. This can be proven to be equal to the intersection of all reflexive relations containing _R_.
-   _Reflexive reduction_: _R_^(≠), defined as _R_^(≠) = _R_ \ {(_x_, _x_) | _x_ ∈ _X_} or the largest irreflexive relation over _X_ contained in _R_.
-   _Transitive closure_: _R_⁺, defined as the smallest transitive relation over _X_ containing _R_. This can be seen to be equal to the intersection of all transitive relations containing _R_.
-   _Reflexive transitive closure_: _R_*, defined as , the smallest preorder containing _R_.
-   _Reflexive transitive symmetric closure_: _R_^(≡), defined as the smallest equivalence relation over _X_ containing _R_.

All operations defined in the above section #Operations on binary relations also apply to homogeneous relations.

    {| class="wikitable sortable" style="text-align:center;"

|+ align="top" | Binary endorelations by property |- ! ! Reflexivity ! Symmetry ! Transitivity ! Symbol ! Example |- ! Directed graph | | | | → | |- ! Undirected graph | | | | | |- ! Tournament | | | | | Pecking order |- ! Dependency | | | | | |- ! Preorder | | | | ≤ | Preference |- ! Strict preorder | | | | < | |- ! Total preorder | | | | ≤ | |- ! Partial order | | | | ≤ | Subset |- ! Strict partial order | | | | < | Proper subset |- ! Strict weak order | | | | < | |- ! Total order | | | | ≤ | |- ! Partial equivalence relation | | | | | |- ! Equivalence relation | | | | ∼, ≅, ≈, ≡ | Equality |}

The number of homogeneous relations

The number of distinct binary relations over an _n_-element set is 2^(_n_²) :

Notes:

-   The number of irreflexive relations is the same as that of reflexive relations.
-   The number of strict partial orders (irreflexive transitive relations) is the same as that of partial orders.
-   The number of strict weak orders is the same as that of total preorders.
-   The total orders are the partial orders that are also total preorders. The number of preorders that are neither a partial order nor a total preorder is, therefore, the number of preorders, minus the number of partial orders, minus the number of total preorders, plus the number of total orders: 0, 0, 0, 3, and 85, respectively.
-   The number of equivalence relations is the number of partitions, which is the Bell number.

The binary relations can be grouped into pairs (relation, complement), except that for the relation is its own complement. The non-symmetric ones can be grouped into quadruples (relation, complement, inverse, inverse complement).

Examples of common homogeneous relations

-   Order relations, including strict orders:
    -   Greater than
    -   Greater than or equal to
    -   Less than
    -   Less than or equal to
    -   Divides (evenly)
    -   Subset of
-   Equivalence relations:
    -   Equality
    -   Parallel with (for affine spaces)
    -   Is in bijection with
    -   Isomorphic
-   Tolerance relation, a reflexive and symmetric relation:
    -   Dependency relation, a finite tolerance relation
    -   Independency relation, the complement of some dependency relation
-   Kinship relations


See also

-   Abstract rewriting system
-   Additive relation, a many-valued homomorphism between modules
-   Category of relations, a category having sets as objects and heterogeneous binary relations as morphisms
-   Confluence (term rewriting), discusses several unusual but fundamental properties of binary relations
-   Correspondence (algebraic geometry), a binary relation defined by algebraic equations
-   Hasse diagram, a graphic means to display an order relation
-   Incidence structure, a heterogeneous relation between set of points and lines
-   Logic of relatives, a theory of relations by Charles Sanders Peirce
-   Order theory, inverstigates properties of order relations


Notes


References

-   .

-   M. Kilp, U. Knauer, A.V. Mikhalev (2000) _Monoids, Acts and Categories: with Applications to Wreath Products and Graphs_, De Gruyter Expositions in Mathematics vol. 29, Walter de Gruyter, .
-   Charles Saunders Pierce (1870) Description of a Notation for the Logic of Relatives from Google Books
-   Gunther Schmidt (2010) _Relational Mathematics_ Cambridge University Press .


External links

-   -

Binary_relations

[1] Jacobson, Nathan (2009), Basic Algebra II (2nd ed.) § 2.1.

[2]

[3] the set _R_ is also sometimes called the graph of the relation _R_.

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13] Gunther Schmidt, 2010. _Relational Mathematics_. Cambridge University Press, , Chapt. 5

[14]

[15] Note that the use of "correspondence" here is narrower than as general synonym for binary relation.

[16]

[17] Droste, M., & Kuich, W. (2009). Semirings and Formal Power Series. _Handbook of Weighted Automata_, 3–28. , pp. 7-10

[18]

[19]

[20]

[21]

[22] Fonseca de Oliveira, J. N., & Pereira Cunha Rodrigues, C. D. J. (2004). [ftp://nozdr.ru/biblio/kolxo3/Cs/CsLn/Mathematics%20of%20Program%20Construction,%207%20conf.,%20MPC%202004(LNCS3125,%20Springer,%202004)(ISBN%203540223800)(412s).pdf#page=345 Transposing Relations: From Maybe Functions to Hash Tables]. In Mathematics of Program Construction (p. 337).

[23]

[24] .

[25]  Lemma 1.1 (iv). This source refers to asymmetric relations as "strictly antisymmetric".

[26] Since neither 5 divides 3, nor 3 divides 5, nor 3=5.

[27] .

[28]

[29]

[30] Joseph G. Rosenstein, _Linear orderings_, Academic Press, 1982, , p. 4