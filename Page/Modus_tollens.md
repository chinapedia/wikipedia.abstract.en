In propositional logic, _MODUS TOLLENS_ (; MT; also _MODUS TOLLENDO TOLLENS_ (Latin for "mode that denies by denying")[1] or DENYING THE CONSEQUENT)[2] is a valid argument form and a rule of inference. It is an application of the general truth that if a statement is true, then so is its contrapositive.

The inference rule _modus tollens_ asserts that the inference from _P implies Q_ to _the negation of Q implies the negation of P_ is valid.

The _modus tollens_ rule can be stated formally as:

$$\frac{P \to Q, \neg Q}{\therefore \neg P}$$

where P → Q stands for the statement "P implies Q". ¬Q stands for "it is not the case that Q" (or in brief "not Q"). Then, whenever "P → Q" and "¬Q" each appear by themselves as a line of a proof, then "¬P" can validly be placed on a subsequent line. The history of the inference rule _modus tollens_ goes back to antiquity.[3]

_Modus tollens_ is closely related to _modus ponens_. There are two similar, but invalid, forms of argument: affirming the consequent and denying the antecedent. See also contraposition and proof by contrapositive.

The first to explicitly describe the argument form _modus tollens_ was Theophrastus.[4]


Formal notation

The _modus tollens_ rule may be written in sequent notation:

_P_ → _Q_, ¬_Q_ ⊢ ¬_P_

where ⊢ is a metalogical symbol meaning that ¬P is a syntactic consequence of P → Q and ¬Q in some logical system;

or as the statement of a functional tautology or theorem of propositional logic:

((_P_ → _Q_) ∧ ¬_Q_) → ¬_P_

where P and Q are propositions expressed in some formal system;

or including assumptions:

$$\frac{\Gamma \vdash P\to Q ~~~ \Gamma \vdash \neg Q}{\Gamma \vdash \neg P}$$
though since the rule does not change the set of assumptions, this is not strictly necessary.

More complex rewritings involving _modus tollens_ are often seen, for instance in set theory:

_P_ ⊆ _Q_

_x_ ∉ _Q_

∴ _x_ ∉ _P_
("P is a subset of Q. x is not in Q. Therefore, x is not in P.")

Also in first-order predicate logic:

∀_x_: _P_(_x_) → _Q_(_x_)

¬_Q_(_y_)

∴ ¬_P_(_y_)
("For all x if x is P then x is Q. y is not Q. Therefore, y is not P.")

Strictly speaking these are not instances of _modus tollens_, but they may be derived from _modus tollens_ using a few extra steps.


Explanation

Requirements:

1.  The argument has two premises.
2.  The first premise is a conditional or "if-then" statement, for example that if P then Q.
3.  The second premise is that it is not the case that Q.
4.  From these two premises, it can be logically concluded that it is not the case that P.

Consider an example:

    If the watch-dog detects an intruder, the watch-dog will bark.
    The watch-dog did not bark.
    Therefore, no intruder was detected by the watch-dog.

Supposing that the premises are both true (the dog will bark if it detects an intruder, and does indeed not bark), it follows that no intruder has been detected. This is a valid argument since it is not possible for the conclusion to be false if the premises are true. (It is conceivable that there may have been an intruder that the dog did not detect, but that does not invalidate the argument; the first premise is "if the watch-dog DETECTS an intruder." The thing of importance is that the dog detects or does not detect an intruder, not whether there is one.)

Another example:

    If I am the axe murderer, then I can use an axe.
    I cannot use an axe.
    Therefore, I am not the axe murderer.

Another example:

    If Rex is a chicken, then he is a bird.
    Rex is not a bird.
    Therefore, Rex is not a chicken.


Relation to _modus ponens_

Every use of _modus tollens_ can be converted to a use of _modus ponens_ and one use of transposition to the premise which is a material implication. For example:

    If P, then Q. (premise – material implication)
    If not Q, then not P. (derived by transposition)
    Not Q . (premise)
    Therefore, not P. (derived by _modus ponens_)

Likewise, every use of _modus ponens_ can be converted to a use of _modus tollens_ and transposition.


Justification via truth table

The validity of _modus tollens_ can be clearly demonstrated through a truth table.

  p   q   p → q
  --- --- -------
  T   T   T
  T   F   F
  F   T   T
  F   F   T

In instances of _modus tollens_ we assume as premises that p → q is true and q is false. There is only one line of the truth table—the fourth line—which satisfies these two conditions. In this line, p is false. Therefore, in every instance in which p → q is true and q is false, p must also be false.


Formal proof

Via disjunctive syllogism

  _Step_   _Proposition_   _Derivation_
  -------- --------------- -----------------------------
  1        P → Q           Given
  2        ¬Q              Given
  3        ¬P ∨ Q          Material implication (1)
  4        ¬P              Disjunctive syllogism (2,3)

  : ''' '''

Via _reductio ad absurdum_

  _Step_   _Proposition_   _Derivation_
  -------- --------------- ----------------------------------
  1        P → Q           Given
  2        ¬Q              Given
  3        P               Assumption
  4        Q               Modus ponens (1,3)
  5        Q ∧ ¬Q          Conjunction introduction (2,4)
  6        ¬P              _Reductio ad absurdum_ (3,5)
  7        ¬Q → ¬P         _Conditional introduction_ (2,6)

  : ''' '''

Via contraposition

  _Step_   _Proposition_   _Derivation_
  -------- --------------- --------------------
  1        P → Q           Given
  2        ¬Q              Given
  3        ¬Q → ¬P         Contraposition (1)
  4        ¬P              Modus ponens (2,3)

  : ''' '''


Correspondence to other mathematical frameworks

Probability calculus

_Modus tollens_ represents an instance of the law of total probability combined with Bayes' theorem expressed as:

Pr (P) = Pr (P ∣ Q)Pr (Q) + Pr (P ∣ ¬Q)Pr (¬Q) ,

where the conditionals Pr (P ∣ Q) and Pr (P ∣ ¬Q) are obtained with (the extended form of) Bayes' theorem expressed as:

$\Pr(P\mid Q) = \frac{\Pr(Q \mid P)\,a(P)}{\Pr(Q\mid P)\,a(P)+\Pr(Q\mid \lnot P)\,a(\lnot P)}\;\;\;$ and $\;\;\;\Pr(P\mid \lnot Q) = \frac{\Pr(\lnot Q \mid P)\,a(P)}{\Pr(\lnot Q\mid P)\,a(P)+\Pr(\lnot Q\mid \lnot P)\,a(\lnot P)}$.

In the equations above Pr (Q) denotes the probability of Q, and a(P) denotes the base rate (aka. prior probability) of P. The conditional probability Pr (Q ∣ P) generalizes the logical statement P → Q, i.e. in addition to assigning TRUE or FALSE we can also assign any probability to the statement. Assume that Pr (Q) = 1 is equivalent to Q being TRUE, and that Pr (Q) = 0 is equivalent to Q being FALSE. It is then easy to see that Pr (P) = 0 when Pr (Q ∣ P) = 1 and Pr (Q) = 0. This is because Pr (¬Q ∣ P) = 1 − Pr (Q ∣ P) = 0 so that Pr (P ∣ ¬Q) = 0 in the last equation. Therefore, the product terms in the first equation always have a zero factor so that Pr (P) = 0 which is equivalent to P being FALSE. Hence, the law of total probability combined with Bayes' theorem represents a generalization of _modus tollens_ [5].

Subjective logic

_Modus tollens_ represents an instance of the abduction operator in subjective logic expressed as:

$\omega^{A}_{P\tilde{\|}Q}= (\omega^{A}_{Q|P},\omega^{A}_{Q|\lnot P})\widetilde{\circledcirc} (a_{P},\,\omega^{A}_{Q})\,$,

where ω_(Q)^(A) denotes the subjective opinion about Q, and (ω_(Q|P)^(A), ω_(Q|¬P)^(A)) denotes a pair of binomial conditional opinions, as expressed by source A. The parameter a_(P) denotes the base rate (aka. the prior probability) of P. The abduced marginal opinion on P is denoted $\omega^{A}_{P\tilde{\|}Q}$. The conditional opinion ω_(Q|P)^(A) generalizes the logical statement P → Q, i.e. in addition to assigning TRUE or FALSE the source A can assign any subjective opinion to the statement. The case where ω_(Q)^(A) is an absolute TRUE opinion is equivalent to source A saying that Q is TRUE, and the case where ω_(Q)^(A) is an absolute FALSE opinion is equivalent to source A saying that Q is FALSE. The abduction operator $\widetilde{\circledcirc}$ of subjective logic produces an absolute FALSE abduced opinion $\omega^{A}_{P\widetilde{\|}Q}$ when the conditional opinion ω_(Q|P)^(A) is absolute TRUE and the consequent opinion ω_(Q)^(A) is absolute FALSE. Hence, subjective logic abduction represents a generalization of both _modus tollens_ and of the Law of total probability combined with Bayes' theorem [6].


See also

-   Evidence of absence
-   Latin phrases
-   _Modus operandi_
-   _Modus ponens_
-   _Modus vivendi_
-   _Non sequitur_
-   Proof by contradiction
-   Proof by contrapositive
-   Stoic logic


Notes


Sources

-   Audun Jøsang, 2016, _Subjective Logic; A formalism for Reasoning Under Uncertainty_ Springer, Cham,


External links

-   _Modus Tollens_ at Wolfram MathWorld

Category:Classical logic Category:Rules of inference Category:Latin logical phrases Category:Theorems in propositional logic

[1]

[2]

[3] Susanne Bobzien (2002). "The Development of Modus Ponens in Antiquity", _Phronesis_ 47.

[4] "Ancient Logic: Forerunners of _Modus Ponens_ and _Modus Tollens_". _Stanford Encyclopedia of Philosophy_.

[5] Audun Jøsang 2016:p.2

[6] Audun Jøsang 2016:p.92