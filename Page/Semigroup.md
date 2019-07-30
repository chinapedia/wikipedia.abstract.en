In mathematics, a SEMIGROUP is an algebraic structure consisting of a set together with an associative binary operation.

The binary operation of a semigroup is most often denoted multiplicatively: _x_·_y_, or simply _xy_, denotes the result of applying the semigroup operation to the ordered pair . Associativity is formally expressed as that for all _x_, _y_ and _z_ in the semigroup.

Semigroups may be considered a special case of magmas, where the operation is associative, or as a generalization of groups, without requiring the existence of an identity element or inverses.[1] As in the case of groups or magmas, the semigroup operation need not be commutative, so _x_·_y_ is not necessarily equal to _y_·_x_; a well-known example of an operation that is associative but non-commutative is matrix multiplication. If the semigroup operation is commutative, then the semigroup is called a _commutative semigroup_ or (less often than in the analogous case of groups) it may be called an _abelian semigroup_.

A monoid is an algebraic structure intermediate between groups and semigroups, and is a semigroup having an identity element, thus obeying all but one of the axioms of a group; existence of inverses is not required of a monoid. A natural example is strings with concatenation as the binary operation, and the empty string as the identity element. Restricting to non-empty strings gives an example of a semigroup that is not a monoid. Positive integers with addition form a commutative semigroup that is not a monoid, whereas the non-negative integers do form a monoid. A semigroup without an identity element can be easily turned into a monoid by just adding an identity element. Consequently, monoids are studied in the theory of semigroups rather than in group theory. Semigroups should not be confused with quasigroups, which are a generalization of groups in a different direction; the operation in a quasigroup need not be associative but quasigroups preserve from groups a notion of division. Division in semigroups (or in monoids) is not possible in general.

The formal study of semigroups began in the early 20th century. Early results include a Cayley theorem for semigroups realizing any semigroup as transformation semigroup, in which arbitrary functions replace the role of bijections from group theory. Other fundamental techniques of studying semigroups like Green's relations do not imitate anything in group theory though. A deep result in the classification of finite semigroups is Krohn–Rhodes theory. The theory of finite semigroups has been of particular importance in theoretical computer science since the 1950s because of the natural link between finite semigroups and finite automata via the syntactic monoid . In probability theory, semigroups are associated with Markov processes.[2][3] In other areas of applied mathematics, semigroups are fundamental models for linear time-invariant systems. In partial differential equations, a semigroup is associated to any equation whose spatial evolution is independent of time. There are numerous special classes of semigroups, semigroups with additional properties, which appear in particular applications. Some of these classes are even closer to groups by exhibiting some additional but not all properties of a group. Of these we mention: regular semigroups, orthodox semigroups, semigroups with involution, inverse semigroups and cancellative semigroups. There also interesting classes of semigroups that do not contain any groups except the trivial group; examples of the latter kind are bands and their commutative subclass—semilattices, which are also ordered algebraic structures.


Definition

A semigroup is a set S together with a binary operation "⋅" (that is, a function  ⋅  : S × S → S) that satisfies the associative property:

    For all a, b, c ∈ S, the equation (a ⋅ b) ⋅ c = a ⋅ (b ⋅ c) holds.

More succinctly, a semigroup is an associative magma.


Examples of semigroups

-   Empty semigroup: the empty set forms a semigroup with the empty function as the binary operation.
-   Semigroup with one element: there is essentially only one (specifically, only one up to isomorphism), the singleton {_a_} with operation .
-   Semigroup with two elements: there are five which are essentially different.
-   The set of positive integers with addition. (With 0 included, this becomes a monoid.)
-   The set of integers with minimum or maximum. (With positive/negative infinity included, this becomes a monoid.)
-   Square nonnegative matrices of a given size with matrix multiplication.
-   Any ideal of a ring with the multiplication of the ring.
-   The set of all finite strings over a fixed alphabet Σ with concatenation of strings as the semigroup operation — the so-called "free semigroup over Σ". With the empty string included, this semigroup becomes the free monoid over Σ.
-   A probability distribution F together with all convolution powers of F, with convolution as the operation. This is called a convolution semigroup.
-   A group is a monoid in which every element has an inverse element.
-   Transformation semigroups and monoids.
-   The set of continuous functions from a topological space to itself with composition of functions forms a monoid with the identity function acting as the identity. More generally, the endomorphisms of any object of a category form a monoid under composition.


Basic concepts

Identity and zero

A LEFT IDENTITY of a semigroup S (or more generally, magma) is an element e such that for all x in S, ex = x. Similarly, a RIGHT IDENTITY is an element f such that for all x in S, xf = x. Left and right identities are both called ONE-SIDED IDENTITIES. A semigroup may have one or more left identities but no right identity, and vice versa.

A TWO-SIDED IDENTITY (or just IDENTITY) is an element that is both a left and right identity. Semigroups with a two-sided identity are called MONOIDS. A semigroup may have at most one two-sided identity. If a semigroup has a two-sided identity, then the two-sided identity is the only one-sided identity in the semigroup. If a semigroup has both a left identity and a right identity, then it has a two-sided identity (which is therefore the unique one-sided identity).

A semigroup S without identity may be embedded in a monoid formed by adjoining an element e ∉ S to S and defining e ⋅ s = s ⋅ e = s for all s ∈ S ∪ {e}.[4][5] The notation S¹ denotes a monoid obtained from S by adjoining an identity _if necessary_ (S¹ = S for a monoid).[6]

Similarly, every magma has at most one absorbing element, which in semigroup theory is called a ZERO. Analogous to the above construction, for every semigroup S, one can define S⁰, a semigroup with 0 that embeds S.

Subsemigroups and ideals

The semigroup operation induces an operation on the collection of its subsets: given subsets _A_ and _B_ of a semigroup _S_, their product , written commonly as _AB_, is the set _a_ in _A_ and _b_ in _B_ }.}} (This notion is defined identically as it is for groups.) In terms of this operation, a subset _A_ is called

-   a SUBSEMIGROUP if _AA_ is a subset of _A_,
-   a RIGHT IDEAL if _AS_ is a subset of _A_, and
-   a LEFT IDEAL if _SA_ is a subset of _A_.

If _A_ is both a left ideal and a right ideal then it is called an IDEAL (or a TWO-SIDED IDEAL).

If _S_ is a semigroup, then the intersection of any collection of subsemigroups of _S_ is also a subsemigroup of _S_. So the subsemigroups of _S_ form a complete lattice.

An example of a semigroup with no minimal ideal is the set of positive integers under addition. The minimal ideal of a commutative semigroup, when it exists, is a group.

Green's relations, a set of five equivalence relations that characterise the elements in terms of the principal ideals they generate, are important tools for analysing the ideals of a semigroup and related notions of structure.

The subset with the property that every element commutes with any other element of the semigroup is called the CENTER of the semigroup.[7] The center of a semigroup is actually a subsemigroup.[8]

Homomorphisms and congruences

A SEMIGROUP HOMOMORPHISM is a function that preserves semigroup structure. A function between two semigroups is a homomorphism if the equation

    .

holds for all elements _a_, _b_ in _S_, i.e. the result is the same when performing the semigroup operation after or before applying the map _f_.

A semigroup homomorphism between monoids preserves identity if it is a monoid homomorphism. But there are semigroup homomorphisms which are not monoid homomorphisms, e.g. the canonical embedding of a semigroup S without identity into S¹. Conditions characterizing monoid homomorphisms are discussed further. Let f : S₀ → S₁ be a semigroup homomorphism. The image of f is also a semigroup. If S₀ is a monoid with an identity element e₀, then f(e₀) is the identity element in the image of f. If S₁ is also a monoid with an identity element e₁ and e₁ belongs to the image of f, then f(e₀) = e₁, i.e. f is a monoid homomorphism. Particularly, if f is surjective, then it is a monoid homomorphism.

Two semigroups _S_ and _T_ are said to be isomorphic if there is a bijection with the property that, for any elements _a_, _b_ in _S_, . Isomorphic semigroups have the same structure.

A SEMIGROUP CONGRUENCE ∼ is an equivalence relation that is compatible with the semigroup operation. That is, a subset ∼  ⊆ S × S that is an equivalence relation and x ∼ y  and u ∼ v  implies xu ∼ yv  for every x, y, u, v in _S_. Like any equivalence relation, a semigroup congruence ∼ induces congruence classes

[_a_]_(∼) = {_x_ ∈ _S_| _x_ ∼ _a_}

and the semigroup operation induces a binary operation ∘ on the congruence classes:

[_u_]_(∼) ∘ [_v_]_(∼) = [_u__v_]_(∼)

Because ∼ is a congruence, the set of all congruence classes of ∼ forms a semigroup with ∘, called the QUOTIENT SEMIGROUP or FACTOR SEMIGROUP, and denoted S/∼. The mapping x ↦ [x]_(∼) is a semigroup homomorphism, called the QUOTIENT MAP, CANONICAL SURJECTION or PROJECTION; if S is a monoid then quotient semigroup is a monoid with identity [1]_(∼). Conversely, the kernel of any semigroup homomorphism is a semigroup congruence. These results are nothing more than a particularization of the first isomorphism theorem in universal algebra. Congruence classes and factor monoids are the objects of study in string rewriting systems.

A NUCLEAR CONGRUENCE on _S_ is one which is the kernel of an endomorphism of _S_.[9]

A semigroup _S_ satisfies the MAXIMAL CONDITION ON CONGRUENCES if any family of congruences on _S_, ordered by inclusion, has a maximal element. By Zorn's lemma, this is equivalent to saying that the ascending chain condition holds: there is no infinite strictly ascending chain of congruences on _S_.[10]

Every ideal _I_ of a semigroup induces a subsemigroup, the Rees factor semigroup via the congruence   ⇔   either or both _x_ and _y_ are in _I_.

Quotients and divisions

The following notions[11] introduce the idea that a semigroup is contained in another one.

A semigroup T is a quotient of a semigroup S if there is a surjective semigroup morphism from S to T. For example, (ℤ/2ℤ,  + ) is a quotient of (ℤ/4ℤ,  + ), using the morphism consisting of taking the remainder modulo 2 of an integer.

A semigroup T divides a semigroup S, noted T ≼ S if T is a quotient of a subsemigroup S. In particular, subsemigroups of S divides T, while it is not necessarily the case that there are a quotient of S.

Both of those relation are transitive.


Structure of semigroups

For any subset _A_ of _S_ there is a smallest subsemigroup _T_ of _S_ which contains _A_, and we say that _A_ GENERATES _T_. A single element _x_ of _S_ generates the subsemigroup { _x_^(_n_) {{!}} _n_ ∈ Z⁺ }. If this is finite, then _x_ is said to be of FINITE ORDER, otherwise it is of INFINITE ORDER. A semigroup is said to be PERIODIC if all of its elements are of finite order. A semigroup generated by a single element is said to be monogenic (or cyclic). If a monogenic semigroup is infinite then it is isomorphic to the semigroup of positive integers with the operation of addition. If it is finite and nonempty, then it must contain at least one idempotent. It follows that every nonempty periodic semigroup has at least one idempotent.

A subsemigroup which is also a group is called a SUBGROUP. There is a close relationship between the subgroups of a semigroup and its idempotents. Each subgroup contains exactly one idempotent, namely the identity element of the subgroup. For each idempotent _e_ of the semigroup there is a unique maximal subgroup containing _e_. Each maximal subgroup arises in this way, so there is a one-to-one correspondence between idempotents and maximal subgroups. Here the term _maximal subgroup_ differs from its standard use in group theory.

More can often be said when the order is finite. For example, every nonempty finite semigroup is periodic, and has a minimal ideal and at least one idempotent. The number of finite semigroups of a given size (greater than 1) is (obviously) larger than the number of groups of the same size. For example, of the sixteen possible "multiplication tables" for a set of two elements eight form semigroups[12] whereas only four of these are monoids and only two form groups. For more on the structure of finite semigroups, see Krohn–Rhodes theory.


Special classes of semigroups

-   A monoid is a semigroup with identity.
-   A subsemigroup is a subset of a semigroup that is closed under the semigroup operation.
-   A cancellative semigroup is one having the cancellation property:[13] implies and similarly for .
-   A band is a semigroup whose operation is idempotent.
-   A semilattice is a semigroup whose operation is idempotent and commutative.
-   0-simple semigroups.
-   Transformation semigroups: any finite semigroup _S_ can be represented by transformations of a (state-) set _Q_ of at most states. Each element _x_ of _S_ then maps _Q_ into itself and sequence _xy_ is defined by for each _q_ in _Q_. Sequencing clearly is an associative operation, here equivalent to function composition. This representation is basic for any automaton or finite state machine (FSM).
-   The bicyclic semigroup is in fact a monoid, which can be described as the free semigroup on two generators _p_ and _q_, under the relation .
-   C₀-semigroups.
-   Regular semigroups. Every element _x_ has at least one inverse _y_ satisfying and ; the elements _x_ and _y_ are sometimes called "mutually inverse".
-   Inverse semigroups are regular semigroups where every element has exactly one inverse. Alternatively, a regular semigroup is inverse if and only if any two idempotents commute.
-   Affine semigroup: a semigroup that is isomorphic to a finitely-generated subsemigroup of Z^(d). These semigroups have applications to commutative algebra.


Structure theorem for commutative semigroups

There is a structure theorem for commutative semigroups in terms of semilattices.[14] A semilattice (or more precisely a meet-semilattice) (L,  ≤ ) is a partially ordered set where every pair of elements a, b ∈ L has a greatest lower bound, denoted a ∧ b. The operation ∧ makes L into a semigroup satisfying the additional idempotence law a ∧ a = a.

Given a homomorphism f : S → L from an arbitrary semigroup to a semilattice, each inverse image S_(a) = f^( − 1){a} is a (possibly empty) semigroup. Moreover, S becomes GRADED by L, in the sense that

S_(a)S_(b) ⊆ S_(a ∧ b)

If f is onto, the semilattice L is isomorphic to the quotient of S by the equivalence relation ∼ such that x ∼ y iff f(x) = f(y). This equivalence relation is a semigroup congruence, as defined above.

Whenever we take the quotient of a commutative semigroup by a congruence, we get another commutative semigroup. The structure theorem says that for any commutative semigroup S, there is a finest congruence ∼ such that the quotient of S by this equivalence relation is a semilattice. Denoting this semilattice by L, we get a homomorphism f from S onto L. As mentioned, S becomes graded by this semilattice.

Furthermore, the components S_(a) are all Archimedean semigroups. An Archimedean semigroup is one where given any pair of elements x, y, there exists an element z and n > 0 such that x^(n) = yz.

The Archimedean property follows immediately from the ordering in the semilattice L, since with this ordering we have f(x) ≤ f(y) if and only if x^(n) = yz for some z and n > 0.


Group of fractions

The GROUP OF FRACTIONS or GROUP COMPLETION of a semigroup _S_ is the group generated by the elements of _S_ as generators and all equations which hold true in _S_ as relations.[15] There is an obvious semigroup homomorphism which sends each element of _S_ to the corresponding generator. This has a universal property for morphisms from _S_ to a group:[16] given any group _H_ and any semigroup homomorphism , there exists a unique group homomorphism with _k_=_fj_. We may think of _G_ as the "most general" group that contains a homomorphic image of _S_.

An important question is to characterize those semigroups for which this map is an embedding. This need not always be the case: for example, take _S_ to be the semigroup of subsets of some set _X_ with set-theoretic intersection as the binary operation (this is an example of a semilattice). Since holds for all elements of _S_, this must be true for all generators of _G_(_S_) as well: which is therefore the trivial group. It is clearly necessary for embeddability that _S_ have the cancellation property. When _S_ is commutative this condition is also sufficient[17] and the Grothendieck group of the semigroup provides a construction of the group of fractions. The problem for non-commutative semigroups can be traced to the first substantial paper on semigroups.[18][19] Anatoly Maltsev gave necessary and sufficient conditions for embeddability in 1937.[20]


Semigroup methods in partial differential equations

Semigroup theory can be used to study some problems in the field of partial differential equations. Roughly speaking, the semigroup approach is to regard a time-dependent partial differential equation as an ordinary differential equation on a function space. For example, consider the following initial/boundary value problem for the heat equation on the spatial interval and times :

$$\begin{cases} \partial_{t} u(t, x) = \partial_{x}^{2} u(t, x), & x \in (0, 1), t > 0; \\ u(t, x) = 0, & x \in \{ 0, 1 \}, t > 0; \\ u(t, x) = u_{0} (x), & x \in (0, 1), t = 0. \end{cases}$$

Let be the _L_^(_p_) space of square-integrable real-valued functions with domain the interval and let _A_ be the second-derivative operator with domain

_D_(_A_) = {_u_ ∈ _H_²((0, 1); R)|_u_(0) = _u_(1) = 0},

where _H_² is a Sobolev space. Then the above initial/boundary value problem can be interpreted as an initial value problem for an ordinary differential equation on the space _X_:

$$\begin{cases} \dot{u}(t) = A u (t); \\ u(0) = u_{0}. \end{cases}$$

On an heuristic level, the solution to this problem "ought" to be . However, for a rigorous treatment, a meaning must be given to the exponential of _tA_. As a function of _t_, exp(_tA_) is a semigroup of operators from _X_ to itself, taking the initial state _u_₀ at time to the state at time _t_. The operator _A_ is said to be the infinitesimal generator of the semigroup.


History

The study of semigroups trailed behind that of other algebraic structures with more complex axioms such as groups or rings. A number of sources[21][22] attribute the first use of the term (in French) to J.-A. de Séguier in _Élements de la Théorie des Groupes Abstraits_ (Elements of the Theory of Abstract Groups) in 1904. The term is used in English in 1908 in Harold Hinton's _Theory of Groups of Finite Order_.

Anton Sushkevich obtained the first non-trivial results about semigroups. His 1928 paper "Über die endlichen Gruppen ohne das Gesetz der eindeutigen Umkehrbarkeit" ("On finite groups without the rule of unique invertibility") determined the structure of finite simple semigroups and showed that the minimal ideal (or Green's relations J-class) of a finite semigroup is simple.[23] From that point on, the foundations of semigroup theory were further laid by David Rees, James Alexander Green, Evgenii Sergeevich Lyapin, Alfred H. Clifford and Gordon Preston. The latter two published a two-volume monograph on semigroup theory in 1961 and 1967 respectively. In 1970, a new periodical called _Semigroup Forum_ (currently edited by Springer Verlag) became one of the few mathematical journals devoted entirely to semigroup theory.

The representation theory of semigroups was developed in 1963 by Boris Schein using binary relations on a set _A_ and composition of relations for the semigroup product.[24] At an algebraic conference in 1972 Schein surveyed the literature on B_(_A_), the semigroup of relations on _A_.[25] In 1997 Schein and Ralph McKenzie proved that every semigroup is isomorphic to a transitive semigroup of binary relations.[26]

In recent years researchers in the field have become more specialized with dedicated monographs appearing on important classes of semigroups, like inverse semigroups, as well as monographs focusing on applications in algebraic automata theory, particularly for finite automata, and also in functional analysis.


Generalizations

If the associativity axiom of a semigroup is dropped, the result is a magma, which is nothing more than a set _M_ equipped with a binary operation .

Generalizing in a different direction, an _N_-ARY SEMIGROUP (also _N_-SEMIGROUP, POLYADIC SEMIGROUP or MULTIARY SEMIGROUP) is a generalization of a semigroup to a set _G_ with a _n_-ary operation instead of a binary operation.[27] The associative law is generalized as follows: ternary associativity is , i.e. the string _abcde_ with any three adjacent elements bracketed. _N_-ary associativity is a string of length with any _n_ adjacent elements bracketed. A 2-ary semigroup is just a semigroup. Further axioms lead to an _n_-ary group.

A third generalization is the semigroupoid, in which the requirement that the binary relation be total is lifted. As categories generalize monoids in the same way, a semigroupoid behaves much like a category but lacks identities.

Infinitary generalizations of commutative semigroups have sometimes been considered by various authors.[28]


See also

-   Absorbing element
-   Biordered set
-   Empty semigroup
-   Generalized inverse
-   Identity element
-   Light's associativity test
-   Quantum dynamical semigroup
-   Semigroup ring
-   Weak inverse


Notes


Citations


References

General references

-   .

-   .

-   .

-   .

-   .

-   Hollings, Christopher (2009) "The early development of the algebraic theory of semigroups", Archive for History of Exact Sciences 63(5): 497–536.
-   .

-   .

Specific references

-   .

-   .

-   .

-   .

-   -   -

Category:Semigroup theory Category:Algebraic structures

[1] The closure axiom is implied by the definition of a binary operation on a set. Some authors thus omit it and specify three axioms for a group and only axiom (associativity) for a semigroup.

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

[12] Namely: the trivial semigroup in which (for all _x_ and _y_) and its counterpart in which , the semigroups based on multiplication modulo 2 (choosing a or b as the identity element 1), the groups equivalent to addition modulo 2 (choosing a or b to be the identity element 0), and the semigroups in which the elements are either both left identities or both right identities.

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21] Earliest Known Uses of Some of the Words of Mathematics

[22] An account of Suschkewitsch's paper by Christopher Hollings

[23]

[24] B. M. Schein (1963) "Representations of semigroups by means of binary relations" (Russian), Matematicheskii Sbornik 60: 292–303

[25] B. M. Schein (1972) _Miniconference on semigroup Theory_,

[26] B. M. Schein & R. McKenzie (1997) "Every semigroup is isomorphic to a transitive semigroup of binary relations", Transactions of the American Mathematical Society 349(1): 271–85

[27]

[28] See references in Udo Hebisch and Hanns Joachim Weinert, _Semirings and Semifields_, in particular, Section 10, _Semirings with infinite sums_, in M. Hazewinkel, Handbook of Algebra, Vol. 1, Elsevier, 1996. Notice that in this context the authors use the term _semimodule_ in place of _semigroup_.