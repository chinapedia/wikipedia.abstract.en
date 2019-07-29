In mathematics, a FINITE SET is a set that has a finite number of elements. Informally, a finite set is a set which one could in principle count and finish counting. For example,

{2, 4, 6, 8, 10}
is a finite set with five elements. The number of elements of a finite set is a natural number (a non-negative integer) and is called the cardinality of the set. A set that is not finite is called INFINITE. For example, the set of all positive integers is infinite:

{1, 2, 3, …}.
Finite sets are particularly important in combinatorics, the mathematical study of counting. Many arguments involving finite sets rely on the pigeonhole principle, which states that there cannot exist an injective function from a larger finite set to a smaller finite set.


Definition and terminology

Formally, a set is called FINITE if there exists a bijection

_f_: _S_ → {1, …, _n_}
for some natural number . The number is the set's cardinality, denoted as ||. The empty set {} or Ø is considered finite, with cardinality zero.[1][2][3][4]

If a set is finite, its elements may be written — in many ways — in a sequence:

_x_₁, _x_₂, …, _x__(_n_) (_x__(_i_) ∈ _S_, 1 ≤ _i_ ≤ _n_).
In combinatorics, a finite set with elements is sometimes called an _-set_ and a subset with elements is called a _-subset_. For example, the set {5,6,7} is a 3-set – a finite set with three elements – and {6,7} is a 2-subset of it.

(Those familiar with the definition of the natural numbers themselves as conventional in set theory, the so-called von Neumann construction, may prefer to use the existence of the bijection f: S → n, which is equivalent.)


Basic properties

Any proper subset of a finite set _S_ is finite and has fewer elements than _S_ itself. As a consequence, there cannot exist a bijection between a finite set _S_ and a proper subset of _S_. Any set with this property is called Dedekind-finite. Using the standard ZFC axioms for set theory, every Dedekind-finite set is also finite, but this implication cannot be proved in ZF (Zermelo–Fraenkel axioms without the axiom of choice) alone. The axiom of countable choice, a weak version of the axiom of choice, is sufficient to prove this equivalence.

Any injective function between two finite sets of the same cardinality is also a surjective function (a surjection). Similarly, any surjection between two finite sets of the same cardinality is also an injection.

The union of two finite sets is finite, with

|_S_ ∪ _T_| ≤ |_S_| + |_T_|.
In fact:

|_S_ ∪ _T_| = |_S_| + |_T_| − |_S_ ∩ _T_|.
More generally, the union of any finite number of finite sets is finite. The Cartesian product of finite sets is also finite, with:

|_S_ × _T_| = |_S_| × |_T_|.
Similarly, the Cartesian product of finitely many finite sets is finite. A finite set with _n_ elements has 2 distinct subsets. That is, the power set of a finite set is finite, with cardinality 2.

Any subset of a finite set is finite. The set of values of a function when applied to elements of a finite set is finite.

All finite sets are countable, but not all countable sets are finite. (Some authors, however, use "countable" to mean "countably infinite", so do not consider finite sets to be countable.)

The free semilattice over a finite set is the set of its non-empty subsets, with the join operation being given by set union.


Necessary and sufficient conditions for finiteness

In Zermelo–Fraenkel set theory without the axiom of choice (ZF), the following conditions are all equivalent:

1.  _S_ is a finite set. That is, _S_ can be placed into a one-to-one correspondence with the set of those natural numbers less than some specific natural number.
2.  (Kazimierz Kuratowski) _S_ has all properties which can be proved by mathematical induction beginning with the empty set and adding one new element at a time. (See below for the set-theoretical formulation of Kuratowski finiteness.)
3.  (Paul Stäckel) _S_ can be given a total ordering which is well-ordered both forwards and backwards. That is, every non-empty subset of _S_ has both a least and a greatest element in the subset.
4.  Every one-to-one function from _P_(_P_(_S_)) into itself is onto. That is, the powerset of the powerset of _S_ is Dedekind-finite (see below).[5]
5.  Every surjective function from _P_(_P_(_S_)) onto itself is one-to-one.
6.  (Alfred Tarski) Every non-empty family of subsets of _S_ has a minimal element with respect to inclusion.[6] (Equivalently, every non-empty family of subsets of _S_ has a maximal element with respect to inclusion.)
7.  _S_ can be well-ordered and any two well-orderings on it are order isomorphic. In other words, the well-orderings on _S_ have exactly one order type.

If the axiom of choice is also assumed (the axiom of countable choice is sufficient[7]), then the following conditions are all equivalent:

1.  _S_ is a finite set.
2.  (Richard Dedekind) Every one-to-one function from _S_ into itself is onto.
3.  Every surjective function from _S_ onto itself is one-to-one.
4.  _S_ is empty or every partial ordering of _S_ contains a maximal element.


Foundational issues

Georg Cantor initiated his theory of sets in order to provide a mathematical treatment of infinite sets. Thus the distinction between the finite and the infinite lies at the core of set theory. Certain foundationalists, the strict finitists, reject the existence of infinite sets and thus recommend a mathematics based solely on finite sets. Mainstream mathematicians consider strict finitism too confining, but acknowledge its relative consistency: the universe of hereditarily finite sets constitutes a model of Zermelo–Fraenkel set theory with the axiom of infinity replaced by its negation.

Even for those mathematicians who embrace infinite sets, in certain important contexts, the formal distinction between the finite and the infinite can remain a delicate matter. The difficulty stems from Gödel's incompleteness theorems. One can interpret the theory of hereditarily finite sets within Peano arithmetic (and certainly also vice versa), so the incompleteness of the theory of Peano arithmetic implies that of the theory of hereditarily finite sets. In particular, there exists a plethora of so-called non-standard models of both theories. A seeming paradox is that there are non-standard models of the theory of hereditarily finite sets which contain infinite sets, but these infinite sets look finite from within the model. (This can happen when the model lacks the sets or functions necessary to witness the infinitude of these sets.) On account of the incompleteness theorems, no first-order predicate, nor even any recursive scheme of first-order predicates, can characterize the standard part of all such models. So, at least from the point of view of first-order logic, one can only hope to describe finiteness approximately.

More generally, informal notions like set, and particularly finite set, may receive interpretations across a range of formal systems varying in their axiomatics and logical apparatus. The best known axiomatic set theories include Zermelo-Fraenkel set theory (ZF), Zermelo-Fraenkel set theory with the Axiom of Choice (ZFC), Von Neumann–Bernays–Gödel set theory (NBG), Non-well-founded set theory, Bertrand Russell's Type theory and all the theories of their various models. One may also choose among classical first-order logic, various higher-order logics and intuitionistic logic.

A formalist might see the meaning of _set_ varying from system to system. Some kinds of Platonists might view particular formal systems as approximating an underlying reality.


Set-theoretic definitions of finiteness

In contexts where the notion of natural number sits logically prior to any notion of set, one can define a set _S_ as finite if _S_ admits a bijection to some set of natural numbers of the form {x | x < n}. Mathematicians more typically choose to ground notions of number in set theory, for example they might model natural numbers by the order types of finite well-ordered sets. Such an approach requires a structural definition of finiteness that does not depend on natural numbers.

Various properties that single out the finite sets among all sets in the theory ZFC turn out logically inequivalent in weaker systems such as ZF or intuitionistic set theories. Two definitions feature prominently in the literature, one due to Richard Dedekind, the other to Kazimierz Kuratowski. (Kuratowski's is the definition used above.)

A set _S_ is called Dedekind infinite if there exists an injective, non-surjective function f : S → S. Such a function exhibits a bijection between _S_ and a proper subset of _S_, namely the image of _f_. Given a Dedekind infinite set _S_, a function _f_, and an element _x_ that is not in the image of _f_, we can form an infinite sequence of distinct elements of _S_, namely x, f(x), f(f(x)), .... Conversely, given a sequence in _S_ consisting of distinct elements x₁, x₂, x₃, ..., we can define a function _f_ such that on elements in the sequence f(x_(i)) = x_(i + 1) and _f_ behaves like the identity function otherwise. Thus Dedekind infinite sets contain subsets that correspond bijectively with the natural numbers. Dedekind finite naturally means that every injective self-map is also surjective.

Kuratowski finiteness is defined as follows. Given any set _S_, the binary operation of union endows the powerset _P_(_S_) with the structure of a semilattice. Writing _K_(_S_) for the sub-semilattice generated by the empty set and the singletons, call set _S_ Kuratowski finite if _S_ itself belongs to _K_(_S_).The original paper by defined a set _S_ to be finite when

    _P_(_S_)∖{∅} = ⋂{_X_ ∈ _P_(_P_(_S_)∖{∅}); (∀_x_∈_S_, {_x_}∈_X_) and (∀_A_,_B_∈_X_, _A_∪_B_∈_X_)}.

In other words, _S_ is finite when the set of all non-empty subsets of _S_ is equal to the intersection of all classes _X_ which satisfy:

-   all elements of _X_ are non-empty subsets of _S_,
-   the set {_x_} is an element of _X_ for all _x_ in _S_,
-   _X_ is closed under pairwise unions.

Kuratowski showed that this is equivalent to the numerical definition of a finite set. Intuitively, _K_(_S_) consists of the finite subsets of _S_. Crucially, one does not need induction, recursion or a definition of natural numbers to define _generated by_ since one may obtain _K_(_S_) simply by taking the intersection of all sub-semilattices containing the empty set and the singletons.

Readers unfamiliar with semilattices and other notions of abstract algebra may prefer an entirely elementary formulation. Kuratowski finite means _S_ lies in the set _K_(_S_), constructed as follows. Write _M_ for the set of all subsets _X_ of _P_(_S_) such that:

-   _X_ contains the empty set;
-   For every set _T_ in _P_(_S_), if _X_ contains _T_ then _X_ also contains the union of _T_ with any singleton.

Then _K_(_S_) may be defined as the intersection of _M_.

In ZF, Kuratowski finite implies Dedekind finite, but not vice versa. In the parlance of a popular pedagogical formulation, when the axiom of choice fails badly, one may have an infinite family of socks with no way to choose one sock from more than finitely many of the pairs. That would make the set of such socks Dedekind finite: there can be no infinite sequence of socks, because such a sequence would allow a choice of one sock for infinitely many pairs by choosing the first sock in the sequence. However, Kuratowski finiteness would fail for the same set of socks.

Other concepts of finiteness

In ZF set theory without the axiom of choice, the following concepts of finiteness for a set _S_ are distinct. They are arranged in strictly decreasing order of strength, i.e. if a set _S_ meets a criterion in the list then it meets all of the following criteria. In the absence of the axiom of choice the reverse implications are all unprovable, but if the axiom of choice is assumed then all of these concepts are equivalent.[8] (Note that none of these definitions need the set of finite ordinal numbers to be defined first; they are all pure "set-theoretic" definitions in terms of the equality and membership relations, not involving ω.)

-   I-FINITE. Every non-empty set of subsets of _S_ has a ⊆-maximal element. (This is equivalent to requiring the existence of a ⊆-minimal element. It is also equivalent to the standard numerical concept of finiteness.)
-   IA-FINITE. For every partition of _S_ into two sets, at least one of the two sets is I-finite.
-   II-FINITE. Every non-empty ⊆-monotone set of subsets of _S_ has a ⊆-maximal element.
-   III-FINITE. The power set _P_(_S_) is Dedekind finite.
-   IV-FINITE. _S_ is Dedekind finite.
-   V-FINITE. ∣_S_∣ = 0 or 2⋅∣_S_∣ > ∣_S_|.
-   VI-FINITE. ∣_S_∣ = 0 or ∣_S_∣ = 1 or ∣_S_∣² > ∣_S_∣.
-   VII-FINITE. _S_ is I-finite or not well-orderable.

The forward implications (from strong to weak) are theorems within ZF. Counter-examples to the reverse implications (from weak to strong) in ZF with urelements are found using model theory.[9]

Most of these finiteness definitions and their names are attributed to by . However, definitions I, II, III, IV and V were presented in , together with proofs (or references to proofs) for the forward implications. At that time, model theory was not sufficiently advanced to find the counter-examples.

Each of the properties I-finite thru IV-finite is a notion of smallness in the sense that any subset of a set with such a property will also have the property. This is not true for V-finite thru VII-finite because they may have countably infinite subsets.


See also

-   FinSet
-   Ordinal number
-   Peano arithmetic


Notes


References

-   {{ citation | first1 = Tom M. | last1 = Apostol | year = 1974 | lccn = 72011473 | title = Mathematical Analysis | edition = 2nd | publisher = Addison-Wesley | location = Menlo Park }}
-   {{ citation | last1 = Cohn | first1 = Paul Moritz, F.R.S. | title = Universal Algebra | location = Dordrecht | publisher = D. Reidel | year = 1981 | isbn = 90-277-1254-9 | lccn = 80-29568 }}
-   -   -   -   -   -   {{ citation | first1 = Anthony E. | last1 = Labarre, Jr. | year = 1968 | lccn = 68019130 | title = Intermediate Mathematical Analysis | publisher = Holt, Rinehart and Winston | location = New York }}
-   -   {{ citation | first1 = Walter | last1 = Rudin | year = 1976 | isbn = 0-07-054235-X | title = Principles Of Mathematical Analysis | edition = 3rd | publisher = McGraw-Hill | location = New York }}
-   -   -   -


External links

-

Category:Basic concepts in set theory Category:Cardinal numbers

[1]

[2]

[3]

[4]

[5] The equivalence of the standard numerical definition of finite sets to the Dedekind-finiteness of the power set of the power set was shown in 1912 by . This Whitehead/Russell theorem is described in more modern language by .

[6] , demonstrated that his definition (which is also known as I-finite) is equivalent to Kuratowski's set-theoretical definition, which he then noted is equivalent to the standard numerical definition via the proof by .

[7]

[8] This list of 8 finiteness concepts is presented with this numbering scheme by both , and , although the details of the presentation of the definitions differ in some respects which do not affect the meanings of the concepts.

[9]  found counter-examples to each of the reverse implications in Mostowski models. Lévy attributes most of the results to earlier papers by Mostowski and Lindenbaum.