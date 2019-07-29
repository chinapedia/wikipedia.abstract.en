In propositional logic, DISJUNCTION ELIMINATION[1][2] (sometimes named PROOF BY CASES, CASE ANALYSIS, or OR ELIMINATION), is the valid argument form and rule of inference that allows one to eliminate a disjunctive statement from a logical proof. It is the inference that if a statement P implies a statement Q and a statement R also implies Q, then if either P or R is true, then Q has to be true. The reasoning is simple: since at least one of the statements P and R is true, and since either of them would be sufficient to entail Q, Q is certainly true.

An example in English:

    If I'm inside, I have my wallet on me.
    If I'm outside, I have my wallet on me.
    It is true that either I'm inside or I'm outside.
    Therefore, I have my wallet on me.

It is the rule can be stated as:

$$\frac{P \to Q, R \to Q, P \lor R}{\therefore Q}$$

where the rule is that whenever instances of "P → Q", and "R → Q" and "P ∨ R" appear on lines of a proof, "Q" can be placed on a subsequent line.


Formal notation

The _disjunction elimination_ rule may be written in sequent notation:

    (P → Q), (R → Q), (P ∨ R) ⊢ Q

where ⊢ is a metalogical symbol meaning that Q is a syntactic consequence of P → Q, and R → Q and P ∨ R in some logical system;

and expressed as a truth-functional tautology or theorem of propositional logic:

(((_P_ → _Q_) ∧ (_R_ → _Q_)) ∧ (_P_ ∨ _R_)) → _Q_

where P, Q, and R are propositions expressed in some formal system.


See also

-   Disjunction
-   Argument in the alternative
-   Disjunct normal form


References

Category:Rules of inference Category:Theorems in propositional logic

[1]

[2] http://www.cs.gsu.edu/~cscskp/Automata/proofs/node6.html