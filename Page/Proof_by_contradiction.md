In logic and mathematics PROOF BY CONTRADICTION is a form of proof that establishes the truth or validity of a proposition by showing that assuming the proposition to be false leads to a contradiction. Proof by contradiction is also known as INDIRECT PROOF, PROOF BY ASSUMING THE OPPOSITE, and _REDUCTIO AD IMPOSSIBILE_. It is a particular kind of the more general form of argument known as _reductio ad absurdum_.[1][2]

G. H. Hardy described proof by contradiction as "one of a mathematician's finest weapons", saying "It is a far finer gambit than any chess gambit: a chess player may offer the sacrifice of a pawn or even a piece, but a mathematician offers the game."[3]


Principle

Proof by contradiction is based on the law of noncontradiction as first formalized as a metaphysical principle by Aristotle. Noncontradiction is also a theorem in propositional logic. This states that an assertion or mathematical statement cannot be both true and false. That is, a proposition _Q_ and its negation ¬_Q_ ("not-_Q_") cannot both be true. In a proof by contradiction, it is shown that the denial of the statement being proved results in such a contradiction. It has the form of a _reductio ad absurdum_ argument. If _P_ is the proposition to be proved:

1.  _P_ is assumed to be false, that is ¬_P_ is true.
2.  It is shown that ¬_P_ implies two mutually contradictory assertions, _Q_ and ¬_Q_.
3.  Since _Q_ and ¬_Q_ cannot both be true, the assumption that _P_ is false must be wrong, and _P_ must be true.

An alternate form derives a contradiction with the statement to be proved itself:

1.  _P_ is assumed to be false.
2.  It is shown that ¬_P_ implies _P_.
3.  Since _P_ and ¬_P_ cannot both be true, the assumption must be wrong and _P_ must be true.

An existence proof by contradiction assumes that some object doesn't exist, and then proves that this would lead to a contradiction; thus, such an object must exist. Although it is quite freely used in mathematical proofs, not every school of mathematical thought accepts this kind of nonconstructive proof as universally valid.

Law of the excluded middle

Proof by contradiction also depends on the law of the excluded middle, also first formulated by Aristotle. This states that either an assertion or its negation must be true

∀_P_ ⊢ (_P_ ∨ ¬_P_)

    (For all propositions _P_, either _P_ or not-_P_ is true)

That is, there is no other truth value besides "true" and "false" that a proposition can take. Combined with the principle of noncontradiction, this means that exactly one of P and ¬P is true. In proof by contradiction, this permits the conclusion that since the possibility of ¬P has been excluded, P must be true.

The law of the excluded middle is accepted in virtually all formal logics; however, some intuitionist mathematicians do not accept it, and thus reject proof by contradiction as a proof technique.


Relationship with other proof techniques

Proof by contradiction is closely related to proof by contrapositive, and the two are sometimes confused, though they are distinct methods. The main distinction is that a proof by contrapositive applies only to statements P that can be written in the form A → B (i.e., implications), whereas the technique of proof by contradiction applies to statements P of any form:

-   PROOF BY CONTRADICTION (GENERAL): assume ¬P and derive a contradiction.



        This corresponds, in the framework of propositional logic, to the equivalence P ≡ ¬¬P ≡ ¬P → ⊥, where ⊥ is the logical contradiction, or _false_ value.

In the case where the statement to be proven _is_ an implication A → B, let us look at the differences between direct proof, proof by contrapositive, and proof by contradiction:

-   DIRECT PROOF: assume A and show B.
-   PROOF BY CONTRAPOSITIVE: assume ¬B and show ¬A.



        This corresponds to the equivalence A → B ≡ ¬B → ¬A.

-   PROOF BY CONTRADICTION: assume A and ¬B and derive a contradiction.



        This corresponds to the equivalences A → B ≡ ¬¬(A → B) ≡ ¬(A → B) → ⊥ ≡ (A ∧ ¬B) → ⊥.


Examples

Irrationality of the square root of 2

A classic proof by contradiction from mathematics is the proof that the square root of 2 is irrational.[4] If it were rational, it could be expressed as a fraction _a_/_b_ in lowest terms, where _a_ and _b_ are integers, at least one of which is odd. But if _a_/_b_ = , then _a_² = 2_b_². Therefore, _a_² must be even. Because the square of an odd number is odd, that in turn implies that _a_ is even. This means that _b_ must be odd because a/b is in lowest terms.

On the other hand, if _a_ is even, then _a_² is a multiple of 4. If _a_² is a multiple of 4 and _a_² = 2_b_², then 2_b_² is a multiple of 4, and therefore _b_² is even, and so is _b_.

So _b_ is odd and even, a contradiction. Therefore, the initial assumption—that can be expressed as a fraction—must be false.

The length of the hypotenuse

The method of proof by contradiction has also been used to show that for any non-degenerate right triangle, the length of the hypotenuse is less than the sum of the lengths of the two remaining sides.[5] The proof relies on the Pythagorean theorem. Letting _c_ be the length of the hypotenuse and _a_ and _b_ the lengths of the legs, the claim is that _a_ + _b_ > _c_.

The claim is negated to assume that _a_ + _b_ ≤ _c_. Squaring both sides results in (_a_ + _b_)² ≤ _c_² or, equivalently, _a_² + 2_ab_ + _b_² ≤ _c_². A triangle is non-degenerate if each edge has positive length, so it may be assumed that _a_ and _b_ are greater than 0. Therefore, _a_² + _b_² < _a_² + 2_ab_ + _b_² ≤ _c_². The transitive relation may be reduced to _a_² + _b_² < _c_². It is known from the Pythagorean theorem that _a_² + _b_² = _c_². This results in a contradiction since strict inequality and equality are mutually exclusive. The latter was a result of the Pythagorean theorem and the former the assumption that _a_ + _b_ ≤ _c_. The contradiction means that it is impossible for both to be true and it is known that the Pythagorean theorem holds. It follows that the assumption that _a_ + _b_ ≤ _c_ must be false and hence _a_ + _b_ > _c_, proving the claim.

No least positive rational number

Consider the proposition, _P_: "there is no smallest rational number greater than 0". In a proof by contradiction, we start by assuming the opposite, ¬_P_: that there _is_ a smallest rational number, say, _r_.

Now _r_/2 is a rational number greater than 0 and smaller than _r_. But that contradicts our initial assumption, ¬_P_, that _r_ was the _smallest_ rational number. (In the above symbolic argument, "_r_ is the smallest rational number" would be _Q_ and "_r_/2 is a rational number smaller than _r_" would be ¬_Q_.) So we can conclude that the original proposition, _P_, must be true — "there is no smallest rational number greater than 0".

Other

For other examples, see proof that the square root of 2 is not rational (where indirect proofs different from the above one can be found) and Cantor's diagonal argument.


Notation

Proofs by contradiction sometimes end with the word "Contradiction!". Isaac Barrow and Baermann used the notation Q.E.A., for "_quod est absurdum_" ("which is absurd"), along the lines of Q.E.D., but this notation is rarely used today.[6] A graphical symbol sometimes used for contradictions is a downwards zigzag arrow "lightning" symbol (U+21AF: ↯), for example in Davey and Priestley.[7] Others sometimes used include a pair of opposing arrows (as →​← or ⇒​⇐), struck-out arrows (↮), a stylized form of hash (such as U+2A33: ⨳), or the "reference mark" (U+203B: ※).[8][9] The "up tack" symbol (U+22A5: ⊥) used by philosophers and logicians (see contradiction) also appears, but is often avoided due to its usage for orthogonality.


Principle of explosion

A curious logical consequence of the principle of non-contradiction is that a contradiction implies any statement; if a contradiction is accepted as true, any proposition (or its negation) can be proved from it.[10] This is known as the principle of explosion (, "from a falsehood, anything [follows]", or __, "from a contradiction, anything follows"), or the principle of pseudo-scotus.

∀_Q_ : (_P_ ∧ ¬_P_) → _Q_

    (for all Q, P and not-P implies Q)

Thus a contradiction in a formal axiomatic system is disastrous; since any theorem can be proven true it destroys the conventional meaning of truth and falsity.

The discovery of contradictions at the foundations of mathematics at the beginning of the 20th century, such as Russell's paradox, threatened the entire structure of mathematics due to the principle of explosion. This motivated a great deal of work during the 20th century to create consistent axiomatic systems to provide a logical underpinning for mathematics. This has also led a few philosophers such as Newton da Costa, Walter Carnielli and Graham Priest to reject the principle of non-contradiction, giving rise to theories such as paraconsistent logic and dialethism, which accepts that there exist statements that are both true and false.


See also

-   Proof by infinite descent, a form of proof by contradiction


References


Further reading and external links

-   -   Proof by Contradiction from Larry W. Cusick's How To Write Proofs
-   Reductio ad Absurdum Internet Encyclopedia of Philosophy; ISSN 2161-0002

Category:Mathematical proofs Category:Methods of proof Category:Theorems in propositional logic

[1] G. H. Hardy, ''A Mathematician's Apology; Cambridge University Press, 1992. . ''PDF p.19.

[2] S. M. Cohen, "Introduction to Logic", Chapter 5 "proof by contradiction ... Also called indirect proof or reductio ad absurdum ..."

[3]

[4]

[5]

[6]

[7] B. Davey and H.A. Priestley, Introduction to lattices and order, Cambridge University Press, 2002.

[8] The Comprehensive LaTeX Symbol List, pg. 20. http://www.ctan.org/tex-archive/info/symbols/comprehensive/symbols-a4.pdf

[9] Gary Hardegree, _Introduction to Modal Logic_, Chapter 2, pg. II–2. https://web.archive.org/web/20110607061046/http://people.umass.edu/gmhwww/511/pdf/c02.pdf

[10]