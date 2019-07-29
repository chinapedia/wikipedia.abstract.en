In mathematics, a FINITARY RELATION is a property that assigns truth values to finite tuples of elements. Typically, the property describes a possible connection between the components of a -tuple. For a given set of -tuples, a truth value is assigned to each -tuple according to whether the property does or does not hold. When , one has the most common version, a binary relation.


Informal introduction

_Relation_ is formally defined in the next section. In this section we introduce the concept of a relation with a familiar everyday example. Consider the relation involving three roles that people might play, expressed in a statement of the form "_X_ thinks that _Y_ likes _Z_ ". The facts of a concrete situation could be organized in a table like the following:

  Person X   Person Y   Person Z
  ---------- ---------- ----------
  Alice      Bob        Denise
  Charles    Alice      Bob
  Charles    Charles    Alice
  Denise     Denise     Denise

  : Relation S : X thinks that Y likes Z

Each row of the table records a fact or makes an assertion of the form "_X_ thinks that _Y_ likes _Z_ ". For instance, the first row says, in effect, "Alice thinks that Bob likes Denise". The table represents a relation _S_ over the set _P_ of people under discussion:

    _P_ = {Alice, Bob, Charles, Denise}.

The data of the table are equivalent to the following set of ordered triples:

    _S_ = {(Alice, Bob, Denise), (Charles, Alice, Bob), (Charles, Charles, Alice), (Denise, Denise, Denise)}.

It is usual to write _S_(Alice, Bob, Denise) to say the same thing as the first row of the table. The relation _S_ is a _ternary_ relation, since there are _three_ items involved in each row. The relation itself is a mathematical object defined in terms of concepts from set theory (i.e., the relation is a subset of the Cartesian product on {Person X, Person Y, Person Z}), that carries all of the information from the table in one neat package. Mathematically, then, a relation is simply an "ordered set".

The table for relation _S_ is an extremely simple example of a relational database. The theoretical aspects of databases are the specialty of one branch of computer science, while their practical impacts have become all too familiar in our everyday lives. Computer scientists, logicians, and mathematicians, however, tend to see different things when they look at these concrete examples and samples of the more general concept of a relation.

For one thing, databases are designed to deal with empirical data, and experience is always finite, whereas mathematics at the very least concerns itself with potential infinity. This difference in perspective brings up a number of ideas that may be usefully introduced at this point, if by no means covered in depth.


Relations with a small number of "places"

The variable k giving the number of "_places_" in the relation, 3 for the above example, is a non-negative integer, called the relation's _arity_, _adicity_, or _dimension_. A relation with k places is variously called a k_-ary_, a k_-adic_, or a k_-dimensional_ relation. Relations with a finite number of places are called _finite-place_ or _finitary_ relations. It is possible to generalize the concept to include _infinitary_ relations between infinitudes of individuals, for example infinite sequences; however, in this article only finitary relations are discussed, which will from now on simply be called relations.

Since there is only one 0-tuple, the so-called empty tuple ( ), there are only two zero-place relations: the one that always holds, and the one that never holds. They are sometimes useful for constructing the base case of an induction argument. One-place relations are called UNARY RELATIONS. For instance, any set (such as the collection of Nobel laureates) can be viewed as a collection of individuals having some property (such as that of having been awarded the Nobel prize). Two-place relations are called binary relations or, in the past, _dyadic relations_. Binary relations are very common, given the ubiquity of relations such as:

-   Equality and inequality, denoted by signs such as '=' and '<' in statements like '5 < 12';
-   Being a divisor of, denoted by the sign '∣' in statements like '13 ∣ 143';
-   Set membership, denoted by the sign '∈' in statements like '1 ∈ ℕ'.

A k_-ary_ relation is a straightforward generalization of a binary relation.


Formal definitions

The simpler of the two definitions of _k_-place relations encountered in mathematics is:

DEFINITION 1. A RELATION _L_ over the sets _X_₁, …, _X__(_k_) is a subset of their Cartesian product, written _L_ ⊆ _X_₁ × … × _X__(_k_).

Relations are classified according to the number of sets in the defining Cartesian product, in other words, according to the number of terms following _L_. Hence:

-   _Lu_ denotes a unary relation or property;
-   _Luv_ or _uLv_ denotes a binary relation (an homogeneous relation when _X_₁ = _X_₂ and a heterogeneous relation when _X_₁ ≠ _X_₂);
-   _Luvw_ denotes a ternary relation;
-   _Luvwx_ denotes a _quaternary_ relation.

Relations with more than four terms are usually referred to as _k_-ary or _n_-ary, for example, "a 5-ary relation". A _k_-ary relation is simply a set of _k_-tuples.

The second definition makes use of an idiom that is common in mathematics, stipulating that "such and such is an _n_-tuple" in order to ensure that such and such a mathematical object is determined by the specification of _n_ component mathematical objects. In the case of a relation _L_ over _k_ sets, there are _k_ + 1 things to specify, namely, the _k_ sets plus a subset of their Cartesian product. In the idiom, this is expressed by saying that _L_ is a (_k_ + 1)-tuple.

DEFINITION 2. A RELATION _L_ over the sets _X_₁, …, _X__(_k_) is a (_k_ + 1)-tuple _L_ = (_X_₁, …, _X__(_k_), _G_(_L_)), where _G_(_L_) is a subset of the Cartesian product _X_₁ × … × _X__(_k_). _G_(_L_) is called the _graph_ of _L_.

Elements of a relation are more briefly denoted by using boldface characters, for example, the constant element _A_ = (a₁, …, a_(_k_)) or the variable element _X_ = (_x_₁, …, _x__(_k_)).

A statement of the form "_A'' IS IN THE RELATION _L_ " OR "_A'' satisfies _L_ " is taken to mean that _A_ is in _L_ under the first definition and that _A_ is in _G_(_L_) under the second definition.

The following considerations apply under either definition:

-   The sets _X__(_j_) for _j_ = 1 to _k_ are called the domains of the relation. Under the first definition, the relation does not uniquely determine a given sequence of domains.
-   If all of the domains _X__(_j_) are the same set _X_, then it is simpler to refer to _L_ as a _k_-ary relation over _X_.
-   If any of the domains _X__(_j_) is empty, then the defining Cartesian product is empty, and the only relation over such a sequence of domains is the empty relation _L_ = ⌀. Hence it is commonly stipulated that all of the domains be nonempty.

As a rule, whatever definition best fits the application at hand will be chosen for that purpose, and anything that falls under it will be called a relation for the duration of that discussion. If it becomes necessary to distinguish the two definitions, an entity satisfying the second definition may be called an _embedded_ or _included_ relation.

If _L_ is a relation over the domains _X_₁, …, _X__(_k_), it is conventional to consider a sequence of terms called _variables_, _x_₁, …, _x__(_k_), that are said to _range over_ the respective domains.

Let a Boolean domain B be a two-element set, say, B = {0, 1}, whose elements can be interpreted as logical values, typically 0 = false and 1 = true. The characteristic function of the relation _L_, written _ƒ__(_L_) or χ(_L_), is the Boolean-valued function _ƒ__(_L_) : _X_₁ × … × _X__(_k_) → B, defined in such a way that _ƒ__(_L_)(X) = 1 just in case the _k_-tuple X is in the relation _L_. Such a function can also be called an indicator function, particularly in probability and statistics, to avoid confusion with the notion of a characteristic function in probability theory.

It is conventional in applied mathematics, computer science, and statistics to refer to a Boolean-valued function like _ƒ__(_L_) as a _k_-place predicate. From the more abstract viewpoint of formal logic and model theory, the relation _L_ constitutes a _logical model_ or a _relational structure_ that serves as one of many possible interpretations of some _k_-place predicate symbol.

Because relations arise in many scientific disciplines as well as in many branches of mathematics and logic, there is considerable variation in terminology. This article treats a relation as the set-theoretic extension of a relational concept or term. A variant usage reserves the term "relation" to the corresponding logical entity, either the logical comprehension, which is the totality of intensions or abstract properties that all of the elements of the relation in extension have in common, or else the symbols that are taken to denote these elements and intensions. Further, some writers of the latter persuasion introduce terms with more concrete connotations, like "relational structure", for the set-theoretic extension of a given relational concept.


History

The logician Augustus De Morgan, in work published around 1860, was the first to articulate the notion of relation in anything like its present sense. He also stated the first formal results in the theory of relations (on De Morgan and relations, see Merrill 1990). Charles Sanders Peirce restated and extended De Morgan's results.

In the 19th century Peirce, Gottlob Frege, Georg Cantor, Richard Dedekind, and others advanced the theory of relations. Many of their ideas, especially on relations called orders, were summarized in Principles of Mathematics (1903) by Bertrand Russell. Russell and A. N. Whitehead made free use of these results in their _Principia Mathematica_.


Notes


See also

-   Functional relation
-   Incidence structure
-   Hypergraph
-   Logic of relatives
-   Logical matrix
-   Partial order
-   Projection (set theory)
-   Reflexive relation
-   Relation algebra
-   Sign relation
-   Transitive relation
-   Relational algebra
-   Relational model
-   Predicate (mathematical logic)


References

-   Peirce, C.S. (1870), "Description of a Notation for the Logic of Relatives, Resulting from an Amplification of the Conceptions of Boole's Calculus of Logic", _Memoirs of the American Academy of Arts and Sciences_ 9, 317–78, 1870. Reprinted, _Collected Papers_ CP 3.45–149, _Chronological Edition_ CE 2, 359–429.
-   Ulam, S.M. and Bednarek, A.R. (1990), "On the Theory of Relational Structures and Schemata for Parallel Computation", pp. 477–508 in A.R. Bednarek and Françoise Ulam (eds.), _Analogies Between Analogies: The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators_, University of California Press, Berkeley, CA.


Bibliography

-   Bourbaki, N. (1994) _Elements of the History of Mathematics_, John Meldrum, trans. Springer-Verlag.
-   Carnap, Rudolf (1958) _Introduction to Symbolic Logic with Applications_. Dover Publications.
-   Halmos, P.R. (1960) _Naive Set Theory_. Princeton NJ: D. Van Nostrand Company.
-   Lawvere, F.W., and R. Rosebrugh (2003) _Sets for Mathematics_, Cambridge Univ. Press.
-   Lewis, C.I. (1918) A Survey of Symbolic Logic, Chapter 3: Applications of the Boole—Schröder Algebra, via Internet Archive
-   Lucas, J. R. (1999) _Conceptual Roots of Mathematics_. Routledge.
-   Maddux, R.D. (2006) _Relation Algebras_, vol. 150 in 'Studies in Logic and the Foundations of Mathematics'. Elsevier Science.
-   Merrill, Dan D. (1990) _Augustus De Morgan and the logic of relations_. Kluwer.
-   Peirce, C.S. (1984) _Writings of Charles S. Peirce: A Chronological Edition, Volume 2, 1867-1871_. Peirce Edition Project, eds. Indiana University Press.
-   Russell, Bertrand (1903/1938) _The Principles of Mathematics, 2nd ed._ Cambridge Univ. Press.
-   Suppes, Patrick (1960/1972) _Axiomatic Set Theory_. Dover Publications.
-   Tarski, A. (1956/1983) _Logic, Semantics, Metamathematics, Papers from 1923 to 1938_, J.H. Woodger, trans. 1st edition, Oxford University Press. 2nd edition, J. Corcoran, ed. Indianapolis IN: Hackett Publishing.
-   Ulam, S.M. (1990) _Analogies Between Analogies: The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators_ in A.R. Bednarek and Françoise Ulam, eds., University of California Press.
-   Roland Fraïssé (2000) [1986] _Theory of Relations_, North Holland

Category:Mathematical logic Category:Mathematical relations