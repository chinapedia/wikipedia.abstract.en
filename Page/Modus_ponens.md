In propositional logic, _MODUS PONENS_ (; MP; also _MODUS PONENDO PONENS_ (Latin for "mode that affirms by affirming")[1] or IMPLICATION ELIMINATION) is a rule of inference.[2] It can be summarized as "_P implies Q_ and _P_ is asserted to be true, therefore _Q_ must be true."

_Modus ponens_ is closely related to another valid form of argument, _modus tollens_. Both have apparently similar but invalid forms such as affirming the consequent, denying the antecedent, and evidence of absence. Constructive dilemma is the disjunctive version of _modus ponens_. Hypothetical syllogism is closely related to _modus ponens_ and sometimes thought of as "double _modus ponens_."

The history of _modus ponens_ goes back to antiquity.[3] The first to explicitly describe the argument form _modus ponens_ was Theophrastus.[4]


Formal notation

The _modus ponens_ rule may be written in sequent notation as

_P_ → _Q_, _P_  ⊢  _Q_

where _P_, _Q_ and _P_ → _Q_ are statements (or propositions) in a formal language and ⊢ is a metalogical symbol meaning that _Q_ is a syntactic consequence of _P_ and _P_ → _Q_ in some logical system.


Explanation

The argument form has two premises (hypothesis). The first premise is the "if–then" or conditional claim, namely that _P_ implies _Q_. The second premise is that _P_, the antecedent of the conditional claim, is true. From these two premises it can be logically concluded that _Q_, the consequent of the conditional claim, must be true as well. In artificial intelligence, _modus ponens_ is often called forward chaining.

An example of an argument that fits the form _modus ponens_:

    If today is Tuesday, then John will go to work.
    Today is Tuesday.
    Therefore, John will go to work.

This argument is valid, but this has no bearing on whether any of the statements in the argument are true; for _modus ponens_ to be a sound argument, the premises must be true for any true instances of the conclusion. An argument can be valid but nonetheless unsound if one or more premises are false; if an argument is valid _and_ all the premises are true, then the argument is sound. For example, John might be going to work on Wednesday. In this case, the reasoning for John's going to work (because it is Wednesday) is unsound. The argument is not only sound on Tuesdays (when John goes to work), but valid on every day of the week. A propositional argument using _modus ponens_ is said to be deductive.

In single-conclusion sequent calculi, _modus ponens_ is the Cut rule. The cut-elimination theorem for a calculus says that every proof involving Cut can be transformed (generally, by a constructive method) into a proof without Cut, and hence that Cut is admissible.

The Curry–Howard correspondence between proofs and programs relates _modus ponens_ to function application: if _f_ is a function of type _P_ → _Q_ and _x_ is of type _P_, then _f x_ is of type _Q_.


Justification via truth table

The validity of _modus ponens_ in classical two-valued logic can be clearly demonstrated by use of a truth table.

  _p_   _q_   _p_ → _q_
  ----- ----- -----------
  T     T     T
  T     F     F
  F     T     T
  F     F     T

In instances of _modus ponens_ we assume as premises that _p_ → _q_ is true and _p_ is true. Only one line of the truth table—the first—satisfies these two conditions (_p_ and _p_ → _q_). On this line, _q_ is also true. Therefore, whenever _p_ → _q_ is true and _p_ is true, _q_ must also be true.


Status

While _modus ponens_ is one of the most commonly used argument forms in logic it must not be mistaken for a logical law; rather, it is one of the accepted mechanisms for the construction of deductive proofs that includes the "rule of definition" and the "rule of substitution".[5] _Modus ponens_ allows one to eliminate a conditional statement from a logical proof or argument (the antecedents) and thereby not carry these antecedents forward in an ever-lengthening string of symbols; for this reason modus ponens is sometimes called the RULE OF DETACHMENT[6] or the LAW OF DETACHMENT.[7] Enderton, for example, observes that "modus ponens can produce shorter formulas from longer ones",[8] and Russell observes that "the process of the inference cannot be reduced to symbols. Its sole record is the occurrence of ⊦q [the consequent] . . . an inference is the dropping of a true premise; it is the dissolution of an implication".[9]

A justification for the "trust in inference is the belief that if the two former assertions [the antecedents] are not in error, the final assertion [the consequent] is not in error".[10] In other words: if one statement or proposition implies a second one, and the first statement or proposition is true, then the second one is also true. If _P_ implies _Q_ and _P_ is true, then _Q_ is true.[11]


Correspondence to other mathematical frameworks

Probability calculus

_Modus ponens_ represents an instance of the Law of total probability which for a binary variable is expressed as:

Pr (Q) = Pr (Q ∣ P)Pr (P) + Pr (Q ∣ ¬P)Pr (¬P) ,

where e.g. Pr (Q) denotes the probability of Q and the conditional probability Pr (Q ∣ P) generalizes the logical implication P → Q. Assume that Pr (Q) = 1 is equivalent to Q being TRUE, and that Pr (Q) = 0 is equivalent to Q being FALSE. It is then easy to see that Pr (Q) = 1 when Pr (Q ∣ P) = 1 and Pr (P) = 1. Hence, the law of total probability represents a generalization of _modus ponens_ [12].

Subjective logic

_Modus ponens_ represents an instance of the binomial deduction operator in subjective logic expressed as:

ω_(Q∥P)^(A) = (ω_(Q|P)^(A), ω_(Q|¬P)^(A))◎ω_(P)^(A) ,

where ω_(P)^(A) denotes the subjective opinion about P as expressed by source A, and the conditional opinion ω_(Q|P)^(A) generalizes the logical implication P → Q. The deduced marginal opinion about Q is denoted by ω_(Q∥P)^(A). The case where ω_(P)^(A) is an absolute TRUE opinion about P is equivalent to source A saying that P is TRUE, and the case where ω_(P)^(A) is an absolute FALSE opinion about P is equivalent to source A saying that P is FALSE. The deduction operator ◎ of subjective logic produces an absolute TRUE deduced opinion ω_(Q∥P)^(A) when the conditional opinion ω_(Q|P)^(A) is absolute TRUE and the antecedent opinion ω_(P)^(A) is absolute TRUE. Hence, subjective logic deduction represents a generalization of both _modus ponens_ and the Law of total probability [13].


Alleged cases of failure

The philosopher and logician Vann McGee has argued that _modus ponens_ can fail to be valid when the consequent is itself a conditional sentence.[14] Here is an example:

    Either Shakespeare or Hobbes wrote _Hamlet_.
    If either Shakespeare or Hobbes wrote _Hamlet_, then if Shakespeare didn't do it, Hobbes did.
    Therefore, if Shakespeare didn't write _Hamlet_, Hobbes did it.

The first premise seems reasonable enough, because Shakespeare is generally credited with writing _Hamlet_. The second premise seems reasonable, as well, because with the range of Hamlet's possible authors limited to just Shakespeare and Hobbes, eliminating one leaves only the other. But the conclusion is dubious, because if Shakespeare is ruled out as _Hamlet_'s author, there are many more plausible alternatives than Hobbes.

The general form of McGee-type counterexamples to _modus ponens_ is simply P, P → (Q → R), therefore Q → R; it is not essential that P have the form of a disjunction, as in the example given. That these kinds of cases constitute failures of _modus ponens_ remains a minority view among logicians, but there is no consensus on how the cases should be disposed of.


Possible fallacies

The fallacy of affirming the consequent is a common misinterpretation of the modus ponens.


See also

-   Condensed detachment
-   Latin phrases
-   _Modus tollens_
-   _Modus vivendi_
-   Stoic logic
-   "What the Tortoise Said to Achilles"


References


Sources

-   Herbert B. Enderton, 2001, _A Mathematical Introduction to Logic Second Edition_, Harcourt Academic Press, Burlington MA, .
-   Audun Jøsang, 2016, _Subjective Logic; A formalism for Reasoning Under Uncertainty_ Springer, Cham,
-   Alfred North Whitehead and Bertrand Russell 1927 _Principia Mathematica to *56 (Second Edition)_ paperback edition 1962, Cambridge at the University Press, London UK. No ISBN, no LCCCN.
-   Alfred Tarski 1946 _Introduction to Logic and to the Methodology of the Deductive Sciences_ 2nd Edition, reprinted by Dover Publications, Mineola NY. (pbk).


External links

-   -   -   _Modus ponens_ at Wolfram MathWorld

Category:Rules of inference Category:Latin logical phrases Category:Theorems in propositional logic Category:Classical logic

[1]

[2] Enderton 2001:110

[3] Susanne Bobzien (2002). "The Development of Modus Ponens in Antiquity", _Phronesis_ 47, No. 4, 2002.

[4] "Ancient Logic: Forerunners of _Modus Ponens_ and _Modus Tollens_". ''Stanford Encyclopedia of Philosophy.

[5] Alfred Tarski 1946:47. Also Enderton 2001:110ff.

[6] Tarski 1946:47

[7]

[8] Enderton 2001:111

[9] Whitehead and Russell 1927:9

[10]

[11]

[12] Audun Jøsang 2016:2

[13] Audun Jøsang 2016:92

[14] Vann McGee (1985). "A Counterexample to Modus Ponens", _The Journal of Philosophy_ 82, 462–471.