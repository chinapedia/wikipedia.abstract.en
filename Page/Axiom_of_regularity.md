In mathematics, the AXIOM OF REGULARITY (also known as the AXIOM OF FOUNDATION) is an axiom of Zermelo–Fraenkel set theory that states that every non-empty set _A_ contains an element that is disjoint from _A_. In first-order logic, the axiom reads:

    ∀x (x ≠ ⌀ → ∃y ∈ x (y ∩ x = ⌀)).

The axiom implies that no set is an element of itself, and that there is no infinite sequence (_a_(n)_) such that _a_(i+1)_ is an element of _a_(i)_ for all _i_. With the axiom of dependent choice (which is a weakened form of the axiom of choice), this result can be reversed: if there are no such infinite sequences, then the axiom of regularity is true. Hence, the axiom of regularity is equivalent, given the axiom of dependent choice, to the alternative axiom that there are no downward infinite membership chains.

The axiom of regularity was introduced by ; it was adopted in a formulation closer to the one found in contemporary textbooks by . Virtually all results in the branches of mathematics based on set theory hold even in the absence of regularity; see chapter 3 of . However, regularity makes some properties of ordinals easier to prove; and it not only allows induction to be done on well-ordered sets but also on proper classes that are well-founded relational structures such as the lexicographical ordering on {(n, α)|n ∈ ω ∧ α is an ordinal } .

Given the other axioms of Zermelo–Fraenkel set theory, the axiom of regularity is equivalent to the axiom of induction. The axiom of induction tends to be used in place of the axiom of regularity in intuitionistic theories (ones that do not accept the law of the excluded middle), where the two axioms are not equivalent.

In addition to omitting the axiom of regularity, non-standard set theories have indeed postulated the existence of sets that are elements of themselves.


Elementary implications of regularity

No set is an element of itself

Let _A_ be a set, and apply the axiom of regularity to {_A_}, which is a set by the axiom of pairing. We see that there must be an element of {_A_} which is disjoint from {_A_}. Since the only element of {_A_} is _A_, it must be that _A_ is disjoint from {_A_}. So, since _A_ ∈ {_A_}, we cannot have _A_ ∈ _A_ (by the definition of disjoint).

No infinite descending sequence of sets exists

Suppose, to the contrary, that there is a function, _f_, on the natural numbers with _f_(_n_+1) an element of _f_(_n_) for each _n_. Define _S_ = {_f_(_n_): _n_ a natural number}, the range of _f_, which can be seen to be a set from the axiom schema of replacement. Applying the axiom of regularity to _S_, let _B_ be an element of _S_ which is disjoint from _S_. By the definition of _S_, _B_ must be _f_(_k_) for some natural number _k_. However, we are given that _f_(_k_) contains _f_(_k_+1) which is also an element of _S_. So _f_(_k_+1) is in the intersection of _f_(_k_) and _S_. This contradicts the fact that they are disjoint sets. Since our supposition led to a contradiction, there must not be any such function, _f_.

The nonexistence of a set containing itself can be seen as a special case where the sequence is infinite and constant.

Notice that this argument only applies to functions _f_ that can be represented as sets as opposed to undefinable classes. The hereditarily finite sets, V_(ω), satisfy the axiom of regularity (and all other axioms of ZFC except the axiom of infinity). So if one forms a non-trivial ultrapower of V_(ω), then it will also satisfy the axiom of regularity. The resulting model will contain elements, called non-standard natural numbers, that satisfy the definition of natural numbers in that model but are not really natural numbers. They are fake natural numbers which are "larger" than any actual natural number. This model will contain infinite descending sequences of elements. For example, suppose _n_ is a non-standard natural number, then (n − 1) ∈ n and (n − 2) ∈ (n − 1), and so on. For any actual natural number _k_, (n − k − 1) ∈ (n − k). This is an unending descending sequence of elements. But this sequence is not definable in the model and thus not a set. So no contradiction to regularity can be proved.

Simpler set-theoretic definition of the ordered pair

The axiom of regularity enables defining the ordered pair (_a_,_b_) as {_a_,{_a_,_b_}}. See ordered pair for specifics. This definition eliminates one pair of braces from the canonical Kuratowski definition (_a_,_b_) = {{_a_},{_a_,_b_}}.

Every set has an ordinal rank

This was actually the original form of the axiom in von Neumann's axiomatization.

Suppose _x_ is any set. Let _t_ be the transitive closure of {_x_}. Let _u_ be the subset of _t_ consisting of unranked sets. If _u_ is empty, then _x_ is ranked and we are done. Otherwise, apply the axiom of regularity to _u_ to get an element _w_ of _u_ which is disjoint from _u_. Since _w_ is in _u_, _w_ is unranked. _w_ is a subset of _t_ by the definition of transitive closure. Since _w_ is disjoint from _u_, every element of _w_ is ranked. Applying the axioms of replacement and union to combine the ranks of the elements of _w_, we get an ordinal rank for _w_, to wit $\textstyle \operatorname{rank} (w) = \cup \{ \operatorname{rank} (z) + 1 \vert z \in w \}$. This contradicts the conclusion that _w_ is unranked. So the assumption that _u_ was non-empty must be false and _x_ must have rank.

For every two sets, only one can be an element of the other

Let _X_ and _Y_ be sets. Then apply the axiom of regularity to the set {_X_,_Y_}. We see there must be an element of {_X_,_Y_} which is also disjoint from it. It must be either _X_ or _Y_. By the definition of disjoint then, we must have either _Y_ is not an element of _X_ or vice versa.


The axiom of dependent choice and no infinite descending sequence of sets implies regularity

Let the non-empty set _S_ be a counter-example to the axiom of regularity; that is, every element of _S_ has a non-empty intersection with _S_. We define a binary relation _R_ on _S_ by aRb :  ⇔ b ∈ S ∩ a, which is entire by assumption. Thus, by the axiom of dependent choice, there is some sequence (_a_(n)_) in _S_ satisfying _a_(n)Ra_(n+1)_ for all _n_ in N. As this is an infinite descending chain, we arrive at a contradiction and so, no such _S_ exists.


Regularity and the rest of ZF(C) axioms

Regularity was shown to be relatively consistent with the rest of ZF by and , meaning that if ZF without regularity is consistent, then ZF (with regularity) is also consistent. For his proof in modern notation see for instance.

The axiom of regularity was also shown to be independent from the other axioms of ZF(C), assuming they are consistent. The result was announced by Paul Bernays in 1941, although he did not publish a proof until 1954. The proof involves (and led to the study of) Rieger-Bernays permutation models (or method), which were used for other proofs of independence for non-well-founded systems ( and ).


Regularity and Russell's paradox

Naive set theory (the axiom schema of unrestricted comprehension and the axiom of extensionality) is inconsistent due to Russell's paradox. In early formalizations of sets, mathematicians and logicians have avoided that contradiction by replacing the axiom schema of comprehension with the much weaker axiom schema of separation. However, this step alone takes one to theories of sets which are considered too weak. So some of the power of comprehension was added back via the other existence axioms of ZF set theory (pairing, union, powerset, replacement, and infinity) which may be regarded as special cases of comprehension. So far, these axioms do not seem to lead to any contradiction. Subsequently, the axiom of choice and the axiom of regularity were added to exclude models with some undesirable properties. These two axioms are known to be relatively consistent.

In the presence of the axiom schema of separation, Russell's paradox becomes a proof that there is no set of all sets. The axiom of regularity together with the axiom of pairing also prohibit such a universal set. However, Russell's paradox yields a proof that there is no "set of all sets" using the axiom schema of separation alone, without any additional axioms. In particular, ZF without the axiom of regularity already prohibits such a universal set.

If a theory is extended by adding an axiom or axioms, then any (possibly undesirable) consequences of the original theory remain consequences of the extended theory. In particular, if ZF without regularity is extended by adding regularity to get ZF, then any contradiction (such as Russell's paradox) which followed from the original theory would still follow in the extended theory.

The existence of Quine atoms (sets that satisfy the formula equation _x_ = {_x_}, i.e. have themselves as their only elements) is consistent with the theory obtained by removing the axiom of regularity from ZFC. Various non-wellfounded set theories allow "safe" circular sets, such as Quine atoms, without becoming inconsistent by means of Russell's paradox.


Regularity, the cumulative hierarchy, and types

In ZF it can be proven that the class ⋃_(α)V_(α)​, called the von Neumann universe, is equal to the class of all sets. This statement is even equivalent to the axiom of regularity (if we work in ZF with this axiom omitted). From any model which does not satisfy axiom of regularity, a model which satisfies it can be constructed by taking only sets in ⋃_(α)V_(α)​.

wrote that "The idea of rank is a descendant of Russell's concept of _type_". Comparing ZF with type theory, Alasdair Urquhart wrote that "Zermelo's system has the notational advantage of not containing any explicitly typed variables, although in fact it can be seen as having an implicit type structure built into it, at least if the axiom of regularity is included. The details of this implicit typing are spelled out in Zermelo], and again in a well-known article of George Boolos Boolos]."

went further and claimed that:

In the same paper, Scott shows that an axiomatic system based on the inherent properties of the cumulative hierarchy turns out to be equivalent to ZF, including regularity.


History

The concept of well-foundedness and rank of a set were both introduced by Dmitry Mirimanoff (Mirimanoff) cf. and . Mirimanoff called a set _x_ "regular" (French: "ordinaire") if every descending chain _x_ ∋ _x₁_ ∋ _x₂_ ∋ ... is finite. Mirimanoff however did not consider his notion of regularity (and well-foundedness) as an axiom to be observed by all sets ; in later papers Mirimanoff also explored what are now called non-well-founded sets ("extraordinaire" in Mirimanoff's terminology) .

and pointed out that non-well-founded sets are superfluous (on p. 404 in van Heijenoort) and in the same publication von Neumann gives an axiom (p. 412 in translation) which excludes some, but not all, non-well-founded sets . In a subsequent publication, gave the following axiom (rendered in modern notation by A. Rieger):

    ∀x (x ≠ ∅ → ∃y ∈ x (y ∩ x = ∅)).


Regularity in the presence of urelements

Urelements are objects that are not sets, but which can be elements of sets. In ZF set theory, there are no urelements, but in some other set theories such as ZFA, there are. In these theories, the axiom of regularity must be modified. The statement "$x \not = \emptyset$" needs to be replaced with a statement that x is not empty and is not an urelement. One suitable replacement is (∃y)[y ∈ x], which states that _x_ is inhabited.


See also

-   Non-well-founded set theory
-   Scott's trick


References

-   -   -   reprinted in

-   -   -   -   -   -   -   -   -   -   -   -   -   -   Reprinted in _From Frege to Gödel_, van Heijenoort, 1967, in English translation by Stefan Bauer-Mengelberg, pp. 291–301.

-   -   -   ; translation in

-   -   -   ; translation in


External links

-   -   Inhabited set and the axiom of foundation on nLab

Category:Axioms of set theory Category:Wellfoundedness