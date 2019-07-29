In mathematics, MODEL THEORY is the study of classes of mathematical structures (e.g. groups, fields, graphs, universes of set theory) from the perspective of mathematical logic. The objects of study are models of theories in a formal language. A set of sentences in a formal language is one of the components that form a THEORY. A MODEL of a theory is a structure (e.g. an interpretation) that satisfies the sentences of that theory.

Model theory recognizes and is intimately concerned with a duality: it examines semantical elements (meaning and truth) by means of syntactical elements (formulas and proofs) of a corresponding language: in a summary definition, dating from 1973,

    universal algebra + logic = MODEL THEORY.[1]

Model theory developed rapidly during the 1990s, and a more modern definition is provided by Wilfrid Hodges (1997):

    MODEL THEORY = algebraic geometry − fields.

Other nearby areas of mathematics include combinatorics, number theory, arithmetic dynamics, analytic functions, and non-standard analysis.

In a similar way to proof theory, model theory is situated in an area of interdisciplinarity among mathematics, philosophy, and computer science. The most prominent professional organization in the field of model theory is the Association for Symbolic Logic.


Branches

This article focuses on finitary first order model theory of infinite structures. Finite model theory, which concentrates on finite structures, diverges significantly from the study of infinite structures in both the problems studied and the techniques used. Model theory in higher-order logics or infinitary logics is hampered by the fact that completeness and compactness do not in general hold for these logics. However, a great deal of study has also been done in such logics.

Informally, model theory can be divided into classical model theory, model theory applied to groups and fields, and geometric model theory. A missing subdivision is computable model theory, but this can arguably be viewed as an independent subfield of logic.

Examples of early theorems from classical model theory include Gödel's completeness theorem, the upward and downward Löwenheim–Skolem theorems, Vaught's two-cardinal theorem, Scott's isomorphism theorem, the omitting types theorem, and the Ryll-Nardzewski theorem. Examples of early results from model theory applied to fields are Tarski's elimination of quantifiers for real closed fields, Ax's theorem on pseudo-finite fields, and Robinson's development of non-standard analysis. An important step in the evolution of classical model theory occurred with the birth of stability theory (through Morley's theorem on uncountably categorical theories and Shelah's classification program), which developed a calculus of independence and rank based on syntactical conditions satisfied by theories.

During the last several decades applied model theory has repeatedly merged with the more pure stability theory. The result of this synthesis is called geometric model theory in this article (which is taken to include o-minimality, for example, as well as classical geometric stability theory). An example of a theorem from geometric model theory is Hrushovski's proof of the Mordell–Lang conjecture for function fields. The ambition of geometric model theory is to provide a _geography of mathematics_ by embarking on a detailed study of definable sets in various mathematical structures, aided by the substantial tools developed in the study of pure model theory.


Universal algebra

Fundamental concepts in universal algebra are signatures σ and σ-algebras. Since these concepts are formally defined in the article on structures, the present article is an informal introduction which consists of examples of the way these terms are used.

    The standard signature of rings is σ_(ring) = {×,+,−,0,1}, where × and + are binary, − is unary, and 0 and 1 are nullary.
    The standard signature of semirings is σ_(smr) = {×,+,0,1}, where the arities are as above.
    The standard signature of groups (with multiplicative notation) is σ_(grp) = {×,^(−1),1}, where × is binary, ^(−1) is unary and 1 is nullary.
    The standard signature of monoids is σ_(mnd) = {×,1}.
    A ring is a σ_(ring)-structure which satisfies the identities (_u_ + _v_) + _w_,}} _v_ + _u_,}} _u_,}} 0,}} (_u_ × _v_) × _w_,}} _u_,}} _u_,}} (_u_ × _v_) + (_u_ × _w_)}} and (_v_ × _u_) + (_w_ × _u_).}}
    A group is a σ_(grp)-structure which satisfies the identities (_u_ × _v_) × _w_,}} _u_,}} _u_,}} 1}} and 1.}}
    A monoid is a σ_(mnd)-structure which satisfies the identities (_u_ × _v_) × _w_,}} _u_}} and _u_.}}
    A semigroup is a {×}-structure which satisfies the identity (_u_ × _v_) × _w_.}}
    A magma is just a {×}-structure.

This is a very efficient way to define most classes of algebraic structures, because there is also the concept of σ-homomorphism, which correctly specializes to the usual notions of homomorphism for groups, semigroups, magmas and rings. For this to work, the signature must be chosen well.

Terms such as the σ_(ring)-term _t_(_u_,_v_,_w_) given by are used to define identities _t{{'}}_,}} but also to construct free algebras. An equational class is a class of structures which, like the examples above and many others, is defined as the class of all σ-structures which satisfy a certain set of identities. Birkhoff's theorem states:

    A class of σ-structures is an equational class if and only if it is not empty and closed under subalgebras, homomorphic images, and direct products.

An important non-trivial tool in universal algebra are ultraproducts Π_(i ∈ I)A_(i)/U, where _I_ is an infinite set indexing a system of σ-structures _A_(i)_, and _U_ is an ultrafilter on _I_.

While model theory is generally considered a part of mathematical logic, universal algebra, which grew out of Alfred North Whitehead's (1898) work on abstract algebra, is part of algebra. This is reflected by their respective MSC classifications. Nevertheless, model theory can be seen as an extension of universal algebra.


Finite model theory

Finite model theory is the area of model theory which has the closest ties to universal algebra. Like some parts of universal algebra, and in contrast with the other areas of model theory, it is mainly concerned with finite algebras, or more generally, with finite σ-structures for signatures σ which may contain relation symbols as in the following example:

    The standard signature for graphs is σ_(grph)={_E_}, where _E_ is a binary relation symbol.
    A graph is a σ_(grph)-structure satisfying the sentence ∀u∀v(uEv → vEu).

A σ-homomorphism is a map that commutes with the operations and preserves the relations in σ. This definition gives rise to the usual notion of graph homomorphism, which has the interesting property that a bijective homomorphism need not be invertible. Structures are also a part of universal algebra; after all, some algebraic structures such as ordered groups have a binary relation <. What distinguishes finite model theory from universal algebra is its use of more general logical sentences (as in the example above) in place of identities. (In a model-theoretic context an identity _t_=_t'_ is written as a sentence ∀u₁u₂…u_(n)(t = t′).)

The logics employed in finite model theory are often substantially more expressive than first-order logic, the standard logic for model theory of infinite structures.


First-order logic

Whereas universal algebra provides the semantics for a signature, logic provides the syntax. With terms, identities and quasi-identities, even universal algebra has some limited syntactic tools; first-order logic is the result of making quantification explicit and adding negation into the picture.

A first-order FORMULA is built out of atomic formulas such as _R_(_f_(_x_,_y_),_z_) or _y_ = _x_ + 1 by means of the Boolean connectives ¬,∧,∨,→ and prefixing of quantifiers ∀v or ∃v. A sentence is a formula in which each occurrence of a variable is in the scope of a corresponding quantifier. Examples for formulas are φ (or φ(x) to mark the fact that at most x is an unbound variable in φ) and ψ defined as follows:

_φ_ = ∀_u_∀_v_(∃_w_(_x_ × _w_ = _u_ × _v_) → (∃_w_(_x_ × _w_ = _u_) ∨ ∃_w_(_x_ × _w_ = _v_))) ∧ _x_ ≠ 0 ∧ _x_ ≠ 1,

_ψ_ = ∀_u_∀_v_((_u_ × _v_ = _x_) → (_u_ = _x_) ∨ (_v_ = _x_)) ∧ _x_ ≠ 0 ∧ _x_ ≠ 1.

(Note that the equality symbol has a double meaning here.) It is intuitively clear how to translate such formulas into mathematical meaning. In the σ_(smr)-structure 𝒩 of the natural numbers, for example, an element _n_ SATISFIES the formula φ if and only if _n_ is a prime number. The formula ψ similarly defines irreducibility. Tarski gave a rigorous definition, sometimes called "Tarski's definition of truth", for the satisfaction relation ⊨, so that one easily proves:

𝒩 ⊨ _φ_(_n_) ⇔ _n_
is a prime number.

𝒩 ⊨ _ψ_(_n_) ⇔ _n_
is irreducible.

A set _T_ of sentences is called a (first-order) theory. A theory is SATISFIABLE if it has a MODEL ℳ ⊨ T, i.e. a structure (of the appropriate signature) which satisfies all the sentences in the set _T_. Consistency of a theory is usually defined in a syntactical way, but in first-order logic by the completeness theorem there is no need to distinguish between satisfiability and consistency. Therefore, model theorists often use "consistent" as a synonym for "satisfiable".

A theory is called CATEGORICAL if it determines a structure up to isomorphism, but it turns out that this definition is not useful, due to serious restrictions in the expressivity of first-order logic. The Löwenheim–Skolem theorem implies that for every theory _T_ having a countable signature[2] which has an infinite model for some infinite cardinal number, then it has a model of size κ for any infinite cardinal number κ. Since two models of different sizes cannot possibly be isomorphic, only finitary structures can be described by a categorical theory.

Lack of expressivity (when compared to higher logics such as second-order logic) has its advantages, though. For model theorists, the Löwenheim–Skolem theorem is an important practical tool rather than the source of Skolem's paradox. In a certain sense made precise by Lindström's theorem, first-order logic is the most expressive logic for which both the Löwenheim–Skolem theorem and the compactness theorem hold.

As a corollary (i.e., its contrapositive), the compactness theorem says that every unsatisfiable first-order theory has a finite unsatisfiable subset. This theorem is of central importance in infinite model theory, where the words "by compactness" are commonplace. One way to prove it is by means of ultraproducts. An alternative proof uses the completeness theorem, which is otherwise reduced to a marginal role in most of modern model theory.


Axiomatizability, elimination of quantifiers, and model-completeness

The first step, often trivial, for applying the methods of model theory to a class of mathematical objects such as groups, or trees in the sense of graph theory, is to choose a signature σ and represent the objects as σ-structures. The next step is to show that the class is an elementary class, i.e. axiomatizable in first-order logic (i.e. there is a theory _T_ such that a σ-structure is in the class if and only if it satisfies _T_). E.g. this step fails for the trees, since connectedness cannot be expressed in first-order logic. Axiomatizability ensures that model theory can speak about the right objects. Quantifier elimination can be seen as a condition which ensures that model theory does not say too much about the objects.

A theory _T_ has quantifier elimination if every first-order formula φ(x₁,...,x_(_n_)) over its signature is equivalent modulo _T_ to a first-order formula ψ(x₁,...,x_(_n_)) without quantifiers, i.e. ∀x₁…∀x_(n)(ϕ(x₁, …, x_(n)) ↔ ψ(x₁, …, x_(n))) holds in all models of _T_. For example, the theory of algebraically closed fields in the signature σ_(ring)=(×,+,−,0,1) has quantifier elimination because every formula is equivalent to a Boolean combination of equations between polynomials.

A substructure of a σ-structure is a subset of its domain, closed under all functions in its signature σ, which is regarded as a σ-structure by restricting all functions and relations in σ to the subset. An embedding of a σ-structure 𝒜 into another σ-structure ℬ is a map f: A → B between the domains which can be written as an isomorphism of 𝒜 with a substructure of ℬ. Every embedding is an injective homomorphism, but the converse holds only if the signature contains no relation symbols.

If a theory does not have quantifier elimination, one can add additional symbols to its signature so that it does. Early model theory spent much effort on proving axiomatizability and quantifier elimination results for specific theories, especially in algebra. But often instead of quantifier elimination a weaker property suffices:

A theory _T_ is called model-complete if every substructure of a model of _T_ which is itself a model of _T_ is an elementary substructure. There is a useful criterion for testing whether a substructure is an elementary substructure, called the Tarski–Vaught test. It follows from this criterion that a theory _T_ is model-complete if and only if every first-order formula φ(x₁,...,x_(_n_)) over its signature is equivalent modulo _T_ to an existential first-order formula, i.e. a formula of the following form:

∃_v_₁…∃_v__(_m_)_ψ_(_x_₁, …, _x__(_n_), _v_₁, …, _v__(_m_))
, where ψ is quantifier free. A theory that is not model-complete may or may not have a MODEL COMPLETION, which is a related model-complete theory that is not, in general, an extension of the original theory. A more general notion is that of MODEL COMPANIONS.


Categoricity

As observed in the section on first-order logic, first-order theories cannot be categorical, i.e. they cannot describe a unique model up to isomorphism, unless that model is finite. But two famous model-theoretic theorems deal with the weaker notion of κ-categoricity for a cardinal κ. A theory _T_ is called Κ-CATEGORICAL if any two models of _T_ that are of cardinality κ are isomorphic. It turns out that the question of κ-categoricity depends critically on whether κ is bigger than the cardinality of the language (i.e. ℵ₀ + |σ|, where |σ| is the cardinality of the signature). For finite or countable signatures this means that there is a fundamental difference between ℵ₀-cardinality and κ-cardinality for uncountable κ.

A few characterizations of ℵ₀-categoricity include:

    For a complete first-order theory _T_ in a finite or countable signature the following conditions are equivalent:
    1.  _T_ is ℵ₀-categorical.
    2.  For every natural number _n_, the Stone space _S_(n)_(_T_) is finite.
    3.  For every natural number _n_, the number of formulas φ(_x_₁, ..., _x__(n)) in _n_ free variables, up to equivalence modulo _T_, is finite.

This result, due independently to Engeler, Ryll-Nardzewski and Svenonius, is sometimes referred to as the Ryll-Nardzewski theorem.

Further, ℵ₀-categorical theories and their countable models have strong ties with oligomorphic groups. They are often constructed as Fraïssé limits.

Michael Morley's highly non-trivial result that (for countable languages) there is only _one_ notion of uncountable categoricity was the starting point for modern model theory, and in particular classification theory and stability theory:

    Morley's categoricity theorem
    If a first-order theory _T_ in a finite or countable signature is κ-categorical for some uncountable cardinal κ, then _T_ is κ-categorical for all uncountable cardinals κ.

UNCOUNTABLY CATEGORICAL (i.e. κ-categorical for all uncountable cardinals κ) theories are from many points of view the most well-behaved theories. A theory that is both ℵ₀-categorical and uncountably categorical is called TOTALLY CATEGORICAL.


Set theory

Set theory (which is expressed in a countable language), if it is consistent, has a countable model; this is known as Skolem's paradox, since there are sentences in set theory which postulate the existence of uncountable sets and yet these sentences are true in our countable model. Particularly the proof of the independence of the continuum hypothesis requires considering sets in models which appear to be uncountable when viewed from _within_ the model, but are countable to someone _outside_ the model.

The model-theoretic viewpoint has been useful in set theory; for example in Kurt Gödel's work on the constructible universe, which, along with the method of forcing developed by Paul Cohen can be shown to prove the (again philosophically interesting) independence of the axiom of choice and the continuum hypothesis from the other axioms of set theory.

In the other direction, model theory itself can be formalized within ZFC set theory. The development of the fundamentals of model theory (such as the compactness theorem) rely on the axiom of choice, or more exactly the Boolean prime ideal theorem. Other results in model theory depend on set-theoretic axioms beyond the standard ZFC framework. For example, if the Continuum Hypothesis holds then every countable model has an ultrapower which is saturated (in its own cardinality). Similarly, if the Generalized Continuum Hypothesis holds then every model has a saturated elementary extension. Neither of these results are provable in ZFC alone. Finally, some questions arising from model theory (such as compactness for infinitary logics) have been shown to be equivalent to large cardinal axioms.


Other basic notions

Reducts and expansions

A field or a vector space can be regarded as a (commutative) group by simply ignoring some of its structure. The corresponding notion in model theory is that of a REDUCT of a structure to a subset of the original signature. The opposite relation is called an _expansion_ - e.g. the (additive) group of the rational numbers, regarded as a structure in the signature {+,0} can be expanded to a field with the signature {×,+,1,0} or to an ordered group with the signature {+,0,<}.

Similarly, if σ' is a signature that extends another signature σ, then a complete σ'-theory can be restricted to σ by intersecting the set of its sentences with the set of σ-formulas. Conversely, a complete σ-theory can be regarded as a σ'-theory, and one can extend it (in more than one way) to a complete σ'-theory. The terms reduct and expansion are sometimes applied to this relation as well.

Interpretability

Given a mathematical structure, there are very often associated structures which can be constructed as a quotient of part of the original structure via an equivalence relation. An important example is a quotient group of a group.

One might say that to understand the full structure one must understand these quotients. When the equivalence relation is definable, we can give the previous sentence a precise meaning. We say that these structures are INTERPRETABLE.

A key fact is that one can translate sentences from the language of the interpreted structures to the language of the original structure. Thus one can show that if a structure _M_ interprets another whose theory is undecidable, then _M_ itself is undecidable.

Using the compactness and completeness theorems

Gödel's completeness theorem (not to be confused with his incompleteness theorems) says that a theory has a model if and only if it is consistent, i.e. no contradiction is proved by the theory. This is the heart of model theory as it lets us answer questions about theories by looking at models and vice versa. One should not confuse the completeness theorem with the notion of a complete theory. A complete theory is a theory that contains every sentence or its negation. Importantly, one can find a complete consistent theory extending any consistent theory. However, as shown by Gödel's incompleteness theorems only in relatively simple cases will it be possible to have a complete consistent theory that is also recursive, i.e. that can be described by a recursively enumerable set of axioms. In particular, the theory of natural numbers has no recursive complete and consistent theory. Non-recursive theories are of little practical use, since it is undecidable if a proposed axiom is indeed an axiom, making proof-checking a supertask.

The compactness theorem states that a set of sentences S is satisfiable if every finite subset of S is satisfiable. In the context of proof theory the analogous statement is trivial, since every proof can have only a finite number of antecedents used in the proof. In the context of model theory, however, this proof is somewhat more difficult. There are two well known proofs, one by Gödel (which goes via proofs) and one by Malcev (which is more direct and allows us to restrict the cardinality of the resulting model).

Model theory is usually concerned with first-order logic, and many important results (such as the completeness and compactness theorems) fail in second-order logic or other alternatives. In first-order logic all infinite cardinals look the same to a language which is countable. This is expressed in the Löwenheim–Skolem theorems, which state that any countable theory with an infinite model 𝔄 has models of all infinite cardinalities (at least that of the language) which agree with 𝔄 on all sentences, i.e. they are 'elementarily equivalent'.

Types

Fix an L-structure M, and a natural number n. The set of definable subsets of M^(n) over some parameters A is a Boolean algebra. By Stone's representation theorem for Boolean algebras there is a natural dual notion to this. One can consider this to be the topological space consisting of maximal consistent sets of formulae over A. We call this the space of (complete) n-types over A, and write S_(n)(A).

Now consider an element m ∈ M^(n). Then the set of all formulae ϕ with parameters in A in free variables x₁, …, x_(n) so that M ⊨ ϕ(m) is consistent and maximal such. It is called the _type_ of m over A.

One can show that for any n-type p, there exists some elementary extension N of M and some a ∈ N^(n) so that p is the type of a over A.

Many important properties in model theory can be expressed with types. Further many proofs go via constructing models with elements that contain elements with certain types and then using these elements.

ILLUSTRATIVE EXAMPLE: Suppose M is an algebraically closed field. The theory has quantifier elimination . This allows us to show that a type is determined exactly by the polynomial equations it contains. Thus the space of n-types over a subfield A is bijective with the set of prime ideals of the polynomial ring A[x₁, …, x_(n)]. This is the same set as the spectrum of A[x₁, …, x_(n)]. Note however that the topology considered on the type space is the constructible topology: a set of types is basic open iff it is of the form {p : f(x) = 0 ∈ p} or of the form {p : f(x) ≠ 0 ∈ p}. This is finer than the Zariski topology.


History

Model theory as a subject has existed since approximately the middle of the 20th century. However some earlier research, especially in mathematical logic, is often regarded as being of a model-theoretical nature in retrospect. The first significant result in what is now model theory was a special case of the downward Löwenheim–Skolem theorem, published by Leopold Löwenheim in 1915. The compactness theorem was implicit in work by Thoralf Skolem,[3] but it was first published in 1930, as a lemma in Kurt Gödel's proof of his completeness theorem. The Löwenheim–Skolem theorem and the compactness theorem received their respective general forms in 1936 and 1941 from Anatoly Maltsev.

The development of model theory can be traced to Alfred Tarski, a member of the Lwów–Warsaw school during the interbellum. Tarski's work included logical consequence, deductive systems, the algebra of logic, the theory of definability, and the semantic definition of truth, among other topics. His semantic methods culminated in the model theory he and a number of his Berkeley students developed in the 1950s and '60s. These modern concepts of model theory influenced Hilbert's program and modern mathematics.


See also

-   Algebraic theory
-   Axiomatizable class
-   Compactness theorem
-   Descriptive complexity
-   Elementary equivalence

-   First-order theories
-   Hyperreal number
-   Institutional model theory

-   Kripke semantics
-   Löwenheim–Skolem theorem
-   Proof theory
-   Saturated model
-   Skolem normal form
-   Connection of Web Ontology Languages (OWLs) to description logics


Notes


References

Canonical textbooks

-   -   -   -

Other textbooks

-   -   -   -   -   -   -   -   -

Free online texts

-   -   -   -   Hodges, Wilfrid, _Model theory_. The Stanford Encyclopedia Of Philosophy, E. Zalta (ed.).
-   Hodges, Wilfrid, _First-order Model theory_. The Stanford Encyclopedia Of Philosophy, E. Zalta (ed.).
-   Simmons, Harold (2004), _An introduction to Good old fashioned model theory_. Notes of an introductory course for postgraduates (with exercises).
-   J. Barwise and S. Feferman (editors), Model-Theoretic Logics, Perspectives in Mathematical Logic, Volume 8, New York: Springer-Verlag, 1985.

Model_theory Model Category:Metalogic

[1] Chang and Keisler, p. 1

[2] In a countable signature. The theorem has a straightforward generalization to uncountable signatures.

[3] "All three commentators [i.e. Vaught, van Heijenoort and Dreben] agree that both the completeness and compactness theorems were implicit in Skolem 1923…." []