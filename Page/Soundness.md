In mathematical logic, a logical system has the SOUNDNESS PROPERTY if and only if every formula that can be proved in the system is logically valid with respect to the semantics of the system.

The converse of soundness is known as completeness.[1] In most cases, this comes down to its rules having the property of _preserving truth_.


Definition

A system with syntactic entailment ⊢ and semantic entailment ⊨ is SOUND if for any sequence A₁, A₂, ..., A_(n) of sentences in its language, if A₁, A₂, ..., A_(n) ⊢ C, then A₁, A₂, ..., A_(n) ⊨ C. In other words, a system is sound when all of its theorems are tautologies.


Logical systems

Soundness is among the most fundamental properties of mathematical logic. The soundness property provides the initial reason for counting a logical system as desirable. The completeness property means that every validity (truth) is provable. Together they imply that all and only validities are provable.

Most proofs of soundness are trivial. For example, in an axiomatic system, proof of soundness amounts to verifying the validity of the axioms and that the rules of inference preserve validity (or the weaker property, truth). If the system allows Hilbert-style deduction, it requires only verifying the validity of the axioms and one rule of inference, namely modus ponens. (and sometimes substitution)

Soundness properties come in two main varieties: weak and strong soundness, of which the former is a restricted form of the latter.

Soundness

Soundness of a deductive system is the property that any sentence that is provable in that deductive system is also true on all interpretations or structures of the semantic theory for the language upon which that theory is based. In symbols, where _S_ is the deductive system, _L_ the language together with its semantic theory, and _P_ a sentence of _L_: if ⊢_(_S_) _P_, then also ⊨_(_L_) _P_.

Strong soundness

Strong soundness of a deductive system is the property that any sentence _P_ of the language upon which the deductive system is based that is derivable from a set Γ of sentences of that language is also a logical consequence of that set, in the sense that any model that makes all members of Γ true will also make _P_ true. In symbols where Γ is a set of sentences of _L_: if Γ ⊢_(_S_) _P_, then also Γ ⊨_(_L_) _P_. Notice that in the statement of strong soundness, when Γ is empty, we have the statement of weak soundness.

Arithmetic soundness

If _T_ is a theory whose objects of discourse can be interpreted as natural numbers, we say _T_ is _arithmetically sound_ if all theorems of _T_ are actually true about the standard mathematical integers. For further information, see ω-consistent theory.


Relation to completeness

The converse of the soundness property is the semantic completeness property. A deductive system with a semantic theory is strongly complete if every sentence _P_ that is a semantic consequence of a set of sentences Γ can be derived in the deduction system from that set. In symbols: whenever , then also . Completeness of first-order logic was first explicitly established by Gödel, though some of the main results were contained in earlier work of Skolem.

Informally, a soundness theorem for a deductive system expresses that all provable sentences are true. Completeness states that all true sentences are provable.

Gödel's first incompleteness theorem shows that for languages sufficient for doing a certain amount of arithmetic, there can be no consistent and effective deductive system that is complete with respect to the intended interpretation of the symbolism of that language. Thus, not all sound deductive systems are complete in this special sense of completeness, in which the class of models (up to isomorphism) is restricted to the intended one. The original completeness proof applies to _all_ classical models, not some special proper subclass of intended ones.


See also

-   Validity
-   Completeness (logic)
-   Soundness (interactive proof)


References


Bibliography

-   -   -   Boolos, Burgess, Jeffrey. _Computability and Logic_, 4th Ed, Cambridge, 2002.


External links

-   Validity and Soundness in the _Internet Encyclopedia of Philosophy._

Category:Arguments Category:Model theory Category:Proof theory Category:Concepts in logic Category:Deductive reasoning

[1]