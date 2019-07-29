NAÏVE SET THEORY is any of several theories of sets used in the discussion of the foundations of mathematics. [1] Unlike axiomatic set theories, which are defined using formal logic, naïve set theory is defined informally, in natural language. It describes the aspects of mathematical sets familiar in discrete mathematics (for example Venn diagrams and symbolic reasoning about their Boolean algebra), and suffices for the everyday use of set theory concepts in contemporary mathematics.[2]

Sets are of great importance in mathematics; in modern formal treatments, most mathematical objects (numbers, relations, functions, etc.) are defined in terms of sets. Naïve set theory suffices for many purposes, while also serving as a stepping-stone towards more formal treatments.


Method

A _naïve theory_ in the sense of "naïve set theory" is a non-formalized theory, that is, a theory that uses a natural language to describe sets and operations on sets. The words _and_, _or_, _if ... then_, _not_, _for some_, _for every_ are treated as in ordinary mathematics. As a matter of convenience, use of naïve set theory and its formalism prevails even in higher mathematics – including in more formal settings of set theory itself.

The first development of set theory was a naïve set theory. It was created at the end of the 19th century by Georg Cantor as part of his study of infinite sets[3] and developed by Gottlob Frege in his _Begriffsschrift_.

Naïve set theory may refer to several very distinct notions. It may refer to

-   Informal presentation of an axiomatic set theory, e.g. as in _Naïve Set Theory_ by Paul Halmos.
-   Early or later versions of Georg Cantor's theory and other informal systems.
-   Decidedly inconsistent theories (whether axiomatic or not), such as a theory of Gottlob Frege[4] that yielded Russell's paradox, and theories of Giuseppe Peano[5] and Richard Dedekind.

Paradoxes

The assumption that any property may be used to form a set, without restriction, leads to paradoxes. One common example is Russell's paradox: there is no set consisting of "all sets that do not contain themselves". Thus consistent systems of naïve set theory must include some limitations on the principles which can be used to form sets.

Cantor's theory

Some believe that Georg Cantor's set theory was not actually implicated in the set-theoretic paradoxes (see Frápolli 1991). One difficulty in determining this with certainty is that Cantor did not provide an axiomatization of his system. By 1899, Cantor was aware of some of the paradoxes following from unrestricted interpretation of his theory, for instance Cantor's paradox[6] and the Burali-Forti paradox,[7] and did not believe that they discredited his theory.[8] Cantor's paradox can actually be derived from the above (false) assumption—that any property may be used to form a set—using for is a cardinal number". Frege explicitly axiomatized a theory in which a formalized version of naïve set theory can be interpreted, and it is _this_ formal theory which Bertrand Russell actually addressed when he presented his paradox, not necessarily a theory Cantor, who, as mentioned, was aware of several paradoxes, presumably had in mind.

Axiomatic theories

Axiomatic set theory was developed in response to these early attempts to understand sets, with the goal of determining precisely what operations were allowed and when.

Consistency

A naïve set theory is not _necessarily_ inconsistent, if it correctly specifies the sets allowed to be considered. This can be done by the means of definitions, which are implicit axioms. It is possible to state all the axioms explicitly, as in the case of Halmos' _Naïve Set Theory_, which is actually an informal presentation of the usual axiomatic Zermelo–Fraenkel set theory. It is "naïve" in that the language and notations are those of ordinary informal mathematics, and in that it doesn't deal with consistency or completeness of the axiom system.

Likewise, an axiomatic set theory is not necessarily consistent: not necessarily free of paradoxes. It follows from Gödel's incompleteness theorems that a sufficiently complicated first order logic system (which includes most common axiomatic set theories) cannot be proved consistent from within the theory itself – even if it actually is consistent. However, the common axiomatic systems are generally believed to be consistent; by their axioms they do exclude _some_ paradoxes, like Russell's paradox. Based on Gödel's theorem, it is just not known – and never can be – if there are _no_ paradoxes at all in these theories or in any first-order set theory.

The term _naïve set theory_ is still today also used in some literature to refer to the set theories studied by Frege and Cantor, rather than to the informal counterparts of modern axiomatic set theory.

Utility

The choice between an axiomatic approach and other approaches is largely a matter of convenience. In everyday mathematics the best choice may be informal use of axiomatic set theory. References to particular axioms typically then occur only when demanded by tradition, e.g. the axiom of choice is often mentioned when used. Likewise, formal proofs occur only when warranted by exceptional circumstances. This informal usage of axiomatic set theory can have (depending on notation) precisely the _appearance_ of naïve set theory as outlined below. It is considerably easier to read and write (in the formulation of most statements, proofs, and lines of discussion) and is less error-prone than a strictly formal approach.


Sets, membership and equality

In naïve set theory, a SET is described as a well-defined collection of objects. These objects are called the ELEMENTS or MEMBERS of the set. Objects can be anything: numbers, people, other sets, etc. For instance, 4 is a member of the set of all even integers. Clearly, the set of even numbers is infinitely large; there is no requirement that a set be finite.

Passage_with_the_set_definition_of_Georg_Cantor.png The definition of sets goes back to Georg Cantor. He wrote 1915 in his article _Beiträge zur Begründung der transfiniten Mengenlehre_:

  “Unter einer 'Menge' verstehen wir jede Zusammenfassung M von bestimmten wohlunterschiedenen Objekten unserer Anschauung oder unseres Denkens (welche die 'Elemente' von M genannt werden) zu einem Ganzen.” – Georg Cantor

  “A set is a gathering together into a whole of definite, distinct objects of our perception or of our thought—which are called elements of the set.” – Georg Cantor

First_usage_of_the_symbol_∈.png.]]

Note on consistency

It does _not_ follow from this definition _how_ sets can be formed, and what operations on sets again will produce a set. The term "well-defined" in "well-defined collection of objects" cannot, by itself, guarantee the consistency and unambiguity of what exactly constitutes and what does not constitute a set. Attempting to achieve this would be the realm of axiomatic set theory or of axiomatic CLASS THEORY.

The problem, in this context, with informally formulated set theories, not derived from (and implying) any particular axiomatic theory, is that there may be several widely differing formalized versions, that have both different sets and different rules for how new sets may be formed, that all conform to the original informal definition. For example, Cantor's verbatim definition allows for considerable freedom in what constitutes a set. On the other hand, it is unlikely that Cantor was particularly interested in sets containing cats and dogs, but rather only in sets containing purely mathematical objects. An example of such a class of sets could be the von Neumann universe. But even when fixing the class of sets under consideration, it is not always clear which rules for set formation are allowed without introducing paradoxes.

For the purpose of fixing the discussion below, the term "well-defined" should instead be interpreted as an _intention_, with either implicit or explicit rules (axioms or definitions), to rule out inconsistencies. The purpose is to keep the often deep and difficult issues of consistency away from the, usually simpler, context at hand. An explicit ruling out of _all_ conceivable inconsistencies (paradoxes) cannot be achieved for an axiomatic set theory anyway, due to Gödel's second incompleteness theorem, so this does not at all hamper the utility of naïve set theory as compared to axiomatic set theory in the simple contexts considered below. It merely simplifies the discussion. Consistency is henceforth taken for granted unless explicitly mentioned.

Membership

If _x_ is a member of a set _A_, then it is also said that _x_ BELONGS TO _A_, or that _x_ is in _A_. This is denoted by _x_ ∈ _A_. The symbol ∈ is a derivation from the lowercase Greek letter epsilon, "ε", introduced by Giuseppe Peano in 1889 and shall be the first letter of the word ἐστί (means "is"). The symbol ∉ is often used to write _x_ ∉ _A_, meaning "x is not in A".

Equality

Two sets _A_ and _B_ are defined to be EQUAL when they have precisely the same elements, that is, if every element of _A_ is an element of _B_ and every element of _B_ is an element of _A_. (See axiom of extensionality.) Thus a set is completely determined by its elements; the description is immaterial. For example, the set with elements 2, 3, and 5 is equal to the set of all prime numbers less than 6. If the sets _A_ and _B_ are equal, this is denoted symbolically as _A_ = _B_ (as usual).

Empty set

The empty set, often denoted Ø and sometimes {}, is a set with no members at all. Because a set is determined completely by its elements, there can be only one empty set. (See axiom of empty set.) Although the empty set has no members, it can be a member of other sets. Thus Ø ≠ {Ø}, because the former has no members and the latter has one member. In mathematics, the only sets with which one needs to be concerned can be built up from the empty set alone.()


Specifying sets

The simplest way to describe a set is to list its elements between curly braces (known as defining a set _extensionally_). Thus denotes the set whose only elements are and . (See axiom of pairing.) Note the following points:

-   The order of elements is immaterial; for example, {2, 1}}}.
-   Repetition (multiplicity) of elements is irrelevant; for example, {1, 1, 1, 2} {{=}} {1, 2}}}.

(These are consequences of the definition of equality in the previous section.)

This notation can be informally abused by saying something like to indicate the set of all dogs, but this example would usually be read by mathematicians as "the set containing the single element _dogs_".

An extreme (but correct) example of this notation is , which denotes the empty set.

The notation , or sometimes , is used to denote the set containing all objects for which the condition holds (known as defining a set _intensionally_). For example, ∈ R} denotes the set of real numbers, denotes the set of everything with blonde hair.

This notation is called set-builder notation (or "SET COMPREHENSION", particularly in the context of Functional programming). Some variants of set builder notation are:

-   denotes the set of all that are already members of such that the condition holds for . For example, if is the set of integers, then is the set of all even integers. (See axiom of specification.)

-   denotes the set of all objects obtained by putting members of the set into the formula . For example, is again the set of all even integers. (See axiom of replacement.)

-   is the most general form of set builder notation. For example, is the set of all dog owners.


Subsets

Given two sets _A_ and _B_, _A_ is a SUBSET of _B_ if every element of _A_ is also an element of _B_. In particular, each set _B_ is a subset of itself; a subset of _B_ that is not equal to _B_ is called a PROPER SUBSET.

If _A_ is a subset of _B_, then one can also say that _B_ is a SUPERSET of _A_, that _A_ is CONTAINED IN _B_, or that _B_ CONTAINS _A_. In symbols, _A_ ⊆ _B_ means that _A_ is a subset of _B_, and _B_ ⊇ _A_ means that _B_ is a superset of _A_. Some authors use the symbols ⊂ and ⊃ for subsets, and others use these symbols only for _proper_ subsets. For clarity, one can explicitly use the symbols ⊊ and ⊋ to indicate non-equality.

As an illustration, let R be the set of real numbers, let Z be the set of integers, let _O_ be the set of odd integers, and let _P_ be the set of current or former U.S. Presidents. Then _O_ is a subset of Z, Z is a subset of R, and (hence) _O_ is a subset of R, where in all cases _subset_ may even be read as _proper subset_. Note that not all sets are comparable in this way. For example, it is not the case either that R is a subset of _P_ nor that _P_ is a subset of R.

It follows immediately from the definition of equality of sets above that, given two sets _A_ and _B_, _A_ = _B_ if and only if _A_ ⊆ _B_ and _B_ ⊆ _A_. In fact this is often given as the definition of equality. Usually when trying to prove that two sets are equal, one aims to show these two inclusions. Note that the empty set is a subset of every set (the statement that all elements of the empty set are also members of any set _A_ is vacuously true).

The set of all subsets of a given set _A_ is called the POWER SET of _A_ and is denoted by 2^(A) or P(A); the "_P_" is sometimes in a script font. If the set _A_ has _n_ elements, then P(A) will have 2^(n) elements.


Universal sets and absolute complements

In certain contexts, one may consider all sets under consideration as being subsets of some given universal set. For instance, when investigating properties of the real numbers R (and subsets of R), R may be taken as the universal set. A true universal set is not included in standard set theory (see PARADOXES below), but is included in some non-standard set theories.

Given a universal set U and a subset _A_ of U, the COMPLEMENT of _A_ (in U) is defined as

    _A_^(C) := {_x_ ∈ U : _x_ ∉ _A_}.

In other words, _A_^(C) ("_A-complement_"; sometimes simply _A_', "_A-prime_" ) is the set of all members of U which are not members of _A_. Thus with R, Z and _O_ defined as in the section on subsets, if Z is the universal set, then _O^(C)_ is the set of even integers, while if R is the universal set, then _O^(C)_ is the set of all real numbers that are either even integers or not integers at all.


Unions, intersections, and relative complements

Given two sets _A_ and _B_, their UNION is the set consisting of all objects which are elements of _A_ or of _B_ or of both (see axiom of union). It is denoted by _A_ ∪ _B_.

The INTERSECTION of _A_ and _B_ is the set of all objects which are both in _A_ and in _B_. It is denoted by _A_ ∩ _B_.

Finally, the RELATIVE COMPLEMENT of _B_ relative to _A_, also known as the SET THEORETIC DIFFERENCE of _A_ and _B_, is the set of all objects that belong to _A_ but _not_ to _B_. It is written as _A_ \ _B_ or _A_ − _B_.

Symbolically, these are respectively

    _A_ ∪ B := {_x_ : (_x_ ∈ _A_) or (_x_ ∈ _B_)};
    _A_ ∩ _B_ := {_x_ : (_x_ ∈ _A_) and (_x_ ∈ _B_)} = {_x_ ∈ _A_ : _x_ ∈ _B_} = {_x_ ∈ _B_ : _x_ ∈ _A_};
    _A_ \ _B_ := {_x_ : (_x_ ∈ _A_) and not (_x_ ∈ _B_) } = {_x_ ∈ _A_ : not (_x_ ∈ _B_)}.

Notice that _A_ doesn't have to be a subset of _B_ for _B_ \ _A_ to make sense; this is the difference between the relative complement and the absolute complement (_A_^(C) = _U_ \ _A_) from the previous section.

To illustrate these ideas, let _A_ be the set of left-handed people, and let _B_ be the set of people with blond hair. Then _A_ ∩ _B_ is the set of all left-handed blond-haired people, while _A_ ∪ _B_ is the set of all people who are left-handed or blond-haired or both. _A_ \ _B_, on the other hand, is the set of all people that are left-handed but not blond-haired, while _B_ \ _A_ is the set of all people who have blond hair but aren't left-handed.

Now let _E_ be the set of all human beings, and let _F_ be the set of all living things over 1000 years old. What is _E_ ∩ _F_ in this case? No living human being is over 1000 years old, so _E_ ∩ _F_ must be the empty set {}.

For any set _A_, the power set P(A) is a Boolean algebra under the operations of union and intersection.


Ordered pairs and Cartesian products

Intuitively, an ORDERED PAIR is simply a collection of two objects such that one can be distinguished as the _first element_ and the other as the _second element_, and having the fundamental property that, two ordered pairs are equal if and only if their _first elements_ are equal and their _second elements_ are equal.

Formally, an ordered pair with FIRST COORDINATE _a_, and SECOND COORDINATE _b_, usually denoted by (_a_, _b_), can be defined as the set {{_a_}, {_a_, _b_}}.

It follows that, two ordered pairs (_a_,_b_) and (_c_,_d_) are equal if and only if _a_ = _c_ and _b_ = _d_.

Alternatively, an ordered pair can be formally thought of as a set {a,b} with a total order.

(The notation (_a_, _b_) is also used to denote an open interval on the real number line, but the context should make it clear which meaning is intended. Otherwise, the notation ]_a_, _b_[ may be used to denote the open interval whereas (_a_, _b_) is used for the ordered pair).

If _A_ and _B_ are sets, then the CARTESIAN PRODUCT (or simply PRODUCT) is defined to be:

    _A_ × _B_ = {(_a_,_b_) : _a_ is in _A_ and _b_ is in _B_}.

That is, _A_ × _B_ is the set of all ordered pairs whose first coordinate is an element of _A_ and whose second coordinate is an element of _B_.

This definition may be extended to a set _A_ × _B_ × _C_ of ordered triples, and more generally to sets of ordered n-tuples for any positive integer _n_. It is even possible to define infinite Cartesian products, but this requires a more recondite definition of the product.

Cartesian products were first developed by René Descartes in the context of analytic geometry. If R denotes the set of all real numbers, then R² := R × R represents the Euclidean plane and R³ := R × R × R represents three-dimensional Euclidean space.


Some important sets

There are some ubiquitous sets for which the notation is almost universal. Some of these are listed below. In the list, _a_, _b_, and _c_ refer to natural numbers, and _r_ and _s_ are real numbers.

1.  Natural numbers are used for counting. A blackboard bold capital N (ℕ) often represents this set.
2.  Integers appear as solutions for _x_ in equations like _x_ + _a_ = _b_. A blackboard bold capital Z (ℤ) often represents this set (from the German _Zahlen_, meaning _numbers_).
3.  Rational numbers appear as solutions to equations like _a_ + _bx_ = _c_. A blackboard bold capital Q (ℚ) often represents this set (for _quotient_, because R is used for the set of real numbers).
4.  Algebraic numbers appear as solutions to polynomial equations (with integer coefficients) and may involve radicals (including $i=\sqrt{-1\,}$) and certain other irrational numbers. A Q with an overline ($\overline{\mathbb{Q}}$) often represents this set. The overline denotes the operation of algebraic closure.
5.  Real numbers represent the "real line" and include all numbers that can be approximated by rationals. These numbers may be rational or algebraic but may also be transcendental numbers, which cannot appear as solutions to polynomial equations with rational coefficients. A blackboard bold capital R (ℝ) often represents this set.
6.  Complex numbers are sums of a real and an imaginary number: r + s i. Here either r or s (or both) can be zero; thus, the set of real numbers and the set of strictly imaginary numbers are subsets of the set of complex numbers, which form an algebraic closure for the set of real numbers, meaning that every polynomial with coefficients in ℝ has at least one root in this set. A blackboard bold capital C (ℂ) often represents this set. Note that since a number r + s i can be identified with a point (r, s) in the plane, ℂ is basically "the same" as the Cartesian product ℝ×ℝ ("the same" meaning that any point in one determines a unique point in the other and for the result of calculations, it doesn't matter which one is used for the calculation, as long as multiplication rule is appropriate for ℂ).


Paradoxes in early set theory

The unrestricted formation principle of sets referred to as the axiom schema of unrestricted comprehension,

    _If_ _is a property, then there exists a set_ {_x_ : _P_(_x_)}}} (FALSE),[9]

is the source of several early appearing paradoxes:

-   {_x_ : _x_ is an ordinal}}} led, in the year 1897, to the Burali-Forti paradox, the first published antinomy.

-   {_x_ : _x_ is a cardinal}}} produced Cantor's paradox in 1897.[10]

-   {_x_ : {} {{=}} {}}}} yielded CANTOR'S SECOND ANTINOMY in the year 1899.[11] Here the property is true for all , whatever may be, so would be a universal set, containing everything.

-   {_x_ : _x_ ∉ _x_}}}, i.e. the set of all sets that do not contain themselves as elements gave Russell's paradox in 1902.

If the axiom schema of unrestricted comprehension is weakened to the axiom schema of specification or AXIOM SCHEMA OF SEPARATION,

    _If_ _is a property, then for any set_ _there exists a set_ {_x_ ∈ _X_ : _P_(_x_)}}},[12]

then all the above paradoxes disappear.[13] There is a corollary. With the axiom schema of separation as an axiom of the theory, it follows, as a theorem of the theory:

    _The set of all sets does not exist_.

Or, more spectacularly (Halmos' phrasing[14]): There is no universe. _Proof_: Suppose that it exists and call it . Now apply the axiom schema of separation with _U_}} and for use . This leads to Russell's paradox again. Hence can't exist in this theory.[15]

Related to the above constructions is formation of the set

-   {_x_ : (_x_ ∈ _x_) → {} ≠ {}}}}, where the statement following the implication certainly is false. It follows, from the definition of , using the usual inference rules (and some afterthought when reading the proof in the linked article below) both that and holds, hence . This is Curry's paradox.

It is (perhaps surprisingly) not the possibility of that is problematic. It is again the axiom schema of unrestricted comprehension allowing for . With the axiom schema of specification instead of unrestricted comprehension, the conclusion doesn't hold and, hence is not a logical consequence.

Nonetheless, the possibility of is often removed explicitly[16] or, e.g. in ZFC, implicitly,[17] by demanding the axiom of regularity to hold.[18] One consequence of it is

    _There is no set_ _for which_ ,

or, in other words, no set is an element of itself.[19]

The axiom schema of separation is simply too weak (while unrestricted comprehension is a very strong axiom—too strong for set theory) to develop set theory with its usual operations and constructions outlined above.[20] The axiom of regularity is of a restrictive nature as well. Therefore, one is led to the formulation of other axioms to guarantee the existence of enough sets to form a set theory. Some of these have been described informally above and many others are possible. Not all conceivable axioms can be combined freely into consistent theories. For example, the axiom of choice of ZFC is incompatible with the conceivable EVERY SET OF REALS IS LEBESGUE MEASURABLE. The former implies the latter is false.


See also

-   Algebra of sets
-   Axiomatic set theory
-   Internal set theory
-   Set theory
-   Set (mathematics)
-   Partially ordered set


Notes


References

-   Bourbaki, N., _Elements of the History of Mathematics_, John Meldrum (trans.), Springer-Verlag, Berlin, Germany, 1994.
-   -   Devlin, K.J., _The Joy of Sets: Fundamentals of Contemporary Set Theory_, 2nd edition, Springer-Verlag, New York, NY, 1993.
-   María J. Frápolli|Frápolli, María J., 1991, "Is Cantorian set theory an iterative conception of set?". _Modern Logic_, v. 1 n. 4, 1991, 302–318.
-   -   Halmos, Paul, _Naïve Set Theory_. Princeton, NJ: D. Van Nostrand Company, 1960. Reprinted by Springer-Verlag, New York, 1974. (Springer-Verlag edition). Reprinted by Martino Fine Books, 2011. (Paperback edition).
-   -   Kelley, J.L., _General Topology_, Van Nostrand Reinhold, New York, NY, 1955.
-   van Heijenoort, J., _From Frege to Gödel, A Source Book in Mathematical Logic, 1879-1931_, Harvard University Press, Cambridge, MA, 1967. Reprinted with corrections, 1977. .
-   -   -


External links

-   Beginnings of set theory page at St. Andrews
-   Earliest Known Uses of Some of the Words of Mathematics (S)

Category:Set theory Category:Systems of set theory

[1] Jeff Miller writes that _naïve set theory_ (as opposed to axiomatic set theory) was used occasionally in the 1940s and became an established term in the 1950s. It appears in Hermann Weyl's review of P. A. Schilpp (Ed). (1946). “The Philosophy of Bertrand Russell” _American Mathematical Monthly_, 53(4), p. 210 and in a review by Laszlo Kalmar. (1946). “The Paradox of Kleene and Rosser”. _Journal of Symbolic Logic_, 11(4), p. 136. (JSTOR). 1 The term was later popularized in a book by Paul Halmos (1960). _Naïve Set Theory_.

[2] . "The working mathematicians usually thought in terms of a naïve set theory (probably one more or less equivalent to ZF) ... a practical requirement [of any new foundational system] could be that this system could be used "naïvely" by mathematicians not sophisticated in foundational research" (p. 236).

[3]

[4]  In Volume 2, Jena 1903. pp. 253-261 Frege discusses the antionomy in the afterword.

[5]  Axiom 52. chap. IV produces antinomies.

[6] Letter from Cantor to David Hilbert on September 26, 1897, p. 388.

[7] Letter from Cantor to Richard Dedekind on August 3, 1899, p. 408.

[8] Letters from Cantor to Richard Dedekind on August 3, 1899 and on August 30, 1899, p. 448 (System aller denkbaren Klassen) and p. 407. (There is no set of all sets.)

[9]  p. 4.

[10]

[11]

[12]

[13]

[14]

[15]

[16]  See discussion around Russell's paradox.

[17]  Section 1.6.

[18]

[19]  p. 61.

[20]