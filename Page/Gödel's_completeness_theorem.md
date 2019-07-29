Completude̠_logique_premier_ordre.png_x_. _R_(_x_,_x_)) → (∀_x_∃_y_. _R_(_x_,_y_)) holds in all structures (only the simplest 8 are shown left). By Gödel's completeness result, it must hence have a natural deduction proof (shown right).]] GÖDEL'S COMPLETENESS THEOREM is a fundamental theorem in mathematical logic that establishes a correspondence between semantic truth and syntactic provability in first-order logic. It makes a close link between model theory that deals with what is true in different models, and proof theory that studies what can be formally proven in particular formal systems.

It was first proved by Kurt Gödel in 1929. It was then simplified in 1947, when Leon Henkin observed in his Ph.D. thesis that the hard part of the proof can be presented as the Model Existence Theorem (published in 1949). Henkin's proof was simplified by Gisbert Hasenjaeger in 1953.


Preliminaries

There are numerous deductive systems for first-order logic, including systems of natural deduction and Hilbert-style systems. Common to all deductive systems is the notion of a FORMAL DEDUCTION. This is a sequence (or, in some cases, a finite tree) of formulas with a specially-designated CONCLUSION. The definition of a deduction is such that it is finite and that it is possible to verify algorithmically (by a computer, for example, or by hand) that a given sequence (or tree) of formulas is indeed a deduction.

A first-order formula is called LOGICALLY VALID if it is true in every structure for the language of the formula (i.e. for any assignment of values to the variables of the formula). To formally state, and then prove, the completeness theorem, it is necessary to also define a deductive system. A deductive system is called COMPLETE if every logically valid formula is the conclusion of some formal deduction, and the completeness theorem for a particular deductive system is the theorem that it is complete in this sense. Thus, in a sense, there is a different completeness theorem for each deductive system. A converse to completeness is SOUNDNESS, the fact that only logically valid formulas are provable in the deductive system.

If some specific deductive system of first-order logic is sound and complete, then it is "perfect" (a formula is provable if and only if it is logically valid), thus equivalent to any other deductive system with the same quality (any proof in one system can be converted into the other).


Statement of the theorem

We first fix a deductive system of first-order predicate calculus, choosing any of the well-known equivalent systems. Gödel's original proof assumed the Hilbert-Ackermann proof system.

Gödel's original formulation

The completeness theorem says that if a formula is logically valid then there is a finite deduction (a formal proof) of the formula.

Thus, the deductive system is "complete" in the sense that no additional inference rules are required to prove all the logically valid formulas. A converse to completeness is SOUNDNESS, the fact that only logically valid formulas are provable in the deductive system. Together with soundness (whose verification is easy), this theorem implies that a formula is logically valid if and only if it is the conclusion of a formal deduction.

More general form

The theorem can be expressed more generally in terms of logical consequence. We say that a sentence _s_ is a SYNTACTIC CONSEQUENCE of a theory _T_, denoted T ⊢ s, if _s_ is provable from _T_ in our deductive system. We say that _s_ is a SEMANTIC CONSEQUENCE of _T_, denoted T ⊨ s, if _s_ holds in every model of _T_. The completeness theorem then says that for any first-order theory _T_ with a well-orderable language, and any sentence _s_ in the language of _T_,

    if T ⊨ s, then T ⊢ s.

Since the converse (soundness) also holds, it follows that T ⊨ s iff T ⊢ s, and thus that syntactic and semantic consequence are equivalent for first-order logic.

This more general theorem is used implicitly, for example, when a sentence is shown to be provable from the axioms of group theory by considering an arbitrary group and showing that the sentence is satisfied by that group.

Gödel's original formulation is deduced by taking the particular case of a theory without any axiom.

Model existence theorem

The completeness theorem can also be understood in terms of consistency, as a consequence of Henkin's model existence theorem. We say that a theory _T_ is SYNTACTICALLY CONSISTENT if there is no sentence _s_ such that both _s_ and its negation ¬_s_ are provable from _T_ in our deductive system. The model existence theorem says that for any first-order theory _T_ with a well-orderable language,

    if T is syntactically consistent, then T has a model.

Another version, with connections to the Löwenheim–Skolem theorem, says:

    Every syntactically consistent, countable first-order theory has a finite or countable model.

Given Henkin's theorem, the completeness theorem can be proved as follows: If T ⊨ s, then T ∪ ¬s does not have models. By the contrapositive of Henkin's, then T ∪ ¬s is syntactically inconsistent. So a contradiction (⊥) is provable from T ∪ ¬s in the deductive system. Hence (T ∪ ¬s) ⊢ ⊥, and then by the properties of the deductive system, T ⊢ s.

As a theorem of arithmetic

The Model Existence Theorem and its proof can be formalized in the framework of Peano arithmetic. Precisely, we can systematically define a model of any consistent effective first-order theory _T_ in Peano arithmetic by interpreting each symbol of _T_ by an arithmetical formula whose free variables are the arguments of the symbol. However, the definition expressed by this formula is not recursive.


Consequences

An important consequence of the completeness theorem is that it is possible to recursively enumerate the semantic consequences of any effective first-order theory, by enumerating all the possible formal deductions from the axioms of the theory, and use this to produce an enumeration of their conclusions.

This comes in contrast with the direct meaning of the notion of semantic consequence, that quantifies over all structures in a particular language, which is clearly not a recursive definition.

Also, it makes the concept of "provability," and thus of "theorem," a clear concept that only depends on the chosen system of axioms of the theory, and not on the choice of a proof system.


Relationship to the second incompleteness theorem

Gödel's second incompleteness theorem (see Gödel's incompleteness theorems), another celebrated result, shows that there are inherent limitations in what can be achieved with formal proofs in mathematics. The name for the incompleteness theorem refers to another meaning of _complete_ (see model theory – Using the compactness and completeness theorems): A theory ''T '' is complete (or decidable) if for every formula _f_ in the language of _T_ either T ⊢ f or T ⊢ ¬f.

Gödel's second incompleteness theorem states that in any consistent effective theory _T_ containing Peano arithmetic (PA), a formula _C_(T)_ like _C_(T) = ¬(0 = 1)_ expressing the consistency of _T_ cannot be proven within _T_.

The completeness theorem implies the existence of a model of _T_ in which the formula _C_(T)_ is false. Such a model (precisely, the set of "natural numbers" it contains) is necessarily a non-standard, as it contains the code number of a proof of a contradiction of _T_. But _T_ is consistent when viewed from the outside. Thus this code number of a proof of contradiction of _T_ must be a non-standard number.

In fact, the model of _any_ theory containing PA obtained by the systematic construction of the arithmetical model existence theorem, is _always_ non-standard with a non-equivalent provability predicate and a non-equivalent way to interpret its own construction, so that this construction is non-recursive (as recursive definitions would be unambiguous).

Also, there is no recursive non-standard model of PA.


Relationship to the compactness theorem

The completeness theorem and the compactness theorem are two cornerstones of first-order logic. While neither of these theorems can be proven in a completely effective manner, each one can be effectively obtained from the other.

The compactness theorem says that if a formula φ is a logical consequence of a (possibly infinite) set of formulas Γ then it is a logical consequence of a finite subset of Γ. This is an immediate consequence of the completeness theorem, because only a finite number of axioms from Γ can be mentioned in a formal deduction of φ, and the soundness of the deductive system then implies φ is a logical consequence of this finite set. This proof of the compactness theorem is originally due to Gödel.

Conversely, for many deductive systems, it is possible to prove the completeness theorem as an effective consequence of the compactness theorem.

The ineffectiveness of the completeness theorem can be measured along the lines of reverse mathematics. When considered over a countable language, the completeness and compactness theorems are equivalent to each other and equivalent to a weak form of choice known as weak König's lemma, with the equivalence provable in RCA₀ (a second-order variant of Peano arithmetic restricted to induction over Σ⁰₁ formulas). Weak König's lemma is provable in ZF, the system of Zermelo–Fraenkel set theory without axiom of choice, and thus the completeness and compactness theorems for countable languages are provable in ZF. However the situation is different when the language is of arbitrary large cardinality since then, though the completeness and compactness theorems remain provably equivalent to each other in ZF, they are also provably equivalent to a weak form of the axiom of choice known as the ultrafilter lemma. In particular, no theory extending ZF can prove either the completeness or compactness theorems over arbitrary (possibly uncountable) languages without also proving the ultrafilter lemma on a set of same cardinality.


Completeness in other logics

The completeness theorem is a central property of first-order logic that does not hold for all logics. Second-order logic, for example, does not have a completeness theorem for its standard semantics (but does have the completeness property for Henkin semantics), and the set of logically-valid formulas in second-order logic is not recursively enumerable. The same is true of all higher-order logics. It is possible to produce sound deductive systems for higher-order logics, but no such system can be complete.

Lindström's theorem states that first-order logic is the strongest (subject to certain constraints) logic satisfying both compactness and completeness.

A completeness theorem can be proved for modal logic or intuitionistic logic with respect to Kripke semantics.


Proofs

Gödel's original proof of the theorem proceeded by reducing the problem to a special case for formulas in a certain syntactic form, and then handling this form with an _ad hoc_ argument.

In modern logic texts, Gödel's completeness theorem is usually proved with Henkin's proof, rather than with Gödel's original proof. Henkin's proof directly constructs a term model for any consistent first-order theory. James Margetson (2004) developed a computerized formal proof using the Isabelle theorem prover.[1] Other proofs are also known.


See also

-   Gödel's incompleteness theorems
-   Original proof of Gödel's completeness theorem


Further reading

-   The first proof of the completeness theorem.

-   The same material as the dissertation, except with briefer proofs, more succinct explanations, and omitting the lengthy introduction.


External links

-   Stanford Encyclopedia of Philosophy: "Kurt Gödel"—by Juliette Kennedy.
-   MacTutor biography: Kurt Gödel.
-   Detlovs, Vilnis, and Podnieks, Karlis, "Introduction to mathematical logic."

Category:Theorems in the foundations of mathematics Category:Metatheorems Category:Model theory Category:Proof theory Completeness theorem

[1]