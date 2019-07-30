]]

In mathematics, a SET is a collection of distinct objects, considered as an object in its own right. For example, the numbers 2, 4, and 6 are distinct objects when considered separately, but when they are considered collectively they form a single set of size three, written . The concept of a set is one of the most fundamental in mathematics. Developed at the end of the 19th century, set theory is now a ubiquitous part of mathematics, and can be used as a foundation from which nearly all of mathematics can be derived. In mathematics education, elementary topics from set theory such as Venn diagrams are taught at a young age, while more advanced concepts are taught as part of a university degree.

The German word _Menge_, rendered as "set" in English, was coined by Bernard Bolzano in his work _The Paradoxes of the Infinite_.


Definition

A set is a well-defined collection of distinct objects. The objects that make up a set (also known as the set's _elements_ or _members_) can be anything: numbers, people, letters of the alphabet, other sets, and so on. Georg Cantor, one of the founders of set theory, gave the following definition of a set at the beginning of his _Beiträge zur Begründung der transfiniten Mengenlehre_:[1]

Sets are conventionally denoted with capital letters. Sets _A_ and _B_ are equal if and only if they have precisely the same elements.[2]

For technical reasons, Cantor's definition turned out to be inadequate; today, in contexts where more rigor is required, one can use axiomatic set theory, in which the notion of a "set" is taken as a primitive notion and the properties of sets are defined by a collection of axioms. The most basic properties are that a set can have elements, and that two sets are equal (one and the same) if and only if every element of each set is an element of the other; this property is called the _extensionality of sets_.


Describing sets

There are two ways of describing, or specifying the members of, a set. One way is by intensional definition, using a rule or semantic description:

    _A_ is the set whose members are the first four positive integers.
    _B_ is the set of colors of the French flag.

The second way is by extension – that is, listing each member of the set. An extensional definition is denoted by enclosing the list of members in curly brackets:

    _C_ =
    _D_ = .

One often has the choice of specifying a set either intensionally or extensionally. In the examples above, for instance, _A_ = _C_ and _B_ = _D_.

In an extensional definition, listing a member repeatedly does not change the set, for example, the set is identical to the set . Moreover, the order in which the elements of a set are listed is irrelevant (unlike for a sequence or tuple), so is yet again the same set.

For sets with many elements, the enumeration of members can be abbreviated. For instance, the set of the first thousand positive integers may be specified extensionally as

    ,

where the ellipsis ("...") indicates that the list continues in the obvious way.

The notation with braces may also be used in an intensional specification of a set. In this usage, the braces have the meaning "the set of all ...". So, _E_ = is the set whose four members are spades, diamonds, hearts, and clubs. A more general form of this is set-builder notation, through which, for instance, the set _F_ of the twenty smallest integers that are four less than a perfect square can be denoted

_F_ = {_n_² − 4 : _n_ is an integer, and 0 ≤ _n_ ≤ 19}.

In this notation, the colon (":") means "such that", and the description can be interpreted as "_F_ is the set of all numbers of the form _n_² − 4, such that _n_ is an integer in the range from 0 to 19 inclusive". Sometimes the vertical bar ("|") is used instead of the colon.


Membership

If _B_ is a set and _x_ is one of the objects of _B_, this is denoted as _x_ ∈ _B_, and is read as "x is an element of B", as "x belongs to B", or short "x is in B". If _y_ is not a member of _B_ then this is written as _y_ ∉ _B_, read as "y is not an element of B", or as analogous negated forms.

For example, with respect to the sets _A_ = , _B_ = , and _F_ = defined above,

    4 ∈ _A_ and 12 ∈ _F_; and
    9 ∉ _F_ and green ∉ _B_.

Subsets

If every element of set _A_ is also in _B_, then _A_ is said to be a _subset_ of _B_, written _A_ ⊆ _B_ (pronounced _A is contained in B_). Equivalently, one can write _B_ ⊇ _A_, read as _B is a superset of A_, _B includes A_, or _B contains A_. The relationship between sets established by ⊆ is called _inclusion_ or _containment_, and is given also for equal sets, that is, equality of sets is the same as mutual containment in each other: _A_ ⊆ _B_ and _B_ ⊆ _A_ is equivalent to _A_ = _B_.

If _A_ is a subset of _B_, but not equal to _B_, then _A_ is called a _proper subset_ of _B_, written _A_ ⊊ _B_, or simply _A_ ⊂ _B_ (_A is a proper subset of B_), or _B_ ⊋ _A_ (_B is a proper superset of A_, _B_ ⊃ _A_).

The expressions _A_ ⊂ _B_ and _B_ ⊃ _A_ are used differently by different authors; some authors use them to mean the same as _A_ ⊆ _B_ (respectively _B_ ⊇ _A_), whereas others use them to mean the same as _A_ ⊊ _B_ (respectively _B_ ⊋ _A_).

Examples:

-   The set of all men is a proper subset of the set of all people.
-   ⊆ .

-   ⊆ .

There is a unique set with no members, called the _empty set_ (or the _null set_), which is denoted by the symbol ∅ (other notations are used; see empty set). The empty set is a subset of every set, and every set is a subset of itself:

-   ∅ ⊆ _A_.
-   _A_ ⊆ _A_.

The above characterization of set equality can be used to show that two sets described differently are, in fact, equal:

-   if and only if and .

A partition of a set _S_ is a set of nonempty subsets of _S_ such that every element _x_ in _S_ is in exactly one of these subsets, that is, any two sets of the partition contain no element in common, they are said to be _disjoint_, and the union of all elements of the partition that are sets themselves, make up _S_.

Power sets

The power set of a set _S_ is the set of all subsets of _S_. The power set contains _S_ itself and the empty set because these are both subsets of _S_. For example, the power set of the set is . The power set of a set _S_ is usually written as _P_(_S_).

The power set of a finite set with _n_ elements has 2^(_n_) elements. For example, the set contains three elements, and the power set shown above contains 2³ = 8 elements.

The power set of an infinite (either countable or uncountable) set is always uncountable. Moreover, the power set of a set is always strictly "bigger" than the original set in the sense that there is no way to pair every element of _S_ with exactly one element of _P_(_S_). (There is never an onto map or surjection from _S_ onto _P_(_S_).)

Every partition of a set _S_ is a subset of the powerset of _S_.


Cardinality

The cardinality of a set _S_, denoted , is the number of members of _S_. For example, if _B_ = , then . Repeated members in an extensional definition are not counted, so , too.

The cardinality of the empty set is zero. For example, the set of all three-sided squares has zero members and thus is the empty set. Though it may seem trivial, the empty set, like the number zero, is important in mathematics. Indeed, the existence of this set is one of the fundamental concepts of axiomatic set theory.

Some sets have infinite cardinality. The set N of natural numbers, for instance, is infinite. Some infinite cardinalities are greater than others. For instance, the set of real numbers has greater cardinality than the set of natural numbers. However, it can be shown that the cardinality of (which is to say, the number of points on) a straight line is the same as the cardinality of any segment of that line, of the entire plane, and indeed of any finite-dimensional Euclidean space.


Special sets

ℕ are contained in the integers ℤ, which are contained in the rational numbers ℚ, which are contained in the real numbers ℝ, which are contained in the complex numbers ℂ]]

There are some sets or kinds of sets that hold great mathematical importance and are referred to with such regularity that they have acquired special names and notational conventions to identify them. One of these is the empty set, denoted or ∅. A set with exactly one element, _x_, is a unit set, or singleton, .[3]

Many of these sets are represented using blackboard bold or bold typeface. Special sets of numbers include

-   P or ℙ, denoting the set of all primes: P = .
-   N or ℕ, denoting the set of all natural numbers: N = (sometimes defined excluding 0).
-   Z or ℤ, denoting the set of all integers (whether positive, negative or zero): Z = .
-   Q or ℚ, denoting the set of all rational numbers (that is, the set of all proper and improper fractions): Q = . For example, 1/4 ∈ Q and 11/6 ∈ Q. All integers are in this set since every integer _a_ can be expressed as the fraction _a_/1 (Z ⊊ Q).
-   R or ℝ, denoting the set of all real numbers. This set includes all rational numbers, together with all irrational numbers (that is, algebraic numbers that cannot be rewritten as fractions such as , as well as transcendental numbers such as π, _e_).
-   C or ℂ, denoting the set of all complex numbers: C = . For example, 1 + 2_i_ ∈ C.
-   H or ℍ, denoting the set of all quaternions: H = . For example, 1 + _i_ + 2_j_ − _k_ ∈ H.

Each of the above sets of numbers has an infinite number of elements, and each can be considered to be a proper subset of the sets listed below it. The primes are used less frequently than the others outside of number theory and related fields.

Positive and negative sets are sometimes denoted by superscript plus and minus signs, respectively. For example, ℚ⁺ represents the set of positive rational numbers.


Basic operations

There are several fundamental operations for constructing new sets from given sets.

Unions

Two sets can be "added" together. The _union_ of _A_ and _B_, denoted by _A_ ∪ _B_, is the set of all things that are members of either _A_ or _B_.

Examples:

-   -   -   {1, 2, 3} ∪ {3, 4, 5} = {1, 2, 3, 4, 5}

SOME BASIC PROPERTIES OF UNIONS:

-   -   -   -   -   -   if and only if

Intersections

A new set can also be constructed by determining which members two sets have "in common". The _intersection_ of _A_ and _B_, denoted by is the set of all things that are members of both _A_ and _B_. If then _A_ and _B_ are said to be _disjoint_.

Examples:

-   -   -

SOME BASIC PROPERTIES OF INTERSECTIONS:

-   -   -   -   -   -   if and only if

Complements

Two sets can also be "subtracted". The _relative complement_ of _B_ in _A_ (also called the _set-theoretic difference_ of _A_ and _B_), denoted by (or ), is the set of all elements that are members of _A_ but not members of _B_. Note that it is valid to "subtract" members of a set that are not in the set, such as removing the element _green_ from the set ; doing so has no effect.

In certain settings all sets under discussion are considered to be subsets of a given universal set _U_. In such cases, is called the _absolute complement_ or simply _complement_ of _A_, and is denoted by _A_′.

-

Examples:

-   -   -   If _U_ is the set of integers, _E_ is the set of even integers, and _O_ is the set of odd integers, then _U_ \ _E_ = _E_′ = _O_.

Some basic properties of complements:

-   for .

-   -   -   -   -   -   -   -   and

-   and

-   .

-   if then

An extension of the complement is the symmetric difference, defined for sets _A_, _B_ as

_A_ _Δ_ _B_ = (_A_ \ _B_) ∪ (_B_ \ _A_).
For example, the symmetric difference of and is the set . The power set of any set becomes a Boolean ring with symmetric difference as the addition of the ring (with the empty set as neutral element) and intersection as the multiplication of the ring.

Cartesian product

A new set can be constructed by associating every element of one set with every element of another set. The _Cartesian product_ of two sets _A_ and _B_, denoted by _A_ × _B_ is the set of all ordered pairs (_a_, _b_) such that _a_ is a member of _A_ and _b_ is a member of _B_.

Examples:

-   -   -

Some basic properties of Cartesian products:

-   -   -

Let _A_ and _B_ be finite sets; then the cardinality of the Cartesian product is the product of the cardinalities:

-   | _A_ × _B_ | = | _B_ × _A_ | = | _A_ | × | _B_ |.


Applications

Set theory is seen as the foundation from which virtually all of mathematics can be derived. For example, structures in abstract algebra, such as groups, fields and rings, are sets closed under one or more operations.

One of the main applications of naive set theory is constructing relations. A relation from a domain _A_ to a codomain _B_ is a subset of the Cartesian product _A_ × _B_. Given this concept, we are quick to see that the set _F_ of all ordered pairs (_x_, _x_²), where _x_ is real, is quite familiar. It has a domain set R and a codomain set that is also R, because the set of all squares is subset of the set of all real numbers. If placed in functional notation, this relation becomes _f_(_x_) = _x_². The reason these two are equivalent is for any given value, _y_ that the function is defined for, its corresponding ordered pair, (_y_, _y_²) is a member of the set _F_.


Axiomatic set theory

Although initially naive set theory, which defines a set merely as _any well-defined_ collection, was well accepted, it soon ran into several obstacles. It was found that this definition spawned several paradoxes, most notably:

-   Russell's paradoxIt shows that the "set of all sets that _do not contain themselves_," i.e. the "set" does not exist.
-   Cantor's paradoxIt shows that "the set of all sets" cannot exist.

The reason is that the phrase _well-defined_ is not very well-defined. It was important to free set theory of these paradoxes because nearly all of mathematics was being redefined in terms of set theory. In an attempt to avoid these paradoxes, set theory was axiomatized based on first-order logic, and thus AXIOMATIC SET THEORY was born.

For most purposes, however, naive set theory is still useful.


Principle of inclusion and exclusion

The inclusion–exclusion principle is a counting technique that can be used to count the number of elements in a union of two sets, if the size of each set and the size of their intersection are known. It can be expressed symbolically as

|_A_ ∪ _B_| = |_A_| + |_B_| − |_A_ ∩ _B_|.

A more general form of the principle can be used to find the cardinality of any finite union of sets:

$$\begin{align}
\left|A_{1}\cup A_{2}\cup A_{3}\cup\ldots\cup A_{n}\right|=& \left(\left|A_{1}\right|+\left|A_{2}\right|+\left|A_{3}\right|+\ldots\left|A_{n}\right|\right) \\
&{} - \left(\left|A_{1}\cap A_{2}\right|+\left|A_{1}\cap A_{3}\right|+\ldots\left|A_{n-1}\cap A_{n}\right|\right) \\
&{} + \ldots \\
&{} + \left(-1\right)^{n-1}\left(\left|A_{1}\cap A_{2}\cap A_{3}\cap\ldots\cap A_{n}\right|\right).
\end{align}$$


De Morgan's laws

Augustus De Morgan stated two laws about sets.

If A and B are any two sets then,

-   (A ∪ B)′ = A′ ∩ B′

The complement of A union B equals the complement of A intersected with the complement of B.

-   (A ∩ B)′ = A′ ∪ B′

The complement of A intersected with B is equal to the complement of A union to the complement of B.


See also

-   Set notation
-   Mathematical object
-   Alternative set theory
-   Axiomatic set theory
-   Category of sets
-   Class (set theory)
-   Dense set
-   Family of sets
-   Fuzzy set
-   Internal set
-   Mereology
-   Multiset
-   Naive set theory
-   Principia Mathematica
-   Rough set
-   Russell's paradox
-   Sequence (mathematics)
-   Taxonomy
-   Tuple


Notes


References

-   -   -   -


External links

Cantor's "Beiträge zur Begründung der transfiniten Mengenlehre" (in German)

Category:Concepts in logic Category:Mathematical objects *

[1] "Eine Menge, ist die Zusammenfassung bestimmter, wohlunterschiedener Objekte unserer Anschauung oder unseres Denkens – welche Elemente der Menge genannt werden – zu einem Ganzen."

[2]

[3]