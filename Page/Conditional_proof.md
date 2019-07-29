A CONDITIONAL PROOF is a proof that takes the form of asserting a conditional, and proving that the antecedent of the conditional necessarily leads to the consequent.


Overview

The assumed antecedent of a conditional proof is called the CONDITIONAL PROOF ASSUMPTION (CPA). Thus, the goal of a conditional proof is to demonstrate that if the CPA were true, then the desired conclusion necessarily follows. The validity of a conditional proof does not require that the CPA be actually true, only that _if it were true_ it would lead to the consequent.

Conditional proofs are of great importance in mathematics. Conditional proofs exist linking several otherwise unproven conjectures, so that a proof of one conjecture may immediately imply the validity of several others. It can be much easier to show a proposition's truth to follow from another proposition than to prove it independently.

A famous network of conditional proofs is the NP-complete class of complexity theory. There are a large number of interesting tasks, and while it is not known if a polynomial-time solution exists for any of them, it is known that if such a solution exists for any of them, one exists for all of them. Similarly, the Riemann hypothesis has a large number of consequences already proven.


Symbolic logic

As an example of a conditional proof in symbolic logic, suppose we want to prove A → C (if A, then C) from the first two premises below:

+---:+----------+---------------------------------------------------------------------------+
| 1. | A → B    | ("If A, then B")                                                          |
+----+----------+---------------------------------------------------------------------------+
| 2. | B → C    | ("If B, then C")                                                          |
+----+----------+---------------------------------------------------------------------------+
|    |          |                                                                           |
+----+----------+---------------------------------------------------------------------------+
| 3. | A        | (conditional proof assumption, "Suppose A is true")                       |
+----+----------+---------------------------------------------------------------------------+
| 4. | B        | (follows from lines 1 and 3, modus ponens; "If A then B; A, therefore B") |
+----+----------+---------------------------------------------------------------------------+
| 5. | C        | (follows from lines 2 and 4, modus ponens; "If B then C; B, therefore C") |
+----+----------+---------------------------------------------------------------------------+
| 6. | A → C    | (follows from lines 3–5, conditional proof; "If A, then C")               |
+----+----------+---------------------------------------------------------------------------+


See also

-   Deduction theorem
-   Logical consequence
-   Propositional calculus


References

-   Robert L. Causey, _Logic, sets, and recursion_, Jones and Barlett, 2006.
-   Dov M. Gabbay, Franz Guenthner (eds.), _Handbook of philosophical logic_, Volume 8, Springer, 2002.

Category:Logic Category:Conditionals Category:Mathematical proofs Category:Methods of proof