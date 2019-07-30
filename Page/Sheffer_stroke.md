In Boolean functions and propositional calculus, the SHEFFER STROKE denotes a logical operation that is equivalent to the negation of the conjunction operation, expressed in ordinary language as "not both". It is also called NAND ("not and") or the ALTERNATIVE DENIAL, since it says in effect that at least one of its operands is false. In digital electronics, it corresponds to the NAND gate. It is named after Henry M. Sheffer and written as ↑ or as | (but not as ||, often used to represent disjunction). In Bocheński notation it can be written as D_pq_.

Its dual is the NOR operator (also known as the Peirce arrow or Quine dagger). Like its dual, NAND can be used by itself, without any other logical operator, to constitute a logical formal system (making NAND functionally complete). This property makes the NAND gate crucial to modern digital electronics, including its use in computer processor design.


Definition

The NAND OPERATION is a logical operation on two logical values. It produces a value of true, if — and only if — at least one of the propositions is false.

Truth table

The truth table of P ↑ Q (also written as P|Q, or D_pq_) is as follows

  --- --- -------
  P   Q   P ↑ Q
  T   T   F
  T   F   T
  F   T   T
  F   F   T
  --- --- -------

Logical equivalences

The Sheffer stroke of P and Q is the negation of their conjunction

  ------- ------- ----------
  P ↑ Q     ⇔     ¬(P ∧ Q)
            ⇔     ¬
  ------- ------- ----------

By De Morgan's Laws, this is also equivalent to the disjunction of the negations of P and Q

  ------- ------- ---- --- ----
  P ↑ Q     ⇔     ¬P   ∨   ¬Q
            ⇔          ∨
  ------- ------- ---- --- ----


History

The stroke is named after Henry M. Sheffer, who in 1913 published a paper in the _Transactions of the American Mathematical Society_ (Sheffer 1913) providing an axiomatization of Boolean algebras using the stroke, and proved its equivalence to a standard formulation thereof by Huntington employing the familiar operators of propositional logic (and, or, not). Because of self-duality of Boolean algebras, Sheffer's axioms are equally valid for either of the NAND or NOR operations in place of the stroke. Sheffer interpreted the stroke as a sign for nondisjunction (NOR) in his paper, mentioning non-conjunction only in a footnote and without a special sign for it. It was Jean Nicod who first used the stroke as a sign for non-conjunction (NAND) in a paper of 1917 and which has since become current practice.[1] Russell and Whitehead used the Sheffer stroke in the 1927 second edition of _Principia Mathematica_ and suggested it as a replacement for the "or" and "not" operations of the first edition.

Charles Sanders Peirce (1880) had discovered the functional completeness of NAND or NOR more than 30 years earlier, using the term _ampheck_ (for 'cutting both ways'), but he never published his finding.


Properties

NAND does not possess any of the following five properties, each of which is required to be absent from, and the absence of all of which is sufficient for, at least one member of a set of functionally complete operators: truth-preservation, falsity-preservation, linearity, monotonicity, self-duality. (An operator is truth- (falsity-) preserving if its value is truth (falsity) whenever all of its arguments are truth (falsity).) Therefore {NAND} is a functionally complete set.

This can also be realized as follows: All three elements of the functionally complete set {AND, OR, NOT} can be constructed using only NAND. Thus the set {NAND} must be functionally complete as well.


Other Boolean operations in terms of the Sheffer Stroke

Expressed in terms of NAND ↑, the usual operators of propositional logic are:

+-----------------------------------------------+-----+-------------------------------------------------------------------------+-----+-----------------------------------------------------------+
|   ---- ----------- --- --- ---                |     |   ------- ----------- ---- --- --------- ----------- ---- --- --------- |     |   ------- ----------- --------- --- --------------------- |
|   ¬P       ⇔       P   ↑   P                  |     |   P → Q       ⇔        P   ↑   (Q ↑ Q)       ⇔        P   ↑   (P ↑ Q)   |     |   P ↔ Q       ⇔       (P ↑ Q)   ↑   ((P ↑ P) ↑ (Q ↑ Q))   |
|            ⇔           ↑                      |     |               ⇔            ↑                 ⇔            ↑             |     |               ⇔                 ↑                         |
|   ---- ----------- --- --- ---                |     |   ------- ----------- ---- --- --------- ----------- ---- --- --------- |     |   ------- ----------- --------- --- --------------------- |
+-----------------------------------------------+-----+-------------------------------------------------------------------------+-----+-----------------------------------------------------------+
|                                               |     |                                                                         |     |                                                           |
+-----------------------------------------------+-----+-------------------------------------------------------------------------+-----+-----------------------------------------------------------+
|   ------- ----------- --------- --- --------- |     |   ------- ----------- --------- --- ---------                           |     |                                                           |
|   P ∧ Q       ⇔       (P ↑ Q)   ↑   (P ↑ Q)   |     |   P ∨ Q       ⇔       (P ↑ P)   ↑   (Q ↑ Q)                             |     |                                                           |
|               ⇔                 ↑             |     |               ⇔                 ↑                                       |     |                                                           |
|   ------- ----------- --------- --- --------- |     |   ------- ----------- --------- --- ---------                           |     |                                                           |
+-----------------------------------------------+-----+-------------------------------------------------------------------------+-----+-----------------------------------------------------------+


Formal system based on the Sheffer stroke

The following is an example of a formal system based entirely on the Sheffer stroke, yet having the functional expressiveness of the propositional logic:

Symbols

_p_(n)_ for natural numbers _n_
( | )

The Sheffer stroke commutes but does not associate (e.g., (T|T)|F = T, but T|(T|F) = F). Hence any formal system including the Sheffer stroke must also include a means of indicating grouping. We shall employ '(' and ')' to this effect.

We also write _p_, _q_, _r_, … instead of _p_₀, _p_₁, _p_₂.

Syntax

CONSTRUCTION RULE I: For each natural number _n_, the symbol _p_(n)_ is a well-formed formula (wff), called an atom.

CONSTRUCTION RULE II: If _X_ and _Y_ are wffs, then (_X_|_Y_) is a wff.

CLOSURE RULE: Any formulae which cannot be constructed by means of the first two Construction Rules are not wffs.

The letters _U_, _V_, _W_, _X_, and _Y_ are metavariables standing for wffs.

A decision procedure for determining whether a formula is well-formed goes as follows: "deconstruct" the formula by applying the Construction Rules backwards, thereby breaking the formula into smaller subformulae. Then repeat this recursive deconstruction process to each of the subformulae. Eventually the formula should be reduced to its atoms, but if some subformula cannot be so reduced, then the formula is not a wff.

Calculus

All wffs of the form

    ((_U_|(_V_|_W_))|((_Y_|(_Y_|_Y_))|((_X_|_V_)|((_U_|_X_)|(_U_|_X_)))))

are axioms. Instances of

    (_U_|(_V_|_W_)), _U_ ⊢ _W_

are inference rules.

Simplification

Since the only connective of this logic is |, the symbol | could be discarded altogether, leaving only the parentheses to group the letters. A pair of parentheses must always enclose a pair of _wff_s. Examples of theorems in this simplified notation are

    (_p_(_p_(_q_(_q_((_pq_)(_pq_)))))),

    (_p_(_p_((_qq_)(_pp_)))).

The notation can be simplified further, by letting

    (_U_) := (_UU_)
    ((_U_)) ≡ _U_

for any _U_. This simplification causes the need to change some rules:

1.  More than two letters are allowed within parentheses.
2.  Letters or wffs within parentheses are allowed to commute.
3.  Repeated letters or wffs within a same set of parentheses can be eliminated.

The result is a parenthetical version of the Peirce existential graphs.

Another way to simplify the notation is to eliminate parentheses by using Polish Notation. For example, the earlier examples with only parentheses could be rewritten using only strokes as follows

    (_p_(_p_(_q_(_q_((_pq_)(_pq_)))))) becomes
    |_p_|_p_|_q_|_q_||_pq_|_pq_, and

    (_p_(_p_((_qq_)(_pp_)))) becomes,
    |_p_|_p_||_qq_|_pp_.

This follows the same rules as the parenthesis version, with the opening parenthesis replaced with a Sheffer stroke and the (redundant) closing parenthesis removed.

Or one could omit both parentheses _and_ strokes and allow the order of the arguments to determine the order of function application so that for example, applying the function from right to left (reverse Polish notation - any other unambiguous convention based on ordering would do)

    _pqr_ ≡ ( _p_ | ( _q_ | _r_ ) ), whereas
    _rqp_ ≡ ( _r_ | ( _q_ | _p_ ) ).


See also

-   List of logic symbols

-   AND gate
-   Boolean domain
-   CMOS
-   Gate equivalent (GE)
-   Laws of Form
-   Logic gate
-   Logical graph
-   Minimal axioms for Boolean algebra
-   NAND Flash Memory
-   NAND logic
-   NAND gate
-   NOR gate
-   NOT gate
-   OR gate
-   Peirce's law
-   Peirce arrow = NOR
-   Propositional logic
-   Sole sufficient operator
-   XOR gate
-   Peirce arrow


Notes


References

-   Bocheński, Józef Maria (1960), _Precis of Mathematical Logic_, rev., Albert Menne, edited and translated from the French and German editions by Otto Bird, Dordrecht, South Holland: D. Reidel.
-   Church, Alonzo, (1956) _Introduction to mathematical logic_, Vol. 1, Princeton: Princeton University Press.
-   -   Charles Sanders Peirce, 1880, "A Boolian[sic] Algebra with One Constant", in Hartshorne, C. and Weiss, P., eds., (1931–35) _Collected Papers of Charles Sanders Peirce, Vol. 4_: 12–20, Cambridge: Harvard University Press.
-


External links

-   Sheffer Stroke article in the _Internet Encyclopedia of Philosophy_
-   http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nand.html
-   implementations of 2 and 4-input NAND gates
-   Proofs of some axioms by Stroke function by Yasuo Setô @ Project Euclid

NAND gate Category:Logical connectives Category:Logic symbols

[1]